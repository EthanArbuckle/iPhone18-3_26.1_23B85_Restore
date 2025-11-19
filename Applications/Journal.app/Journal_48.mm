unint64_t sub_10051A9FC()
{
  result = qword_100AE76F0;
  if (!qword_100AE76F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE76F0);
  }

  return result;
}

unint64_t sub_10051AA50()
{
  result = qword_100AE76F8;
  if (!qword_100AE76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE76F8);
  }

  return result;
}

unint64_t sub_10051AAA8()
{
  result = qword_100AE7700;
  if (!qword_100AE7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7700);
  }

  return result;
}

__n128 sub_10051AAFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10051AB20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10051AB68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10051AD20()
{
  result = qword_100AE7708;
  if (!qword_100AE7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7708);
  }

  return result;
}

unint64_t sub_10051AD78()
{
  result = qword_100AE7710;
  if (!qword_100AE7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7710);
  }

  return result;
}

unint64_t sub_10051ADD0()
{
  result = qword_100AE7718;
  if (!qword_100AE7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7718);
  }

  return result;
}

uint64_t sub_10051AE24(uint64_t a1)
{
  v2 = type metadata accessor for JournalMembershipBadge();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10051AEA0()
{
  result = qword_100AE7728;
  if (!qword_100AE7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7728);
  }

  return result;
}

void sub_10051AF8C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TokenTypeIdentifier();
    if (v1 <= 0x3F)
    {
      sub_10000A394(319, &unk_100AE7830);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10051B094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10051B168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10051B244()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10000A394(319, &unk_100AE7830);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10051B328()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1003AE0B8();
    if (v1 <= 0x3F)
    {
      sub_10000A394(319, &qword_100AD5A70);
      if (v2 <= 0x3F)
      {
        sub_10000A394(319, &unk_100AE7830);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10051B47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  result = type metadata accessor for UUID();
  if (v10 <= 0x3F)
  {
    result = a6(319, a4, a5);
    if (v11 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10051B6A0(void *a1, void (*a2)(id))
{
  if ([a1 sender])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_1000065A8(0, &qword_100AE7B88);
    if (swift_dynamicCast())
    {
      a2([v3 isOn]);
    }
  }

  else
  {
    sub_1000261D4(v6);
  }
}

void sub_10051B784()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch_isMixed;
  if (v0[OBJC_IVAR____TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch_isMixed] == 1)
  {
    v3 = sub_10051B874();
    v4 = [v3 superview];

    if (v4)
    {
    }

    else
    {
      v5 = OBJC_IVAR____TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch____lazy_storage___mixedStateImageView;
      [v1 addSubview:*&v1[OBJC_IVAR____TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch____lazy_storage___mixedStateImageView]];
      v6 = *&v1[v5];
      sub_100013178(0.0);
    }
  }

  v7 = sub_10051B874();
  [v7 setHidden:(v1[v2] & 1) == 0];
}

id sub_10051B874()
{
  v1 = OBJC_IVAR____TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch____lazy_storage___mixedStateImageView;
  v2 = *(v0 + OBJC_IVAR____TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch____lazy_storage___mixedStateImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch____lazy_storage___mixedStateImageView);
  }

  else
  {
    v4 = sub_10051B8D4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10051B8D4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  v3 = [objc_opt_self() configurationWithWeight:8];
  [v2 setPreferredSymbolConfiguration:v3];

  v4 = [objc_opt_self() labelColor];
  [v2 setTintColor:v4];

  [v2 setContentMode:4];
  return v2;
}

uint64_t sub_10051BE80()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  static UIButton.Configuration.borderless()();
  UIButton.Configuration.updated(for:)();
  v24 = *(v7 + 8);
  v24(v9, v6);
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() systemImageNamed:v13];

  UIButton.Configuration.image.setter();
  v15 = objc_opt_self();
  v16 = [v15 labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000F24EC(&unk_100AD4780);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100941D60;
  *(v17 + 32) = [v15 tintColor];
  *(v17 + 40) = [v15 systemFillColor];
  sub_1000065A8(0, &qword_100AD4C70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [objc_opt_self() configurationWithPaletteColors:isa];

  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v20 = [v1 traitCollection];
  [v20 userInterfaceIdiom];

  UIButton.Configuration.contentInsets.setter();
  static UIBackgroundConfiguration.clear()();
  UIButton.Configuration.background.setter();
  [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.001];
  v21 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v21(v25, 0);
  (*(v7 + 16))(v4, v12, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  UIButton.configuration.setter();
  return (v24)(v12, v6);
}

id sub_10051C2F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10051C358()
{
  v0 = sub_1000F24EC(&unk_100ADE720);
  sub_100006118(v0, qword_100B2FA90);
  sub_10000617C(v0, qword_100B2FA90);
  sub_1000F24EC(&qword_100ADA090);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100940080;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10051C4A8()
{
  v0 = sub_1000F24EC(&unk_100ADE720);
  sub_100006118(v0, qword_100B2FAA8);
  sub_10000617C(v0, qword_100B2FAA8);
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  [v1 integerForKey:v2];

  sub_1000F24EC(&qword_100ADA090);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100940080;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10051C678()
{
  if (qword_100ACF988 != -1)
  {
    swift_once();
  }

  v1 = sub_100027494(1);
  if (qword_100ACFF10 != -1)
  {
    v11 = v1;
    v12 = v2;
    swift_once();
    v1 = v11;
    v2 = v12;
  }

  v3 = v1 == 1;
  if (v1 == 2)
  {
    v3 = 2;
  }

  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = sub_1000F24EC(&qword_100ADC240);
  sub_10000617C(v5, qword_100B2FAC0);
  *(v0 + 40) = v4;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  v6 = sub_100027494(0);
  v8 = v6 == 1;
  if (v6 == 2)
  {
    v8 = 2;
  }

  if (v7)
  {
    v8 = 0;
  }

  byte_100B2FAD8 = v8;
  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_10051C808()
{
  result = qword_100AEBEF0;
  if (!qword_100AEBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBEF0);
  }

  return result;
}

unint64_t sub_10051C870(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5A220, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10051C8BC()
{
  swift_getWitnessTable();

  return == infix<A>(_:_:)();
}

uint64_t sub_10051C930(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_10051C99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_10051CA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

unint64_t sub_10051CA7C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10051C870(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10051CAAC(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = swift_isaMask & *v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return _swift_task_switch(sub_10051CB74, v4, v6);
}

uint64_t sub_10051CB74()
{
  (*(*(*(v0[3] + 80) - 8) + 56))(v0[2], 1, 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10051CC10()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  *v1 = v0[13];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  sub_10007F214(v1);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10051CCF0()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for OperationBase();
  objc_msgSendSuper2(&v6, "cancel");
  v1 = *&v0[qword_100AE7BA8];
  swift_getKeyPath();
  type metadata accessor for OperationBase.Locked();
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_10008F5AC((v1 + v2), &v5);
  os_unfair_lock_unlock((v1 + v3));

  if (v5)
  {
    Task.cancel()();
  }

  return result;
}

uint64_t sub_10051CE60()
{

  swift_getAtKeyPath();

  return v1;
}

void sub_10051CED4(void *a1)
{
  v1 = a1;
  sub_10051CCF0();
}

id sub_10051CF1C(void *a1)
{
  v1 = a1;
  sub_10051CF84();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

uint64_t sub_10051CF84()
{
  v0 = sub_10004D8C8();
  if (!v0)
  {
    return 0x7964616572;
  }

  if (v0 == 1)
  {
    return 0x6E69747563657865;
  }

  return 0x64656873696E6966;
}

id sub_10051CFF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OperationBase();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10051D058()
{
  result = qword_100AE0D58;
  if (!qword_100AE0D58)
  {
    type metadata accessor for CancellationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0D58);
  }

  return result;
}

uint64_t sub_10051D0E8(uint64_t a1)
{
  v3 = type metadata accessor for MusicAuthorization.Status();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v1[12] = v4;
  v1[13] = v6;

  return _swift_task_switch(sub_10051D200, v4, v6);
}

uint64_t sub_10051D200()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[6];
  v4 = v0[7];
  static MusicAuthorization.currentStatus.getter();
  (*(v4 + 16))(v1, v2, v3);
  v5 = (*(v4 + 88))(v1, v3);
  if (v5 == enum case for MusicAuthorization.Status.notDetermined(_:))
  {
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_10051D3DC;
    v7 = v0[9];

    return static MusicAuthorization.request()(v7);
  }

  else
  {
    v8 = v0[6];
    v9 = v0[7];
    if (v5 == enum case for MusicAuthorization.Status.denied(_:))
    {
      (*(v9 + 8))(v0[11], v8);
      v10 = 1;
    }

    else
    {
      v11 = enum case for MusicAuthorization.Status.authorized(_:);
      v12 = *(v9 + 8);
      v13 = v5;
      v12(v0[11], v8);
      if (v13 == v11)
      {
        v10 = 0;
      }

      else
      {
        v12(v0[10], v0[6]);
        v10 = 2;
      }
    }

    v14 = v0[1];

    return v14(v10);
  }
}

uint64_t sub_10051D3DC()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_10051D4FC, v3, v2);
}

uint64_t sub_10051D4FC()
{
  (*(v0[7] + 104))(v0[8], enum case for MusicAuthorization.Status.authorized(_:), v0[6]);
  sub_10051D680();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v1 = 0;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v1 = 0;
  }

  else
  {
    v1 = 2;
  }

  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  v5 = *(v0[7] + 8);
  v5(v0[8], v4);
  v5(v3, v4);
  v5(v2, v4);

  v6 = v0[1];

  return v6(v1);
}

unint64_t sub_10051D680()
{
  result = qword_100AE1858;
  if (!qword_100AE1858)
  {
    type metadata accessor for MusicAuthorization.Status();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1858);
  }

  return result;
}

uint64_t sub_10051D6D8()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE7DB0);
  sub_10000617C(v0, qword_100AE7DB0);
  return Logger.init(subsystem:category:)();
}

id sub_10051D78C(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE2C28);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for JournalMO();
  v10 = static JournalMO.fetchRequest()();
  sub_1000F24EC(&qword_100AE7E90);
  v11 = v3;
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v32 = *(v3 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100940080;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  v33 = v9;
  v14 = static JournalMO.namedJournalsSortDescriptors()();
  v34 = v13;
  sub_1006ADEC0(v14);
  v15 = v34;
  v16 = *(v34 + 2);
  if (v16)
  {
    v28 = v10;
    v29 = a1;
    v34 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v17 = sub_1000065A8(0, &qword_100AD5B00);
    v27 = v15;
    v18 = v15 + v12;
    v19 = *(v11 + 16);
    v30 = v17;
    v31 = v11 + 16;
    do
    {
      v19(v8, v18, v2);
      v19(v5, v8, v2);
      NSSortDescriptor.init<A>(_:)();
      (*(v11 + 8))(v8, v2);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v18 += v32;
      --v16;
    }

    while (v16);

    v10 = v28;
    a1 = v29;
  }

  else
  {
  }

  sub_1000065A8(0, &qword_100AD5B00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setSortDescriptors:isa];

  v21 = *(a1 + OBJC_IVAR____TtC7Journal33CustomJournalsDebugViewController_context);
  v22 = objc_allocWithZone(NSFetchedResultsController);
  v23 = v10;
  v24 = String._bridgeToObjectiveC()();
  v25 = [v22 initWithFetchRequest:v23 managedObjectContext:v21 sectionNameKeyPath:v24 cacheName:0];

  [v25 setDelegate:a1];
  return v25;
}

void sub_10051DAF4()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CustomJournalsDebugViewController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  sub_10051DEBC();
  if ([v0 collectionView])
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v1 = objc_allocWithZone(sub_1000F24EC(&qword_100AE7E98));
    v2 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v3 = *&v0[OBJC_IVAR____TtC7Journal33CustomJournalsDebugViewController_dataSource];
    *&v0[OBJC_IVAR____TtC7Journal33CustomJournalsDebugViewController_dataSource] = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_10051DC24(char a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for CustomJournalsDebugViewController();
  objc_msgSendSuper2(&v15, "viewWillAppear:", a1 & 1);
  v3 = sub_10051D76C();
  v14 = 0;
  v4 = [v3 performFetch:&v14];

  v5 = v14;
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACFF18 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000617C(v8, qword_100AE7DB0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to fetch journals: %@", v11, 0xCu);
      sub_100004F84(v12, &unk_100AD4BB0);
    }

    else
    {
    }
  }
}

id sub_10051DEBC()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.grouped(_:), v2, v8);
  UICollectionLayoutListConfiguration.init(appearance:)();
  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    sub_1000065A8(0, &unk_100AE7E80);
    v13 = static UICollectionViewCompositionalLayout.list(using:)();
    [v12 setCollectionViewLayout:v13];

    result = [v1 collectionView];
    if (result)
    {
      v14 = result;
      type metadata accessor for JournalCollectionCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = String._bridgeToObjectiveC()();
      [v14 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v16];

      return (*(v7 + 8))(v10, v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10051E104(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(UICollectionViewCell) init];
  }

  v6 = Strong;
  v7 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v9 = [a1 dequeueReusableCellWithReuseIdentifier:v7 forIndexPath:isa];

  type metadata accessor for JournalCollectionCell();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = *&v6[OBJC_IVAR____TtC7Journal33CustomJournalsDebugViewController_context];
    v20 = 0;
    v13 = [v12 existingObjectWithID:v4 error:&v20];
    v14 = v20;
    if (!v13)
    {
      v18 = v20;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      return v11;
    }

    v15 = v13;
    type metadata accessor for JournalMO();
    v16 = swift_dynamicCastClass();
    v17 = v14;
    if (!v16)
    {

      return v11;
    }

    sub_10051F208(v16);
  }

  else
  {

    v11 = [objc_allocWithZone(UICollectionViewCell) init];
  }

  return v11;
}

id sub_10051E3C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC7Journal33CustomJournalsDebugViewController_context;
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  v7 = *(*(qword_100B2F840 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC7Journal33CustomJournalsDebugViewController_dataSource] = 0;
  *&v3[OBJC_IVAR____TtC7Journal33CustomJournalsDebugViewController____lazy_storage___fetchedResultsController] = 0;
  v8 = v7;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for CustomJournalsDebugViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_10051E534(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal33CustomJournalsDebugViewController_context;
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  v4 = *(*(qword_100B2F840 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC7Journal33CustomJournalsDebugViewController_dataSource] = 0;
  *&v1[OBJC_IVAR____TtC7Journal33CustomJournalsDebugViewController____lazy_storage___fetchedResultsController] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CustomJournalsDebugViewController();
  v5 = v4;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10051E840()
{
  v0 = [objc_allocWithZone(UIImageView) init];
  [v0 setContentMode:1];
  LODWORD(v1) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v1];
  LODWORD(v2) = 1148846080;
  [v0 setContentCompressionResistancePriority:0 forAxis:v2];
  v3 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100941D60;
  v5 = [v0 widthAnchor];
  v6 = [v5 constraintEqualToConstant:40.0];

  *(v4 + 32) = v6;
  v7 = [v0 heightAnchor];

  v8 = [v7 constraintEqualToConstant:40.0];
  *(v4 + 40) = v8;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];

  return v0;
}

id sub_10051EA20(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10051EA84(uint64_t a1)
{
  sub_1000F24EC(&unk_100AD4780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100941D70;
  v3 = *(a1 + OBJC_IVAR____TtC7Journal21JournalCollectionCell_titleLabel);
  v4 = *(a1 + OBJC_IVAR____TtC7Journal21JournalCollectionCell_subtitleLabel);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = *(a1 + OBJC_IVAR____TtC7Journal21JournalCollectionCell_detailLabel);
  *(v2 + 48) = v5;
  v6 = objc_allocWithZone(UIStackView);
  sub_1000065A8(0, &qword_100ADC670);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v6 initWithArrangedSubviews:isa];

  [v11 setAxis:1];
  [v11 setSpacing:4.0];
  [v11 setAlignment:1];
  return v11;
}

id sub_10051EBBC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal21JournalCollectionCell_titleLabel;
  v10 = [objc_allocWithZone(UILabel) init];
  v11 = objc_opt_self();
  v12 = [v11 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v10 setFont:v12];

  [v10 setNumberOfLines:1];
  *&v4[v9] = v10;
  v13 = OBJC_IVAR____TtC7Journal21JournalCollectionCell_subtitleLabel;
  v14 = [objc_allocWithZone(UILabel) init];
  v15 = [v11 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v14 setFont:v15];

  [v14 setNumberOfLines:1];
  *&v4[v13] = v14;
  v16 = OBJC_IVAR____TtC7Journal21JournalCollectionCell_detailLabel;
  v17 = [objc_allocWithZone(UILabel) init];
  v18 = [v11 preferredFontForTextStyle:UIFontTextStyleBody];
  [v17 setFont:v18];

  [v17 setNumberOfLines:0];
  *&v4[v16] = v17;
  v19 = OBJC_IVAR____TtC7Journal21JournalCollectionCell_iconImageView;
  *&v4[v19] = sub_10051E840();
  *&v4[OBJC_IVAR____TtC7Journal21JournalCollectionCell____lazy_storage___stackView] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for JournalCollectionCell();
  v20 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  sub_10051EE20();

  return v20;
}

void sub_10051EE20()
{
  sub_1000F24EC(&unk_100AD4780);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100941D60;
  v2 = *&v0[OBJC_IVAR____TtC7Journal21JournalCollectionCell_iconImageView];
  *(v1 + 32) = v2;
  v3 = v2;
  *(v1 + 40) = sub_10051EA00();
  v4 = objc_allocWithZone(UIStackView);
  sub_1000065A8(0, &qword_100ADC670);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithArrangedSubviews:isa];

  [v6 setAxis:0];
  [v6 setSpacing:12.0];
  [v6 setAlignment:1];
  v7 = v6;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v0 contentView];
  [v8 addSubview:v7];

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100941830;
  v11 = [v7 topAnchor];
  v12 = [v0 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
  *(v10 + 32) = v14;
  v15 = [v7 leadingAnchor];
  v16 = [v0 contentView];
  v17 = [v16 leadingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:16.0];
  *(v10 + 40) = v18;
  v19 = [v7 trailingAnchor];
  v20 = [v0 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:-16.0];
  *(v10 + 48) = v22;
  v23 = [v7 bottomAnchor];

  v24 = [v0 contentView];
  v25 = [v24 bottomAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:-16.0];
  *(v10 + 56) = v26;
  sub_1000065A8(0, &qword_100AD8000);
  v27 = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints:v27];
}

void sub_10051F208(void *a1)
{
  v3 = type metadata accessor for MergeableColor();
  v138 = *(v3 - 8);
  v139 = v3;
  __chkstk_darwin(v3);
  v134 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD68C0);
  __chkstk_darwin(v5 - 8);
  v133 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v137 = &v133 - v8;
  v9 = type metadata accessor for Date();
  v142 = *(v9 - 8);
  v143 = v9;
  __chkstk_darwin(v9);
  v135 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v136 = &v133 - v12;
  __chkstk_darwin(v13);
  v15 = &v133 - v14;
  __chkstk_darwin(v16);
  v140 = &v133 - v17;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v133 - v23;
  v141 = v1;
  v25 = *(v1 + OBJC_IVAR____TtC7Journal21JournalCollectionCell_titleLabel);
  JournalMO.title.getter();
  if (v26 || (JournalMO.isDefaultJournal.getter() & 1) != 0)
  {
    goto LABEL_3;
  }

  if (([a1 userDeleted] & 1) == 0)
  {
    v126 = [a1 mergeableAttributes];
    if (!v126)
    {
      goto LABEL_3;
    }
  }

  if ([a1 userDeleted])
  {
    v127 = [a1 mergeableAttributes];
    if (v127)
    {

      v27 = 0;
      goto LABEL_4;
    }

LABEL_3:
    v27 = String._bridgeToObjectiveC()();

    goto LABEL_4;
  }

  v27 = 0;
LABEL_4:
  [v25 setText:v27];

  v28 = [a1 entries];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 count];
  }

  else
  {
    v30 = 0;
  }

  v31 = *(v141 + OBJC_IVAR____TtC7Journal21JournalCollectionCell_subtitleLabel);
  v144 = v30;
  v145[0] = dispatch thunk of CustomStringConvertible.description.getter();
  v145[1] = v32;
  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  if (v30 == 1)
  {
    v34 = 0x7972746E65;
  }

  else
  {
    v34 = 0x73656972746E65;
  }

  if (v30 == 1)
  {
    v35 = 0xE500000000000000;
  }

  else
  {
    v35 = 0xE700000000000000;
  }

  v36 = v35;
  String.append(_:)(*&v34);

  v37 = String._bridgeToObjectiveC()();

  [v31 setText:v37];

  v38 = [a1 id];
  if (v38)
  {
    v39 = v38;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v19 + 32))(v24, v21, v18);
    v145[0] = 540689481;
    v145[1] = 0xE400000000000000;
    v40._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v40);

    v41 = v145[0];
    v42 = v145[1];
    v43 = sub_10009BCC8(0, 1, 1, _swiftEmptyArrayStorage);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_10009BCC8((v44 > 1), v45 + 1, 1, v43);
    }

    (*(v19 + 8))(v24, v18);
    *(v43 + 2) = v45 + 1;
    v46 = &v43[16 * v45];
    *(v46 + 4) = v41;
    *(v46 + 5) = v42;
  }

  else
  {
    v43 = _swiftEmptyArrayStorage;
  }

  v47 = [a1 createdDate];
  if (v47)
  {
    v48 = v47;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v142 + 32))(v140, v15, v143);
    v49 = [objc_allocWithZone(NSDateFormatter) init];
    [v49 setDateStyle:2];
    [v49 setTimeStyle:1];
    strcpy(v145, "Created: ");
    WORD1(v145[1]) = 0;
    HIDWORD(v145[1]) = -385875968;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v51 = [v49 stringFromDate:isa];

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55._countAndFlagsBits = v52;
    v55._object = v54;
    String.append(_:)(v55);

    v56 = v145[0];
    v57 = v145[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_10009BCC8(0, *(v43 + 2) + 1, 1, v43);
    }

    v59 = *(v43 + 2);
    v58 = *(v43 + 3);
    if (v59 >= v58 >> 1)
    {
      v43 = sub_10009BCC8((v58 > 1), v59 + 1, 1, v43);
    }

    (*(v142 + 8))(v140, v143);
    *(v43 + 2) = v59 + 1;
    v60 = &v43[16 * v59];
    *(v60 + 4) = v56;
    *(v60 + 5) = v57;
  }

  v61 = [a1 updatedDate];
  v62 = v136;
  if (v61)
  {
    v63 = v135;
    v64 = v61;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v142 + 32))(v62, v63, v143);
    v65 = [objc_allocWithZone(NSDateFormatter) init];
    [v65 setDateStyle:2];
    [v65 setTimeStyle:1];
    strcpy(v145, "Updated: ");
    WORD1(v145[1]) = 0;
    HIDWORD(v145[1]) = -385875968;
    v66 = Date._bridgeToObjectiveC()().super.isa;
    v67 = [v65 stringFromDate:v66];

    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v71._countAndFlagsBits = v68;
    v71._object = v70;
    String.append(_:)(v71);

    v72 = v145[0];
    v73 = v145[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_10009BCC8(0, *(v43 + 2) + 1, 1, v43);
    }

    v75 = *(v43 + 2);
    v74 = *(v43 + 3);
    v77 = v138;
    v76 = v139;
    if (v75 >= v74 >> 1)
    {
      v43 = sub_10009BCC8((v74 > 1), v75 + 1, 1, v43);
    }

    (*(v142 + 8))(v62, v143);
    *(v43 + 2) = v75 + 1;
    v78 = &v43[16 * v75];
    *(v78 + 4) = v72;
    *(v78 + 5) = v73;
  }

  else
  {
    v77 = v138;
    v76 = v139;
  }

  v145[0] = 0;
  v145[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v145[0] = 0xD000000000000013;
  v145[1] = 0x80000001008E83E0;
  v79 = [a1 isUploadedToCloud];
  v80 = v79 == 0;
  if (v79)
  {
    v81 = 1702195828;
  }

  else
  {
    v81 = 0x65736C6166;
  }

  if (v80)
  {
    v82 = 0xE500000000000000;
  }

  else
  {
    v82 = 0xE400000000000000;
  }

  v83 = v82;
  String.append(_:)(*&v81);

  v84 = v145[0];
  v85 = v145[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_10009BCC8(0, *(v43 + 2) + 1, 1, v43);
  }

  v87 = *(v43 + 2);
  v86 = *(v43 + 3);
  if (v87 >= v86 >> 1)
  {
    v43 = sub_10009BCC8((v86 > 1), v87 + 1, 1, v43);
  }

  *(v43 + 2) = v87 + 1;
  v88 = &v43[16 * v87];
  *(v88 + 4) = v84;
  *(v88 + 5) = v85;
  strcpy(v145, "Deleted: ");
  WORD1(v145[1]) = 0;
  HIDWORD(v145[1]) = -385875968;
  v89 = [a1 userDeleted];
  v90 = v89 == 0;
  if (v89)
  {
    v91 = 1702195828;
  }

  else
  {
    v91 = 0x65736C6166;
  }

  if (v90)
  {
    v92 = 0xE500000000000000;
  }

  else
  {
    v92 = 0xE400000000000000;
  }

  v93 = v92;
  String.append(_:)(*&v91);

  v94 = v145[0];
  v95 = v145[1];
  v97 = *(v43 + 2);
  v96 = *(v43 + 3);
  if (v97 >= v96 >> 1)
  {
    v43 = sub_10009BCC8((v96 > 1), v97 + 1, 1, v43);
  }

  v98 = v137;
  *(v43 + 2) = v97 + 1;
  v99 = &v43[16 * v97];
  *(v99 + 4) = v94;
  *(v99 + 5) = v95;
  v145[0] = 0;
  v145[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v145[0] = 0x7461432074726F53;
  v145[1] = 0xEF203A79726F6765;
  LOWORD(v144) = [a1 sortCategory];
  v100._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v100);

  v101 = v145[0];
  v102 = v145[1];
  v104 = *(v43 + 2);
  v103 = *(v43 + 3);
  if (v104 >= v103 >> 1)
  {
    v43 = sub_10009BCC8((v103 > 1), v104 + 1, 1, v43);
  }

  *(v43 + 2) = v104 + 1;
  v105 = &v43[16 * v104];
  *(v105 + 4) = v101;
  *(v105 + 5) = v102;
  strcpy(v145, "Sort Order: ");
  BYTE5(v145[1]) = 0;
  HIWORD(v145[1]) = -5120;
  LODWORD(v144) = [a1 sortOrder];
  v106._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v106);

  v107 = v145[0];
  v108 = v145[1];
  v110 = *(v43 + 2);
  v109 = *(v43 + 3);
  if (v110 >= v109 >> 1)
  {
    v43 = sub_10009BCC8((v109 > 1), v110 + 1, 1, v43);
  }

  *(v43 + 2) = v110 + 1;
  v111 = &v43[16 * v110];
  *(v111 + 4) = v107;
  *(v111 + 5) = v108;
  v112 = v141;
  v113 = *(v141 + OBJC_IVAR____TtC7Journal21JournalCollectionCell_detailLabel);
  v145[0] = v43;
  sub_1000F24EC(&qword_100AD60A0);
  sub_10009BDD4();
  BidirectionalCollection<>.joined(separator:)();

  v114 = String._bridgeToObjectiveC()();

  [v113 setText:v114];

  v115 = *(v112 + OBJC_IVAR____TtC7Journal21JournalCollectionCell_iconImageView);
  JournalMO.color.getter();
  v116 = *(v77 + 48);
  if (v116(v98, 1, v76))
  {
    sub_100004F84(v98, &unk_100AD68C0);
    v117 = 0;
  }

  else
  {
    v118 = v134;
    (*(v77 + 16))(v134, v98, v76);
    sub_100004F84(v98, &unk_100AD68C0);
    v117 = sub_10007C744();
    (*(v77 + 8))(v118, v76);
  }

  [v115 setTintColor:v117];

  JournalMO.emoji.getter();
  if (v119)
  {
    v120 = sub_1005203A4();

LABEL_58:
    [v115 setImage:v120];

    return;
  }

  JournalMO.symbolName.getter();
  if (v121)
  {
    v122 = String._bridgeToObjectiveC()();

    v123 = [objc_opt_self() systemImageNamed:v122];

    [v115 setImage:v123];
    v124 = v133;
    JournalMO.color.getter();
    if (v116(v124, 1, v76))
    {
      sub_100004F84(v124, &unk_100AD68C0);
      v125 = 0;
    }

    else
    {
      v130 = v134;
      (*(v77 + 16))(v134, v124, v76);
      sub_100004F84(v124, &unk_100AD68C0);
      v125 = sub_10007C744();
      (*(v77 + 8))(v130, v76);
    }

    [v115 setTintColor:v125];
    goto LABEL_73;
  }

  if (JournalMO.isDefaultJournal.getter())
  {
    v128 = String._bridgeToObjectiveC()();
    v129 = [objc_opt_self() _systemImageNamed:v128];
LABEL_70:
    v120 = v129;

    goto LABEL_58;
  }

  if ([a1 userDeleted])
  {
    v131 = [a1 mergeableAttributes];
    if (!v131)
    {
      v125 = sub_1005203A4();
      [v115 setImage:v125];
LABEL_73:

      return;
    }
  }

  if (([a1 userDeleted] & 1) == 0)
  {
    v132 = [a1 mergeableAttributes];
    if (!v132)
    {
      v128 = String._bridgeToObjectiveC()();
      v129 = [objc_opt_self() systemImageNamed:v128];
      goto LABEL_70;
    }
  }

  [v115 setImage:0];
}

id sub_100520264(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100520350()
{
  result = qword_100AE7E58;
  if (!qword_100AE7E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7E58);
  }

  return result;
}

UIImage *sub_1005203A4()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setText:v1];

  v2 = [objc_opt_self() systemFontOfSize:30.0];
  [v0 setFont:v2];

  v3 = v0;
  [v3 sizeToFit];
  [v3 bounds];
  v11.width = v4;
  v11.height = v5;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  v6 = UIGraphicsGetCurrentContext();
  if (v6)
  {
    v7 = v6;
    v8 = [v3 layer];

    [v8 renderInContext:v7];
    v9 = UIGraphicsGetImageFromCurrentImageContext();
  }

  else
  {

    v9 = 0;
  }

  UIGraphicsEndImageContext();

  return v9;
}

void sub_100520504()
{
  v1 = OBJC_IVAR____TtC7Journal21JournalCollectionCell_titleLabel;
  v2 = [objc_allocWithZone(UILabel) init];
  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v2 setFont:v4];

  [v2 setNumberOfLines:1];
  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC7Journal21JournalCollectionCell_subtitleLabel;
  v6 = [objc_allocWithZone(UILabel) init];
  v7 = [v3 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v6 setFont:v7];

  [v6 setNumberOfLines:1];
  *(v0 + v5) = v6;
  v8 = OBJC_IVAR____TtC7Journal21JournalCollectionCell_detailLabel;
  v9 = [objc_allocWithZone(UILabel) init];
  v10 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 setFont:v10];

  [v9 setNumberOfLines:0];
  *(v0 + v8) = v9;
  v11 = OBJC_IVAR____TtC7Journal21JournalCollectionCell_iconImageView;
  *(v0 + v11) = sub_10051E840();
  *(v0 + OBJC_IVAR____TtC7Journal21JournalCollectionCell____lazy_storage___stackView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1005206E8()
{
  result = qword_100AE7E70;
  if (!qword_100AE7E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7E70);
  }

  return result;
}

uint64_t sub_100520750()
{
  sub_100504E54();
  ContainerValues.subscript.getter();
  return v1;
}

uint64_t sub_10052078C()
{
  sub_100520804();
  ContainerValues.subscript.getter();
  return v1;
}

uint64_t sub_1005207C8()
{
  sub_100504804();
  ContainerValues.subscript.getter();
  return v1;
}

unint64_t sub_100520804()
{
  result = qword_100AE7EA0;
  if (!qword_100AE7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE7EA0);
  }

  return result;
}

uint64_t sub_1005208D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = sub_1000F24EC(&qword_100AE2A38);
  __chkstk_darwin(v3 - 8);
  v95 = &v90 - v4;
  v5 = type metadata accessor for MergeableJournalAttributes.Icon();
  v107 = *(v5 - 8);
  v108 = v5;
  __chkstk_darwin(v5);
  v96 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MergeableColor();
  v93 = *(v7 - 8);
  v94 = v7;
  __chkstk_darwin(v7);
  v90 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD68C0);
  __chkstk_darwin(v9 - 8);
  v92 = &v90 - v10;
  v11 = type metadata accessor for ColorResource();
  v102 = *(v11 - 8);
  v103 = v11;
  __chkstk_darwin(v11);
  v101 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v99 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v98 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v91 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v100 = &v90 - v22;
  __chkstk_darwin(v21);
  v97 = &v90 - v23;
  v24 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v24);
  v26 = &v90 - v25;
  v27 = sub_1000F24EC(&qword_100AD1420);
  v28 = __chkstk_darwin(v27 - 8);
  v30 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v33 = &v90 - v32;
  __chkstk_darwin(v31);
  v35 = &v90 - v34;
  v36 = type metadata accessor for JournalSidebarViewModel(0);
  v105 = *(v36 - 8);
  v106 = v36;
  __chkstk_darwin(v36);
  v104 = (&v90 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = a1;
  v38 = [a1 id];
  if (v38)
  {
    v39 = v38;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = *(v18 + 56);
    v40(v35, 0, 1, v17);
  }

  else
  {
    v40 = *(v18 + 56);
    v40(v35, 1, 1, v17);
  }

  type metadata accessor for JournalMO();
  static JournalMO.defaultJournalID.getter();
  v40(v33, 0, 1, v17);
  v41 = *(v24 + 48);
  sub_1001EDCD8(v35, v26);
  sub_1001EDCD8(v33, &v26[v41]);
  v111 = v18;
  v42 = *(v18 + 48);
  if (v42(v26, 1, v17) == 1)
  {
    sub_100004F84(v33, &qword_100AD1420);
    sub_100004F84(v35, &qword_100AD1420);
    v43 = v42(&v26[v41], 1, v17);
    v45 = v108;
    v44 = v109;
    if (v43 == 1)
    {
      sub_100004F84(v26, &qword_100AD1420);
LABEL_18:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v66 = String.init(localized:table:bundle:locale:comment:)();
      v68 = v67;
      sub_1000065A8(0, &qword_100AD4C70);
      v69 = v107;
      if (qword_100AD0BE0 != -1)
      {
        swift_once();
      }

      v70 = v103;
      v71 = sub_10000617C(v103, qword_100B312B0);
      (*(v102 + 16))(v101, v71, v70);
      v72 = UIColor.init(resource:)();
      v73 = v106;
      v74 = v104;
      v75 = v104 + *(v106 + 28);
      strcpy(v75, "apple.journal");
      *(v75 + 7) = -4864;
      (*(v69 + 104))();
      if (qword_100ACFF20 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
      v77 = sub_10000617C(v76, qword_100B2FAE0);
      sub_1002A6868(v77, v74 + *(v73 + 24), type metadata accessor for JournalSidebarViewModel.JournalMembershipType);

      *v74 = v66;
      v74[1] = v68;
      v74[2] = v72;
LABEL_32:
      v79 = v110;
      sub_10001DB30(v74, v110, type metadata accessor for JournalSidebarViewModel);
      v78 = 0;
      return (*(v105 + 56))(v79, v78, 1, v73);
    }

    goto LABEL_9;
  }

  sub_1001EDCD8(v26, v30);
  if (v42(&v26[v41], 1, v17) == 1)
  {
    sub_100004F84(v33, &qword_100AD1420);
    sub_100004F84(v35, &qword_100AD1420);
    (*(v111 + 8))(v30, v17);
    v45 = v108;
    v44 = v109;
LABEL_9:
    sub_100004F84(v26, &unk_100AEEE20);
    goto LABEL_10;
  }

  v62 = v111;
  v63 = v97;
  (*(v111 + 32))(v97, &v26[v41], v17);
  sub_1005239D8(&qword_100AD9220, &type metadata accessor for UUID);
  v64 = dispatch thunk of static Equatable.== infix(_:_:)();
  v65 = *(v62 + 8);
  v65(v63, v17);
  sub_100004F84(v33, &qword_100AD1420);
  sub_100004F84(v35, &qword_100AD1420);
  v65(v30, v17);
  sub_100004F84(v26, &qword_100AD1420);
  v45 = v108;
  v44 = v109;
  if (v64)
  {
    goto LABEL_18;
  }

LABEL_10:
  v46 = JournalMO.title.getter();
  v48 = v107;
  if (v47)
  {
    v49 = v46;
    v50 = v47;
    v51 = [v44 id];
    if (v51)
    {
      v109 = v49;
      v52 = v91;
      v53 = v51;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = *(v111 + 32);
      v111 += 32;
      v108 = v54;
      v54(v100, v52, v17);
      v55 = v92;
      JournalMO.color.getter();
      v57 = v93;
      v56 = v94;
      if ((*(v93 + 48))(v55, 1, v94))
      {
        sub_100004F84(v55, &unk_100AD68C0);
        v58 = v95;
      }

      else
      {
        v80 = v90;
        (*(v57 + 16))(v90, v55, v56);
        sub_100004F84(v55, &unk_100AD68C0);
        v61 = sub_10007C744();
        (*(v57 + 8))(v80, v56);
        v58 = v95;
        if (v61)
        {
LABEL_27:
          JournalMO.icon.getter();
          v81 = *(v48 + 48);
          if (v81(v58, 1, v45) == 1)
          {
            v82 = v58;
            v83 = v96;
            static MergeableJournalAttributes.Icon.defaultIcon.getter();

            v84 = v81(v82, 1, v45);
            v85 = v83;
            if (v84 != 1)
            {
              sub_100004F84(v82, &qword_100AE2A38);
            }
          }

          else
          {

            v85 = v96;
            (*(v48 + 32))(v96, v58, v45);
          }

          v86 = v106;
          v87 = *(v106 + 24);
          v74 = v104;
          v108(v104 + v87, v100, v17);
          v88 = sub_1000F24EC(&qword_100AD47A0);
          (*(*(v88 - 8) + 56))(v74 + v87, 0, 2, v88);
          *v74 = v109;
          v74[1] = v50;
          v73 = v86;
          v74[2] = v61;
          (*(v48 + 32))(v74 + *(v86 + 28), v85, v45);
          goto LABEL_32;
        }
      }

      sub_1000065A8(0, &qword_100AD4C70);
      if (qword_100AD0D60 != -1)
      {
        swift_once();
      }

      v59 = v103;
      v60 = sub_10000617C(v103, qword_100B31730);
      (*(v102 + 16))(v101, v60, v59);
      v61 = UIColor.init(resource:)();
      goto LABEL_27;
    }
  }

  else
  {
  }

  v78 = 1;
  v79 = v110;
  v73 = v106;
  return (*(v105 + 56))(v79, v78, 1, v73);
}

uint64_t sub_1005215F4()
{
  v1 = type metadata accessor for MergeableJournalAttributes.Icon();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v28 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v7 = &v24[-v6];
  v8 = __chkstk_darwin(v5);
  v10 = &v24[-v9];
  __chkstk_darwin(v8);
  v12 = &v24[-v11];
  v13 = *(type metadata accessor for JournalSidebarViewModel(0) + 28);
  v14 = *(v2 + 16);
  v26 = v0;
  v14(v7, v0 + v13, v1);
  v27 = *(v2 + 88);
  v15 = v27(v7, v1);
  v25 = enum case for MergeableJournalAttributes.Icon.unknown(_:);
  if (v15 == enum case for MergeableJournalAttributes.Icon.unknown(_:))
  {
    (*(v2 + 96))(v7, v1);
    v16 = *(sub_1000F24EC(&qword_100AE2A58) + 48);
    v17 = type metadata accessor for AnyCRValue();
    (*(*(v17 - 8) + 8))(&v7[v16], v17);
    static MergeableJournalAttributes.Icon.defaultIcon.getter();
  }

  else
  {
    (*(v2 + 8))(v7, v1);
    v14(v10, v26 + v13, v1);
  }

  (*(v2 + 32))(v12, v10, v1);
  v18 = v28;
  v14(v28, v12, v1);
  v19 = v27(v18, v1);
  if (v19 == enum case for MergeableJournalAttributes.Icon.sfSymbol(_:))
  {
    (*(v2 + 8))(v12, v1);
    (*(v2 + 96))(v18, v1);
    return *v18;
  }

  if (v19 == enum case for MergeableJournalAttributes.Icon.emoji(_:))
  {
    v21 = *(v2 + 8);
    v21(v12, v1);
    v21(v18, v1);
  }

  else
  {
    if (v19 != v25)
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v2 + 8))(v12, v1);
    (*(v2 + 96))(v18, v1);
    v22 = *(sub_1000F24EC(&qword_100AE2A58) + 48);
    v23 = type metadata accessor for AnyCRValue();
    (*(*(v23 - 8) + 8))(&v18[v22], v23);
  }

  return 0;
}

uint64_t sub_1005219BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v7 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  type metadata accessor for JournalMO();
  sub_1005239D8(&qword_100AD4C68, &type metadata accessor for JournalMO);
  v8 = v7;
  v9 = static Identifiable<>.fetch(id:context:)();
  if (!v9)
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(a1, v15);

    goto LABEL_4;
  }

  sub_1005208D8(v9, v6);

  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 8))(a1, v12);
  v13 = type metadata accessor for JournalSidebarViewModel(0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13))
  {
    sub_100004F84(v6, &unk_100AD4400);
LABEL_4:
    v10 = type metadata accessor for JournalSidebarViewModel(0);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  sub_10001DB30(v6, a2, type metadata accessor for JournalSidebarViewModel);
  return (*(v14 + 56))(a2, 0, 1, v13);
}

uint64_t sub_100521CB8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v8 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v9 = type metadata accessor for JournalSidebarViewModel(0);
  sub_1002A6868(v0 + *(v9 + 24), v7, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v10 = sub_1000F24EC(&qword_100AD47A0);
  v11 = (*(*(v10 - 8) + 48))(v7, 2, v10);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = v8;
      v13 = static JournalDataUtilities.getRecentlyDeletedEntriesCount(context:)();
    }

    else
    {
      type metadata accessor for JournalMO();
      v12 = v8;
      v13 = static JournalMO.entryCountIncludingDraftsForAllEntries(context:)();
    }

    v15 = v13;
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    type metadata accessor for JournalMO();
    v14 = v8;
    v15 = static JournalMO.entryCountIncludingDrafts(for:context:)();
    (*(v2 + 8))(v4, v1);
  }

  return v15;
}

uint64_t sub_100521F60@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for UUID();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = __chkstk_darwin(v2);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v35 - v5;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  sub_1002A6868(v1, &v35 - v13, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v15 = sub_1000F24EC(&qword_100AD47A0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(v14, 2, v15);
  if (v18)
  {
    if (v18 == 1)
    {
      v19 = v39;
      sub_100522E90(v39);
      v20 = type metadata accessor for JournalSidebarViewModel(0);
      return (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v29 = String.init(localized:table:bundle:locale:comment:)();
      v31 = v30;
      v32 = [objc_opt_self() quaternarySystemFillColor];
      v33 = type metadata accessor for JournalSidebarViewModel(0);
      v34 = v39;
      static MergeableJournalAttributes.Icon.defaultIcon.getter();
      (*(v16 + 56))(v34 + *(v33 + 24), 2, 2, v15);
      *v34 = v29;
      v34[1] = v31;
      v34[2] = v32;
      return (*(*(v33 - 8) + 56))(v34, 0, 1, v33);
    }
  }

  else
  {
    v35 = v9;
    v23 = v36;
    v22 = v37;
    v24 = v38;
    sub_1002A6868(v14, v12, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    if (qword_100ACFF20 != -1)
    {
      swift_once();
    }

    v25 = sub_10000617C(v35, qword_100B2FAE0);
    v26 = sub_100524B84(v25, v12);
    sub_10000D688(v12, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    if (v26)
    {
      v27 = v39;
      sub_100522AD8(v39);
      v28 = type metadata accessor for JournalSidebarViewModel(0);
      (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
      return sub_10000D688(v14, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    }

    else if (v17(v14, 2, v15))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    else
    {
      (*(v22 + 32))(v6, v14, v24);
      (*(v22 + 16))(v23, v6, v24);
      sub_1005219BC(v23, v39);
      return (*(v22 + 8))(v6, v24);
    }
  }

  return result;
}

uint64_t sub_10052249C()
{
  v1 = type metadata accessor for MergeableJournalAttributes.Icon();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v27[-v7];
  v9 = __chkstk_darwin(v6);
  v11 = &v27[-v10];
  __chkstk_darwin(v9);
  v30 = &v27[-v12];
  v13 = *(type metadata accessor for JournalSidebarViewModel(0) + 28);
  v14 = *(v2 + 16);
  v29 = v0;
  v14(v8, v0 + v13, v1);
  v15 = *(v2 + 88);
  v16 = v15(v8, v1);
  v28 = enum case for MergeableJournalAttributes.Icon.unknown(_:);
  if (v16 == enum case for MergeableJournalAttributes.Icon.unknown(_:))
  {
    (*(v2 + 96))(v8, v1);
    v17 = *(sub_1000F24EC(&qword_100AE2A58) + 48);
    v18 = type metadata accessor for AnyCRValue();
    (*(*(v18 - 8) + 8))(&v8[v17], v18);
    static MergeableJournalAttributes.Icon.defaultIcon.getter();
  }

  else
  {
    (*(v2 + 8))(v8, v1);
    v14(v11, v29 + v13, v1);
  }

  v19 = v30;
  (*(v2 + 32))(v30, v11, v1);
  v14(v5, v19, v1);
  v20 = v15(v5, v1);
  if (v20 == enum case for MergeableJournalAttributes.Icon.sfSymbol(_:))
  {
    (*(v2 + 96))(v5, v1);
    v21 = String._bridgeToObjectiveC()();

    v22 = [objc_opt_self() _systemImageNamed:v21];

    (*(v2 + 8))(v19, v1);
    return v22;
  }

  if (v20 == enum case for MergeableJournalAttributes.Icon.emoji(_:))
  {
    v24 = *(v2 + 8);
    v24(v19, v1);
    v24(v5, v1);
  }

  else
  {
    if (v20 != v28)
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v2 + 8))(v19, v1);
    (*(v2 + 96))(v5, v1);
    v25 = *(sub_1000F24EC(&qword_100AE2A58) + 48);
    v26 = type metadata accessor for AnyCRValue();
    (*(*(v26 - 8) + 8))(&v5[v25], v26);
  }

  return 0;
}

uint64_t sub_1005228A0()
{
  v1 = v0;
  v2 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  sub_1002A6868(v1, &v14 - v6, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v8 = sub_1000F24EC(&qword_100AD47A0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v7, 2, v8))
  {
    return 0;
  }

  sub_1002A6868(v7, v4, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  if (qword_100ACFF20 != -1)
  {
    swift_once();
  }

  v11 = sub_10000617C(v2, qword_100B2FAE0);
  v12 = sub_100524B84(v11, v4);
  sub_10000D688(v4, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  if (v12)
  {
    sub_10000D688(v7, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    return 0;
  }

  else if (v9(v7, 2, v8))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v7, v13);
    return 1;
  }

  return result;
}

uint64_t sub_100522AD8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  v10 = v9;
  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0BE0 != -1)
  {
    swift_once();
  }

  v11 = sub_10000617C(v2, qword_100B312B0);
  (*(v3 + 16))(v5, v11, v2);
  v12 = UIColor.init(resource:)();
  v13 = type metadata accessor for JournalSidebarViewModel(0);
  v14 = a1 + *(v13 + 28);
  strcpy(v14, "apple.journal");
  *(v14 + 7) = -4864;
  v15 = enum case for MergeableJournalAttributes.Icon.sfSymbol(_:);
  v16 = type metadata accessor for MergeableJournalAttributes.Icon();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  if (qword_100ACFF20 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v18 = sub_10000617C(v17, qword_100B2FAE0);
  result = sub_1002A6868(v18, a1 + *(v13 + 24), type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  *a1 = v8;
  a1[1] = v10;
  a1[2] = v12;
  return result;
}

uint64_t sub_100522DDC()
{
  v0 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  sub_100006118(v0, qword_100B2FAE0);
  v1 = sub_10000617C(v0, qword_100B2FAE0);
  type metadata accessor for JournalMO();
  static JournalMO.defaultJournalID.getter();
  v2 = sub_1000F24EC(&qword_100AD47A0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 2, v2);
}

uint64_t sub_100522E90@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v4 = String.init(localized:table:bundle:locale:comment:)();
  v6 = v5;
  v7 = [objc_opt_self() quaternarySystemFillColor];
  v8 = type metadata accessor for JournalSidebarViewModel(0);
  v9 = (a1 + *(v8 + 28));
  *v9 = 0x69662E6873617274;
  v9[1] = 0xEA00000000006C6CLL;
  v10 = enum case for MergeableJournalAttributes.Icon.sfSymbol(_:);
  v11 = type metadata accessor for MergeableJournalAttributes.Icon();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  v12 = *(v8 + 24);
  v13 = sub_1000F24EC(&qword_100AD47A0);
  result = (*(*(v13 - 8) + 56))(a1 + v12, 1, 2, v13);
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v7;
  return result;
}

Swift::Int sub_1005230A0()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1002A6868(v1, v8, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v9 = sub_1000F24EC(&qword_100AD47A0);
  v10 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  if (v10)
  {
    Hasher._combine(_:)(v10 != 1);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(2uLL);
    sub_1005239D8(&qword_100AD4B40, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

uint64_t sub_1005232C0(uint64_t a1)
{
  v2 = sub_10001DA40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005232FC(uint64_t a1)
{
  v2 = sub_10001DA40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100523338(uint64_t a1)
{
  v2 = sub_10000D450();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100523374(uint64_t a1)
{
  v2 = sub_10000D450();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005233BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10052343C(uint64_t a1)
{
  v2 = sub_100524F14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100523478(uint64_t a1)
{
  v2 = sub_100524F14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005234B4(uint64_t a1)
{
  v2 = sub_100524F68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005234F0(uint64_t a1)
{
  v2 = sub_100524F68();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100523534()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A6868(v0, v7, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v8 = sub_1000F24EC(&qword_100AD47A0);
  v9 = (*(*(v8 - 8) + 48))(v7, 2, v8);
  if (v9)
  {
    Hasher._combine(_:)(v9 != 1);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(2uLL);
    sub_1005239D8(&qword_100AD4B40, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }
}

Swift::Int sub_100523734()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1002A6868(v1, v8, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v9 = sub_1000F24EC(&qword_100AD47A0);
  v10 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  if (v10)
  {
    Hasher._combine(_:)(v10 != 1);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(2uLL);
    sub_1005239D8(&qword_100AD4B40, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

uint64_t sub_1005239D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100523A20()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.hash(into:)();
  NSObject.hash(into:)();
  v8 = type metadata accessor for JournalSidebarViewModel(0);
  sub_1002A6868(v0 + *(v8 + 24), v7, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v9 = sub_1000F24EC(&qword_100AD47A0);
  v10 = (*(*(v9 - 8) + 48))(v7, 2, v9);
  if (v10)
  {
    Hasher._combine(_:)(v10 != 1);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(2uLL);
    sub_1005239D8(&qword_100AD4B40, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  type metadata accessor for MergeableJournalAttributes.Icon();
  sub_1005239D8(&qword_100AE7FF8, &type metadata accessor for MergeableJournalAttributes.Icon);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_100523CB4(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000065A8(0, &unk_100AD43A0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (sub_100524B84(a1 + *(a3 + 24), a2 + *(a3 + 24)) & 1) == 0)
  {
    return 0;
  }

  return static MergeableJournalAttributes.Icon.== infix(_:_:)();
}

Swift::Int sub_100523D78()
{
  Hasher.init(_seed:)();
  sub_100523A20();
  return Hasher._finalize()();
}

Swift::Int sub_100523DBC()
{
  Hasher.init(_seed:)();
  sub_100523A20();
  return Hasher._finalize()();
}

Swift::Int sub_100523E3C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100523F18()
{
  String.hash(into:)();
}

Swift::Int sub_100523FE0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005240B8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100525184(*a1);
  *a2 = result;
  return result;
}

void sub_1005240E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xE400000000000000;
  v6 = 1852793705;
  v7 = 0xEF73656972746E45;
  v8 = 0x664F7265626D756ELL;
  if (v2 != 3)
  {
    v8 = 0x746144726F6C6F63;
    v7 = 0xE900000000000061;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701869940;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100524180()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 1852793705;
  v4 = 0x664F7265626D756ELL;
  if (v1 != 3)
  {
    v4 = 0x746144726F6C6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100524214@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100525184(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10052423C(uint64_t a1)
{
  v2 = sub_100524EC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100524278(uint64_t a1)
{
  v2 = sub_100524EC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005242B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v31 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v31);
  v30 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MergeableJournalAttributes.Icon();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AE8000);
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  v10 = type metadata accessor for JournalSidebarViewModel(0);
  __chkstk_darwin(v10);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000CA14(a1, a1[3]);
  sub_100524EC0();
  v13 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return sub_10000BA7C(a1);
  }

  v35 = v10;
  v15 = v33;
  v14 = v34;
  v28 = v12;
  LOBYTE(v36) = 0;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v28;
  *v28 = v16;
  v18[1] = v19;
  v27[1] = v19;
  LOBYTE(v36) = 2;
  sub_1005239D8(&qword_100AE8010, &type metadata accessor for MergeableJournalAttributes.Icon);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27[0] = 0;
  (*(v15 + 32))(v18 + *(v35 + 28), v6, v14);
  LOBYTE(v36) = 1;
  sub_1005239D8(&qword_100ADD4A8, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v20 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10001DB30(v20, v18 + *(v35 + 24), type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v38 = 4;
  sub_10051AEA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = a1;
  v22 = v36;
  v21 = v37;
  sub_1000065A8(0, &qword_100AD4C70);
  v23 = static NSCoding<>.create(from:)();
  if (!v23)
  {
    v23 = [objc_opt_self() tintColor];
  }

  v24 = v23;
  sub_1000340DC(v22, v21);
  v25 = v29;
  (*(v32 + 8))(v9, v7);
  v26 = v28;
  v28[2] = v24;
  sub_1002A6868(v26, v25, type metadata accessor for JournalSidebarViewModel);
  sub_10000BA7C(v31);
  return sub_10000D688(v26, type metadata accessor for JournalSidebarViewModel);
}

uint64_t sub_100524844(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AE8018);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_100524EC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  type metadata accessor for JournalSidebarViewModel(0);
  LOBYTE(v13) = 1;
  type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  sub_1005239D8(&qword_100ADD4E0, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v13) = 2;
  type metadata accessor for MergeableJournalAttributes.Icon();
  sub_1005239D8(&qword_100AE8020, &type metadata accessor for MergeableJournalAttributes.Icon);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000065A8(0, &qword_100AD4C70);
  v7 = NSCoding<>.toData.getter();
  if (v8 >> 60 == 15)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = v7;
  v14 = v8;
  v12[15] = 4;
  v10 = v7;
  v11 = v8;
  sub_10051AA50();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  return sub_10003A5C8(v10, v11);
}

uint64_t sub_100524B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD4C60);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_1002A6868(a1, &v22 - v13, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  sub_1002A6868(a2, &v14[v15], type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v16 = sub_1000F24EC(&qword_100AD47A0);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v14, 2, v16);
  if (!v18)
  {
    sub_1002A6868(v14, v10, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    if (!v17(&v14[v15], 2, v16))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v19 = static UUID.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_10000D688(v14, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v18 == 1)
  {
    if (v17(&v14[v15], 2, v16) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v17(&v14[v15], 2, v16) != 2)
  {
LABEL_9:
    sub_100004F84(v14, &qword_100AD4C60);
    v19 = 0;
    return v19 & 1;
  }

  sub_10000D688(v14, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v19 = 1;
  return v19 & 1;
}

unint64_t sub_100524EC0()
{
  result = qword_100AE8008;
  if (!qword_100AE8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8008);
  }

  return result;
}

unint64_t sub_100524F14()
{
  result = qword_100AE8050;
  if (!qword_100AE8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8050);
  }

  return result;
}

unint64_t sub_100524F68()
{
  result = qword_100AE8060;
  if (!qword_100AE8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8060);
  }

  return result;
}

unint64_t sub_100524FD0()
{
  result = qword_100AE8088;
  if (!qword_100AE8088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8088);
  }

  return result;
}

unint64_t sub_100525028()
{
  result = qword_100AE8090;
  if (!qword_100AE8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8090);
  }

  return result;
}

unint64_t sub_100525080()
{
  result = qword_100AE8098;
  if (!qword_100AE8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8098);
  }

  return result;
}

unint64_t sub_1005250D8()
{
  result = qword_100AE80E0;
  if (!qword_100AE80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE80E0);
  }

  return result;
}

unint64_t sub_100525130()
{
  result = qword_100AE80E8;
  if (!qword_100AE80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE80E8);
  }

  return result;
}

unint64_t sub_100525184(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5A318, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005251D8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1005252C4()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE80F0);
  v1 = sub_10000617C(v0, qword_100AE80F0);
  if (qword_100AD0208 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B300B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_10052538C()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100528D0C(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100525428()
{
  type metadata accessor for UUID();
  sub_100528D0C(&qword_100AD4B40, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1005254A8()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100528D0C(&qword_100AD4B40, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

size_t sub_100525550(uint64_t a1, double a2)
{
  v5 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR____TtCC7Journal10MapManager30MOSuggestionAssetMapsClusterer_skipRows] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtCC7Journal10MapManager30MOSuggestionAssetMapsClusterer_skipColumns] = &_swiftEmptySetSingleton;
  v8 = &unk_100AE8000;
  *&v2[OBJC_IVAR____TtCC7Journal10MapManager30MOSuggestionAssetMapsClusterer_inputClusters] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtCC7Journal10MapManager30MOSuggestionAssetMapsClusterer_results] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtCC7Journal10MapManager30MOSuggestionAssetMapsClusterer_separationThreshold] = a2;
  v9 = _s30MOSuggestionAssetMapsClustererCMa();
  v53.receiver = v2;
  v53.super_class = v9;
  v10 = objc_msgSendSuper2(&v53, "init");
  v11 = v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v52 = _swiftEmptyArrayStorage;
    v39 = v10;
    v13 = v10;
    result = sub_100199D80(0, v12, 0);
    v15 = 0;
    v16 = v52;
    v17 = a1 + 48;
    v40 = v12;
    v41 = a1;
    while (v15 < *(a1 + 16))
    {
      v18 = *(v17 - 16);
      v19 = *(v17 - 8);
      v21 = *v17;
      v20 = *(v17 + 8);
      v22 = *(v17 + 16);
      v23 = *(v17 + 32);
      v46 = *(v17 + 24);
      v47 = *(v17 + 40);
      v24 = *(v17 + 48);
      if (v22)
      {
        v20 = 1;
      }

      v44 = v21;
      v45 = v20;
      v49 = v15;
      v25 = v21;

      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v26;
      v27._countAndFlagsBits = 95;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v48 = v16;
      v28 = v50;
      v29 = v51;
      v30 = v43;
      v31 = v25;

      UUID.init()();

      *v7 = v18;
      v7[1] = v19;
      v33 = v44;
      v32 = v45;
      v7[2] = 0;
      v7[3] = v32;
      v7[4] = v28;
      v7[5] = v29;
      v16 = v48;
      *(v7 + v30[9]) = v33;
      v34 = (v7 + v30[10]);
      *v34 = v46;
      v34[1] = v23;
      *(v7 + v30[11]) = v47;
      *(v7 + v30[12]) = v24;
      v52 = v16;
      v36 = v16[2];
      v35 = v16[3];
      if (v36 >= v35 >> 1)
      {
        sub_100199D80(v35 > 1, v36 + 1, 1);
        v16 = v52;
      }

      ++v15;
      v16[2] = v36 + 1;
      result = sub_100528CA8(v7, v16 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v36);
      v17 += 72;
      a1 = v41;
      if (v40 == v15)
      {

        v8 = &unk_100AE8000;
        v11 = v39;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = v10;

    v16 = _swiftEmptyArrayStorage;
LABEL_11:
    *&v11[v8[35]] = v16;

    return v11;
  }

  return result;
}

uint64_t sub_100525868()
{
  v1 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v116 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v115 = v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v114 = v106 - v5;
  v6 = __chkstk_darwin(v4);
  v113 = v106 - v7;
  v8 = __chkstk_darwin(v6);
  v111 = v106 - v9;
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v112 = v106 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v106 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v106 - v17;
  result = __chkstk_darwin(v16);
  v22 = v106 - v21;
  v23 = *(v0 + OBJC_IVAR____TtCC7Journal10MapManager30MOSuggestionAssetMapsClusterer_inputClusters);
  v131 = v23;
  v24 = v23[2];
  if (!v24)
  {
LABEL_108:
    __break(1u);
    return result;
  }

  v118 = v24 - 1;
  if (v24 != 1)
  {
    v107 = v20;
    v106[0] = result;
    v128 = v0;
    v110 = OBJC_IVAR____TtCC7Journal10MapManager30MOSuggestionAssetMapsClusterer_separationThreshold;
    v108 = OBJC_IVAR____TtCC7Journal10MapManager30MOSuggestionAssetMapsClusterer_results;
    v126 = OBJC_IVAR____TtCC7Journal10MapManager30MOSuggestionAssetMapsClusterer_skipColumns;
    v127 = OBJC_IVAR____TtCC7Journal10MapManager30MOSuggestionAssetMapsClusterer_skipRows;

    v25 = 0;
    v109 = 0;
    v122 = v18;
    v124 = v22;
    v117 = v15;
    while (2)
    {
      v123 = v23;
      v120 = v25 + 1;
      result = sub_1005284E8(&v131);
      v26 = 0;
      v27 = result + 32;
      v121 = result;
      v28 = *(result + 16);
      v125 = -1;
      v29 = 1.79769313e308;
      v30 = -1;
      v31 = v128;
LABEL_7:
      v32 = v26;
      while (v28 != v32)
      {
        if (v32 >= v28)
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v26 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_93;
        }

        v33 = *(v27 + 8 * v32);
        v34 = *(v33 + 16);
        ++v32;
        if (v34)
        {
          v35 = 0;
          v36 = v33 + 32;
          v37 = v32 - 1;
          while (1)
          {
            v38 = *(v36 + 8 * v35);
            v39 = *(v31 + v127);
            if (*(v39 + 16))
            {
              result = static Hasher._hash(seed:_:)();
              v40 = -1 << *(v39 + 32);
              v41 = result & ~v40;
              if ((*(v39 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
              {
                v42 = ~v40;
                v31 = v128;
                while (*(*(v39 + 48) + 8 * v41) + 1 != v32)
                {
                  v41 = (v41 + 1) & v42;
                  if (((*(v39 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
                  {
                    goto LABEL_21;
                  }
                }

                goto LABEL_13;
              }

              v31 = v128;
            }

LABEL_21:
            v43 = *(v31 + v126);
            if (*(v43 + 16))
            {
              result = static Hasher._hash(seed:_:)();
              v44 = -1 << *(v43 + 32);
              v45 = result & ~v44;
              if ((*(v43 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
              {
                v46 = ~v44;
                v31 = v128;
                while (*(*(v43 + 48) + 8 * v45) != v35)
                {
                  v45 = (v45 + 1) & v46;
                  if (((*(v43 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                  {
                    goto LABEL_26;
                  }
                }

                goto LABEL_13;
              }

              v31 = v128;
              if (v28 >= 2)
              {
LABEL_29:
                if (v35 < v37 && v37 >= 1)
                {
                  if (v38 >= v29)
                  {
                    v47 = v29;
                  }

                  else
                  {
                    v47 = v38;
                  }

                  v48 = v125;
                  if (v38 >= v29)
                  {
                    v49 = v125;
                  }

                  else
                  {
                    v49 = v35;
                  }

                  if (v38 >= v29)
                  {
                    v50 = v30;
                  }

                  else
                  {
                    v50 = v32 - 1;
                  }

                  if (v35 < v28)
                  {
                    v29 = v47;
                    v48 = v49;
                  }

                  v125 = v48;
                  if (v35 < v28)
                  {
                    v30 = v50;
                  }
                }
              }
            }

            else
            {
LABEL_26:
              if (v28 >= 2)
              {
                goto LABEL_29;
              }
            }

LABEL_13:
            if (++v35 == v34)
            {
              v18 = v122;
              v22 = v124;
              goto LABEL_7;
            }
          }
        }
      }

      v51 = v117;
      v52 = v125;
      if (v30 == -1 && v125 == -1)
      {

LABEL_5:
        v23 = v123;
        v25 = v120;
        if (v120 != v118)
        {
          continue;
        }
      }

      break;
    }

    v53 = v123;
    if ((v30 & 0x8000000000000000) != 0)
    {
      goto LABEL_95;
    }

    v54 = v123[2];
    if (v30 >= v54)
    {
LABEL_96:
      __break(1u);
    }

    else
    {
      v55 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      v56 = *(v116 + 72);
      result = sub_1005071CC(v123 + v55 + v56 * v30, v22);
      if (v52 < v54)
      {
        v119 = v56;
        v57 = sub_1005071CC(v53 + v55 + v56 * v52, v18);
        if (v29 >= *(v128 + v110) * *(v128 + v110))
        {

          v61 = v115;
          sub_1005071CC(v22, v115);
          swift_beginAccess();
          v62 = v114;
          sub_100288EF4(v114, v61);
          sub_100507230(v62);
          sub_1005071CC(v18, v61);
          sub_100288EF4(v62, v61);
          sub_100507230(v62);
          swift_endAccess();
LABEL_74:
          sub_100507230(v18);
          sub_100507230(v22);
          goto LABEL_5;
        }

        __chkstk_darwin(v57);
        v106[-2] = v22;
        v106[-1] = v18;
        v58 = v109;
        result = sub_1005251D8(sub_100528DB8, &v106[-4], v53);
        v109 = v58;
        v106[1] = v106;
        if (v59)
        {
          v125 = v53[2];
          v60 = v106[0];
        }

        else
        {
          v63 = result + 1;
          v60 = v106[0];
          v64 = v119;
          if (__OFADD__(result, 1))
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v125 = result;
          v66 = v53 + 2;
          v65 = v53[2];
          if (v63 != v65)
          {
            v100 = v55 + v119 * v63;
            while (v63 < v65)
            {
              sub_1005071CC(v53 + v100, v51);
              if (static UUID.== infix(_:_:)())
              {
                result = sub_100507230(v51);
              }

              else
              {
                v101 = static UUID.== infix(_:_:)();
                result = sub_100507230(v51);
                if ((v101 & 1) == 0)
                {
                  v102 = v125;
                  if (v63 != v125)
                  {
                    if (v125 < 0)
                    {
                      goto LABEL_103;
                    }

                    v103 = v55;
                    v104 = *v66;
                    if (v125 >= *v66)
                    {
                      goto LABEL_104;
                    }

                    v105 = v125 * v119;
                    result = sub_1005071CC(v53 + v103 + v125 * v119, v107);
                    if (v63 >= v104)
                    {
                      goto LABEL_105;
                    }

                    sub_1005071CC(v53 + v100, v111);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v53 = sub_1006929F8(v53);
                    }

                    v55 = v103;
                    result = sub_100528D54(v111, v53 + v103 + v105);
                    if (v63 >= v53[2])
                    {
                      goto LABEL_106;
                    }

                    result = sub_100528D54(v107, v53 + v100);
                    v64 = v119;
                    v102 = v125;
                  }

                  v125 = v102 + 1;
                }
              }

              ++v63;
              v66 = v53 + 2;
              v65 = v53[2];
              v100 += v64;
              if (v63 == v65)
              {
                goto LABEL_57;
              }
            }

            goto LABEL_94;
          }
        }

LABEL_57:

        v67 = v53[2];
        v68 = v125 - v67;
        if (v125 <= v67)
        {
          if ((v125 & 0x8000000000000000) == 0)
          {
            v69 = v53[2];
            if (v69 >= v67)
            {
              v70 = v69 + v68;
              if (!__OFADD__(v69, v68))
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v131 = v53;
                if (isUniquelyReferenced_nonNull_native && v70 <= v53[3] >> 1)
                {
                  v123 = v53;
                }

                else
                {
                  if (v69 <= v70)
                  {
                    v72 = v70;
                  }

                  else
                  {
                    v72 = v69;
                  }

                  v123 = sub_1003E5358(isUniquelyReferenced_nonNull_native, v72, 1, v53);
                  v131 = v123;
                }

                result = sub_10019BA18(v125, v67, 0);
                v73 = v60[9];
                v74 = v124;
                v75 = *&v124[v73];
                v76 = v75;
                v77 = v122;
                if (!v75)
                {
                  v76 = *&v122[v73];
                  result = v76;
                }

                v78 = *(v74 + 3);
                v79 = *(v77 + 3);
                v80 = v78 + v79;
                if (!__OFADD__(v78, v79))
                {
                  v81 = (*(v74 + 1) + *(v77 + 1)) * 0.5;
                  v82 = (*v74 + *v77) * 0.5;
                  v83 = *(v74 + 4);
                  v84 = *(v74 + 5);
                  v85 = *(v77 + 4);
                  v86 = *(v77 + 5);
                  v129 = v83;
                  v130 = v84;
                  v87 = v75;

                  v88._countAndFlagsBits = v85;
                  v88._object = v86;
                  String.append(_:)(v88);
                  v89 = v129;
                  v90 = v130;
                  v91 = v112;
                  UUID.init()();
                  *v91 = v82;
                  *(v91 + 8) = v81;
                  *(v91 + 16) = v29;
                  *(v91 + 24) = v80;
                  *(v91 + 32) = v89;
                  *(v91 + 40) = v90;
                  *(v91 + v60[9]) = v76;
                  v92 = (v91 + v60[10]);
                  *v92 = 0;
                  v92[1] = 0xE000000000000000;
                  *(v91 + v60[11]) = 0;
                  *(v91 + v60[12]) = 0;
                  sub_1005071CC(v91, v113);
                  v93 = v123;
                  v95 = v123[2];
                  v94 = v123[3];
                  if (v95 >= v94 >> 1)
                  {
                    v93 = sub_1003E5358(v94 > 1, v95 + 1, 1, v123);
                  }

                  v96 = v119;
                  v93[2] = v95 + 1;
                  sub_100528CA8(v113, v93 + v55 + v95 * v96);
                  v123 = v93;
                  v131 = v93;
                  v97 = v112;
                  v98 = v115;
                  sub_1005071CC(v112, v115);
                  swift_beginAccess();
                  v99 = v114;
                  sub_100288EF4(v114, v98);
                  sub_100507230(v99);
                  swift_endAccess();
                  sub_100507230(v97);
                  v18 = v122;
                  v22 = v124;
                  goto LABEL_74;
                }

                goto LABEL_102;
              }

LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

LABEL_100:
            __break(1u);
            goto LABEL_101;
          }

LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    __break(1u);
    goto LABEL_98;
  }

  return result;
}

uint64_t sub_10052627C()
{
  _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  if (static UUID.== infix(_:_:)())
  {
    return 1;
  }

  else
  {
    return static UUID.== infix(_:_:)() & 1;
  }
}

void *sub_1005262F8()
{
  v122 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v124 = *(v122 - 1);
  v0 = __chkstk_darwin(v122);
  v127 = v107 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __chkstk_darwin(v0);
  v4 = v107 - v3;
  v5 = __chkstk_darwin(v2);
  v116 = v107 - v6;
  v7 = __chkstk_darwin(v5);
  v110 = v107 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = (v107 - v10);
  __chkstk_darwin(v9);
  v13 = (v107 - v12);
  v133 = 0;
  v134 = 0xE000000000000000;
  if (qword_100ACFF28 != -1)
  {
    goto LABEL_103;
  }

LABEL_2:
  v14 = type metadata accessor for Logger();
  sub_10000617C(v14, qword_100AE80F0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = 0x3FE0000000000000;
    _os_log_impl(&_mh_execute_header, v15, v16, "[MOSuggestionAssetMapsClusterer] using POI penalty: %f", v17, 0xCu);
  }

  v18 = OBJC_IVAR____TtCC7Journal10MapManager30MOSuggestionAssetMapsClusterer_results;
  v19 = v123;
  swift_beginAccess();
  v20 = *(v18 + v19);
  v21 = &unk_100AE8000;
  if (*(v20 + 16))
  {
    v128 = v18;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v20 + 56);
    v25 = (v22 + 63) >> 6;

    v26 = 0;
    v27 = 0.0;
LABEL_10:
    if (v24)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        swift_once();
        goto LABEL_2;
      }

      if (v29 >= v25)
      {
        break;
      }

      v24 = *(v20 + 56 + 8 * v29);
      ++v26;
      if (v24)
      {
        v26 = v29;
LABEL_15:
        sub_1005071CC(*(v20 + 48) + *(v124 + 72) * (__clz(__rbit64(v24)) | (v26 << 6)), v13);
        v30 = v13[2];
        v31 = *(v13 + v122[9]);
        v32 = v31;
        sub_100507230(v13);
        if (v31)
        {

          v28 = 0.5;
        }

        else
        {
          v28 = -0.5;
        }

        v24 &= v24 - 1;
        v27 = v27 + v30 * (1.0 - v28);
        goto LABEL_10;
      }
    }

    v33 = *(v128 + v123);
    v34 = v33[2];
    if (v34)
    {
      v35 = sub_1003E7734(v33[2], 0);
      v128 = sub_1001C1EDC(&v129, &v35[(*(v124 + 80) + 32) & ~*(v124 + 80)], v34, v33);
      swift_bridgeObjectRetain_n();
      sub_100014FF8();
      if (v128 != v34)
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {

      v35 = _swiftEmptyArrayStorage;
    }

    v129 = v35;
    v13 = 0;
    sub_1005273CC(&v129);

    v37 = v129;
    v38 = v129[2];
    if (v38)
    {
      v39 = 0;
      v40 = v27 / v34;
      v119 = OBJC_IVAR____TtCC7Journal10MapManager30MOSuggestionAssetMapsClusterer_inputClusters;
      v36 = v124;
      v118 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v41 = v129 + v118;
      v107[2] = MKPointOfInterestCategoryReligiousSite;
      v128 = _swiftEmptyArrayStorage;
      v115 = v129;
      v114 = v38;
      v113 = v129 + v118;
      v121 = v11;
      while (1)
      {
        if (v39 >= v37[2])
        {
          goto LABEL_99;
        }

        v42 = *(v36 + 72);
        sub_1005071CC(&v41[v42 * v39], v11);
        v43 = v11[2];
        if (v43 >= v40)
        {
          goto LABEL_26;
        }

        v125 = v42;
        v129 = v133;
        v130 = v134;
        v13 = *(v11 + 4);
        v11 = *(v11 + 5);
        v131 = v13;
        v132 = v11;
        sub_1000777B4();
        if (StringProtocol.contains<A>(_:)())
        {
          v11 = v121;
          goto LABEL_25;
        }

        v120 = v13;
        v129 = v13;
        v130 = v11;
        v131 = 95;
        v132 = 0xE100000000000000;
        v44 = StringProtocol.components<A>(separatedBy:)();
        if (!*(v44 + 16))
        {
          goto LABEL_101;
        }

        v45 = v44;
        v13 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_100692980(v45);
        }

        v11 = v121;
        v46 = *(v45 + 2);
        if (!v46)
        {
          goto LABEL_102;
        }

        *(v45 + 2) = v46 - 1;

        v47 = *(v45 + 2);
        if (!v47)
        {

          v52 = 0;
          goto LABEL_83;
        }

        v48 = 0;
        v117 = 0;
        v126 = 0;
        v49 = (v45 + 40);
        v50 = 0.0;
        v51 = 0.0;
        do
        {
          v54 = *(v49 - 1);
          v55 = *v49;
          if (v54)
          {
            v56 = 0;
          }

          else
          {
            v56 = v55 == 0xE000000000000000;
          }

          if (!v56 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {

            v57 = sub_1006CA14C(v54, v55);
            if ((v58 & 1) == 0 && (v57 & 0x8000000000000000) == 0)
            {
              v59 = *(v123 + v119);
              if (v57 < *(v59 + 16))
              {
                v60 = (v59 + v118 + v57 * v125);
                v62 = *v60;
                v61 = v60[1];
                v63 = *(v60 + v122[9]);
                if (v63)
                {
                  v64 = v63;
                  if (v117 <= 0)
                  {
                    v111 = v64;
                    v65 = [v111 pointOfInterestCategory];
                    v112 = v13;
                    if (v65)
                    {
                      v66 = v65;
                      v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v68 = v67;
                      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v109 = v68;
                      if (v108 == v69 && v68 == v70)
                      {

                        v13 = v112;
                        goto LABEL_38;
                      }

                      v107[1] = v70;
                      LODWORD(v108) = _stringCompareWithSmolCheck(_:_:expecting:)();

                      v13 = v112;
                      if (v108)
                      {
                        v66 = v111;
                        goto LABEL_38;
                      }
                    }

                    v66 = v111;
                    v72 = [v111 _styleAttributes];
                    if (v72)
                    {

                      v73 = v122;
                      v74 = (v11 + v122[10]);
                      v75 = v74[1];
                      v117 = *v74;
                      v111 = v75;
                      v109 = v122[8];

                      v76 = v110;
                      UUID.init()();
                      *v76 = v62;
                      *(v76 + 8) = v61;
                      *(v76 + 16) = v43;
                      *(v76 + 24) = 1;
                      v77 = v112;
                      *(v76 + 32) = v120;
                      *(v76 + 40) = v77;
                      *(v76 + v73[9]) = v63;
                      v78 = (v76 + v73[10]);
                      v79 = v111;
                      *v78 = v117;
                      v78[1] = v79;
                      *(v76 + v73[11]) = 0;
                      *(v76 + v73[12]) = 0;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v128 = sub_1003E5358(0, v128[2] + 1, 1, v128);
                      }

                      v81 = v128[2];
                      v80 = v128[3];
                      if (v81 >= v80 >> 1)
                      {
                        v128 = sub_1003E5358(v80 > 1, v81 + 1, 1, v128);
                      }

                      v82 = v128;
                      v128[2] = v81 + 1;
                      sub_100528CA8(v110, v82 + v118 + v81 * v125);
                      if (v51 != 0.0)
                      {
                        v51 = v51 + (v51 - v62) / 7.0;
                      }

                      v13 = v112;
                      if (v50 != 0.0)
                      {
                        v50 = v50 + (v50 - v61) / 7.0;
                      }

                      v117 = 1;
LABEL_46:
                      v126 = v63;
                      goto LABEL_47;
                    }

LABEL_38:
                  }
                }

                if (v51 == 0.0)
                {
                  v51 = v62;
                }

                else
                {
                  v51 = (v51 + v62) * 0.5;
                }

                if (v50 == 0.0)
                {
                  v50 = v61;
                }

                else
                {
                  v50 = (v50 + v61) * 0.5;
                }

                if (__OFADD__(v48++, 1))
                {
                  goto LABEL_100;
                }

                goto LABEL_46;
              }
            }
          }

LABEL_47:
          v49 += 2;
          --v47;
        }

        while (v47);

        v41 = v113;
        if (v48 < 1)
        {
          v37 = v115;
          v38 = v114;
        }

        else
        {
          v83 = v122;
          v84 = (v11 + v122[10]);
          v85 = v84[1];
          v117 = *v84;
          v86 = v126;
          v87 = v126;

          v88 = v116;
          UUID.init()();
          *v88 = v51;
          *(v88 + 8) = v50;
          *(v88 + 16) = v43;
          v89 = v120;
          *(v88 + 24) = v48;
          *(v88 + 32) = v89;
          *(v88 + 40) = v13;
          *(v88 + v83[9]) = v86;
          v90 = (v88 + v83[10]);
          *v90 = v117;
          v90[1] = v85;
          *(v88 + v83[11]) = 0;
          *(v88 + v83[12]) = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v128 = sub_1003E5358(0, v128[2] + 1, 1, v128);
          }

          v92 = v128[2];
          v91 = v128[3];
          v37 = v115;
          v38 = v114;
          v11 = v121;
          if (v92 >= v91 >> 1)
          {
            v128 = sub_1003E5358(v91 > 1, v92 + 1, 1, v128);
          }

          v93 = v128;
          v128[2] = v92 + 1;
          sub_100528CA8(v116, v93 + v118 + v92 * v125);
        }

        v52 = v126;
LABEL_83:
        v94._countAndFlagsBits = v120;
        v94._object = v13;
        String.append(_:)(v94);

LABEL_25:
        v36 = v124;
LABEL_26:
        ++v39;
        sub_100507230(v11);
        if (v39 == v38)
        {

          goto LABEL_86;
        }
      }
    }

    v128 = _swiftEmptyArrayStorage;
    v36 = v124;
LABEL_86:
    v21 = &unk_100AE8000;
  }

  else
  {
LABEL_20:
    v128 = _swiftEmptyArrayStorage;
    v36 = v124;
  }

  v95 = *(v123 + v21[35]);
  v96 = *(v95 + 16);
  if (v96)
  {
    v97 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v98 = v95 + v97;
    v99 = *(v36 + 72);
    v126 = *(v123 + v21[35]);

    do
    {
      sub_1005071CC(v98, v4);
      v129 = v133;
      v130 = v134;
      v102 = *(v4 + 4);
      v103 = *(v4 + 5);
      v131 = v102;
      v132 = v103;
      sub_1000777B4();
      if ((StringProtocol.contains<A>(_:)() & 1) == 0)
      {
        sub_1005071CC(v4, v127);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = sub_1003E5358(0, v128[2] + 1, 1, v128);
        }

        v105 = v128[2];
        v104 = v128[3];
        if (v105 >= v104 >> 1)
        {
          v128 = sub_1003E5358(v104 > 1, v105 + 1, 1, v128);
        }

        v100 = v128;
        v128[2] = v105 + 1;
        sub_100528CA8(v127, v100 + v97 + v105 * v99);
        v101._countAndFlagsBits = v102;
        v101._object = v103;
        String.append(_:)(v101);
      }

      sub_100507230(v4);
      v98 += v99;
      --v96;
    }

    while (v96);
  }

  return v128;
}

id sub_1005270CC()
{
  v2.receiver = v0;
  v2.super_class = _s30MOSuggestionAssetMapsClustererCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s30MOSuggestionAssetMapsClustererC7ClusterVMa()
{
  result = qword_100AE81B0;
  if (!qword_100AE81B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100527204()
{
  sub_1005272D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      sub_10052732C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1005272D0()
{
  if (!qword_100AE81C0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100AE81C0);
    }
  }
}

void sub_10052732C()
{
  if (!qword_100AEE000)
  {
    sub_10011D468();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEE000);
    }
  }
}

Swift::Int sub_1005273CC(void **a1)
{
  v2 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100205070(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100527474(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100527474(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1005277A4(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1005275A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1005275A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v9 = __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v29 - v13);
  result = __chkstk_darwin(v12);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v23;
    v34 = v21;
    while (1)
    {
      sub_1005071CC(v24, v18);
      sub_1005071CC(v21, v14);
      v26 = v18[2];
      v27 = v14[2];
      sub_100507230(v14);
      result = sub_100507230(v18);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_100528CA8(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100528CA8(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1005277A4(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v118 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v114 = *(v118 - 8);
  v9 = __chkstk_darwin(v118);
  v110 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v117 = &v103 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = (&v103 - v14);
  result = __chkstk_darwin(v13);
  v18 = (&v103 - v17);
  v116 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_100204C44(v21);
      v21 = result;
    }

    v119 = v21;
    v99 = *(v21 + 2);
    if (v99 >= 2)
    {
      while (*v116)
      {
        v100 = *&v21[16 * v99];
        v101 = *&v21[16 * v99 + 24];
        sub_100527FE8(*v116 + *(v114 + 72) * v100, *v116 + *(v114 + 72) * *&v21[16 * v99 + 16], *v116 + *(v114 + 72) * v101, v5);
        if (v6)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100204C44(v21);
        }

        if (v99 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v102 = &v21[16 * v99];
        *v102 = v100;
        *(v102 + 1) = v101;
        v119 = v21;
        result = sub_100204BB8(v99 - 1);
        v21 = v119;
        v99 = *(v119 + 2);
        if (v99 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v106 = a4;
  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = v22;
      v25 = *v116;
      v26 = *(v114 + 72);
      v5 = *v116 + v26 * v23;
      sub_1005071CC(v5, v18);
      sub_1005071CC(v25 + v26 * v24, v15);
      v27 = v18[2];
      v28 = v15[2];
      sub_100507230(v15);
      result = sub_100507230(v18);
      v107 = v24;
      v29 = v24 + 2;
      v115 = v26;
      v30 = v25 + v26 * v29;
      while (v19 != v29)
      {
        sub_1005071CC(v30, v18);
        sub_1005071CC(v5, v15);
        v31 = v18[2];
        v32 = v15[2];
        sub_100507230(v15);
        result = sub_100507230(v18);
        ++v29;
        v30 += v115;
        v5 += v115;
        if (v28 < v27 == v32 >= v31)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v107;
      if (v28 < v27)
      {
        if (v19 < v107)
        {
          goto LABEL_123;
        }

        if (v107 < v19)
        {
          v104 = v21;
          v105 = v6;
          v33 = v115 * (v19 - 1);
          v34 = v19 * v115;
          v113 = v19;
          v35 = v19;
          v36 = v107;
          v37 = v107 * v115;
          do
          {
            if (v36 != --v35)
            {
              v5 = *v116;
              if (!*v116)
              {
                goto LABEL_129;
              }

              sub_100528CA8(v5 + v37, v110);
              if (v37 < v33 || v5 + v37 >= v5 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100528CA8(v110, v5 + v33);
            }

            ++v36;
            v33 -= v115;
            v34 -= v115;
            v37 += v115;
          }

          while (v36 < v35);
          v21 = v104;
          v6 = v105;
          v22 = v107;
          v19 = v113;
        }
      }
    }

    v38 = v116[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_122;
      }

      if (v19 - v22 < v106)
      {
        if (__OFADD__(v22, v106))
        {
          goto LABEL_124;
        }

        if (v22 + v106 >= v38)
        {
          v39 = v116[1];
        }

        else
        {
          v39 = v22 + v106;
        }

        if (v39 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

    v40 = v19;
    if (v19 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003E4B80(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v42 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1003E4B80((v41 > 1), v42 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * v42];
    *(v43 + 4) = v22;
    *(v43 + 5) = v40;
    v44 = *v108;
    if (!*v108)
    {
      goto LABEL_131;
    }

    v111 = v40;
    if (v42)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_110;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_113;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_117;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_112;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_115;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        v83 = v45 - 1;
        if (v45 - 1 >= v5)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v116)
        {
          goto LABEL_128;
        }

        v84 = *&v21[16 * v83 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_100527FE8(*v116 + *(v114 + 72) * v84, *v116 + *(v114 + 72) * *&v21[16 * v45 + 32], *v116 + *(v114 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_100204C44(v21);
        }

        if (v83 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v85 = &v21[16 * v83];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v119 = v21;
        result = sub_100204BB8(v45);
        v21 = v119;
        v5 = *(v119 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_108;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_109;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_111;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_114;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_118;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v116[1];
    v20 = v111;
    if (v111 >= v19)
    {
      goto LABEL_94;
    }
  }

  v104 = v21;
  v105 = v6;
  v86 = *v116;
  v87 = *(v114 + 72);
  v88 = *v116 + v87 * (v19 - 1);
  v89 = v19;
  v90 = -v87;
  v107 = v22;
  v91 = v22 - v89;
  v113 = v89;
  v109 = v87;
  v92 = v86 + v89 * v87;
  v111 = v39;
LABEL_85:
  v5 = v92;
  v112 = v91;
  v93 = v91;
  v115 = v88;
  v94 = v88;
  while (1)
  {
    sub_1005071CC(v5, v18);
    sub_1005071CC(v94, v15);
    v95 = v18[2];
    v96 = v15[2];
    sub_100507230(v15);
    result = sub_100507230(v18);
    if (v96 >= v95)
    {
LABEL_84:
      v88 = v115 + v109;
      v91 = v112 - 1;
      v92 += v109;
      v40 = v111;
      if (++v113 != v111)
      {
        goto LABEL_85;
      }

      v21 = v104;
      v6 = v105;
      v22 = v107;
      if (v111 < v107)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v86)
    {
      break;
    }

    v97 = v117;
    sub_100528CA8(v5, v117);
    swift_arrayInitWithTakeFrontToBack();
    sub_100528CA8(v97, v94);
    v94 += v90;
    v5 += v90;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100527FE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v8 = __chkstk_darwin(v44);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = (&v39 - v11);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v48 = a1;
  v47 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v42 = v25;
      v43 = a4;
      do
      {
        v40 = v24;
        v27 = a2 + v25;
        while (1)
        {
          if (a2 <= a1)
          {
            v48 = a2;
            v24 = v40;
            goto LABEL_57;
          }

          v29 = a3;
          v41 = v24;
          a3 += v25;
          v30 = v26 + v25;
          sub_1005071CC(v30, v12);
          v31 = v27;
          v32 = v27;
          v33 = v12;
          v34 = v45;
          sub_1005071CC(v32, v45);
          v35 = *(v33 + 16);
          v36 = *(v34 + 16);
          v37 = v34;
          v12 = v33;
          sub_100507230(v37);
          sub_100507230(v33);
          if (v36 < v35)
          {
            break;
          }

          v24 = v30;
          if (v29 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v30;
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v30;
            }
          }

          v26 = v24;
          v28 = v30 > v43;
          v25 = v42;
          if (!v28)
          {
            goto LABEL_55;
          }
        }

        if (v29 < a2 || a3 >= a2)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
        }

        else
        {
          v38 = v29 == a2;
          a2 = v31;
          v25 = v42;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v41;
      }

      while (v26 > v43);
    }

LABEL_55:
    v48 = a2;
LABEL_57:
    v46 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v46 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        sub_1005071CC(a2, v12);
        v21 = v45;
        sub_1005071CC(a4, v45);
        v22 = v12[2];
        v23 = *(v21 + 16);
        sub_100507230(v21);
        sub_100507230(v12);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v48 = a1;
      }

      while (a4 < v19 && a2 < a3);
    }
  }

  sub_100204C9C(&v48, &v47, &v46);
  return 1;
}

void *sub_10052844C(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_1000F24EC(&qword_100AD7EC8);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_1005284E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v3[2] = v2;
    memset_pattern16(v3 + 4, &unk_10095C0A0, 8 * v2);
    v4 = *(v1 + 16);
  }

  else
  {
    v4 = 0;
    v3 = _swiftEmptyArrayStorage;
  }

  v5 = sub_10052844C(v3, v4);

  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = v7 - 1;
    if (v7 == 1)
    {
      return v5;
    }

    v9 = 0;
    v30 = v1;
    v31 = v1 + 8;
    v10 = 5;
    v11 = 1;
    v12 = v7 - 1;
    v28 = v7 - 1;
    v29 = *(v1 + 16);
    while (v9 != v8)
    {
      v13 = *(v1 + 16);
      if (v7 > v13 || v9 + 1 >= v13)
      {
        goto LABEL_32;
      }

      v32 = v9 + 1;
      v15 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = *(v15 + 72);
      v18 = (v1 + v16 + v17 * v9);
      v33 = v11;
      v34 = v10;
      v19 = (v31 + v16 + v17 * v11);
      v20 = v12;
      do
      {
        v21 = *v18;
        v22 = v18[1];
        v24 = *(v19 - 1);
        v23 = *v19;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1006929E4(v5);
          v5 = result;
        }

        if (v9 >= v5[2])
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v25 = v5[v9 + 4];
        result = swift_isUniquelyReferenced_nonNull_native();
        v5[v9 + 4] = v25;
        if ((result & 1) == 0)
        {
          result = sub_1006929D0(v25);
          v25 = result;
          v5[v9 + 4] = result;
        }

        if ((v10 - 4) >= *(v25 + 16))
        {
          goto LABEL_28;
        }

        v26 = (v21 - v24) * (v21 - v24) + (v22 - v23) * (v22 - v23);
        *(v25 + 8 * v10) = v26;
        if ((v10 - 4) >= v5[2])
        {
          goto LABEL_29;
        }

        v27 = v5[v10];
        result = swift_isUniquelyReferenced_nonNull_native();
        v5[v10] = v27;
        if ((result & 1) == 0)
        {
          result = sub_1006929D0(v27);
          v27 = result;
          v5[v10] = result;
        }

        if (v9 >= *(v27 + 16))
        {
          goto LABEL_30;
        }

        *(v27 + 8 * v9 + 32) = v26;
        ++v10;
        v19 = (v19 + v17);
        --v20;
      }

      while (v20);
      --v12;
      v10 = v34 + 1;
      v11 = v33 + 1;
      ++v9;
      v8 = v28;
      v7 = v29;
      v1 = v30;
      if (v32 == v28)
      {
        return v5;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_100528784(uint64_t a1, char a2, char a3, char a4, char a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v53 = *(a1 + 96);
    v10 = *(a1 + 48);
    v49 = *(a1 + 32);
    v50 = v10;
    v11 = *(a1 + 80);
    v51 = *(a1 + 64);
    v52 = v11;
    if (v5 == 1)
    {
      longitude = *(&v49 + 1);
      latitude = *&v49;
      if ((v51 & 1) == 0 && *(&v50 + 1) >= 2)
      {
        if (a5)
        {
          sub_10032C54C(&v49, v48);
          v14 = 0.01;
LABEL_23:
          v56.span.latitudeDelta = v14;
LABEL_29:
          v37 = 1.4;
LABEL_33:
          v38 = v56.span.latitudeDelta * v37;
          v39 = v14 * v37;
          if (a2)
          {
            v38 = v38 * 1.4;
            v39 = v39 * 0.9;
            latitude = latitude + v38 / -12.0;
          }

          if (a4)
          {
            v38 = v38 * 1.3;
          }

          if (a3)
          {
            v39 = v39 * 1.3;
          }

          v40 = fmin(v39, 180.0);
          v41 = fmin(v38, 180.0);
          if (!sub_10032C294(latitude, longitude, v41, v40))
          {
            if (qword_100ACFF28 != -1)
            {
              swift_once();
            }

            v42 = type metadata accessor for Logger();
            sub_10000617C(v42, qword_100AE80F0);
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              *v45 = 134218752;
              *(v45 + 4) = latitude;
              *(v45 + 12) = 2048;
              *(v45 + 14) = longitude;
              *(v45 + 22) = 2048;
              *(v45 + 24) = v41;
              *(v45 + 32) = 2048;
              *(v45 + 34) = v40;
              _os_log_impl(&_mh_execute_header, v43, v44, "[MapSnapshot] makeRegion failed with invalid region: centerLatitude = %f, centerLongitude = %f, targetLatitudeDelta = %f, targetLongitudeDelta = %f", v45, 0x2Au);
            }

            v57.origin.x = MKMapRectWorld.origin.x;
            v57.origin.y = MKMapRectWorld.origin.y;
            v57.size.width = MKMapRectWorld.size.width;
            v57.size.height = MKMapRectWorld.size.height;
            *&latitude = MKCoordinateRegionForMapRect(v57);
          }

          sub_10032C5A8(&v49);
          return latitude;
        }

        sub_10032C54C(&v49, v48);
        v14 = 0.01;
LABEL_31:
        v56.span.latitudeDelta = v14;
        goto LABEL_32;
      }

      if (v53 <= 0.0)
      {
        if (a5)
        {
          sub_10032C54C(&v49, v48);
          v14 = 0.04;
          goto LABEL_23;
        }

        sub_10032C54C(&v49, v48);
        v14 = 0.04;
        goto LABEL_31;
      }

      v34 = v53 / 111000.0;
      if (v53 >= 150.0)
      {
        v36 = v34 * 3.0 + 0.003;
        if (v36 <= 0.1)
        {
          v35 = v36;
        }

        else
        {
          v35 = 0.1;
        }
      }

      else
      {
        v35 = v34 + v34 + 0.003;
      }

      sub_10032C54C(&v49, v48);
      v14 = v35;
      v56.span.latitudeDelta = v35;
      if (a5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = (a1 + 32);
      sub_10032C54C(&v49, v48);
      v48[0] = _swiftEmptyArrayStorage;
      sub_100199DE4(0, v5, 0);
      v20 = v48[0];
      v21 = *(v48[0] + 16);
      v22 = v5;
      do
      {
        v23 = *v19;
        v48[0] = v20;
        v24 = *(v20 + 24);
        if (v21 >= v24 >> 1)
        {
          v47 = v23;
          sub_100199DE4((v24 > 1), v21 + 1, 1);
          v23 = v47;
          v20 = v48[0];
        }

        *(v20 + 16) = v21 + 1;
        *(v20 + 16 * v21 + 32) = v23;
        v19 = (v19 + 72);
        ++v21;
        --v22;
      }

      while (v22);
      v25 = [objc_opt_self() polygonWithCoordinates:v20 + 32 count:v5];

      [v25 boundingMapRect];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v55.origin.x = v27;
      v55.origin.y = v29;
      v55.size.width = v31;
      v55.size.height = v33;
      *(&v14 - 3) = MKCoordinateRegionForMapRect(v55);
      latitude = v56.center.latitude;
      longitude = v56.center.longitude;
      if (a5)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    v37 = 1.1;
    goto LABEL_33;
  }

  if (qword_100ACFF28 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000617C(v15, qword_100AE80F0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "[MapSnapshot] makeRegion failed with 0 locations", v18, 2u);
  }

  v54.origin.x = MKMapRectNull.origin.x;
  v54.origin.y = MKMapRectNull.origin.y;
  v54.size.width = MKMapRectNull.size.width;
  v54.size.height = MKMapRectNull.size.height;
  *&latitude = MKCoordinateRegionForMapRect(v54);
  return latitude;
}

uint64_t sub_100528CA8(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100528D0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100528D54(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100528DD8()
{
  sub_1000F24EC(&qword_100AE8230);
  type metadata accessor for _AssistantIntent();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10094A930;
  sub_10004C238(v2);
  sub_100054264();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  sub_10004C238(v2);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  sub_10004C238(v2);
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  sub_100192050();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v2[0] = sub_100735830();
  sub_10052D408();
  result = _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  qword_100B2FAF8 = v0;
  return result;
}

uint64_t sub_10052904C()
{
  v0 = type metadata accessor for _AssistantIntent.PhraseToken();
  v94 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AE8290);
  __chkstk_darwin(v3);
  v4 = sub_1000F24EC(&qword_100AE8288);
  v97 = v4;
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v75 - v6;
  sub_100054264();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v87 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v5 + 8);
  v8(v7, v4);
  v93 = v5 + 8;
  v91 = v8;
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v86 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v7, v4);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x2061206574697257;
  v9._object = 0xEC0000002077656ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  v10 = v94;
  v11 = *(v94 + 104);
  v95 = v94 + 104;
  v96 = v11;
  v12 = v2;
  v13 = v2;
  v14 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v92 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v90 = v0;
  (v11)(v13);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v89 = *(v10 + 8);
  v89(v12, v0);
  v94 = v10 + 8;
  v15._countAndFlagsBits = 0x7972746E6520;
  v15._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v85 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v91;
  v91(v7, v97);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x6120657461657243;
  v17._object = 0xEF206B6E616C6220;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v88 = v12;
  v18 = v14;
  v19 = v90;
  v96(v12, v18, v90);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v20 = v12;
  v21 = v89;
  v89(v20, v19);
  v22._countAndFlagsBits = 0x7972746E6520;
  v22._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v84 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v97;
  v16(v7, v97);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v83 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16(v7, v23);
  v24 = v16;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0x2061207472617453;
  v25._object = 0xEC0000002077656ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  v26 = v88;
  v96(v88, v92, v19);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v21(v26, v19);
  v27 = v21;
  v28._countAndFlagsBits = 0x7972746E6520;
  v28._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v82 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29 = v97;
  v24(v7, v97);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v81 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24(v7, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0x2061206E69676542;
  v30._object = 0xEC0000002077656ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  v31 = v88;
  v32 = v92;
  v96(v88, v92, v19);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v27(v31, v19);
  v33._countAndFlagsBits = 0x7972746E6520;
  v33._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v80 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v91(v7, v97);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v34._countAndFlagsBits = 0x6E69206574697257;
  v34._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  v35 = v32;
  v36 = v90;
  v37 = v96;
  v96(v31, v35, v90);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v27(v31, v36);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v79 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v39 = v97;
  v91(v7, v97);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v40._object = 0xEC00000020796D20;
  v40._countAndFlagsBits = 0x6E69206574697257;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v40);
  v41 = v90;
  v37(v31, v92, v90);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v42 = v89;
  v89(v31, v41);
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v78 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v44 = v39;
  v45 = v91;
  v91(v7, v44);
  v46 = v45;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v47._countAndFlagsBits = 0xD00000000000001BLL;
  v47._object = 0x80000001008EC3E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v47);
  v48 = v92;
  v49 = v90;
  v96(v31, v92, v90);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v42(v31, v49);
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v50);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v77 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v51 = v97;
  v46(v7, v97);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v52._countAndFlagsBits = 0xD000000000000018;
  v52._object = 0x80000001008EC400;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v52);
  v53 = v48;
  v54 = v96;
  v96(v31, v53, v49);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v89(v31, v49);
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v55);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v76 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v91(v7, v51);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v56._countAndFlagsBits = 0xD000000000000015;
  v56._object = 0x80000001008EC420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v56);
  v57 = v90;
  v54(v31, v92, v90);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v58 = v89;
  v89(v31, v57);
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v59);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v75 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v60 = v91;
  v91(v7, v97);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v61._countAndFlagsBits = 0xD000000000000018;
  v61._object = 0x80000001008EC440;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v61);
  v96(v31, v92, v57);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v58(v31, v57);
  v62._countAndFlagsBits = 0;
  v62._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v62);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v63 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v64 = v97;
  v60(v7, v97);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v65 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v60(v7, v64);
  sub_1000F24EC(&qword_100AE8298);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_100950C50;
  v67 = v86;
  *(v66 + 32) = v87;
  *(v66 + 40) = v67;
  v68 = v84;
  *(v66 + 48) = v85;
  *(v66 + 56) = v68;
  v69 = v82;
  *(v66 + 64) = v83;
  *(v66 + 72) = v69;
  v70 = v80;
  *(v66 + 80) = v81;
  *(v66 + 88) = v70;
  v71 = v78;
  *(v66 + 96) = v79;
  *(v66 + 104) = v71;
  v72 = v76;
  *(v66 + 112) = v77;
  *(v66 + 120) = v72;
  *(v66 + 128) = v75;
  *(v66 + 136) = v63;
  *(v66 + 144) = v65;
  v73 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v73;
}

uint64_t sub_100529D10(uint64_t a1)
{
  v87 = type metadata accessor for _AssistantIntent.PhraseToken();
  v90 = *(v87 - 8);
  __chkstk_darwin(v87);
  v82 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1000F24EC(&qword_100AE8288);
  v3 = *(v86 - 8);
  __chkstk_darwin(v86);
  v5 = &v68 - v4;
  v6 = sub_1000F24EC(&qword_100AE8290);
  __chkstk_darwin(v6);
  v7 = sub_100054264();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0xD000000000000020;
  v8._object = 0x80000001008F9450;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v81 = sub_10052D45C(&qword_100AD9D98, &unk_100AE4870, &unk_100945360, sub_100236DF0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x65687420646E6120;
  v9._object = 0xEE00207478657420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v89 = sub_10052D5E0(&qword_100AD9DB8, &type metadata accessor for AttributedString);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0xD00000000000001ELL;
  v10._object = 0x80000001008F9480;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v80 = sub_10023701C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v88 = v5;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v75 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = *(v3 + 8);
  v84 = v3 + 8;
  v85 = v12;
  v13 = v86;
  v12(v5, v86);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0xD00000000000001DLL;
  v14._object = 0x80000001008F94A0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0x65687420646E6120;
  v15._object = 0xEE00207478657420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0xD00000000000001ELL;
  v16._object = 0x80000001008F94C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v88;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v74 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v85(v18, v13);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0xD00000000000001FLL;
  v19._object = 0x80000001008F94E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0x65687420646E6120;
  v20._object = 0xEE00207478657420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  v83 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x687420646E61202CLL;
  v21._object = 0xEF20646461206E65;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  sub_10052D52C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  v23 = v88;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v77 = v7;
  v73 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24 = v85;
  v25 = v86;
  v85(v23, v86);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0xD000000000000014;
  v26._object = 0x80000001008F9500;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 0x65687420646E6120;
  v27._object = 0xEE00207478657420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  v29 = v88;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v72 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24(v29, v25);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0x2061207472617453;
  v30._object = 0xEC0000002077656ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  v76 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v31 = v90;
  v78 = *(v90 + 104);
  v80 = v90 + 104;
  v32 = v82;
  v33 = v87;
  v78(v82);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v34 = *(v31 + 8);
  v90 = v31 + 8;
  v79 = v34;
  v34(v32, v33);
  v70 = "Write an entry with ";
  v35._object = 0x80000001008F9520;
  v35._countAndFlagsBits = 0xD000000000000016;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36._countAndFlagsBits = 0x65687420646E6120;
  v36._object = 0xEE00207478657420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 0x687420646E61202CLL;
  v37._object = 0xEF20646461206E65;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();
  sub_100236F68();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  v39 = v88;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v71 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v40 = v85;
  v85(v39, v86);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v41._countAndFlagsBits = 0x6120657461657243;
  v41._object = 0xED00002077656E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);
  v42 = v82;
  v43 = v76;
  v44 = v87;
  (v78)(v82, v76, v87);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v79(v42, v44);
  v45._countAndFlagsBits = 0x77207972746E6520;
  v45._object = 0xEC00000020687469;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v45);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v46._countAndFlagsBits = 0xD000000000000012;
  v46._object = 0x80000001008F9540;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v46);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v47);
  v48 = v88;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v69 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v49 = v86;
  v40(v48, v86);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v50._countAndFlagsBits = 0x2061206574697257;
  v50._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v50);
  v51 = v82;
  v52 = v87;
  (v78)(v82, v43, v87);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v79(v51, v52);
  v53._object = (v70 | 0x8000000000000000);
  v53._countAndFlagsBits = 0xD000000000000016;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v53);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v54._countAndFlagsBits = 0x65687420646E6120;
  v54._object = 0xEE00207478657420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v54);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v55);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v81 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v56 = v85;
  v85(v48, v49);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v57._countAndFlagsBits = 0x6120657461657243;
  v57._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v57);
  v58 = v87;
  (v78)(v51, v76, v87);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v79(v51, v58);
  v59._countAndFlagsBits = 0x207972746E6520;
  v59._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v59);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v60);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v61 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v56(v48, v49);
  sub_1000F24EC(&qword_100AE8298);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_10093B4B0;
  v63 = v74;
  *(v62 + 32) = v75;
  *(v62 + 40) = v63;
  v64 = v72;
  *(v62 + 48) = v73;
  *(v62 + 56) = v64;
  v65 = v69;
  *(v62 + 64) = v71;
  *(v62 + 72) = v65;
  *(v62 + 80) = v81;
  *(v62 + 88) = v61;
  v66 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v66;
}

uint64_t sub_10052AD20(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_10052AE54(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000082B4(a1, &v9 - v6, &unk_100AD4790);
  sub_1000082B4(v7, v4, &unk_100AD4790);
  IntentParameter.wrappedValue.setter();
  return sub_100004F84(v7, &unk_100AD4790);
}

uint64_t sub_10052AF48(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE82A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000082B4(a1, &v9 - v6, &qword_100AE82A8);
  sub_1000082B4(v7, v4, &qword_100AE82A8);
  IntentParameter.wrappedValue.setter();
  return sub_100004F84(v7, &qword_100AE82A8);
}

uint64_t sub_10052B03C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10052D45C(&qword_100AD9D98, &unk_100AE4870, &unk_100945360, sub_100236DF0);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100054264();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v13 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  swift_getKeyPath();
  sub_10052D5E0(&qword_100AD9DB8, &type metadata accessor for AttributedString);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v5 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v4(v3, v0);
  swift_getKeyPath();
  sub_10023701C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v4(v3, v0);
  swift_getKeyPath();
  sub_10052D52C();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v4(v3, v0);
  swift_getKeyPath();
  sub_100236F68();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v8 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_1000F24EC(&qword_100AE8240);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10094A930;
  *(v9 + 32) = v13;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  *(v9 + 64) = v8;
  v10 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_10052B3FC()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000F24EC(&qword_100AE8228);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100941FE0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_10052B4E0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000F24EC(&qword_100AE8228);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100941FE0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_10052B5E0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000F24EC(&qword_100AE8228);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100940050;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_10052B68C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000F24EC(&qword_100AE8228);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100940080;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_10052B710()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000F24EC(&qword_100AE8228);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100940050;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_10052B7C0()
{
  v17 = sub_1000F24EC(&qword_100AE8288);
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v16 - v1;
  v3 = type metadata accessor for _AssistantIntent.PhraseToken();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AE8290);
  __chkstk_darwin(v7);
  sub_100054264();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x6E69206574697257;
  v8._object = 0xEC00000020796D20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  (*(v4 + 104))(v6, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v3);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v4 + 8))(v6, v3);
  v9._object = 0x80000001008F9370;
  v9._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  sub_10052D45C(&qword_100AD9D98, &unk_100AE4870, &unk_100945360, sub_100236DF0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x65687420646E6120;
  v10._object = 0xEE00207478657420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_10052D5E0(&qword_100AD9DB8, &type metadata accessor for AttributedString);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0xD00000000000001ELL;
  v11._object = 0x80000001008F9390;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v12 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  (*(v0 + 8))(v2, v17);
  sub_1000F24EC(&qword_100AE8298);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100940080;
  *(v13 + 32) = v12;
  v14 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v14;
}

uint64_t sub_10052BBDC()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10052D45C(&qword_100AD9D98, &unk_100AE4870, &unk_100945360, sub_100236DF0);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100054264();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10052D5E0(&qword_100AD9DB8, &type metadata accessor for AttributedString);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  swift_getKeyPath();
  sub_10052D45C(&qword_100AE8278, &qword_100AD38E8, &unk_100941FB8, sub_10052D4D8);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_1000F24EC(&qword_100AE8240);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100942000;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_10052BEEC()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000F24EC(&qword_100AE8228);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100940080;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_10052BF88()
{
  v0 = sub_1000F24EC(&qword_100AE8260);
  v1 = *(v0 - 8);
  v45 = v0;
  v46 = v1;
  __chkstk_darwin(v0);
  v3 = &v33 - v2;
  v4 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE8268);
  __chkstk_darwin(v8);
  sub_100192050();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x2061206574697257;
  v9._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  v40 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v10 = *(v5 + 104);
  v43 = v4;
  v44 = v10;
  (v10)(v7);
  v42 = v5 + 104;
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v39 = *(v5 + 8);
  v41 = v5 + 8;
  v39(v7, v4);
  v11._countAndFlagsBits = 0xD00000000000001ELL;
  v11._object = 0x80000001008F92C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v45;
  v34 = *(v46 + 8);
  v46 += 8;
  v34(v3, v45);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x612064726F636552;
  v13._object = 0xED00002077656E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v40;
  v15 = v43;
  v44(v7, v40, v43);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v16 = v39;
  v39(v7, v15);
  v17._countAndFlagsBits = 0x7972746E6520;
  v17._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18 = v12;
  v19 = v34;
  v34(v3, v18);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x6120657461657243;
  v20._object = 0xED00002077656E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  v21 = v43;
  v44(v7, v14, v43);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v16(v7, v21);
  v22._object = 0x80000001008F92E0;
  v22._countAndFlagsBits = 0xD000000000000014;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v45;
  v19(v3, v45);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v3, v23);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x2061207472617453;
  v24._object = 0xEC0000002077656ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v43;
  v44(v7, v40, v43);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v39(v7, v25);
  v26._countAndFlagsBits = 0xD000000000000019;
  v26._object = 0x80000001008F9330;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v3, v45);
  sub_1000F24EC(&qword_100AE8270);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10094A930;
  v29 = v37;
  *(v28 + 32) = v38;
  *(v28 + 40) = v29;
  v30 = v36;
  *(v28 + 48) = v35;
  *(v28 + 56) = v30;
  *(v28 + 64) = v27;
  v31 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v31;
}

uint64_t sub_10052C598(uint64_t a1)
{
  v42 = a1;
  v43 = sub_1000F24EC(&qword_100AE8248);
  v47 = *(v43 - 8);
  __chkstk_darwin(v43);
  v34 = &v34 - v1;
  v2 = type metadata accessor for _AssistantIntent.PhraseToken();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE8250);
  __chkstk_darwin(v6);
  sub_10052D408();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x6620686372616553;
  v7._object = 0xEB0000000020726FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v41 = sub_10052D5E0(&qword_100AE8238, &type metadata accessor for StringSearchCriteria);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x206E696874697720;
  v8._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  v39 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v9 = *(v3 + 104);
  v40 = v3 + 104;
  v45 = v9;
  v37 = v2;
  (v9)(v5);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v10 = *(v3 + 8);
  v46 = v3 + 8;
  v10(v5, v2);
  v11 = v10;
  v38 = v10;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v13 = v34;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v44 = *(v47 + 8);
  v47 += 8;
  v14 = v13;
  v15 = v13;
  v16 = v43;
  v44(v14, v43);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x20646E6946;
  v17._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x206E696874697720;
  v18._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v37;
  v45(v5, v39, v37);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v11(v5, v19);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = v15;
  v44(v15, v16);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0xD000000000000018;
  v22._object = 0x80000001008F9280;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0x206E696874697720;
  v23._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  v24 = v39;
  v25 = v37;
  v45(v5, v39, v37);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v38(v5, v25);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v44(v21, v43);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0x20646E6946;
  v27._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  v45(v5, v24, v25);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v38(v5, v25);
  v28._object = 0x80000001008F92A0;
  v28._countAndFlagsBits = 0xD000000000000017;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v44(v21, v43);
  sub_1000F24EC(&qword_100AE8258);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100941FE0;
  v31 = v35;
  *(v30 + 32) = v36;
  *(v30 + 40) = v31;
  *(v30 + 48) = v42;
  *(v30 + 56) = v29;
  v32 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v32;
}

uint64_t sub_10052CCA0(uint64_t a1)
{
  v2 = type metadata accessor for StringSearchCriteria();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_10052CDD4()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10052D5E0(&qword_100AE8238, &type metadata accessor for StringSearchCriteria);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10052D408();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1000F24EC(&qword_100AE8240);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940080;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10052CF74()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000F24EC(&qword_100AE8228);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100941FE0;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_10052D050()
{
  sub_1000F24EC(&qword_100AE8218);
  type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100942000;
  sub_100054264();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  sub_100192050();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  sub_10052D408();
  result = _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  qword_100B2FB00 = v0;
  return result;
}

uint64_t sub_10052D1B0()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000F24EC(&qword_100AE8228);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100940080;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_10052D234()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000F24EC(&qword_100AE8228);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100940080;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_10052D2DC()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000F24EC(&qword_100AE8228);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100940080;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_10052D394(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

unint64_t sub_10052D408()
{
  result = qword_100AE8220;
  if (!qword_100AE8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8220);
  }

  return result;
}

uint64_t sub_10052D45C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10052D4D8()
{
  result = qword_100AE8280;
  if (!qword_100AE8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8280);
  }

  return result;
}

unint64_t sub_10052D52C()
{
  result = qword_100AE82A0;
  if (!qword_100AE82A0)
  {
    sub_1000F2A18(&qword_100AE82A8);
    sub_10052D5E0(&qword_100AE82B0, &type metadata accessor for PlaceDescriptor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE82A0);
  }

  return result;
}

uint64_t sub_10052D5E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10052D62C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = sub_1000F24EC(&qword_100AE82C0);
  __chkstk_darwin(v4);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for MergeableFont.Traits();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v17 = *(v10 + 16);
  v26 = v2;
  v17(v12, v2, v9, v14);
  v24 = sub_100083A20(&qword_100AE2510);
  dispatch thunk of SetAlgebra.intersection(_:)();
  sub_100083A20(&qword_100AE82C8);
  v25 = a2;
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = v4;
  v19 = *(v4 + 48);
  *v8 = (v18 & 1) == 0;
  if (v18)
  {
    (*(v10 + 32))(&v8[v19], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v20 = v25;
    (v17)(&v8[v19], v25, v9);
    (v17)(v12, v20, v9);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v21 = v27;
  sub_100021CEC(v8, v27, &qword_100AE82C0);
  v22 = *v21;
  (*(v10 + 32))(v29, &v21[*(v28 + 48)], v9);
  return v22;
}

uint64_t sub_10052D914(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE2A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

size_t sub_10052D984@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = type metadata accessor for MergeableTextList();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v26 - v8;
  v10 = type metadata accessor for UnknownValueProperties();
  __chkstk_darwin(v10 - 8);
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_16:

    UnknownValueProperties.init()();
    return MergeableTextLists.init(textLists:unknownProperties:)();
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_3:
  v12 = a1;
  v30 = _swiftEmptyArrayStorage;
  result = sub_10019A158(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v26[1] = a2;
    v14 = v30;
    v15 = v12;
    v28 = v12;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      v27 = v4 + 32;
      do
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = [swift_unknownObjectRetain() markerFormat];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        [v17 startingItemNumber];
        UnknownValueProperties.init()();
        MergeableTextList.init(startingItemNumber:markerFormatString:listOptions:unknownProperties:)();
        swift_unknownObjectRelease_n();
        v30 = v14;
        v20 = *(v14 + 2);
        v19 = *(v14 + 3);
        if (v20 >= v19 >> 1)
        {
          sub_10019A158(v19 > 1, v20 + 1, 1);
          v14 = v30;
        }

        ++v16;
        *(v14 + 2) = v20 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v9, v29);
      }

      while (v11 != v16);
    }

    else
    {
      v27 = v4 + 32;
      v21 = 32;
      do
      {
        v22 = *(v15 + v21);
        v23 = [v22 markerFormat];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        [v22 startingItemNumber];
        UnknownValueProperties.init()();
        MergeableTextList.init(startingItemNumber:markerFormatString:listOptions:unknownProperties:)();

        v30 = v14;
        v25 = *(v14 + 2);
        v24 = *(v14 + 3);
        if (v25 >= v24 >> 1)
        {
          sub_10019A158(v24 > 1, v25 + 1, 1);
          v14 = v30;
        }

        *(v14 + 2) = v25 + 1;
        (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, v6, v29);
        v21 += 8;
        --v11;
        v15 = v28;
      }

      while (v11);
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10052DD60(char a1)
{
  v2 = type metadata accessor for MergeableFont.Traits();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v12 - v7;
  v12[1] = 0;
  sub_100083A20(&qword_100AE82B8);
  result = dispatch thunk of OptionSet.init(rawValue:)();
  if (a1)
  {
    static MergeableFont.Traits.italic.getter();
    sub_10052D62C(v8, v5);
    v10 = *(v3 + 8);
    v10(v5, v2);
    result = (v10)(v8, v2);
  }

  if ((a1 & 2) != 0)
  {
    static MergeableFont.Traits.bold.getter();
    sub_10052D62C(v8, v5);
    v11 = *(v3 + 8);
    v11(v5, v2);
    return (v11)(v8, v2);
  }

  return result;
}

id sub_10052E038()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalMapPassthroughSelectionHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10052E0A8()
{
  sub_10052E390(319, qword_100AEE020, sub_10052E1F8);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MKIconManagerSize(319);
    if (v1 <= 0x3F)
    {
      sub_100087C9C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AsyncPointOfInterestIcon.LoadingState();
        type metadata accessor for State();
        if (v3 <= 0x3F)
        {
          sub_10052E244();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_10052E1F8()
{
  result = qword_100AD5A80;
  if (!qword_100AD5A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD5A80);
  }

  return result;
}

void sub_10052E244()
{
  if (!qword_100AE8418[0])
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, qword_100AE8418);
    }
  }
}

void sub_10052E294()
{
  type metadata accessor for AsyncImagePhase();
  if (v0 <= 0x3F)
  {
    sub_10052E390(319, qword_100AEE020, sub_10052E1F8);
    if (v1 <= 0x3F)
    {
      sub_10052E390(319, &qword_100AE84A0, type metadata accessor for MKIconManagerSize);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10052E390(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10052E460@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for TaskPriority();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for AsyncImagePhase();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  v8 = *(a1 + 16);
  v37 = v7;
  v38 = v8;
  v9 = type metadata accessor for AsyncPointOfInterestIcon.LoadingState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  v13 = type metadata accessor for AsyncPointOfInterestIcon.Inner();
  v45 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v36 = &v36 - v14;
  sub_1000F2A18(&qword_100AE84A8);
  v16 = type metadata accessor for ModifiedContent();
  v44 = *(v16 - 8);
  __chkstk_darwin(v16);
  v39 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v43 = &v36 - v19;
  type metadata accessor for State();
  v20 = v42;
  State.wrappedValue.getter();
  v21 = *(v5 + 16);
  v22 = v40;
  v21(v40, v12, v41);
  (*(v10 + 8))(v12, v9);
  v23 = v22;
  v25 = v37;
  v24 = v38;
  sub_10052E96C(v23, *(v20 + 16), *(v20 + 24), v15);

  sub_10052EA08(&v53);
  v52 = v53;
  sub_10052EACC(v20, v24, v25);
  sub_1000F24EC(&qword_100AE84B0);
  WitnessTable = swift_getWitnessTable();
  sub_10052F950();
  v27 = v46;
  static TaskPriority.userInitiated.getter();
  v28 = v39;
  v29 = v36;
  View.task<A>(id:priority:_:)();

  (*(v47 + 8))(v27, v48);

  (*(v45 + 8))(v29, v13);
  v30 = sub_10052F9CC();
  v50 = WitnessTable;
  v51 = v30;
  swift_getWitnessTable();
  v31 = v43;
  v32 = v44;
  v33 = *(v44 + 16);
  v33(v43, v28, v16);
  v34 = *(v32 + 8);
  v34(v28, v16);
  v33(v49, v31, v16);
  return (v34)(v31, v16);
}

uint64_t sub_10052E96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AsyncImagePhase();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for AsyncPointOfInterestIcon.Inner();
  v10 = (a4 + *(result + 36));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_10052EA08@<X0>(uint64_t *a1@<X8>)
{
  sub_1000F24EC(&qword_100AE2C70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100940050;
  v4 = *v1;
  sub_1000F24EC(&qword_100AE84C8);
  sub_10053039C();
  AnyHashable.init<A>(_:)();
  result = AnyHashable.init<A>(_:)();
  *a1 = v3;
  return result;
}

void *sub_10052EACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AsyncPointOfInterestIcon();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  return &unk_10095C3D8;
}

uint64_t sub_10052EC04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for AsyncPointOfInterestIcon();
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return sub_10052ECBC(v2);
}

uint64_t sub_10052ECBC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_1000F24EC(&unk_100AD4790);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for EnvironmentValues();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for AsyncImagePhase();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = *(a1 + 16);
  v2[22] = *(a1 + 24);
  v7 = type metadata accessor for AsyncPointOfInterestIcon.LoadingState();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[30] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[31] = v9;
  v2[32] = v8;

  return _swift_task_switch(sub_10052EF88, v9, v8);
}

uint64_t sub_10052EF88()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  type metadata accessor for State();
  State.wrappedValue.getter();
  (*(v6 + 16))(v4, v1, v5);
  v7 = *(v3 + 8);
  v7(v1, v2);
  v8 = (*(v6 + 88))(v4, v5);
  LODWORD(v1) = enum case for AsyncImagePhase.success(_:);
  *(v0 + 304) = enum case for AsyncImagePhase.success(_:);
  v9 = *(v6 + 8);
  *(v0 + 264) = v9;
  v9(v4, v5);
  if (v8 != v1)
  {
    goto LABEL_12;
  }

  v10 = *(v0 + 224);
  v11 = *(v0 + 184);
  v12 = *(v0 + 32);
  State.wrappedValue.getter();
  v13 = *(v10 + *(v11 + 36));
  v14 = v13;
  v7(v10, v11);
  v15 = *v12;
  if (v13)
  {
    if (!v15)
    {

      goto LABEL_12;
    }

    sub_10052E1F8();
    v16 = v15;
    v17 = static NSObject.== infix(_:_:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v15)
  {
    v18 = *(v0 + 32);
LABEL_13:
    *(v0 + 272) = v15;
    v24 = *(v0 + 24);
    v25 = v15;
    static Date.now.getter();
    *(v0 + 280) = *(v18 + 8);
    v26 = v18 + *(v24 + 48);
    v27 = *v26;
    if (*(v26 + 8) == 1)
    {
      v28 = *v26;
    }

    else
    {
      v30 = *(v0 + 64);
      v29 = *(v0 + 72);
      v31 = *(v0 + 56);

      static os_log_type_t.fault.getter();
      v32 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000467F0(v27, 0);
      (*(v30 + 8))(v29, v31);
      v28 = *(v0 + 16);
    }

    *(v0 + 288) = v28;

    return _swift_task_switch(sub_10052F428, 0, 0);
  }

  v19 = *(v0 + 216);
  v20 = *(v0 + 184);
  State.wrappedValue.getter();
  v21 = (v19 + *(v20 + 40));
  v22 = *v21;
  v23 = *(v21 + 8);
  v7(v19, v20);
  if ((v23 & 1) == 0 && v22 == *(*(v0 + 32) + 8))
  {

    goto LABEL_20;
  }

LABEL_12:
  v18 = *(v0 + 32);
  v15 = *v18;
  if (*v18)
  {
    goto LABEL_13;
  }

  v34 = *(v0 + 200);
  v33 = *(v0 + 208);
  v35 = *(v0 + 192);
  v41 = *(v0 + 184);
  v36 = *(v0 + 128);
  v37 = *(v0 + 136);
  v38 = *(v0 + 120);

  (*(v36 + 104))(v37, enum case for AsyncImagePhase.empty(_:), v38);
  sub_10052FB18(v37, 0, *(v18 + 8), 0, v33);
  (*(v35 + 16))(v34, v33, v41);
  State.wrappedValue.setter();
  v7(v33, v41);
LABEL_20:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10052F428()
{
  v1 = [objc_allocWithZone(GEOFeatureStyleAttributes) initWithStyleAttributes:{objc_msgSend(*(v0 + 272), "featureStyleAttributes")}];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 288);
    v7 = *(v0 + 272);
    v6 = *(v0 + 280);
    [v1 replaceAttributes:&unk_100A5A3D0 count:3];

    *(v0 + 296) = [objc_opt_self() imageForStyle:v4 size:v6 forScale:0 format:1 transparent:v5];
    v2 = *(v0 + 248);
    v3 = *(v0 + 256);
    v1 = sub_10052F530;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10052F530()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 128);

  v37 = (v2 + 104);
  if (v1)
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 296);
    v5 = [v4 imageWithRenderingMode:2];
    v6 = Image.init(uiImage:)();

    *v3 = v6;
    v7 = (v0 + 304);
  }

  else
  {
    v8 = *(v0 + 144);
    type metadata accessor for AsyncPointOfInterestIcon.LoadingError();
    swift_getWitnessTable();
    *v8 = swift_allocError();
    v7 = &enum case for AsyncImagePhase.failure(_:);
  }

  v9 = *(v0 + 144);
  v10 = *(v0 + 152);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  v13 = *(v0 + 112);
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  (*v37)(v9, *v7, v11);
  (*(v12 + 32))(v10, v9, v11);
  (*(v15 + 16))(v16, v13, v14);
  (*(v15 + 56))(v16, 0, 1, v14);
  sub_100088AC8(v16, v17);
  if ((*(v15 + 48))(v17, 1, v14) == 1)
  {
    sub_10012C9CC(*(v0 + 40));
  }

  else
  {
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 80);
    v21 = *(v0 + 88);
    (*(v21 + 32))(v18, *(v0 + 40), v20);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v23 = v22;
    v24 = *(v21 + 8);
    v24(v19, v20);
    v24(v18, v20);
    if (v23 < 0.1)
    {
      sub_10012C9CC(*(v0 + 48));
      goto LABEL_9;
    }
  }

  v25 = *(v0 + 48);
  static Animation.easeIn(duration:)();
  sub_10012C9CC(v25);
LABEL_9:
  v26 = *(v0 + 296);
  v27 = *(v0 + 272);
  v28 = *(v0 + 152);
  v36 = *(v0 + 120);
  v38 = *(v0 + 264);
  v29 = *(v0 + 112);
  v30 = *(v0 + 80);
  v31 = *(v0 + 88);
  v32 = *(v0 + 32);
  v33 = swift_task_alloc();
  *(v33 + 16) = *(v0 + 168);
  *(v33 + 32) = v32;
  *(v33 + 40) = v28;
  *(v33 + 48) = v27;
  withAnimation<A>(_:_:)();

  (*(v31 + 8))(v29, v30);
  v38(v28, v36);

  v34 = *(v0 + 8);

  return v34();
}

unint64_t sub_10052F950()
{
  result = qword_100AE84B8;
  if (!qword_100AE84B8)
  {
    sub_1000F2A18(&qword_100AE84B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE84B8);
  }

  return result;
}

unint64_t sub_10052F9CC()
{
  result = qword_100AE84C0;
  if (!qword_100AE84C0)
  {
    sub_1000F2A18(&qword_100AE84A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE84C0);
  }

  return result;
}

uint64_t sub_10052FA30()
{
  type metadata accessor for AsyncPointOfInterestIcon();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return sub_10052EC04();
}

uint64_t sub_10052FB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AsyncImagePhase();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for AsyncPointOfInterestIcon.LoadingState();
  *(a5 + *(result + 36)) = a2;
  v12 = a5 + *(result + 40);
  *v12 = a3;
  *(v12 + 8) = a4 & 1;
  return result;
}

uint64_t sub_10052FBD0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  type metadata accessor for _ConditionalContent();
  v21 = *(a1 + 24);
  v6 = v21;
  v22 = &protocol witness table for Text;
  swift_getWitnessTable();
  v7 = type metadata accessor for VStack();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v17[-v12];
  v18 = v5;
  v19 = v6;
  v20 = v2;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  v14 = *(v8 + 16);
  v14(v13, v10, v7);
  v15 = *(v8 + 8);
  v15(v10, v7);
  v14(a2, v13, v7);
  return (v15)(v13, v7);
}

uint64_t sub_10052FDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  __chkstk_darwin(a1);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for _ConditionalContent();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v36 = &v34 - v16;
  v17 = AsyncImagePhase.image.getter();
  if (v17)
  {
    v18 = v17;
    v19 = type metadata accessor for AsyncPointOfInterestIcon.Inner();
    (*(a1 + *(v19 + 36)))(v18);
    v34 = v15;
    v20 = a3;
    v21 = a4;
    v22 = *(v8 + 16);
    v22(v13, v10, a2);
    v35 = v14;
    v23 = *(v8 + 8);
    v23(v10, a2);
    v22(v10, v13, a2);
    a4 = v21;
    a3 = v20;
    v15 = v34;
    v24 = v36;
    sub_10047EEF4(v10, a2);

    v23(v10, a2);
    v23(v13, a2);
    v14 = v35;
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v25 = Text.init(_:tableName:bundle:comment:)();
    v27 = v26;
    v39[0] = v25;
    v39[1] = v26;
    v29 = v28 & 1;
    v40 = v28 & 1;
    v41 = v30;
    v31 = v36;
    sub_10047EFEC(v39, a2, &type metadata for Text);
    v32 = v25;
    v24 = v31;
    sub_1000594D0(v32, v27, v29);
  }

  v37 = a3;
  v38 = &protocol witness table for Text;
  swift_getWitnessTable();
  (*(v15 + 16))(a4, v24, v14);
  return (*(v15 + 8))(v24, v14);
}

uint64_t sub_100530150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v21 = a2;
  v22 = a1;
  v23 = a3;
  v5 = type metadata accessor for AsyncImagePhase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AsyncPointOfInterestIcon.LoadingState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v20 - v15;
  (*(v6 + 16))(v8, v21, v5, v14);
  v17 = v23;
  sub_10052FB18(v8, v23, *(v22 + 8), 0, v16);
  type metadata accessor for AsyncPointOfInterestIcon();
  (*(v10 + 16))(v12, v16, v9);
  type metadata accessor for State();
  v18 = v17;
  State.wrappedValue.setter();
  return (*(v10 + 8))(v16, v9);
}

unint64_t sub_10053039C()
{
  result = qword_100AE84D0;
  if (!qword_100AE84D0)
  {
    sub_1000F2A18(&qword_100AE84C8);
    sub_100530420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE84D0);
  }

  return result;
}

unint64_t sub_100530420()
{
  result = qword_100AE84D8[0];
  if (!qword_100AE84D8[0])
  {
    sub_10052E1F8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_100AE84D8);
  }

  return result;
}

unint64_t sub_100530480()
{
  result = type metadata accessor for AsyncImagePhase();
  if (v1 <= 0x3F)
  {
    result = sub_100087C9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_100530604()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100530684()
{
  sub_1005307DC(v0);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 8);
      swift_unknownObjectRetain();
      v6(ObjectType, v4);
      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_10053072C()
{
  sub_1005307DC(v0);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 24);
      swift_unknownObjectRetain();
      v6(ObjectType, v4);
      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

void sub_1005307DC(void *a1)
{
  v1 = [a1 subviews];
  sub_1000065A8(0, &qword_100ADC670);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:

    return;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8 && v7)
      {
        v9 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1003E50E4(0, *(v5 + 2) + 1, 1, v5);
        }

        v11 = *(v5 + 2);
        v10 = *(v5 + 3);
        if (v11 >= v10 >> 1)
        {
          v5 = sub_1003E50E4((v10 > 1), v11 + 1, 1, v5);
        }

        *(v5 + 2) = v11 + 1;
        v12 = &v5[2 * v11];
        *(v12 + 4) = v7;
        *(v12 + 5) = v9;
      }

      else
      {
      }

      ++v4;
    }

    while (v3 != v4);
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_100530984(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = v7;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 368) = a4;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 - 8);
  *(v8 + 184) = swift_task_alloc();
  v11 = type metadata accessor for JournalFeatureFlags();
  *(v8 + 192) = v11;
  *(v8 + 200) = *(v11 - 8);
  *(v8 + 208) = swift_task_alloc();
  v12 = type metadata accessor for AssetPlacement();
  *(v8 + 216) = v12;
  *(v8 + 224) = *(v12 - 8);
  *(v8 + 232) = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  *(v8 + 240) = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  *(v8 + 248) = swift_task_alloc();
  v13 = type metadata accessor for AssetSource();
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *(v8 + 280) = v14;
  *(v8 + 288) = v16;

  return _swift_task_switch(sub_100530C14, v14, v16);
}

uint64_t sub_100530C14()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 240);
  v4 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 368);
  v8 = *(v0 + 128);
  (*(*(v0 + 264) + 16))(v1, *(v0 + 152), *(v0 + 256));
  v9 = v5;
  v10 = v6;
  v11 = sub_1003D5F50(v1, v8, v7 & 1, v6, v5);
  *(v0 + 296) = v11;
  v12 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleId;
  swift_beginAccess();
  sub_1000082B4(v4 + v12, v2, &qword_100AD1420);
  v13 = OBJC_IVAR____TtC7Journal5Asset_suggestionId;
  swift_beginAccess();
  v14 = v11;
  sub_100014318(v2, &v11[v13], &qword_100AD1420);
  swift_endAccess();
  v15 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleDate;
  swift_beginAccess();
  sub_1000082B4(v4 + v15, v3, &unk_100AD4790);
  v16 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
  swift_beginAccess();
  sub_100014318(v3, &v14[v16], &unk_100AD4790);
  swift_endAccess();

  v17 = sub_100049F2C();
  *(v0 + 304) = v17;
  if (v17)
  {
    v18 = v17;
    sub_1000F24EC(&unk_100AE1A40);
    v19 = type metadata accessor for UUID();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100940080;
    (*(v20 + 16))(v22 + v21, v18 + OBJC_IVAR____TtC7Journal5Asset_id, v19);
    v23 = sub_1004960D4(v22);
    *(v0 + 312) = v23;
    swift_setDeallocating();
    (*(v20 + 8))(v22 + v21, v19);
    swift_deallocClassInstance();
    v24 = swift_task_alloc();
    *(v0 + 320) = v24;
    *v24 = v0;
    v24[1] = sub_1005310E8;
    v26 = *(v0 + 112);
    v25 = *(v0 + 120);

    return sub_10056824C(v26, v25, v23);
  }

  else
  {
    v29 = *(v0 + 224);
    v28 = *(v0 + 232);
    v31 = *(v0 + 208);
    v30 = *(v0 + 216);
    v32 = *(v0 + 192);
    v33 = *(v0 + 200);
    *v28 = static AssetPlacement.maxGridCount.getter();
    (*(v29 + 104))(v28, enum case for AssetPlacement.grid(_:), v30);
    (*(v33 + 104))(v31, enum case for JournalFeatureFlags.enhancedSync(_:), v32);
    LOBYTE(v28) = JournalFeatureFlags.isEnabled.getter();
    (*(v33 + 8))(v31, v32);
    if (v28)
    {
      *(v0 + 328) = CFAbsoluteTimeGetCurrent();
      v34 = swift_task_alloc();
      *(v0 + 336) = v34;
      *v34 = v0;
      v34[1] = sub_1005313F8;
      v35 = *(v0 + 296);
      v36 = *(v0 + 232);
      v38 = *(v0 + 112);
      v37 = *(v0 + 120);

      return sub_10056B238(v38, v37, v35, v36, 1);
    }

    else
    {
      v39 = swift_task_alloc();
      *(v0 + 352) = v39;
      *v39 = v0;
      v39[1] = sub_10053175C;
      v40 = *(v0 + 296);
      v41 = *(v0 + 232);
      v43 = *(v0 + 112);
      v42 = *(v0 + 120);

      return sub_1001F8424(v43, v42, v40, v41);
    }
  }
}

uint64_t sub_1005310E8()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_10053122C, v3, v2);
}

uint64_t sub_10053122C()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  *v1 = static AssetPlacement.maxGridCount.getter();
  (*(v2 + 104))(v1, enum case for AssetPlacement.grid(_:), v3);
  (*(v6 + 104))(v4, enum case for JournalFeatureFlags.enhancedSync(_:), v5);
  LOBYTE(v1) = JournalFeatureFlags.isEnabled.getter();
  (*(v6 + 8))(v4, v5);
  if (v1)
  {
    *(v0 + 328) = CFAbsoluteTimeGetCurrent();
    v7 = swift_task_alloc();
    *(v0 + 336) = v7;
    *v7 = v0;
    v7[1] = sub_1005313F8;
    v8 = *(v0 + 296);
    v9 = *(v0 + 232);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);

    return sub_10056B238(v11, v10, v8, v9, 1);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 352) = v13;
    *v13 = v0;
    v13[1] = sub_10053175C;
    v14 = *(v0 + 296);
    v15 = *(v0 + 232);
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);

    return sub_1001F8424(v17, v16, v14, v15);
  }
}

uint64_t sub_1005313F8()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_100531518, v3, v2);
}

uint64_t sub_100531518()
{
  (*(v0[22] + 104))(v0[23], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[21]);

  v1 = swift_task_alloc();
  v0[43] = v1;
  *v1 = v0;
  v1[1] = sub_10053160C;
  v2 = v0[23];
  v3 = v0[20];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, sub_1002D2D78, v3, &type metadata for () + 8);
}

uint64_t sub_10053160C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[22] + 8))(v2[23], v2[21]);

    v4 = v2[35];
    v5 = v2[36];

    return _swift_task_switch(sub_1005318F4, v4, v5);
  }
}

uint64_t sub_10053175C()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_10053187C, v3, v2);
}

uint64_t sub_10053187C()
{
  (*(v0[28] + 8))(v0[29], v0[27]);

  return _swift_task_switch(sub_100531A40, 0, 0);
}

uint64_t sub_1005318F4()
{
  v1 = v0[41];
  v2 = *(v0 + 37);
  v3 = *(v0 + 31);
  v4 = OBJC_IVAR____TtC7Journal5Asset_id;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v3, &v2[v4], v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  sub_1001F81C4(v3);
  sub_100004F84(v3, &qword_100AD1420);
  sub_10056B00C(v2, v1);
  (*(*(v0 + 28) + 8))(*(v0 + 29), *(v0 + 27));

  return _swift_task_switch(sub_100531A40, 0, 0);
}

uint64_t sub_100531A40()
{
  type metadata accessor for MainActor();
  *(v0 + 360) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100531AD4, v2, v1);
}

uint64_t sub_100531AD4()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = v0[20];
    v2 = *(v1 + 56);
    ObjectType = swift_getObjectType();
    v4 = sub_1004959AC(&off_100A58D50);
    (*(v2 + 8))(v1, v4, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  v5 = v0[35];
  v6 = v0[36];

  return _swift_task_switch(sub_100531BB0, v5, v6);
}

uint64_t sub_100531BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100531C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100531D80, 0, 0);
}

uint64_t sub_100531D80()
{
  v1 = v0[10];
  sub_1000F24EC(&unk_100AE1A40);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940080;
  (*(v3 + 16))(v5 + v4, v1 + OBJC_IVAR____TtC7Journal5Asset_id, v2);
  v6 = sub_1004960D4(v5);
  v0[17] = v6;
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_100531F30;

  return sub_10056824C(0, 0, v6);
}

uint64_t sub_100531F30()
{

  return _swift_task_switch(sub_100532048, 0, 0);
}

uint64_t sub_100532048()
{
  v1 = v0[16];
  v2 = v0[13];
  v10 = v0[15];
  v11 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  sub_1000065A8(0, &qword_100AD6210);
  v6 = static OS_dispatch_queue.main.getter();
  v0[6] = sub_100533300;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006C7C;
  v0[5] = &unk_100A72028;
  v7 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_1000826D8();
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v3 + 8))(v2, v4);
  (*(v10 + 8))(v1, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10053222C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A464();
  sub_1000065A8(0, &qword_100AD6210);
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100533304;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A72050;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000826D8();
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005324B0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 56);
    ObjectType = swift_getObjectType();
    v5 = sub_1004959AC(&off_100A5A3E8);
    (*(v3 + 8))(a1, v5, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10053256C(void *a1)
{
  v2 = sub_1000F24EC(&qword_100ADA918);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for ReflectionAssetMetadata();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006AB5D4(v4);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v12 = ReflectionAssetMetadata.type.getter();
    if (v13)
    {
      v11 = 0;
    }

    else
    {
      v11 = v12;
    }

    v14 = ReflectionAssetMetadata.prompt.getter();
    if (v15 >> 60 != 15)
    {
      v16 = v14;
      v17 = v15;
      Data.getAttributedString()();
      sub_10003A5C8(v16, v17);
    }

    v18 = ReflectionAssetMetadata.colorLight.getter();
    if (v19 >> 60 == 15)
    {
      v20 = ReflectionAssetMetadata.colorDark.getter();
      v22 = 0;
      if (v21 >> 60 == 15)
      {
        goto LABEL_19;
      }

      v35 = v11 < 7;
    }

    else
    {
      v35 = v11 < 7;
      v23 = v18;
      v24 = v19;
      sub_1000065A8(0, &qword_100AD4C70);
      v22 = static NSCoding<>.create(from:)();
      sub_10003A5C8(v23, v24);
      v20 = ReflectionAssetMetadata.colorDark.getter();
      if (v21 >> 60 == 15)
      {
        if (v22)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }
    }

    v25 = v21;
    v26 = v20;
    sub_1000065A8(0, &qword_100AD4C70);
    v27 = static NSCoding<>.create(from:)();
    sub_10003A5C8(v26, v25);
    if (v22)
    {
      if (v27)
      {
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        *(v28 + 24) = v22;
        v34 = objc_allocWithZone(UIColor);
        aBlock[4] = sub_1000123AC;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100023FEC;
        aBlock[3] = &unk_100A72000;
        v29 = _Block_copy(aBlock);
        v30 = v27;
        v31 = v22;
        [v34 initWithDynamicProvider:v29];
        _Block_release(v29);

        (*(v6 + 8))(v8, v5);

        return v11;
      }

LABEL_17:
      (*(v6 + 8))(v8, v5);

      return v11;
    }

    v22 = v27;
LABEL_19:
    (*(v6 + 8))(v8, v5);

    return v11;
  }

  sub_100004F84(v4, &qword_100ADA918);
  v9 = objc_allocWithZone(NSAttributedString);
  v10 = String._bridgeToObjectiveC()();
  [v9 initWithString:v10];

  return 0;
}

uint64_t sub_1005329B4(uint64_t a1, char a2, void *a3)
{
  v6 = type metadata accessor for ColorResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_6;
    }

    if (a1 > 3)
    {
      if (a1 == 4)
      {
        sub_1000065A8(0, &qword_100AD4C70);
        if (qword_100AD0D00 != -1)
        {
          swift_once();
        }

        v11 = qword_100B31610;
      }

      else if (a1 == 5)
      {
        sub_1000065A8(0, &qword_100AD4C70);
        if (qword_100AD0D08 != -1)
        {
          swift_once();
        }

        v11 = qword_100B31628;
      }

      else
      {
        sub_1000065A8(0, &qword_100AD4C70);
        if (qword_100AD0CE8 != -1)
        {
          swift_once();
        }

        v11 = qword_100B315C8;
      }

      goto LABEL_9;
    }

    if (a1 >= 2)
    {
      if (a1 == 2)
      {
        sub_1000065A8(0, &qword_100AD4C70);
        if (qword_100AD0CF0 != -1)
        {
          swift_once();
        }

        v11 = qword_100B315E0;
      }

      else
      {
        sub_1000065A8(0, &qword_100AD4C70);
        if (qword_100AD0CF8 != -1)
        {
          swift_once();
        }

        v11 = qword_100B315F8;
      }
    }

    else
    {
LABEL_6:
      sub_1000065A8(0, &qword_100AD4C70);
      if (qword_100AD0D10 != -1)
      {
        swift_once();
      }

      v11 = qword_100B31640;
    }

LABEL_9:
    v12 = sub_10000617C(v6, v11);
    (*(v7 + 16))(v9, v12, v6);
    v10 = UIColor.init(resource:)();
    goto LABEL_10;
  }

  v10 = a3;
LABEL_10:
  v13 = a3;
  return v10;
}

uint64_t sub_100532CB0(uint64_t a1, __int16 a2, uint64_t a3, void *a4)
{
  v55 = a3;
  v53 = type metadata accessor for ColorResource();
  v7 = *(v53 - 8);
  __chkstk_darwin(v53);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a4;
  if (!a4)
  {
    v13 = 0;
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1000065A8(0, &qword_100AD4C70);
    if (qword_100AD0CF0 != -1)
    {
      swift_once();
    }

    v14 = v53;
    v15 = sub_10000617C(v53, qword_100B315E0);
    v16 = v7 + 16;
    v52[0] = *(v7 + 16);
    (v52[0])(v9, v15, v14);
    v17 = UIColor.init(resource:)();
    v18 = objc_opt_self();
    v19 = [v18 traitCollectionWithUserInterfaceStyle:1];
    v20 = [v17 resolvedColorWithTraitCollection:v19];

    if (v13)
    {
      v21 = v13;
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {

        return 2;
      }
    }

    else
    {
    }

    if (qword_100AD0CF8 != -1)
    {
      swift_once();
    }

    v23 = v53;
    v24 = sub_10000617C(v53, qword_100B315F8);
    v25 = v16;
    v26 = v52[0];
    v52[1] = v25;
    (v52[0])(v9, v24, v23);
    v27 = UIColor.init(resource:)();
    v28 = [v18 traitCollectionWithUserInterfaceStyle:1];
    v29 = [v27 resolvedColorWithTraitCollection:v28];

    if (v13)
    {
      v30 = v13;
      v31 = static NSObject.== infix(_:_:)();

      if (v31)
      {

        return 3;
      }
    }

    else
    {
    }

    if (qword_100AD0D00 != -1)
    {
      swift_once();
    }

    v32 = sub_10000617C(v23, qword_100B31610);
    v26(v9, v32, v23);
    v33 = UIColor.init(resource:)();
    v34 = [v18 traitCollectionWithUserInterfaceStyle:1];
    v35 = [v33 resolvedColorWithTraitCollection:v34];

    if (v13)
    {
      v36 = v13;
      v37 = static NSObject.== infix(_:_:)();

      if (v37)
      {

        return 4;
      }
    }

    else
    {
    }

    if (qword_100AD0D08 != -1)
    {
      swift_once();
    }

    v38 = sub_10000617C(v23, qword_100B31628);
    v26(v9, v38, v23);
    v39 = UIColor.init(resource:)();
    v40 = [v18 traitCollectionWithUserInterfaceStyle:1];
    v41 = [v39 resolvedColorWithTraitCollection:v40];

    if (v13)
    {
      v42 = v13;
      v43 = static NSObject.== infix(_:_:)();

      if (v43)
      {

        return 5;
      }
    }

    else
    {

      v42 = 0;
    }

    v44 = qword_100AD0CE8;
    v45 = v42;
    if (v44 != -1)
    {
      swift_once();
    }

    v46 = sub_10000617C(v23, qword_100B315C8);
    v26(v9, v46, v23);
    v47 = UIColor.init(resource:)();
    v48 = [v18 traitCollectionWithUserInterfaceStyle:1];
    v49 = [v47 resolvedColorWithTraitCollection:v48];

    if (v13)
    {
      v50 = static NSObject.== infix(_:_:)();

      if (v50)
      {
        return 6;
      }
    }

    else
    {
    }

    return 1;
  }

  v10 = objc_opt_self();
  v11 = a4;
  v12 = [v10 traitCollectionWithUserInterfaceStyle:1];
  v13 = [v11 resolvedColorWithTraitCollection:v12];

  if ((a2 & 0x100) != 0)
  {
    goto LABEL_5;
  }

LABEL_3:

  return a1;
}

uint64_t _s10ReflectionV14ReflectionTypeOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10ReflectionV14ReflectionTypeOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10053335C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100533378(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1005333A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_100533404(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *sub_100533478()
{
  v1 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v1 - 8);
  v3 = v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v72 = v56 - v5;
  __chkstk_darwin(v6);
  v59 = v56 - v7;
  v8 = type metadata accessor for Date();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v61 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = v56 - v11;
  v71 = type metadata accessor for VisitAssetMetadata();
  v12 = *(v71 - 8);
  __chkstk_darwin(v71);
  v60 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v56 - v15;
  v17 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v17 - 8);
  v19 = v56 - v18;
  v20 = type metadata accessor for MultiPinMapAssetMetadata();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v21 + 56))(v19, 1, 1, v20, v22);
    goto LABEL_16;
  }

  sub_1000768B4(v19);

  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
LABEL_16:
    sub_100004F84(v19, &unk_100AD5B30);
    return 0;
  }

  (*(v21 + 32))(v24, v19, v20);
  v25 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v21 + 8))(v24, v20);
  if (!v25)
  {
    return 0;
  }

  v26 = *(v25 + 16);
  if (v26)
  {
    v56[1] = v25;
    v57 = v3;
    v28 = *(v12 + 16);
    v27 = v12 + 16;
    v29 = v25 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v68 = *(v27 + 56);
    v69 = v28;
    v70 = v27;
    v30 = v63;
    v66 = (v62 + 48);
    v67 = (v27 - 8);
    v65 = (v62 + 32);
    v64 = _swiftEmptyArrayStorage;
    v31 = v29;
    v32 = v26;
    do
    {
      v33 = v71;
      v69(v16, v31, v71);
      v34 = v72;
      VisitAssetMetadata.visitStartTime.getter();
      v35 = v59;
      sub_1001679C0(v34, v59);
      v36 = *v67;
      (*v67)(v16, v33);
      v37 = *v66;
      if ((*v66)(v35, 1, v30) == 1)
      {
        sub_100004F84(v35, &unk_100AD4790);
      }

      else
      {
        v38 = *v65;
        (*v65)(v58, v35, v30);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v39 = v64;
        }

        else
        {
          v39 = sub_1000881C0(0, *(v64 + 2) + 1, 1, v64);
        }

        v41 = *(v39 + 2);
        v40 = *(v39 + 3);
        if (v41 >= v40 >> 1)
        {
          v39 = sub_1000881C0(v40 > 1, v41 + 1, 1, v39);
        }

        *(v39 + 2) = v41 + 1;
        v42 = (*(v62 + 80) + 32) & ~*(v62 + 80);
        v64 = v39;
        v43 = v39 + v42 + *(v62 + 72) * v41;
        v30 = v63;
        v38(v43, v58, v63);
      }

      v31 += v68;
      --v32;
    }

    while (v32);
    v45 = _swiftEmptyArrayStorage;
    v46 = v57;
    v47 = v71;
    do
    {
      v48 = v60;
      v69(v60, v29, v47);
      v49 = v72;
      VisitAssetMetadata.visitEndTime.getter();
      sub_1001679C0(v49, v46);
      v36(v48, v47);
      if (v37(v46, 1, v30) == 1)
      {
        sub_100004F84(v46, &unk_100AD4790);
      }

      else
      {
        v50 = *v65;
        (*v65)(v61, v46, v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1000881C0(0, *(v45 + 2) + 1, 1, v45);
        }

        v52 = *(v45 + 2);
        v51 = *(v45 + 3);
        if (v52 >= v51 >> 1)
        {
          v45 = sub_1000881C0(v51 > 1, v52 + 1, 1, v45);
        }

        *(v45 + 2) = v52 + 1;
        v53 = v45 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v52;
        v30 = v63;
        v50(v53, v61, v63);
      }

      v29 += v68;
      --v26;
    }

    while (v26);
    v54 = v64;
  }

  else
  {
    v54 = _swiftEmptyArrayStorage;
    v45 = _swiftEmptyArrayStorage;
  }

  v55 = sub_1004932CC(v54, v45, 1);

  return v55;
}

char *sub_100533BD4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal36FullScreenConfettiCollectionViewCell_confettiAsset] = 0;
  v9 = OBJC_IVAR____TtC7Journal36FullScreenConfettiCollectionViewCell_confettiView;
  type metadata accessor for ConfettiAssetGridView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22.receiver = v4;
  v22.super_class = type metadata accessor for FullScreenConfettiCollectionViewCell();
  v10 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  static UIView.Invalidating.subscript.setter();
  v12 = OBJC_IVAR____TtC7Journal36FullScreenConfettiCollectionViewCell_confettiView;
  v13 = *&v11[OBJC_IVAR____TtC7Journal36FullScreenConfettiCollectionViewCell_confettiView];
  v14 = v13[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v13[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v15 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v13[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v16 = v13;
LABEL_8:
    sub_10054EAC0();
    v13[v15] = 1;

    goto LABEL_9;
  }

  if (v14 > 3 && v14 > 6)
  {

    goto LABEL_9;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v18 = v13;

  if ((v17 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v19 = *&v11[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView];

  [v19 addSubview:{*&v11[v12], 0x3FF0000000000000, 0x3FF8000000000000}];
  v20 = *&v11[v12];
  sub_100013178(0.0);

  return v11;
}

void sub_100533F8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal36FullScreenConfettiCollectionViewCell_confettiView);
}

id sub_100533FCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenConfettiCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenConfettiCollectionViewCell()
{
  result = qword_100AE8650;
  if (!qword_100AE8650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1005340F4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal36FullScreenConfettiCollectionViewCell_confettiView);
  v2 = v1;
  return v1;
}

void *sub_100534128()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal36FullScreenConfettiCollectionViewCell_confettiAsset);
  v2 = v1;
  return v1;
}

void sub_10053415C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_selectedVisitAssetID + 8);
  if (!v1)
  {
    return;
  }

  v2 = *(*(v23 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_mapView) + OBJC_IVAR____TtC7Journal12MapAssetView_mapView);
  if (!v2)
  {
    return;
  }

  v21 = OBJC_IVAR____TtC7Journal12MapAssetView_mapView;
  v22 = *(v23 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_mapView);
  v3 = *(v0 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_selectedVisitAssetID);

  v4 = [v2 annotations];
  sub_1000F24EC(&unk_100AD91C0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_29:

    return;
  }

LABEL_28:
  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_29;
  }

LABEL_5:
  v7 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_20:
        __break(1u);
        return;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_28;
      }

      swift_unknownObjectRetain();
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_20;
      }
    }

    type metadata accessor for StyledMKPointAnnotation();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v11 = *(v9 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID + 8);
      if (v11)
      {
        v12 = *(v9 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID) == v3 && v11 == v1;
        if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }
    }

    swift_unknownObjectRelease();
    ++v7;
    if (v8 == v6)
    {
      goto LABEL_29;
    }
  }

  v13 = *(v22 + v21);
  if (v13)
  {
    [v13 selectAnnotation:v10 animated:1];
  }

  v14 = *(v23 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_locationList);
  v15 = OBJC_IVAR____TtC7Journal27FullScreenMapViewController_currentSelectedAnnotation;
  v16 = *(v23 + OBJC_IVAR____TtC7Journal27FullScreenMapViewController_currentSelectedAnnotation);
  v17 = *&v14[OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation];
  *&v14[OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation] = v16;
  v18 = v16;
  v19 = v14;
  sub_100357110(v17);

  v20 = *(v23 + v15);
  *(v23 + v15) = v10;
}

void sub_100534428()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v1[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_mapView];
    [v2 addSubview:v4];

    sub_100013178(0.0);

    v5 = [v1 navigationItem];
    sub_1000065A8(0, &qword_100AD4420);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v5 setBackAction:{v7, 0, 0, 0, sub_1005373A4, v6}];

    v8 = [v1 navigationItem];
    v9 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:4 target:v1 action:"plusTapped"];
    [v8 setRightBarButtonItem:v9];

    v10 = [v1 navigationItem];
    v11 = [v10 standardAppearance];
    if (!v11 || (v12 = v11, v13 = [v11 _titleControlHidden], v12, (v13 & 1) == 0))
    {
      v14 = [v10 standardAppearance];
      if (!v14)
      {
        v14 = [objc_allocWithZone(UINavigationBarAppearance) init];
      }

      v15 = v14;
      [v14 _setTitleControlHidden:1];
      [v10 setStandardAppearance:v15];

      v10 = v15;
    }

    *(v4 + OBJC_IVAR____TtC7Journal12MapAssetView_delegate + 8) = &off_100A72210;
    swift_unknownObjectWeakAssign();
    v16 = *&v1[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_multiPinMapAsset];
    if (v16)
    {
      v17 = v16;
      sub_100074C10(v17, 2u);
    }

    v18 = *&v1[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_locationList];
    v19 = *&v1[OBJC_IVAR____TtC7Journal27FullScreenMapViewController_currentSelectedAnnotation];
    v22 = *&v18[OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation];
    *&v18[OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation] = v19;
    v20 = v19;
    v21 = v18;
    sub_100357110(v22);
  }

  else
  {
    __break(1u);
  }
}