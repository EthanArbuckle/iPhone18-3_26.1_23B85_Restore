uint64_t sub_10009AEF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x7463656C65537369;
  v5 = 0xEA00000000006465;
  if (a1 != 5)
  {
    v4 = 0x6E6F69746361;
    v5 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6C6562616CLL;
  if (a1 != 3)
  {
    v7 = 0x54746E65746E6F63;
    v6 = 0xEB00000000657079;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1701869940;
  if (a1 != 1)
  {
    v9 = 0x656C746974;
    v8 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE400000000000000;
        if (v10 != 1701869940)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE500000000000000;
        if (v10 != 0x656C746974)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701667182)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEA00000000006465;
      if (v10 != 0x7463656C65537369)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6E6F69746361)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6C6562616CLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB00000000657079;
    if (v10 != 0x54746E65746E6F63)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_10009B110(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006465747261;
  v3 = 0x7453746559746F6ELL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x73736563637573;
    }

    else
    {
      v5 = 0x6572756C696166;
    }

    v6 = 0xE700000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 0x676E6964616F6CLL;
    }

    else
    {
      v5 = 0x7453746559746F6ELL;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xED00006465747261;
    }
  }

  v7 = 0x73736563637573;
  if (a2 != 2)
  {
    v7 = 0x6572756C696166;
  }

  if (a2)
  {
    v3 = 0x676E6964616F6CLL;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10009B258(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006B636F6CLL;
  v3 = 0xD000000000000017;
  v4 = 0x6E5565746F6D6572;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0x6E5565746F6D6572;
    }

    if (v5 == 2)
    {
      v7 = 0x800000010011C9E0;
    }

    else
    {
      v7 = 0xEC0000006B636F6CLL;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0xD000000000000014;
    }

    if (v5)
    {
      v7 = 0x800000010011C9C0;
    }

    else
    {
      v7 = 0x800000010011C9A0;
    }
  }

  if (a2 == 2)
  {
    v4 = 0xD000000000000017;
    v2 = 0x800000010011C9E0;
  }

  v8 = 0x800000010011C9C0;
  if (!a2)
  {
    v3 = 0xD000000000000014;
    v8 = 0x800000010011C9A0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_10009B398@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_10009B468@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
  return result;
}

id sub_10009B538@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_10009B5F0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10002F83C(v2);
}

uint64_t sub_10009B620@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 72);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_10009B6D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_10009B7A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 88);
  *a2 = v4;

  return v4;
}

void sub_10009B858(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10002FF74(v2);
}

id sub_10009B888@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 96);
  *a2 = v4;

  return v4;
}

void sub_10009B940(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100030180(v2);
}

id sub_10009B970@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 104);
  *a2 = v4;

  return v4;
}

void sub_10009BA28(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10003038C(v2);
}

id sub_10009BA58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 112);
  *a2 = v4;

  return v4;
}

void sub_10009BB10(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100030988(v2);
}

uint64_t sub_10009BB40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10009BB98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10009C724(v4);
}

uint64_t sub_10009BBC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_10009BC70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10007B0CC(v4);
}

uint64_t sub_10009BC9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t sub_10009BD48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10009BE14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

uint64_t sub_10009BEC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10007B2F4(v4);
}

uint64_t sub_10009BEEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_10009BF9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_10009C06C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = [objc_opt_self() listeningForAlternateBonjourBrowsing];
  *a2 = result;
  return result;
}

uint64_t sub_10009C198(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10009C254()
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10009C300@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_10009C3B4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_100031904(0, &unk_10016F330, UIWindowScene_ptr);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

void sub_10009C578(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager;
  v5 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016F328, APRKStreamRenderingManager_ptr);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

id sub_10009C74C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState] > 2u)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      return result;
    }
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *&v1[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lockoutManager];

  sub_1000AB280(v1, v4);

  if (v1[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI])
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v1[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI] = 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager;
  v7 = *&v1[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager];
  if (v7)
  {
    [v7 setDelegate:0];
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = [*&v1[v6] stopReceiverServer];
  if (*&v1[v6])
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10009CA9C()
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState);
}

uint64_t sub_10009CB44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState);
  return result;
}

id sub_10009CBF4(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  if (sub_10009AAD0(*(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState), a1))
  {
    *(v1 + v3) = a1;

    return sub_10009C74C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10009CDAC()
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
  if (v1)
  {
    swift_getKeyPath();
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v1 + 16);

    swift_getKeyPath();
    sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1 = *(v2 + 17);
  }

  return v1;
}

void sub_10009CF74(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__backgroundRuntimeAssertion;
  v5 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__backgroundRuntimeAssertion);
  if (!v5)
  {
    if (!a1)
    {
      *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__backgroundRuntimeAssertion) = 0;
      v7 = 0;
      goto LABEL_9;
    }

LABEL_7:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  sub_100031904(0, &qword_10016F320, RBSAssertion_ptr);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(v2 + v4);
  *(v2 + v4) = a1;
  if (!v9)
  {
LABEL_9:
    v10 = v7;
    v11 = 0;
    goto LABEL_10;
  }

  v13 = v9;
  v10 = v7;
  [v13 removeObserver:v2];
  v11 = v13;
LABEL_10:
  v14 = v11;
  [v11 invalidate];
}

void sub_10009D15C(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__backgroundRuntimeAssertion);
  *(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__backgroundRuntimeAssertion) = a2;
  if (v2)
  {
    v4 = a2;
    [v2 removeObserver:a1];
  }

  else
  {
    v5 = a2;
  }

  [v2 invalidate];
}

uint64_t sub_10009D1E8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_10009D288@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_10009D364(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10009D47C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
}

uint64_t sub_10009D520@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
}

uint64_t sub_10009D5D8()
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName);
  v2 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName + 8);

  return v1;
}

uint64_t sub_10009D694@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName);
  a2[1] = v4;
}

uint64_t sub_10009D74C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName);
  v6 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName + 8);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

void *sub_10009D8DC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_10009D984@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_10009DA48(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__pinUIExpirationTimer;
  v5 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__pinUIExpirationTimer);
  if (!v5)
  {
    if (!a1)
    {
      v11 = 0;
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016F318, BSContinuousMachTimer_ptr);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
  v10 = v7;
  [v11 invalidate];
}

uint64_t sub_10009DC80(uint64_t a1, void *a2)
{
  if (*(v2 + *a2) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

char *sub_10009DDB4()
{
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager] = 0;
  v1 = type metadata accessor for AirplayReceiverSettingsState();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverSettingsState] = sub_100099EA0();
  v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState] = 3;
  v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI] = 0;
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__backgroundRuntimeAssertion] = 0;
  v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion] = 0;
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__acceptDialogController] = 0;
  v4 = &v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName];
  *v4 = 0;
  v4[1] = 0;
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__pinUIExpirationTimer] = 0;
  type metadata accessor for LockoutObserverManager();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lockoutManager] = LockoutObserverManager.init()();
  type metadata accessor for FeatureEligibilityObserverManager();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__featureEligibilityManager] = FeatureEligibilityObserverManager.init()();
  ObservationRegistrar.init()();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AirplayReceiverLifecycleManager();
  v5 = objc_msgSendSuper2(&v9, "init");
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  v6 = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *&v6[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverSettingsState];
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return v6;
}

id sub_10009E090()
{
  v1 = v0;
  swift_getKeyPath();
  v8 = v0;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lockoutManager];

  v3 = v1;
  sub_1000AB280(v3, v2);

  swift_getKeyPath();
  v8 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *&v3[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__featureEligibilityManager];
  v5 = v3;

  sub_1000AB4B8(v5, v4);

  v7.receiver = v5;
  v7.super_class = type metadata accessor for AirplayReceiverLifecycleManager();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for AirplayReceiverLifecycleManager()
{
  result = qword_10016F128;
  if (!qword_10016F128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009E374()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10009E454()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v41 = &v40 - v4;
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100181F88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v42 = v9;
    *v8 = 136315138;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, &v42);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Setting up AirplayReceiverLifecycleManager, connection to APRK rendering manager.", v8, 0xCu);
    sub_1000052E4(v9);
  }

  v13 = type metadata accessor for MirroringViewModel();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v1;
  v18 = sub_1000AC218(v17, 0, v16);

  v19 = type metadata accessor for AirplayReceiverMainModel();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  v40 = v18;
  v23 = sub_10007B3F8(v22);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v40 - 2) = v17;
  *(&v40 - 1) = v23;
  v42 = v17;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  v42 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *&v17[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel];
  if (v25)
  {
    swift_getKeyPath();
    v42 = v25;
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = *(v25 + 32);

    v27 = swift_getKeyPath();
    __chkstk_darwin(v27);
    *(&v40 - 4) = v26;
    *(&v40 - 3) = v17;
    *(&v40 - 2) = &off_10015D878;
    v42 = v26;
    sub_1000AC1D0(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v28 = [objc_opt_self() sharedInstance];
  [v28 setPreemptionPolicy:2];
  [v28 setMaxNumberOfConcurrentSessions:1];
  [v28 setAltAdvertisingEnabled:1];
  [v28 setOptimizeAudioRenderingLatency:1];
  [v28 setEnableMixingMediaAudio:1];
  v29 = v28;
  sub_10009C578(v28);
  swift_getKeyPath();
  v42 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__featureEligibilityManager;
  v31 = *&v17[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__featureEligibilityManager];

  sub_1000AB6F0(v17, v31);

  swift_getKeyPath();
  v42 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(*&v17[v30] + 16);
  v33 = v32 & 1;
  if ((v17[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion] ^ v32))
  {
    v34 = swift_getKeyPath();
    __chkstk_darwin(v34);
    *(&v40 - 2) = v17;
    *(&v40 - 8) = v33;
    v42 = v17;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v17[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion] = v33;
  }

  v35 = type metadata accessor for TaskPriority();
  v36 = v41;
  (*(*(v35 - 8) + 56))(v41, 1, 1, v35);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = 0;
  v37[4] = v17;
  v38 = v17;
  sub_1000EE8E8(0, 0, v36, &unk_1001163C0, v37);
}

uint64_t sub_10009EB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = a4;
  return _swift_task_switch(sub_10009EB50, 0, 0);
}

uint64_t sub_10009EB50()
{
  v1 = *(v0 + 40);
  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
  *(v0 + 48) = v2;
  if (v2)
  {
    swift_getKeyPath();
    *(v0 + 24) = v2;
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 56) = *(v2 + 32);

    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_10009ED4C;

    return sub_1000B9C9C();
  }

  else
  {
    **(v0 + 32) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10009ED4C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_10009EE64, 0, 0);
}

id sub_10009EE8C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  swift_getKeyPath();
  v24 = v2;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager;
  v7 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager);
  if (v7 && [v7 delegate])
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006B0C(v8, qword_100181F88);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = _typeName(_:qualified:)();
      v14 = a1;
      v15 = sub_100006B44(v12, v13, &v24);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_100006B44(v14, a2, &v24);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Start receiver server for reason: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    swift_getKeyPath();
    v24 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = *&v3[v6];
    if (v16)
    {
      [v16 setDelegate:v3];
    }

    swift_getKeyPath();
    v24 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *&v3[v6];
    if (v17)
    {
      [v17 startReceiverServerWithSupportedRenderingModes:1];
    }

    swift_getKeyPath();
    v24 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = *&v3[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lockoutManager];

    sub_1000AB93C(v3, v18);

    sub_10009F3E0(2u);
  }

  swift_getKeyPath();
  v24 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  if (v3[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState] == 2)
  {
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {
    if (v3[v19] > 1u)
    {
      v3[v19];
    }

    else if (!v3[v19])
    {

LABEL_21:
      v3[v19] = 0;
      return sub_10009C74C();
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      goto LABEL_21;
    }

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v24 = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10009F3E0(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 == 2)
  {
    v3 = sub_1000A736C();
  }

  else
  {
    v34 = v7;
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006B0C(v15, qword_100181F88);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = v6;
      v19 = v18;
      v20 = swift_slowAlloc();
      v33 = ObjectType;
      v21 = v20;
      aBlock[0] = v20;
      *v19 = 136315394;
      v22 = _typeName(_:qualified:)();
      v24 = sub_100006B44(v22, v23, aBlock);

      *(v19 + 4) = v24;
      *(v19 + 12) = 1024;
      *(v19 + 14) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s Override Force Accept Dialog state to %{BOOL}d", v19, 0x12u);
      sub_1000052E4(v21);
      ObjectType = v33;

      v6 = v32;
    }

    v7 = v34;
  }

  swift_getKeyPath();
  aBlock[0] = v2;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = v3 & 1;
  [*&v2[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager] setForcePermissionDialog:v3 & 1];
  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v26 = static OS_dispatch_queue.main.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v2;
  *(v27 + 32) = ObjectType;
  aBlock[4] = sub_1000AC6BC;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015D938;
  v28 = _Block_copy(aBlock);
  v29 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v7 + 8))(v10, v6);
  return (*(v35 + 8))(v14, v36);
}

void sub_10009F894(uint64_t a1, unint64_t a2)
{
  swift_getObjectType();
  v4 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  sub_1000AC364();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006B0C(v8, qword_100181F88);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100006B44(v12, v13, &v23);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_100006B44(a1, a2, &v23);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s Foreground requested for reason: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v15 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (v15)
  {
    v16 = v15;
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    sub_1000EE5F8(0, 0, v7, &unk_100116350, v18);
  }

  else
  {
    v22 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v22, v19, "Unable to foreground because open application service could not be created.", v20, 2u);
    }

    v21 = v22;
  }
}

uint64_t sub_10009FBF4()
{
  v1 = v0[23];
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  v2 = String._bridgeToObjectiveC()();
  v0[24] = v2;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10009FD3C;
  v3 = swift_continuation_init();
  v0[17] = sub_100002BE4(&unk_10016F300, &unk_100116358);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10004789C;
  v0[13] = &unk_10015DD48;
  v0[14] = v3;
  [v1 openApplication:v2 withOptions:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10009FD3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_10009FF70;
  }

  else
  {
    v3 = sub_10009FE4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10009FE4C()
{
  v1 = *(v0 + 192);

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100181F88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Foreground request completed.", v5, 2u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10009FF70()
{
  v20 = v0;
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v3 = v0[25];
  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100181F88);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[20];
    v14 = Error.localizedDescription.getter();
    v16 = sub_100006B44(v14, v15, &v19);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to foreground ourself due to error: %{public}s", v9, 0xCu);
    sub_1000052E4(v10);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000A013C()
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v1 = Strong;
  if (![Strong activationState])
  {

    v3 = 1;
    return v3 & 1;
  }

  v2 = [v1 activationState];

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
LABEL_5:
    if (sub_10009CDAC() == 1)
    {

      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v3 & 1;
}

id sub_1000A02D0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006B0C(v8, qword_100181F88);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v38 = a3;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v11 = 136315650;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100006B44(v12, v13, &v39);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_100006B44(a1, a2, &v39);
    *(v11 + 22) = 1024;
    *(v11 + 24) = a3 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s dismiss AirplayUI for reason: %{public}s with shouldStopConnection: %{BOOL}d", v11, 0x1Cu);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  v39 = v4;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  if (*(v4 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
  {

    v16 = 0;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v16 = 0;
    if ((v17 & 1) == 0)
    {
      swift_getKeyPath();
      v39 = v4;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = *(v4 + v15);
    }
  }

  if (sub_10009AAD0(*(v4 + v15), v16))
  {
    *(v4 + v15) = v16;
    sub_10009C74C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v39 = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v4 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI))
  {
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    v39 = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) = 0;
  }

  swift_getKeyPath();
  v39 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel;
  v21 = *(v4 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
  if (v21)
  {
    swift_getKeyPath();
    v39 = v21;
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v21 + 16);

    sub_10002EFE4(0);
    if (v22[13])
    {
      v23 = swift_getKeyPath();
      __chkstk_darwin(v23);
      v39 = v22;
      sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (v22[11])
    {
      v24 = swift_getKeyPath();
      __chkstk_darwin(v24);
      v39 = v22;
      sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (v22[12])
    {
      v25 = swift_getKeyPath();
      __chkstk_darwin(v25);
      v39 = v22;
      sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  swift_getKeyPath();
  v39 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *(v4 + v20);
  if (v26)
  {
    swift_getKeyPath();
    v39 = v26;
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = *(v26 + 16);

    swift_getKeyPath();
    v39 = v27;
    sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = *(v27 + 112);
    v29 = v28;

    if (v28)
    {
      [v29 setDelegate:0];
    }
  }

  swift_getKeyPath();
  v39 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v4 + v20);
  if (v30)
  {
    swift_getKeyPath();
    v39 = v30;
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = *(v30 + 16);

    if (*(v31 + 112))
    {
      v32 = swift_getKeyPath();
      __chkstk_darwin(v32);
      v39 = v31;
      sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      sub_100030510(0);
      v33 = *(v31 + 112);
      *(v31 + 112) = 0;
    }
  }

  sub_1000A0EA0();
  v34 = (v4 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName);
  if (*(v4 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName + 8))
  {
    v35 = swift_getKeyPath();
    __chkstk_darwin(v35);
    v39 = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *v34 = 0;
    v34[1] = 0;
  }

  v36 = swift_getKeyPath();
  __chkstk_darwin(v36);
  v39 = v4;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (v38)
  {
    return sub_1000A1080();
  }

  return result;
}

uint64_t sub_1000A0EA0()
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__pinUIExpirationTimer) invalidate];
  sub_10009DA48(0);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

id sub_1000A1080()
{
  sub_1000A1268(0xD000000000000011, 0x800000010011F430);
  v1 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  if (*(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) > 2u)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  *(v0 + v1) = 3;

  return sub_10009C74C();
}

void sub_1000A1268(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  v18 = v2;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__backgroundRuntimeAssertion);
  if (v5)
  {
    v6 = v5;
    sub_10009CF74(0);
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006B0C(v7, qword_100181F88);
    v8 = v6;

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v11 = 136446466;
      v12 = v8;
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_100006B44(v14, v16, &v18);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_100006B44(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, v9, v10, "Invalidating background runtime assertion: %{public}s, reason: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    [v8 invalidate];
  }
}

void sub_1000A14E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  swift_getKeyPath();
  v16 = v2;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverSettingsState);
  swift_getKeyPath();
  v16 = v6;
  sub_1000AC1D0(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = [objc_opt_self() listeningForAlternateBonjourBrowsing];

  if (v7)
  {
    swift_getKeyPath();
    v16 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v3 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager))
    {
      sub_10009E454();
    }

    sub_10009EE8C(a1, a2);
  }

  else
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006B0C(v8, qword_100181F88);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = sub_100006B44(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Avoid starting discovery as airplay receiver settings are disabled.", v11, 0xCu);
      sub_1000052E4(v12);
    }
  }
}

void sub_1000A17C4(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v100 - v9;
  v113 = type metadata accessor for URL();
  v11 = *(v113 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v113);
  v108 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v109 = &v100 - v15;
  v16 = a1;
  sub_10009C3B4(a1);
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager___observationRegistrar;
  v116[0] = v2;
  v106 = sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverSettingsState);
  swift_getKeyPath();
  v116[0] = v18;
  sub_1000AC1D0(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = [objc_opt_self() listeningForAlternateBonjourBrowsing];

  if (!v19)
  {
    if (qword_100168E20 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_93;
  }

  v100 = v10;
  v105 = v17;
  v20 = a2;
  v102 = ObjectType;
  v101 = v3;
  v111 = a2;
  v104 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100031904(0, &qword_10016F2C0, UIOpenURLContext_ptr);
    sub_1000AC980();
    Set.Iterator.init(_cocoa:)();
    v20 = v115[1];
    v21 = v115[2];
    v22 = v115[3];
    v23 = v115[4];
    v24 = v115[5];
  }

  else
  {
    v34 = -1 << *(a2 + 32);
    v21 = a2 + 56;
    v22 = ~v34;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v24 = v36 & *(v20 + 56);

    v23 = 0;
  }

  v103 = v22;
  v112 = (v11 + 8);
  v110 = 0x800000010011F2D0;
  while (1)
  {
    v38 = v23;
    if (v20 < 0)
    {
      v42 = __CocoaSet.Iterator.next()();
      if (!v42 || (v115[0] = v42, sub_100031904(0, &qword_10016F2C0, UIOpenURLContext_ptr), swift_dynamicCast(), (v41 = v116[0]) == 0))
      {
LABEL_29:
        sub_1000151D4();
        LODWORD(v109) = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v39 = v23;
      v40 = v24;
      if (!v24)
      {
        while (1)
        {
          v23 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          if (v23 >= ((v22 + 64) >> 6))
          {
            goto LABEL_29;
          }

          v40 = *(v21 + 8 * v23);
          ++v39;
          if (v40)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        swift_once();
LABEL_5:
        v25 = type metadata accessor for Logger();
        sub_100006B0C(v25, qword_100181F88);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v116[0] = v29;
          *v28 = 136315138;
          v30 = _typeName(_:qualified:)();
          v32 = sub_100006B44(v30, v31, v116);

          *(v28 + 4) = v32;
          v33 = "%s Avoid starting discovery as airplay receiver settings are disabled.";
LABEL_7:
          _os_log_impl(&_mh_execute_header, v26, v27, v33, v28, 0xCu);
          sub_1000052E4(v29);

LABEL_8:
        }

        goto LABEL_9;
      }

LABEL_21:
      v24 = (v40 - 1) & v40;
      v41 = *(*(v20 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v40)))));
      if (!v41)
      {
        goto LABEL_29;
      }
    }

    v107 = v38;
    v43 = [v41 URL];
    v44 = v109;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = URL.absoluteString.getter();
    v47 = v46;
    (*v112)(v44, v113);
    if (v45 == 0xD000000000000026 && v110 == v47)
    {
      break;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  sub_1000151D4();
  LODWORD(v109) = 0;
LABEL_30:
  if (v104)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100031904(0, &qword_10016F2C0, UIOpenURLContext_ptr);
    sub_1000AC980();
    Set.Iterator.init(_cocoa:)();
    v48 = v116[0];
    v49 = v116[1];
    v50 = v116[2];
    v51 = v116[3];
    v52 = v116[4];
  }

  else
  {
    v53 = -1 << *(v111 + 32);
    v49 = v111 + 56;
    v50 = ~v53;
    v54 = -v53;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    else
    {
      v55 = -1;
    }

    v52 = v55 & *(v111 + 56);

    v51 = 0;
  }

  v107 = v50;
  v56 = (v50 + 64) >> 6;
  v110 = 0x800000010011F290;
  v111 = v48;
  while (2)
  {
    if (v48 < 0)
    {
      v61 = __CocoaSet.Iterator.next()();
      if (!v61 || (v114 = v61, sub_100031904(0, &qword_10016F2C0, UIOpenURLContext_ptr), swift_dynamicCast(), (v60 = v115[0]) == 0))
      {
LABEL_51:
        sub_1000151D4();
        v68 = v101;
        if (v109)
        {
          return;
        }

        v67 = 1;
        goto LABEL_53;
      }
    }

    else
    {
      v58 = v51;
      for (i = v52; !i; ++v58)
      {
        v51 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_92;
        }

        if (v51 >= v56)
        {
          goto LABEL_51;
        }

        i = *(v49 + 8 * v51);
      }

      v52 = (i - 1) & i;
      v60 = *(*(v48 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(i)))));
      if (!v60)
      {
        goto LABEL_51;
      }
    }

    v62 = [v60 URL];
    v63 = v108;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = URL.absoluteString.getter();
    v66 = v65;
    (*v112)(v63, v113);
    if (v64 != 0xD000000000000035 || v110 != v66)
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v48 = v111;
      if (v57)
      {
        goto LABEL_50;
      }

      continue;
    }

    break;
  }

LABEL_50:
  sub_1000151D4();
  v67 = 0;
  v68 = v101;
LABEL_53:
  swift_getKeyPath();
  v115[0] = v68;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v68 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager))
  {
    sub_10009E454();
  }

  swift_getKeyPath();
  v115[0] = v68;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v68 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion))
  {
LABEL_65:
    sub_1000AC364();
    if ((v109 & 1) == 0)
    {
      sub_10009EE8C(0x4C52556D6F7266, 0xE700000000000000);
    }

    if (v67)
    {
      return;
    }

    swift_getKeyPath();
    v115[0] = v68;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v76 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel;
    v77 = *(v68 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
    if (!v77)
    {
      if (qword_100168E20 != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      sub_100006B0C(v80, qword_100181F88);
      v26 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v26, v81, "Can't request guest usesr view mirroring as model doesn't exist", v82, 2u);
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    swift_getKeyPath();
    v115[0] = v77;
    v78 = sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);

    v113 = v78;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v79 = *(v77 + 32);

    if (*(v68 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) == 1)
    {
      *(v68 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v100 - 2) = v68;
      *(&v100 - 8) = 1;
      v115[0] = v68;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    v115[0] = v68;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v68 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
    {
    }

    else
    {
      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v84 & 1) == 0)
      {
        v85 = type metadata accessor for TaskPriority();
        v86 = v100;
        (*(*(v85 - 8) + 56))(v100, 1, 1, v85);
        v87 = swift_allocObject();
        v87[2] = 0;
        v87[3] = 0;
        v87[4] = v79;
        sub_1000EE5F8(0, 0, v86, &unk_1001161F0, v87);
        goto LABEL_89;
      }
    }

    if (sub_10009CDAC() == 1)
    {

LABEL_83:
      if (qword_100168E20 != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      sub_100006B0C(v89, qword_100181F88);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v115[0] = v93;
        *v92 = 136315138;
        v94 = _typeName(_:qualified:)();
        v96 = v68;
        v97 = sub_100006B44(v94, v95, v115);

        *(v92 + 4) = v97;
        v68 = v96;
        _os_log_impl(&_mh_execute_header, v90, v91, "%s request view mirroring while already streaming in PiP, forcing full screen.", v92, 0xCu);
        sub_1000052E4(v93);
      }

      swift_getKeyPath();
      v115[0] = v68;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v98 = *(v68 + v76);
      if (v98)
      {
        swift_getKeyPath();
        v115[0] = v98;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v99 = *(v98 + 16);

        sub_100030FFC(0, 0xD000000000000031, 0x800000010011F250);
      }

      goto LABEL_89;
    }

    v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v88)
    {
      goto LABEL_83;
    }

LABEL_89:

    return;
  }

  swift_getKeyPath();
  v115[0] = v68;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v68 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) > 2u)
  {
  }

  else
  {
    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v69 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v70 = [objc_opt_self() sharedApplication];
  v71 = [v70 isSuspended];

  if ((v71 & 1) == 0)
  {
    goto LABEL_65;
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  sub_100006B0C(v72, qword_100181F88);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v115[0] = v29;
    *v28 = 136315138;
    v73 = _typeName(_:qualified:)();
    v75 = sub_100006B44(v73, v74, v115);

    *(v28 + 4) = v75;
    v33 = "%s Avoiding starting airplay discovery as urlContext was opened as suspended while not eligibleForBackgroundAssertion.";
    goto LABEL_7;
  }

LABEL_9:
}

uint64_t sub_1000A2964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1000A29F8;

  return sub_1000B9C9C();
}

uint64_t sub_1000A29F8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_1000A2B38;
  v5 = *(v1 + 16);

  return sub_1000BB14C();
}

uint64_t sub_1000A2B38()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000A2C2C()
{
  swift_getObjectType();
  swift_getKeyPath();
  v11 = v0;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) > 2u)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      sub_1000A1268(0x756F726765726F46, 0xEA0000000000646ELL);
      goto LABEL_6;
    }
  }

  sub_1000A14E0(0xD000000000000010, 0x800000010011F330);
LABEL_6:
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100181F88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s SceneWillEnterForeground, overriding force permission dialog state to false.", v5, 0xCu);
    sub_1000052E4(v6);
  }

  return sub_10009F3E0(0);
}

void sub_1000A2EE4()
{
  v1 = v0;
  swift_getObjectType();
  swift_getKeyPath();
  v31 = v0;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  if (*(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) > 2u)
  {

    return;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v3)
  {
    return;
  }

  if (sub_10009CDAC())
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100181F88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, &v31);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s SceneDidEnterBackground while not in PiP, updating force permission dialog state.", v8, 0xCu);
    sub_1000052E4(v9);
  }

  sub_10009F3E0(2u);
  sub_1000AC364();
  sub_1000A36D0(0xD000000000000021, 0x800000010011F300);
  swift_getKeyPath();
  v31 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion) & 1) == 0)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315138;
      v17 = _typeName(_:qualified:)();
      v19 = sub_100006B44(v17, v18, &v31);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s stopping airplay connection as backgrounded while in full screen and not eligible for background assertion.", v15, 0xCu);
      sub_1000052E4(v16);
    }

    sub_1000A1080();
  }

LABEL_16:
  swift_getKeyPath();
  v31 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + v2) == 2)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      return;
    }
  }

  if (sub_10009CDAC() == 1)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      return;
    }
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006B0C(v22, qword_100181F88);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v25 = 136315138;
    v27 = _typeName(_:qualified:)();
    v29 = sub_100006B44(v27, v28, &v31);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s SceneDidEnterBackground while streaming, set showAirplayUI to true.", v25, 0xCu);
    sub_1000052E4(v26);
  }

  if (*(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) == 1)
  {
    *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v31 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_1000A36D0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006B0C(v6, qword_100181F88);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, &v17);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100006B44(a1, a2, &v17);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Stop mirroring session requested with reason: %s.", v9, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  v17 = v3;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v3 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
  if (v13)
  {
    swift_getKeyPath();
    v17 = v13;
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v13 + 16);

    swift_getKeyPath();
    v17 = v14;
    sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(v14 + 112);

    [v15 stop];
  }

  return sub_1000A02D0(a1, a2, 0);
}

void sub_1000A3A28()
{
  swift_getObjectType();
  swift_getKeyPath();
  v11 = v0;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      return;
    }
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100181F88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s SceneDidBecomeActive while streaming, update VM state based on mirroringUIType.", v5, 0xCu);
    sub_1000052E4(v6);
  }

  v10 = sub_10009CDAC();
  sub_1000A3CA8(v10);
}

void sub_1000A3CA8(char a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100181F88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, &v20);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    if (a1)
    {
      if (a1 == 1)
      {
        v11 = 0xD000000000000010;
      }

      else
      {
        v11 = 0x69736E6172546E69;
      }

      if (a1 == 1)
      {
        v12 = 0x800000010011C670;
      }

      else
      {
        v12 = 0xEC0000006E6F6974;
      }
    }

    else
    {
      v11 = 0x657263536C6C7566;
      v12 = 0xEA00000000006E65;
    }

    v13 = sub_100006B44(v11, v12, &v20);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s didChangeMirroring to type: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (a1 == 1)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  swift_getKeyPath();
  v20 = v2;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong activationState];

    if (!v17)
    {
      if ((*(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) & 1) == 0)
      {
        *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) = 0;
        return;
      }

      goto LABEL_25;
    }
  }

LABEL_18:
  swift_getKeyPath();
  v20 = v2;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      return;
    }
  }

  if (*(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) == 1)
  {
    *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) = 1;
    return;
  }

LABEL_25:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v20 = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t *sub_1000A4204()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = getpid();
  v9 = [objc_opt_self() targetWithPid:v8];
  sub_100002BE4(&qword_10016F290, &qword_10010CF40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100115E40;
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() attributeWithDomain:v11 name:v12];

  *(v10 + 32) = v13;
  v14 = objc_allocWithZone(RBSAssertion);
  v15 = String._bridgeToObjectiveC()();
  sub_100031904(0, &qword_10016F298, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v14 initWithExplanation:v15 target:v9 attributes:isa];

  v43 = 0;
  if ([v6 acquireWithError:&v43])
  {
    v17 = qword_100168E20;
    v18 = v43;
    if (v17 == -1)
    {
LABEL_4:
      v19 = type metadata accessor for Logger();
      sub_100006B0C(v19, qword_100181F88);
      v20 = v6;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v43 = v24;
        *v23 = 136446210;
        v25 = v20;
        v42 = v1;
        v26 = v25;
        v27 = [v25 description];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = sub_100006B44(v28, v30, &v43);

        *(v23 + 4) = v31;
        v1 = v42;
        _os_log_impl(&_mh_execute_header, v21, v22, "Acquired background runtime assertion: %{public}s", v23, 0xCu);
        sub_1000052E4(v24);
      }

      [v20 addObserver:v1];
      return v6;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  v32 = v43;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100006B0C(v33, qword_100181F88);
  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v36 = 136446210;
    swift_getErrorValue();
    v38 = Error.localizedDescription.getter();
    v40 = sub_100006B44(v38, v39, &v43);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v34, v35, "Unable to acquire domain assertion for airplay receiver in the vision pro app: %{public}s", v36, 0xCu);
    sub_1000052E4(v37);
  }

  else
  {
  }

  return v6;
}

uint64_t sub_1000A47C4()
{
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006B0C(v0, qword_100181F88);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Runtime assertion will invalidate! Dismissing all UI...", v3, 2u);
  }

  result = sub_1000A013C();
  if ((result & 1) == 0)
  {
    return sub_1000A02D0(0xD000000000000020, 0x800000010011F400, 1);
  }

  return result;
}

void sub_1000A49A4(void *a1)
{
  v2 = v1;
  v44 = a1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
  if (v13)
  {
    v42 = v9;
    v14 = qword_100168E20;

    if (v14 != -1)
    {
      swift_once();
    }

    v41 = v12;
    v15 = type metadata accessor for Logger();
    sub_100006B0C(v15, qword_100181F88);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40 = v7;
      v20 = v19;
      aBlock[0] = v19;
      *v18 = 136315138;
      v21 = _typeName(_:qualified:)();
      ObjectType = v13;
      v23 = sub_100006B44(v21, v22, aBlock);
      v13 = ObjectType;

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s didStartStreaming received from APRK", v18, 0xCu);
      sub_1000052E4(v20);
      v7 = v40;
    }

    sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    v25[2] = v2;
    v25[3] = v13;
    v26 = v44;
    v25[4] = v44;
    aBlock[4] = sub_1000ADD50;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009BB40;
    aBlock[3] = &unk_10015DCA8;
    v27 = _Block_copy(aBlock);

    v28 = v2;
    v29 = v26;

    v30 = v41;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags);
    sub_100002BE4(&qword_10016D0C8, &unk_100113370);
    sub_1000644D4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v4 + 8))(v7, v3);
    (*(v42 + 8))(v30, v8);
  }

  else
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100006B0C(v31, qword_100181F88);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136315138;
      v36 = _typeName(_:qualified:)();
      v38 = sub_100006B44(v36, v37, aBlock);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "%s Can not start streaming without uninitialized main model", v34, 0xCu);
      sub_1000052E4(v35);
    }
  }
}

void sub_1000A4F74(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  if (*(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
  {

LABEL_4:
    *(a1 + v6) = 2;
    sub_10009C74C();
    goto LABEL_6;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_4;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_6:
  if (*(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) == 1)
  {
    *(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) = 1;
  }

  else
  {
    v9 = swift_getKeyPath();
    __chkstk_darwin(v9);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(a2 + 16);

  v11 = a3;
  sub_100030988(a3);

  [v11 setDelegate:a1];
  if ((sub_1000A013C() & 1) == 0)
  {
    sub_10009F894(0xD000000000000011, 0x800000010011F380);
  }
}

uint64_t sub_1000A535C(uint64_t a1)
{
  if (!sub_10009CDAC())
  {

    goto LABEL_9;
  }

  v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v2)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  v16 = a1;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (![Strong activationState])
    {

      goto LABEL_9;
    }

    v5 = [v4 activationState];

    if (v5 == 1)
    {
LABEL_9:
      v6 = 0;
      goto LABEL_10;
    }
  }

  swift_getKeyPath();
  v16 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion) == 1)
  {
    sub_1000AC364();
    goto LABEL_9;
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006B0C(v8, qword_100181F88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100006B44(v13, v14, &v16);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s stopping airplay connection as stopped streaming while in pip and not eligible for background assertion", v11, 0xCu);
    sub_1000052E4(v12);
  }

  v6 = 1;
LABEL_10:
  sub_1000A02D0(0xD000000000000011, 0x800000010011F3E0, v6);
  return sub_10009F3E0(2u);
}

uint64_t sub_1000A56DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v37 = a4;
  ObjectType = swift_getObjectType();
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v33 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v33);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v32 = *(v35 - 8);
  v9 = *(v32 + 64);
  __chkstk_darwin(v35);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006B0C(v11, qword_100181F88);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100006B44(v16, v17, aBlock);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s shouldShowGlobalPasscode", v14, 0xCu);
    sub_1000052E4(v15);
  }

  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  v21 = v34;
  v20[2] = v34;
  v20[3] = a1;
  v22 = v37;
  v20[4] = v36;
  v20[5] = a3;
  v20[6] = v22;
  v20[7] = ObjectType;
  aBlock[4] = sub_1000AD46C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015DBE0;
  v23 = _Block_copy(aBlock);
  v24 = v21;

  v25 = v30;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  v26 = v31;
  v27 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v38 + 8))(v26, v27);
  return (*(v32 + 8))(v25, v35);
}

void sub_1000A5B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v34 = a4;
  swift_getKeyPath();
  aBlock[0] = a1;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) > 2u)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      if (*(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) == 1)
      {
        *(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        aBlock[0] = a1;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      swift_getKeyPath();
      aBlock[0] = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v19 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
      if (v19)
      {
        v20 = type metadata accessor for PINViewModel();
        v21 = *(v20 + 48);
        v22 = *(v20 + 52);
        v23 = swift_allocObject();

        ObservationRegistrar.init()();
        v23[2] = a2;
        v23[3] = a3;
        v23[4] = v34;
        v23[5] = a5;
        v33 = swift_getKeyPath();
        v34 = &v32;
        __chkstk_darwin(v33);
        aBlock[0] = v19;
        sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);
        v32 = 0;

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      sub_10009F894(0x4E495020776F6853, 0xE800000000000000);
      v24 = objc_allocWithZone(BSContinuousMachTimer);
      v25 = String._bridgeToObjectiveC()();
      v26 = [v24 initWithIdentifier:v25];

      sub_10009DA48(v26);
      swift_getKeyPath();
      aBlock[0] = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v27 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__pinUIExpirationTimer);
      if (v27)
      {
        sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
        v28 = v27;
        v29 = static OS_dispatch_queue.main.getter();
        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_1000AD47C;
        aBlock[5] = v30;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000634B8;
        aBlock[3] = &unk_10015DC08;
        v31 = _Block_copy(aBlock);

        [v28 scheduleWithFireInterval:v29 leewayInterval:v31 queue:30.0 handler:0.0];
        _Block_release(v31);
      }

      return;
    }
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006B0C(v10, qword_100181F88);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    v15 = _typeName(_:qualified:)();
    v17 = sub_100006B44(v15, v16, aBlock);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s Should not present PINUI when the receiver is not connected.", v13, 0xCu);
    sub_1000052E4(v14);
  }
}

void sub_1000A6158()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006B0C(v2, qword_100181F88);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "PIN UI timed out. Suspending...", v5, 2u);
    }

    sub_1000A0EA0();
    swift_getKeyPath();
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI))
        {
          sub_1000A02D0(0xD000000000000010, 0x800000010011F3C0, 0);
        }
      }
    }
  }
}

uint64_t sub_1000A648C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006B0C(v11, qword_100181F88);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v7;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    v18 = _typeName(_:qualified:)();
    v20 = sub_100006B44(v18, v19, aBlock);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s shouldHideGlobalPasscode", v15, 0xCu);
    sub_1000052E4(v17);
    v7 = v27;

    v3 = v28;
  }

  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  aBlock[4] = sub_1000AD3A0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015DB90;
  v23 = _Block_copy(aBlock);
  v24 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v3 + 8))(v6, v2);
  return (*(v29 + 8))(v10, v7);
}

id sub_1000A6880(uint64_t a1)
{
  sub_1000A0EA0();
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
  {
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    return sub_1000A02D0(0x64204955204E4950, 0xEF64656C62617369, 0);
  }

  return result;
}

void sub_1000A6A44(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v89 = a4;
  v90 = a5;
  v88 = a2;
  v92 = v6;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v9 - 8);
  v87 = v9;
  v10 = *(v86 + 64);
  __chkstk_darwin(v9);
  v84 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchQoS();
  v83 = *(v85 - 8);
  v12 = *(v83 + 64);
  __chkstk_darwin(v85);
  v82 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v78 = v18;
  v79 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v74 - v19;
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100006B0C(v21, qword_100181F88);
  v22 = *(v15 + 16);
  v81 = a1;
  v22(v20, a1, v14);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v80 = v15;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v76 = v22;
    v27 = v15;
    v28 = v26;
    v75 = swift_slowAlloc();
    aBlock[0] = v75;
    *v28 = 136315650;
    v29 = _typeName(_:qualified:)();
    v31 = sub_100006B44(v29, v30, aBlock);
    v77 = a3;
    v32 = v31;

    *(v28 + 4) = v32;
    *(v28 + 12) = 2082;
    v33 = UUID.uuidString.getter();
    v35 = v34;
    v36 = v20;
    v37 = v14;
    (*(v27 + 8))(v36, v14);
    v38 = sub_100006B44(v33, v35, aBlock);
    v39 = v88;
    a3 = v77;

    *(v28 + 14) = v38;
    *(v28 + 22) = 2082;
    v40 = v39;
    v22 = v76;
    *(v28 + 24) = sub_100006B44(v40, a3, aBlock);
    _os_log_impl(&_mh_execute_header, v23, v24, "%s shouldAskPermission with uuid: %{public}s fromClient: %{public}s", v28, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v41 = v20;
    v37 = v14;
    (*(v15 + 8))(v41, v14);
  }

  if (sub_1000A736C())
  {
    sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
    v77 = static OS_dispatch_queue.main.getter();
    v42 = v79;
    v43 = v37;
    v22(v79, v81, v37);
    v44 = v80;
    v45 = (*(v80 + 80) + 24) & ~*(v80 + 80);
    v46 = a3;
    v47 = (v78 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
    v49 = v92;
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    (*(v44 + 32))(v50 + v45, v42, v43);
    v51 = (v50 + v47);
    v52 = v89;
    *v51 = v88;
    v51[1] = v46;
    v53 = (v50 + v48);
    v54 = v90;
    *v53 = v52;
    v53[1] = v54;
    *(v50 + ((v48 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    aBlock[4] = sub_1000ACEDC;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009BB40;
    aBlock[3] = &unk_10015DA78;
    v55 = _Block_copy(aBlock);

    v56 = v49;

    v57 = v82;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags);
    sub_100002BE4(&qword_10016D0C8, &unk_100113370);
    sub_1000644D4();
    v58 = v84;
    v59 = v87;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v60 = v77;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v55);

    (*(v86 + 8))(v58, v59);
    (*(v83 + 8))(v57, v85);
    return;
  }

  swift_getKeyPath();
  v61 = v92;
  aBlock[0] = v92;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v61 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) <= 1u && *(v61 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState))
  {

LABEL_13:
    swift_getKeyPath();
    v63 = v92;
    aBlock[0] = v92;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v64 = *(v63 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__acceptDialogController);
    if (v64)
    {
      v65 = *(v64 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
      if (v65)
      {
        v66 = *(v64 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);

        sub_10001D9F4(v65);
        v65(0);
        sub_100014104(v65);
      }

      else
      {
      }

      sub_1000631F8();
    }

    goto LABEL_18;
  }

  v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v62)
  {
    goto LABEL_13;
  }

LABEL_18:
  v89(1);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock[0] = v70;
    *v69 = 136315138;
    v71 = _typeName(_:qualified:)();
    v73 = sub_100006B44(v71, v72, aBlock);

    *(v69 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v67, v68, "%s manually approved permissions dialog as forcePermissionsDialog is disabled.", v69, 0xCu);
    sub_1000052E4(v70);
  }
}

uint64_t sub_1000A736C()
{
  swift_getObjectType();
  v1 = sub_1000AA664();
  swift_getKeyPath();
  v22 = v0;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(*&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lockoutManager] + 16);
  v3 = (v2 >> 1) & 1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel];
  if (!v4)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  v22 = v4;
  sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v4 + 32);

  swift_getKeyPath();
  v22 = v5;
  sub_1000AC1D0(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + 32);

  if ((v6 & 1) == 0)
  {
LABEL_6:
    v7 = 0;
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  swift_getKeyPath();
  v22 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = 1;
  if ((v1 & 1) != 0 && (v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion] & 1) == 0)
  {
LABEL_7:
    v3 = 1;
  }

LABEL_8:
  v20 = v1;
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006B0C(v8, qword_100181F88);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v19 = v2 & 2;
    v21 = v3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136316418;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100006B44(v14, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v21;
    *(v12 + 18) = 1024;
    *(v12 + 20) = v20 & 1;
    *(v12 + 24) = 1024;
    *(v12 + 26) = v7;
    *(v12 + 30) = 1024;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = v9[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion];

    *(v12 + 32) = v17;
    *(v12 + 36) = 1024;
    *(v12 + 38) = v19 >> 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s Force Accpet Dialog state set to %{BOOL}d [ForceWindowState: %{BOOL}d, IsGuestSession: %{BOOL}d, IsEligibleForBackgroundAssertion: %{BOOL}d, ForceDeviceLockedState: %{BOOL}d]", v12, 0x2Au);
    sub_1000052E4(v13);

    v3 = v21;
  }

  else
  {
  }

  return v3;
}

uint64_t sub_1000A77BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;

  sub_1000A79F8(a2, a3, a4, sub_1000ACFC4, v13);
}

uint64_t sub_1000A7874(char a1, uint64_t (*a2)(void))
{
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100181F88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, &v13);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s presentAlertWithRequestToBeginStream finished with result %{BOOL}d", v7, 0x12u);
    sub_1000052E4(v8);
  }

  return a2(a1 & 1);
}

void sub_1000A79F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v58 = a1;
  v11 = type metadata accessor for UUID();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  __chkstk_darwin(v11);
  v54 = v13;
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager___observationRegistrar;
  v59 = v6;
  v56 = sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  v57 = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v6 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName + 8);
  if (v16)
  {
    v17 = *(v6 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName) == a2 && v16 == a3;
    if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (qword_100168E20 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100006B0C(v18, qword_100181F88);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Another request is already in-flight, skip this request", v21, 2u);
      }

      return;
    }
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006B0C(v22, qword_100181F88);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v51 = a5;
  v52 = a2;
  v50 = a4;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v59 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_100006B44(a2, a3, &v59);
    _os_log_impl(&_mh_execute_header, v23, v24, "Presenting alert with request to begin stream for client %s", v26, 0xCu);
    sub_1000052E4(v27);
  }

  v28 = v14;
  sub_1000AC364();
  v29 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  v30 = *(v6 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState);
  v53 = a3;
  if (v30 <= 1 && v30)
  {
    v31 = v55;
  }

  else
  {
    v31 = v55;
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      v33 = v11;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v49 - 2) = v6;
      *(&v49 - 8) = 1;
      v59 = v6;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      goto LABEL_22;
    }
  }

  v33 = v11;
  *(v6 + v29) = 1;
  sub_10009C74C();
LABEL_22:
  v56 = *(v31 + 16);
  v57 = v33;
  v56(v28, v58, v33);
  v35 = type metadata accessor for AcceptDialogController();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  v38 = sub_100061FF4(v28);
  v39 = swift_getKeyPath();
  v55 = v28;
  __chkstk_darwin(v39);
  *(&v49 - 2) = v6;
  *(&v49 - 1) = v38;
  v59 = v6;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  v59 = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v6 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__acceptDialogController))
  {
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = v55;
    v42 = v57;
    v56(v55, v58, v57);
    v43 = (*(v31 + 80) + 24) & ~*(v31 + 80);
    v44 = (v54 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    *(v45 + 16) = v40;
    (*(v31 + 32))(v45 + v43, v41, v42);
    v46 = (v45 + v44);
    v48 = v50;
    v47 = v51;
    *v46 = v50;
    v46[1] = v47;

    sub_10001D9F4(v48);
    sub_100064034(v52, v53, sub_1000AD130, v45);
  }
}

uint64_t sub_1000A8218(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v48 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  v6 = *(v47 + 64);
  __chkstk_darwin(v49);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006B0C(v14, qword_100181F88);
  v15 = *(v9 + 16);
  v44 = a1;
  v42 = v15;
  v15(v13, a1, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = v3;
    v19 = v18;
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v19 = 136315394;
    v20 = _typeName(_:qualified:)();
    v22 = sub_100006B44(v20, v21, aBlock);
    ObjectType = v2;
    v23 = v22;

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v24 = UUID.uuidString.getter();
    v26 = v25;
    (*(v9 + 8))(v13, v8);
    v27 = sub_100006B44(v24, v26, aBlock);
    v2 = ObjectType;

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s cancelPermission with uuid: %{public}s", v19, 0x16u);
    swift_arrayDestroy();

    v3 = v40;
  }

  else
  {

    (*(v9 + 8))(v13, v8);
  }

  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v28 = static OS_dispatch_queue.main.getter();
  v29 = v43;
  v42(v43, v44, v8);
  v30 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v31 = swift_allocObject();
  v32 = v45;
  *(v31 + 16) = v45;
  (*(v9 + 32))(v31 + v30, v29, v8);
  aBlock[4] = sub_1000ACC38;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015DA00;
  v33 = _Block_copy(aBlock);
  v34 = v32;

  v35 = v46;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  v36 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v3 + 8))(v36, v2);
  return (*(v47 + 8))(v35, v49);
}

uint64_t sub_1000A87BC(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v38[0] = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_10016F2D8, &qword_100116248);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v38 - v9;
  v11 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v40 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v38 - v16;
  __chkstk_darwin(v15);
  v19 = v38 - v18;
  sub_1000AC364();
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager___observationRegistrar;
  v42 = a1;
  v38[1] = sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  v38[2] = v20;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = a1;
  v21 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__acceptDialogController);
  if (v21)
  {
    v22 = *(v4 + 16);
    v22(v19, v21 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_identifier, v3);
    v23 = *(v4 + 56);
    v23(v19, 0, 1, v3);
  }

  else
  {
    v23 = *(v4 + 56);
    v23(v19, 1, 1, v3);
    v22 = *(v4 + 16);
  }

  v22(v17, v41, v3);
  v23(v17, 0, 1, v3);
  v24 = *(v7 + 48);
  sub_1000ACC9C(v19, v10);
  sub_1000ACC9C(v17, &v10[v24]);
  v25 = *(v4 + 48);
  if (v25(v10, 1, v3) != 1)
  {
    v26 = v40;
    sub_1000ACC9C(v10, v40);
    if (v25(&v10[v24], 1, v3) != 1)
    {
      v28 = v38[0];
      (*(v4 + 32))(v38[0], &v10[v24], v3);
      sub_1000AC1D0(&qword_10016D278, &type metadata accessor for UUID);
      v29 = v26;
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v4 + 8);
      v31(v28, v3);
      sub_100009908(v17, &unk_10016F2E0, qword_100113590);
      sub_100009908(v19, &unk_10016F2E0, qword_100113590);
      v31(v29, v3);
      result = sub_100009908(v10, &unk_10016F2E0, qword_100113590);
      if ((v30 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    sub_100009908(v17, &unk_10016F2E0, qword_100113590);
    sub_100009908(v19, &unk_10016F2E0, qword_100113590);
    (*(v4 + 8))(v26, v3);
    return sub_100009908(v10, &qword_10016F2D8, &qword_100116248);
  }

  sub_100009908(v17, &unk_10016F2E0, qword_100113590);
  sub_100009908(v19, &unk_10016F2E0, qword_100113590);
  if (v25(&v10[v24], 1, v3) != 1)
  {
    return sub_100009908(v10, &qword_10016F2D8, &qword_100116248);
  }

  sub_100009908(v10, &unk_10016F2E0, qword_100113590);
LABEL_11:
  swift_getKeyPath();
  v32 = v39;
  v42 = v39;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  if (*(v32 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) <= 1u && *(v32 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState))
  {

    v34 = 0;
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v34 = 0;
    if ((v35 & 1) == 0)
    {
      swift_getKeyPath();
      v42 = v32;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v34 = *(v32 + v33);
    }
  }

  if (sub_10009AAD0(*(v32 + v33), v34))
  {
    *(v32 + v33) = v34;
    sub_10009C74C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v38[-2] = v32;
    LOBYTE(v38[-1]) = v34;
    v42 = v32;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v37 = swift_getKeyPath();
  __chkstk_darwin(v37);
  v38[-2] = v32;
  v38[-1] = 0;
  v42 = v32;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000A900C(unsigned __int8 a1, void *a2)
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
  if (v6)
  {
    swift_getKeyPath();
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v6 + 16);
    swift_getKeyPath();
    sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v7 + 40);
    v9 = v8;

    if (v8)
    {
      sub_100031904(0, &qword_10016F2D0, APRKStreamRenderer_ptr);
      v10 = a2;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v12 = *(v6 + 16);
        v13 = (a1 ^ 1) & 1;
        if (v13 != *(v12 + 16))
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);

          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        v14 = *(v6 + 16);

        *(v12 + 16) = v13;
      }
    }
  }

  return result;
}

uint64_t sub_1000A93A8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchQoS();
  v31 = *(v11 - 8);
  v32 = v11;
  v12 = *(v31 + 64);
  __chkstk_darwin(v11);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  (*(v16 + 16))(&v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v15);
  v18 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  (*(v16 + 32))(v19 + v18, &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)], v15);
  v20 = v19 + ((v17 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = v28;
  v21 = v29;
  *v20 = v28;
  *(v20 + 8) = v21;
  *(v20 + 16) = v27;
  aBlock[4] = sub_1000AD2B8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015DB40;
  v23 = _Block_copy(aBlock);

  sub_10001D9F4(v22);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v30;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v33 + 8))(v10, v7);
  return (*(v31 + 8))(v14, v32);
}

void sub_1000A976C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, int a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1000A97F4(a2, a3, a4, a5);
  }
}

void sub_1000A97F4(uint64_t a1, void (*a2)(void), uint64_t a3, int a4)
{
  v5 = v4;
  v62 = a4;
  v64 = a3;
  v66 = a1;
  v67 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v59 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002BE4(&qword_10016F2D8, &qword_100116248);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v58 - v12;
  v14 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v61 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v58 - v19;
  __chkstk_darwin(v18);
  v22 = &v58 - v21;
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager___observationRegistrar;
  v68 = v5;
  v24 = sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  v60 = v23;
  v65 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v63 = v5;
  v25 = *(v5 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__acceptDialogController);
  if (v25)
  {
    v26 = *(v7 + 16);
    v26(v22, v25 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_identifier, v6);
    v27 = *(v7 + 56);
    v27(v22, 0, 1, v6);
  }

  else
  {
    v27 = *(v7 + 56);
    v27(v22, 1, 1, v6);
    v26 = *(v7 + 16);
  }

  v26(v20, v66, v6);
  v27(v20, 0, 1, v6);
  v28 = *(v10 + 48);
  sub_1000ACC9C(v22, v13);
  sub_1000ACC9C(v20, &v13[v28]);
  v29 = *(v7 + 48);
  if (v29(v13, 1, v6) == 1)
  {
    sub_100009908(v20, &unk_10016F2E0, qword_100113590);
    sub_100009908(v22, &unk_10016F2E0, qword_100113590);
    v30 = v29(&v13[v28], 1, v6);
    v31 = v67;
    if (v30 == 1)
    {
      sub_100009908(v13, &unk_10016F2E0, qword_100113590);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v32 = v61;
  sub_1000ACC9C(v13, v61);
  if (v29(&v13[v28], 1, v6) == 1)
  {
    sub_100009908(v20, &unk_10016F2E0, qword_100113590);
    sub_100009908(v22, &unk_10016F2E0, qword_100113590);
    (*(v7 + 8))(v32, v6);
    v31 = v67;
LABEL_9:
    sub_100009908(v13, &qword_10016F2D8, &qword_100116248);
    goto LABEL_10;
  }

  v33 = v32;
  v34 = v59;
  (*(v7 + 32))(v59, &v13[v28], v6);
  sub_1000AC1D0(&qword_10016D278, &type metadata accessor for UUID);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v36 = *(v7 + 8);
  v36(v34, v6);
  sub_100009908(v20, &unk_10016F2E0, qword_100113590);
  sub_100009908(v22, &unk_10016F2E0, qword_100113590);
  v36(v33, v6);
  sub_100009908(v13, &unk_10016F2E0, qword_100113590);
  v31 = v67;
  if (v35)
  {
LABEL_13:
    swift_getKeyPath();
    v37 = v63;
    v68 = v63;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v38 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
    if (*(v37 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) > 1u)
    {
      v39 = v62;
    }

    else
    {
      v39 = v62;
      if (*(v37 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState))
      {

        v41 = 0;
        goto LABEL_20;
      }
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v41 = 0;
    if ((v40 & 1) == 0)
    {
      swift_getKeyPath();
      v68 = v37;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41 = *(v37 + v38);
    }

LABEL_20:
    if (sub_10009AAD0(*(v37 + v38), v41))
    {
      *(v37 + v38) = v41;
      sub_10009C74C();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v58 - 2) = v37;
      *(&v58 - 8) = v41;
      v68 = v37;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v43 = swift_getKeyPath();
    __chkstk_darwin(v43);
    *(&v58 - 2) = v37;
    *(&v58 - 1) = 0;
    v68 = v37;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v44 = (v37 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName);
    if (*(v37 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName + 8))
    {
      v45 = swift_getKeyPath();
      __chkstk_darwin(v45);
      *(&v58 - 3) = 0;
      *(&v58 - 2) = 0;
      *(&v58 - 4) = v37;
      v68 = v37;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *v44 = 0;
      v44[1] = 0;
    }

    if (v39 > 1u)
    {

      if (!v31)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v46 & 1) == 0)
      {
        sub_1000AC364();
      }

      if (!v31)
      {
LABEL_36:
        if (qword_100168E20 != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        sub_100006B0C(v48, qword_100181F88);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v49, v50))
        {

          if (!v39)
          {
LABEL_49:

LABEL_50:
            if ((sub_1000A013C() & 1) == 0)
            {
              sub_10009F894(0xD000000000000011, 0x800000010011F380);
            }

            return;
          }

LABEL_42:
          v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v53 & 1) == 0)
          {
            sub_1000A02D0(0xD00000000000002FLL, 0x800000010011F350, 0);
            return;
          }

          goto LABEL_50;
        }

        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v68 = v52;
        *v51 = 136446210;
        if (v39)
        {
          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v54 & 1) == 0)
          {
            v55 = 0xEE00747065636361;
            v56 = 0x20746F6E20646964;
LABEL_48:
            v57 = sub_100006B44(v56, v55, &v68);

            *(v51 + 4) = v57;
            _os_log_impl(&_mh_execute_header, v49, v50, "User %{public}s the request to begin stream.", v51, 0xCu);
            sub_1000052E4(v52);

            if (!v62)
            {
              goto LABEL_49;
            }

            goto LABEL_42;
          }
        }

        else
        {
        }

        v55 = 0xE800000000000000;
        v56 = 0x6465747065636361;
        goto LABEL_48;
      }
    }

    if (v39)
    {
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v47 = 1;
    }

    v31(v47 & 1);
    goto LABEL_36;
  }

LABEL_10:
  if (v31)
  {
    v31(0);
  }
}

uint64_t sub_1000AA344(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    swift_getKeyPath();
    v15 = a2;
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(a2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) <= 1u && *(a2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState))
    {
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v3 & 1) == 0)
      {
        return result;
      }
    }

    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006B0C(v4, qword_100181F88);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = _typeName(_:qualified:)();
      v11 = sub_100006B44(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s Force Accpet Dialog state set to false while a dialog is pending, manually accepting dialog.", v7, 0xCu);
      sub_1000052E4(v8);
    }

    swift_getKeyPath();
    v15 = a2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = *(a2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__acceptDialogController);
    if (v12)
    {
      v13 = *(v12 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
      if (v13)
      {
        v14 = *(v12 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);

        sub_10001D9F4(v13);
        v13(0);
        sub_100014104(v13);
      }

      else
      {
      }

      sub_1000631F8();
    }
  }

  return result;
}

uint64_t sub_1000AA664()
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong activationState] && objc_msgSend(v1, "activationState") != 1)
    {
      if (sub_10009CDAC() == 1)
      {

        v2 = 0;
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v2 = v3 ^ 1;
      }
    }

    else
    {

      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_1000AA7FC(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_getKeyPath();
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI))
    {
LABEL_6:
      sub_1000AC364();
      sub_1000A36D0(0xD00000000000001ALL, 0x800000010011F190);
      return sub_10009F3E0(2u);
    }

    if (sub_10009CDAC() == 1)
    {

      goto LABEL_6;
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      goto LABEL_6;
    }
  }

  return sub_10009F3E0(2u);
}

void sub_1000AA984(char a1, uint64_t a2)
{
  v4 = a1 & 1;
  swift_getKeyPath();
  v16 = a2;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion;
  if (v4 != *(a2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion))
  {
    v6 = a1 & 1;
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006B0C(v7, qword_100181F88);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v10 = 136315394;
      v11 = _typeName(_:qualified:)();
      v13 = sub_100006B44(v11, v12, &v16);

      *(v10 + 4) = v13;
      *(v10 + 12) = 1026;
      *(v10 + 14) = v6;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s AirplayReceiver background assertion eligibility updated to: %{BOOL,public}d.", v10, 0x12u);
      sub_1000052E4(v15);
    }

    if ((v6 ^ *(a2 + v5)))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v16 = a2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if (v6)
      {
        return;
      }
    }

    else
    {
      *(a2 + v5) = v6;
      if (v6)
      {
        return;
      }
    }

    sub_1000A1268(0xD000000000000024, 0x800000010011F220);
  }
}

void sub_1000AAC58(char a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100181F88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, &v26);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    if (a1)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (a1)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = sub_100006B44(v11, v12, &v26);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Received airplay browsing state change to %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  if (a1)
  {
    v26 = v2;
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) <= 1u || *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    swift_getKeyPath();
    v26 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v17 = Strong;
    if ([Strong activationState])
    {
      v18 = [v17 activationState];

      if (v18 != 1)
      {
        return;
      }
    }

    else
    {
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      v23 = _typeName(_:qualified:)();
      v25 = sub_100006B44(v23, v24, &v26);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s Browsing settings changed to true while connection is off and app is foregrounded. Starting receiver.", v21, 0xCu);
      sub_1000052E4(v22);
    }

    sub_1000A14E0(0xD000000000000018, 0x800000010011F4A0);
  }

  else
  {
    v26 = v2;
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) <= 1u || *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        sub_1000A02D0(0xD000000000000019, 0x800000010011F480, 1);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1000AB1B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

void sub_1000AB280(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (qword_100168E78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100182090);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v9 = 136315394;
    FeatureEligibilityState.rawValue.getter(v4);
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, v19);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v13 = v6;
    sub_100002BE4(&unk_10016F2F0, &unk_10010D220);
    v14 = String.init<A>(describing:)();
    v16 = sub_100006B44(v14, v15, v19);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Removing observer: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v17 = a2[5];
  __chkstk_darwin(v18);
  os_unfair_lock_lock((v17 + 24));
  sub_1000076B8((v17 + 16));
  os_unfair_lock_unlock((v17 + 24));
}

void sub_1000AB4B8(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (qword_100168E58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100182030);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v9 = 136315394;
    FeatureEligibilityState.rawValue.getter(v4);
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, v19);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v13 = v6;
    sub_100002BE4(&qword_10016F310, &qword_10010CDB8);
    v14 = String.init<A>(describing:)();
    v16 = sub_100006B44(v14, v15, v19);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Removing observer: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v17 = a2[5];
  __chkstk_darwin(v18);
  os_unfair_lock_lock((v17 + 24));
  sub_1000AE2E8((v17 + 16));
  os_unfair_lock_unlock((v17 + 24));
}

uint64_t sub_1000AB6F0(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (qword_100168E58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100182030);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v9 = 136315394;
    FeatureEligibilityState.rawValue.getter(v4);
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v13 = v6;
    sub_100002BE4(&qword_10016F310, &qword_10010CDB8);
    v14 = String.init<A>(describing:)();
    v16 = sub_100006B44(v14, v15, v20);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Adding observer: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v17 = a2[5];
  __chkstk_darwin(v18);
  os_unfair_lock_lock(v17 + 6);
  sub_1000AE2D0(&v17[4]);
  os_unfair_lock_unlock(v17 + 6);
  return sub_1000ABB88(a2[2]);
}

uint64_t sub_1000AB93C(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (qword_100168E78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100182090);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v9 = 136315394;
    FeatureEligibilityState.rawValue.getter(v4);
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v13 = v6;
    sub_100002BE4(&unk_10016F2F0, &unk_10010D220);
    v14 = String.init<A>(describing:)();
    v16 = sub_100006B44(v14, v15, v20);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Adding observer: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v17 = a2[5];
  __chkstk_darwin(v18);
  os_unfair_lock_lock(v17 + 6);
  sub_1000076D4(&v17[4]);
  os_unfair_lock_unlock(v17 + 6);
  return sub_1000ABE60(a2[2]);
}

uint64_t sub_1000ABB88(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v1;
  v14[4] = ObjectType;
  aBlock[4] = sub_1000AC898;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015D988;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v19);
}

uint64_t sub_1000ABE60(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1000AC160;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015D8E8;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000AC128()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AC168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AC1D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000AC218(void *a1, void *a2, uint64_t a3)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 1;
  *(a3 + 72) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  ObservationRegistrar.init()();
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel);
  swift_unknownObjectRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10002FD84(a2);
  return a3;
}

void sub_1000AC364()
{
  swift_getObjectType();
  swift_getKeyPath();
  v10 = v0;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion) == 1)
  {
    v1 = sub_1000A4204();
    sub_10009CF74(v1);
  }

  else
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006B0C(v2, qword_100181F88);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      v7 = _typeName(_:qualified:)();
      v9 = sub_100006B44(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Avoid acquiring background runtime assertion as user not eligible.", v5, 0xCu);
      sub_1000052E4(v6);
    }
  }
}

void sub_1000AC5C4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100030988(v2);
}

void sub_1000AC68C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10009C578(v2);
}

uint64_t sub_1000AC7B0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

void sub_1000AC830(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10009C3B4(v2);
}

uint64_t sub_1000AC860()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000AC8E4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10009CF74(v2);
}

unint64_t sub_1000AC980()
{
  result = qword_1001709A0;
  if (!qword_1001709A0)
  {
    sub_100031904(255, &qword_10016F2C0, UIOpenURLContext_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001709A0);
  }

  return result;
}

uint64_t sub_1000ACA00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000ACA40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100024388;

  return sub_1000A2964(a1, v4, v5, v6);
}

void sub_1000ACAF8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10002F83C(v2);
}

uint64_t sub_1000ACB74()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000ACC38()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000A87BC(v2, v3);
}

uint64_t sub_1000ACC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000ACD4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager);
  *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager) = v2;
  v4 = v2;
}

uint64_t sub_1000ACD8C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000ACDDC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000ACEDC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000A77BC(v5, v0 + v2, v7, v8, v9, v10, v11);
}

uint64_t sub_1000ACF8C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000ACFC4(char a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1000A7874(a1, *(v1 + 16));
}

uint64_t sub_1000ACFD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_10009D74C(v2, v3);
}

uint64_t sub_1000AD014()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AD04C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000AD130(int a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1000A93A8(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_1000AD1D4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

void sub_1000AD2B8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);

  sub_1000A976C(v3, v0 + v2, v5, v6, v7);
}

uint64_t sub_1000AD368()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000AD3D0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10009DA48(v2);
}

uint64_t sub_1000AD424()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000AD484()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1000ADD5C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015DCF8;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

void sub_1000AD748(void *a1, uint64_t a2)
{
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100181F88);
  v5 = a1;
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543618;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 2114;
    v9 = v5;
    if (a2)
    {
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v7 + 14) = v10;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Runtime assertion %{public}@ did invalidate with error: %{public}@", v7, 0x16u);
    sub_100002BE4(&unk_100169C20, &unk_10010D6B0);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000AD8F4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006B0C(v12, qword_100181F88);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v4;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    v18 = _typeName(_:qualified:)();
    v26 = v11;
    v20 = sub_100006B44(v18, v19, aBlock);
    v11 = v26;

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s didStopStreaming", v15, 0xCu);
    sub_1000052E4(v17);
    v4 = v27;
  }

  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  *(v22 + 24) = ObjectType;
  aBlock[4] = sub_1000ADD00;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015DC58;
  v23 = _Block_copy(aBlock);
  v24 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v4 + 8))(v7, v3);
  return (*(v28 + 8))(v11, v29);
}

uint64_t sub_1000ADD08()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000ADD84(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100030180(v2);
}

void sub_1000ADDD4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10002FF74(v2);
}

void sub_1000ADE24(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10003038C(v2);
}

uint64_t sub_1000ADE74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000FA04;

  return sub_10009FBD4(a1, v4, v5, v6);
}

uint64_t sub_1000ADF40(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t sub_1000ADFEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AE02C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100024388;

  return sub_10009EB30(a1, v4, v5, v6);
}

void sub_1000AE148()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__pinUIExpirationTimer);
  *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__pinUIExpirationTimer) = v2;
  v4 = v2;
  [v3 invalidate];
}

uint64_t sub_1000AE198()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1000AE24C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

__n128 sub_1000AE404(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000AE418(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AE460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1000AE4D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000AE558()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000AE5B4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100159CE8, *a1);

  *a2 = v3 != 0;
  return result;
}

void sub_1000AE674(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void **a5)
{
  v9 = [objc_opt_self() mainBundle];
  v14._object = 0xE000000000000000;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = a2;
  v11._object = a3;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v14);

  *a4 = v13._countAndFlagsBits;
  *a5 = v13._object;
}

uint64_t sub_1000AE730@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = type metadata accessor for InsetGroupedListStyle();
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&qword_10016F390, &qword_100116510);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v47 - v11;
  v13 = sub_100002BE4(&qword_10016F388, &qword_100116508);
  v14 = *(v13 - 8);
  v49 = v13;
  v50 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v47 - v16;
  KeyPath = swift_getKeyPath();
  v60 = *a1;
  v19 = *(a1 + 3);
  v20 = *(a1 + 4);
  v59 = *(a1 + 2);
  v21 = swift_allocObject();
  v22 = a1[1];
  *(v21 + 16) = *a1;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a1 + 4);
  v58 = &off_100159D20;
  v53 = &v58;
  v54 = KeyPath;
  v55 = sub_1000AFB1C;
  v56 = v21;
  sub_10000C178(&v60, v57, &qword_10016F3A0, &qword_100116540);
  sub_1000AFC98(&v59, v57);

  v23 = v48;

  sub_100002BE4(&qword_10016F3A8, &qword_100116548);
  sub_1000AFCF4();
  List<>.init(content:)();

  v24 = sub_100012C48(&qword_10016F398, &qword_10016F390, &qword_100116510);
  View.listHasStackBehavior()();
  (*(v9 + 8))(v12, v8);
  InsetGroupedListStyle.init()();
  v57[0] = v8;
  v57[1] = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v49;
  v26 = v51;
  View.listStyle<A>(_:)();
  (*(v52 + 8))(v7, v26);
  (*(v50 + 8))(v17, v25);
  LOBYTE(v26) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v23 + *(sub_100002BE4(&qword_10016F380, &qword_100116500) + 36);
  *v35 = v26;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
  *(v35 + 32) = v34;
  *(v35 + 40) = 0;
  v36 = static Edge.Set.bottom.getter();
  if (qword_100168F88 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  result = sub_100002BE4(&qword_10016F368, &qword_1001164F8);
  v46 = v23 + *(result + 36);
  *v46 = v36;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  return result;
}

uint64_t sub_1000AEBCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v46 = a2;
  v44 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v42 = *(v44 - 8);
  v3 = *(v42 + 64);
  __chkstk_darwin(v44);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100002BE4(&qword_10016F3E0, &qword_100116560);
  v45 = *(v48 - 8);
  v5 = *(v45 + 64);
  __chkstk_darwin(v48);
  v7 = &v37 - v6;
  v43 = sub_100002BE4(&qword_10016F3E8, &qword_100116568);
  v41 = *(v43 - 8);
  v8 = *(v41 + 64);
  v9 = __chkstk_darwin(v43);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v37 - v11;
  v38 = a1;
  v50 = *(a1 + 16);
  v51 = *(a1 + 32);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.projectedValue.getter();
  countAndFlagsBits = v54._countAndFlagsBits;
  object = v54._object;
  v37 = v54._countAndFlagsBits;
  v14 = v55;
  type metadata accessor for AppDelegate();
  sub_1000AFEBC(&qword_10016A710, type metadata accessor for AppDelegate);
  v15 = EnvironmentObject.init()();
  *&v50 = countAndFlagsBits;
  *(&v50 + 1) = object;
  v51 = v14;
  v52 = v15;
  v53 = v16;
  v17 = [objc_opt_self() mainBundle];
  v56._object = 0xE000000000000000;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._object = 0x800000010011F4C0;
  v19._countAndFlagsBits = 0xD000000000000010;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v18, v17, v20, v56);

  v54 = v21;
  v22 = sub_1000AFE58();
  v23 = sub_100012928();
  View.navigationTitle<A>(_:)();

  v24 = v42;
  v25 = v40;
  v26 = v44;
  (*(v42 + 104))(v40, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v44);
  *&v50 = &type metadata for AirplayReceiverSettingsView;
  *(&v50 + 1) = &type metadata for String;
  v51 = v22;
  v52 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v47;
  v28 = v48;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v24 + 8))(v25, v26);
  (*(v45 + 8))(v7, v28);
  v30 = v41;
  v31 = v43;
  (*(v41 + 16))(v39, v29, v43);
  v49 = v38;
  v45 = sub_100002BE4(&qword_10016F400, &qword_100116578);
  v32 = sub_10000459C(&qword_10016F408, &unk_100116580);
  v33 = sub_10000459C(&qword_100169A10, &qword_10010D450);
  v34 = sub_100012C48(&qword_10016F410, &qword_10016F408, &unk_100116580);
  v35 = sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450);
  *&v50 = v32;
  *(&v50 + 1) = v33;
  v51 = v34;
  v52 = v35;
  swift_getOpaqueTypeConformance2();
  *&v50 = v48;
  *(&v50 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  NavigationLink.init(destination:label:)();
  return (*(v30 + 8))(v47, v31);
}

uint64_t sub_1000AF1A0(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  v6 = static VerticalAlignment.center.getter();
  v14 = 1;
  sub_1000AF4A8(a1, &v21);
  v17 = v23;
  v18 = v24;
  v15 = v21;
  v16 = v22;
  v20[1] = v22;
  v20[2] = v23;
  v20[3] = v24;
  v20[4] = v25;
  v19 = v25;
  v20[0] = v21;
  sub_10000C178(&v15, &v11, &qword_10016F418, &qword_100116590);
  sub_100009908(v20, &qword_10016F418, &qword_100116590);
  *&v13[7] = v15;
  *&v13[71] = v19;
  *&v13[55] = v18;
  *&v13[39] = v17;
  *&v13[23] = v16;
  *&v12[33] = *&v13[32];
  *&v12[49] = *&v13[48];
  *&v12[65] = *&v13[64];
  *&v12[1] = *v13;
  v11 = v6;
  v12[0] = v14;
  *&v12[80] = *(&v19 + 1);
  *&v12[17] = *&v13[16];
  v7 = enum case for DynamicTypeSize.accessibility2(_:);
  v8 = type metadata accessor for DynamicTypeSize();
  (*(*(v8 - 8) + 104))(v5, v7, v8);
  sub_1000AFEBC(&qword_100169A78, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100002BE4(&qword_10016F408, &unk_100116580);
    sub_100012C48(&qword_10016F410, &qword_10016F408, &unk_100116580);
    sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450);
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v5, &qword_100169A10, &qword_10010D450);
    v25 = *&v12[48];
    v26 = *&v12[64];
    v27 = *&v12[80];
    v21 = v11;
    v22 = *v12;
    v23 = *&v12[16];
    v24 = *&v12[32];
    return sub_100009908(&v21, &qword_10016F408, &unk_100116580);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AF4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() mainBundle];
  v39._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._object = 0x800000010011F4C0;
  v6._countAndFlagsBits = 0xD000000000000010;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v39._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v39);

  sub_100012928();
  v8 = Text.init<A>(_:)();
  v33 = v9;
  v34 = v8;
  v32 = v10;
  v35 = v11;
  v36 = *(a1 + 16);
  v38 = *(a1 + 32);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000AFEBC(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(a1) = [objc_opt_self() listeningForAlternateBonjourBrowsing];

  if (a1)
  {
    if (qword_100168F90 != -1)
    {
      swift_once();
    }

    v12 = &qword_10016F348;
  }

  else
  {
    if (qword_100168F98 != -1)
    {
      swift_once();
    }

    v12 = &qword_10016F358;
  }

  v13 = v12[1];
  v37 = HIDWORD(*v12);

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Font.body.getter();
  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;

  sub_10001297C(v14, v16, v18 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v24 = Text.foregroundStyle<A>(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10001297C(v19, v21, v23 & 1);

  *a2 = v34;
  *(a2 + 8) = v33;
  *(a2 + 16) = v32 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v24;
  *(a2 + 56) = v26;
  *(a2 + 64) = v28 & 1;
  *(a2 + 72) = v30;
  sub_100003AE4(v34, v33, v32 & 1);

  sub_100003AE4(v24, v26, v28 & 1);

  sub_10001297C(v24, v26, v28 & 1);

  sub_10001297C(v34, v33, v32 & 1);
}

uint64_t sub_1000AF858()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_100002BE4(&qword_10016F368, &qword_1001164F8);
  sub_1000AF8E4();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_1000AF8E4()
{
  result = qword_10016F370;
  if (!qword_10016F370)
  {
    sub_10000459C(&qword_10016F368, &qword_1001164F8);
    sub_1000AF970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F370);
  }

  return result;
}

unint64_t sub_1000AF970()
{
  result = qword_10016F378;
  if (!qword_10016F378)
  {
    sub_10000459C(&qword_10016F380, &qword_100116500);
    sub_10000459C(&qword_10016F388, &qword_100116508);
    type metadata accessor for InsetGroupedListStyle();
    sub_10000459C(&qword_10016F390, &qword_100116510);
    sub_100012C48(&qword_10016F398, &qword_10016F390, &qword_100116510);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F378);
  }

  return result;
}

uint64_t sub_1000AFACC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000AFB24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_100002BE4(&qword_10016F3C8, &qword_100116558);
  sub_100002BE4(&qword_10016F3C0, &qword_100116550);
  sub_100012C48(&qword_10016F3D0, &qword_10016F3C8, &qword_100116558);
  sub_1000AFE04();
  sub_100012C48(&qword_10016F3B8, &qword_10016F3C0, &qword_100116550);
  return ForEach<>.init(_:id:content:)();
}

unint64_t sub_1000AFCF4()
{
  result = qword_10016F3B0;
  if (!qword_10016F3B0)
  {
    sub_10000459C(&qword_10016F3A8, &qword_100116548);
    sub_100012C48(&qword_10016F3B8, &qword_10016F3C0, &qword_100116550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F3B0);
  }

  return result;
}

uint64_t sub_1000AFDA4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AFDDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1000AFE04()
{
  result = qword_10016F3D8;
  if (!qword_10016F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F3D8);
  }

  return result;
}

unint64_t sub_1000AFE58()
{
  result = qword_10016F3F8;
  if (!qword_10016F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F3F8);
  }

  return result;
}

uint64_t sub_1000AFEBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000AFF60()
{
  result = qword_10016F430[0];
  if (!qword_10016F430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10016F430);
  }

  return result;
}

void sub_1000AFFBC(uint64_t a1)
{
  sub_1000B03A8();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000B0054(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 17) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 > 0x7FFFFFFE)
    {
      return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1000B01AC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
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

      else if (v13)
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
      if (v6 > 0x7FFFFFFE)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 17) & ~v8;

        return v18(v19);
      }

      else if (a2 > 0x7FFFFFFE)
      {
        *result = 0;
        *(result + 1) = 0;
        *result = a2 - 0x7FFFFFFF;
      }

      else
      {
        *(result + 1) = a2;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1000B03A8()
{
  if (!qword_10016A1A8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10016A1A8);
    }
  }
}

uint64_t sub_1000B043C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1000B0648@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10000459C(&qword_10016F4B8, &qword_100116738);
  v5 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for VStack();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v19[-v12];
  static HorizontalAlignment.leading.getter();
  v14 = *(v2 + *(a1 + 44));
  v15 = *(a1 + 24);
  v20 = v5;
  v21 = v15;
  v22 = v2;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  v16 = v7[2];
  v16(v13, v11, v6);
  v17 = v7[1];
  v17(v11, v6);
  v16(a2, v13, v6);
  return (v17)(v13, v6);
}

uint64_t sub_1000B0870@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = a1;
  v103 = a4;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v97 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v98 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v101 = &v80 - v16;
  __chkstk_darwin(v15);
  v102 = &v80 - v17;
  v92 = type metadata accessor for AutomationUtilities.AutomationAttributeType();
  v18 = *(v92 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v92);
  v91 = (&v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = type metadata accessor for AutomationSemantics();
  v95 = *(v96 - 8);
  v21 = *(v95 + 64);
  __chkstk_darwin(v96);
  v94 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100002BE4(&qword_10016F4C0, &unk_100116740);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v93 = &v80 - v26;
  v99 = sub_100002BE4(&qword_10016F4B8, &qword_100116738);
  v27 = *(*(v99 - 8) + 64);
  v28 = __chkstk_darwin(v99);
  v100 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v104 = &v80 - v30;
  v31 = v6[1];
  if (v31)
  {
    v82 = *v6;
    *&v110[0] = v82;
    *(&v110[0] + 1) = v31;
    v81 = v31;
    sub_100012928();
    v84 = v23;
    swift_bridgeObjectRetain_n();
    v32 = Text.init<A>(_:)();
    v86 = v7;
    v34 = v33;
    v85 = v6;
    v36 = v35;
    v88 = a3;
    static Font.title.getter();
    v83 = v24;
    v37 = v18;
    v38 = Text.font(_:)();
    v90 = v10;
    v39 = v38;
    v89 = v11;
    v41 = v40;
    v87 = v5;
    v43 = v42;

    sub_10001297C(v32, v34, v36 & 1);

    static Font.Weight.bold.getter();
    v44 = Text.fontWeight(_:)();
    v46 = v45;
    LOBYTE(v34) = v47;
    v49 = v48;
    v50 = v39;
    v10 = v90;
    v51 = v41;
    v11 = v89;
    sub_10001297C(v50, v51, v43 & 1);

    v52 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v53 = v34 & 1;
    v7 = v86;
    LOBYTE(v112) = v53;
    v109 = 0;
    *&v105 = v44;
    *(&v105 + 1) = v46;
    LOBYTE(v106) = v53;
    *(&v106 + 1) = v49;
    LOBYTE(v107) = v52;
    v5 = v87;
    *(&v107 + 1) = v54;
    *v108 = v55;
    *&v108[8] = v56;
    *&v108[16] = v57;
    v108[24] = 0;
    v58 = v91;
    v59 = v81;
    *v91 = v82;
    *(v58 + 8) = v59;
    swift_storeEnumTagMultiPayload();
    sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
    v60 = *(v37 + 72);
    v61 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_10010D3B0;
    sub_1000B1328(v58, v62 + v61);
    v63 = v94;
    sub_1000FCC48(0x8Au, v62, v94);
    swift_setDeallocating();
    v64 = *(v62 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000129F4(v58);
    sub_100002BE4(&qword_10016A0B8, &qword_10010ECF0);
    sub_10001D8A0();
    v65 = v93;
    a3 = v88;
    View.automationSemantics(_:)();
    v6 = v85;
    (*(v95 + 8))(v63, v96);
    v110[2] = v107;
    *v111 = *v108;
    *&v111[9] = *&v108[9];
    v110[0] = v105;
    v110[1] = v106;
    sub_1000B138C(v110);
    v66 = v83;
    v67 = v104;
    v68 = v84;
    (*(v83 + 32))(v104, v65, v84);
    (*(v66 + 56))(v67, 0, 1, v68);
  }

  else
  {
    (*(v24 + 56))(v104, 1, 1, v23);
  }

  v69 = type metadata accessor for DeviceTabSection();
  v70 = v97;
  (*(v7 + 16))(v97, v6 + *(v69 + 40), v5);
  static Edge.Set.horizontal.getter();
  *(v6 + 16);
  v71 = v101;
  View.padding(_:_:)();
  (*(v7 + 8))(v70, v5);
  v114 = a3;
  v115 = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  v73 = v11[2];
  v74 = v102;
  v73(v102, v71, v10);
  v75 = v11[1];
  v75(v71, v10);
  v76 = v104;
  v77 = v100;
  sub_1000B1190(v104, v100);
  *&v110[0] = v77;
  v78 = v98;
  v73(v98, v74, v10);
  *(&v110[0] + 1) = v78;
  *&v105 = v99;
  *(&v105 + 1) = v10;
  v112 = sub_1000B1200();
  v113 = WitnessTable;
  sub_1000B043C(v110, 2uLL, &v105);
  v75(v74, v10);
  sub_1000B12C0(v76);
  v75(v78, v10);
  return sub_1000B12C0(v77);
}

uint64_t sub_1000B1190(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016F4B8, &qword_100116738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B1200()
{
  result = qword_10016F4C8;
  if (!qword_10016F4C8)
  {
    sub_10000459C(&qword_10016F4B8, &qword_100116738);
    sub_10000459C(&qword_10016A0B8, &qword_10010ECF0);
    sub_10001D8A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F4C8);
  }

  return result;
}

uint64_t sub_1000B12C0(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016F4B8, &qword_100116738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B1328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomationUtilities.AutomationAttributeType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B138C(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016A0B8, &qword_10010ECF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B13F4(uint64_t *a1)
{
  v1 = *a1;
  sub_10000459C(&qword_10016F4B8, &qword_100116738);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();

  return swift_getWitnessTable();
}

uint64_t sub_1000B14C0(char *a1, char *a2)
{
  if (qword_100116C98[*a1] == qword_100116C98[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_1000B1528()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = qword_100116C98[v1];
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B1584()
{
  v1 = qword_100116C98[*v0];
  String.hash(into:)();
}

Swift::Int sub_1000B15C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = qword_100116C98[v1];
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000B161C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B7CA4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B1668()
{
  v1 = v0;
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 infoDictionary];

  if (v3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  sub_100002BE4(&qword_10016F578, &qword_1001169D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100116750;
  if (!v4 || !*(v4 + 16))
  {
    goto LABEL_10;
  }

  v6 = sub_10006889C(0x656C646E75424643, 0xEC000000656D614ELL);
  if ((v7 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_1000076F0(*(v4 + 56) + 32 * v6, &v72);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E55;
    goto LABEL_11;
  }

  v9 = v70;
  v8 = v71;
LABEL_11:
  *(v5 + 64) = 0;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 72) = 4;
  *(v5 + 80) = v9;
  *(v5 + 88) = v8;
  *(v5 + 96) = 1701667150;
  *(v5 + 104) = 0xE400000000000000;
  if (!v4 || !*(v4 + 16))
  {
    goto LABEL_17;
  }

  v10 = sub_10006889C(0xD000000000000012, 0x800000010011F780);
  if ((v11 & 1) == 0)
  {

    goto LABEL_17;
  }

  sub_1000076F0(*(v4 + 56) + 32 * v10, &v72);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E55;
    goto LABEL_18;
  }

  v13 = v70;
  v12 = v71;
LABEL_18:
  *(v5 + 144) = 0;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 152) = 4;
  *(v5 + 160) = v13;
  *(v5 + 168) = v12;
  *(v5 + 176) = 0x4920656C646E7542;
  *(v5 + 184) = 0xE900000000000044;
  if (!v4 || !*(v4 + 16))
  {
    goto LABEL_24;
  }

  v14 = sub_10006889C(0x656C646E75424643, 0xEF6E6F6973726556);
  if ((v15 & 1) == 0)
  {

    goto LABEL_24;
  }

  sub_1000076F0(*(v4 + 56) + 32 * v14, &v72);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v16 = 0xE700000000000000;
    v17 = 0x6E776F6E6B6E55;
    goto LABEL_25;
  }

  v17 = v70;
  v16 = v71;
LABEL_25:
  *(v5 + 224) = 0;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 232) = 4;
  *(v5 + 240) = v17;
  *(v5 + 248) = v16;
  strcpy((v5 + 256), "Bundle Version");
  *(v5 + 271) = -18;
  if (!v4)
  {
    goto LABEL_31;
  }

  if (!*(v4 + 16) || (v18 = sub_10006889C(0xD00000000000001ALL, 0x800000010011F760), (v19 & 1) == 0))
  {

    goto LABEL_31;
  }

  sub_1000076F0(*(v4 + 56) + 32 * v18, &v72);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    v20 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E55;
    goto LABEL_32;
  }

  v21 = v70;
  v20 = v71;
LABEL_32:
  *(v5 + 304) = 0;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 312) = 4;
  *(v5 + 320) = v21;
  *(v5 + 328) = v20;
  *(v5 + 336) = 0x6E6F6973726556;
  *(v5 + 344) = 0xE700000000000000;
  v22 = *(v1 + 64);
  AppStorage.projectedValue.getter();
  v23 = v73;
  v24 = v74;
  *(v5 + 352) = v72;
  *(v5 + 368) = v23;
  *(v5 + 376) = v24;
  *(v5 + 384) = &off_100159F10;
  *(v5 + 392) = 3;
  *(v5 + 400) = 0xD000000000000015;
  *(v5 + 408) = 0x800000010011F4E0;
  *(v5 + 416) = 0xD000000000000019;
  *(v5 + 424) = 0x800000010011F500;
  v25 = swift_allocObject();
  v26 = *(v1 + 112);
  v25[7] = *(v1 + 96);
  v25[8] = v26;
  v25[9] = *(v1 + 128);
  v27 = *(v1 + 48);
  v25[3] = *(v1 + 32);
  v25[4] = v27;
  v28 = *(v1 + 80);
  v25[5] = *(v1 + 64);
  v25[6] = v28;
  v29 = *(v1 + 16);
  v25[1] = *v1;
  v25[2] = v29;
  *(v5 + 432) = sub_1000B778C;
  *(v5 + 440) = v25;
  *(v5 + 448) = 0;
  *(v5 + 456) = 0u;
  *(v5 + 472) = 1;
  *(v5 + 480) = 0;
  *(v5 + 488) = 0xE000000000000000;
  *(v5 + 496) = 0xD000000000000027;
  *(v5 + 504) = 0x800000010011F520;
  v30 = *(v1 + 136);
  sub_1000B7070(v1, &v72);
  AppStorage.projectedValue.getter();
  v31 = *(&v72 + 1);
  v32 = v73;
  *(v5 + 512) = v72;
  *(v5 + 520) = v31;
  *(v5 + 528) = v32;
  *(v5 + 536) = 0u;
  *(v5 + 552) = 0;
  *(v5 + 560) = 0;
  *(v5 + 568) = 0xE000000000000000;
  *(v5 + 576) = 0xD000000000000011;
  *(v5 + 584) = 0x800000010011F550;
  v33 = *(v1 + 120);
  AppStorage.projectedValue.getter();
  v34 = *(&v72 + 1);
  v35 = v73;
  *(v5 + 592) = v72;
  *(v5 + 600) = v34;
  *(v5 + 608) = v35;
  *(v5 + 616) = 0u;
  *(v5 + 632) = 0;
  *(v5 + 640) = 0;
  *(v5 + 648) = 0xE000000000000000;
  *(v5 + 656) = 0xD000000000000027;
  *(v5 + 664) = 0x800000010011F570;
  *(v5 + 672) = 0u;
  *(v5 + 688) = 0u;
  *(v5 + 704) = 0;
  *(v5 + 712) = 4;
  *(v5 + 720) = 0xD000000000000049;
  *(v5 + 728) = 0x800000010011F5A0;
  *(v5 + 736) = 0;
  *(v5 + 744) = 0xE000000000000000;
  v36 = *(v1 + 80);
  AppStorage.projectedValue.getter();
  v37 = *(&v72 + 1);
  v38 = v73;
  *(v5 + 752) = v72;
  *(v5 + 760) = v37;
  *(v5 + 768) = v38;
  *(v5 + 776) = 0u;
  *(v5 + 792) = 0;
  *(v5 + 800) = 0;
  *(v5 + 808) = 0xE000000000000000;
  *(v5 + 816) = 0xD000000000000019;
  *(v5 + 824) = 0x800000010011F5F0;
  v39 = *(v1 + 88);
  AppStorage.projectedValue.getter();
  v40 = *(&v72 + 1);
  v41 = v73;
  *(v5 + 832) = v72;
  *(v5 + 840) = v40;
  *(v5 + 848) = v41;
  *(v5 + 856) = 0u;
  *(v5 + 872) = 0;
  *(v5 + 873) = *v75;
  *(v5 + 876) = *&v75[3];
  *(v5 + 880) = 0;
  *(v5 + 888) = 0xE000000000000000;
  *(v5 + 896) = 0xD00000000000001CLL;
  *(v5 + 904) = 0x800000010011F610;
  v42 = *(v1 + 96);
  AppStorage.projectedValue.getter();
  v43 = v73;
  v44 = v74;
  *(v5 + 912) = v72;
  *(v5 + 928) = v43;
  *(v5 + 936) = v44;
  *(v5 + 944) = &off_100159DB0;
  *(v5 + 952) = 3;
  *(v5 + 953) = *v76;
  *(v5 + 956) = *&v76[3];
  *(v5 + 960) = 0;
  *(v5 + 968) = 0xE000000000000000;
  *(v5 + 976) = 0xD000000000000013;
  *(v5 + 984) = 0x800000010011F630;
  v45 = *(v1 + 104);
  AppStorage.projectedValue.getter();
  v46 = v73;
  v47 = v74;
  *(v5 + 992) = v72;
  *(v5 + 1008) = v46;
  *(v5 + 1016) = v47;
  *(v5 + 1024) = 0;
  *(v5 + 1032) = 2;
  *(v5 + 1033) = *v77;
  *(v5 + 1036) = *&v77[3];
  *(v5 + 1040) = 0xD000000000000014;
  *(v5 + 1048) = 0x800000010011F650;
  *(v5 + 1056) = 0xD000000000000023;
  *(v5 + 1064) = 0x800000010011F670;
  v48 = swift_allocObject();
  v49 = *(v1 + 112);
  v48[7] = *(v1 + 96);
  v48[8] = v49;
  v48[9] = *(v1 + 128);
  v50 = *(v1 + 48);
  v48[3] = *(v1 + 32);
  v48[4] = v50;
  v51 = *(v1 + 80);
  v48[5] = *(v1 + 64);
  v48[6] = v51;
  v52 = *(v1 + 16);
  v48[1] = *v1;
  v48[2] = v52;
  *(v5 + 1072) = sub_1000B7794;
  *(v5 + 1080) = v48;
  *(v5 + 1088) = 0;
  *(v5 + 1096) = 0u;
  *(v5 + 1112) = 1;
  *(v5 + 1113) = *v78;
  *(v5 + 1116) = *&v78[3];
  *(v5 + 1120) = 0;
  *(v5 + 1128) = 0xE000000000000000;
  *(v5 + 1136) = 0xD000000000000025;
  *(v5 + 1144) = 0x800000010011F6A0;
  v53 = *(v1 + 128);
  sub_1000B7070(v1, &v72);
  AppStorage.projectedValue.getter();
  v54 = *(&v72 + 1);
  v55 = v73;
  *(v5 + 1152) = v72;
  *(v5 + 1160) = v54;
  *(v5 + 1168) = v55;
  *(v5 + 1176) = 0u;
  *(v5 + 1192) = 0;
  *(v5 + 1193) = *v79;
  *(v5 + 1196) = *&v79[3];
  *(v5 + 1200) = 0;
  *(v5 + 1208) = 0xE000000000000000;
  *(v5 + 1216) = 0xD00000000000001ELL;
  *(v5 + 1224) = 0x800000010011F6D0;
  v56 = *(v1 + 112);
  AppStorage.projectedValue.getter();
  v57 = *(&v72 + 1);
  v58 = v73;
  *(v5 + 1232) = v72;
  *(v5 + 1240) = v57;
  *(v5 + 1248) = v58;
  *(v5 + 1256) = 0u;
  *(v5 + 1272) = 0;
  *(v5 + 1273) = *v80;
  *(v5 + 1276) = *&v80[3];
  *(v5 + 1280) = 0;
  *(v5 + 1288) = 0xE000000000000000;
  *(v5 + 1296) = 0xD00000000000001DLL;
  *(v5 + 1304) = 0x800000010011F6F0;
  v59 = swift_allocObject();
  v60 = *(v1 + 112);
  v59[7] = *(v1 + 96);
  v59[8] = v60;
  v59[9] = *(v1 + 128);
  v61 = *(v1 + 48);
  v59[3] = *(v1 + 32);
  v59[4] = v61;
  v62 = *(v1 + 80);
  v59[5] = *(v1 + 64);
  v59[6] = v62;
  v63 = *(v1 + 16);
  v59[1] = *v1;
  v59[2] = v63;
  *(v5 + 1312) = sub_1000B779C;
  *(v5 + 1320) = v59;
  *(v5 + 1328) = 0;
  *(v5 + 1344) = 0;
  *(v5 + 1336) = 0;
  *(v5 + 1352) = 1;
  *(v5 + 1353) = v81[0];
  *(v5 + 1356) = *(v81 + 3);
  *(v5 + 1360) = 0;
  *(v5 + 1368) = 0xE000000000000000;
  *(v5 + 1376) = 0xD000000000000022;
  *(v5 + 1384) = 0x800000010011F710;
  v64 = swift_allocObject();
  v65 = *(v1 + 112);
  v64[7] = *(v1 + 96);
  v64[8] = v65;
  v64[9] = *(v1 + 128);
  v66 = *(v1 + 48);
  v64[3] = *(v1 + 32);
  v64[4] = v66;
  v67 = *(v1 + 80);
  v64[5] = *(v1 + 64);
  v64[6] = v67;
  v68 = *(v1 + 16);
  v64[1] = *v1;
  v64[2] = v68;
  *(v5 + 1392) = sub_1000B784C;
  *(v5 + 1400) = v64;
  *(v5 + 1408) = 0;
  *(v5 + 1424) = 0;
  *(v5 + 1416) = 0;
  *(v5 + 1432) = 1;
  *(v5 + 1433) = v70;
  *(v5 + 1436) = *(&v70 + 3);
  *(v5 + 1440) = 0;
  *(v5 + 1448) = 0xE000000000000000;
  *(v5 + 1456) = 0xD000000000000017;
  *(v5 + 1464) = 0x800000010011F740;
  sub_1000B7070(v1, &v72);
  sub_1000B7070(v1, &v72);
  return v5;
}

uint64_t sub_1000B20FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v36 = type metadata accessor for GroupedListStyle();
  v38 = *(v36 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v36);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002BE4(&qword_10016F4D8, &qword_100116950);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  v37 = sub_100002BE4(&qword_10016F4E0, &qword_100116958);
  v11 = *(v37 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v37);
  v14 = &v34 - v13;
  v15 = sub_100002BE4(&qword_10016F4E8, &qword_100116960);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v35 = &v34 - v18;
  v40 = v2;
  sub_100002BE4(&qword_10016F4F0, &qword_100116968);
  sub_1000B6CD0();
  List<>.init(content:)();
  GroupedListStyle.init()();
  sub_100012C48(&qword_10016F560, &qword_10016F4D8, &qword_100116950);
  v19 = v36;
  View.listStyle<A>(_:)();
  (*(v38 + 8))(v5, v19);
  (*(v7 + 8))(v10, v6);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v20 = v35;
  (*(v11 + 32))(v35, v14, v37);
  v21 = (v20 + *(v16 + 44));
  v22 = v41[14];
  v21[4] = v41[13];
  v21[5] = v22;
  v21[6] = v41[15];
  v23 = v41[10];
  *v21 = v41[9];
  v21[1] = v23;
  v24 = v41[12];
  v21[2] = v41[11];
  v21[3] = v24;
  v25 = swift_allocObject();
  v26 = v2[7];
  v25[7] = v2[6];
  v25[8] = v26;
  v25[9] = v2[8];
  v27 = v2[3];
  v25[3] = v2[2];
  v25[4] = v27;
  v28 = v2[5];
  v25[5] = v2[4];
  v25[6] = v28;
  v29 = v2[1];
  v25[1] = *v2;
  v25[2] = v29;
  v30 = sub_100002BE4(&qword_10016F568, &qword_1001169B0);
  v31 = v39;
  v32 = (v39 + *(v30 + 36));
  LODWORD(v7) = *(type metadata accessor for _TaskModifier() + 20);
  sub_1000B7070(v2, v41);
  static TaskPriority.userInitiated.getter();
  *v32 = &unk_1001169A8;
  v32[1] = v25;
  return sub_1000B70A8(v20, v31);
}

uint64_t sub_1000B2534(_OWORD *a1)
{
  sub_100002BE4(&qword_10016F580, &qword_1001169D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010FEE0;
  *(inited + 32) = 2;
  *(inited + 40) = sub_1000B1668();
  *(inited + 48) = 1;
  v14 = a1[1];
  sub_100002BE4(&qword_10016F570, &unk_1001169C0);
  State.wrappedValue.getter();
  *(inited + 56) = v15;
  v3 = sub_10000BE60(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_10016F588, &qword_1001169E0);
  swift_arrayDestroy();
  v4 = *(v3 + 16);
  if (!v4)
  {

    v5 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v5 = sub_1000B5AD8(v4, 0);
  v6 = sub_100009A64(&v14, (v5 + 4), v4, v3);

  sub_1000151D4();
  if (v6 == v4)
  {

LABEL_5:
    *&v14 = v5;
    sub_1000B5B5C(&v14);
    v15 = v14;
    swift_getKeyPath();
    v7 = swift_allocObject();
    v8 = a1[7];
    v7[7] = a1[6];
    v7[8] = v8;
    v7[9] = a1[8];
    v9 = a1[3];
    v7[3] = a1[2];
    v7[4] = v9;
    v10 = a1[5];
    v7[5] = a1[4];
    v7[6] = v10;
    v11 = a1[1];
    v7[1] = *a1;
    v7[2] = v11;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1000B7118;
    *(v12 + 24) = v7;
    sub_1000B7070(a1, &v14);
    sub_100002BE4(&qword_10016F590, &qword_100116A08);
    sub_100002BE4(&qword_10016F508, &qword_100116970);
    sub_100012C48(&qword_10016F598, &qword_10016F590, &qword_100116A08);
    sub_1000B7188();
    sub_1000B6D54();
    return ForEach<>.init(_:id:content:)();
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000B2824(char *a1, char *a2)
{
  if (qword_100116C98[*a1] == qword_100116C98[*a2])
  {
    v2 = 0;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1000B2894@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100002BE4(&qword_10016F518, &qword_100116978);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  if (*(a2 + 16) && (v20 = v10, v13 = sub_1000B2AD0(a1), v10 = v20, (v13 & 1) != 0))
  {
    v21 = qword_100116C98[a1];
    v22 = 0xE300000000000000;
    sub_100012928();
    v21 = Text.init<A>(_:)();
    v22 = v14;
    v23 = v15 & 1;
    v24 = v16;
    __chkstk_darwin(v21);
    *(&v19 - 32) = a1;
    *(&v19 - 3) = a3;
    *(&v19 - 2) = a2;
    sub_100002BE4(&qword_10016F528, &qword_100116980);
    sub_1000B6E70();
    Section<>.init(header:content:)();
    (*(v20 + 32))(a4, v12, v8);
    return (*(v20 + 56))(a4, 0, 1, v8);
  }

  else
  {
    v18 = *(v10 + 56);

    return v18(a4, 1, 1, v8);
  }
}

uint64_t sub_1000B2AD0(char a1)
{
  v2 = *(v1 + 56);
  if (!*(v1 + 56))
  {

    return 1;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    return 1;
  }

  v5 = v2 == 2 ? 7368769 : 7628106;
  if (a1)
  {
    v6 = a1 == 1 ? 7628106 : 7368769;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000B2BB8@<X0>(char a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100002BE4(&qword_10016F548, &qword_100116990);
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = v28 - v10;
  v30 = sub_100002BE4(&qword_10016F5A8, &qword_100116A10);
  v12 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v14 = v28 - v13;
  v15 = sub_100002BE4(&qword_10016F538, &qword_100116988);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v28 - v18;
  if (a1 == 1)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v31[0] = a2[2];
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.getter();
  if (v32 == 1)
  {
    LocalizedStringKey.init(stringLiteral:)();
    ProgressView<>.init<>(_:)();
    (*(v16 + 16))(v14, v19, v15);
    swift_storeEnumTagMultiPayload();
    sub_100012C48(&qword_10016F530, &qword_10016F538, &qword_100116988);
    sub_1000B6F28();
    _ConditionalContent<>.init(storage:)();
    return (*(v16 + 8))(v19, v15);
  }

LABEL_6:
  v32 = a3;
  v28[3] = swift_getKeyPath();
  v22 = swift_allocObject();
  v23 = a2[7];
  v22[7] = a2[6];
  v22[8] = v23;
  v22[9] = a2[8];
  v24 = a2[3];
  v22[3] = a2[2];
  v22[4] = v24;
  v25 = a2[5];
  v22[5] = a2[4];
  v22[6] = v25;
  v26 = a2[1];
  v22[1] = *a2;
  v22[2] = v26;

  sub_1000B7070(a2, v31);
  sub_100002BE4(&qword_10016F4D0, &qword_100116760);
  v28[2] = v15;
  sub_100002BE4(&qword_10016F558, &qword_100116998);
  v28[1] = a4;
  sub_100012C48(&qword_10016F5B0, &qword_10016F4D0, &qword_100116760);
  sub_100012C48(&qword_10016F550, &qword_10016F558, &qword_100116998);
  ForEach<>.init(_:id:content:)();
  v27 = v29;
  (*(v29 + 16))(v14, v11, v8);
  swift_storeEnumTagMultiPayload();
  sub_100012C48(&qword_10016F530, &qword_10016F538, &qword_100116988);
  sub_1000B6F28();
  _ConditionalContent<>.init(storage:)();
  return (*(v27 + 8))(v11, v8);
}

uint64_t sub_1000B30B4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v7[4] = a1[4];
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_100002BE4(&qword_10016F5B8, &qword_100116A38);
  return sub_1000B4040(v7, a2 + *(v5 + 44));
}

uint64_t sub_1000B3128(uint64_t a1)
{
  v1[7] = a1;
  v1[8] = type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v1[10] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = sub_1000B31E0;

  return sub_1000B3488();
}

uint64_t sub_1000B31E0(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 96) = a1;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B3324, v6, v5);
}

uint64_t sub_1000B3324()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);

  *(v0 + 16) = *(v5 + 16);
  *(v0 + 48) = v1;
  sub_100002BE4(&qword_10016F570, &unk_1001169C0);
  State.wrappedValue.setter();
  *(v0 + 32) = *(v5 + 32);
  *(v0 + 104) = 0;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.setter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B3428, v7, v6);
}

uint64_t sub_1000B3428()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000B3488()
{
  v1[10] = v0;
  v2 = type metadata accessor for Bag();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = type metadata accessor for InMemoryJetPackResourceBundle();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v9;
  v1[19] = v8;

  return _swift_task_switch(sub_1000B35D8, v9, v8);
}

uint64_t sub_1000B35D8()
{
  v1 = *(v0[10] + 48);
  v0[20] = v1;
  if (v1)
  {
    v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];

    v3 = swift_task_alloc();
    v0[21] = v3;
    *v3 = v0;
    v3[1] = sub_1000B36E8;
    v4 = v0[16];
    v5 = v0[14];

    return BaseObjectGraph.inject<A>(_:)(v4, v5, v5);
  }

  else
  {
    v6 = v0[17];

    v7 = v0[16];
    v8 = v0[13];

    v9 = v0[1];

    return v9(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000B36E8()
{
  v2 = *(*v1 + 168);
  v3 = *v1;
  v3[22] = v0;

  if (v0)
  {
    v4 = v3[18];
    v5 = v3[19];

    return _swift_task_switch(sub_1000B3C74, v4, v5);
  }

  else
  {
    v6 = v3[20];
    v7 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
    v8 = swift_task_alloc();
    v3[23] = v8;
    *v8 = v3;
    v8[1] = sub_1000B3864;
    v9 = v3[13];
    v10 = v3[11];

    return BaseObjectGraph.inject<A>(_:)(v9, v10, v10);
  }
}

uint64_t sub_1000B3864()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_1000B3E4C;
  }

  else
  {
    v7 = sub_1000B39A0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000B39A0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v28 = *(v0 + 88);
  v29 = *(v0 + 160);
  v26 = *(v0 + 80);
  v27 = *(v0 + 128);

  sub_100002BE4(&qword_10016F578, &qword_1001169D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100110A60;
  v7 = JetPackResourceBundle.version.getter();
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  v9 = 0x6E776F6E6B6E55;
  if (v8)
  {
    v9 = v7;
  }

  *(v6 + 64) = 0;
  v10 = 0xE700000000000000;
  if (v8)
  {
    v10 = v8;
  }

  *(v6 + 72) = 4;
  *(v6 + 80) = v9;
  *(v6 + 88) = v10;
  *(v6 + 96) = 0x206B63617074654ALL;
  *(v6 + 104) = 0xEF6E6F6973726556;
  v11 = [Bag.amsBag.getter() profile];
  swift_unknownObjectRelease();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v6 + 144) = 0;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 152) = 4;
  *(v6 + 160) = v12;
  *(v6 + 168) = v14;
  *(v6 + 176) = 0x666F725020676142;
  *(v6 + 184) = 0xEB00000000656C69;
  v15 = [Bag.amsBag.getter() profileVersion];
  swift_unknownObjectRelease();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(v6 + 224) = 0;
  *(v6 + 192) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 232) = 4;
  *(v6 + 240) = v16;
  *(v6 + 248) = v18;
  *(v6 + 256) = 0x7372655620676142;
  *(v6 + 264) = 0xEB000000006E6F69;
  v19 = *(v26 + 72);
  AppStorage.projectedValue.getter();
  v20 = *(v0 + 64);
  v21 = *(v0 + 72);
  *(v6 + 272) = *(v0 + 48);
  *(v6 + 288) = v20;
  *(v6 + 296) = v21;
  *(v6 + 304) = &off_100159F90;
  *(v6 + 312) = 3;
  *(v6 + 320) = 0;
  *(v6 + 328) = 0xE000000000000000;
  strcpy((v6 + 336), "Jetpack Source");
  *(v6 + 351) = -18;

  (*(v5 + 8))(v4, v28);
  (*(v3 + 8))(v27, v2);
  v22 = *(v0 + 128);
  v23 = *(v0 + 104);

  v24 = *(v0 + 8);

  return v24(v6);
}

uint64_t sub_1000B3C74()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 80);
  sub_100002BE4(&qword_10016F578, &qword_1001169D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100110A60;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0;
  *(v5 + 72) = 4;
  *(v5 + 80) = 0x6E776F6E6B6E55;
  *(v5 + 88) = 0xE700000000000000;
  *(v5 + 96) = 0x206B63617074654ALL;
  *(v5 + 104) = 0xEF6E6F6973726556;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0;
  *(v5 + 152) = 4;
  *(v5 + 160) = 0x6E776F6E6B6E55;
  *(v5 + 168) = 0xE700000000000000;
  *(v5 + 176) = 0x666F725020676142;
  *(v5 + 184) = 0xEB00000000656C69;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0;
  *(v5 + 232) = 4;
  *(v5 + 240) = 0x6E776F6E6B6E55;
  *(v5 + 248) = 0xE700000000000000;
  *(v5 + 256) = 0x7372655620676142;
  *(v5 + 264) = 0xEB000000006E6F69;
  v6 = *(v4 + 72);
  AppStorage.projectedValue.getter();
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  *(v5 + 272) = *(v0 + 16);
  *(v5 + 288) = v7;
  *(v5 + 296) = v8;
  *(v5 + 304) = &off_100159F90;
  *(v5 + 312) = 3;
  *(v5 + 320) = 0;
  *(v5 + 328) = 0xE000000000000000;
  strcpy((v5 + 336), "Jetpack Source");
  *(v5 + 351) = -18;

  v9 = *(v0 + 128);
  v10 = *(v0 + 104);

  v11 = *(v0 + 8);

  return v11(v5);
}

uint64_t sub_1000B3E4C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 192);
  v6 = *(v0 + 160);
  v7 = *(v0 + 80);
  sub_100002BE4(&qword_10016F578, &qword_1001169D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100110A60;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0;
  *(v8 + 72) = 4;
  *(v8 + 80) = 0x6E776F6E6B6E55;
  *(v8 + 88) = 0xE700000000000000;
  *(v8 + 96) = 0x206B63617074654ALL;
  *(v8 + 104) = 0xEF6E6F6973726556;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 144) = 0;
  *(v8 + 152) = 4;
  *(v8 + 160) = 0x6E776F6E6B6E55;
  *(v8 + 168) = 0xE700000000000000;
  *(v8 + 176) = 0x666F725020676142;
  *(v8 + 184) = 0xEB00000000656C69;
  *(v8 + 192) = 0u;
  *(v8 + 208) = 0u;
  *(v8 + 224) = 0;
  *(v8 + 232) = 4;
  *(v8 + 240) = 0x6E776F6E6B6E55;
  *(v8 + 248) = 0xE700000000000000;
  *(v8 + 256) = 0x7372655620676142;
  *(v8 + 264) = 0xEB000000006E6F69;
  v9 = *(v7 + 72);
  AppStorage.projectedValue.getter();
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  *(v8 + 272) = *(v0 + 16);
  *(v8 + 288) = v10;
  *(v8 + 296) = v11;
  *(v8 + 304) = &off_100159F90;
  *(v8 + 312) = 3;
  *(v8 + 320) = 0;
  *(v8 + 328) = 0xE000000000000000;
  strcpy((v8 + 336), "Jetpack Source");
  *(v8 + 351) = -18;

  v12 = *(v0 + 128);
  v13 = *(v0 + 104);

  v14 = *(v0 + 8);

  return v14(v8);
}

uint64_t sub_1000B4040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v128 = sub_100002BE4(&qword_10016F5C0, &unk_100116A40);
  v101 = *(v128 - 8);
  v3 = *(v101 + 64);
  __chkstk_darwin(v128);
  v100 = &v95 - v4;
  v113 = sub_100002BE4(&qword_10016C560, &qword_100112708);
  v102 = *(v113 - 8);
  v5 = *(v102 + 64);
  __chkstk_darwin(v113);
  v110 = &v95 - v6;
  v107 = sub_100002BE4(&qword_10016F5C8, &qword_100116A50);
  v7 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v108 = &v95 - v8;
  v117 = sub_100002BE4(&qword_10016F5D0, &qword_100116A58);
  v9 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v111 = &v95 - v10;
  v112 = sub_100002BE4(&qword_10016A088, &unk_100116A60);
  v104 = *(v112 - 8);
  v11 = *(v104 + 64);
  __chkstk_darwin(v112);
  v13 = &v95 - v12;
  v109 = sub_100002BE4(&qword_10016C5F8, &qword_100112958);
  v103 = *(v109 - 8);
  v14 = *(v103 + 64);
  __chkstk_darwin(v109);
  v16 = &v95 - v15;
  v121 = sub_100002BE4(&qword_10016F5D8, &qword_100116A70);
  v17 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v123 = &v95 - v18;
  v114 = sub_100002BE4(&qword_10016F5E0, &qword_100116A78);
  v19 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v116 = &v95 - v20;
  v105 = sub_100002BE4(&qword_10016F5E8, &qword_100116A80);
  v21 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v23 = &v95 - v22;
  v115 = sub_100002BE4(&qword_10016F5F0, &qword_100116A88);
  v24 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v106 = &v95 - v25;
  v122 = sub_100002BE4(&qword_10016F5F8, &qword_100116A90);
  v26 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122);
  v118 = &v95 - v27;
  v28 = sub_100002BE4(&qword_10016F600, &qword_100116A98);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v127 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v126 = &v95 - v32;
  v33 = *(a1 + 72);
  *&v131 = *(a1 + 64);
  *(&v131 + 1) = v33;
  sub_100012928();

  v34 = Text.init<A>(_:)();
  v36 = v35;
  v38 = v37;
  static Font.Weight.bold.getter();
  v124 = Text.fontWeight(_:)();
  v120 = v39;
  v119 = v40;
  v125 = v41;
  sub_10001297C(v34, v36, v38 & 1);

  v44 = *a1;
  v43 = *(a1 + 8);
  v46 = *(a1 + 16);
  v45 = *(a1 + 24);
  v47 = *(a1 + 32);
  v48 = *(a1 + 40);
  if (v48 <= 1)
  {
    v55 = v103;
    v56 = v104;
    if (*(a1 + 40))
    {
      v81 = *(a1 + 8);
      v99 = *(a1 + 24);
      v82 = v99;
      v83 = swift_allocObject();
      v110 = &v95;
      *(v83 + 16) = v44;
      *(v83 + 24) = v81;
      __chkstk_darwin(v83);
      v98 = v81;
      sub_1000B71F8(v44, v81, v46, v82, v47, 1u);

      v97 = v13;
      Button.init(action:label:)();
      (*(v56 + 16))(v108, v13, v112);
      swift_storeEnumTagMultiPayload();
      sub_100012C48(&qword_10016A098, &qword_10016A088, &unk_100116A60);
      sub_100012C48(&qword_10016C598, &qword_10016C560, &qword_100112708);
      v84 = v111;
      _ConditionalContent<>.init(storage:)();
      sub_10000C178(v84, v116, &qword_10016F5D0, &qword_100116A58);
      swift_storeEnumTagMultiPayload();
      sub_1000B741C();
      sub_1000B74D4();
      v85 = v118;
      _ConditionalContent<>.init(storage:)();
      sub_100009908(v84, &qword_10016F5D0, &qword_100116A58);
      sub_10000C178(v85, v123, &qword_10016F5F8, &qword_100116A90);
      swift_storeEnumTagMultiPayload();
      sub_1000B7390();
      sub_100012C48(&qword_10016F630, &qword_10016F5C0, &unk_100116A40);
      v86 = v44;
      v54 = v126;
      _ConditionalContent<>.init(storage:)();
      sub_1000B76D4(v86, v98, v46, v99, v47, 1u);
      sub_100009908(v85, &qword_10016F5F8, &qword_100116A90);
      (*(v56 + 8))(v97, v112);
    }

    else
    {
      __chkstk_darwin(v42);
      sub_1000B71F8(v44, v58, v46, v57, v47, 0);

      v96 = v16;
      Toggle.init(isOn:label:)();
      v59 = v109;
      (*(v55 + 16))(v23, v16, v109);
      swift_storeEnumTagMultiPayload();
      sub_100012C48(&qword_10016C628, &qword_10016C5F8, &qword_100112958);
      v60 = v106;
      _ConditionalContent<>.init(storage:)();
      sub_10000C178(v60, v116, &qword_10016F5F0, &qword_100116A88);
      swift_storeEnumTagMultiPayload();
      sub_1000B741C();
      sub_1000B74D4();
      v61 = v118;
      _ConditionalContent<>.init(storage:)();
      sub_100009908(v60, &qword_10016F5F0, &qword_100116A88);
      sub_10000C178(v61, v123, &qword_10016F5F8, &qword_100116A90);
      swift_storeEnumTagMultiPayload();
      sub_1000B7390();
      sub_100012C48(&qword_10016F630, &qword_10016F5C0, &unk_100116A40);
      v54 = v126;
      _ConditionalContent<>.init(storage:)();

      sub_100009908(v61, &qword_10016F5F8, &qword_100116A90);
      (*(v55 + 8))(v96, v59);
    }
  }

  else if (v48 == 2)
  {
    v131 = *(a1 + 48);
    v135 = *(a1 + 48);
    sub_1000B71F8(v44, v43, v46, v45, v47, 2u);
    sub_1000499D4(&v131, &v134);

    v62 = v110;
    TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
    v63 = v102;
    (*(v102 + 16))(v108, v62, v113);
    swift_storeEnumTagMultiPayload();
    sub_100012C48(&qword_10016A098, &qword_10016A088, &unk_100116A60);
    sub_100012C48(&qword_10016C598, &qword_10016C560, &qword_100112708);
    v64 = v111;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v64, v116, &qword_10016F5D0, &qword_100116A58);
    swift_storeEnumTagMultiPayload();
    sub_1000B741C();
    sub_1000B74D4();
    v65 = v118;
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v64, &qword_10016F5D0, &qword_100116A58);
    sub_10000C178(v65, v123, &qword_10016F5F8, &qword_100116A90);
    swift_storeEnumTagMultiPayload();
    sub_1000B7390();
    sub_100012C48(&qword_10016F630, &qword_10016F5C0, &unk_100116A40);
    v54 = v126;
    _ConditionalContent<>.init(storage:)();

    sub_100009908(v65, &qword_10016F5F8, &qword_100116A90);
    (*(v63 + 8))(v110, v113);
  }

  else if (v48 == 3)
  {
    v135 = *(a1 + 48);
    v134 = *(a1 + 48);
    *&v131 = v44;
    *(&v131 + 1) = v43;
    v132 = v46;
    v133 = v45;
    __chkstk_darwin(v42);
    sub_1000B71F8(v44, v50, v46, v49, v47, 3u);
    sub_1000499D4(&v135, v130);

    sub_100002BE4(&qword_10016F608, &qword_100116AA0);
    sub_1000B72C8();
    v51 = v100;
    Picker<>.init<A>(_:selection:content:)();

    v52 = v101;
    v53 = v128;
    (*(v101 + 16))(v123, v51, v128);
    swift_storeEnumTagMultiPayload();
    sub_1000B7390();
    sub_100012C48(&qword_10016F630, &qword_10016F5C0, &unk_100116A40);
    v54 = v126;
    _ConditionalContent<>.init(storage:)();

    (*(v52 + 8))(v51, v53);
  }

  else
  {
    v66 = *(a1 + 56);
    *&v131 = *(a1 + 48);
    *(&v131 + 1) = v66;

    v67 = Text.init<A>(_:)();
    v69 = v68;
    v71 = v70;
    static Font.Weight.light.getter();
    v72 = Text.fontWeight(_:)();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    sub_10001297C(v67, v69, v71 & 1);

    *v23 = v72;
    *(v23 + 1) = v74;
    v23[16] = v76 & 1;
    *(v23 + 3) = v78;
    swift_storeEnumTagMultiPayload();
    sub_100003AE4(v72, v74, v76 & 1);
    sub_100012C48(&qword_10016C628, &qword_10016C5F8, &qword_100112958);

    v79 = v106;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v79, v116, &qword_10016F5F0, &qword_100116A88);
    swift_storeEnumTagMultiPayload();
    sub_1000B741C();
    sub_1000B74D4();
    v80 = v118;
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v79, &qword_10016F5F0, &qword_100116A88);
    sub_10000C178(v80, v123, &qword_10016F5F8, &qword_100116A90);
    swift_storeEnumTagMultiPayload();
    sub_1000B7390();
    sub_100012C48(&qword_10016F630, &qword_10016F5C0, &unk_100116A40);
    v54 = v126;
    _ConditionalContent<>.init(storage:)();
    sub_10001297C(v72, v74, v76 & 1);

    sub_100009908(v80, &qword_10016F5F8, &qword_100116A90);
  }

  v87 = v129;
  v88 = v127;
  v90 = v124;
  v89 = v125;
  sub_1000B75B8(v54, v127);
  v91 = v120;
  *v87 = v90;
  *(v87 + 8) = v91;
  v92 = v119 & 1;
  *(v87 + 16) = v119 & 1;
  *(v87 + 24) = v89;
  *(v87 + 32) = 0;
  *(v87 + 40) = 1;
  v93 = sub_100002BE4(&qword_10016F638, &qword_100116AA8);
  sub_1000B75B8(v88, v87 + *(v93 + 64));
  sub_100003AE4(v90, v91, v92);

  sub_1000B7628(v54);
  sub_1000B7628(v88);
  sub_10001297C(v90, v91, v92);
}

uint64_t sub_1000B542C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  sub_100012928();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1000B5498()
{
  swift_getKeyPath();

  sub_100002BE4(&qword_10016F640, &qword_100116AD0);
  sub_100002BE4(&qword_10016F648, &qword_100116AD8);
  sub_100012C48(&qword_10016F650, &qword_10016F640, &qword_100116AD0);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000B55D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v9 = *a1;
  v10 = a1[1];
  sub_100012928();

  *a2 = Text.init<A>(_:)();
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = 1;
}

uint64_t sub_1000B5664@<X0>(uint64_t a1@<X8>)
{
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_1000B20FC(a1);
}

void sub_1000B56B8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.privacyViewVersion.getter();
  v1 = String._bridgeToObjectiveC()();

  [v0 removeObjectForKey:v1];
}

void sub_1000B5744()
{
  v0 = static UserDefaultUtilities.tetsuoNotificationsUserDefaults.getter();
  if (v0)
  {
    v1 = v0;
    static UserDefaultUtilities.SharedConstants.getLatestNewsKey.getter();
    v2 = String._bridgeToObjectiveC()();

    [v1 removeObjectForKey:v2];
  }

  v3 = static UserDefaultUtilities.tetsuoNotificationsUserDefaults.getter();
  if (v3)
  {
    v4 = v3;
    static UserDefaultUtilities.SharedConstants.isRestrictedGeoKey.getter();
    v5 = String._bridgeToObjectiveC()();

    [v4 removeObjectForKey:v5];
  }
}

uint64_t sub_1000B5810()
{
  v0 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_1000EE5F8(0, 0, v3, &unk_100116AF8, v6);
}

void sub_1000B591C()
{
  v0 = static UserDefaultUtilities.daemonUserDefaults.getter();
  if (v0)
  {
    v1 = v0;
    static UserDefaultUtilities.SharedConstants.visioncompaniondHasInstalledTetsuoKey.getter();
    v2 = String._bridgeToObjectiveC()();

    [v1 removeObjectForKey:v2];
  }
}

uint64_t sub_1000B59A0()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100079BE8;

  return sub_10002E5B0(_swiftEmptyArrayStorage);
}

void *sub_1000B5A64(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100002BE4(&qword_10016BBE0, &qword_100111120);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1000B5AD8(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100002BE4(&qword_10016BBD0, &unk_100111110);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

Swift::Int sub_1000B5B5C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000B67F4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1000B5BC8(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1000B5BC8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100002BE4(&qword_10016BBD8, &unk_100116AE0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000B5DE4(v7, v8, a1, v4);
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
    return sub_1000B5CD0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000B5CD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 16 * a3 - 16;
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + 16 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      if (qword_100116C98[v8] == qword_100116C98[*v10])
      {
        result = swift_bridgeObjectRelease_n();
LABEL_5:
        ++v4;
        v6 += 16;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = swift_bridgeObjectRelease_n();
      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v8 = v10[16];
      v12 = *(v10 + 3);
      *(v10 + 1) = *v10;
      *v10 = v8;
      *(v10 + 1) = v12;
      v10 -= 16;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000B5DE4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v91 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_96:
    v10 = *v91;
    if (!*v91)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v4 = a3;
    if ((result & 1) == 0)
    {
LABEL_129:
      result = sub_1000B67CC(v9);
      v9 = result;
    }

    v99 = v9;
    v84 = *(v9 + 2);
    if (v84 >= 2)
    {
      while (1)
      {
        v85 = *v4;
        if (!*v4)
        {
          goto LABEL_133;
        }

        v4 = *&v9[16 * v84];
        v86 = *&v9[16 * v84 + 24];
        sub_1000B64AC((v85 + 16 * v4), (v85 + 16 * *&v9[16 * v84 + 16]), (v85 + 16 * v86), v10);
        if (v6)
        {
        }

        if (v86 < v4)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000B67CC(v9);
        }

        if (v84 - 2 >= *(v9 + 2))
        {
          goto LABEL_123;
        }

        v87 = &v9[16 * v84];
        *v87 = v4;
        v87[1] = v86;
        v99 = v9;
        result = sub_1000B6740(v84 - 1);
        v9 = v99;
        v84 = *(v99 + 2);
        v4 = a3;
        if (v84 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if (v11 >= v7)
    {
      v7 = v11;
      goto LABEL_25;
    }

    v12 = *a3;
    v13 = *a3 + 16 * v11;
    v14 = *(v13 + 8);
    v97[0] = *v13;
    v98 = v14;
    v15 = v12 + 16 * v10;
    v16 = *(v15 + 8);
    v95[0] = *v15;
    v96 = v16;

    v17 = sub_1000B2824(v97, v95);
    if (v6)
    {
    }

    v18 = v17;

    v19 = (v10 + 2);
    v20 = v10;
    v10 *= 16;
    v4 = v12 + v10 + 32;
    while (v7 != v19)
    {
      if (qword_100116C98[*v4] == qword_100116C98[*(v4 - 16)])
      {
        v21 = 0;
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      result = swift_bridgeObjectRelease_n();
      ++v19;
      v4 += 16;
      if ((v18 ^ v21))
      {
        v7 = (v19 - 1);
        break;
      }
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_23;
    }

    if (v7 < v20)
    {
      goto LABEL_128;
    }

    v22 = v20;
    if (v20 < v7)
    {
      v23 = 0;
      v24 = 16 * v7;
      do
      {
        if (v22 != (v7 + v23 - 1))
        {
          v29 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v25 = (v29 + v10);
          v26 = v29 + v24;
          v27 = *v25;
          v28 = *(v25 + 1);
          *v25 = *(v26 - 16);
          *(v26 - 16) = v27;
          *(v26 - 8) = v28;
        }

        ++v22;
        --v23;
        v24 -= 16;
        v10 += 16;
      }

      while (v22 < v7 + v23);
LABEL_23:
      v10 = v20;
      goto LABEL_25;
    }

    v10 = v20;
LABEL_25:
    v30 = a3[1];
    if (v7 >= v30)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v7, v10))
    {
      goto LABEL_125;
    }

    if (v7 - v10 >= a4)
    {
LABEL_33:
      v31 = v7;
      goto LABEL_34;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_126;
    }

    if (v10 + a4 < v30)
    {
      v30 = (v10 + a4);
    }

    if (v30 < v10)
    {
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v7 == v30)
    {
      goto LABEL_33;
    }

    v93 = v30;
    v88 = v10;
    v89 = v6;
    v76 = *a3;
    v77 = *a3 + 16 * v7 - 16;
    v78 = (v10 - v7);
LABEL_87:
    v79 = *(v76 + 16 * v7);
    v80 = v78;
    v4 = v77;
LABEL_88:
    if (qword_100116C98[v79] != qword_100116C98[*v4])
    {
      break;
    }

    swift_bridgeObjectRelease_n();
LABEL_86:
    ++v7;
    v77 += 16;
    --v78;
    if (v7 != v93)
    {
      goto LABEL_87;
    }

    v10 = v88;
    v6 = v89;
    v31 = v93;
LABEL_34:
    if (v31 < v10)
    {
      goto LABEL_124;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100008E84(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v4 = *(v9 + 2);
    v32 = *(v9 + 3);
    v33 = v4 + 1;
    if (v4 >= v32 >> 1)
    {
      result = sub_100008E84((v32 > 1), v4 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v33;
    v34 = &v9[16 * v4];
    *(v34 + 4) = v10;
    *(v34 + 5) = v31;
    v35 = *v91;
    if (!*v91)
    {
      goto LABEL_134;
    }

    v92 = v31;
    if (v4)
    {
      while (2)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          v41 = &v9[16 * v33 + 32];
          v42 = *(v41 - 64);
          v43 = *(v41 - 56);
          v47 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          if (v47)
          {
            goto LABEL_111;
          }

          v46 = *(v41 - 48);
          v45 = *(v41 - 40);
          v47 = __OFSUB__(v45, v46);
          v39 = v45 - v46;
          v40 = v47;
          if (v47)
          {
            goto LABEL_112;
          }

          v48 = &v9[16 * v33];
          v50 = *v48;
          v49 = *(v48 + 1);
          v47 = __OFSUB__(v49, v50);
          v51 = v49 - v50;
          if (v47)
          {
            goto LABEL_114;
          }

          v47 = __OFADD__(v39, v51);
          v52 = v39 + v51;
          if (v47)
          {
            goto LABEL_117;
          }

          if (v52 >= v44)
          {
            v70 = &v9[16 * v36 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v47 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v47)
            {
              goto LABEL_121;
            }

            if (v39 < v73)
            {
              v36 = v33 - 2;
            }
          }

          else
          {
LABEL_54:
            if (v40)
            {
              goto LABEL_113;
            }

            v53 = &v9[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_116;
            }

            v59 = &v9[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_120;
            }

            if (v57 + v62 < v39)
            {
              goto LABEL_68;
            }

            if (v39 < v62)
            {
              v36 = v33 - 2;
            }
          }
        }

        else
        {
          if (v33 == 3)
          {
            v37 = *(v9 + 4);
            v38 = *(v9 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
            goto LABEL_54;
          }

          v63 = &v9[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_68:
          if (v58)
          {
            goto LABEL_115;
          }

          v66 = &v9[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_118;
          }

          if (v69 < v57)
          {
            break;
          }
        }

        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v4 = *&v9[16 * v74 + 32];
        v10 = *&v9[16 * v36 + 40];
        sub_1000B64AC((*a3 + 16 * v4), (*a3 + 16 * *&v9[16 * v36 + 32]), (*a3 + 16 * v10), v35);
        if (v6)
        {
        }

        if (v10 < v4)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000B67CC(v9);
        }

        if (v74 >= *(v9 + 2))
        {
          goto LABEL_110;
        }

        v75 = &v9[16 * v74];
        *(v75 + 4) = v4;
        *(v75 + 5) = v10;
        v99 = v9;
        result = sub_1000B6740(v36);
        v9 = v99;
        v33 = *(v99 + 2);
        if (v33 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    v8 = v92;
    if (v92 >= v7)
    {
      goto LABEL_96;
    }
  }

  v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = swift_bridgeObjectRelease_n();
  if ((v81 & 1) == 0)
  {
    goto LABEL_86;
  }

  if (v76)
  {
    v79 = *(v4 + 16);
    v82 = *(v4 + 24);
    *(v4 + 16) = *v4;
    *v4 = v79;
    *(v4 + 8) = v82;
    v4 -= 16;
    if (__CFADD__(v80++, 1))
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}