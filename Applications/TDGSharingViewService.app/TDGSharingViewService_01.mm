uint64_t sub_10001BB18(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001BBB0, v4, v3);
}

uint64_t sub_10001BBB0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  v6 = type metadata accessor for CompleteUIProvider();
  swift_allocObject();

  v7 = sub_10002F3D8(0xD000000000000014, 0x8000000100039880, v4);

  v0[5] = v6;
  v0[6] = &off_10004ACE8;
  v0[2] = v7;
  swift_beginAccess();

  sub_100004894((v0 + 2), v2 + 24);
  swift_endAccess();
  v3[3] = v6;
  v3[4] = &off_10004ACE8;
  *v3 = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_10001BCDC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_10001BB18(a1);
}

unint64_t sub_10001BD78()
{
  v1 = 0x6E776F6E6B6E55;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000015;
  }

  v2 = 0xD000000000000014;
  if (*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

void sub_10001BE00(uint64_t a1, uint64_t a2, void *a3, void (*a4)(BOOL))
{
  if (!a2)
  {
    if (qword_100052360 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003AFC(v21, qword_100055DB0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Successfully logged in.", v24, 2u);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      if (sub_10001CE28())
      {
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "Error, account renewal is still needed after successful login.", v27, 2u);
        }
      }

      else
      {
      }
    }

    goto LABEL_18;
  }

  if (qword_100052360 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003AFC(v7, qword_100055DB0);
  v8 = a3;
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v9, v10))
  {

    goto LABEL_18;
  }

  v11 = swift_slowAlloc();
  v28[0] = swift_slowAlloc();
  *v11 = 136315394;
  v12 = [v8 username];
  if (v12)
  {
    v13 = v12;

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10002EE20(v14, v16, v28);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    swift_getErrorValue();
    v18 = Error.localizedDescription.getter();
    v20 = sub_10002EE20(v18, v19, v28);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to sign into iCloud account %s, error: %{public}s)", v11, 0x16u);
    swift_arrayDestroy();

LABEL_18:
    a4(a2 == 0);
    return;
  }

  __break(1u);
}

uint64_t sub_10001C19C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100003B8C(&unk_1000537C0, &unk_100034D10);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_10001C270()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 primaryAuthKitAccount];

  if (v2)
  {
    v3 = [v2 aa_altDSID];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
      v8 = [v0 sharedInstance];
      v9 = [v8 authKitAccountWithAltDSID:v4];

      if (v9)
      {

        v10 = [v0 sharedInstance];
        v11 = [v10 securityLevelForAccount:v9];

        if (qword_100052360 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_100003AFC(v12, qword_100055DB0);
        v13 = v9;
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 138543874;
          *(v16 + 4) = v13;
          *v17 = v9;
          *(v16 + 12) = 1024;
          *(v16 + 14) = v11 == 4;
          *(v16 + 18) = 2050;
          *(v16 + 20) = v11;
          v18 = v13;
          _os_log_impl(&_mh_execute_header, v14, v15, "AuthKit account: %{public}@ isHSA2: %{BOOL}d with security level: %{public}lu", v16, 0x1Cu);
          sub_100007180(v17);

          v13 = v14;
          v14 = v2;
          v2 = v18;
        }

        if (v11 == 4)
        {
          return 2;
        }

        else
        {
          return 1;
        }
      }

      if (qword_100052360 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_100003AFC(v34, qword_100055DB0);

      v25 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v25, v35))
      {

        goto LABEL_27;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v36 = 136446210;
      v38 = sub_10002EE20(v5, v7, &v39);

      *(v36 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v25, v35, "Failed to authkit account for alternate dsid: %{public}s", v36, 0xCu);
      sub_1000042E4(v37);
    }

    else
    {
      if (qword_100052360 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100003AFC(v24, qword_100055DB0);
      v2 = v2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v25, v26))
      {

        return 3;
      }

      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v27 = 136446210;
      v29 = [v2 description];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_10002EE20(v30, v32, &v39);

      *(v27 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to find alternate dsid for account: %{public}s. ", v27, 0xCu);
      sub_1000042E4(v28);
    }

LABEL_27:

    return 3;
  }

  if (qword_100052360 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100003AFC(v20, qword_100055DB0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "No apple ID found on the device.", v23, 2u);
  }

  return 0;
}

void sub_10001C804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = objc_opt_self();

  v9 = [v8 sharedInstance];
  v10 = [v9 primaryAuthKitAccount];

  if (v10)
  {
    if (qword_100052360 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003AFC(v11, qword_100055DB0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Creating AKAppleIDAuthenticationPurpleBuddyContext", v14, 2u);
    }

    v30 = [objc_allocWithZone(AKAppleIDAuthenticationPurpleBuddyContext) init];
    [v30 setShouldOfferSecurityUpgrade:1];
    [v30 setServiceType:1];
    [v30 setAnticipateEscrowAttempt:1];
    [v30 setShouldAllowAppleIDCreation:1];
    [v30 setAuthenticationType:2];
    [v30 setShouldUpdatePersistentServiceTokens:1];
    [v30 setIsUsernameEditable:0];
    v15 = [v10 username];
    [v30 setUsername:v15];

    [v30 setPresentingViewController:a1];
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Starting Authentication", v18, 2u);
    }

    v19 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
    if (v19)
    {
      v20 = v19;
      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      v22[2] = v10;
      v22[3] = sub_10001CD7C;
      v22[4] = v7;
      v22[5] = v21;
      aBlock[4] = sub_10001CE04;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001C19C;
      aBlock[3] = &unk_10004A1C0;
      v23 = _Block_copy(aBlock);
      v24 = v20;
      v25 = v10;

      [v24 authenticateWithContext:v30 completion:v23];

      _Block_release(v23);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100052360 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100003AFC(v26, qword_100055DB0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "No apple ID found on the device.", v29, 2u);
    }

    sub_100008204(0);
  }
}

uint64_t sub_10001CD3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001CD84()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001CDBC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10001CE04(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  sub_10001BE00(a1, a2, *(v2 + 16), *(v2 + 24));
}

uint64_t sub_10001CE10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001CE28()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 primaryAuthKitAccount];

  if (!v2)
  {
    if (qword_100052360 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003AFC(v18, qword_100055DB0);
    v8 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v8, v19, "No apple ID found on the device.", v20, 2u);
    }

    goto LABEL_12;
  }

  v3 = [v0 sharedInstance];
  v4 = [v3 continuationTokenForAccount:v2];

  if (v4)
  {

    v5 = [v0 sharedInstance];
    v6 = [v5 passwordResetTokenForAccount:v2];

    if (v6)
    {

      if (qword_100052360 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100003AFC(v7, qword_100055DB0);
      v8 = v2;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v9, v10))
      {

        return 0;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v43 = v12;
      *v11 = 136446210;
      v13 = [v8 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_10002EE20(v14, v16, &v43);

      *(v11 + 4) = v17;
      sub_1000042E4(v12);

LABEL_12:
      return 0;
    }

    if (qword_100052360 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100003AFC(v29, qword_100055DB0);
    v30 = v2;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      *(v33 + 4) = v30;
      *v34 = v2;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "Primary Account %{public}@ does not have a password reset token.", v33, 0xCu);
      sub_100007180(v34);
    }

    result = [objc_opt_self() sharedConnection];
    if (result)
    {
      v36 = result;
      v37 = [result isPasscodeSet];

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      v40 = os_log_type_enabled(v38, v39);
      if (!v37)
      {
        if (v40)
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Primary Account has no passcode, account is not elible for passwordless account transfer. No Repair needed.", v42, 2u);
        }

        return 0;
      }

      if (v40)
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Primary Account has passcode enabled, we should initiate a repair.", v41, 2u);
      }

      return 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100052360 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003AFC(v22, qword_100055DB0);
    v23 = v2;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      *(v26 + 4) = v23;
      *v27 = v2;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Primary Account %{public}@ does not have a continuation token. Needs repair.", v26, 0xCu);
      sub_100007180(v27);
    }

    else
    {
    }

    return 1;
  }

  return result;
}

uint64_t sub_10001D460()
{
  sub_100004330();

  return _swift_deallocClassInstance(v0, 81, 7);
}

uint64_t sub_10001D4B8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001D550, v4, v3);
}

uint64_t sub_10001D550()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v7 = type metadata accessor for IntroductionUIProvider();
  swift_allocObject();

  v8 = sub_100009664(0xD000000000000017, 0x8000000100038490, 0xD000000000000020, 0x80000001000384B0, 0xD00000000000001DLL, 0x8000000100039950, 0xD000000000000016, 0x8000000100039970, v4, 1, v6);

  v0[5] = v7;
  v0[6] = &off_100049968;
  v0[2] = v8;
  swift_beginAccess();

  sub_100004894((v0 + 2), v2 + 24);
  swift_endAccess();
  v3[3] = v7;
  v3[4] = &off_100049968;
  *v3 = v8;
  v9 = v0[1];

  return v9();
}

uint64_t sub_10001D6E4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_10001D4B8(a1);
}

uint64_t sub_10001D780()
{
  sub_100004330();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_10001D7D8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001D870, v4, v3);
}

uint64_t sub_10001D870()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = v2[8];
  v5 = v2[9];
  v6 = v2[10];
  v7 = type metadata accessor for FailureUIProvider();
  swift_allocObject();

  v8 = sub_100031400(v4, v5, v6);

  v0[5] = v7;
  v0[6] = &off_10004AE68;
  v0[2] = v8;
  swift_beginAccess();

  sub_100004894((v0 + 2), (v2 + 3));
  swift_endAccess();
  v3[3] = v7;
  v3[4] = &off_10004AE68;
  *v3 = v8;
  v9 = v0[1];

  return v9();
}

uint64_t sub_10001D994(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_10001D7D8(a1);
}

uint64_t *sub_10001DA74(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10001DB54()
{
  v0 = type metadata accessor for Logger();
  sub_10001DA74(v0, qword_100055D68);
  sub_100003AFC(v0, qword_100055D68);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001DC58(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_10001DA74(v3, a2);
  sub_100003AFC(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001DCD0()
{
  v1 = v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Proximity Setup completed", v5, 2u);
  }

  v6 = *(v1 + 16);

  PassthroughSubject.send(_:)();
}

id sub_10001DEF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

void sub_10001DFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003AFC(v4, qword_100055D08);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "DeviceUnlockUIProvider: card requesting device unlock", v7, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_10002501C();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 40);
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(ObjectType, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19[0] = v15;
      *v14 = 136446210;
      v19[4] = a3;
      swift_getMetatypeMetadata();
      v16 = String.init<A>(describing:)();
      v18 = sub_10002EE20(v16, v17, v19);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s was unexpectedly deallocated.", v14, 0xCu);
      sub_1000042E4(v15);
    }
  }
}

uint64_t sub_10001E218()
{
  v1 = v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "DeviceUnlockUIProvider deinit", v5, 2u);
  }

  v6 = *(v1 + 24);

  sub_1000050E4(v1 + 32);
  return v1;
}

uint64_t sub_10001E310()
{
  sub_10001E218();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t *sub_10001E368(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v42 = *v8;
  v8[5] = 0;
  swift_unknownObjectWeakInit();
  v8[3] = a5;
  v8[5] = a7;
  swift_unknownObjectWeakAssign();
  v15 = objc_allocWithZone(PRXCardContentViewController);

  v16 = [v15 init];
  v8[2] = v16;
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 mainBundle];
  v45._object = 0xE000000000000000;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21._countAndFlagsBits = a1;
  v21._object = a2;
  v20.value._object = 0xEB00000000656C62;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v45._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v20, v19, v22, v45);

  v23 = String._bridgeToObjectiveC()();

  [v18 setTitle:v23];

  v24 = v8[2];
  v25 = [v17 mainBundle];
  v46._object = 0xE000000000000000;
  v26._countAndFlagsBits = a3;
  v26._object = a4;
  v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v27.value._object = 0xEB00000000656C62;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v46._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v46);

  v29 = String._bridgeToObjectiveC()();

  [v24 setSubtitle:v29];

  [v8[2] setDismissalType:3];
  v30 = v8[2];
  v31 = [v17 mainBundle];
  v47._object = 0xE000000000000000;
  v32._object = 0x8000000100039B10;
  v32._countAndFlagsBits = 0xD000000000000014;
  v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v33.value._object = 0xEB00000000656C62;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v47);

  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v42;

  v37 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10001E804;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002EA00;
  aBlock[3] = &unk_10004A328;
  v38 = _Block_copy(aBlock);
  v39 = [objc_opt_self() actionWithTitle:v37 style:0 handler:v38];

  _Block_release(v38);

  v40 = v8[2];
  sub_100003500(v40, a8 & 1);

  return v8;
}

uint64_t sub_10001E794()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E7CC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E80C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001E848(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001E8E0, v4, v3);
}

uint64_t sub_10001E8E0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = v2[8];
  v5 = v2[9];
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = v2[11];
  v7 = type metadata accessor for DeviceUnlockUIProvider();
  swift_allocObject();

  v8 = sub_10001E368(0xD000000000000013, 0x8000000100039B80, 0xD000000000000016, 0x8000000100039BA0, v4, Strong, v11, 0);
  swift_unknownObjectRelease();

  v0[5] = v7;
  v0[6] = &off_10004A2B8;
  v0[2] = v8;
  swift_beginAccess();

  sub_100004894((v0 + 2), (v2 + 3));
  swift_endAccess();
  v3[3] = v7;
  v3[4] = &off_10004A2B8;
  *v3 = v8;
  v9 = v0[1];

  return v9();
}

uint64_t sub_10001EA5C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_10001E848(a1);
}

id sub_10001EAF8()
{
  v1 = v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BYDovePeaceRemoteViewController deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for BYDovePeaceRemoteViewController();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_10001EC88(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v115 = a3;
  v129 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v128 = *(v129 - 8);
  v7 = *(v128 + 64);
  __chkstk_darwin(v129);
  v127 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v126 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v124 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v130 = type metadata accessor for Logger();
  sub_100003AFC(v130, qword_100055D08);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138543362;
    *(v17 + 4) = v14;
    *v18 = a1;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "Preparing for activation with context: %{public}@", v17, 0xCu);
    sub_100007FE0(v18, &qword_100052D10, &unk_100034390);
  }

  v20 = objc_allocWithZone(NSUserDefaults);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 initWithSuiteName:{v21, v115}];

  if (!v22)
  {
    __break(1u);
    goto LABEL_74;
  }

  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 BOOLForKey:v23];

  v25 = OBJC_IVAR___BYDovePeaceRemoteViewController_configurationContext;
  v26 = *&v4[OBJC_IVAR___BYDovePeaceRemoteViewController_configurationContext];
  v27 = v26;
  v28 = sub_100021790(v26);

  if (v28 != 4)
  {
    v121 = v28;
    v122 = v24;
    if (v28 == 2)
    {
      v30 = sub_10000E178(v29);
    }

    else
    {
      v30 = sub_10000D494(v24);
    }

LABEL_12:
    v33 = v30;
    v34 = type metadata accessor for ProxCardPresenter();
    v35 = objc_allocWithZone(v34);
    swift_unknownObjectWeakInit();
    *&v35[OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_navigationController] = 0;
    *&v35[OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_deferredViewController] = 0;
    v35[OBJC_IVAR____TtC21TDGSharingViewService17ProxCardPresenter_deferredPushAnimated] = 2;
    swift_unknownObjectWeakAssign();
    v141.receiver = v35;
    v141.super_class = v34;

    v119 = objc_msgSendSuper2(&v141, "init");
    v36 = *&v4[v25];
    if (v36)
    {
      v37 = [v36 userInfo];
      if (v37)
      {
        v38 = v37;
        v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        *&v139 = 0x726174536F747561;
        *(&v139 + 1) = 0xE900000000000074;
        AnyHashable.init<A>(_:)();
        if (*(v39 + 16))
        {
          v40 = sub_10000FD2C(&v135);
          if (v41)
          {
            sub_100008C68(*(v39 + 56) + 32 * v40, &v139);
            sub_1000104B0(&v135);

            if (*(&v140 + 1))
            {
              if (swift_dynamicCast())
              {
                v42 = v135;
LABEL_23:
                v131 = v33;
                v43 = v14;
                v44 = Logger.logObject.getter();
                v45 = static os_log_type_t.default.getter();
                v46 = os_log_type_enabled(v44, v45);
                v123 = a2;
                v120 = v42;
                if (!v46)
                {

                  goto LABEL_36;
                }

                v47 = swift_slowAlloc();
                v48 = swift_slowAlloc();
                *&v135 = v48;
                *v47 = 67109378;
                *(v47 + 4) = v42;
                *(v47 + 8) = 2082;
                if (a1)
                {
                  v49 = v48;

                  v50 = [v43 userInfo];
                  if (v50)
                  {
                    v51 = v50;
                    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
                  }

                  else
                  {
                    sub_100010308(&_swiftEmptyArrayStorage);
                  }

                  v55 = Dictionary.description.getter();
                  v57 = v56;

                  v58 = sub_10002EE20(v55, v57, &v135);

                  *(v47 + 10) = v58;
                  _os_log_impl(&_mh_execute_header, v44, v45, "Extracted autoStart value: %{BOOL}d from %{public}s", v47, 0x12u);
                  sub_1000042E4(v49);

LABEL_36:

                  v59 = *&v4[v25];
                  v60 = *&v4[OBJC_IVAR___BYDovePeaceRemoteViewController_appleIDManager];
                  v118 = v4;
                  v61 = *&v4[OBJC_IVAR___BYDovePeaceRemoteViewController_assetLoader];
                  v117 = type metadata accessor for ProxCardFlowEngine();
                  v62 = objc_allocWithZone(v117);
                  v63 = &v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_currentStage];
                  *v63 = 0u;
                  *(v63 + 1) = 0u;
                  *(v63 + 4) = 0;
                  *&v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_navigationContoller] = 0;
                  v64 = OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_queue;
                  sub_100003C1C(0, &qword_100052420, OS_dispatch_queue_ptr);
                  v116 = v59;
                  v132 = v59;
                  v65 = v119;
                  v119 = v60;

                  v66 = v61;

                  static DispatchQoS.unspecified.getter();
                  *&v135 = &_swiftEmptyArrayStorage;
                  sub_100022040();
                  sub_100003B8C(&qword_100053C70, &unk_100035040);
                  sub_100022098();
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  (*(v128 + 104))(v127, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v129);
                  *&v62[v64] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
                  v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_hasReceivedServerInteractionEvent] = 0;
                  v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_hasReceivedSetupCompletedEvent] = 0;
                  *&v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_cancellables] = &_swiftEmptySetSingleton;
                  v67 = OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_setupPinPublisher;
                  v135 = 0uLL;
                  v68 = sub_100003B8C(&qword_1000531E8, &qword_100034898);
                  v69 = *(v68 + 48);
                  v70 = *(v68 + 52);
                  swift_allocObject();
                  *&v62[v67] = CurrentValueSubject.init(_:)();
                  v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_engineFlowProgress] = 0;
                  v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_requestedAutoDismiss] = 0;
                  v71 = OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_layoutCache;
                  type metadata accessor for ProxCardLayoutCache();
                  v72 = swift_allocObject();
                  *(v72 + 16) = 0;
                  *(v72 + 24) = 0;
                  *(v72 + 32) = 1;
                  *&v62[v71] = v72;
                  if (qword_100052330 != -1)
                  {
                    swift_once();
                  }

                  sub_100003AFC(v130, qword_100055D20);
                  v73 = Logger.logObject.getter();
                  v74 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v73, v74))
                  {
                    v75 = swift_slowAlloc();
                    v76 = swift_slowAlloc();
                    *&v135 = v76;
                    *v75 = 136446210;
                    *(v75 + 4) = sub_10002EE20(0xD000000000000066, 0x8000000100039D30, &v135);
                    _os_log_impl(&_mh_execute_header, v73, v74, "[ProxCardEngine::%{public}s] invoked.", v75, 0xCu);
                    sub_1000042E4(v76);
                  }

                  v77 = v66;
                  v78 = v119;
                  v79 = v131;
                  v80 = *(v131 + 16);
                  os_unfair_lock_lock((v80 + 24));
                  v81 = *(*(v80 + 16) + 16);
                  os_unfair_lock_unlock((v80 + 24));
                  v82 = v116;
                  if (v81)
                  {
                    *&v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_appleIDManager] = v78;
                    *&v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_flow] = v79;
                    *&v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_presenter] = v65;
                    v83 = *&v62[v64];

                    v84 = v65;

                    v85 = v83;
                    if (v82)
                    {
                      v86 = [v132 userInfo];
                      if (v86)
                      {
                        v87 = v86;
                        v88 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                        v133 = 0xD000000000000010;
                        v134 = 0x8000000100039CB0;
                        AnyHashable.init<A>(_:)();
                        if (*(v88 + 16))
                        {
                          v89 = sub_10000FD2C(&v135);
                          if (v90)
                          {
                            sub_100008C68(*(v88 + 56) + 32 * v89, &v139);
                            sub_1000104B0(&v135);

                            if (*(&v140 + 1))
                            {
                              swift_dynamicCast();
LABEL_50:
                              type metadata accessor for WFSetupClient();
                              v91 = v121;
                              v92 = WFSetupClient.__allocating_init(queue:deviceIdentifier:activationFlow:)();
                              *&v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_setupClient] = v92;
                              *&v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_assetLoader] = v77;
                              v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_shouldAutoStart] = v120;
                              v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_shouldSimulate] = v122;
                              *&v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_activationFlow] = v91;

                              v93 = v92;
                              if (v82)
                              {
                                v94 = [v132 userInfo];
                                if (v94)
                                {
                                  v95 = v94;
                                  v96 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                                  *&v139 = 0xD000000000000013;
                                  *(&v139 + 1) = 0x8000000100039C90;
                                  AnyHashable.init<A>(_:)();
                                  if (*(v96 + 16))
                                  {
                                    v97 = sub_10000FD2C(&v135);
                                    if (v98)
                                    {
                                      sub_100008C68(*(v96 + 56) + 32 * v97, &v139);
                                      sub_1000104B0(&v135);

                                      v99 = v118;
                                      if (*(&v140 + 1))
                                      {
                                        v100 = swift_dynamicCast();
                                        v102 = *(&v135 + 1);
                                        v101 = v135;
                                        if (!v100)
                                        {
                                          v101 = 0;
                                          v102 = 0;
                                        }

                                        goto LABEL_60;
                                      }

LABEL_59:
                                      sub_100007FE0(&v139, &qword_100052D18, &unk_100034728);
                                      v101 = 0;
                                      v102 = 0;
LABEL_60:
                                      v103 = &v62[OBJC_IVAR____TtC21TDGSharingViewService18ProxCardFlowEngine_utilInitialStageIdentifier];
                                      *v103 = v101;
                                      v103[1] = v102;
                                      v138.receiver = v62;
                                      v138.super_class = v117;
                                      v104 = objc_msgSendSuper2(&v138, "init");

                                      v105 = *&v99[OBJC_IVAR___BYDovePeaceRemoteViewController_flowEngine];
                                      *&v99[OBJC_IVAR___BYDovePeaceRemoteViewController_flowEngine] = v104;
                                      v106 = v104;

                                      v107 = sub_100010C0C();
                                      if (v123)
                                      {
                                        (v123)(v107);
                                      }

                                      return;
                                    }
                                  }

                                  sub_1000104B0(&v135);
                                }
                              }

                              v139 = 0u;
                              v140 = 0u;
                              v99 = v118;
                              goto LABEL_59;
                            }

LABEL_49:
                            sub_100007FE0(&v139, &qword_100052D18, &unk_100034728);
                            goto LABEL_50;
                          }
                        }

                        sub_1000104B0(&v135);
                      }
                    }

                    v139 = 0u;
                    v140 = 0u;
                    goto LABEL_49;
                  }

LABEL_75:
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                  return;
                }

LABEL_74:
                __break(1u);
                goto LABEL_75;
              }

LABEL_22:
              v42 = 0;
              goto LABEL_23;
            }

LABEL_21:
            sub_100007FE0(&v139, &qword_100052D18, &unk_100034728);
            goto LABEL_22;
          }
        }

        sub_1000104B0(&v135);
      }
    }

    v139 = 0u;
    v140 = 0u;
    goto LABEL_21;
  }

  *(&v136 + 1) = &type metadata for DeviceSharingFeatureFlags;
  v137 = sub_1000220FC();
  v31 = isFeatureEnabled(_:)();
  v32 = sub_1000042E4(&v135);
  if (v31)
  {
    v121 = 4;
    v122 = v24;
    v30 = sub_10000E178(v32);
    goto LABEL_12;
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "BYOE Export not enabled, not showing any prox card", v54, 2u);
  }

  if (a2)
  {
    a2();
  }

  if ([v4 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v139 = 0u;
    v140 = 0u;
  }

  v135 = v139;
  v136 = v140;
  if (*(&v140 + 1))
  {
    sub_100003B8C(&unk_100052D80, &qword_100034738);
    if (swift_dynamicCast())
    {
      v108 = v133;
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&_mh_execute_header, v109, v110, "invalidating SBUIRemoteAlertHostInterface", v111, 2u);
      }

      [v108 invalidate];
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    sub_100007FE0(&v135, &qword_100052D18, &unk_100034728);
  }

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&_mh_execute_header, v112, v113, "Did not find SBUIRemoteAlertHostInterface to invalidate", v114, 2u);
  }
}

uint64_t *sub_10001FE40(void *a1, uint64_t (*a2)(id))
{
  v3 = v2;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003AFC(v6, qword_100055D08);
  v19 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    result = swift_slowAlloc();
    v20 = result;
    *v9 = 136446210;
    if (!a1)
    {
      __break(1u);
      return result;
    }

    v11 = result;

    v12 = [v19 userInfo];
    if (v12)
    {
      v13 = v12;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      sub_100010308(&_swiftEmptyArrayStorage);
    }

    v14 = Dictionary.description.getter();
    v16 = v15;

    v17 = sub_10002EE20(v14, v16, &v20);

    *(v9 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received context: %{public}s", v9, 0xCu);
    sub_1000042E4(v11);
  }

  else
  {
  }

  v18 = *(v3 + OBJC_IVAR___BYDovePeaceRemoteViewController_configurationContext);
  *(v3 + OBJC_IVAR___BYDovePeaceRemoteViewController_configurationContext) = a1;

  if (a2)
  {
    return a2(v19);
  }

  return v19;
}

id sub_100020194()
{
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003AFC(v1, qword_100055D08);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = [v2 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_10002EE20(v8, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s view did load", v5, 0xCu);
    sub_1000042E4(v6);
  }

  v12 = type metadata accessor for BYDovePeaceRemoteViewController();
  v15.receiver = v2;
  v15.super_class = v12;
  return objc_msgSendSuper2(&v15, "viewDidLoad");
}

uint64_t sub_100020374()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BYDovePeaceRemoteViewController();
  objc_msgSendSuper2(&v6, "_willAppearInRemoteViewController");
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (!*(&v4 + 1))
  {
    return sub_100007FE0(v5, &qword_100052D18, &unk_100034728);
  }

  sub_100003B8C(&unk_100052D80, &qword_100034738);
  result = swift_dynamicCast();
  if (result)
  {
    [v2 setAllowsBanners:0];
    [v2 setAllowsAlertStacking:1];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000204CC(char a1)
{
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003AFC(v3, qword_100055D08);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v25[0] = v8;
    *v7 = 136446210;
    v9 = [v4 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10002EE20(v10, v12, v25);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s view did appear", v7, 0xCu);
    sub_1000042E4(v8);
  }

  if ([v4 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    sub_100003B8C(&unk_100052D80, &qword_100034738);
    if (swift_dynamicCast())
    {
      v14 = v21;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    sub_100007FE0(v25, &qword_100052D18, &unk_100034728);
    v14 = 0;
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Setting the system idle timer to disabled.", v17, 2u);
  }

  if (v14)
  {
    swift_unknownObjectRetain();
    v18 = String._bridgeToObjectiveC()();
    [v14 setIdleTimerDisabled:1 forReason:v18];

    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    if (SFDeviceHomeButtonType() == 3)
    {
      v19 = 1;
    }

    else
    {
      v19 = 17;
    }

    [v14 setDesiredHardwareButtonEvents:v19];
    swift_unknownObjectRelease();
  }

  v22.receiver = v4;
  v22.super_class = type metadata accessor for BYDovePeaceRemoteViewController();
  objc_msgSendSuper2(&v22, "viewDidAppear:", a1 & 1);
  return swift_unknownObjectRelease();
}

uint64_t sub_100020868(char a1)
{
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003AFC(v3, qword_100055D08);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v24[0] = v8;
    *v7 = 136446210;
    v9 = [v4 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10002EE20(v10, v12, v24);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s view did disappear", v7, 0xCu);
    sub_1000042E4(v8);
  }

  if ([v4 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    sub_100003B8C(&unk_100052D80, &qword_100034738);
    if (swift_dynamicCast())
    {
      v14 = v20;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    sub_100007FE0(v24, &qword_100052D18, &unk_100034728);
    v14 = 0;
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Setting the system idle timer to enabled.", v17, 2u);
  }

  if (v14)
  {
    swift_unknownObjectRetain();
    v18 = String._bridgeToObjectiveC()();
    [v14 setIdleTimerDisabled:0 forReason:v18];

    swift_unknownObjectRelease();
    [v14 invalidate];
  }

  v21.receiver = v4;
  v21.super_class = type metadata accessor for BYDovePeaceRemoteViewController();
  objc_msgSendSuper2(&v21, "viewDidDisappear:", a1 & 1);
  return swift_unknownObjectRelease();
}

void sub_100020BE4(uint64_t a1)
{
  if (qword_100052328 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_100003AFC(v2, qword_100055D08);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received button action event", v5, 2u);
    }

    if (!a1)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_100003C1C(0, &qword_100053C58, SBUIRemoteAlertButtonAction_ptr);
      sub_1000216D8();
      Set.Iterator.init(_cocoa:)();
      a1 = v24;
      v6 = v25;
      v7 = v26;
      v8 = v27;
      v9 = v28;
    }

    else
    {
      v10 = -1 << *(a1 + 32);
      v6 = a1 + 56;
      v7 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v9 = v12 & *(a1 + 56);

      v8 = 0;
    }

    v21 = v7;
    while (a1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100003C1C(0, &qword_100053C58, SBUIRemoteAlertButtonAction_ptr), swift_dynamicCast(), v17 = v23, v15 = v8, v16 = v9, !v23))
      {
LABEL_26:
        sub_100021740();
        return;
      }

LABEL_23:
      if (([v17 events] & 0x10) != 0)
      {
        [v22 handleHomeButtonPressed];
        [v17 sendResponseWithUnHandledEvents:0];
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "Home button event handled", v20, 2u);
        }
      }

      v8 = v15;
      v9 = v16;
    }

    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (v9)
    {
LABEL_19:
      v16 = (v14 - 1) & v14;
      v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
      if (!v17)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_26;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_28:
    swift_once();
  }

  __break(1u);
}

void sub_100020FC8()
{
  v1 = v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Handling home button press event", v5, 2u);
  }

  v6 = OBJC_IVAR___BYDovePeaceRemoteViewController_homePressed;
  if ((*(v0 + OBJC_IVAR___BYDovePeaceRemoteViewController_homePressed) & 1) != 0 || MKBGetDeviceLockState() - 1 > 1)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Dismissing due to button press", v12, 2u);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "First button press while locked, deferring dismissal to next button press", v9, 2u);
    }

    *(v1 + v6) = 1;
  }
}

id sub_100021230(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___BYDovePeaceRemoteViewController_flowEngine] = 0;
  *&v3[OBJC_IVAR___BYDovePeaceRemoteViewController_configurationContext] = 0;
  v6 = OBJC_IVAR___BYDovePeaceRemoteViewController_appleIDManager;
  type metadata accessor for AppleIDManager();
  *&v3[v6] = swift_allocObject();
  v7 = OBJC_IVAR___BYDovePeaceRemoteViewController_assetLoader;
  v8 = type metadata accessor for MobileAssetsDownloader();
  v24[3] = v8;
  v24[4] = &off_10004A490;
  v24[0] = swift_allocObject();
  type metadata accessor for AssetLoader();
  v9 = swift_allocObject();
  v10 = sub_100021688(v24, v8);
  v11 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v22 = v8;
  v23 = &off_10004A490;
  *&v21 = v15;
  *(v9 + 56) = 0;
  sub_10001ADA0(&v21, v9 + 16);
  sub_1000042E4(v24);
  *&v3[v7] = v9;
  v3[OBJC_IVAR___BYDovePeaceRemoteViewController_homePressed] = 0;
  if (a2)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for BYDovePeaceRemoteViewController();
  v20.receiver = v3;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", v16, a3);

  return v18;
}

id sub_10002147C(void *a1)
{
  *&v1[OBJC_IVAR___BYDovePeaceRemoteViewController_flowEngine] = 0;
  *&v1[OBJC_IVAR___BYDovePeaceRemoteViewController_configurationContext] = 0;
  v3 = OBJC_IVAR___BYDovePeaceRemoteViewController_appleIDManager;
  type metadata accessor for AppleIDManager();
  *&v1[v3] = swift_allocObject();
  v4 = OBJC_IVAR___BYDovePeaceRemoteViewController_assetLoader;
  v5 = type metadata accessor for MobileAssetsDownloader();
  v20[3] = v5;
  v20[4] = &off_10004A490;
  v20[0] = swift_allocObject();
  type metadata accessor for AssetLoader();
  v6 = swift_allocObject();
  v7 = sub_100021688(v20, v5);
  v8 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v18 = v5;
  v19 = &off_10004A490;
  *&v17 = v12;
  *(v6 + 56) = 0;
  sub_10001ADA0(&v17, v6 + 16);
  sub_1000042E4(v20);
  *&v1[v4] = v6;
  v1[OBJC_IVAR___BYDovePeaceRemoteViewController_homePressed] = 0;
  v13 = type metadata accessor for BYDovePeaceRemoteViewController();
  v16.receiver = v1;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);

  if (v14)
  {
  }

  return v14;
}

uint64_t sub_100021688(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1000216D8()
{
  result = qword_100053C60;
  if (!qword_100053C60)
  {
    sub_100003C1C(255, &qword_100053C58, SBUIRemoteAlertButtonAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053C60);
  }

  return result;
}

uint64_t sub_100021748()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021790(void *a1)
{
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v57[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10002EE20(0xD000000000000030, 0x8000000100039DA0, v57);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
    sub_1000042E4(v6);
  }

  if (a1)
  {
    v7 = [a1 userInfo];
    if (v7)
    {
      v8 = v7;
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      strcpy(v56, "dpActionType");
      BYTE5(v56[1]) = 0;
      HIWORD(v56[1]) = -5120;
      AnyHashable.init<A>(_:)();
      if (*(v9 + 16) && (v10 = sub_10000FD2C(v57), (v11 & 1) != 0))
      {
        sub_100008C68(*(v9 + 56) + 32 * v10, v58);
        sub_1000104B0(v57);
        if (swift_dynamicCast())
        {
          v12 = v56[0];
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v13, v14))
          {
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            v57[0] = v16;
            *v15 = 136446466;
            *(v15 + 4) = sub_10002EE20(0x6E6F697463417064, 0xEC00000065707954, v57);
            *(v15 + 12) = 2050;
            *(v15 + 14) = v12;
            _os_log_impl(&_mh_execute_header, v13, v14, "Found %{public}s %{public}ld in userInfo", v15, 0x16u);
            sub_1000042E4(v16);
          }

          if (v12 == 90)
          {
            v40 = Logger.logObject.getter();
            v41 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              *v42 = 0;
              _os_log_impl(&_mh_execute_header, v40, v41, "Found typeDovePeace2 pairing type. Using payload pairing type", v42, 2u);
            }

            strcpy(v56, "dpPayload");
            WORD1(v56[1]) = 0;
            HIDWORD(v56[1]) = -385875968;
            AnyHashable.init<A>(_:)();
            if (*(v9 + 16) && (v43 = sub_10000FD2C(v57), (v44 & 1) != 0))
            {
              sub_100008C68(*(v9 + 56) + 32 * v43, v58);
              sub_1000104B0(v57);

              sub_100003C1C(0, &qword_100052C20, NSNumber_ptr);
              if (swift_dynamicCast())
              {
                v45 = v56[0];
                v46 = Logger.logObject.getter();
                v47 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v46, v47))
                {
                  v48 = swift_slowAlloc();
                  v49 = swift_slowAlloc();
                  *v48 = 138543362;
                  *(v48 + 4) = v45;
                  *v49 = v45;
                  v50 = v45;
                  _os_log_impl(&_mh_execute_header, v46, v47, "Payload value %{public}@", v48, 0xCu);
                  sub_100007FE0(v49, &qword_100052D10, &unk_100034390);
                }

                v28 = Int.init(truncating:)();
                goto LABEL_24;
              }
            }

            else
            {

              sub_1000104B0(v57);
            }

            v17 = Logger.logObject.getter();
            v53 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v17, v53))
            {
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v57[0] = v55;
              *v54 = 136446210;
              *(v54 + 4) = sub_10002EE20(0x616F6C7961507064, 0xE900000000000064, v57);
              _os_log_impl(&_mh_execute_header, v17, v53, "No %{public}s value found for typeDovePeace2", v54, 0xCu);
              sub_1000042E4(v55);

              goto LABEL_22;
            }
          }

          else
          {
            if (v12 != 36)
            {

              v17 = Logger.logObject.getter();
              v51 = static os_log_type_t.error.getter();
              if (!os_log_type_enabled(v17, v51))
              {
                goto LABEL_23;
              }

              v52 = swift_slowAlloc();
              *v52 = 134349056;
              *(v52 + 4) = v12;
              v20 = "Unknown pairing type: %{public}ld";
              v21 = v51;
              v22 = v17;
              v23 = v52;
              v24 = 12;
              goto LABEL_39;
            }

            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              *v19 = 0;
              v20 = "Found typeDovePeace pairing type. Using legacy pairing type";
              v21 = v18;
              v22 = v17;
              v23 = v19;
              v24 = 2;
LABEL_39:
              _os_log_impl(&_mh_execute_header, v22, v21, v20, v23, v24);
              goto LABEL_22;
            }
          }

LABEL_23:

          v28 = 1;
LABEL_24:
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v57[0] = v35;
            *v34 = 136446210;
            v36 = WFSetupServerActivationFlow.description.getter();
            v38 = sub_10002EE20(v36, v37, v57);

            *(v34 + 4) = v38;
            _os_log_impl(&_mh_execute_header, v32, v33, "Returning activation flow type %{public}s", v34, 0xCu);
            sub_1000042E4(v35);
          }

          return v28;
        }
      }

      else
      {

        sub_1000104B0(v57);
      }

      v17 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v57[0] = v31;
        *v30 = 136446210;
        *(v30 + 4) = sub_10002EE20(0x6E6F697463417064, 0xEC00000065707954, v57);
        _os_log_impl(&_mh_execute_header, v17, v29, "%{public}s not found in userInfo", v30, 0xCu);
        sub_1000042E4(v31);

LABEL_22:

        goto LABEL_23;
      }

      goto LABEL_23;
    }
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Returning legacyEraseInstall activation type due to nil userInfo dictionary", v27, 2u);
  }

  return 1;
}

unint64_t sub_100022040()
{
  result = qword_100053C68;
  if (!qword_100053C68)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053C68);
  }

  return result;
}

unint64_t sub_100022098()
{
  result = qword_100053C78;
  if (!qword_100053C78)
  {
    sub_100003BD4(&qword_100053C70, &unk_100035040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053C78);
  }

  return result;
}

unint64_t sub_1000220FC()
{
  result = qword_100053C80;
  if (!qword_100053C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100053C80);
  }

  return result;
}

uint64_t sub_100022158()
{
  v1 = v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ProxCardPinPairingUI is being deinitialized", v5, 2u);
  }

  sub_100022EE8(v1 + 24);
  return v1;
}

uint64_t sub_100022248()
{
  sub_100022158();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_1000222A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 49) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 24) = 0u;
  v5 = [objc_allocWithZone(PRXCardContentViewController) init];
  *(v3 + 16) = v5;
  *(v3 + 72) = a2;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 mainBundle];
  v36._object = 0xE000000000000000;
  v9._object = 0x8000000100039E30;
  v9._countAndFlagsBits = 0xD000000000000011;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v36);

  v12 = String._bridgeToObjectiveC()();

  [v7 setTitle:v12];

  v13 = *(v3 + 16);
  v14 = [v6 mainBundle];
  v37._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000014;
  v15._object = 0x8000000100039E50;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v37);

  v18 = String._bridgeToObjectiveC()();

  [v13 setSubtitle:v18];

  [*(v3 + 16) setDismissalType:1];
  v19 = *(v3 + 16);
  sub_100005EC8(a2);

  sub_100003B8C(&qword_1000531E8, &qword_100034898);
  sub_100003C64(&qword_1000531F0, &qword_1000531E8, &qword_100034898);
  v20 = Publisher<>.sink(receiveValue:)();

  v34 = type metadata accessor for AnyCancellable();
  v35 = &protocol witness table for AnyCancellable;
  v32 = v20;
  swift_beginAccess();
  sub_10000FB98(&v32, v3 + 24);
  swift_endAccess();
  CurrentValueSubject.value.getter();
  if (v33)
  {
    sub_100022764(v32, v33);

    *(v3 + 64) = 1;
  }

  else
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003AFC(v21, qword_100055D08);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "No pin received from setup pin publisher", v24, 2u);
    }

    v25 = *(v3 + 16);
    v26 = [v6 mainBundle];
    v38._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0xD00000000000001CLL;
    v27._object = 0x8000000100039E70;
    v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v28.value._object = 0xEB00000000656C62;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v38._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v38);

    v30 = String._bridgeToObjectiveC()();

    [v25 showActivityIndicatorWithStatus:v30];
  }

  return v3;
}

void sub_100022764(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    if (*(v2 + 64))
    {
      if (qword_100052328 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100003AFC(v4, qword_100055D08);
      oslog = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "Already showing the pin";
LABEL_13:
        _os_log_impl(&_mh_execute_header, oslog, v5, v7, v6, 2u);
      }
    }

    else
    {
      [*(v2 + 16) hideActivityIndicator];
      v11 = *(v2 + 16);
      v12 = objc_allocWithZone(UILabel);
      v13 = v11;
      v14 = [v12 init];
      v15 = String._bridgeToObjectiveC()();
      [v14 setText:v15];

      v16 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleLargeTitle];
      [v14 setFont:v16];

      [v14 setTextAlignment:1];
      oslog = v14;
      sub_10000510C(oslog, a1, a2, 0, 4u);
    }
  }

  else
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003AFC(v8, qword_100055D08);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "Setup pin not yet received. ";
      goto LABEL_13;
    }
  }
}

uint64_t sub_100022A0C(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v17);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  sub_10000CBE8();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = v10;
  v14[4] = v13;
  aBlock[4] = sub_100022EC4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002AE0;
  aBlock[3] = &unk_10004A468;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000FC5C();
  sub_100003B8C(&unk_100052430, &qword_100033DA0);
  sub_100003C64(&qword_100052CF0, &unk_100052430, &qword_100033DA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v18 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v17);
}

void sub_100022CF4(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_100022764(a1, a2);
    }
  }

  else
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003AFC(v4, qword_100055D08);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "No pin received from setup pin publisher", v6, 2u);
    }
  }
}

uint64_t sub_100022E4C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022E84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022ED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100022EE8(uint64_t a1)
{
  v2 = sub_100003B8C(&qword_1000531F8, &unk_1000348A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100022F64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100023024(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for VisualPairingAppClipCode()
{
  result = qword_100053D98;
  if (!qword_100053D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100023114()
{
  result = sub_1000231A0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000231A0()
{
  result = qword_100053DA8;
  if (!qword_100053DA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100053DA8);
  }

  return result;
}

uint64_t sub_100023230()
{
  if (qword_100052320 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 32) = sub_100003AFC(v1, qword_100055CF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pre-fetching assets from the server", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_100023390;

  return sub_100023A14();
}

uint64_t sub_100023390(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100023490, 0, 0);
}

uint64_t sub_100023490()
{
  v18 = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v1 + 56);
  *(v1 + 56) = v0[6];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    v8 = *(v1 + 56);
    v0[2] = v8;
    v9 = v8;
    sub_100003B8C(&qword_100053FC0, &qword_1000351D8);
    v10 = String.init<A>(describing:)();
    v12 = sub_10002EE20(v10, v11, &v17);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Downloaded the following image asset: %{public}s from the server. ", v6, 0xCu);
    sub_1000042E4(v7);
  }

  v13 = *(v1 + 56);
  v16 = v0[1];
  v14 = v13;

  return v16(v13);
}

uint64_t sub_100023648()
{
  sub_1000042E4((v0 + 16));

  return _swift_deallocClassInstance(v0, 64, 7);
}

id sub_1000236AC()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_100052320 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003AFC(v10, qword_100055CF0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Successfully loaded video", v13, 2u);
    }

    v14 = objc_allocWithZone(AVPlayerItem);
    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    v18 = [v14 initWithURL:v16];

    (*(v1 + 8))(v4, v0);
  }

  else
  {
    if (qword_100052320 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003AFC(v19, qword_100055CF0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_10002EE20(0x656369766544, 0xE600000000000000, &v26);
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to load video asset: %{public}s.mov", v22, 0xCu);
      sub_1000042E4(v23);
    }

    return 0;
  }

  return v18;
}

uint64_t sub_100023A14()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100023AA8, v2, v1);
}

uint64_t sub_100023AA8()
{
  v1 = *(v0 + 16);

  if (qword_100052320 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055CF0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ProductKit SPI is not supported. Return nil for product image", v5, 2u);
  }

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t *sub_100023BC8()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003AFC(v3, qword_100055D08);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13[0] = v7;
    v13[1] = v2;
    *v6 = 136446210;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_10002EE20(v8, v9, v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s deinit", v6, 0xCu);
    sub_1000042E4(v7);
  }

  sub_100004904((v1 + 3));
  v11 = v1[8];

  return v1;
}

uint64_t sub_100023D5C()
{
  sub_100023BC8();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_100023DB4(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100023E4C, v4, v3);
}

uint64_t sub_100023E4C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = *(v2 + 64);
  v5 = type metadata accessor for AppleIDAccountUpgradeUIProvider();
  swift_allocObject();

  v7 = sub_10002D310(v6);
  v0[5] = v5;
  v0[6] = &off_10004AA48;
  v0[2] = v7;
  swift_beginAccess();

  sub_100004894((v0 + 2), v2 + 24);
  swift_endAccess();
  v3[3] = v5;
  v3[4] = &off_10004AA48;
  *v3 = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_100023F40(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_100023DB4(a1);
}

void sub_100023FDC()
{
  v1 = v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Activating WFSetupClient", v5, 2u);
  }

  v6 = *(v1 + 24);
  dispatch thunk of WFSetupClient.activate()();
}

uint64_t sub_1000240E8()
{
  v1 = v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Handling deny action!", v5, 2u);
  }

  v6 = *(v1 + 16);

  PassthroughSubject.send(_:)();
}

void *sub_1000241F0(void *a1)
{
  v2 = v1;
  v4 = sub_100003B8C(&qword_1000533C0, &qword_100034AA0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = PassthroughSubject.init()();
  v1[3] = a1;
  v1[4] = 0;
  v1[2] = v7;
  swift_allocObject();
  swift_weakInit();
  v8 = a1;
  sub_100003B8C(&qword_100054130, "Vz");
  sub_100024658();
  v9 = Publisher<>.sink(receiveValue:)();

  v10 = v2[4];
  v2[4] = v9;

  return v2;
}

void sub_1000242FC(uint64_t *a1)
{
  v1 = a1[1];
  if (v1)
  {
    v2 = *a1;
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003AFC(v3, qword_100055D08);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_10002EE20(v2, v1, &v14);
      _os_log_impl(&_mh_execute_header, v4, v5, "Received this pin whilst in the introduction stage: %s", v6, 0xCu);
      sub_1000042E4(v7);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + 16);

      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003AFC(v10, qword_100055D08);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "No pin received from setup pin publisher", v12, 2u);
    }
  }
}

uint64_t sub_100024584()
{
  if (*(v0 + 32))
  {

    AnyCancellable.cancel()();
  }

  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100024618()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100024658()
{
  result = qword_100054138;
  if (!qword_100054138)
  {
    sub_100003BD4(&qword_100054130, "Vz");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054138);
  }

  return result;
}

void sub_1000246BC()
{
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003AFC(v0, qword_100055D08);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Unlock background task expired", v2, 2u);
  }
}

void sub_1000247A4(char a1, uint64_t a2)
{
  if (qword_100052358 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003AFC(v4, qword_100055D98);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Passcode unlock ui completion block is invoked. ", v7, 2u);
  }

  if ((a1 & 1) != 0 || MKBGetDeviceLockState() - 1 >= 2)
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    sub_100003AFC(v4, qword_100055D08);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109376;
      *(v12 + 4) = a1 & 1;
      *(v12 + 8) = 1024;
      *(v12 + 10) = MKBGetDeviceLockState() - 1 < 2;
      _os_log_impl(&_mh_execute_header, v10, v11, "User did unlock the device: %{BOOL}d, isDeviceLocked: %{BOOL}d", v12, 0xEu);
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Starting to ask sharingd to retrigger prox card flow. ", v15, 2u);
    }

    v16 = [objc_allocWithZone(SFClient) init];
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a2;
    aBlock[4] = sub_100025298;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100024D7C;
    aBlock[3] = &unk_10004A5D0;
    v18 = _Block_copy(aBlock);
    v19 = v16;

    [v19 retriggerProximitySetup:v18];
    _Block_release(v18);
  }

  else if (UIApp)
  {
    [UIApp endBackgroundTask:a2];
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    sub_100003AFC(v4, qword_100055D08);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "User did not unlock device to continue with proximity setup. ", v9, 2u);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100024BC4(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003AFC(v5, qword_100055D08);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    swift_errorRetain();
    sub_100003B8C(&qword_1000533A8, &qword_100034A80);
    v10 = String.init<A>(describing:)();
    v12 = sub_10002EE20(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Retrigger proximity setup completed with error: %{public}s", v8, 0xCu);
    sub_1000042E4(v9);
  }

  [a2 invalidate];
  result = UIApp;
  if (UIApp)
  {
    return [UIApp endBackgroundTask:a3];
  }

  __break(1u);
  return result;
}

void sub_100024D7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100024DE8(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2 != 0;

  v3(v4);
}

uint64_t sub_100024E40()
{
  v1 = v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "DeviceUnlockActionHandler deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_100024F20()
{
  sub_100024E40();

  return _swift_deallocClassInstance(v0, 16, 7);
}

void *sub_100024F78(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100024FEC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_10002501C()
{
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003AFC(v0, qword_100055D08);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Requesting SpringBoard to present passcode unlock UI. ", v3, 2u);
  }

  v4 = UIApp;
  if (UIApp)
  {
    v14 = sub_1000246BC;
    v15 = 0;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_100002AE0;
    v13 = &unk_10004A530;
    v5 = _Block_copy(&v10);
    v6 = v4;
    v7 = [v6 beginBackgroundTaskWithExpirationHandler:v5];
    _Block_release(v5);

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v14 = sub_100025258;
    v15 = v8;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_100024DE8;
    v13 = &unk_10004A580;
    v9 = _Block_copy(&v10);

    SBSRequestPasscodeUnlockUI();
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100025230(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100025260()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000252B0()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;

  v4 = [v0 mainScreen];
  [v4 nativeBounds];
  v6 = v5;

  result = v6 * 0.208135861;
  qword_100055DC8 = v3;
  unk_100055DD0 = v6 * 0.208135861;
  return result;
}

double sub_100025358()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;

  v4 = fmin(v3 + -25.0, 400.0);
  v5 = [v0 mainScreen];
  [v5 nativeBounds];
  v7 = v6;

  result = fmin(v7 + -25.0, 500.0);
  qword_100055DD8 = *&v4;
  unk_100055DE0 = *&result;
  return result;
}

uint64_t sub_100025434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B8C(&qword_100052CF8, &qword_100034700);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10002687C(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100007FE0(v12, &qword_100052CF8, &qword_100034700);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100007FE0(a3, &qword_100052CF8, &qword_100034700);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007FE0(a3, &qword_100052CF8, &qword_100034700);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100025724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B8C(&qword_100052CF8, &qword_100034700);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10002687C(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100007FE0(v12, &qword_100052CF8, &qword_100034700);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_100003B8C(&qword_100054208, &qword_100035430);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100007FE0(a3, &qword_100052CF8, &qword_100034700);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007FE0(a3, &qword_100052CF8, &qword_100034700);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100003B8C(&qword_100054208, &qword_100035430);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100025A28(void *a1, uint64_t a2)
{
  v4 = sub_100003B8C(&qword_100052CF8, &qword_100034700);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003AFC(v8, qword_100055D08);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10002EE20(0xD000000000000014, 0x800000010003A070, &v18);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s invoked. ", v11, 0xCu);
    sub_1000042E4(v12);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v15 = a1;

  sub_100025434(0, 0, v7, &unk_1000353B8, v14);
}

uint64_t sub_100025C7C()
{
  if (qword_100052340 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 32) = sub_100003AFC(v1, qword_100055D50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Gathering shared setting…", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_100025DC8;

  return sub_100027824();
}

uint64_t sub_100025DC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_100026094;
  }

  else
  {
    v5 = sub_100025EDC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100025EDC()
{
  v19 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = dispatch thunk of WFSetupData.Builder.build()();
  v4 = v0[6];
  if (v2)
  {
    v5 = v0[6];

    v6 = v0[4];
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      v0[2] = v2;
      swift_errorRetain();
      sub_100003B8C(&qword_1000525D8, "Ћ");
      v11 = String.init<A>(describing:)();
      v13 = sub_10002EE20(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s", v9, 0xCu);
      sub_1000042E4(v10);
    }

    else
    {
    }
  }

  else
  {
    v14 = v0[3];
    v15 = v3;
    dispatch thunk of WFSetupClient.sendSharedSettings(settings:)();
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100026094()
{
  v13 = v0;
  v1 = v0[7];
  v2 = v0[4];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_100003B8C(&qword_1000525D8, "Ћ");
    v7 = String.init<A>(describing:)();
    v9 = sub_10002EE20(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
    sub_1000042E4(v6);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100026220()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100026268(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100004790;

  return sub_100025C5C(a1, v4, v5, v7);
}

uint64_t sub_100026328(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100008D18((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003B8C(&qword_1000525D8, "Ћ");
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000263F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100008D18((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003B8C(&qword_1000525D8, "Ћ");
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_100003C1C(0, &qword_100054200, ACAccount_ptr);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000264F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *sub_100008D18((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_100003B8C(&qword_1000525D8, "Ћ");
    v6 = swift_allocError();
    *v7 = a2;
    v8 = a2;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a3;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000265C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_100008D18((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003B8C(&qword_1000525D8, "Ћ");
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10002668C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026784;

  return v7(a1);
}

uint64_t sub_100026784()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002687C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003B8C(&qword_100052CF8, &qword_100034700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000268EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001AFEC;

  return sub_10002668C(a1, v5);
}

uint64_t sub_1000269A4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1000269D4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100026AC8;

  return v6(v2 + 32);
}

uint64_t sub_100026AC8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

void sub_100026BDC()
{
  dispatch thunk of WFSetupData.Builder.setIsConnectedToWiFi(_:)();
  dispatch thunk of WFSetupData.Builder.setNetworks(_:)();

  dispatch thunk of WFSetupData.Builder.setNetworkPasswords(_:)();

  if (WiFiManagerClientCreate())
  {
    v0 = WiFiManagerClientCopyDevices();
    if (!v0)
    {
      if (qword_100052340 == -1)
      {
LABEL_23:
        v12 = type metadata accessor for Logger();
        sub_100003AFC(v12, qword_100055D50);
        oslog = Logger.logObject.getter();
        v9 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(oslog, v9))
        {
          goto LABEL_52;
        }

        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Failed to get wifi devices.";
        goto LABEL_51;
      }

LABEL_57:
      swift_once();
      goto LABEL_23;
    }

    v1 = v0;
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_5;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:

        if (!WiFiDeviceClientCopyCurrentNetwork())
        {
          if (qword_100052340 != -1)
          {
            swift_once();
          }

          v13 = type metadata accessor for Logger();
          sub_100003AFC(v13, qword_100055D50);
          oslog = Logger.logObject.getter();
          v5 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(oslog, v5))
          {
            goto LABEL_30;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "Failed to get current network from device client ref.";
          goto LABEL_29;
        }

        if (WiFiNetworkIsEAP() || WiFiNetworkIsProfileBased() || WiFiNetworkIsExpirable() || WiFiNetworkIsCaptive() || WiFiNetworkGetType() == 1)
        {
          if (qword_100052340 != -1)
          {
            swift_once();
          }

          v4 = type metadata accessor for Logger();
          sub_100003AFC(v4, qword_100055D50);
          oslog = Logger.logObject.getter();
          v5 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(oslog, v5))
          {
            goto LABEL_30;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "Current Wi-Fi network is not transferrable.";
LABEL_29:
          _os_log_impl(&_mh_execute_header, oslog, v5, v7, v6, 2u);

LABEL_30:
          swift_unknownObjectRelease();
          goto LABEL_52;
        }

        v14 = WiFiNetworkCopyPassword();
        if (v14)
        {
          v15 = v14;
          objc_opt_self();
          v16 = swift_dynamicCastObjCClass();
          if (v16)
          {
LABEL_39:
            oslog = v16;
            v21 = WiFiNetworkCopyRecord();
            if (v21)
            {
              v22 = v21;
              dispatch thunk of WFSetupData.Builder.setIsConnectedToWiFi(_:)();
              sub_100003B8C(&qword_100052840, &unk_1000358F0);
              v23 = swift_allocObject();
              *(v23 + 16) = xmmword_100035330;
              *(v23 + 32) = v22;
              v24 = v22;
              dispatch thunk of WFSetupData.Builder.setNetworks(_:)();

              v25 = swift_allocObject();
              *(v25 + 16) = xmmword_100035330;
              *(v25 + 32) = oslog;
              oslog = oslog;
              dispatch thunk of WFSetupData.Builder.setNetworkPasswords(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              if (qword_100052340 != -1)
              {
                swift_once();
              }

              v26 = type metadata accessor for Logger();
              sub_100003AFC(v26, qword_100055D50);
              v27 = Logger.logObject.getter();
              v28 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v27, v28))
              {
                v29 = swift_slowAlloc();
                *v29 = 0;
                _os_log_impl(&_mh_execute_header, v27, v28, "Failed to get Wi-Fi record.", v29, 2u);
              }

              swift_unknownObjectRelease();
            }

            goto LABEL_52;
          }
        }

        if (qword_100052340 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100003AFC(v17, qword_100055D50);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "Forcing password to an empty string to handle the case where there is no password on the access point.", v20, 2u);
        }

        sub_100003C1C(0, &qword_1000541F8, NSString_ptr);
        v16 = NSString.init(stringLiteral:)();
        goto LABEL_39;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(v2 + 32);
        swift_unknownObjectRetain();
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_57;
    }

    if (qword_100052340 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100003AFC(v30, qword_100055D50);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "No Wi-Fi devices found.";
      goto LABEL_51;
    }
  }

  else
  {
    if (qword_100052340 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003AFC(v8, qword_100055D50);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Failed to initialize wiFiManager.";
LABEL_51:
      _os_log_impl(&_mh_execute_header, oslog, v9, v11, v10, 2u);
    }
  }

LABEL_52:
}

void sub_10002733C()
{
  v7 = [objc_allocWithZone(MBManager) init];
  v0 = [v7 restoreState];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 state];

    if (v2 - 1 >= 3 && (v2 >= 7 || ((0x71u >> v2) & 1) == 0))
    {
      if (qword_100052340 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100003AFC(v3, qword_100055D50);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = v2;
        _os_log_impl(&_mh_execute_header, v4, v5, "Unrecognized restore state: MBState == %u", v6, 8u);
      }
    }
  }

  dispatch thunk of WFSetupData.Builder.setIsRestoring(_:)();
}

uint64_t sub_1000274EC()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10002762C;
  v2 = swift_continuation_init();
  v0[17] = sub_100003B8C(&qword_1000541F0, &unk_100035410);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000265C0;
  v0[13] = &unk_10004A768;
  v0[14] = v2;
  [v1 fmipStateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10002762C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1000277B4;
  }

  else
  {
    v3 = sub_10002773C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002773C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  dispatch thunk of WFSetupData.Builder.setIsOptedInToFindMyDevice(_:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000277B4()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_100027824()
{
  v1 = type metadata accessor for TimeZone();
  v0[60] = v1;
  v2 = *(v1 - 8);
  v0[61] = v2;
  v3 = *(v2 + 64) + 15;
  v0[62] = swift_task_alloc();

  return _swift_task_switch(sub_10002790C, 0, 0);
}

uint64_t sub_10002790C()
{
  if (qword_100052340 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[63] = sub_100003AFC(v1, qword_100055D50);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Creating builder", v4, 2u);
  }

  v5 = type metadata accessor for WFSetupData.Builder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[64] = WFSetupData.Builder.init()();
  v8 = String._bridgeToObjectiveC()();
  CFPreferencesCopyValue(v8, kCFPreferencesAnyApplication, kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

  dispatch thunk of WFSetupData.Builder.setKeyboards(_:)();
  swift_unknownObjectRelease();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Retrieve Apple Keyboards", v11, 2u);
  }

  v12 = [objc_allocWithZone(ACAccountStore) init];
  v0[65] = v12;
  v0[2] = v0;
  v0[7] = v0 + 56;
  v0[3] = sub_100027C38;
  v13 = swift_continuation_init();
  v0[33] = sub_100003B8C(&qword_1000541D8, &qword_1000353E8);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_100026328;
  v0[29] = &unk_10004A6F0;
  v0[30] = v13;
  [v12 aa_primaryAppleAccountWithCompletion:v0 + 26];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100027C38()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 528) = v2;
  if (v2)
  {
    v3 = sub_100029754;
  }

  else
  {
    v3 = sub_100027D74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100027D74()
{
  v1 = v0[56];
  v0[67] = v1;
  if (v1)
  {
    v2 = [v1 username];
    if (v2)
    {
      v3 = v2;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  v4 = v0[65];
  v5 = v0[64];
  dispatch thunk of WFSetupData.Builder.setAppleID(_:)();

  v6 = [v4 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifieriTunesStore];
  v0[68] = v6;
  v0[10] = v0;
  v0[15] = v0 + 57;
  v0[11] = sub_100027F58;
  v7 = swift_continuation_init();
  v0[41] = sub_100003B8C(&qword_1000541E0, &qword_1000353F0);
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_1000263F8;
  v0[37] = &unk_10004A718;
  v0[38] = v7;
  [v4 accountsWithAccountType:v6 options:0 completion:v0 + 34];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100027F58()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 552) = v2;
  if (v2)
  {
    v3 = sub_100029808;
  }

  else
  {
    v3 = sub_100028094;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100028094()
{
  v1 = v0;
  v2 = *(v0 + 456);
  *(v0 + 560) = v2;
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
      goto LABEL_66;
    }

    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v4)
    {
      v5 = 0;
      v71 = *(v1 + 536);
      v72 = v4;
      v6 = v2 & 0xC000000000000001;
      v7 = &selRef_setTextAlignment_;
      v73 = v2;
      v74 = v1;
      do
      {
        if (v6)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v3 + 16))
          {
            goto LABEL_65;
          }

          v8 = *(v2 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v4 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_4;
        }

        if (![v8 v7[77]])
        {

          goto LABEL_7;
        }

        v11 = [v9 aa_altDSID];
        if (v11)
        {
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          if (!*(v1 + 536))
          {
            goto LABEL_21;
          }
        }

        else
        {
          v13 = 0;
          v15 = 0;
          if (!*(v1 + 536))
          {
            goto LABEL_21;
          }
        }

        v16 = [v71 aa_altDSID];
        if (v16)
        {
          v17 = v16;
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          if (!v15)
          {
            goto LABEL_19;
          }

          goto LABEL_22;
        }

LABEL_21:
        v18 = 0;
        v20 = 0;
        if (!v15)
        {
LABEL_19:

          v1 = v74;
          v7 = &selRef_setTextAlignment_;
          if (!v20)
          {
            break;
          }

          v4 = v72;
          v2 = v73;
          goto LABEL_7;
        }

LABEL_22:
        if (v20)
        {
          if (v13 == v18 && v15 == v20)
          {

            v1 = v74;
            break;
          }

          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v2 = v73;
          v1 = v74;
          v4 = v72;
          v7 = &selRef_setTextAlignment_;
          if (v21)
          {
            break;
          }
        }

        else
        {

          v2 = v73;
          v1 = v74;
          v4 = v72;
          v7 = &selRef_setTextAlignment_;
        }

LABEL_7:
        ++v5;
      }

      while (v10 != v4);
    }
  }

  v23 = *(v1 + 504);
  v22 = *(v1 + 512);
  dispatch thunk of WFSetupData.Builder.setUsesSameAccountForiTunes(_:)();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Retrieve Apple ID", v26, 2u);
  }

  v27 = *(v1 + 512);
  v28 = *(v1 + 488);
  v29 = *(v1 + 496);
  v30 = *(v1 + 480);

  sub_100026BDC();
  TMIsAutomaticTimeZoneEnabled();
  dispatch thunk of WFSetupData.Builder.setIsAutomaticTimeZoneEnabled(_:)();
  v31 = [objc_opt_self() systemTimeZone];
  static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

  TimeZone.identifier.getter();
  (*(v28 + 8))(v29, v30);
  dispatch thunk of WFSetupData.Builder.setTimeZone(_:)();

  v32 = [objc_opt_self() archivedPreferences];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  dispatch thunk of WFSetupData.Builder.setLocalePreferences(_:)();

  v33 = _AXSCopySettingsDataBlobForBuddy();
  if (v33)
  {
    v34 = v33;
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0xF000000000000000;
  }

  v38 = *(v1 + 536);
  v39 = *(v1 + 512);
  dispatch thunk of WFSetupData.Builder.setAccessibilitySettings(_:)();
  sub_1000299D0(v35, v37);

  if (v38)
  {
    v40 = [*(v1 + 536) aa_firstName];
    if (v40)
    {
      v41 = v40;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  v42 = *(v1 + 512);
  dispatch thunk of WFSetupData.Builder.setFirstName(_:)();

  v43 = @"ProductType";
  v44 = MGCopyAnswer();

  if (v44)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_unknownObjectRelease();
  }

  dispatch thunk of WFSetupData.Builder.setDeviceModel(_:)();

  v45 = @"DeviceClass";
  v46 = MGCopyAnswer();

  if (v46)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_unknownObjectRelease();
  }

  dispatch thunk of WFSetupData.Builder.setDeviceClass(_:)();

  v47 = @"UserAssignedDeviceName";
  v48 = MGCopyAnswer();

  if (v48)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    swift_unknownObjectRelease();
  }

  v49 = *(v1 + 512);
  dispatch thunk of WFSetupData.Builder.setDeviceName(_:)();

  v50 = @"JwLB44/jEB8aFDpXQ16Tuw";
  MGGetSInt32Answer();

  dispatch thunk of WFSetupData.Builder.setHasHomeButton(_:)();

  v51 = [objc_allocWithZone(MBManager) init];
  *(v1 + 568) = v51;
  sub_10002733C();
  v52 = [v51 backupDeviceUUID];
  if (v52)
  {
    v53 = v52;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v54 = *(v1 + 512);
  dispatch thunk of WFSetupData.Builder.setBackupUUID(_:)();

  [v51 isBackupEnabled];
  dispatch thunk of WFSetupData.Builder.setIsBackupEnabled(_:)();

  v55 = objc_opt_self();
  [v55 locationServicesEnabled];
  dispatch thunk of WFSetupData.Builder.setIsOptedInToLocationServices(_:)();
  *(v1 + 464) = 0;
  v56 = [v55 _archivedAuthorizationDecisionsWithError:v1 + 464];
  v57 = *(v1 + 464);
  if (v56)
  {
    v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    dispatch thunk of WFSetupData.Builder.setLocationServicesData(_:)();

    sub_1000299E4(v58, v60);
    v61 = swift_task_alloc();
    *(v1 + 576) = v61;
    *v61 = v1;
    v61[1] = sub_1000289BC;
    v62 = *(v1 + 512);

    return sub_1000274CC(v62);
  }

  else
  {
    v64 = *(v1 + 544);
    v65 = *(v1 + 536);
    v66 = *(v1 + 520);
    v67 = *(v1 + 512);
    v68 = v57;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    v69 = *(v1 + 496);

    v70 = *(v1 + 8);

    return v70();
  }
}

uint64_t sub_1000289BC()
{
  v2 = *(*v1 + 576);
  v5 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = sub_100028ECC;
  }

  else
  {
    v3 = sub_100028AFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100028AFC()
{
  v2 = MCFeatureDiagnosticsSubmissionAllowed;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedConnection];
  if (!v5)
  {

    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = v1[64];
  [v5 userBoolValueForSetting:v4];

  dispatch thunk of WFSetupData.Builder.setIsOptedInToDeviceAnalytics(_:)();
  v0 = MCFeatureAppAnalyticsAllowed;
  v8 = [v3 sharedConnection];
  if (!v8)
  {
LABEL_10:

    __break(1u);
LABEL_11:
    __break(1u);
  }

  v9 = v8;
  [v8 userBoolValueForSetting:v0];

  dispatch thunk of WFSetupData.Builder.setIsOptedInToAppAnalytics(_:)();

  v10 = objc_opt_self();
  v1[74] = v10;
  v11 = [v10 sharedPreferences];
  [v11 assistantIsEnabled];

  dispatch thunk of WFSetupData.Builder.setSiriAssistantIsEnabled(_:)();

  v12 = [objc_opt_self() sharedPreferences];
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  [v12 voiceTriggerEnabled];

  dispatch thunk of WFSetupData.Builder.setSiriVoiceTriggerIsEnabled(_:)();

  v14 = [v10 sharedPreferences];
  v15 = [v14 languageCode];

  if (v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  dispatch thunk of WFSetupData.Builder.setSiriAssistantLanguageCode(_:)();

  v16 = [v10 sharedPreferences];
  v17 = [v16 outputVoice];

  v1[75] = dispatch thunk of WFSetupData.Builder.setSiriAssistantOutputVoice(_:)();

  v18 = [objc_allocWithZone(AFSettingsConnection) init];
  v1[76] = v18;
  v1[18] = v1;
  v1[23] = v1 + 59;
  v1[19] = sub_100028FA4;
  v19 = swift_continuation_init();
  v1[49] = sub_100003B8C(&qword_1000541E8, &unk_100035400);
  v1[42] = _NSConcreteStackBlock;
  v1[43] = 1107296256;
  v1[44] = sub_1000264F4;
  v1[45] = &unk_10004A740;
  v1[46] = v19;
  [v18 getSiriDataSharingOptInStatusWithCompletion:v1 + 42];

  return _swift_continuation_await(v1 + 18);
}

uint64_t sub_100028ECC()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 520);
  v5 = *(v0 + 512);

  v6 = *(v0 + 584);
  v7 = *(v0 + 496);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100028FA4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 176);
  *(*v0 + 616) = v3;
  if (v3)
  {
    v4 = *(v1 + 600);
    v5 = *(v1 + 560);

    v6 = sub_1000298D4;
  }

  else
  {
    v6 = sub_1000290F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

void *sub_1000290F4()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 472);

  dispatch thunk of WFSetupData.Builder.setSiriDataSharingIsEnabled(_:)();

  v4 = [v2 sharedPreferences];
  [v4 dictationIsEnabled];

  dispatch thunk of WFSetupData.Builder.setDictationIsEnabled(_:)();

  v5 = [v2 sharedPreferences];
  [v5 suppressDictationOptIn];

  dispatch thunk of WFSetupData.Builder.setSuppressDictationOptIn(_:)();

  if (([objc_opt_self() versionOfAcceptedAgreement] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v6 = *(v0 + 512);
  dispatch thunk of WFSetupData.Builder.setDeviceTermsIdentifier(_:)();

  result = _CFCopySystemVersionDictionary();
  if (result)
  {
    v8 = _kCFSystemVersionProductVersionKey;
    if (!_kCFSystemVersionProductVersionKey)
    {
      __break(1u);
      return result;
    }

    v9 = *(v0 + 560);
    v10 = result;

    v11 = [v10 valueForKey:v8];

    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    *(v0 + 400) = v17;
    *(v0 + 416) = v18;
    if (*(v0 + 424))
    {
      if (swift_dynamicCast())
      {
        v13 = *(v0 + 512);
        v14 = *(v0 + 432);
        v15 = *(v0 + 440);
        dispatch thunk of WFSetupData.Builder.setProductVersion(_:)();
      }
    }

    else
    {

      sub_100007FE0(v0 + 400, &qword_100052D18, &unk_100034728);
    }
  }

  else
  {
    v12 = *(v0 + 560);
  }

  v16 = swift_task_alloc();
  *(v0 + 624) = v16;
  *v16 = v0;
  v16[1] = sub_1000293AC;

  return sub_10000844C();
}

uint64_t sub_1000293AC(uint64_t a1)
{
  v2 = *(*v1 + 624);
  v4 = *v1;
  *(*v1 + 632) = a1;

  return _swift_task_switch(sub_1000294D8, 0, 0);
}

uint64_t sub_1000294D8()
{
  v26 = v0;
  v1 = v0[79];
  v2 = v0[64];
  dispatch thunk of WFSetupData.Builder.setPrescriptionRecords(_:)();

  v3 = [objc_opt_self() sharedInstance];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  v5 = [v3 backupMetadata];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  v10 = v0[63];
  v9 = v0[64];
  dispatch thunk of WFSetupData.Builder.setWalletData(_:)();

  sub_1000299D0(v6, v8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_10002EE20(0xD000000000000021, 0x800000010003A0F0, &v25);
    _os_log_impl(&_mh_execute_header, v11, v12, "Creating %{public}s", v13, 0xCu);
    sub_1000042E4(v14);
  }

  v15 = v0[71];
  v16 = v0[68];
  v17 = v0[67];
  v18 = v0[65];
  v19 = v0[64];
  v20 = v0[62];
  type metadata accessor for WFSetupServerAnisetteDataProvider();
  v21 = WFSetupServerAnisetteDataProvider.__allocating_init(isMocked:)();
  dispatch thunk of WFSetupData.Builder.setAnisetteDataProvider(_:)();

  v22 = v0[1];
  v23 = v0[64];

  return v22(v23);
}

uint64_t sub_100029754()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  swift_willThrow();

  v4 = v0[66];
  v5 = v0[62];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100029808()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[65];
  v5 = v0[64];
  swift_willThrow();

  v6 = v0[69];
  v7 = v0[62];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000298D4()
{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[71];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[65];
  v7 = v0[64];
  swift_willThrow();

  v8 = v0[77];
  v9 = v0[62];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000299D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000299E4(a1, a2);
  }

  return a1;
}

uint64_t sub_1000299E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100029A38()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029A70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001AFEC;

  return sub_1000269D4(a1, v5);
}

uint64_t sub_100029B28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100004790;

  return sub_1000269D4(a1, v5);
}

uint64_t sub_100029C28(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100029CC0, v4, v3);
}

uint64_t sub_100029CC0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v7 = type metadata accessor for IntroductionUIProvider();
  swift_allocObject();

  v8 = sub_100009664(0xD000000000000012, 0x800000010003A1B0, 0, 0, 0x45554E49544E4F43, 0xEC0000004E54425FLL, 0, 0, v4, 0, v6);

  v0[5] = v7;
  v0[6] = &off_100049968;
  v0[2] = v8;
  swift_beginAccess();

  sub_100004894((v0 + 2), v2 + 24);
  swift_endAccess();
  v3[3] = v7;
  v3[4] = &off_100049968;
  *v3 = v8;
  v9 = v0[1];

  return v9();
}

uint64_t sub_100029E2C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_100029C28(a1);
}

uint64_t sub_100029EEC(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100029F84, v4, v3);
}

uint64_t sub_100029F84()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  v6 = type metadata accessor for CompleteUIProvider();
  swift_allocObject();

  v7 = sub_10002F3D8(0xD000000000000015, 0x800000010003A210, v4);

  v0[5] = v6;
  v0[6] = &off_10004ACE8;
  v0[2] = v7;
  swift_beginAccess();

  sub_100004894((v0 + 2), v2 + 24);
  swift_endAccess();
  v3[3] = v6;
  v3[4] = &off_10004ACE8;
  *v3 = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_10002A0B0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_100029EEC(a1);
}

uint64_t sub_10002A14C()
{
  v1 = 0x64656C696166;
  v2 = 0x73736563637573;
  if (*v0 != 2)
  {
    v2 = 0x657373696D736964;
  }

  if (*v0)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10002A1FC()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for ViewServiceUIViewControllerExtendedHeight();
  objc_msgSendSuper2(&v21, "viewDidLayoutSubviews");
  Strong = swift_weakLoadStrong();
  if (!Strong || (v2 = *(Strong + 16), v3 = *(Strong + 24), v4 = *(Strong + 32), , v4 == 1))
  {
    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      if (qword_100052370 != -1)
      {
        swift_once();
      }

      v7 = &qword_100055DD8;
    }

    else
    {
      if (qword_100052368 != -1)
      {
        swift_once();
      }

      v7 = &qword_100055DC8;
    }

    v2 = *v7;
    v3 = *(v7 + 1);
  }

  [v0 preferredContentSize];
  if (v3 > v8)
  {
    v8 = v3;
  }

  [v0 setPreferredContentSize:{v2, v8}];
  [v0 preferredContentSize];
  v10 = v9;
  v12 = v11;
  v13 = swift_weakLoadStrong();
  if (!v13 || (v14 = *(v13 + 16), v15 = *(v13 + 24), v16 = *(v13 + 32), result = , (v16 & 1) != 0) || v14 * v15 < v10 * v12)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v18 = result;
      [v0 preferredContentSize];
      *(v18 + 16) = v19;
      *(v18 + 24) = v20;
      *(v18 + 32) = 0;
    }
  }

  return result;
}

id sub_10002A520()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewServiceUIViewControllerExtendedHeight();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for CompletionStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CompletionStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002A71C()
{
  result = qword_100054488;
  if (!qword_100054488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054488);
  }

  return result;
}

void static NSUserDefaults.appDefaults.getter()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    __break(1u);
  }
}

id NSUserDefaults.shouldSimulate.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t sub_10002A8DC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v55 = a3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v48 - v11;
  if (qword_100052350 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v54 = sub_100003AFC(v13, qword_100055D80);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v56 = v10;
  if (v16)
  {
    v17 = v6;
    v18 = v5;
    v19 = swift_slowAlloc();
    v20 = a1;
    v21 = a2;
    v22 = v12;
    v23 = swift_slowAlloc();
    v58 = v23;
    *v19 = 136446210;
    *(v19 + 4) = sub_10002EE20(0xD000000000000021, 0x800000010003A340, &v58);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s generating App Clip Code.", v19, 0xCu);
    sub_1000042E4(v23);
    v12 = v22;
    a2 = v21;
    a1 = v20;

    v5 = v18;
    v6 = v17;
  }

  v24 = v57;
  result = sub_10002ADDC(a1, a2);
  if (!v24)
  {
    v27 = v26;
    v28 = v12;
    v29 = v12;
    v30 = result;
    sub_10002B424(result, v26, v28);
    v31 = sub_10002C148(v29);
    v57 = v29;
    v32 = v31;
    v34 = v33;
    v35 = sub_10002CA68();
    v36 = v35;
    v53 = sub_10002CBF8(v35);
    (*(v6 + 16))(v56, v57, v5);
    v37 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    v54 = v37;
    if (os_log_type_enabled(v37, v51))
    {
      v38 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v58 = v49;
      *v38 = 136446466;
      v39 = sub_10002EE20(0xD000000000000021, 0x800000010003A340, &v58);
      v50 = v38;
      *(v38 + 4) = v39;
      *(v38 + 12) = 2082;
      sub_10002CDA4();
      v40 = v56;
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v5;
      v48 = v41;
      v43 = v42;
      (*(v6 + 8))(v40, v52);
      v44 = sub_10002EE20(v48, v43, &v58);

      v45 = v50;
      *(v50 + 14) = v44;
      v5 = v52;
      _os_log_impl(&_mh_execute_header, v54, v51, "%{public}s successfully generated VisualPairingAppClipCode with URL: %{public}s.", v45, 0x16u);
      swift_arrayDestroy();

      sub_1000299E4(v32, v34);
    }

    else
    {

      sub_1000299E4(v32, v34);
      (*(v6 + 8))(v56, v5);
    }

    v46 = type metadata accessor for VisualPairingAppClipCode();
    v47 = v55;
    result = (*(v6 + 32))(v55 + *(v46 + 24), v57, v5);
    *v47 = v53;
    v47[1] = v30;
    v47[2] = v27;
  }

  return result;
}

uint64_t sub_10002ADDC(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = HIBYTE(a2) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_70;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v8 = sub_10002B748(v3, a2, 10);
    v35 = v34;

    if (v35)
    {
      goto LABEL_70;
    }

LABEL_63:
    if (v8 <= 0xF423F)
    {
      sub_100003B8C(&qword_1000544A0, "(}");
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_100034690;
      *(v26 + 56) = &type metadata for Int;
      *(v26 + 64) = &protocol witness table for Int;
      *(v26 + 32) = v8;
      v27 = String.init(format:_:)();
      v29 = v28;
      if (qword_100052350 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100003AFC(v30, qword_100055D80);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v40[0] = swift_slowAlloc();
        *v33 = 136446466;
        *(v33 + 4) = sub_10002EE20(v27, v29, v40);
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_10002EE20(v3, a2, v40);
        _os_log_impl(&_mh_execute_header, v31, v32, "Generated payload '%{public}s' from PIN '%s' (this PIN is for visual pairing only).", v33, 0x16u);
        swift_arrayDestroy();
      }

      return v27;
    }

LABEL_70:
    if (qword_100052350 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100003AFC(v36, qword_100055D80);

    v37 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v27))
    {
      v38 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v38 = 136446466;
      *(v38 + 4) = sub_10002EE20(0xD000000000000021, 0x800000010003A340, v40);
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_10002EE20(v3, a2, v40);
      _os_log_impl(&_mh_execute_header, v37, v27, "%{public}s received invalid PIN: %s.", v38, 0x16u);
      swift_arrayDestroy();
    }

    sub_10002CDFC();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
    return v27;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_79;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v4) = 1;
LABEL_62:
      v41 = v4;
      if (v4)
      {
        goto LABEL_70;
      }

      goto LABEL_63;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v40[0] = result;
  v40[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v40;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          v23 = (v23 + 1);
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v40 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_78;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v18 = v40 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_10002B424@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003B8C(&qword_1000525D0, "Ћ");
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v19 = 0xD000000000000021;
  v20 = 0x800000010003A370;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  String.append(_:)(v10);
  URL.init(string:)();

  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a3, v9, v11);
  }

  sub_10000427C(v9);
  if (qword_100052350 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003AFC(v13, qword_100055D80);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v16 = 136446466;
    *(v16 + 4) = sub_10002EE20(0xD000000000000021, 0x800000010003A340, &v19);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_10002EE20(a1, a2, &v19);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s failed to create URL for payload: %s.", v16, 0x16u);
    swift_arrayDestroy();
  }

  sub_10002CDFC();
  swift_allocError();
  *v17 = 1;
  return swift_willThrow();
}

uint64_t sub_10002B718@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unsigned __int8 *sub_10002B748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10002BCD4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10002BCD4()
{
  v0 = String.subscript.getter();
  v4 = sub_10002BD54(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10002BD54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_10002F260(v9, 0);
  v12 = sub_10002BEAC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10002BEAC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10002C0CC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10002C0CC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10002C0CC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

NSObject *sub_10002C148(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v65 = *(v2 - 8);
  v3 = v65[8];
  v4 = __chkstk_darwin(v2);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v57 - v6;
  v8 = [objc_opt_self() currentTraitCollection];
  v9 = [v8 userInterfaceStyle];

  if (!v9)
  {
    if (qword_100052350 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003AFC(v19, qword_100055D80);
    v11 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v16))
    {
      goto LABEL_22;
    }

    v13 = v7;
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Using black strokes on white background for ACC in unspecified UI style.";
    goto LABEL_20;
  }

  if (v9 == 1)
  {
    if (qword_100052350 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003AFC(v15, qword_100055D80);
    v11 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v16))
    {
      goto LABEL_22;
    }

    v13 = v7;
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Using black strokes on white background for ACC in light mode UI style.";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v11, v16, v18, v17, 2u);
    v63 = 1;
    goto LABEL_21;
  }

  if (v9 != 2)
  {
    if (qword_100052350 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003AFC(v20, qword_100055D80);
    v11 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v16))
    {
      v13 = v7;
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Using black strokes on white background for ACC in unknown UI style.";
      goto LABEL_20;
    }

LABEL_22:
    v63 = 1;
    goto LABEL_24;
  }

  if (qword_100052350 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003AFC(v10, qword_100055D80);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v7;
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Using white strokes on black background for ACC in dark mode UI style.", v14, 2u);
    v63 = 0;
LABEL_21:

    v7 = v13;
    goto LABEL_24;
  }

  v63 = 0;
LABEL_24:

  if (qword_100052350 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100003AFC(v21, qword_100055D80);
  v59 = v65[2];
  v60 = v65 + 2;
  v59(v7, a1, v2);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v7;
    v26 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v69 = v57;
    *v26 = 136446722;
    *(v26 + 4) = sub_10002EE20(0xD000000000000021, 0x800000010003A340, &v69);
    *(v26 + 12) = 2082;
    sub_10002CDA4();
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = a1;
    v28 = v2;
    v30 = v29;
    v61 = v65[1];
    v61(v25, v28);
    v31 = sub_10002EE20(v27, v30, &v69);
    v2 = v28;
    a1 = v58;

    *(v26 + 14) = v31;
    *(v26 + 22) = 2050;
    v32 = v63;
    *(v26 + 24) = v63;
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s encoding URL: %{public}s with preset color: %{public}ld.", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v61 = v65[1];
    v61(v7, v2);
    v32 = v63;
  }

  v67 = ACCBakerDataVersion2;
  v69 = 0;
  URL._bridgeToObjectiveC()(ACCBakerDataVersion2);
  v34 = v33;
  v35 = ACCBakerCreate();

  if (!v35)
  {
    v59(v62, a1, v2);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v64 = v22;
      v68 = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_10002EE20(0xD000000000000021, 0x800000010003A340, &v68);
      *(v39 + 12) = 2082;
      sub_10002CDA4();
      v41 = v62;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v61(v41, v2);
      v32 = sub_10002EE20(v42, v44, &v68);

      *(v39 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s failed to create SVG Data from URL %{public}s.", v39, 0x16u);
      swift_arrayDestroy();

      v45 = v69;
      if (!v69)
      {
        goto LABEL_38;
      }
    }

    else
    {

      v61(v62, v2);
      v45 = v69;
      if (!v69)
      {
LABEL_38:
        sub_10002CDFC();
        v54 = swift_allocError();
        *v55 = 2;
        v64 = v54;
        swift_willThrow();
        return v32;
      }
    }

    v46 = v45;
    v32 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v68 = v49;
      *v48 = 136446210;
      v66 = v46;
      type metadata accessor for CFError(0);
      v50 = v46;
      v51 = String.init<A>(describing:)();
      v53 = sub_10002EE20(v51, v52, &v68);

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v32, v47, "%{public}s.", v48, 0xCu);
      sub_1000042E4(v49);
    }

    else
    {
    }

    goto LABEL_38;
  }

  v36 = v35;
  v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v32;
}

uint64_t sub_10002CA68()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = CGSVGDocumentCreateFromData();

  if (!v1)
  {
    if (qword_100052350 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003AFC(v2, qword_100055D80);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10002EE20(0xD000000000000021, 0x800000010003A340, &v9);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s failed to create CGSVGDocument from Data.", v5, 0xCu);
      sub_1000042E4(v6);
    }

    sub_10002CDFC();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
  }

  return v1;
}

id sub_10002CBF8(uint64_t a1)
{
  result = [objc_opt_self() _imageWithCGSVGDocument:a1 scale:0 orientation:1.0];
  if (!result)
  {
    if (qword_100052350 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003AFC(v2, qword_100055D80);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10002EE20(0xD000000000000021, 0x800000010003A340, &v8);
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s failed to create UIImage from CGSVGDocument.", v5, 0xCu);
      sub_1000042E4(v6);
    }

    sub_10002CDFC();
    swift_allocError();
    *v7 = 4;
    swift_willThrow();
    return 0;
  }

  return result;
}

unint64_t sub_10002CDA4()
{
  result = qword_100054490;
  if (!qword_100054490)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054490);
  }

  return result;
}

unint64_t sub_10002CDFC()
{
  result = qword_100054498;
  if (!qword_100054498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054498);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProxCardStageVersion(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ProxCardStageVersion(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

Swift::Int sub_10002CF38()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10002CF8C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002CFD0@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100049498, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_10002D038()
{
  result = qword_1000544A8;
  if (!qword_1000544A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000544A8);
  }

  return result;
}

uint64_t sub_10002D08C()
{
  sub_100023BC8();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_10002D0E4(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002D17C, v4, v3);
}

uint64_t sub_10002D17C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v5 = *(v2 + 64);
  v4 = *(v2 + 72);
  v6 = type metadata accessor for PinPairingUIProvider();
  swift_allocObject();

  v8 = sub_1000222A0(v7, v4);
  v0[5] = v6;
  v0[6] = &off_10004A3F8;
  v0[2] = v8;
  swift_beginAccess();

  sub_100004894((v0 + 2), v2 + 24);
  swift_endAccess();
  v3[3] = v6;
  v3[4] = &off_10004A3F8;
  *v3 = v8;
  v9 = v0[1];

  return v9();
}

uint64_t sub_10002D274(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_10002D0E4(a1);
}

uint64_t *sub_10002D310(uint64_t a1)
{
  v39 = *v1;
  v1[3] = a1;
  v2 = objc_allocWithZone(PRXIconContentViewController);

  v3 = [v2 init];
  v1[2] = v3;
  v4 = v3;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 mainBundle];
  v41._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD000000000000024;
  v8._object = 0x800000010003A410;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v41);

  v11 = String._bridgeToObjectiveC()();

  [v6 setTitle:v11];

  v12 = [v5 mainBundle];
  v42._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD000000000000027;
  v13._object = 0x800000010003A440;
  v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v14.value._object = 0xEB00000000656C62;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v42);

  v16 = String._bridgeToObjectiveC()();

  [v6 setSubtitle:v16];

  [v6 setDismissalType:1];
  v17 = String.appleAccountRebrandStringKey.getter(0xD000000000000025);
  v19 = v18;
  v20 = [v5 mainBundle];
  v43._object = 0xE000000000000000;
  v21._countAndFlagsBits = v17;
  v21._object = v19;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v22.value._object = 0xEB00000000656C62;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v43._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v43);

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v39;

  v26 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10002DA84;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002EA00;
  aBlock[3] = &unk_10004AAB8;
  v27 = _Block_copy(aBlock);
  v28 = [objc_opt_self() actionWithTitle:v26 style:0 handler:v27];

  _Block_release(v27);

  v29 = String._bridgeToObjectiveC()();
  v30 = [objc_opt_self() imageNamed:v29];

  if (v30 && (v31 = [objc_opt_self() mainScreen], objc_msgSend(v31, "scale"), v33 = v32, v31, v34 = objc_msgSend(v30, "_applicationIconImageForFormat:precomposed:scale:", 2, 1, v33), v30, v34))
  {
    sub_100003B8C(&qword_100052840, &unk_1000358F0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100035330;
    *(v35 + 32) = v34;
    sub_1000231A0();
    v36 = v34;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setImages:isa];
  }

  else
  {
  }

  return v1;
}

void sub_10002D850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 24);

    sub_100003EF0();
  }

  else
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003AFC(v6, qword_100055D08);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136446210;
      v14[4] = a3;
      swift_getMetatypeMetadata();
      v11 = String.init<A>(describing:)();
      v13 = sub_10002EE20(v11, v12, v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s was unexpectedly deallocated.", v9, 0xCu);
      sub_1000042E4(v10);
    }
  }
}

uint64_t sub_10002DA14()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002DA4C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002DA8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002DAC8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002DB60, v4, v3);
}

uint64_t sub_10002DB60()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  v5 = v2[8];
  v4 = v2[9];
  v6 = v2[10];
  v7 = type metadata accessor for VisualPairingUIProvider();
  swift_allocObject();

  v8 = sub_10000E570(v5, v4, v6);
  v0[5] = v7;
  v0[6] = &off_100049C10;
  v0[2] = v8;
  swift_beginAccess();

  sub_100004894((v0 + 2), (v2 + 3));
  swift_endAccess();
  v3[3] = v7;
  v3[4] = &off_100049C10;
  *v3 = v8;
  v9 = v0[1];

  return v9();
}

uint64_t sub_10002DC74(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_10002DAC8(a1);
}

uint64_t sub_10002DD34()
{
  v1 = v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ProgressUIProvider is being deinitialized", v5, 2u);
  }

  v7 = *(v1 + 24);
  v6 = *(v1 + 32);

  return v1;
}

uint64_t sub_10002DE28()
{
  sub_10002DD34();

  return _swift_deallocClassInstance(v0, 48, 7);
}

id sub_10002DF8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressViewServiceUIViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10002E014()
{
  result = qword_100054860;
  if (!qword_100054860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054860);
  }

  return result;
}

unint64_t sub_10002E0D4()
{
  result = qword_100054868;
  if (!qword_100054868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054868);
  }

  return result;
}

Swift::Int sub_10002E128()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10002E16C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10002E1E8(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(PRXIconContentViewController) init];
  v55 = v2;
  *(v2 + 16) = v5;
  v6 = qword_100052328;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v54 = a1;
  v8 = type metadata accessor for Logger();
  sub_100003AFC(v8, qword_100055D08);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Creating Apple ID Renewal card", v11, 2u);
  }

  v12 = v7;
  v13 = String.appleAccountRebrandStringKey.getter(0xD000000000000024);
  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v57._object = 0xE000000000000000;
  v18._countAndFlagsBits = v13;
  v18._object = v15;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v57);

  v21 = String._bridgeToObjectiveC()();

  [v12 setTitle:v21];

  v22 = String.appleAccountRebrandStringKey.getter(0xD000000000000027);
  v24 = v23;
  v25 = [v16 mainBundle];
  v58._object = 0xE000000000000000;
  v26._countAndFlagsBits = v22;
  v26._object = v24;
  v27.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v27.value._object = 0xEB00000000656C62;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v58);

  v29 = String._bridgeToObjectiveC()();

  [v12 setSubtitle:v29];

  [v12 setDismissalType:1];
  sub_10002E800(v12);
  v30 = String.appleAccountRebrandStringKey.getter(0xD000000000000025);
  v32 = v31;
  v33 = [v16 mainBundle];
  v59._object = 0xE000000000000000;
  v34._countAndFlagsBits = v30;
  v34._object = v32;
  v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v35.value._object = 0xEB00000000656C62;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v59._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v59);

  v37 = swift_allocObject();
  v37[2] = v54;
  v37[3] = a2;
  v37[4] = v12;
  v38 = v12;

  v39 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10002E9DC;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002EA00;
  aBlock[3] = &unk_10004ACC0;
  v40 = _Block_copy(aBlock);
  v41 = [objc_opt_self() actionWithTitle:v39 style:0 handler:v40];

  _Block_release(v40);

  v42 = v38;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v45 = 136446210;
    v47 = [v42 title];
    if (v47)
    {
      v48 = v47;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;
    }

    else
    {
      v49 = 0;
      v51 = 0xE000000000000000;
    }

    v52 = sub_10002EE20(v49, v51, aBlock);

    *(v45 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v43, v44, "Displaying Apple ID Renewal with title: %{public}s", v45, 0xCu);
    sub_1000042E4(v46);
  }

  else
  {
  }

  return v55;
}

uint64_t sub_10002E7A4()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

void sub_10002E800(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() imageNamed:v2];

  if (v3)
  {
    v4 = [objc_opt_self() mainScreen];
    [v4 scale];
    v6 = v5;

    v7 = [v3 _applicationIconImageForFormat:2 precomposed:1 scale:v6];
    if (v7)
    {
      sub_100003B8C(&qword_100052840, &unk_1000358F0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100035330;
      *(v8 + 32) = v7;
      sub_1000231A0();
      v9 = v7;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [a1 setImages:isa];
    }
  }
}

uint64_t sub_10002E994()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002E9E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10002EA00(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10002EA68()
{
  v1 = v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ProxCardCompleteUI is being deinitialized", v5, 2u);
  }

  v6 = *(v1 + 24);

  return v1;
}

uint64_t sub_10002EB58()
{
  sub_10002EA68();

  return _swift_deallocClassInstance(v0, 32, 7);
}

void sub_10002EBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 24);

    sub_10001DCD0();
  }

  else
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003AFC(v6, qword_100055D08);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136446210;
      v14[4] = a3;
      swift_getMetatypeMetadata();
      v11 = String.init<A>(describing:)();
      v13 = sub_10002EE20(v11, v12, v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s was unexpectedly deallocated.", v9, 0xCu);
      sub_1000042E4(v10);
    }
  }
}

uint64_t sub_10002ED50(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10002EDC4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10002EE20(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10002EE20(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002EEEC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100008C68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000042E4(v11);
  return v7;
}

unint64_t sub_10002EEEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10002EFF8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10002EFF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002F044(a1, a2);
  sub_10002F174(&off_1000492F8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10002F044(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10002F260(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10002F260(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10002F174(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10002F2D4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10002F260(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100003B8C(&qword_1000549B8, qword_100035CC8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002F2D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003B8C(&qword_1000549B8, qword_100035CC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_10002F3C8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t *sub_10002F3D8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v36 = *v3;
  v3[3] = a3;
  v7 = objc_allocWithZone(PRXCardContentViewController);

  v8 = [v7 init];
  v3[2] = v8;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 mainBundle];
  v38._object = 0xE000000000000000;
  v12._countAndFlagsBits = a1;
  v12._object = a2;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v38);

  v15 = String._bridgeToObjectiveC()();

  [v10 setTitle:v15];

  [v3[2] setDismissalType:3];
  v16 = v3[2];
  v17 = [v9 mainBundle];
  v39._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0xD000000000000017;
  v18._object = 0x800000010003A6F0;
  v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v19.value._object = 0xEB00000000656C62;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v39);

  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v36;

  v23 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10002F8B4;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002EA00;
  aBlock[3] = &unk_10004AD58;
  v24 = _Block_copy(aBlock);
  v25 = [objc_opt_self() actionWithTitle:v23 style:0 handler:v24];

  _Block_release(v24);

  v26 = v4[2];
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 systemBlueColor];
  v30 = String._bridgeToObjectiveC()();
  v31 = [objc_opt_self() _systemImageNamed:v30];

  v32 = [objc_allocWithZone(UIImageView) initWithImage:v31];
  [v32 setTintColor:v29];
  v33 = [objc_opt_self() configurationWithPointSize:72.0];
  [v32 setPreferredSymbolConfiguration:v33];

  v34 = v32;
  sub_10000510C(v34, 0xD000000000000010, 0x800000010003A710, v29, 0);

  return v4;
}

uint64_t sub_10002F844()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F87C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F8BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10002F990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for ProxCardStageIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProxCardStageIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002FB48(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x73736572676F7270;
    v6 = 0x6974656C706D6F63;
    if (a1 != 8)
    {
      v6 = 0x6572756C696166;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x61506C6175736976;
    if (a1 != 5)
    {
      v7 = 0x69726961506E6970;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E55656369766564;
    v2 = 0xD000000000000015;
    v3 = 0x6375646F72746E69;
    if (a1 != 3)
    {
      v3 = 0x7463757274736E69;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_10002FCBC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x73736572676F7270;
    v6 = 0x6974656C706D6F63;
    if (a1 != 8)
    {
      v6 = 0x6572756C696166;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x70206C6175736976;
    if (a1 != 5)
    {
      v7 = 0x72696170206E6970;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7520656369766564;
    v2 = 0xD000000000000018;
    v3 = 0x6375646F72746E69;
    if (a1 != 3)
    {
      v3 = 0x7463757274736E69;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10002FE34(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10002FB48(*a1);
  v5 = v4;
  if (v3 == sub_10002FB48(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10002FEBC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10002FB48(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002FF20()
{
  sub_10002FB48(*v0);
  String.hash(into:)();
}

Swift::Int sub_10002FF74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10002FB48(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10002FFD4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100030284(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100030004@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10002FB48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100030048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100030324();

  return RawRepresentable<>.init(argument:)(a1, a2, a3, a4, v8, &protocol witness table for String);
}

uint64_t sub_1000300BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030324();

  return ExpressibleByArgument<>.defaultValueDescription.getter(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_100030110(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000302D0();
  v5 = sub_100030324();

  return static ExpressibleByArgument<>.allValueStrings.getter(a1, a2, v4, v5, &protocol witness table for String);
}

uint64_t sub_100030170(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000302D0();

  return static ExpressibleByArgument<>.defaultCompletionKind.getter(a1, a2, v4);
}

unint64_t sub_1000301C8()
{
  result = qword_100054AB0;
  if (!qword_100054AB0)
  {
    sub_100003BD4(&qword_100054AB8, &qword_100035D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054AB0);
  }

  return result;
}

unint64_t sub_100030230()
{
  result = qword_100054AC0;
  if (!qword_100054AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054AC0);
  }

  return result;
}

unint64_t sub_100030284(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100049388, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000302D0()
{
  result = qword_100054AC8;
  if (!qword_100054AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054AC8);
  }

  return result;
}

unint64_t sub_100030324()
{
  result = qword_100054AD0;
  if (!qword_100054AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054AD0);
  }

  return result;
}

uint64_t *sub_100030378()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003AFC(v3, qword_100055D08);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14[0] = v7;
    v14[1] = v2;
    *v6 = 136446210;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = sub_10002EE20(v8, v9, v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s deinit", v6, 0xCu);
    sub_1000042E4(v7);
  }

  sub_100007FE0((v1 + 3), &qword_1000526A0, &unk_100034450);
  v11 = v1[8];

  v12 = v1[9];

  sub_1000050E4((v1 + 10));
  return v1;
}

uint64_t sub_10003052C()
{
  sub_100030378();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_100030584(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  v3 = type metadata accessor for EnrollmentAssetService();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[18] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v7;
  v2[20] = v6;

  return _swift_task_switch(sub_1000306A0, v7, v6);
}

uint64_t sub_1000306A0()
{
  v1 = v0[17];
  EnrollmentAssetService.init()();
  if (qword_100052358 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[21] = sub_100003AFC(v2, qword_100055D98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Activating enrollment asset service to check for enrollments before unlock", v5, 2u);
  }

  v6 = async function pointer to EnrollmentAssetService.activate()[1];
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_1000307FC;
  v8 = v0[17];

  return EnrollmentAssetService.activate()();
}

uint64_t sub_1000307FC()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *v0;

  v4 = async function pointer to EnrollmentAssetService.localDataExists()[1];
  v5 = swift_task_alloc();
  *(v1 + 184) = v5;
  *v5 = v3;
  v5[1] = sub_100030940;
  v6 = *(v1 + 136);

  return EnrollmentAssetService.localDataExists()();
}

uint64_t sub_100030940(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 192) = v1;

  v7 = *(v3 + 160);
  v8 = *(v3 + 152);
  if (v1)
  {
    v9 = sub_100030D60;
  }

  else
  {
    v9 = sub_100030A88;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100030A88()
{
  v35 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 200);
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136446466;
    *(v0 + 88) = v6;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = sub_10002EE20(v9, v10, &v34);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1026;
    *(v7 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s hasEnrollments: %{BOOL,public}d", v7, 0x12u);
    sub_1000042E4(v8);
  }

  v12 = *(v0 + 200);
  v14 = *(v0 + 128);
  v13 = *(v0 + 136);
  v15 = *(v0 + 120);
  EnrollmentAssetService.invalidate()();
  (*(v14 + 8))(v13, v15);
  v16 = "GUEST_MODE_NO_SAVED_SETUP";
  v17 = 0xD000000000000025;
  if (v12 == 1)
  {
    v17 = 0xD000000000000026;
    v16 = "stModeUnlockStage";
  }

  v31 = v16;
  v32 = v17;
  if (v12 == 1)
  {
    v18 = 0xD00000000000001ALL;
  }

  else
  {
    v18 = 0xD000000000000019;
  }

  v30 = v18;
  if (v12 == 1)
  {
    v19 = "GUEST_MODE_DONT_SAVE";
  }

  else
  {
    v19 = "setupPinPublisher";
  }

  v33 = *(v0 + 136);
  v20 = *(v0 + 96);
  v21 = *(v0 + 104);
  v22 = v21[8];
  v23 = v21[9];
  Strong = swift_unknownObjectWeakLoadStrong();
  v25 = v21[11];
  v26 = type metadata accessor for DeviceUnlockUIProvider();
  swift_allocObject();

  v27 = sub_10001E368(v30, (v19 | 0x8000000000000000), v32, (v31 | 0x8000000000000000), v22, Strong, v25, 1);
  swift_unknownObjectRelease();

  *(v0 + 40) = v26;
  *(v0 + 48) = &off_10004A2B8;
  *(v0 + 16) = v27;
  swift_beginAccess();

  sub_100004894(v0 + 16, (v21 + 3));
  swift_endAccess();
  v20[3] = v26;
  v20[4] = &off_10004A2B8;
  *v20 = v27;

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_100030D60()
{
  v31 = v0;
  v1 = v0[24];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];

  EnrollmentAssetService.invalidate()();
  (*(v6 + 8))(v4, v5);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v11 = 136446466;
    v0[10] = v10;
    swift_getMetatypeMetadata();
    v14 = String.init<A>(describing:)();
    v16 = sub_10002EE20(v14, v15, &v30);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s Unable to determine if local data exists for enrollment, falling back to no saved setup: %{public}@", v11, 0x16u);
    sub_100007FE0(v12, &qword_100052D10, &unk_100034390);

    sub_1000042E4(v13);
  }

  else
  {
    v18 = v0[24];
  }

  v19 = v0[12];
  v20 = v0[13];
  v29 = v0[17];
  v21 = v20[8];
  v22 = v20[9];
  Strong = swift_unknownObjectWeakLoadStrong();
  v24 = v20[11];
  v25 = type metadata accessor for DeviceUnlockUIProvider();
  swift_allocObject();

  v26 = sub_10001E368(0xD000000000000019, 0x80000001000387C0, 0xD000000000000025, 0x80000001000387E0, v21, Strong, v24, 1);
  swift_unknownObjectRelease();

  v0[5] = v25;
  v0[6] = &off_10004A2B8;
  v0[2] = v26;
  swift_beginAccess();

  sub_100004894((v0 + 2), (v20 + 3));
  swift_endAccess();
  v19[3] = v25;
  v19[4] = &off_10004A2B8;
  *v19 = v26;

  v27 = v0[1];

  return v27();
}

uint64_t sub_10003107C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100004790;

  return sub_100030584(a1);
}

uint64_t sub_100031118()
{
  v1 = v0;
  if (qword_100052328 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003AFC(v2, qword_100055D08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FailureUIProvider is being deinitialized", v5, 2u);
  }

  v6 = *(v1 + 24);

  return v1;
}

uint64_t sub_100031208()
{
  sub_100031118();

  return _swift_deallocClassInstance(v0, 40, 7);
}

void sub_100031260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 24);

    sub_100008D5C();
  }

  else
  {
    if (qword_100052328 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003AFC(v6, qword_100055D08);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136446210;
      v14[4] = a3;
      swift_getMetatypeMetadata();
      v11 = String.init<A>(describing:)();
      v13 = sub_10002EE20(v11, v12, v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s was unexpectedly deallocated.", v9, 0xCu);
      sub_1000042E4(v10);
    }
  }
}

uint64_t sub_100031C44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031C7C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031CBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}