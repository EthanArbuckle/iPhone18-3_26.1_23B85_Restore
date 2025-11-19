uint64_t sub_1001A0148(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_1000D3B98(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = sub_100573F58();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = sub_100573F58();
LABEL_26:
        v18 = v17;
        v19 = sub_100573A58();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_100573A58();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_100574178();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_100574178();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1001A040C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_1001A9868(v31, v32);
    v25 = sub_1005727E8();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A0604(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_10019FBFC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 7)
  {
    if (v4 != 7)
    {
      return 0;
    }
  }

  else if (v4 == 7 || (sub_1001387A4(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_10019FE7C(v3, v5);
}

uint64_t ApplicationCapabilities.tabs.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

unint64_t sub_1001A0704()
{
  sub_100009DCC(&unk_1006EE290);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100582480;
  *(inited + 32) = 0x64656E6769537369;
  *(inited + 40) = 0xEA00000000006E49;
  *(inited + 48) = *v0;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001005AF890;
  *(inited + 96) = *(v0 + 1);
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000001005AF8B0;
  *(inited + 144) = *(v0 + 2);
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000018;
  *(inited + 184) = 0x80000001005AF8D0;
  sub_1001A0C00(v0, (inited + 192));
  *(inited + 224) = 0x536465776F6C6C61;
  *(inited + 232) = 0xEF73656369767265;
  sub_1001A9C40();
  *(inited + 240) = sub_100573108();
  *(inited + 248) = v2;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 0xD000000000000012;
  *(inited + 280) = 0x80000001005AF8F0;
  *(inited + 288) = sub_100573108();
  *(inited + 296) = v3;
  *(inited + 312) = &type metadata for String;
  strcpy((inited + 320), "ratingWarning");
  *(inited + 334) = -4864;
  *(inited + 336) = ApplicationCapabilities.RatingWarning.description.getter();
  *(inited + 344) = v4;
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0xD000000000000012;
  *(inited + 376) = 0x80000001005AF910;
  v31 = *(v0 + 88);
  v30 = v31;
  sub_10000CC8C(&v31, v29, &qword_1006E84B8);
  sub_100009DCC(&qword_1006E84B8);
  *(inited + 384) = sub_100572978();
  *(inited + 392) = v5;
  *(inited + 408) = &type metadata for String;
  *(inited + 416) = 0xD000000000000011;
  *(inited + 424) = 0x80000001005AF930;
  v6 = *(v0 + 96);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = 0xEA00000000007265;
      v7 = 0x6269726373627573;
    }

    else
    {
      v8 = 0xEF72656269726373;
      v7 = 0x6275536563696F76;
    }
  }

  else if (*(v0 + 96))
  {
    v8 = 0xE700000000000000;
    v7 = 0x63697373616C63;
  }

  else
  {
    v7 = 0x6564696365646E75;
    v8 = 0xE900000000000064;
  }

  *(inited + 432) = v7;
  *(inited + 440) = v8;
  *(inited + 456) = &type metadata for String;
  *(inited + 464) = 1935827316;
  *(inited + 472) = 0xE400000000000000;
  v9 = *(v0 + 104);
  v10 = *(v9 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v30 = _swiftEmptyArrayStorage;
    sub_1000CC614(0, v10, 0);
    v12 = (v9 + 32);
    v11 = v30;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v14 == 5;
      v16 = 0xE900000000000073;
      if (v14 == 5)
      {
        v17 = 0x736F65646976;
      }

      else
      {
        v17 = 0x7473696C79616C70;
      }

      if (v15)
      {
        v16 = 0xE600000000000000;
      }

      if (v13 == 3)
      {
        v18 = 0x6F69646172;
      }

      else
      {
        v18 = 0x686372616573;
      }

      if (v13 == 3)
      {
        v19 = 0xE500000000000000;
      }

      else
      {
        v19 = 0xE600000000000000;
      }

      if (v13 <= 4)
      {
        v17 = v18;
        v16 = v19;
      }

      v20 = 0xE900000000000077;
      if (v13 == 1)
      {
        v21 = 0x6F4E6E657473696CLL;
      }

      else
      {
        v21 = 0x6573776F7262;
      }

      if (v13 != 1)
      {
        v20 = 0xE600000000000000;
      }

      if (!v13)
      {
        v21 = 0x7972617262696CLL;
        v20 = 0xE700000000000000;
      }

      if (v13 <= 2)
      {
        v22 = v21;
      }

      else
      {
        v22 = v17;
      }

      if (v13 <= 2)
      {
        v23 = v20;
      }

      else
      {
        v23 = v16;
      }

      v30 = v11;
      v25 = v11[2];
      v24 = v11[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000CC614((v24 > 1), v25 + 1, 1);
        v11 = v30;
      }

      v11[2] = v25 + 1;
      v26 = &v11[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      --v10;
    }

    while (v10);
  }

  *(inited + 504) = sub_100009DCC(&unk_1006E84C0);
  *(inited + 480) = v11;
  v27 = sub_1000F3754(inited);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E6B38);
  swift_arrayDestroy();
  return v27;
}

void sub_1001A0C00(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0xE800000000000000;
      v4 = 0x64656C6261736964;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 0xE500000000000000;
      v4 = 0x6564696C67;
      goto LABEL_11;
    }

LABEL_8:
    v5 = a2;
    v6._countAndFlagsBits = sub_100574408();
    sub_100572A98(v6);

    v7._countAndFlagsBits = 62;
    v7._object = 0xE100000000000000;
    sub_100572A98(v7);
    a2 = v5;
    v4 = 0x3C6E776F6E6B6E75;
    v3 = 0xE800000000000000;
    goto LABEL_11;
  }

  if (!v2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v3 = 0xE700000000000000;
  v4 = 0x64656C62616E65;
LABEL_11:
  a2[3] = &type metadata for String;
  *a2 = v4;
  a2[1] = v3;
}

BOOL sub_1001A0D2C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14);
}

uint64_t sub_1001A0DA0()
{
  type metadata accessor for ApplicationCapabilities.Controller();
  swift_allocObject();
  result = sub_1001A0E3C();
  static ApplicationCapabilities.Controller.shared = result;
  return result;
}

uint64_t static ApplicationCapabilities.Controller.shared.getter()
{
  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1001A0E3C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) = 0;
  v2 = v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_stateHandler;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v0 + v3) = UnfairLock.init()();
  v4 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag;
  if (qword_1006E4E08 != -1)
  {
    swift_once();
  }

  sub_100009DCC(&qword_1006E8490);
  UnfairLock.locked<A>(_:)(sub_1001A9E38);
  *(v0 + v4) = *&v41[0];
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bagObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bindings) = _swiftEmptyArrayStorage;
  result = UIApp;
  if (UIApp)
  {
    *(v0 + 16) = [UIApp launchedToTest];
    type metadata accessor for MusicTabsDictionaryProvider();
    swift_allocObject();
    v6 = sub_1003510B8(0x626154636973756DLL, 0xE900000000000073, sub_1001A12C4, 0);
    *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider) = v6;

    UnfairLock.locked<A>(_:)(sub_1001A9E38);
    v7 = *(v0 + 16);

    sub_1001A855C(*&v41[0], v6, v7, v41);
    v8 = (v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
    v9 = v44;
    v10 = v45;
    v8[4] = v44;
    v8[5] = v10;
    v11 = v46;
    v12 = v47;
    v8[6] = v46;
    v8[7] = v12;
    v13 = v41[0];
    v14 = v41[1];
    *v8 = v41[0];
    v8[1] = v14;
    v15 = v42;
    v16 = v43;
    v8[2] = v42;
    v8[3] = v16;
    v39 = v11;
    v40 = v12;
    v37 = v9;
    v38 = v10;
    v35 = v15;
    v36 = v16;
    v33 = v13;
    v34 = v14;
    swift_beginAccess();
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    aBlock = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    sub_1001A9624(&v33, &v24);
    sub_10056E438();
    swift_endAccess();
    v17 = swift_allocObject();
    swift_weakInit();

    sub_100350F5C(sub_1001A9BD8, v17);

    UnfairLock.locked<A>(_:)(sub_1001A9E20);
    sub_1001A14B0();
    sub_1000D3B98(0, &qword_1006E84A0);
    v18 = sub_1005735E8();
    v19 = sub_100572898();
    v20 = swift_allocObject();
    swift_weakInit();

    *&v27 = sub_1001A9BE0;
    *(&v27 + 1) = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v26 = sub_1001A1D68;
    *(&v26 + 1) = &unk_10068F960;
    v21 = _Block_copy(&aBlock);

    v22 = MSVLogAddStateHandler();

    _Block_release(v21);

    v23 = v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_stateHandler;
    *v23 = v22;
    *(v23 + 8) = 0;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A12C4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1001A1314();

  return v1;
}

uint64_t sub_1001A1314()
{
  LOBYTE(v1) = 1;
  sub_1001A9814();
  sub_1000C5FB8();
  NSUserDefaults.subscript.getter(&v2);
  if (v3)
  {
    sub_100009DCC(&qword_1006E84E0);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10001036C(&v2, &qword_1006EA040);
    return 0;
  }
}

uint64_t sub_1001A141C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnfairLock.locked<A>(_:)(sub_1001A9E20);
  }

  return result;
}

uint64_t sub_1001A14B0()
{
  v1 = v0;
  type metadata accessor for Whitetail.Binding();
  v2 = ICUserIdentityStoreDidChangeNotification;
  v3 = objc_opt_self();
  v4 = v2;
  v5.length = [v3 defaultIdentityStore];
  v5.location = v4;
  v62 = &type metadata for NotificationTrigger;
  v63 = &protocol witness table for NotificationTrigger;
  v61 = CFRange.init(_:)(v5);
  v6 = swift_allocObject();
  v55 = v1;
  swift_weakInit();
  v60 = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v61, 1, sub_1001A9C94, v6);
  v7 = [objc_opt_self() sharedController];
  v8 = MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification;
  v9.location = MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification;
  v9.length = v7;
  v10 = CFRange.init(_:)(v9);
  v62 = &type metadata for NotificationTrigger;
  v63 = &protocol witness table for NotificationTrigger;
  v61 = v10;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = v8;
  v58 = v7;
  v59 = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v61, 1, sub_1001A9C9C, v11);
  v56 = [objc_opt_self() standardUserDefaults];
  sub_100009DCC(&unk_1006E84D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100582420;
  v14 = MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification;
  v15.location = MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification;
  v15.length = v56;
  v16 = CFRange.init(_:)(v15);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v16;
  v17 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
  v18 = CFRange.init(_:)(MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v18;
  v19 = RadioAvailabilityControllerRadioAvailableDidChangeNotification;
  v20 = CFRange.init(_:)(RadioAvailabilityControllerRadioAvailableDidChangeNotification);
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v20;
  v21 = MPCloudServiceStatusControllerSubscriptionAvailabilityDidChangeNotification;
  v22 = CFRange.init(_:)(MPCloudServiceStatusControllerSubscriptionAvailabilityDidChangeNotification);
  *(inited + 176) = &type metadata for NotificationTrigger;
  *(inited + 184) = &protocol witness table for NotificationTrigger;
  *(inited + 152) = v22;
  v23 = MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification;
  v24 = CFRange.init(_:)(MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification);
  *(inited + 216) = &type metadata for NotificationTrigger;
  *(inited + 224) = &protocol witness table for NotificationTrigger;
  *(inited + 192) = v24;
  v25 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v26 = v14;
  v57 = v56;
  v27 = v17;
  v28 = v19;
  v29 = v21;
  v30 = v23;

  v31 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_1001A9C9C, v25);

  sub_100009DCC(&qword_1006E8B80);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_100582490;
  *(v32 + 32) = v60;
  *(v32 + 40) = v59;
  *(v32 + 48) = v31;
  v33 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bindings;
  swift_beginAccess();

  sub_1000DA2DC(v32);
  swift_endAccess();
  sub_1001A97A4();
  v35 = UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(0xD000000000000014, 0x80000001005AF950, v34, &type metadata for NSUserDefaults.MobileiPod);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v62 = &type metadata for UserDefaultsKeyValueTrigger;
  v63 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v42 = swift_allocObject();
  v61.location = v42;
  v42[2] = v35;
  v42[3] = v37;
  v42[4] = v39;
  v42[5] = v41;
  v43 = swift_allocObject();
  swift_weakInit();
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v61, 1, sub_1001A9C9C, v43);
  swift_beginAccess();
  sub_100572CE8();
  if (*((*(v55 + v33) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v55 + v33) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
  swift_endAccess();
  v44 = [objc_allocWithZone(type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver()) init];
  v45 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver;
  v46 = *(v55 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver);
  *(v55 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver) = v44;

  if (*(v55 + v45))
  {
    swift_weakAssign();
  }

  if (qword_1006E4E08 != -1)
  {
    swift_once();
  }

  v47 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for BagProvider.Observer();
  v48 = swift_allocObject();
  swift_weakInit();
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  swift_weakAssign();
  v49 = *(v48 + 24);
  *(v48 + 24) = sub_1001A9D0C;
  *(v48 + 32) = v47;
  swift_retain_n();
  v50 = sub_1000F3E14(v49);
  v61.location = 0;
  __chkstk_darwin(v50);
  UnfairLock.locked<A>(_:)(sub_1001964CC);
  if (v61.location)
  {
    v51 = v61.location;
    sub_1001A41B4(v51);
  }

  else
  {
    sub_1001B1500(0);
  }

  *(v55 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bagObserver) = v48;

  v52 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for PrivacyAcknowledgementObserver();
  swift_allocObject();

  v53 = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_1001A9D14, v52);

  *(v55 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = v53;
}

uint64_t sub_1001A1C24(char a1, uint64_t (*a2)(uint64_t))
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v15[4] = v11;
    v15[5] = v12;
    v15[6] = v13;
    v15[7] = v14;
    v15[0] = v7;
    v15[1] = v8;
    v15[2] = v9;
    v15[3] = v10;
    v4 = sub_1001A0704();
    sub_100108D2C(v15);
    v5 = sub_1001FC8D4(v4);

    v6 = a2(v5);

    return v6;
  }

  return result;
}

uint64_t sub_1001A1D68(uint64_t a1, char a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  v7 = v4(a2 & 1, sub_1001A9C38, v6);

  return v7;
}

uint64_t sub_1001A1E08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = sub_100572688().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = (*(a2 + 16))(a2, v3.super.isa);

  return v4;
}

__n128 sub_1001A1E78@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1001A1F30(_OWORD *a1)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v3 = a1[7];
  v12[6] = a1[6];
  v12[7] = v3;
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[5];
  v11[12] = a1[4];
  v11[13] = v6;
  v7 = a1[7];
  v11[14] = a1[6];
  v11[15] = v7;
  v8 = a1[1];
  v11[8] = *a1;
  v11[9] = v8;
  v9 = a1[3];
  v11[10] = a1[2];
  v11[11] = v9;

  sub_1001A9624(v12, v11);
  return sub_10056E488();
}

uint64_t ApplicationCapabilities.Controller.$capabilities.getter()
{
  swift_beginAccess();
  sub_100009DCC(&qword_1006EB600);
  sub_10056E448();
  return swift_endAccess();
}

uint64_t sub_1001A206C()
{
  swift_beginAccess();
  sub_100009DCC(&qword_1006EB600);
  sub_10056E448();
  return swift_endAccess();
}

uint64_t sub_1001A20E4(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EB500);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100009DCC(&qword_1006EB600);
  sub_10056E458();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

Swift::Void __swiftcall ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()()
{
  v1 = v0;
  v2 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v2 - 8);
  v4 = &v7[-v3];
  v10 = 0;
  v8 = v0;
  v9 = &v10;
  UnfairLock.locked<A>(_:)(sub_1001A8F84);
  if (v10 == 1)
  {
    sub_100572F18();
    v5 = sub_100572F48();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v1;

    sub_1000D6938(0, 0, v4, &unk_10058A940, v6);

    sub_10001036C(v4, &qword_1006E6420);
  }
}

uint64_t sub_1001A2408()
{
  UnfairLock.locked<A>(_:)(sub_1001A9AC8);
  v1 = *(v0 + 8);

  return v1();
}

void sub_1001A24A0(uint64_t a1)
{
  v3 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v3 - 8);
  v5 = v44 - v4;
  v6 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if (*(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) == 1)
  {
    if (qword_1006E4D58 != -1)
    {
      swift_once();
    }

    v7 = sub_10056DF88();
    sub_10000C49C(v7, qword_1006E8208);
    v8 = sub_10056DF68();
    v9 = sub_100573448();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Needs Network Reachability Update", v10, 2u);
    }

    *(a1 + v6) = 0;
    v11 = [objc_opt_self() sharedCloudController];
    if (v11)
    {
      v12 = v11;
      if ([v11 shouldProhibitMusicActionForCurrentNetworkConditions])
      {
        LODWORD(v13) = 0;
      }

      else
      {
        LODWORD(v13) = [v12 hasProperNetworkConditionsToShowCloudMedia];
      }
    }

    else
    {
      LODWORD(v13) = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10056E478();

    v49[4] = v54;
    v49[5] = v55;
    v49[6] = v56;
    v49[7] = v57;
    v49[0] = v50;
    v49[1] = v51;
    v49[2] = v52;
    v49[3] = v53;
    sub_100108D2C(v49);
    v14 = BYTE1(v49[0]);
    v15 = sub_10056DF68();
    v16 = sub_100573448();
    v17 = os_log_type_enabled(v15, v16);
    if (v13 == v14)
    {
      if (v17)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Network Reachability status does not differ from currently known capabilities.", v43, 2u);
      }
    }

    else
    {
      v58 = v5;
      if (v17)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v44[1] = v1;
        v20 = v19;
        *&v50 = v19;
        *v18 = 136315138;
        if (v13)
        {
          v21 = 0x1000000000000012;
        }

        else
        {
          v21 = 0x1000000000000016;
        }

        v22 = v13;
        if (v13)
        {
          v13 = "Not Reachable 🔌👎";
        }

        else
        {
          v13 = "hangeNotification";
        }

        v23 = sub_1000C9784(v21, v13 | 0x8000000000000000, &v50);
        LOBYTE(v13) = v22;

        *(v18 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v15, v16, "Updating Network Reachability to: %s", v18, 0xCu);
        sub_100010474(v20);
      }

      v24 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v25 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
      v46[4] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
      v46[5] = v25;
      v26 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
      v46[6] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
      v46[7] = v26;
      v27 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
      v46[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v46[1] = v27;
      v28 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
      v46[2] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
      v46[3] = v28;
      *(&v47[4] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 66);
      *(&v47[5] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 82);
      *(&v47[6] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 98);
      v47[7] = v26;
      *(v47 + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 2);
      *(&v47[1] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 18);
      *(&v47[2] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 34);
      *(&v47[3] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 50);
      LOBYTE(v47[0]) = v46[0];
      BYTE1(v47[0]) = v13;
      v29 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
      v52 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
      v53 = v29;
      v30 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
      v50 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v51 = v30;
      v31 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
      v56 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
      v57 = v31;
      v32 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
      v54 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
      v55 = v32;
      v48[0] = v50;
      v48[1] = v30;
      v48[2] = v52;
      v48[3] = v29;
      v48[4] = v54;
      v48[5] = v32;
      v48[6] = v56;
      v48[7] = v31;
      v33 = v47[0];
      v34 = v47[1];
      v35 = v47[3];
      v24[2] = v47[2];
      v24[3] = v35;
      *v24 = v33;
      v24[1] = v34;
      v36 = v47[4];
      v37 = v47[5];
      v38 = v47[7];
      v24[6] = v47[6];
      v24[7] = v38;
      v24[4] = v36;
      v24[5] = v37;
      sub_1001A9624(v46, v45);
      sub_1001A9624(&v50, v45);
      sub_1001A9624(v47, v45);
      sub_100108D2C(v48);
      sub_1001A2BB8(&v50);
      sub_100108D2C(&v50);
      sub_100108D2C(v47);
      v39 = sub_100572F48();
      v40 = v58;
      (*(*(v39 - 8) + 56))(v58, 1, 1, v39);
      sub_100572F08();

      v41 = sub_100572EF8();
      v42 = swift_allocObject();
      v42[2] = v41;
      v42[3] = &protocol witness table for MainActor;
      v42[4] = a1;
      sub_1001B3FAC(0, 0, v40, &unk_10058ADF8, v42);
    }
  }
}

uint64_t sub_1001A29FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_100572F08();
  *(v4 + 24) = sub_100572EF8();
  v6 = sub_100572E78();

  return _swift_task_switch(sub_1001A2A94, v6, v5);
}

uint64_t sub_1001A2A94()
{

  v1 = [objc_opt_self() defaultCenter];
  if (qword_1006E4DB0 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange object:*(v0 + 16)];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor()
{
  if (qword_1006E4DB0 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange;
}

uint64_t sub_1001A2BB8(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v41 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v42 = v7;
  v8 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v43 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v44 = v8;
  v9 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v37 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v38 = v9;
  v10 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v39 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v36 = &_swiftEmptySetSingleton;
  v40 = v10;
  sub_1001A9624(&v37, &v34);
  if (qword_1006E4EA0 != -1)
  {
    swift_once();
  }

  if (static NSUserDefaults.mobileiPod)
  {
    sub_1001A97A4();
    sub_1000C5FB8();
    NSUserDefaults.subscript.getter(&v34);
    if (!v35)
    {
      sub_10001036C(&v34, &qword_1006EA040);
      goto LABEL_15;
    }

    if (swift_dynamicCast() & 1) != 0 && (v33)
    {
      if (v43 > 1u)
      {
        if (v43 == 2)
        {

LABEL_14:
          v35 = &type metadata for Bool;
          LOBYTE(v34) = 0;
          NSUserDefaults.subscript.setter(&v34, v11, &type metadata for NSUserDefaults.MobileiPod);
          goto LABEL_15;
        }

        v32 = v6;
      }

      else
      {
        v32 = v6;
      }

      v12 = sub_100574498();

      v6 = v32;
      if ((v12 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  if (_s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(&v37, a1))
  {
    goto LABEL_78;
  }

  if ((v37 ^ *a1))
  {
    if (qword_1006E4DA8 != -1)
    {
      swift_once();
    }

    sub_1002501BC(&v34, static ApplicationCapabilities.NotificationNames.activeAccountDidChange);
  }

  v13 = v39;
  v14 = sub_1001B4D1C(5, v39) & 1;
  v15 = *(a1 + 4);
  if (v14 != (sub_1001B4D1C(5, v15) & 1))
  {
    if (qword_1006E4D60 != -1)
    {
      swift_once();
    }

    sub_1002501BC(&v34, static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange);
  }

  v16 = sub_1001B4D1C(0, v13) & 1;
  if (v16 != (sub_1001B4D1C(0, v15) & 1))
  {
    if (qword_1006E4D68 != -1)
    {
      swift_once();
    }

    sub_1002501BC(&v34, static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange);
  }

  v17 = sub_1001B4D1C(3, v13) & 1;
  if (v17 != (sub_1001B4D1C(3, v15) & 1))
  {
    if (qword_1006E4D70 != -1)
    {
      swift_once();
    }

    sub_1002501BC(&v34, static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange);
  }

  v18 = sub_1001B4D1C(9, v13) & 1;
  if (v18 != (sub_1001B4D1C(9, v15) & 1))
  {
    if (qword_1006E4D90 != -1)
    {
      swift_once();
    }

    sub_1002501BC(&v34, static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange);
  }

  v19 = sub_1001B4D1C(4, v13) & 1;
  if (v19 != (sub_1001B4D1C(4, v15) & 1))
  {
    if (qword_1006E4D78 != -1)
    {
      swift_once();
    }

    sub_1002501BC(&v34, static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange);
  }

  v20 = sub_1001B4D1C(2, v13) & 1;
  if (v20 != (sub_1001B4D1C(2, v15) & 1))
  {
    if (qword_1006E4D80 != -1)
    {
      swift_once();
    }

    sub_1002501BC(&v34, static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange);
  }

  v21 = sub_1001B4D1C(10, v13) & 1;
  if (v21 != (sub_1001B4D1C(10, v15) & 1))
  {
    if (qword_1006E4D88 != -1)
    {
      swift_once();
    }

    sub_1002501BC(&v34, static ApplicationCapabilities.NotificationNames.mliEnabledDidChange);
  }

  if ((BYTE1(v37) ^ a1[1]))
  {
    if (qword_1006E4DB0 != -1)
    {
      swift_once();
    }

    sub_1002501BC(&v34, static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange);
  }

  if ((BYTE2(v37) ^ a1[2]))
  {
    if (qword_1006E4DC0 != -1)
    {
      swift_once();
    }

    sub_1002501BC(&v34, static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange);
  }

  if (v40 != *(a1 + 6))
  {
    if (qword_1006E4DB8 != -1)
    {
      swift_once();
    }

    sub_1002501BC(&v34, static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange);
  }

  if ((sub_1001387A0(v43, a1[96]) & 1) == 0)
  {
    if (qword_1006E4DA0 != -1)
    {
      swift_once();
    }

    sub_1002501BC(&v34, static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange);
  }

  v22 = v44;
  v23 = *(&v44 + 1);
  v24 = a1[112];
  v25 = *(a1 + 15);
  if ((sub_10019FBFC(*(&v43 + 1), *(a1 + 13)) & 1) == 0)
  {
    goto LABEL_71;
  }

  if (v22 == 7)
  {
    if (v24 != 7)
    {
      goto LABEL_71;
    }
  }

  else if (v24 == 7 || (sub_1001387A4(v22, v24) & 1) == 0)
  {
    goto LABEL_71;
  }

  if ((sub_10019FE7C(v23, v25) & 1) == 0)
  {
LABEL_71:
    if (qword_1006E4D98 != -1)
    {
      swift_once();
    }

    sub_1002501BC(&v34, static ApplicationCapabilities.NotificationNames.supportedTabsDidChange);
  }

  if (*(&v37 + 1) != *(a1 + 1))
  {
    if (qword_1006E4DC8 != -1)
    {
      swift_once();
    }

    sub_1002501BC(&v34, static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange);
  }

LABEL_78:
  if (_s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(&v37, a1))
  {
  }

  else
  {
    v26 = sub_100572F48();
    (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
    v27 = v36;
    sub_100572F08();
    sub_1001A9624(&v37, &v34);

    v28 = sub_100572EF8();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = &protocol witness table for MainActor;
    *(v29 + 32) = v2;
    *(v29 + 104) = v41;
    *(v29 + 120) = v42;
    *(v29 + 136) = v43;
    *(v29 + 152) = v44;
    *(v29 + 40) = v37;
    *(v29 + 56) = v38;
    *(v29 + 72) = v39;
    *(v29 + 88) = v40;
    *(v29 + 168) = v27;
    sub_1001B3FAC(0, 0, v6, &unk_10058ADC0, v29);
  }

  return sub_100108D2C(&v37);
}

uint64_t *ApplicationCapabilities.NotificationNames.activeAccountDidChange.unsafeMutableAddressor()
{
  if (qword_1006E4DA8 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.activeAccountDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange.unsafeMutableAddressor()
{
  if (qword_1006E4D60 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange.unsafeMutableAddressor()
{
  if (qword_1006E4D68 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange.unsafeMutableAddressor()
{
  if (qword_1006E4D70 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange.unsafeMutableAddressor()
{
  if (qword_1006E4D90 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange.unsafeMutableAddressor()
{
  if (qword_1006E4D78 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange.unsafeMutableAddressor()
{
  if (qword_1006E4D80 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.mliEnabledDidChange.unsafeMutableAddressor()
{
  if (qword_1006E4D88 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.mliEnabledDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange.unsafeMutableAddressor()
{
  if (qword_1006E4DC0 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange.unsafeMutableAddressor()
{
  if (qword_1006E4DB8 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange.unsafeMutableAddressor()
{
  if (qword_1006E4DA0 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.supportedTabsDidChange.unsafeMutableAddressor()
{
  if (qword_1006E4D98 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.supportedTabsDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange.unsafeMutableAddressor()
{
  if (qword_1006E4DC8 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange;
}

uint64_t sub_1001A3A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a5;
  v6[36] = a6;
  v6[34] = a4;
  sub_100572F08();
  v6[37] = sub_100572EF8();
  v8 = sub_100572E78();

  return _swift_task_switch(sub_1001A3AA0, v8, v7);
}

void sub_1001A3AA0()
{
  v35 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2[3];
  v5 = *v2;
  v4 = v2[1];
  *(v0 + 48) = v2[2];
  *(v0 + 64) = v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  v6 = v2[7];
  v8 = v2[4];
  v7 = v2[5];
  *(v0 + 112) = v2[6];
  *(v0 + 128) = v6;
  *(v0 + 80) = v8;
  *(v0 + 96) = v7;

  sub_1001A9624(v2, v0 + 144);
  sub_10056E488();
  v9 = v1 + 56;
  v10 = -1;
  v11 = -1 << *(v1 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v1 + 56);
  v13 = (63 - v11) >> 6;

  v14 = 0;
  v32 = v1;
  while (v12)
  {
LABEL_10:
    v18 = qword_1006E4D58;
    v19 = *(*(v1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_10056DF88();
    sub_10000C49C(v20, qword_1006E8208);
    v21 = v19;
    v22 = sub_10056DF68();
    v23 = sub_100573448();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v24 = 136446210;
      *(v0 + 16) = v21;
      type metadata accessor for Name(0);
      v25 = v21;
      v26 = sub_100572978();
      v28 = v13;
      v29 = v9;
      v30 = sub_1000C9784(v26, v27, &v34);

      *(v24 + 4) = v30;
      v9 = v29;
      v13 = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Notifying changes for '%{public}s'", v24, 0xCu);
      sub_100010474(v33);

      v1 = v32;
    }

    v12 &= v12 - 1;
    v15 = *(v0 + 272);
    v16 = [objc_opt_self() defaultCenter];
    [v16 postNotificationName:v21 object:v15];
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    if (v17 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v17);
    ++v14;
    if (v12)
    {
      v14 = v17;
      goto LABEL_10;
    }
  }

  v31 = *(v0 + 8);

  v31();
}

uint64_t sub_1001A3DCC(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  v3 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider);
  v4 = *(a1 + 16);
  v5 = v2;

  sub_1001A855C(v2, v3, v4, v17);
  v6 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v7 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v21 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v22 = v7;
  v8 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v23 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v24 = v8;
  v9 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v18[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v18[1] = v9;
  v10 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v19 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v20 = v10;
  v25[6] = v23;
  v25[7] = v8;
  v25[4] = v21;
  v25[5] = v7;
  v25[2] = v19;
  v25[3] = v10;
  v25[0] = v18[0];
  v25[1] = v9;
  v11 = v17[1];
  *v6 = v17[0];
  v6[1] = v11;
  v12 = v17[7];
  v6[6] = v17[6];
  v6[7] = v12;
  v13 = v17[5];
  v6[4] = v17[4];
  v6[5] = v13;
  v14 = v17[3];
  v6[2] = v17[2];
  v6[3] = v14;
  sub_1001A9624(v18, v16);
  sub_1001A9624(v17, v16);
  sub_100108D2C(v25);
  sub_1001A2BB8(v18);
  sub_100108D2C(v18);
  return sub_100108D2C(v17);
}

uint64_t sub_1001A3EDC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = [objc_opt_self() defaultIdentityStore];
    v2 = sub_1001A4020();
    v4 = v3;

    v5 = [objc_opt_self() standardUserDefaults];
    if (v4)
    {
      v2 = 0;
      v6 = 0;
      v8[1] = 0;
      v8[2] = 0;
    }

    else
    {
      v6 = &type metadata for UInt64;
    }

    v8[0] = v2;
    v8[3] = v6;
    v7 = 2;
    sub_1001A9814();
    sub_1000C5FB8();
    NSUserDefaults.subscript.setter(v8, &v7, &_s3KeyON);

    UnfairLock.locked<A>(_:)(sub_1001A9E20);
  }

  return result;
}

id sub_1001A4020()
{
  v1 = [objc_opt_self() activeAccount];
  v7 = 0;
  v2 = [v0 DSIDForUserIdentity:v1 outError:&v7];

  v3 = v7;
  if (v2)
  {
    v7 = 0;
    v8 = 1;
    v4 = v3;
    sub_1005746F8();

    return v7;
  }

  else
  {
    v6 = v7;
    sub_10056C728();

    swift_willThrow();

    return 0;
  }
}

uint64_t sub_1001A412C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnfairLock.locked<A>(_:)(a2);
  }

  return result;
}

void sub_1001A41B4(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);

    UnfairLock.locked<A>(_:)(sub_1001A9D1C);

    UnfairLock.locked<A>(_:)(sub_1001A9E20);
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = sub_100572898();
    v5 = [a1 dictionaryForBagKey:v4];

    if (v5 && (v6 = sub_1005726A8(), v5, v7 = sub_100350A3C(v6), , v7))
    {
      *(&v10 + 1) = sub_100009DCC(&qword_1006E84E0);
      *&v9 = v7;
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v8 = 1;
    sub_1001A9814();
    sub_1000C5FB8();
    NSUserDefaults.subscript.setter(&v9, &v8, &_s3KeyON);
  }
}

uint64_t sub_1001A43C8(char a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (swift_getKeyPath(), swift_getKeyPath(), sub_10056E478(), , , , v17 = v9, v18 = v10, v19 = v11, v20 = v12, v13 = v5, v14 = v6, v15 = v7, v16 = v8, result = sub_100108D2C(&v13), BYTE8(v14) == (a1 & 1)))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v3 = sub_10056E468();
      *(v4 + 24) = (a1 & 1) == 0;
      v3(&v13, 0);
    }
  }

  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = 0;
    }
  }

  return result;
}

uint64_t ApplicationCapabilities.Controller.updated()(uint64_t a1)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = v1;
  return _swift_task_switch(sub_1001A45AC, 0, 0);
}

uint64_t sub_1001A45AC()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_1001A4684;
  v2 = *(v0 + 280);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 144, 0, 0, 0x2864657461647075, 0xE900000000000029, sub_1001A9064, v2, &type metadata for ApplicationCapabilities);
}

uint64_t sub_1001A4684()
{

  return _swift_task_switch(sub_1001A4780, 0, 0);
}

uint64_t sub_1001A4780()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 144);
  v3 = *(v0 + 160);
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  v4 = *(v0 + 176);
  v5 = *(v0 + 192);
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  v7 = *(v0 + 240);
  v6 = *(v0 + 256);
  *(v0 + 112) = v7;
  *(v0 + 128) = v6;
  v9 = *(v0 + 208);
  v8 = *(v0 + 224);
  *(v0 + 80) = v9;
  *(v0 + 96) = v8;
  v1[6] = v7;
  v1[7] = v6;
  v1[4] = v9;
  v1[5] = v8;
  v1[2] = v4;
  v1[3] = v5;
  *v1 = v2;
  v1[1] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1001A47C8(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E8488);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  if (qword_1006E4E08 != -1)
  {
    swift_once();
  }

  v9 = static BagProvider.shared;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = *(v3 + 16);
  v11(v8, a1, v2);
  v11(v6, v8, v2);
  v12 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  (*(v3 + 32))(v13 + v12, v8, v2);
  v14 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;

  sub_100009DCC(&qword_1006E8490);
  UnfairLock.locked<A>(_:)(sub_1000C5F9C);
  v15 = v24;
  if (v24)
  {
    sub_1001A4B78(v24);
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v16 = swift_allocObject();
    v23[1] = v14;
    v17 = v16;
    swift_weakInit();
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    swift_weakAssign();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = sub_1001A99B8;
    v19[3] = v13;
    v19[4] = v18;
    v19[5] = v17;
    v23[0] = 0;
    v20 = *(v17 + 24);
    *(v17 + 24) = sub_1001A9A80;
    *(v17 + 32) = v19;

    sub_1000F3E14(v20);

    __chkstk_darwin(v21);
    v23[-2] = v9;
    v23[-1] = v17;
    UnfairLock.locked<A>(_:)(sub_1001A9A8C);
    sub_1001B1500(0);
  }

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_1001A4B78(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider);
    v4 = *(result + 16);
    a1;

    v5 = sub_1001A855C(a1, v3, v4, v6);
    __chkstk_darwin(v5);

    UnfairLock.locked<A>(_:)(sub_1001A9AA8);

    sub_100009DCC(&qword_1006E8488);
    sub_100572E98();
  }

  return result;
}

uint64_t sub_1001A4CEC(uint64_t a1, void *a2, _OWORD *a3)
{
  v6 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag) = a2;

  v7 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v8 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v22 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v23 = v8;
  v9 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v24 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v25 = v9;
  v10 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v19[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v19[1] = v10;
  v11 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v20 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v21 = v11;
  v26[6] = v24;
  v26[7] = v9;
  v26[4] = v22;
  v26[5] = v8;
  v26[2] = v20;
  v26[3] = v11;
  v26[0] = v19[0];
  v26[1] = v10;
  v12 = a3[1];
  *v7 = *a3;
  v7[1] = v12;
  v13 = a3[7];
  v7[6] = a3[6];
  v7[7] = v13;
  v14 = a3[5];
  v7[4] = a3[4];
  v7[5] = v14;
  v15 = a3[3];
  v7[2] = a3[2];
  v7[3] = v15;
  v16 = a2;
  sub_1001A9624(v19, v18);
  sub_1001A9624(a3, v18);
  sub_100108D2C(v26);
  sub_1001A2BB8(v19);
  return sub_100108D2C(v19);
}

uint64_t ApplicationCapabilities.Controller.deinit()
{
  v1 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller__capabilities;
  v2 = sub_100009DCC(&qword_1006EB600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v8[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v8[6] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v8[7] = v4;
  v5 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v8[1] = v5;
  v6 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v8[3] = v6;
  sub_100108D2C(v8);

  return v0;
}

uint64_t ApplicationCapabilities.Controller.__deallocating_deinit()
{
  ApplicationCapabilities.Controller.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A4F48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056E408();
  *a1 = result;
  return result;
}

Swift::Bool __swiftcall ApplicationCapabilities.Tabs.shouldShowLoadingUpsellBanner(for:)(MusicCore::TabIdentifier a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 33);
  v4 = a1;
  while (1)
  {
    v5 = *(v3 - 1);
    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v11 = 0xE500000000000000;
        v10 = 0x6F69646172;
      }

      else
      {
        if (v5 == 5)
        {
          v10 = 0x686372616573;
        }

        else
        {
          v10 = 0x736F65646976;
        }

        v11 = 0xE600000000000000;
      }
    }

    else
    {
      v6 = v5 - 1;
      v7 = v5 == 0;
      if (*(v3 - 1))
      {
        v8 = 0x6573776F7262;
      }

      else
      {
        v8 = 0x7972617262696CLL;
      }

      if (v7)
      {
        v9 = 0xE700000000000000;
      }

      else
      {
        v9 = 0xE600000000000000;
      }

      if (v6 >= 2)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x6F4E6E657473696CLL;
      }

      if (v6 >= 2)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE900000000000077;
      }
    }

    v22 = *v3;
    v12 = 0x736F65646976;
    if (v4 != 5)
    {
      v12 = 0x7473696C79616C70;
    }

    v13 = 0xE900000000000073;
    if (v4 == 5)
    {
      v13 = 0xE600000000000000;
    }

    v14 = 0x686372616573;
    if (v4 == 3)
    {
      v14 = 0x6F69646172;
    }

    v15 = 0xE500000000000000;
    if (v4 != 3)
    {
      v15 = 0xE600000000000000;
    }

    if (v4 <= 4)
    {
      v12 = v14;
      v13 = v15;
    }

    if (v4 == 1)
    {
      v16 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v16 = 0x6573776F7262;
    }

    if (v4 == 1)
    {
      v17 = 0xE900000000000077;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    if (!v4)
    {
      v16 = 0x7972617262696CLL;
      v17 = 0xE700000000000000;
    }

    v18 = v4 <= 2 ? v16 : v12;
    v19 = v4 <= 2 ? v17 : v13;
    if (v10 == v18 && v11 == v19)
    {
      break;
    }

    v20 = sub_100574498();

    if (v20)
    {
      return v22;
    }

    v3 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return v22;
}

BOOL sub_1001A5194(_BOOL8 a1, void *a2)
{
  v4 = sub_100009DCC(&qword_1006E5D10);
  __chkstk_darwin(v4 - 8);
  v6 = &v10[-v5];
  if (qword_1006E4EA0 != -1)
  {
    swift_once();
  }

  if (!static NSUserDefaults.mobileiPod)
  {
    goto LABEL_10;
  }

  sub_1001A97A4();
  sub_1000C5FB8();
  NSUserDefaults.subscript.getter(&v11);
  if (!v12)
  {
    sub_10001036C(&v11, &qword_1006EA040);
LABEL_10:
    a1 = 1;
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0 || v10[15] != 1)
  {
    goto LABEL_10;
  }

  if (a1)
  {
    a1 = [a1 statusType] == 1;
  }

LABEL_11:
  v7 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.applicationScriptURL.getter(v6);

  v8 = sub_10056C8A8();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_10001036C(v6, &qword_1006E5D10);
  if (v7 == 1 && [a2 hasLoadedSubscriptionAvailability])
  {
    return [a2 isSubscriptionAvailable] & a1;
  }

  return a1;
}

uint64_t sub_1001A53B4(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    sub_1005728D8();
    v4 = sub_100572898();

    LODWORD(v3) = [v3 effectiveBoolValueForSetting:v4];

    v5 = v3 != 2;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if (qword_1006E4D48 != -1)
  {
    swift_once();
  }

  v6 = sub_100572898();
  v7 = [a2 dictionaryForBagKey:v6];

  if (v7)
  {

    sub_1000D3B98(0, &qword_1006E8458);
    v8 = static ICUserIdentityStore.activeAccountDSID.getter();
    if (v8)
    {

      if (v5)
      {
        return 1;
      }
    }
  }

LABEL_11:
  if (qword_1006E5608 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 0;
  }

  v10 = [objc_opt_self() standardUserDefaults];
  sub_1001A9814();
  sub_1000C5FB8();
  NSUserDefaults.subscript.getter(&v11);

  if (!v12)
  {
    sub_10001036C(&v11, &qword_1006EA040);
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return 3;
  }

  return result;
}

uint64_t sub_1001A55D8()
{
  v1 = sub_100572898();
  v2 = [v0 dictionaryForBagKey:v1];

  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = sub_1005726A8();

  if (!v3)
  {
    goto LABEL_15;
  }

  sub_100573E78();
  if (!*(v3 + 16) || (v4 = sub_1000EB93C(v10), (v5 & 1) == 0))
  {

    sub_1000F4130(v10);
LABEL_15:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_16;
  }

  sub_100081F38(*(v3 + 56) + 32 * v4, &v11);
  sub_1000F4130(v10);

  if (!*(&v12 + 1))
  {
LABEL_16:
    sub_10001036C(&v11, &qword_1006EA040);
LABEL_17:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_18;
  }

  sub_100009DCC(&qword_1006E7DF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = *v10;
  if (!*v10)
  {
    goto LABEL_17;
  }

  sub_100573E78();
  if (!*(v6 + 16) || (v7 = sub_1000EB93C(v10), (v8 & 1) == 0))
  {

    sub_1000F4130(v10);
    goto LABEL_17;
  }

  sub_100081F38(*(v6 + 56) + 32 * v7, &v11);
  sub_1000F4130(v10);

  if (!*(&v12 + 1))
  {
LABEL_18:
    sub_10001036C(&v11, &qword_1006EA040);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v10[0];
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1001A582C()
{
  v1 = sub_100572898();
  v2 = [v0 dictionaryForBagKey:v1];

  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = sub_1005726A8();

  if (!v3)
  {
    goto LABEL_14;
  }

  sub_100573E78();
  if (!*(v3 + 16) || (v4 = sub_1000EB93C(&v10), (v5 & 1) == 0))
  {

    sub_1000F4130(&v10);
LABEL_14:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_15;
  }

  sub_100081F38(*(v3 + 56) + 32 * v4, &v11);
  sub_1000F4130(&v10);

  if (!*(&v12 + 1))
  {
LABEL_15:
    sub_10001036C(&v11, &qword_1006EA040);
LABEL_16:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_17;
  }

  sub_100009DCC(&qword_1006E7DF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = v10;
  if (!v10)
  {
    goto LABEL_16;
  }

  sub_100573E78();
  if (!*(v6 + 16) || (v7 = sub_1000EB93C(&v10), (v8 & 1) == 0))
  {

    sub_1000F4130(&v10);
    goto LABEL_16;
  }

  sub_100081F38(*(v6 + 56) + 32 * v7, &v11);
  sub_1000F4130(&v10);

  if (!*(&v12 + 1))
  {
LABEL_17:
    sub_10001036C(&v11, &qword_1006EA040);
    return 0;
  }

  if (swift_dynamicCast())
  {

    return 1;
  }

  return 0;
}

uint64_t sub_1001A5A7C()
{
  result = sub_1005728D8();
  qword_1006E81F0 = result;
  *algn_1006E81F8 = v1;
  return result;
}

uint64_t sub_1001A5AAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v5 = *a1;
  sub_100573E78();
  if (!*(v5 + 16) || (v6 = sub_1000EB93C(v28), (v7 & 1) == 0))
  {
    result = sub_1000F4130(v28);
LABEL_10:
    *a3 = 512;
    return result;
  }

  sub_100081F38(*(v5 + 56) + 32 * v6, v29);
  sub_1000F4130(v28);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  result = sub_1001B3D74(25705, 0xE200000000000000);
  v31 = result;
  if (result == 7)
  {
    goto LABEL_10;
  }

  sub_100573E78();
  if (*(v5 + 16) && (v9 = sub_1000EB93C(v28), (v10 & 1) != 0))
  {
    sub_100081F38(*(v5 + 56) + 32 * v9, v29);
    sub_1000F4130(v28);
    result = swift_dynamicCast();
    if (result)
    {
      v30 = 18;
LABEL_65:
      if (v30)
      {
        v27 = 256;
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_68;
    }
  }

  else
  {
    result = sub_1000F4130(v28);
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (a2 + 33);
    while (1)
    {
      v13 = *(v12 - 1);
      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v16 = 0x756F795F726F66;
        }

        else
        {
          v16 = 0x6E5F6E657473696CLL;
        }

        if (v13 == 1)
        {
          v17 = 0xE700000000000000;
        }

        else
        {
          v17 = 0xEA0000000000776FLL;
        }

        if (*(v12 - 1))
        {
          v14 = v16;
        }

        else
        {
          v14 = 0x636973756D5F796DLL;
        }

        if (*(v12 - 1))
        {
          v15 = v17;
        }

        else
        {
          v15 = 0xE800000000000000;
        }
      }

      else if (*(v12 - 1) > 4u)
      {
        if (v13 == 5)
        {
          v15 = 0xE600000000000000;
          v14 = 0x686372616573;
        }

        else
        {
          v15 = 0xE500000000000000;
          v14 = 0x6F65646976;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = 0x6573776F7262;
        }

        else
        {
          v14 = 0x6F69646172;
        }

        if (v13 == 3)
        {
          v15 = 0xE600000000000000;
        }

        else
        {
          v15 = 0xE500000000000000;
        }
      }

      v30 = *v12;
      v18 = 0x686372616573;
      if (v31 == 5)
      {
        v19 = 0xE600000000000000;
      }

      else
      {
        v18 = 0x6F65646976;
        v19 = 0xE500000000000000;
      }

      v20 = 0x6573776F7262;
      if (v31 == 3)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v20 = 0x6F69646172;
        v21 = 0xE500000000000000;
      }

      if (v31 <= 4u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (v31 == 1)
      {
        v22 = 0x756F795F726F66;
      }

      else
      {
        v22 = 0x6E5F6E657473696CLL;
      }

      if (v31 == 1)
      {
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xEA0000000000776FLL;
      }

      if (!v31)
      {
        v22 = 0x636973756D5F796DLL;
        v23 = 0xE800000000000000;
      }

      v24 = v31 <= 2u ? v22 : v18;
      v25 = v31 <= 2u ? v23 : v19;
      if (v14 == v24 && v15 == v25)
      {
        break;
      }

      v26 = sub_100574498();

      if (v26)
      {
        goto LABEL_65;
      }

      v12 += 2;
      if (!--v11)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_65;
  }

LABEL_63:
  v27 = 0;
LABEL_68:
  *a3 = v27 | v31;
  return result;
}

id sub_1001A5F08()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    [result unregisterObserver:v0];

    v3.receiver = v0;
    v3.super_class = type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver();
    return objc_msgSendSuper2(&v3, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001A6074(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (swift_weakLoadStrong())
  {
    v7 = a1;
    UnfairLock.locked<A>(_:)(a5);
  }
}

id sub_1001A6120()
{
  result = [objc_allocWithZone(RadioAvailabilityController) init];
  qword_1006E8200 = result;
  return result;
}

Swift::Int sub_1001A6160()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_1001A621C()
{
  sub_1005729F8();
}

Swift::Int sub_1001A62C4()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_1001A637C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001A9DC4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1001A63AC(unint64_t *a1@<X8>)
{
  v2 = "gMusicTabsDictionary";
  v3 = 0xD000000000000025;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000014;
    v2 = "countUniqueIdentifier";
  }

  v4 = 0xD000000000000024;
  if (*v1)
  {
    v5 = "UserRequestedSubscriptionHidden";
  }

  else
  {
    v4 = 0xD00000000000001FLL;
    v5 = "sharePlayTogether";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_1001A6428()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E8208);
  sub_10000C49C(v0, qword_1006E8208);
  return sub_10056DF78();
}

NSString sub_1001A64AC()
{
  result = sub_100572898();
  static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange = result;
  return result;
}

NSString sub_1001A6508()
{
  result = sub_100572898();
  static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange = result;
  return result;
}

NSString sub_1001A6564()
{
  result = sub_100572898();
  static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange = result;
  return result;
}

NSString sub_1001A65C0()
{
  result = sub_100572898();
  static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange = result;
  return result;
}

NSString sub_1001A661C()
{
  result = sub_100572898();
  static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange = result;
  return result;
}

NSString sub_1001A6678()
{
  result = sub_100572898();
  static ApplicationCapabilities.NotificationNames.mliEnabledDidChange = result;
  return result;
}

NSString sub_1001A66D4()
{
  result = sub_100572898();
  static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange = result;
  return result;
}

NSString sub_1001A6730()
{
  result = sub_100572898();
  static ApplicationCapabilities.NotificationNames.supportedTabsDidChange = result;
  return result;
}

NSString sub_1001A678C()
{
  result = sub_100572898();
  static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange = result;
  return result;
}

NSString sub_1001A67E8()
{
  result = sub_100572898();
  static ApplicationCapabilities.NotificationNames.activeAccountDidChange = result;
  return result;
}

NSString sub_1001A6844()
{
  result = sub_100572898();
  static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange = result;
  return result;
}

NSString sub_1001A68A0()
{
  result = sub_100572898();
  static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange = result;
  return result;
}

NSString sub_1001A68FC()
{
  result = sub_100572898();
  static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange = result;
  return result;
}

NSString sub_1001A6958()
{
  result = sub_100572898();
  static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange = result;
  return result;
}

id sub_1001A69B4(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t _s9MusicCore23ApplicationCapabilitiesV13RatingWarningV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a2[2];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_100574498();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a2[4];
  if (v9)
  {
    if (v10 && (a1[3] == a2[3] && v9 == v10 || (sub_100574498() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

BOOL _s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || ((a1[24] ^ a2[24]))
  {
    return 0;
  }

  if ((sub_100249044(*(a1 + 4), *(a2 + 4)) & 1) == 0 || (sub_100249044(*(a1 + 5), *(a2 + 5)) & 1) == 0 || *(a1 + 6) != *(a2 + 6))
  {
    return 0;
  }

  v5 = a1;
  v6 = a2;
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = *(a1 + 10);
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  v12 = *(a2 + 10);
  if (v7)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 7) != *(a2 + 7) || v7 != v10)
    {
      v13 = sub_100574498();
      v6 = a2;
      v5 = a1;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v9)
  {
    if (!v12)
    {
      return 0;
    }

    if (v8 != v11 || v9 != v12)
    {
      v14 = sub_100574498();
      v6 = a2;
      v5 = a1;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v15 = *(v5 + 11);
  v16 = *(v6 + 11);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    sub_1000D3B98(0, &qword_1006E8498);
    v17 = v16;
    v18 = v15;
    v19 = sub_100573A58();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if ((sub_1001387A0(a1[96], a2[96]) & 1) == 0)
  {
    return 0;
  }

  v20 = a1[112];
  v21 = *(a1 + 15);
  v22 = a2[112];
  v23 = *(a2 + 15);
  if ((sub_10019FBFC(*(a1 + 13), *(a2 + 13)) & 1) == 0)
  {
    return 0;
  }

  if (v20 == 7)
  {
    if (v22 != 7)
    {
      return 0;
    }
  }

  else if (v22 == 7 || (sub_1001387A4(v20, v22) & 1) == 0)
  {
    return 0;
  }

  return (sub_10019FE7C(v21, v23) & 1) != 0;
}

uint64_t sub_1001A6D18(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = 0;
  v34 = result + 32;
  v4 = _swiftEmptyArrayStorage;
  v31 = *(result + 16);
LABEL_3:
  v33 = v4;
  while (v3 < v2)
  {
    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_63;
    }

    v6 = (v34 + 2 * v3);
    v7 = v6[1];
    ++v3;
    v8 = *v6;
    if (v8 == 2)
    {
      v21 = *(a2 + 32);
      if (!*(v21 + 16))
      {
        goto LABEL_6;
      }

      v32 = v6[1];
      sub_100574678();

      sub_1005729F8();
      v22 = sub_1005746C8();
      v23 = -1 << *(v21 + 32);
      v24 = v22 & ~v23;
      if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = *(*(v21 + 48) + v24);
          if (v26 <= 4)
          {
            if (v26 == 2)
            {
              goto LABEL_57;
            }
          }

          else if (*(*(v21 + 48) + v24) > 7u && v26 == 8 && 0x80000001005ABE30 == 0x80000001005ABE70)
          {
LABEL_57:

LABEL_49:

            LOBYTE(v8) = 2;
LABEL_50:
            v2 = v31;
            v4 = v33;
            v7 = v32;
LABEL_51:
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1000CC5F4(0, v4[2] + 1, 1);
            }

            v29 = v4[2];
            v28 = v4[3];
            if (v29 >= v28 >> 1)
            {
              result = sub_1000CC5F4((v28 > 1), v29 + 1, 1);
            }

            v4[2] = v29 + 1;
            v30 = v4 + 2 * v29;
            v30[32] = v8;
            v30[33] = v7;
            if (v5 == v2)
            {
              return v4;
            }

            goto LABEL_3;
          }

          v27 = sub_100574498();

          if (v27)
          {
            goto LABEL_49;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }
    }

    else
    {
      if (v8 == 6)
      {
        v15 = *(a2 + 32);
        if (!*(v15 + 16))
        {
          goto LABEL_6;
        }

        v32 = v6[1];
        sub_100574678();

        sub_1005729F8();
        v16 = sub_1005746C8();
        v17 = -1 << *(v15 + 32);
        v18 = v16 & ~v17;
        if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (*(*(v15 + 48) + v18) > 2u || !*(*(v15 + 48) + v18) || *(*(v15 + 48) + v18) == 2)
          {
            v20 = sub_100574498();

            if (v20)
            {
              goto LABEL_48;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_48:

          LOBYTE(v8) = 6;
          goto LABEL_50;
        }
      }

      else
      {
        if (v8 != 4)
        {
          goto LABEL_51;
        }

        v9 = *(a2 + 32);
        if (!*(v9 + 16))
        {
          goto LABEL_6;
        }

        v32 = v6[1];
        sub_100574678();

        sub_1005729F8();
        v10 = sub_1005746C8();
        v11 = -1 << *(v9 + 32);
        v12 = v10 & ~v11;
        if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (*(*(v9 + 48) + v12) > 5u || *(*(v9 + 48) + v12) < 4u || *(*(v9 + 48) + v12) == 5)
          {
            v14 = sub_100574498();

            if (v14)
            {
              goto LABEL_47;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_47:

          LOBYTE(v8) = 4;
          goto LABEL_50;
        }
      }

LABEL_4:
      v2 = v31;
    }

    v4 = v33;
LABEL_6:
    if (v5 == v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

void sub_1001A7538(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = sub_100572898();
    v5 = [v3 numberForBagKey:v4];

    if (v5)
    {
      sub_100573188();
    }

    v10 = v3;
    v11 = sub_100572898();
    v12 = [v10 stringForBagKey:v11];

    if (v12)
    {
      v8 = sub_1005728D8();
      v9 = v13;
    }

    else
    {

      v8 = 0;
      v9 = 0;
    }

    v14 = v10;
    v15 = sub_100572898();
    v16 = [v14 stringForBagKey:v15];

    if (v16)
    {
      v6 = sub_1005728D8();
      v7 = v17;
    }

    else
    {

      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a2 = 0x7FFFFFFFFFFFFFFFLL;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v6;
  a2[4] = v7;
}

char *sub_1001A7724(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *v2;
      v2 += 2;
      v4 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1000CF6BC(0, *(v3 + 2) + 1, 1, v3);
      }

      v7 = *(v3 + 2);
      v6 = *(v3 + 3);
      if (v7 >= v6 >> 1)
      {
        v3 = sub_1000CF6BC((v6 > 1), v7 + 1, 1, v3);
      }

      *(v3 + 2) = v7 + 1;
      v3[v7 + 32] = 0x5040302010100uLL >> (8 * v4);
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v29 = v3;
  if (qword_1006E4EA0 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    if (!static NSUserDefaults.mobileiPod)
    {
      goto LABEL_16;
    }

    sub_1001A97A4();
    sub_1000C5FB8();
    NSUserDefaults.subscript.getter(&v27);
    if (!v28)
    {
      sub_10001036C(&v27, &qword_1006EA040);
LABEL_16:
      v8 = 1;
      goto LABEL_17;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    v8 = v26 ^ 1;
LABEL_17:
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 != 1 || (v11 = *(v3 + 2)) == 0)
    {
LABEL_28:
      v14 = *(v3 + 2);
      if (!v14)
      {
        return v3;
      }

      goto LABEL_29;
    }

    v12 = 0;
    while (1)
    {
      if (v12 >= *(v3 + 2))
      {
        goto LABEL_57;
      }

      if (v3[v12 + 32] > 2u && v3[v12 + 32] <= 4u && v3[v12 + 32] != 3)
      {
        break;
      }

      v13 = sub_100574498();

      if (v13)
      {
        goto LABEL_51;
      }

      if (v11 == ++v12)
      {
        goto LABEL_28;
      }
    }

LABEL_51:
    v22 = sub_1000E9E78(v12);
    v3 = v29;
    v23 = *(v29 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v23 >= *(v3 + 3) >> 1)
    {
      v3 = sub_1000CF6BC(isUniquelyReferenced_nonNull_native, v23 + 1, 1, v3);
      v29 = v3;
    }

    sub_1001E99B0(0, 0, 1, v22);
    v14 = *(v3 + 2);
    if (!v14)
    {
      return v3;
    }

LABEL_29:
    v15 = (v8 & 1) == 0;
    if (v8)
    {
      v16 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v16 = 0x7972617262696CLL;
    }

    if (v15)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE900000000000077;
    }

    v18 = 0;
    while (v18 < *(v3 + 2))
    {
      v19 = v3[v18 + 32];
      if (v19 > 2)
      {
        goto LABEL_38;
      }

      if (v3[v18 + 32])
      {
        if (v19 != 1)
        {
          goto LABEL_38;
        }

        v21 = 0xE900000000000077;
        if (v16 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v21 = 0xE700000000000000;
        if (v16 != 0x7972617262696CLL)
        {
          goto LABEL_38;
        }
      }

      if (v21 == v17)
      {

LABEL_40:

        return v3;
      }

LABEL_38:
      v20 = sub_100574498();

      if ((v20 & 1) == 0 && v14 != ++v18)
      {
        continue;
      }

      goto LABEL_40;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }
}

uint64_t sub_1001A7C78(uint64_t a1, uint64_t a2)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return 1;
  }

  v3 = 0;
  v29 = a1 + 32;
  v4 = a2 + 56;
  while (*(a2 + 16))
  {
    v5 = *(v29 + v3);
    sub_100574678();
    ApplicationCapabilities.Service.description.getter(v5);
    sub_1005729F8();

    v6 = sub_1005746C8();
    v7 = -1 << *(a2 + 32);
    v8 = v6 & ~v7;
    if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      break;
    }

    v30 = v3 + 1;
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8);
      if (v10 <= 4)
      {
        v13 = 0x6C6169636F73;
        if (v10 != 3)
        {
          v13 = 0x6F69646172;
        }

        v14 = 0xE600000000000000;
        if (v10 != 3)
        {
          v14 = 0xE500000000000000;
        }

        if (v10 == 2)
        {
          v13 = 0xD000000000000013;
          v14 = 0x80000001005ABE30;
        }

        v15 = 0x646956636973756DLL;
        if (!*(*(a2 + 48) + v8))
        {
          v15 = 0x636973756DLL;
        }

        v16 = 0xEB00000000736F65;
        if (!*(*(a2 + 48) + v8))
        {
          v16 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v11 = v15;
        }

        else
        {
          v11 = v13;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v12 = v16;
        }

        else
        {
          v12 = v14;
        }
      }

      else if (*(*(a2 + 48) + v8) > 7u)
      {
        if (v10 == 8)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001005ABE70;
        }

        else if (v10 == 9)
        {
          v11 = 0xD000000000000011;
          v12 = 0x80000001005ABE90;
        }

        else
        {
          v11 = 0x6C62616E45696C6DLL;
          v12 = 0xEA00000000006465;
        }
      }

      else if (v10 == 5)
      {
        v12 = 0xE600000000000000;
        v11 = 0x73656E757469;
      }

      else
      {
        if (v10 == 6)
        {
          v11 = 0x74634170756F7267;
        }

        else
        {
          v11 = 0x746963696C707865;
        }

        if (v10 == 6)
        {
          v12 = 0xED00007974697669;
        }

        else
        {
          v12 = 0xEF746E65746E6F43;
        }
      }

      if (v5 > 4)
      {
        v17 = 0xD000000000000011;
        if (v5 != 9)
        {
          v17 = 0x6C62616E45696C6DLL;
        }

        v18 = 0xEA00000000006465;
        if (v5 == 9)
        {
          v18 = 0x80000001005ABE90;
        }

        if (v5 == 8)
        {
          v17 = 0xD000000000000013;
          v18 = 0x80000001005ABE70;
        }

        v19 = 0x746963696C707865;
        if (v5 == 6)
        {
          v19 = 0x74634170756F7267;
        }

        v20 = 0xEF746E65746E6F43;
        if (v5 == 6)
        {
          v20 = 0xED00007974697669;
        }

        if (v5 == 5)
        {
          v19 = 0x73656E757469;
          v20 = 0xE600000000000000;
        }

        if (v5 <= 7)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (v5 <= 7)
        {
          v22 = v20;
        }

        else
        {
          v22 = v18;
        }

        if (v11 == v21)
        {
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      if (v5 <= 1)
      {
        break;
      }

      v23 = 0x6C6169636F73;
      if (v5 != 3)
      {
        v23 = 0x6F69646172;
      }

      v24 = 0xE600000000000000;
      if (v5 != 3)
      {
        v24 = 0xE500000000000000;
      }

      if (v5 == 2)
      {
        v25 = 0xD000000000000013;
      }

      else
      {
        v25 = v23;
      }

      if (v5 == 2)
      {
        v22 = 0x80000001005ABE30;
      }

      else
      {
        v22 = v24;
      }

      if (v11 == v25)
      {
        goto LABEL_74;
      }

LABEL_75:
      v26 = sub_100574498();

      if (v26)
      {
        goto LABEL_80;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v5)
    {
      v22 = 0xE500000000000000;
      if (v11 == 0x636973756DLL)
      {
        goto LABEL_74;
      }

      goto LABEL_75;
    }

    v22 = 0xEB00000000736F65;
    if (v11 != 0x646956636973756DLL)
    {
      goto LABEL_75;
    }

LABEL_74:
    if (v12 != v22)
    {
      goto LABEL_75;
    }

LABEL_80:
    v3 = v30;
    if (v30 == v28)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1001A80B4(unsigned __int8 a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_59:
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v43 = &off_100682E60;
        sub_1000DA1F0(&off_100682E88);
        return v43;
      }

      else
      {
        return &off_100682EB0;
      }
    }

    else if (a1)
    {
      return &off_100682E10;
    }

    else
    {
      return &off_100682E38;
    }
  }

  v3 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v40 = v3;
  v41 = _swiftEmptyArrayStorage;
  v37 = a1;
  if (!v7)
  {
    while (1)
    {
LABEL_5:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      if (v11 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_9;
      }
    }

    result = v41;
    if (*(v41 + 2))
    {
      return result;
    }

    goto LABEL_59;
  }

  while (1)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);

    v18._rawValue = &off_100682FA0;
    v44._countAndFlagsBits = v15;
    v44._object = v16;
    v19 = sub_100574238(v18, v44);

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v21 = 0x6269726373627573;
        v20 = 0xEA00000000007265;
      }

      else
      {
        if (v19 != 3)
        {
          goto LABEL_35;
        }

        v21 = 0x6275536563696F76;
        v20 = 0xEF72656269726373;
      }
    }

    else if (v19)
    {
      if (v19 != 1)
      {
        goto LABEL_35;
      }

      v20 = 0xE700000000000000;
      v21 = 0x63697373616C63;
    }

    else
    {
      v21 = 0x6564696365646E75;
      v20 = 0xE900000000000064;
    }

    v22 = 0x6275536563696F76;
    if (a1 == 2)
    {
      v22 = 0x6269726373627573;
    }

    v23 = 0xEF72656269726373;
    if (a1 == 2)
    {
      v23 = 0xEA00000000007265;
    }

    v24 = 0x6564696365646E75;
    if (a1)
    {
      v24 = 0x63697373616C63;
    }

    v25 = 0xE900000000000064;
    if (a1)
    {
      v25 = 0xE700000000000000;
    }

    v26 = a1 <= 1u ? v24 : v22;
    v27 = a1 <= 1u ? v25 : v23;
    if (v21 == v26 && v20 == v27)
    {
      break;
    }

    v28 = sub_100574498();

    if (v28)
    {
      goto LABEL_38;
    }

LABEL_35:

    v3 = v40;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

LABEL_38:

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v43 = &off_100682E60;
      result = sub_1000DA1F0(&off_100682E88);
      a1 = v37;
      v29 = v43;
    }

    else
    {
      v29 = &off_100682EB0;
    }

LABEL_44:
    v39 = v29;
  }

  else
  {
    v39 = &off_100682E10;
    if (!a1)
    {
      v29 = &off_100682E38;
      goto LABEL_44;
    }
  }

  v38 = *(v17 + 16);
  if (!v38)
  {
    v41 = _swiftEmptyArrayStorage;
LABEL_56:

    goto LABEL_35;
  }

  v30 = 0;
  v41 = _swiftEmptyArrayStorage;
  while (v30 < *(v17 + 16))
  {
    v43 = *(v17 + 32 + 8 * v30);

    sub_1001A5AAC(&v43, v39, &v42);

    v32 = v42;
    if ((v42 & 0xFF00) != 0x200)
    {
      v33 = v41;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000CF6D0(0, *(v41 + 2) + 1, 1, v41);
        v33 = result;
      }

      v34 = v33;
      v35 = *(v33 + 2);
      v41 = v34;
      v36 = *(v34 + 3);
      if (v35 >= v36 >> 1)
      {
        result = sub_1000CF6D0((v36 > 1), v35 + 1, 1, v41);
        v41 = result;
      }

      *(v41 + 2) = v35 + 1;
      v31 = &v41[2 * v35];
      v31[32] = v32;
      v31[33] = HIBYTE(v32) & 1;
      a1 = v37;
    }

    if (v38 == ++v30)
    {
      goto LABEL_56;
    }
  }

LABEL_68:
  __break(1u);
  return result;
}

id sub_1001A855C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v6 = objc_opt_self();
  result = [v6 sharedCloudController];
  if (result)
  {
    v8 = result;
    v9 = [result hasProperNetworkConditionsToShowCloudMedia];

    *(&v85 + 1) = v9;
    *(&v85 + 1) = 0;
    *&v86 = 0;
    *&v87 = &_swiftEmptySetSingleton;
    *(&v87 + 1) = &_swiftEmptySetSingleton;
    *v88 = 0x7FFFFFFFFFFFFFFFLL;
    memset(&v88[8], 0, 32);
    v10 = objc_opt_self();
    v11 = [v10 sharedController];
    v12 = [v11 musicSubscriptionStatus];

    v13 = 1;
    LOBYTE(v89) = 1;
    *(&v89 + 1) = sub_1001A7724(_swiftEmptyArrayStorage);
    LOBYTE(v90) = v14;
    *(&v90 + 1) = v15;
    v16 = [v10 sharedController];
    v17 = [objc_opt_self() sharedConnection];
    v72 = [v6 sharedCloudController];
    v74 = v16;
    v18 = [v16 musicSubscriptionStatus];
    v19 = v18;
    if (v18)
    {
      v71 = 2 * ([v18 capabilities] & 1);
    }

    else
    {
      v71 = 0;
    }

    v20 = [objc_opt_self() defaultIdentityStore];
    sub_1001A4020();
    v22 = v21;

    LOBYTE(v85) = (v22 & 1) == 0;
    if (v19)
    {
      v23 = v19;
      *&v86 = [v23 statusType];
      v24 = [v23 capabilities];

      *(&v85 + 1) = v24;
      v13 = (v24 & 1) == 0;
    }

    v25 = [objc_opt_self() sharedPrivacyInfo];
    v26 = [v25 privacyAcknowledgementRequiredForMusic];

    BYTE8(v86) = v26 ^ 1;
    v27 = v74;
    if (sub_1001A5194(v19, v74))
    {
      sub_10024FAD4(v84, 2);
    }

    if (qword_1006E4D50 != -1)
    {
      swift_once();
    }

    if ([qword_1006E8200 isRadioAvailable])
    {
      sub_10024FAD4(v84, 4);
    }

    if (sub_1001A53B4(v17, a1))
    {
      sub_10024FAD4(v84, 3);
    }

    if (a1)
    {
      v28 = sub_100572898();
      v29 = [a1 BOOLValueForBagKey:v28];

      if (v29)
      {
        sub_10024FAD4(v84, 9);
      }
    }

    if (v17)
    {
      sub_1005728D8();
      v30 = sub_100572898();

      v31 = [v17 effectiveBoolValueForSetting:v30];

      if (v31 != 2)
      {
        sub_10024FAD4(v84, 6);
      }

      sub_1005728D8();
      v32 = sub_100572898();

      v33 = [v17 effectiveBoolValueForSetting:v32];

      if (v33 != 2)
      {
        sub_10024FAD4(v84, 0);
      }

      sub_1005728D8();
      v34 = sub_100572898();

      v35 = [v17 effectiveBoolValueForSetting:v34];

      if (v35 != 2)
      {
        sub_10024FAD4(v84, 1);
      }

      sub_1005728D8();
      v36 = sub_100572898();

      v37 = [v17 effectiveBoolValueForSetting:v36];

      if (v37 != 2)
      {
        sub_10024FAD4(v84, 5);
      }

      *&v88[40] = v19;
      v38 = v19;

      sub_1005728D8();
      v39 = sub_100572898();

      v40 = [v17 effectiveBoolValueForSetting:v39];

      if (v40 != 2)
      {
        sub_10024FAD4(v84, 8);
      }

      sub_1005728D8();
      v41 = sub_100572898();

      v42 = [v17 isBoolSettingLockedDownByRestrictions:v41];

      v27 = v74;
      if (v42)
      {
        sub_10024FAD4(v84, 7);
      }
    }

    else
    {
      *&v88[40] = v19;
      v43 = v19;
    }

    v44 = v87;
    sub_100009DCC(&unk_1006E8440);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B500;
    *(inited + 32) = 2;
    LOBYTE(v44) = sub_1001A7C78(inited, v44);
    swift_setDeallocating();
    if (v44)
    {
      LOBYTE(v89) = v71;
      if (v19)
      {
        v46 = v19;
        if ([v46 statusType] == 3)
        {
          if (qword_1006E4D58 != -1)
          {
            swift_once();
          }

          v47 = sub_10056DF88();
          sub_10000C49C(v47, qword_1006E8208);
          v48 = sub_10056DF68();
          v49 = sub_100573438();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&_mh_execute_header, v48, v49, "Unexpectedly found a Voice subscriber! 😡", v50, 2u);
            v27 = v74;
          }
        }
      }
    }

    else
    {
      v71 = 1;
    }

    if (a1)
    {
      v51 = v13;
    }

    else
    {
      v51 = 1;
    }

    if ((v51 & 1) == 0)
    {
      v52 = sub_1001A55D8();
      if (v52 != 2 && (v52 & 1) != 0)
      {
        v53 = sub_1001A582C();
        if (v53 != 2 && (v53 & 1) != 0)
        {
          sub_10024FAD4(v84, 10);
        }
      }
    }

    v54 = v72;
    if (v72)
    {
      v55 = v72;
      if ([v55 shouldProhibitMusicActionForCurrentNetworkConditions])
      {
        v56 = 0;
      }

      else
      {
        v56 = [v55 hasProperNetworkConditionsToShowCloudMedia];
      }
    }

    else
    {
      v56 = 0;
    }

    BYTE1(v85) = v56;
    BYTE2(v85) = [v27 isCloudLibraryEnabled];
    v57 = a1;
    sub_1001A7538(a1, v88);
    if (a3)
    {
      *&v84[0] = &off_100683020;
      sub_1000DA1F0(&off_100683048);
      v59 = *&v84[0];
    }

    else
    {
      v60 = *(a2 + 16);
      __chkstk_darwin(v58);
      os_unfair_lock_lock((v60 + 44));
      sub_1001A97F8((v60 + 16), v84);
      os_unfair_lock_unlock((v60 + 44));
      if (*&v84[0])
      {
        v59 = sub_1001A80B4(v71, *&v84[0]);

        v54 = v72;
      }

      else
      {
        v54 = v72;
        if (v71)
        {
          if (v71 == 1)
          {
            v59 = &off_100682E10;
          }

          else
          {
            *&v84[0] = &off_100682E60;
            sub_1000DA1F0(&off_100682E88);
            v59 = *&v84[0];
          }
        }

        else
        {
          v59 = &off_100682E38;
        }
      }
    }

    v61 = sub_1001A6D18(v59, &v85);

    v62 = sub_1001A7724(v61);
    LOBYTE(v61) = v63;
    v65 = v64;

    *(&v89 + 1) = v62;
    LOBYTE(v90) = v61;
    *(&v90 + 1) = v65;
    v80 = *&v88[16];
    v81 = *&v88[32];
    v76 = v85;
    v77 = v86;
    v78 = v87;
    v79 = *v88;
    v82 = v89;
    v83 = v90;
    v84[6] = v89;
    v84[7] = v90;
    v84[2] = v87;
    v84[3] = *v88;
    v84[0] = v85;
    v84[1] = v86;
    v84[4] = *&v88[16];
    v84[5] = *&v88[32];
    sub_1001A9624(&v76, &v75);
    result = sub_100108D2C(v84);
    v66 = v81;
    a4[4] = v80;
    a4[5] = v66;
    v67 = v83;
    a4[6] = v82;
    a4[7] = v67;
    v68 = v77;
    *a4 = v76;
    a4[1] = v68;
    v69 = v79;
    a4[2] = v78;
    a4[3] = v69;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s9MusicCore23ApplicationCapabilitiesV7ServiceO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100683F98;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

uint64_t _s9MusicCore23ApplicationCapabilitiesV17SubscriptionStateO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1006840C0;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

void sub_1001A8F84()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if ((*(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) & 1) == 0)
  {
    **(v0 + 24) = 1;
    *(v1 + v2) = 1;
  }
}

uint64_t sub_1001A8FB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_1001A23E8(a1, v4, v5, v6);
}

unint64_t sub_1001A9070()
{
  result = qword_1006E8278;
  if (!qword_1006E8278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8278);
  }

  return result;
}

unint64_t sub_1001A90C8()
{
  result = qword_1006E8280;
  if (!qword_1006E8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8280);
  }

  return result;
}

__n128 sub_1001A9124(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1001A9148(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001A9190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities.Service(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities.Service(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001A9350(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001A93AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for ApplicationCapabilities.Controller()
{
  result = qword_1006E82C0;
  if (!qword_1006E82C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001A9494()
{
  sub_1001A9574();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001A9574()
{
  if (!qword_1006E82D0)
  {
    v0 = sub_10056E4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E82D0);
    }
  }
}

uint64_t sub_1001A965C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001A96DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[21];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CB98;

  return sub_1001A3A04(a1, v4, v5, v6, (v1 + 5), v7);
}

unint64_t sub_1001A97A4()
{
  result = qword_1006E8438;
  if (!qword_1006E8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8438);
  }

  return result;
}

unint64_t sub_1001A9814()
{
  result = qword_1006E8450;
  if (!qword_1006E8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8450);
  }

  return result;
}

uint64_t sub_1001A9868(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001A98B0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001A98E8()
{
  v1 = sub_100009DCC(&qword_1006E8488);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1001A99B8(void *a1)
{
  sub_100009DCC(&qword_1006E8488);

  return sub_1001A4B78(a1);
}

uint64_t sub_1001A9A38()
{

  return swift_deallocObject();
}

uint64_t sub_1001A9AE4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001A9B24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_1001A29FC(a1, v4, v5, v6);
}

uint64_t sub_1001A9BE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001A9C00()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_1001A9C40()
{
  result = qword_1006E84B0;
  if (!qword_1006E84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E84B0);
  }

  return result;
}

uint64_t sub_1001A9CCC()
{

  return swift_deallocObject();
}

id sub_1001A9D1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag) = v2;

  return v2;
}

unint64_t sub_1001A9D70()
{
  result = qword_1006E84E8;
  if (!qword_1006E84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E84E8);
  }

  return result;
}

uint64_t sub_1001A9DC4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100684140;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1001A9E7C()
{
  type metadata accessor for BackgroundFetchManager();
  result = swift_initStaticObject();
  static BackgroundFetchManager.shared = result;
  return result;
}

uint64_t *BackgroundFetchManager.shared.unsafeMutableAddressor()
{
  if (qword_1006E4DD0 != -1)
  {
    swift_once();
  }

  return &static BackgroundFetchManager.shared;
}

uint64_t BackgroundFetchManager.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001AA7B0();
  if (*(v6 + 16) && (v7 = sub_1000EB89C(a1, a2), (v8 & 1) != 0) && (v9 = *(*(v6 + 56) + 8 * v7), , , *(v9 + 16)) && (v10 = sub_1000EB89C(7107189, 0xE300000000000000), (v11 & 1) != 0))
  {
    sub_100081F38(*(v9 + 56) + 32 * v10, v14);

    if (swift_dynamicCast())
    {
      sub_10056C868();
    }
  }

  else
  {
  }

  v13 = sub_10056C8A8();
  return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
}

void (*BackgroundFetchManager.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = a3;
  v6 = *(*(sub_100009DCC(&qword_1006E5D10) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(v6);
    v7 = malloc(v6);
  }

  a1[3] = v7;
  BackgroundFetchManager.subscript.getter(a2, a3, v7);
  return sub_1001AA114;
}

void sub_1001AA114(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    sub_10017F84C(a1[3], v2);

    _s9MusicCore22BackgroundFetchManagerCy10Foundation3URLVSgSScis_0(v2, v5, v4);
    sub_10001036C(v3, &qword_1006E5D10);
  }

  else
  {

    _s9MusicCore22BackgroundFetchManagerCy10Foundation3URLVSgSScis_0(v3, v5, v4);
  }

  free(v3);

  free(v2);
}

Swift::Void __swiftcall BackgroundFetchManager.removeAll()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_100572898();
  [v0 removeObjectForKey:v1];
}

void sub_1001AA250(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), int a4, int a5, int a6, dispatch_group_t group)
{
  if (a3)
  {
    a1 = a3(a1, a2);
  }

  if (a2)
  {
    __chkstk_darwin(a1);
    swift_errorRetain();
    UnfairLock.locked<A>(_:)(sub_1001ABC44);
  }

  dispatch_group_leave(group);
}

uint64_t sub_1001AA324(void **a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1000CFB00(0, v4[2] + 1, 1, v4);
    *a1 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1000CFB00((v6 > 1), v7 + 1, 1, v4);
    *a1 = v4;
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a2;
  swift_endAccess();
  return swift_errorRetain();
}

uint64_t sub_1001AA400(uint64_t a1, uint64_t a2, void (*a3)())
{
  sub_100009DCC(&qword_1006E8598);
  UnfairLock.locked<A>(_:)(sub_1001ABBE8);
  a3();
}

void sub_1001AA498()
{
  if (qword_1006E4E08 != -1)
  {
    swift_once();
  }

  sub_100009DCC(&qword_1006E8490);
  UnfairLock.locked<A>(_:)(sub_1000C5F9C);
  v0 = v3;
  if (v3 && (sub_1001AA594(v3, &v3), v0, (v4 & 1) == 0))
  {
    v1 = 0;
    v2 = v3;
  }

  else
  {
    v1 = 1;
    v2 = 0x4122750000000000;
  }

  qword_1006E84F0 = v2;
  byte_1006E84F8 = v1;
}

uint64_t sub_1001AA594@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 valueForBagKey:ICURLBagKeyMusicCommon])
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v10[0] = v11;
  v10[1] = v12;
  if (!*(&v12 + 1))
  {
    result = sub_10001036C(v10, &qword_1006EA040);
    goto LABEL_16;
  }

  sub_100009DCC(&unk_1006EB150);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v11 + 16) || (v4 = sub_1000EB89C(0xD00000000000001ELL, 0x80000001005AF9E0), (v5 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_100081F38(*(v11 + 56) + 32 * v4, v10);

  sub_100009DCC(&qword_1006E7DF8);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_16:
    *a2 = 0;
    v9 = 1;
    goto LABEL_17;
  }

  v6 = v11;
  sub_100573E78();
  if (!*(v6 + 16) || (v7 = sub_1000EB93C(v10), (v8 & 1) == 0))
  {

    result = sub_1000F4130(v10);
    goto LABEL_16;
  }

  sub_100081F38(*(v6 + 56) + 32 * v7, &v11);
  sub_1000F4130(v10);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  v9 = result ^ 1;
LABEL_17:
  *(a2 + 8) = v9;
  return result;
}

unint64_t sub_1001AA7B0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_100572898();
  v2 = [v0 dictionaryForKey:v1];

  if (v2)
  {
    v3 = sub_1005726A8();

    v4 = sub_100350CF8(v3);

    if (v4)
    {
      return v4;
    }
  }

  else
  {
  }

  v6 = sub_1000F464C(_swiftEmptyArrayStorage);

  return v6;
}

uint64_t _s9MusicCore22BackgroundFetchManagerCy10Foundation3URLVSgSScis_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(&qword_1006E5D10);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_10056C8A8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017F84C(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001036C(v8, &qword_1006E5D10);
    v26 = sub_1001AA7B0();
    sub_1002C68F4(a2, a3);

    v13 = [objc_opt_self() standardUserDefaults];
    sub_100009DCC(&unk_1006EB150);
    isa = sub_100572688().super.isa;

    v15 = sub_100572898();
    [v13 setObject:isa forKey:v15];

    return sub_10001036C(a1, &qword_1006E5D10);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_100009DCC(&unk_1006EE290);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057B500;
    *(inited + 32) = 7107189;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = sub_10056C7A8();
    *(inited + 56) = v18;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 1702125924;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 120) = sub_10056CAA8();
    sub_10002AB7C((inited + 96));
    sub_10056CA98();
    v19 = sub_1000F3754(inited);
    swift_setDeallocating();
    sub_100009DCC(&qword_1006E6B38);
    swift_arrayDestroy();
    v20 = sub_1001AA7B0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v20;
    sub_1000EF730(v19, a2, a3, isUniquelyReferenced_nonNull_native);

    v22 = [objc_opt_self() standardUserDefaults];
    sub_100009DCC(&unk_1006EB150);
    v23 = sub_100572688().super.isa;

    v24 = sub_100572898();
    [v22 setObject:v23 forKey:v24];

    sub_10001036C(a1, &qword_1006E5D10);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t _s9MusicCore22BackgroundFetchManagerC14updateURLCache5queue20onDidReceiveResponse10completionySo012OS_dispatch_H0C_ySo13ICURLResponseCSg_s5Error_pSgtcSgySaysAM_pGctF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v96 = a5;
  v95 = a4;
  v78 = a3;
  v77 = a2;
  v101 = a1;
  v5 = sub_100570B88();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin(v5);
  v99 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100570BC8();
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10056C258();
  v8 = *(v76 - 8);
  __chkstk_darwin(v76);
  v82 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009DCC(&qword_1006E8040);
  __chkstk_darwin(v10 - 8);
  v90 = v70 - v11;
  v91 = sub_10056CAA8();
  v12 = *(v91 - 8);
  v13 = __chkstk_darwin(v91);
  v84 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v85 = v70 - v15;
  v16 = sub_100009DCC(&qword_1006E5D10);
  __chkstk_darwin(v16 - 8);
  v107 = v70 - v17;
  v104 = sub_10056C8A8();
  v18 = *(v104 - 8);
  v19 = __chkstk_darwin(v104);
  v81 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v94 = v70 - v21;
  v106 = dispatch_group_create();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v105 = UnfairLock.init()();
  v22 = swift_allocObject();
  *(v22 + 16) = _swiftEmptyArrayStorage;
  if (qword_1006E4DD8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v23 = *&qword_1006E84F0;
  v24 = sub_1001AA7B0();
  v25 = v24;
  v26 = 0;
  v27 = v24 + 64;
  v28 = 1 << *(v24 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v24 + 64);
  v31 = (v28 + 63) >> 6;
  v93 = (v18 + 6);
  v89 = (v18 + 4);
  v88 = (v12 + 7);
  v86 = (v12 + 6);
  v83 = (v12 + 4);
  ++v12;
  v87 = (v18 + 1);
  v80 = (v18 + 2);
  v79 = "com.apple.mobileipod";
  v18 = &v110;
  v75 = (v8 + 8);
  v8 = v107;
  while (1)
  {
    while (1)
    {
      do
      {
        if (!v30)
        {
          while (1)
          {
            v32 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v32 >= v31)
            {

              v63 = swift_allocObject();
              v63[2] = v105;
              v63[3] = v22;
              v64 = v96;
              v63[4] = v95;
              v63[5] = v64;
              v112 = sub_1001ABB84;
              v113 = v63;
              aBlock = _NSConcreteStackBlock;
              v109 = 1107296256;
              v110 = sub_10007885C;
              v111 = &unk_10068FB40;
              v65 = _Block_copy(&aBlock);

              v66 = v97;
              sub_100570BA8();
              v114 = _swiftEmptyArrayStorage;
              sub_1001ABB90();
              sub_100009DCC(&unk_1006E9B30);
              sub_10019CC54();
              v67 = v99;
              v68 = v103;
              sub_100573DA8();
              v69 = v106;
              sub_100573588();
              _Block_release(v65);

              (*(v102 + 8))(v67, v68);
              (*(v98 + 8))(v66, v100);
            }

            v30 = *(v27 + 8 * v32);
            ++v26;
            if (v30)
            {
              v26 = v32;
              goto LABEL_11;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_11:
        v33 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v34 = *(*(v25 + 56) + ((v26 << 9) | (8 * v33)));
      }

      while (!*(v34 + 16));

      v35 = sub_1000EB89C(7107189, 0xE300000000000000);
      if (v36)
      {
        sub_100081F38(*(v34 + 56) + 32 * v35, &aBlock);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

    v92 = v18;
    sub_10056C868();

    v37 = v104;
    if ((*v93)(v8, 1, v104) == 1)
    {

      v38 = v8;
      v39 = &qword_1006E5D10;
      goto LABEL_22;
    }

    (*v89)(v94, v8, v37);
    v40 = v90;
    if (!*(v34 + 16) || (v41 = sub_1000EB89C(1702125924, 0xE400000000000000), (v42 & 1) == 0))
    {

      (*v87)(v94, v104);
      (*v88)(v40, 1, 1, v91);
LABEL_21:
      v38 = v40;
      v39 = &qword_1006E8040;
LABEL_22:
      sub_10001036C(v38, v39);
      goto LABEL_23;
    }

    sub_100081F38(*(v34 + 56) + 32 * v41, &aBlock);

    v43 = v91;
    v44 = swift_dynamicCast();
    (*v88)(v40, v44 ^ 1u, 1, v43);
    if ((*v86)(v40, 1, v43) == 1)
    {
      (*v87)(v94, v104);
      v8 = v107;
      goto LABEL_21;
    }

    (*v83)(v85, v40, v43);
    v45 = v84;
    sub_10056CA98();
    sub_10056C9B8();
    v47 = v46;
    v48 = v45;
    v49 = *v12;
    (*v12)(v48, v43);
    if (v47 < v23)
    {
      break;
    }

    v49(v85, v43);
    (*v87)(v94, v104);
    v8 = v107;
LABEL_23:
    v18 = v92;
  }

  v74 = v49;
  (*v80)(v81, v94, v104);
  sub_10056C238();
  v116._object = (v79 | 0x8000000000000000);
  v115._countAndFlagsBits = 1702195828;
  v115._object = 0xE400000000000000;
  v116._countAndFlagsBits = 0xD00000000000001ALL;
  sub_10056C248(v115, v116);
  v50 = objc_allocWithZone(ICMusicKitRequestContext);
  v112 = sub_1001EB614;
  v113 = 0;
  aBlock = _NSConcreteStackBlock;
  v109 = 1107296256;
  v110 = sub_1001D65E4;
  v111 = &unk_10068FAA0;
  v51 = _Block_copy(&aBlock);
  v52 = [v50 initWithBlock:v51];
  _Block_release(v51);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    v73 = objc_allocWithZone(ICMusicKitURLRequest);
    v54 = sub_10056C228();
    v73 = [v73 initWithURLRequest:v54 requestContext:v52];

    dispatch_group_enter(v106);
    v72 = [objc_opt_self() highPrioritySession];
    v55 = swift_allocObject();
    v56 = v77;
    v57 = v78;
    v55[2] = v77;
    v55[3] = v57;
    v58 = v106;
    v55[4] = v105;
    v55[5] = v22;
    v55[6] = v58;
    v112 = sub_1001ABB2C;
    v113 = v55;
    aBlock = _NSConcreteStackBlock;
    v109 = 1107296256;
    v110 = sub_1000128FC;
    v111 = &unk_10068FAF0;
    v71 = _Block_copy(&aBlock);
    v70[1] = v113;
    sub_1000E672C(v56);

    v59 = v58;

    v60 = v72;
    v61 = v73;
    v62 = v71;
    [v72 enqueueDataRequest:v73 withCompletionHandler:v71];
    _Block_release(v62);

    (*v75)(v82, v76);
    v74(v85, v91);
    (*v87)(v94, v104);
    v8 = v107;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001ABA84()
{

  return swift_deallocObject();
}

uint64_t sub_1001ABABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001ABAD4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001ABB3C()
{

  return swift_deallocObject();
}

unint64_t sub_1001ABB90()
{
  result = qword_1006EBE70;
  if (!qword_1006EBE70)
  {
    sub_100570B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EBE70);
  }

  return result;
}

uint64_t sub_1001ABBE8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *a1 = *v3;
}

id sub_1001ABC70()
{
  type metadata accessor for BackgroundRefreshController();
  v0 = swift_allocObject();
  v0[2] = 0;
  v0[3] = 0;
  result = [objc_allocWithZone(ICCloudClient) init];
  v0[4] = result;
  static BackgroundRefreshController.shared = v0;
  return result;
}

uint64_t *BackgroundRefreshController.shared.unsafeMutableAddressor()
{
  if (qword_1006E4DE0 != -1)
  {
    swift_once();
  }

  return &static BackgroundRefreshController.shared;
}

uint64_t static BackgroundRefreshController.shared.getter()
{
  if (qword_1006E4DE0 != -1)
  {
    swift_once();
  }
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1000E672C(v1);
  return v1;
}

uint64_t CompoundRequestResponseInvalidation.onInvalidation.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1000F3E14(v5);
}

Swift::Void __swiftcall BackgroundRefreshController.registerAllTasks()()
{
  sub_100573448();
  sub_100009DCC(&qword_1006E7DC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057B510;
  *(v0 + 56) = &type metadata for String;
  v1 = sub_10018CCD0();
  *(v0 + 64) = v1;
  *(v0 + 32) = 0xD00000000000002FLL;
  *(v0 + 40) = 0x80000001005AFA60;
  sub_1000D3B98(0, &qword_1006EE020);
  v2 = sub_100573BF8();
  sub_10056DE58();

  v3 = objc_opt_self();
  v4 = [v3 sharedScheduler];
  v5 = sub_100572898();
  aBlock[4] = sub_1001AC10C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10017EDD8;
  aBlock[3] = &unk_10068FB68;
  v6 = _Block_copy(aBlock);
  [v4 registerForTaskWithIdentifier:v5 usingQueue:0 launchHandler:v6];
  _Block_release(v6);

  sub_100573448();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10057B510;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = v1;
  *(v7 + 32) = 0xD000000000000041;
  *(v7 + 40) = 0x80000001005AFAF0;
  v8 = sub_100573BF8();
  sub_10056DE58();

  v9 = [v3 sharedScheduler];
  v10 = sub_100572898();
  [v9 cancelTaskRequestWithIdentifier:v10];
}

uint64_t sub_1001AC10C()
{
  if (qword_1006E4DE0 != -1)
  {
    swift_once();
  }

  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  return sub_1001AC18C(v0);
}

uint64_t sub_1001AC18C(void *a1)
{
  v3 = *v1;
  sub_100573448();
  sub_100009DCC(&qword_1006E7DC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057B510;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10018CCD0();
  *(v4 + 32) = 0xD00000000000002FLL;
  *(v4 + 40) = 0x80000001005AFA60;
  sub_1000D3B98(0, &qword_1006EE020);
  v5 = sub_100573BF8();
  sub_10056DE58();

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v3;
  v7 = a1;
  sub_1001AD908(sub_1001B0190, v6);
}

uint64_t sub_1001AC2FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall BackgroundRefreshController.scheduleAllTasks()()
{
  v82 = *v0;
  v88 = sub_100570B88();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100570BC8();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v83 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100009DCC(&qword_1006E8040);
  v4 = __chkstk_darwin(v3 - 8);
  v106 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v105 = &v81 - v6;
  v7 = sub_10056CAA8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v91 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v95 = &v81 - v12;
  v13 = __chkstk_darwin(v11);
  v104 = &v81 - v14;
  v15 = __chkstk_darwin(v13);
  v103 = &v81 - v16;
  v17 = __chkstk_darwin(v15);
  v110 = &v81 - v18;
  v19 = __chkstk_darwin(v17);
  v102 = &v81 - v20;
  v21 = __chkstk_darwin(v19);
  v101 = &v81 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v81 - v24;
  __chkstk_darwin(v23);
  v27 = (&v81 - v26);
  if (qword_1006E4DF0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v28 = off_1006E85A8;
    sub_10056C9A8();
    v93 = v8;
    v29 = *(v8 + 16);
    v92 = v27;
    v90 = v8 + 16;
    v89 = v29;
    v29(v25, v27, v7);
    v107 = v28;
    v94 = v28[2];
    if (v94)
    {
      v100 = objc_opt_self();
      v99 = (v93 + 56);
      v30 = (v93 + 48);
      v27 = (v93 + 8);
      v31 = v107 + 49;
      v108 = (v93 + 32);
      v97 = (v93 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v32 = v94;
      v98 = (v93 + 48);
      do
      {
        v109 = v32;
        v43 = *v31;
        v44 = [v100 standardUserDefaults];
        LOBYTE(v111) = v43;
        sub_1001AF5C4();
        sub_1000C5FB8();
        NSUserDefaults.subscript.getter(&aBlock);

        if (v114)
        {
          v45 = v105;
          v46 = swift_dynamicCast();
          (*v99)(v45, v46 ^ 1u, 1, v7);
        }

        else
        {
          sub_10001036C(&aBlock, &qword_1006EA040);
          v45 = v105;
          (*v99)(v105, 1, 1, v7);
        }

        v47 = v106;
        sub_1001AF618(v45, v106);
        v48 = *v30;
        if ((*v30)(v47, 1, v7) == 1)
        {
          v96 = v31;
          v49 = v103;
          sub_10056CA98();
          v50 = v48(v47, 1, v7);
          v31 = v96;
          if (v50 != 1)
          {
            sub_10001036C(v47, &qword_1006E8040);
          }
        }

        else
        {
          v49 = v103;
          (*v108)(v103, v47, v7);
        }

        sub_10001036C(v45, &qword_1006E8040);
        sub_10056CA18();
        Kind = v27->Kind;
        (v27->Kind)(v49, v7);
        v52 = v104;
        sub_10056CA98();
        if (sub_10056CA08())
        {
          v33 = v95;
          sub_10056CA18();
          Kind(v52, v7);
          v34 = v110;
          Kind(v110, v7);
          v35 = *v108;
          (*v108)(v34, v33, v7);
        }

        else
        {
          Kind(v52, v7);
          v35 = *v108;
        }

        v36 = v109;
        v31 += 24;
        v37 = v102;
        v35(v102, v110, v7);
        sub_1001B00BC(&qword_1006E85E8, &type metadata accessor for Date);
        v38 = sub_1005727B8();
        v39 = (v38 & 1) == 0;
        if (v38)
        {
          v40 = v25;
        }

        else
        {
          v40 = v37;
        }

        if (v39)
        {
          v41 = v25;
        }

        else
        {
          v41 = v37;
        }

        Kind(v40, v7);
        v42 = v101;
        v35(v101, v41, v7);
        v35(v25, v42, v7);
        v32 = v36 - 1;
        v30 = v98;
      }

      while (v32);
    }

    v109 = swift_allocBox();
    v54 = v53;
    v8 = v93;
    v108 = *(v93 + 8);
    (v108)(v92, v7);
    v55 = *(v8 + 32);
    v110 = v54;
    v55(v54, v25, v7);
    if (!v94)
    {
LABEL_37:
      v61 = 0;
      goto LABEL_38;
    }

    if (v107[2])
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v56 = 0;
  v8 = 0;
  v57 = v107 + 50;
  v58 = v94 - 1;
  v27 = &type metadata for BackgroundTaskConfiguration.UserDefaultsKey;
  v25 = &type metadata for Bool;
  while ((v56 & 1) != 0)
  {
    if (v58 == v8)
    {
      goto LABEL_36;
    }

    v56 = 1;
LABEL_25:
    ++v8;
    v57 += 24;
    if (v8 >= v107[2])
    {
      goto LABEL_44;
    }
  }

  v59 = *v57;
  v60 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v111) = v59;
  sub_1001AF5C4();
  sub_1000C5FB8();
  NSUserDefaults.subscript.getter(&aBlock);

  if (!v114)
  {
    sub_10001036C(&aBlock, &qword_1006EA040);
    goto LABEL_33;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    v56 = 0;
    v61 = 0;
    if (v58 == v8)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v56 = v111;
  if (v58 != v8)
  {
    goto LABEL_25;
  }

  if ((v111 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_36:
  v62 = v95;
  sub_10056CA98();
  (*(v93 + 40))(v110, v62, v7);
  v61 = 1;
LABEL_38:
  v63 = v95;
  v64 = v89;
  v89(v95, v110, v7);
  v65 = v91;
  sub_10056C9A8();
  v66 = sub_10056CA08();
  v67 = v108;
  (v108)(v65, v7);
  (v67)(v63, v7);
  if (v61 & 1) != 0 || (v66)
  {
    v68 = objc_allocWithZone(BGAppRefreshTaskRequest);
    v69 = sub_100572898();
    v70 = [v68 initWithIdentifier:v69];

    v71 = v95;
    v64(v95, v110, v7);
    v72 = v70;
    isa = sub_10056C9E8().super.isa;
    (v67)(v71, v7);
    [v72 setEarliestBeginDate:isa];

    if (qword_1006E4DE8 != -1)
    {
      swift_once();
    }

    v74 = swift_allocObject();
    v75 = v109;
    *(v74 + 16) = v72;
    *(v74 + 24) = v75;
    *(v74 + 32) = v61;
    *(v74 + 40) = v82;
    v115 = sub_1001AF6C8;
    v116 = v74;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v113 = sub_10007885C;
    v114 = &unk_10068FBB8;
    v76 = _Block_copy(&aBlock);
    v77 = v72;

    v78 = v83;
    sub_100570BA8();
    v111 = _swiftEmptyArrayStorage;
    sub_1001B00BC(&qword_1006EBE70, &type metadata accessor for DispatchWorkItemFlags);
    sub_100009DCC(&unk_1006E9B30);
    sub_1001B0104(&qword_1006EBE80, &unk_1006E9B30);
    v79 = v85;
    v80 = v88;
    sub_100573DA8();
    sub_100573608();
    _Block_release(v76);

    (*(v87 + 8))(v79, v80);
    (*(v84 + 8))(v78, v86);
  }
}

void sub_1001ACFF0(void *a1, uint64_t a2, int a3)
{
  v39 = a3;
  v4 = sub_10056CAA8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_projectBox();
  sub_100573448();
  v38 = sub_100009DCC(&qword_1006E7DC0);
  v9 = swift_allocObject();
  v37 = xmmword_10057B500;
  *(v9 + 16) = xmmword_10057B500;
  v10 = [a1 identifier];
  v11 = sub_1005728D8();
  v13 = v12;

  *(v9 + 56) = &type metadata for String;
  v14 = sub_10018CCD0();
  *(v9 + 64) = v14;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  sub_10056CA38();
  v16 = v15;
  v17 = v15;
  (*(v5 + 8))(v7, v4);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v16 >= 9.22337204e18)
  {
    goto LABEL_12;
  }

  *(v9 + 96) = &type metadata for Int;
  *(v9 + 104) = &protocol witness table for Int;
  *(v9 + 72) = v16;
  sub_1000D3B98(0, &qword_1006EE020);
  v18 = sub_100573BF8();
  sub_10056DE58();

  v19 = objc_opt_self();
  v20 = [v19 sharedScheduler];
  v40 = 0;
  v21 = [v20 submitTaskRequest:a1 error:&v40];

  if (v21)
  {
    v22 = v40;
    if ((v39 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v23 = v40;
    v24 = sub_10056C728();

    swift_willThrow();
    sub_100573428();
    v25 = swift_allocObject();
    *(v25 + 16) = v37;
    v26 = [a1 identifier];
    v27 = sub_1005728D8();
    v29 = v28;

    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = v14;
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    v40 = v24;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v30 = sub_100572978();
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v14;
    *(v25 + 72) = v30;
    *(v25 + 80) = v31;
    v32 = sub_100573BF8();
    sub_10056DE58();

    if ((v39 & 1) == 0)
    {
      return;
    }
  }

  sub_100573448();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10057B510;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = v14;
  *(v33 + 32) = 0xD00000000000002FLL;
  *(v33 + 40) = 0x80000001005AFA60;
  v34 = sub_100573BF8();
  sub_10056DE58();

  v35 = [v19 sharedScheduler];
  v36 = sub_100572898();
  [v35 _simulateLaunchForTaskWithIdentifier:v36];
}

uint64_t sub_1001AD4C4(char a1, void *a2, uint64_t a3)
{
  v6 = sub_100570B88();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100570BC8();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E4DE8 != -1)
  {
    swift_once();
  }

  v17[1] = qword_1006E85A0;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1 & 1;
  *(v13 + 32) = a3;
  aBlock[4] = sub_1001B042C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007885C;
  aBlock[3] = &unk_10068FE80;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  sub_100570BA8();
  v19 = _swiftEmptyArrayStorage;
  sub_1001B00BC(&qword_1006EBE70, &type metadata accessor for DispatchWorkItemFlags);
  sub_100009DCC(&unk_1006E9B30);
  sub_1001B0104(&qword_1006EBE80, &unk_1006E9B30);
  sub_100573DA8();
  sub_100573608();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

void sub_1001AD7C4(void *a1, char a2)
{
  if (a2)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a2)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  [a1 setTaskCompletedWithSuccess:a2 & 1];
  sub_100573428();
  sub_100009DCC(&qword_1006E7DC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057B500;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_10018CCD0();
  *(v4 + 32) = 0xD00000000000002FLL;
  *(v4 + 40) = 0x80000001005AFA60;
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v5;
  *(v4 + 64) = v5;
  *(v4 + 72) = v2;
  *(v4 + 80) = v3;
  sub_1000D3B98(0, &qword_1006EE020);
  v6 = sub_100573BF8();
  sub_10056DE58();
}

uint64_t sub_1001AD908(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v64 = a2;
  v2 = sub_100570B88();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v67 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100570BC8();
  v66 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009DCC(&qword_1006E8040);
  v8 = __chkstk_darwin(v7 - 8);
  v81 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v62 - v10;
  v12 = sub_10056CAA8();
  v71 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v72 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v80 = &v62 - v16;
  v17 = __chkstk_darwin(v15);
  v79 = &v62 - v18;
  v19 = __chkstk_darwin(v17);
  v78 = &v62 - v20;
  v21 = __chkstk_darwin(v19);
  v77 = &v62 - v22;
  __chkstk_darwin(v21);
  v82 = &v62 - v23;
  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v100[4] = v96;
  v100[5] = v97;
  v101 = v98;
  v102 = v99;
  v100[0] = v92;
  v100[1] = v93;
  v100[2] = v94;
  v100[3] = v95;
  sub_100108D2C(v100);
  v69 = v3;
  v70 = v2;
  v68 = v5;
  if (v101 == 2)
  {
    v88 = 1;
  }

  else
  {
    v88 = sub_100574498();
  }

  sub_10056CA98();
  v84 = dispatch_group_create();
  v85 = swift_allocObject();
  *(v85 + 16) = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v83 = UnfairLock.init()();
  if (qword_1006E4DF0 != -1)
  {
    swift_once();
  }

  v24 = off_1006E85A8;
  v25 = *(off_1006E85A8 + 2);
  if (v25)
  {
    v90 = objc_opt_self();
    v75 = (v71 + 48);
    v76 = (v71 + 56);
    v26 = v24 + 50;
    v86 = (v71 + 32);
    v87 = v11;
    v73 = (v71 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v74 = (v71 + 8);
    do
    {
      v89 = *(v26 - 18);
      v30 = *v26;
      if (v88 & 1 | ((*(v26 - 17) & 1) == 0))
      {
        v31 = *(v26 - 10);
        v32 = *(v26 - 1);
        v33 = [v90 standardUserDefaults];
        LOBYTE(v91) = v32;
        sub_1001AF5C4();
        sub_1000C5FB8();
        NSUserDefaults.subscript.getter(&v92);

        if (*(&v93 + 1))
        {
          v34 = swift_dynamicCast();
          (*v76)(v11, v34 ^ 1u, 1, v12);
        }

        else
        {
          sub_10001036C(&v92, &qword_1006EA040);
          (*v76)(v11, 1, 1, v12);
        }

        v36 = v81;
        v37 = v75;
        sub_1001AF618(v11, v81);
        v38 = *v37;
        if ((*v37)(v36, 1, v12) == 1)
        {
          v39 = v79;
          sub_10056CA98();
          if (v38(v36, 1, v12) != 1)
          {
            sub_10001036C(v36, &qword_1006E8040);
          }
        }

        else
        {
          v39 = v79;
          (*v86)(v79, v36, v12);
        }

        sub_10001036C(v11, &qword_1006E8040);
        v40 = v78;
        sub_10056CA18();
        v41 = *v74;
        (*v74)(v39, v12);
        v42 = v80;
        sub_10056CA98();
        if (sub_10056CA08())
        {
          v43 = v72;
          sub_10056CA18();
          v41(v42, v12);
          v41(v40, v12);
          v44 = *v86;
          (*v86)(v40, v43, v12);
        }

        else
        {
          v41(v42, v12);
          v44 = *v86;
        }

        v45 = v77;
        v44(v77, v40, v12);
        sub_1001B00BC(&qword_1006E85E8, &type metadata accessor for Date);
        v46 = sub_1005727B8();
        v41(v45, v12);
        v35 = (v31 > 0.0) & ~v46;
      }

      else
      {
        v35 = 0;
      }

      v47 = [v90 standardUserDefaults];
      LOBYTE(v91) = v30;
      sub_1001AF5C4();
      sub_1000C5FB8();
      NSUserDefaults.subscript.getter(&v92);

      if (*(&v93 + 1))
      {
        if (swift_dynamicCast() & 1) != 0 && (v91)
        {
          v48 = [v90 standardUserDefaults];
          *(&v93 + 1) = &type metadata for Bool;
          LOBYTE(v92) = 0;
          LOBYTE(v91) = v30;
          NSUserDefaults.subscript.setter(&v92, &v91, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey);

LABEL_32:
          v49 = v84;
          dispatch_group_enter(v84);
          if (v89)
          {
            v27 = swift_allocObject();
            v28 = v85;
            v27[2] = v83;
            v27[3] = v28;
            v27[4] = v49;

            v29 = v49;
            sub_1001AE978(sub_1001B0278, v27);
          }

          else
          {
            v50 = swift_allocObject();
            v51 = v85;
            v50[2] = v83;
            v50[3] = v51;
            v50[4] = v49;

            v52 = v49;
            sub_1001AE610(sub_1001B056C, v50);
          }

          goto LABEL_12;
        }
      }

      else
      {
        sub_10001036C(&v92, &qword_1006EA040);
      }

      if (v35)
      {
        goto LABEL_32;
      }

LABEL_12:
      v26 += 24;
      --v25;
      v11 = v87;
    }

    while (v25);
  }

  if (qword_1006E4DE8 != -1)
  {
    swift_once();
  }

  v90 = qword_1006E85A0;
  v53 = swift_allocObject();
  v54 = v85;
  v53[2] = v83;
  v53[3] = v54;
  v55 = v64;
  v53[4] = v63;
  v53[5] = v55;
  *&v94 = sub_1001B01F8;
  *(&v94 + 1) = v53;
  *&v92 = _NSConcreteStackBlock;
  *(&v92 + 1) = 1107296256;
  *&v93 = sub_10007885C;
  *(&v93 + 1) = &unk_10068FD68;
  v56 = _Block_copy(&v92);

  v57 = v65;
  sub_100570BA8();
  v91 = _swiftEmptyArrayStorage;
  sub_1001B00BC(&qword_1006EBE70, &type metadata accessor for DispatchWorkItemFlags);
  sub_100009DCC(&unk_1006E9B30);
  sub_1001B0104(&qword_1006EBE80, &unk_1006E9B30);
  v58 = v67;
  v59 = v70;
  sub_100573DA8();
  v60 = v84;
  sub_100573588();
  _Block_release(v56);

  (*(v69 + 8))(v58, v59);
  (*(v66 + 8))(v57, v68);
  (*(v71 + 8))(v82, v12);
}

uint64_t sub_1001AE5A0(_BYTE *a1, char a2)
{
  swift_beginAccess();
  v4 = *a1 & a2;
  result = swift_beginAccess();
  *a1 = v4 & 1;
  return result;
}

void sub_1001AE610(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v3 = sub_10056CAA8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E4DF8 != -1)
  {
    swift_once();
  }

  v7 = word_1006E85B0;
  v8 = HIBYTE(word_1006E85B0);
  v9 = qword_1006E85B8;
  v10 = word_1006E85C0;
  v11 = HIBYTE(word_1006E85C0);
  HIDWORD(v23) = byte_1006E85C2;
  sub_10056CA98();
  v12 = [objc_opt_self() standardUserDefaults];
  v27 = v3;
  v13 = sub_10002AB7C(aBlock);
  (*(v4 + 16))(v13, v6, v3);
  v30 = v11;
  sub_1001AF5C4();
  sub_1000C5FB8();
  NSUserDefaults.subscript.setter(aBlock, &v30, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey);

  (*(v4 + 8))(v6, v3);
  sub_100573448();
  sub_100009DCC(&qword_1006E7DC0);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_10057B510;
  v16 = "updateSubscribedPlaylists";
  if (v7)
  {
    v17 = 0xD000000000000018;
  }

  else
  {
    v17 = 0xD000000000000019;
  }

  if (!v7)
  {
    v16 = "allowsPumpkinContent";
  }

  v18 = v16 | 0x8000000000000000;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_10018CCD0();
  *(v15 + 32) = v17;
  *(v15 + 40) = v18;
  sub_1000D3B98(0, &qword_1006EE020);
  v19 = sub_100573BF8();
  sub_10056DE58();

  v20 = *(v24 + 32);
  v21 = swift_allocObject();
  *(v21 + 16) = v7;
  *(v21 + 17) = v8;
  *(v21 + 24) = v9;
  *(v21 + 32) = v10;
  *(v21 + 33) = v11;
  *(v21 + 34) = BYTE4(v23);
  *(v21 + 40) = v25;
  *(v21 + 48) = a2;
  v28 = sub_1001B0304;
  v29 = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001FC868;
  v27 = &unk_10068FE08;
  v22 = _Block_copy(aBlock);

  [v20 updatePinnedSubscribedPlaylistsWithCompletion:v22];
  _Block_release(v22);
}

uint64_t sub_1001AE978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v5 = sub_10056CAA8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E4E00 != -1)
  {
    swift_once();
  }

  v9 = word_1006E85C8;
  v10 = qword_1006E85D0;
  v26 = byte_1006E85D8;
  v27 = HIBYTE(word_1006E85C8);
  v11 = byte_1006E85D9;
  v12 = byte_1006E85DA;
  sub_10056CA98();
  v13 = [objc_opt_self() standardUserDefaults];
  v30[3] = v5;
  v14 = sub_10002AB7C(v30);
  (*(v6 + 16))(v14, v8, v5);
  v29 = v11;
  sub_1001AF5C4();
  sub_1000C5FB8();
  NSUserDefaults.subscript.setter(v30, &v29, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey);

  (*(v6 + 8))(v8, v5);
  sub_100573448();
  sub_100009DCC(&qword_1006E7DC0);
  v15 = swift_allocObject();
  v16 = v15;
  *(v15 + 16) = xmmword_10057B510;
  v17 = "updateSubscribedPlaylists";
  if (v9)
  {
    v18 = 0xD000000000000018;
  }

  else
  {
    v18 = 0xD000000000000019;
  }

  if (!v9)
  {
    v17 = "allowsPumpkinContent";
  }

  v19 = v17 | 0x8000000000000000;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_10018CCD0();
  *(v16 + 32) = v18;
  *(v16 + 40) = v19;
  sub_1000D3B98(0, &qword_1006EE020);
  v20 = sub_100573BF8();
  sub_10056DE58();

  if (qword_1006E4DE8 != -1)
  {
    swift_once();
  }

  v21 = qword_1006E85A0;
  v22 = swift_allocObject();
  *(v22 + 16) = v9;
  v23 = v26;
  *(v22 + 17) = v27;
  *(v22 + 24) = v10;
  *(v22 + 32) = v23;
  *(v22 + 33) = v11;
  *(v22 + 34) = v12;
  *(v22 + 40) = v28;
  *(v22 + 48) = a2;

  _s9MusicCore22BackgroundFetchManagerC14updateURLCache5queue20onDidReceiveResponse10completionySo012OS_dispatch_H0C_ySo13ICURLResponseCSg_s5Error_pSgtcSgySaysAM_pGctF_0(v21, sub_1001B031C, v3, sub_1001B0324, v22);
}

uint64_t sub_1001AECDC(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  v7 = 0xD000000000000018;
  if (a1)
  {
    swift_errorRetain();
    sub_100573428();
    sub_100009DCC(&qword_1006E7DC0);
    v8 = swift_allocObject();
    v9 = v8;
    *(v8 + 16) = xmmword_10057B500;
    v10 = "updateSubscribedPlaylists";
    if ((a2 & 1) == 0)
    {
      v7 = 0xD000000000000019;
      v10 = "allowsPumpkinContent";
    }

    v11 = v10 | 0x8000000000000000;
    *(v8 + 56) = &type metadata for String;
    v12 = sub_10018CCD0();
    v9[8] = v12;
    v9[4] = v7;
    v9[5] = v11;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v13 = sub_100572978();
    v9[12] = &type metadata for String;
    v9[13] = v12;
    v9[9] = v13;
    v9[10] = v14;
    sub_1000D3B98(0, &qword_1006EE020);
    v15 = sub_100573BF8();
    sub_10056DE58();
  }

  else
  {
    sub_100573428();
    sub_100009DCC(&qword_1006E7DC0);
    v16 = swift_allocObject();
    v17 = v16;
    *(v16 + 16) = xmmword_10057B510;
    v18 = "updateSubscribedPlaylists";
    v19 = (a2 & 1) == 0;
    if (a2)
    {
      v20 = 0xD000000000000018;
    }

    else
    {
      v20 = 0xD000000000000019;
    }

    if (v19)
    {
      v18 = "allowsPumpkinContent";
    }

    v21 = v18 | 0x8000000000000000;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_10018CCD0();
    *(v17 + 32) = v20;
    *(v17 + 40) = v21;
    sub_1000D3B98(0, &qword_1006EE020);
    v22 = sub_100573BF8();
    sub_10056DE58();
  }

  return a4(a1 == 0);
}

uint64_t sub_1001AEF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v6 = *(a3 + 16);
  if (v6)
  {

    v6(a1);
  }

  return result;
}

uint64_t sub_1001AEFAC(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  sub_100573448();
  sub_100009DCC(&qword_1006E7DC0);
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 16) = xmmword_10057B510;
  v8 = "updateSubscribedPlaylists";
  if (a2)
  {
    v9 = 0xD000000000000018;
  }

  else
  {
    v9 = 0xD000000000000019;
  }

  if ((a2 & 1) == 0)
  {
    v8 = "allowsPumpkinContent";
  }

  v10 = v8 | 0x8000000000000000;
  *(v6 + 56) = &type metadata for String;
  v11 = sub_10018CCD0();
  v7[8] = v11;
  v7[4] = v9;
  v7[5] = v10;
  sub_1000D3B98(0, &qword_1006EE020);
  v12 = sub_100573BF8();
  sub_10056DE58();

  v21 = *(a1 + 16);
  if (v21)
  {
    v13 = a1 + 32;
    v14 = *(a1 + 16);
    do
    {
      v13 += 8;
      swift_errorRetain();
      sub_100573428();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_10057B500;
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = v11;
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;
      swift_errorRetain();
      sub_100009DCC(&qword_1006E9B60);
      v16 = sub_100572978();
      *(v15 + 96) = &type metadata for String;
      *(v15 + 104) = v11;
      *(v15 + 72) = v16;
      *(v15 + 80) = v17;
      v18 = sub_100573BF8();
      sub_10056DE58();

      --v14;
    }

    while (v14);
  }

  return a4(v21 == 0);
}

uint64_t sub_1001AF1D4()
{
  v7 = sub_1005735D8();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100573598();
  __chkstk_darwin(v3);
  v4 = sub_100570BC8();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_1000D3B98(0, &qword_1006E84A0);
  sub_100570BA8();
  v8 = _swiftEmptyArrayStorage;
  sub_1001B00BC(&qword_1006E86A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100009DCC(&qword_1006E86A8);
  sub_1001B0104(&qword_1006E86B0, &qword_1006E86A8);
  sub_100573DA8();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_100573628();
  qword_1006E85A0 = result;
  return result;
}

uint64_t BackgroundRefreshController.deinit()
{
  sub_1000F3E14(*(v0 + 16));

  return v0;
}

uint64_t BackgroundRefreshController.__deallocating_deinit()
{
  sub_1000F3E14(*(v0 + 16));

  return swift_deallocClassInstance();
}

double sub_1001AF49C()
{
  sub_100009DCC(&qword_1006E86B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057B500;
  if (qword_1006E4DF8 != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  v1 = HIBYTE(word_1006E85B0);
  v2 = qword_1006E85B8;
  v3 = word_1006E85C0;
  v4 = *(&word_1006E85C0 + 1);
  *(v0 + 32) = word_1006E85B0;
  *(v0 + 33) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 49) = v4;
  if (qword_1006E4E00 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  v5 = HIBYTE(word_1006E85C8);
  result = *&qword_1006E85D0;
  v7 = byte_1006E85D8;
  v8 = *&byte_1006E85D9;
  *(v0 + 56) = word_1006E85C8;
  *(v0 + 57) = v5;
  *(v0 + 64) = result;
  *(v0 + 72) = v7;
  *(v0 + 73) = v8;
  off_1006E85A8 = v0;
  return result;
}

unint64_t sub_1001AF5C4()
{
  result = qword_1006E85E0;
  if (!qword_1006E85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E85E0);
  }

  return result;
}

uint64_t sub_1001AF618(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E8040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AF688()
{

  return swift_deallocObject();
}

unint64_t sub_1001AF720()
{
  result = qword_1006E8698;
  if (!qword_1006E8698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8698);
  }

  return result;
}

void sub_1001AF774()
{
  if (qword_1006E4E08 != -1)
  {
    swift_once();
  }

  sub_100009DCC(&qword_1006E8490);
  UnfairLock.locked<A>(_:)(sub_1001A9E38);

  word_1006E85B0 = 256;
  qword_1006E85B8 = 0x40E5180000000000;
  word_1006E85C0 = 257;
  byte_1006E85C2 = 0;
}

void sub_1001AF854()
{
  if (qword_1006E4E08 != -1)
  {
    swift_once();
  }

  sub_100009DCC(&qword_1006E8490);
  UnfairLock.locked<A>(_:)(sub_1000C5F9C);
  v0 = v3;
  if (v3 && (sub_1001AF960(v3, &v3), v0, (v4 & 1) == 0))
  {
    v1 = 0;
    v2 = v3;
  }

  else
  {
    v1 = 1;
    v2 = 0x40D5180000000000;
  }

  word_1006E85C8 = 257;
  qword_1006E85D0 = v2;
  byte_1006E85D8 = v1;
  *&byte_1006E85D9 = 515;
}

void sub_1001AF960(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100572898();
  v5 = [a1 dictionaryForBagKey:v4];

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = sub_1005726A8();

  v7 = sub_100350780(v6);

  if (!v7)
  {
    goto LABEL_12;
  }

  if (!*(v7 + 16))
  {
    goto LABEL_11;
  }

  v8 = sub_1000EB89C(0xD00000000000001ELL, 0x80000001005AF9E0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_100081F38(*(v7 + 56) + 32 * v8, v15);

  sub_100009DCC(&unk_1006EB150);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    *a2 = 0;
    v13 = 1;
    goto LABEL_13;
  }

  if (!*(v14 + 16) || (v10 = sub_1000EB89C(0xD00000000000001DLL, 0x80000001005AFCA0), (v11 & 1) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_100081F38(*(v14 + 56) + 32 * v10, v15);

  v12 = swift_dynamicCast();
  if ((v12 & 1) == 0)
  {
    *a2 = 0;
  }

  v13 = v12 ^ 1;
LABEL_13:
  *(a2 + 8) = v13;
}

uint64_t sub_1001AFB1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "allowsPumpkinContent";
  }

  else
  {
    v4 = "updateSubscribedPlaylists";
  }

  if (*a2)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (*a2)
  {
    v6 = "updateSubscribedPlaylists";
  }

  else
  {
    v6 = "allowsPumpkinContent";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100574498();
  }

  return v8 & 1;
}

Swift::Int sub_1001AFBC4()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_1001AFC40()
{
  sub_1005729F8();
}

Swift::Int sub_1001AFCA8()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_1001AFD20@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1006841C0;
  v8._object = v3;
  v5 = sub_100574238(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1001AFD80(unint64_t *a1@<X8>)
{
  v2 = "updateSubscribedPlaylists";
  v3 = 0xD000000000000018;
  if (!*v1)
  {
    v3 = 0xD000000000000019;
    v2 = "allowsPumpkinContent";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

Swift::Int sub_1001AFDC8()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_1001AFE7C()
{
  sub_1005729F8();
}

Swift::Int sub_1001AFF1C()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_1001AFFCC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B0070(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1001AFFFC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "ribedPlaylistsDate";
  if (v2 == 2)
  {
    v4 = 0xD000000000000028;
  }

  else
  {
    v4 = 0xD000000000000027;
  }

  if (v2 != 2)
  {
    v3 = "efreshServerLandingPages";
  }

  v5 = 0xD000000000000032;
  if (*v1)
  {
    v6 = "efreshPinnedSubscribedPlaylists";
  }

  else
  {
    v5 = 0xD00000000000002FLL;
    v6 = "updateServerLandingPages";
  }

  if (*v1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v5 = v4;
    v7 = v3;
  }

  *a1 = v5;
  a1[1] = v7 | 0x8000000000000000;
}

uint64_t sub_1001B0070(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100684210;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1001B00BC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B0104(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B0158()
{

  return swift_deallocObject();
}

uint64_t sub_1001B01B0()
{

  return swift_deallocObject();
}

uint64_t sub_1001B01F8()
{
  v1 = *(v0 + 32);
  UnfairLock.locked<A>(_:)(sub_1001B039C);
  return v1(v3);
}

uint64_t sub_1001B0284()
{

  return swift_deallocObject();
}

uint64_t sub_1001B02CC()
{

  return swift_deallocObject();
}

uint64_t sub_1001B033C(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, __n128), __n128 a3)
{
  if (*(v3 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  a3.n128_u64[0] = *(v3 + 24);
  return a2(a1, v4 | *(v3 + 16), *(v3 + 32) | (*(v3 + 33) << 8) | (*(v3 + 34) << 16), *(v3 + 40), *(v3 + 48), a3);
}

uint64_t sub_1001B039C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  *a1 = *v3;
  return result;
}

uint64_t sub_1001B03F4()
{

  return swift_deallocObject();
}

__n128 initializeBufferWithCopyOfBuffer for BackgroundTaskConfiguration(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundTaskConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[19])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundTaskConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1001B0500()
{
  result = qword_1006E86C0[0];
  if (!qword_1006E86C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006E86C0);
  }

  return result;
}

uint64_t BagControlledValue.init(fallback:reader:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v17 = a2;
  v18 = a1;
  v6 = sub_100573C28();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = *(a3 - 8);
  __chkstk_darwin(v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E4E08 != -1)
  {
    swift_once();
  }

  sub_100009DCC(&qword_1006E8490);
  UnfairLock.locked<A>(_:)(sub_1000C5F9C);
  v14 = v19;
  if (!v19)
  {
    goto LABEL_6;
  }

  v17(v19);

  if ((*(v11 + 48))(v10, 1, a3) == 1)
  {
    (*(v7 + 8))(v10, v6);
LABEL_6:
    *(a4 + *(type metadata accessor for BagControlledValue() + 28)) = 1;
    return (*(v11 + 32))(a4, v18, a3);
  }

  (*(v11 + 8))(v18, a3);
  v16 = *(v11 + 32);
  v16(v13, v10, a3);
  *(a4 + *(type metadata accessor for BagControlledValue() + 28)) = 0;
  return (v16)(a4, v13, a3);
}

Swift::Int sub_1001B0864()
{
  sub_100574678();
  LaunchURL.Resolver.PerformOption.hash(into:)(v2, *v0);
  return sub_1005746C8();
}

uint64_t sub_1001B08E0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BagControlledValue.Source();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001B096C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFE)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_1001B0AD4(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t *BagProvider.shared.unsafeMutableAddressor()
{
  if (qword_1006E4E08 != -1)
  {
    swift_once();
  }

  return &static BagProvider.shared;
}

uint64_t BagProvider.createObserver(handler:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BagProvider.Observer();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  swift_weakAssign();
  v5 = *(v4 + 24);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;

  sub_1000F3E14(v5);
  UnfairLock.locked<A>(_:)(sub_1001964CC);
  sub_1001B1500(0);
  return v4;
}

uint64_t BagProvider.bag.getter()
{
  sub_100009DCC(&qword_1006E8490);
  UnfairLock.locked<A>(_:)(sub_1001B1780);
  return v1;
}

void BagProvider.getBag(completion:)(void (*a1)(), uint64_t a2)
{
  sub_100009DCC(&qword_1006E8490);
  UnfairLock.locked<A>(_:)(sub_1001B381C);
  if (v9)
  {
    a1();
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v4 = swift_allocObject();
    swift_weakInit();
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    swift_weakAssign();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    v6[2] = a1;
    v6[3] = a2;
    v6[4] = v5;
    v6[5] = v4;
    v7 = *(v4 + 24);
    *(v4 + 24) = sub_1001A9A80;
    *(v4 + 32) = v6;

    sub_1000F3E14(v7);

    __chkstk_darwin(v8);
    UnfairLock.locked<A>(_:)(sub_1001A9A8C);
    sub_1001B1500(0);
  }
}

void sub_1001B10BC()
{
  if (qword_1006E4EA8 != -1)
  {
    swift_once();
  }

  v0 = static ICClientInfo.music;
  type metadata accessor for BagProvider();
  swift_allocObject();
  v1 = v0;
  v2 = sub_1001B2F18(v1);

  static BagProvider.shared = v2;
}

uint64_t static BagProvider.shared.getter()
{
  if (qword_1006E4E08 != -1)
  {
    swift_once();
  }
}

_BYTE *sub_1001B11C8@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  v3 = &result[OBJC_IVAR____TtC9MusicCore11BagProvider_result];
  if (result[OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8] == 1)
  {
    v4 = *v3;
    result = *v3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1001B1224(uint64_t a1, void (*a2)(void))
{
  a2();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    __chkstk_darwin(v3);
    sub_100009DCC(&unk_1006E8AC0);
    UnfairLock.locked<A>(_:)(sub_1001B2DC0);
  }

  return result;
}

uint64_t sub_1001B131C@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v6 = result;
  if (!result)
  {
    goto LABEL_6;
  }

  v7 = OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers;
  swift_beginAccess();

  v8 = sub_1001B3270((v6 + v7), a1);
  if (!v2)
  {
    v9 = v8;

    v10 = *(v6 + v7);
    if (v10 >> 62)
    {
      v11 = sub_100574178();
      if (v11 >= v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11 >= v9)
      {
LABEL_5:
        sub_1000F5374(v9, v11);
        swift_endAccess();

LABEL_6:
        *a2 = v6 == 0;
        return result;
      }
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1001B1440(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers;
  swift_beginAccess();

  sub_100572CE8();
  if (*((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
  return swift_endAccess();
}

void sub_1001B1500(char a1)
{
  v2 = v1;
  UnfairLock.locked<A>(_:)(sub_1001B3498);
  if (LOBYTE(aBlock[0]) == 1)
  {
    UnfairLock.locked<A>(_:)(sub_1001B34D0);
    v4 = [objc_opt_self() activeAccount];
    v5 = [objc_allocWithZone(ICStoreRequestContext) initWithIdentity:v4 clientInfo:*(v1 + 16)];

    v6 = [objc_opt_self() sharedBagProvider];
    aBlock[4] = sub_1001B34E4;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000128FC;
    aBlock[3] = &unk_100690168;
    v7 = _Block_copy(aBlock);

    [v6 getBagForRequestContext:v5 forceRefetch:a1 & 1 withCompletionHandler:v7];
    _Block_release(v7);
  }
}

void sub_1001B16C0(uint64_t a1, uint64_t a2, void **a3)
{
  swift_beginAccess();
  sub_100009DCC(&qword_1006E8AB8);
  WeakArray.append(_:)();
  swift_endAccess();
  v5 = 0;
  v6 = (a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) == 1)
  {
    v5 = *v6;
    v7 = *v6;
  }

  v8 = *a3;
  *a3 = v5;
}

id sub_1001B1780@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) == 1)
  {
    v4 = *v3;
    result = *v3;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1001B17DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001B1814()
{

  return swift_deallocObject();
}

uint64_t sub_1001B1864@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100009DCC(&qword_1006E87F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost;
  swift_beginAccess();
  sub_1001B359C(v1 + v9, v8);
  v10 = type metadata accessor for Signpost();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_1001B36E0(v8, a1);
  }

  sub_1001B2A38(v8);
  if (qword_1006E4E50 != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.musicBag;

  Signpost.init(name:object:log:)("Bag", 3, 2, v12, a1);
  sub_1001B360C(a1, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1001B3670(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1001B1A70()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001B1AC8();
  }

  return result;
}

void sub_1001B1AC8()
{
  UnfairLock.locked<A>(_:)(sub_1001B374C);

  if (v5 == 1)
  {
    UnfairLock.locked<A>(_:)(sub_1001B3790);
    __chkstk_darwin(v0);
    UnfairLock.locked<A>(_:)(sub_1001B3804);

    v1 = sub_10056DF68();
    v2 = sub_100573448();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Notification triggered to update bag: storefrontChanged", v3, 2u);
    }

    sub_1001B1500(1);
  }
}

void sub_1001B1C64(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Signpost();
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + OBJC_IVAR____TtC9MusicCore11BagProvider_lock);
  UnfairLock.locked<A>(_:)(sub_1001B3504);
  if (v27)
  {
    sub_1001B1500(1);
    v11 = sub_1001B37EC;
LABEL_19:
    UnfairLock.locked<A>(_:)(v11);
    return;
  }

  v12 = a1;
  if (!a1)
  {
    if (!a2)
    {
      goto LABEL_23;
    }

    swift_errorRetain();
    v12 = sub_10056C718();

    v10 = v12;
  }

  v27 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v10);
  *(&v23 - 4) = a3;
  *(&v23 - 3) = v12;
  LOBYTE(v21) = v13;
  BYTE1(v21) = 1;
  v22 = &v27;
  v14 = a1;
  UnfairLock.locked<A>(_:)(sub_1001B3518);
  if (!a1)
  {
    goto LABEL_18;
  }

  v15 = v27;
  if (v27 >> 62)
  {
    v16 = sub_100574178();
    if (!v16)
    {
LABEL_18:

      sub_1001B1864(v8);
      Signpost.end(dso:)(&_mh_execute_header);

      sub_1001B3530(v8);
      v11 = sub_1001B358C;
      goto LABEL_19;
    }
  }

  else
  {
    v16 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  v25 = v8;
  v26 = v9;
  if (v16 >= 1)
  {
    v24 = v12;
    v17 = v12;
    v18 = 0;
    while ((v15 & 0xC000000000000001) == 0)
    {
      v20 = *(v15 + 8 * v18 + 32);

      v19 = *(v20 + 24);
      if (v19)
      {
        goto LABEL_16;
      }

LABEL_11:
      ++v18;

      if (v16 == v18)
      {

        v8 = v25;
        v12 = v24;
        goto LABEL_18;
      }
    }

    v19 = *(sub_100573F58() + 24);
    if (!v19)
    {
      goto LABEL_11;
    }

LABEL_16:

    v19(v17);
    sub_1000F3E14(v19);
    goto LABEL_11;
  }

  __break(1u);
LABEL_23:
  LODWORD(v22) = 0;
  v21 = 149;
  sub_1005740F8();
  __break(1u);
}

uint64_t sub_1001B1FB0()
{
  swift_beginAccess();
  sub_100009DCC(&qword_1006E8AB8);
  WeakArray.remove(_:)();
  return swift_endAccess();
}

void sub_1001B2034()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  if (*(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8) != 1)
    {
      return;
    }

    v3 = v2;
    v4 = sub_10056DF68();
    v5 = sub_100573448();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Successfully loaded a bag from iTunesCloud", v6, 2u);
    }

    v7 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_retry);
    Strong = swift_weakLoadStrong();
    swift_weakAssign();
    v9 = v7;
    sub_1001B24F8(Strong);
  }

  else
  {
    v3 = v2;
    v10 = sub_10056DF68();
    v11 = sub_100573428();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = [v3 code];
      _os_log_impl(&_mh_execute_header, v10, v11, "Error retrieving bag: %ld", v12, 0xCu);
    }

    v13 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_retry);
    v14 = swift_weakLoadStrong();
    swift_weakAssign();
    v9 = v13;
    sub_1001B24F8(v14);
  }
}

void sub_1001B2254(uint64_t a1, void *a2, char a3, char a4, uint64_t *a5)
{
  v7 = a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result;
  v8 = *(a1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  *v7 = a2;
  *(v7 + 8) = a3;
  v9 = a2;

  sub_1001B2034();
  if (a4)
  {
    swift_beginAccess();
    type metadata accessor for BagProvider.Observer();

    v10 = WeakArray.allElements.getter();

    swift_beginAccess();

    sub_1000DA530(v11);
    *a5 = v10;
  }
}

uint64_t BagProvider.Observer.deinit()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    UnfairLock.locked<A>(_:)(sub_1001B240C);
  }

  swift_weakDestroy();
  sub_1000F3E14(*(v0 + 24));
  return v0;
}

uint64_t BagProvider.Observer.__deallocating_deinit()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    UnfairLock.locked<A>(_:)(sub_1001B37D4);
  }

  swift_weakDestroy();
  sub_1000F3E14(*(v0 + 24));
  return swift_deallocClassInstance();
}

void sub_1001B24F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10056DF88();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  Strong = swift_weakLoadStrong();
  if (!a1)
  {
    if (!Strong)
    {
      return;
    }

LABEL_7:
    if (swift_weakLoadStrong())
    {

      v13 = swift_weakLoadStrong();
      if (v13)
      {
        (*(v5 + 16))(v10, v13 + OBJC_IVAR____TtC9MusicCore11BagProvider_logger, v4);

        v14 = sub_10056DF68();
        v15 = sub_100573448();
        if (!os_log_type_enabled(v14, v15))
        {
          v17 = &selRef_registerObserver_;
          goto LABEL_19;
        }

        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Beginning observation to retry loading bag", v16, 2u);
        v17 = &selRef_registerObserver_;
LABEL_14:

LABEL_19:

        (*(v5 + 8))(v10, v4);
        goto LABEL_20;
      }

      v17 = &selRef_registerObserver_;
    }

    else
    {
      v18 = swift_weakLoadStrong();
      if (v18)
      {
        (*(v5 + 16))(v8, v18 + OBJC_IVAR____TtC9MusicCore11BagProvider_logger, v4);

        v14 = sub_10056DF68();
        v19 = sub_100573448();
        if (!os_log_type_enabled(v14, v19))
        {
          v17 = &selRef_unregisterObserver_;
          v10 = v8;
          goto LABEL_19;
        }

        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v14, v19, "Stopping observation to retry loading bag", v20, 2u);
        v17 = &selRef_unregisterObserver_;
        v10 = v8;
        goto LABEL_14;
      }

      v17 = &selRef_unregisterObserver_;
    }

LABEL_20:
    v21 = [objc_opt_self() sharedMonitor];
    [v21 *v17];

    return;
  }

  if (!Strong)
  {
    goto LABEL_7;
  }

  v12 = Strong;

  if (v12 != a1)
  {
    goto LABEL_7;
  }
}

id sub_1001B28DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BagProvider.Retry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t BagProvider.deinit()
{
  sub_1001B2A38(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost);

  v1 = OBJC_IVAR____TtC9MusicCore11BagProvider_logger;
  v2 = sub_10056DF88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1001B2A38(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E87F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BagProvider.__deallocating_deinit()
{
  BagProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BagProvider()
{
  result = qword_1006E8860;
  if (!qword_1006E8860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B2B4C()
{
  sub_1001B2C60();
  if (v0 <= 0x3F)
  {
    sub_10056DF88();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001B2C60()
{
  if (!qword_1006E8870)
  {
    type metadata accessor for Signpost();
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E8870);
    }
  }
}

uint64_t sub_1001B2CDC(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s7PurposeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s7PurposeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001B2D98(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

NSString sub_1001B2DDC()
{
  result = sub_100572898();
  qword_1006E87D0 = result;
  return result;
}

unint64_t sub_1001B2E14(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_100574178();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = sub_100573F58();
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_1001B2F18(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Signpost();
  __chkstk_darwin(v4);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 56))(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost, 1, 1);
  *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_bindings) = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v1 + v8) = UnfairLock.init()();
  *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers) = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC9MusicCore11BagProvider_durableObservers;
  v10 = type metadata accessor for BagProvider.Observer();
  *(v2 + v9) = WeakArray.init(_:)(_swiftEmptyArrayStorage, v10);
  if (qword_1006E4E50 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.musicBag;
  sub_10056DF98();
  *(v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_isFetching) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_deferReload) = 0;
  v12 = OBJC_IVAR____TtC9MusicCore11BagProvider_retry;
  *(v2 + v12) = [objc_allocWithZone(type metadata accessor for BagProvider.Retry()) init];
  *(v2 + 16) = a1;
  v13 = v2 + OBJC_IVAR____TtC9MusicCore11BagProvider_result;
  *v13 = 0;
  *(v13 + 8) = 2;
  v14 = a1;
  sub_1001B1864(v6);
  Signpost.begin(dso:)(&_mh_execute_header);
  sub_1001B3530(v6);
  sub_1001B1500(0);
  type metadata accessor for Whitetail.Binding();
  if (qword_1006E4E10 != -1)
  {
    swift_once();
  }

  v16 = qword_1006E87D0;
  v17 = qword_1006E87D0;
  location = CFRange.init(_:)(*(&v15 - 1)).location;
  v24[3] = &type metadata for DistributedNotificationTrigger;
  v24[4] = &protocol witness table for DistributedNotificationTrigger;
  v24[0] = location;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v16;
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(v24, 0, sub_1001B3744, v19);
  v21 = OBJC_IVAR____TtC9MusicCore11BagProvider_bindings;
  swift_beginAccess();

  sub_100572CE8();
  if (*((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
  swift_endAccess();

  return v2;
}

uint64_t sub_1001B3270(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_1001B2E14(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_100574178();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_100574178())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = sub_100573F58();
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = sub_100573F58();
        v14 = sub_100573F58();
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1000F2364(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = sub_1000F2364(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_100574178();
}

uint64_t sub_1001B34EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001B3530(uint64_t a1)
{
  v2 = type metadata accessor for Signpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B359C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E87F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B360C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B3670(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E87F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B36E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1001B374C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  v3 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t TabIdentifier.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7972617262696CLL;
  v2 = 0x736F65646976;
  if (a1 != 5)
  {
    v2 = 0x7473696C79616C70;
  }

  v3 = 0x6F69646172;
  if (a1 != 3)
  {
    v3 = 0x686372616573;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6F4E6E657473696CLL;
  if (a1 != 1)
  {
    v4 = 0x6573776F7262;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001B3920()
{
  sub_1005729F8();
}

uint64_t sub_1001B3A2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore13TabIdentifierO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1001B3A5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972617262696CLL;
  v5 = 0xE600000000000000;
  v6 = 0x736F65646976;
  if (v2 != 5)
  {
    v6 = 0x7473696C79616C70;
    v5 = 0xE900000000000073;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F69646172;
  result = 0x686372616573;
  if (v2 != 3)
  {
    v8 = 0x686372616573;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xE900000000000077;
  v11 = 0x6F4E6E657473696CLL;
  if (v2 != 1)
  {
    v11 = 0x6573776F7262;
    v10 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  v14 = __OFSUB__(v2, 2);
  v12 = v2 == 2;
  v13 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v15 = v4;
  }

  else
  {
    v15 = v6;
  }

  if (!(v13 ^ v14 | v12))
  {
    v3 = v5;
  }

  *a1 = v15;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001B3B64()
{
  sub_1005729F8();
}

uint64_t sub_1001B3C70@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B3D74(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1001B3CA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x636973756D5F796DLL;
  v5 = 0xE600000000000000;
  v6 = 0x686372616573;
  if (v2 != 5)
  {
    v6 = 0x6F65646976;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6573776F7262;
  if (v2 != 3)
  {
    v8 = 0x6F69646172;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x756F795F726F66;
  if (v2 != 1)
  {
    v10 = 0x6E5F6E657473696CLL;
    v9 = 0xEA0000000000776FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1001B3D74(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100682ED8;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t _s9MusicCore13TabIdentifierO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100684290;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1001B3E10()
{
  result = qword_1006E8AD0;
  if (!qword_1006E8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8AD0);
  }

  return result;
}

unint64_t sub_1001B3E68()
{
  result = qword_1006E8AD8;
  if (!qword_1006E8AD8)
  {
    sub_100010324(&qword_1006E8AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8AD8);
  }

  return result;
}

unint64_t sub_1001B3ED0()
{
  result = qword_1006E8AE8;
  if (!qword_1006E8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8AE8);
  }

  return result;
}

unint64_t sub_1001B3F50()
{
  result = qword_1006E8AF0;
  if (!qword_1006E8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E8AF0);
  }

  return result;
}

uint64_t sub_1001B3FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000CC8C(a3, v25 - v10, &qword_1006E6420);
  v12 = sub_100572F48();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001036C(v11, &qword_1006E6420);
  }

  else
  {
    sub_100572F38();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100572E78();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1005729C8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10001036C(a3, &qword_1006E6420);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001036C(a3, &qword_1006E6420);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}