uint64_t sub_1000B64AC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __src || &__src[16 * v13] <= a4)
    {
      memmove(a4, __src, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
LABEL_27:
      v18 = v6 - 16;
      v5 -= 16;
      v19 = v14;
      do
      {
        v20 = *(v19 - 16);
        v19 -= 16;
        if (qword_100116C98[v20] == qword_100116C98[*v18])
        {
          v21 = 0;
        }

        else
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        swift_bridgeObjectRelease_n();
        v22 = v5 + 16;
        if (v21)
        {
          if (v22 != v6)
          {
            *v5 = *v18;
          }

          if (v14 <= v4 || (v6 -= 16, v18 <= v7))
          {
            v6 = v18;
            goto LABEL_41;
          }

          goto LABEL_27;
        }

        if (v22 != v14)
        {
          *v5 = *v19;
        }

        v5 -= 16;
        v14 = v19;
      }

      while (v19 > v4);
      v14 = v19;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      while (qword_100116C98[*v6] != qword_100116C98[*v4])
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_bridgeObjectRelease_n();
        if ((v15 & 1) == 0)
        {
          goto LABEL_17;
        }

        v16 = v6;
        v17 = v7 == v6;
        v6 += 16;
        if (!v17)
        {
          goto LABEL_18;
        }

LABEL_19:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_21;
        }
      }

      swift_bridgeObjectRelease_n();
LABEL_17:
      v16 = v4;
      v17 = v7 == v4;
      v4 += 16;
      if (v17)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v7 = *v16;
      goto LABEL_19;
    }

LABEL_21:
    v6 = v7;
  }

LABEL_41:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000B6740(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000B67CC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000B6808@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for AppDelegate();
  sub_1000B7C04(&qword_10016A710, type metadata accessor for AppDelegate);
  v4 = EnvironmentObject.init()();
  v16 = v5;
  v17 = v4;
  v20 = _swiftEmptyArrayStorage;
  sub_100002BE4(&qword_10016F4D0, &qword_100116760);
  State.init(wrappedValue:)();
  LOBYTE(v20) = 1;
  State.init(wrappedValue:)();
  static UserDefaultUtilities.SharedConstants.discoveryFeedToUse.getter();
  v15 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.jetpackSource.getter();
  v14 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.clearURLCacheOnLaunch.getter();
  v6 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.forceShowAllSettingsTips.getter();
  v7 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.productPageAdamId.getter();
  v8 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.remoteDownloadIdentifierOverride.getter();
  v9 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.runningInUITestingMode.getter();
  v10 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.tetsuoUseSandboxCloudKitEnvironmentKey.getter();
  static UserDefaultUtilities.daemonUserDefaults.getter();
  v11 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.useStagingKey.getter();
  static UserDefaultUtilities.daemonUserDefaults.getter();
  v12 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.supressDebugButton.getter();
  static UserDefaultUtilities.daemonUserDefaults.getter();
  result = AppStorage.init<A>(wrappedValue:_:store:)();
  *a3 = v17;
  *(a3 + 8) = v16;
  *(a3 + 16) = v21;
  *(a3 + 24) = v22;
  *(a3 + 32) = v21;
  *(a3 + 33) = v21;
  *(a3 + 36) = *(&v21 + 3);
  *(a3 + 40) = v22;
  *(a3 + 48) = a1;
  *(a3 + 56) = a2;
  *(a3 + 57) = v20;
  *(a3 + 60) = _swiftEmptyArrayStorage >> 24;
  *(a3 + 64) = v15;
  *(a3 + 72) = v14;
  *(a3 + 80) = v6;
  *(a3 + 88) = v7;
  *(a3 + 96) = v8;
  *(a3 + 104) = v9;
  *(a3 + 112) = v10;
  *(a3 + 120) = v11;
  *(a3 + 128) = v12;
  *(a3 + 136) = result;
  return result;
}

uint64_t sub_1000B6AE0(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

__n128 sub_1000B6AFC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000B6B18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B6B60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000B6BC4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1000B6BF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B6C38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000B6CD0()
{
  result = qword_10016F4F8;
  if (!qword_10016F4F8)
  {
    sub_10000459C(&qword_10016F4F0, &qword_100116968);
    sub_1000B6D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F4F8);
  }

  return result;
}

unint64_t sub_1000B6D54()
{
  result = qword_10016F500;
  if (!qword_10016F500)
  {
    sub_10000459C(&qword_10016F508, &qword_100116970);
    sub_1000B6DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F500);
  }

  return result;
}

unint64_t sub_1000B6DD8()
{
  result = qword_10016F510;
  if (!qword_10016F510)
  {
    sub_10000459C(&qword_10016F518, &qword_100116978);
    sub_1000B6E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F510);
  }

  return result;
}

unint64_t sub_1000B6E70()
{
  result = qword_10016F520;
  if (!qword_10016F520)
  {
    sub_10000459C(&qword_10016F528, &qword_100116980);
    sub_100012C48(&qword_10016F530, &qword_10016F538, &qword_100116988);
    sub_1000B6F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F520);
  }

  return result;
}

unint64_t sub_1000B6F28()
{
  result = qword_10016F540;
  if (!qword_10016F540)
  {
    sub_10000459C(&qword_10016F548, &qword_100116990);
    sub_100012C48(&qword_10016F550, &qword_10016F558, &qword_100116998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F540);
  }

  return result;
}

uint64_t sub_1000B6FDC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100024388;

  return sub_1000B3128(v0 + 16);
}

uint64_t sub_1000B70A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016F4E8, &qword_100116960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B7120()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B7158(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 1));
}

unint64_t sub_1000B7188()
{
  result = qword_10016F5A0;
  if (!qword_10016F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F5A0);
  }

  return result;
}

uint64_t sub_1000B71F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
    }

    else
    {
      if (a6 != 3)
      {
        return result;
      }
    }
  }

  else
  {
    if (a6)
    {
      if (a6 != 1)
      {
        return result;
      }
    }

    else
    {
    }
  }
}

unint64_t sub_1000B72C8()
{
  result = qword_10016F610;
  if (!qword_10016F610)
  {
    sub_10000459C(&qword_10016F608, &qword_100116AA0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F610);
  }

  return result;
}

unint64_t sub_1000B7390()
{
  result = qword_10016F618;
  if (!qword_10016F618)
  {
    sub_10000459C(&qword_10016F5F8, &qword_100116A90);
    sub_1000B741C();
    sub_1000B74D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F618);
  }

  return result;
}

unint64_t sub_1000B741C()
{
  result = qword_10016F620;
  if (!qword_10016F620)
  {
    sub_10000459C(&qword_10016F5F0, &qword_100116A88);
    sub_100012C48(&qword_10016C628, &qword_10016C5F8, &qword_100112958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F620);
  }

  return result;
}

unint64_t sub_1000B74D4()
{
  result = qword_10016F628;
  if (!qword_10016F628)
  {
    sub_10000459C(&qword_10016F5D0, &qword_100116A58);
    sub_100012C48(&qword_10016A098, &qword_10016A088, &unk_100116A60);
    sub_100012C48(&qword_10016C598, &qword_10016C560, &qword_100112708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F628);
  }

  return result;
}

uint64_t sub_1000B75B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016F600, &qword_100116A98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B7628(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016F600, &qword_100116A98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B7690()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000B76D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
    }

    else
    {
      if (a6 != 3)
      {
        return result;
      }
    }
  }

  else if (a6)
  {
    if (a6 != 1)
    {
      return result;
    }
  }

  else
  {
  }
}

uint64_t sub_1000B77A4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  v8 = *(v0 + 104);

  v9 = *(v0 + 112);

  v10 = *(v0 + 120);

  v11 = *(v0 + 128);

  v12 = *(v0 + 136);

  v13 = *(v0 + 144);

  v14 = *(v0 + 152);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1000B7854()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B788C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000FA04;

  return sub_1000B59A0();
}

__n128 sub_1000B7948(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B795C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000B79A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000B79F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1000B7A2C()
{
  result = qword_10016F658;
  if (!qword_10016F658)
  {
    sub_10000459C(&qword_10016F568, &qword_1001169B0);
    sub_1000B7AE8();
    sub_1000B7C04(&qword_10016DCE0, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F658);
  }

  return result;
}

unint64_t sub_1000B7AE8()
{
  result = qword_10016F660;
  if (!qword_10016F660)
  {
    sub_10000459C(&qword_10016F4E8, &qword_100116960);
    sub_10000459C(&qword_10016F4D8, &qword_100116950);
    type metadata accessor for GroupedListStyle();
    sub_100012C48(&qword_10016F560, &qword_10016F4D8, &qword_100116950);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F660);
  }

  return result;
}

uint64_t sub_1000B7C04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000B7C50()
{
  result = qword_10016F668[0];
  if (!qword_10016F668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10016F668);
  }

  return result;
}

unint64_t sub_1000B7CA4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100159D48, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000B7D18(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1000223CC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B7DB0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1000B7F0C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1000B814C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v35 = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  swift_getWitnessTable();
  v6 = type metadata accessor for _ViewModifier_Content();
  v7 = sub_10000459C(&qword_10016F6F0, &qword_100116D28);
  v31 = v7;
  v8 = v6;
  v29[1] = v6;
  WitnessTable = swift_getWitnessTable();
  v30 = WitnessTable;
  v10 = type metadata accessor for EmptyVisualEffect();
  v11 = sub_1000B88B0();
  v36 = v10;
  v37 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v8;
  v37 = v7;
  v38 = WitnessTable;
  v39 = OpaqueTypeConformance2;
  v32 = &opaque type descriptor for <<opaque return type of View.visualEffect<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(OpaqueTypeMetadata2);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v29 - v19;
  (*(v4 + 16))(v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v33, a2);
  v21 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = *(a2 + 16);
  (*(v4 + 32))(v22 + v21, v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v23 = swift_checkMetadataState();
  v25 = v30;
  v24 = v31;
  View.visualEffect<A>(_:)();

  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeConformance2();
  sub_1000B14BC(v18, OpaqueTypeMetadata2, v26);
  v27 = *(v14 + 8);
  v27(v18, OpaqueTypeMetadata2);
  sub_1000B14BC(v20, OpaqueTypeMetadata2, v26);
  return (v27)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_1000B849C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ScrollFadeModifier();
  sub_1000B851C(a2, v3);
  type metadata accessor for EmptyVisualEffect();
  sub_1000B88B0();
  return VisualEffect.opacity(_:)();
}

void sub_1000B851C(uint64_t a1, int *a2)
{
  v3 = v2;
  v5 = type metadata accessor for NamedCoordinateSpace();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + a2[9];
  v11 = *(v10 + 8);
  if ((*v10)(v3))
  {
    v34[0] = 0x6C6C6F726373;
    v34[1] = 0xE600000000000000;
    static CoordinateSpaceProtocol<>.named<A>(_:)();
    GeometryProxy.frame<A>(in:)();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = [objc_opt_self() mainScreen];
    [v20 bounds];

    v21 = [objc_opt_self() sharedApplication];
    v22 = [v21 connectedScenes];

    sub_100031904(0, &qword_100169C10, UIScene_ptr);
    sub_1000B8A98();
    v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = sub_1000F34B8(v23);

    if (v24)
    {
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v26 = [v25 windows];
        sub_100031904(0, &qword_10016B1C0, UIWindow_ptr);
        v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v27 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_6;
          }
        }

        else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_6:
          if ((v27 & 0xC000000000000001) != 0)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v28 = *(v27 + 32);
          }

          v29 = v28;

          v30 = v29;
          [v30 safeAreaInsets];
          v32 = v31;

          goto LABEL_14;
        }
      }
    }

    v32 = 44.0;
LABEL_14:
    v33 = v32 + *(v3 + a2[8]);
    v35.origin.x = v13;
    v35.origin.y = v15;
    v35.size.width = v17;
    v35.size.height = v19;
    if (CGRectGetMaxY(v35) < v33)
    {
      v36.origin.x = v13;
      v36.origin.y = v15;
      v36.size.width = v17;
      v36.size.height = v19;
      CGRectGetMaxY(v36);
      *(v3 + a2[7]);
    }
  }
}

unint64_t sub_1000B88B0()
{
  result = qword_10016F6F8;
  if (!qword_10016F6F8)
  {
    type metadata accessor for EmptyVisualEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F6F8);
  }

  return result;
}

uint64_t sub_1000B8908()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ScrollFadeModifier() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v4, v1);
  v6 = *(v0 + v4 + v2[11] + 8);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B89FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(*(type metadata accessor for ScrollFadeModifier() - 8) + 80);

  return sub_1000B849C(a1, a2);
}

unint64_t sub_1000B8A98()
{
  result = qword_100171520;
  if (!qword_100171520)
  {
    sub_100031904(255, &qword_100169C10, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171520);
  }

  return result;
}

uint64_t sub_1000B8B00(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for ScrollFadeModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_10000459C(&qword_10016F6F0, &qword_100116D28);
  swift_getWitnessTable();
  type metadata accessor for EmptyVisualEffect();
  sub_1000B88B0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B8C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10000C178(a3, v24 - v10, &unk_10016F2B0, &qword_10010F6F0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009908(v11, &unk_10016F2B0, &qword_10010F6F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000B8EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10000C178(a3, v24 - v10, &unk_10016F2B0, &qword_10010F6F0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009908(v11, &unk_10016F2B0, &qword_10010F6F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      sub_100002BE4(&qword_10016F030, &qword_10011A2D0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);
  sub_100002BE4(&qword_10016F030, &qword_10011A2D0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000B9168()
{
  swift_getKeyPath();
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1000B9210@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1000B92C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000B9390()
{
  swift_getKeyPath();
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_1000B9430(char a1)
{
  if (*(v1 + 32) == (a1 & 1))
  {
    *(v1 + 32) = a1 & 1;
    swift_getKeyPath();
    sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_10009F3E0(2u);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000B9608(uint64_t a1, char a2)
{
  *(a1 + 32) = a2;
  swift_getKeyPath();
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_10009F3E0(2u);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B9710(uint64_t a1)
{
  v3 = sub_100002BE4(&qword_10016F8B8, &qword_100116E20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  swift_beginAccess();
  sub_1000BCAF0(a1, v1 + v7);
  swift_endAccess();
  swift_getKeyPath();
  v11 = v1;
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10000C178(v1 + v7, v6, &qword_10016F8B8, &qword_100116E20);
  v8 = type metadata accessor for GuestUserHandoverService();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_100009908(v6, &qword_10016F8B8, &qword_100116E20);
    sub_1000B9430(0);
    v6 = a1;
  }

  else
  {
    sub_100009908(a1, &qword_10016F8B8, &qword_100116E20);
  }

  return sub_100009908(v6, &qword_10016F8B8, &qword_100116E20);
}

uint64_t sub_1000B98E8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  swift_beginAccess();
  return sub_10000C178(v5 + v3, a1, &qword_10016F8B8, &qword_100116E20);
}

uint64_t sub_1000B99C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  swift_beginAccess();
  return sub_10000C178(v3 + v4, a2, &qword_10016F8B8, &qword_100116E20);
}

uint64_t sub_1000B9A98(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100002BE4(&qword_10016F8B8, &qword_100116E20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10[-v6];
  sub_10000C178(a1, &v10[-v6], &qword_10016F8B8, &qword_100116E20);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100009908(v7, &qword_10016F8B8, &qword_100116E20);
}

uint64_t sub_1000B9BE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002BE4(&qword_10016F8B8, &qword_100116E20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v8 - v5;
  sub_10000C178(a2, &v8 - v5, &qword_10016F8B8, &qword_100116E20);
  return sub_1000B9710(v6);
}

uint64_t sub_1000B9C9C()
{
  v1[9] = v0;
  v1[10] = *v0;
  v2 = type metadata accessor for GuestUserHandoverService();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v5 = *(*(sub_100002BE4(&qword_10016F8B8, &qword_100116E20) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000B9DEC, 0, 0);
}

uint64_t sub_1000B9DEC()
{
  v61 = v0;
  v1 = v0[18];
  v2 = v0[12];
  v58 = v0[11];
  v3 = v0[9];
  swift_getKeyPath();
  v0[5] = v3;
  v0[19] = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel___observationRegistrar;
  v0[20] = sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  v0[21] = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  swift_beginAccess();
  v56 = v4;
  v57 = v3;
  sub_10000C178(v3 + v4, v1, &qword_10016F8B8, &qword_100116E20);
  v5 = *(v2 + 48);
  v0[22] = v5;
  v0[23] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v4) = v5(v1, 1, v58);
  sub_100009908(v1, &qword_10016F8B8, &qword_100116E20);
  if (v4 != 1)
  {
LABEL_9:
    v30 = v0[17];
    v29 = v0[18];
    v32 = v0[15];
    v31 = v0[16];
    v34 = v0[13];
    v33 = v0[14];

    v35 = v0[1];

    return v35();
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v0[24] = sub_100006B0C(v6, qword_100181F88);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v55 = v5;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[10];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v60[0] = v11;
    *v10 = 136315138;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100006B44(v12, v13, v60);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Creating guestUserHandoverService.", v10, 0xCu);
    sub_1000052E4(v11);
  }

  v15 = v0[17];
  v17 = v0[11];
  v16 = v0[12];
  v54 = v0[16];
  v18 = v0[9];
  GuestUserHandoverService.init()();
  (*(v16 + 56))(v15, 0, 1, v17);
  swift_getKeyPath();
  v19 = swift_task_alloc();
  *(v19 + 16) = v18;
  *(v19 + 24) = v15;
  v0[6] = v18;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100009908(v15, &qword_10016F8B8, &qword_100116E20);
  swift_getKeyPath();
  v0[7] = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10000C178(v57 + v56, v54, &qword_10016F8B8, &qword_100116E20);
  v20 = v55(v54, 1, v17);
  v21 = v0[16];
  if (v20)
  {
    sub_100009908(v0[16], &qword_10016F8B8, &qword_100116E20);
    v22 = v0[22];
    v59 = v0[23];
    v24 = v0[20];
    v23 = v0[21];
    v25 = v0[19];
    v26 = v0[15];
    v27 = v0[11];
    v28 = v0[9];
    swift_getKeyPath();
    v0[8] = v28;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_10000C178(v28 + v23, v26, &qword_10016F8B8, &qword_100116E20);
    if (v22(v26, 1, v27) == 1)
    {
      sub_100009908(v0[15], &qword_10016F8B8, &qword_100116E20);
      goto LABEL_9;
    }

    v40 = v0[24];
    (*(v0[12] + 32))(v0[13], v0[15], v0[11]);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v0[10];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v60[0] = v45;
      *v44 = 136315138;
      v46 = _typeName(_:qualified:)();
      v48 = sub_100006B44(v46, v47, v60);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "%s successfully created guestUserHandoverService.", v44, 0xCu);
      sub_1000052E4(v45);
    }

    v49 = sub_1000BCAA8(&qword_10016F8C0, type metadata accessor for GuestUserSessionModel);
    v50 = async function pointer to GuestUserHandoverService.add(_:)[1];
    v51 = swift_task_alloc();
    v0[26] = v51;
    *v51 = v0;
    v51[1] = sub_1000BA97C;
    v52 = v0[13];
    v53 = v0[9];

    return GuestUserHandoverService.add(_:)(v53, v49);
  }

  else
  {
    (*(v0[12] + 16))(v0[14], v0[16], v0[11]);
    sub_100009908(v21, &qword_10016F8B8, &qword_100116E20);
    v37 = async function pointer to GuestUserHandoverService.activate()[1];
    v38 = swift_task_alloc();
    v0[25] = v38;
    *v38 = v0;
    v38[1] = sub_1000BA534;
    v39 = v0[14];

    return GuestUserHandoverService.activate()();
  }
}

uint64_t sub_1000BA534()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1000BA68C, 0, 0);
}

uint64_t sub_1000BA68C()
{
  v32 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[15];
  v7 = v0[11];
  v8 = v0[9];
  swift_getKeyPath();
  v0[8] = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10000C178(v8 + v4, v6, &qword_10016F8B8, &qword_100116E20);
  if (v2(v6, 1, v7) == 1)
  {
    sub_100009908(v0[15], &qword_10016F8B8, &qword_100116E20);
    v10 = v0[17];
    v9 = v0[18];
    v12 = v0[15];
    v11 = v0[16];
    v14 = v0[13];
    v13 = v0[14];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[24];
    (*(v0[12] + 32))(v0[13], v0[15], v0[11]);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[10];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315138;
      v23 = _typeName(_:qualified:)();
      v25 = sub_100006B44(v23, v24, &v31);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s successfully created guestUserHandoverService.", v21, 0xCu);
      sub_1000052E4(v22);
    }

    v26 = sub_1000BCAA8(&qword_10016F8C0, type metadata accessor for GuestUserSessionModel);
    v27 = async function pointer to GuestUserHandoverService.add(_:)[1];
    v28 = swift_task_alloc();
    v0[26] = v28;
    *v28 = v0;
    v28[1] = sub_1000BA97C;
    v29 = v0[13];
    v30 = v0[9];

    return GuestUserHandoverService.add(_:)(v30, v26);
  }
}

uint64_t sub_1000BA97C()
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  v3[27] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000BACE4, 0, 0);
  }

  else
  {
    v4 = async function pointer to GuestUserHandoverService.isGuestUserSessionActive()[1];
    v5 = swift_task_alloc();
    v3[28] = v5;
    *v5 = v3;
    v5[1] = sub_1000BAAEC;
    v6 = v3[13];

    return GuestUserHandoverService.isGuestUserSessionActive()();
  }
}

uint64_t sub_1000BAAEC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_1000BAF18;
  }

  else
  {
    *(v4 + 240) = a1 & 1;
    v7 = sub_1000BAC18;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000BAC18()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  sub_1000B9430(*(v0 + 240));
  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000BACE4()
{
  v28 = v0;
  v1 = v0[27];
  v2 = v0[24];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  if (v5)
  {
    v9 = v0[10];
    v26 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 136315394;
    v13 = _typeName(_:qualified:)();
    v25 = v6;
    v15 = sub_100006B44(v13, v14, &v27);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Could not register as guest user handover observer to follow activation state for reason:%{public}@.", v10, 0x16u);
    sub_100009908(v11, &unk_100169C20, &unk_10010D6B0);

    sub_1000052E4(v12);

    (*(v7 + 8))(v25, v26);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v18 = v0[17];
  v17 = v0[18];
  v20 = v0[15];
  v19 = v0[16];
  v22 = v0[13];
  v21 = v0[14];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000BAF18()
{
  v28 = v0;
  v1 = v0[29];
  v2 = v0[24];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];
  if (v5)
  {
    v9 = v0[10];
    v26 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 136315394;
    v13 = _typeName(_:qualified:)();
    v25 = v6;
    v15 = sub_100006B44(v13, v14, &v27);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Could not register as guest user handover observer to follow activation state for reason:%{public}@.", v10, 0x16u);
    sub_100009908(v11, &unk_100169C20, &unk_10010D6B0);

    sub_1000052E4(v12);

    (*(v7 + 8))(v25, v26);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v18 = v0[17];
  v17 = v0[18];
  v20 = v0[15];
  v19 = v0[16];
  v22 = v0[13];
  v21 = v0[14];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000BB14C()
{
  v1[6] = v0;
  v1[7] = *v0;
  v2 = *(*(sub_100002BE4(&qword_10016F8B8, &qword_100116E20) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for GuestUserHandoverService();
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000BB26C, 0, 0);
}

uint64_t sub_1000BB26C()
{
  v23 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  swift_getKeyPath();
  v0[5] = v4;
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  swift_beginAccess();
  sub_10000C178(v4 + v5, v3, &qword_10016F8B8, &qword_100116E20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100009908(v0[8], &qword_10016F8B8, &qword_100116E20);
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006B0C(v6, qword_100181F88);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[7];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      v12 = _typeName(_:qualified:)();
      v14 = sub_100006B44(v12, v13, &v22);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s Failed to requestViewMirroring as the guestUserHandoverService was not set", v10, 0xCu);
      sub_1000052E4(v11);
    }

    v15 = v0[11];
    v16 = v0[8];

    v17 = v0[1];

    return v17();
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v19 = async function pointer to GuestUserHandoverService.requestViewMirroring()[1];
    v20 = swift_task_alloc();
    v0[12] = v20;
    *v20 = v0;
    v20[1] = sub_1000BB594;
    v21 = v0[11];

    return GuestUserHandoverService.requestViewMirroring()();
  }
}

uint64_t sub_1000BB594()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1000BB868;
  }

  else
  {
    v3 = sub_1000BB6A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000BB6A8()
{
  v19 = v0;
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100181F88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  if (v4)
  {
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100006B44(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Successfully requested guestUserHandoverService to start view mirroring", v9, 0xCu);
    sub_1000052E4(v10);
  }

  (*(v6 + 8))(v5, v7);
  v14 = v0[11];
  v15 = v0[8];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000BB868()
{
  v20 = v0;
  (*(v0[10] + 8))(v0[11], v0[9]);
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100181F88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100006B44(v11, v12, &v19);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Failed to requestViewMirroring with error: %{public}@", v8, 0x16u);
    sub_100009908(v9, &unk_100169C20, &unk_10010D6B0);

    sub_1000052E4(v10);
  }

  else
  {
  }

  v15 = v0[11];
  v16 = v0[8];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1000BBAA8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
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
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100006B44(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s stopGuestUserSession called", v10, 0xCu);
    sub_1000052E4(v11);
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v1;

  sub_1000B8EAC(0, 0, v6, &unk_100116E10, v16);
}

uint64_t sub_1000BBD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  v5 = type metadata accessor for GuestUserHandoverService();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = *(*(sub_100002BE4(&qword_10016F8B8, &qword_100116E20) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000BBDF8, 0, 0);
}

uint64_t sub_1000BBDF8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  swift_getKeyPath();
  *(v0 + 40) = v4;
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  swift_beginAccess();
  sub_10000C178(v4 + v5, v1, &qword_10016F8B8, &qword_100116E20);
  v6 = (*(v3 + 48))(v1, 1, v2);
  *(v0 + 112) = v6;
  v7 = *(v0 + 88);
  if (v6)
  {
    sub_100009908(*(v0 + 88), &qword_10016F8B8, &qword_100116E20);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    **(v0 + 48) = *(v0 + 112) != 0;

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 88), *(v0 + 64));
    sub_100009908(v7, &qword_10016F8B8, &qword_100116E20);
    v12 = async function pointer to GuestUserHandoverService.endGuestUserMode()[1];
    v13 = swift_task_alloc();
    *(v0 + 96) = v13;
    *v13 = v0;
    v13[1] = sub_1000BC034;
    v14 = *(v0 + 80);

    return GuestUserHandoverService.endGuestUserMode()();
  }
}

uint64_t sub_1000BC034()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1000BC224;
  }

  else
  {
    v6 = sub_1000BC1A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000BC1A4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  **(v0 + 48) = *(v0 + 112) != 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000BC224()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_1000BC290()
{
  sub_1000319E0(v0 + 16);
  sub_100009908(v0 + OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService, &qword_10016F8B8, &qword_100116E20);
  v1 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuestUserSessionModel()
{
  result = qword_10016F738;
  if (!qword_10016F738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BC3A8()
{
  sub_1000BC488();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000BC488()
{
  if (!qword_10016F748)
  {
    type metadata accessor for GuestUserHandoverService();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10016F748);
    }
  }
}

uint64_t sub_1000BC4E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v34 = *(v11 - 8);
  v35 = v11;
  v12 = *(v34 + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v33 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v32 = v3;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 136315394;
    v22 = _typeName(_:qualified:)();
    v24 = v10;
    v25 = v6;
    v26 = a2;
    v27 = sub_100006B44(v22, v23, aBlock);

    *(v19 + 4) = v27;
    a2 = v26;
    v6 = v25;
    v10 = v24;
    *(v19 + 12) = 1024;
    *(v19 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s received guest user session activation state update, to state: %{BOOL}d", v19, 0x12u);
    sub_1000052E4(v21);
    v3 = v32;

    v7 = v33;
  }

  sub_100064428();
  v28 = static OS_dispatch_queue.main.getter();
  v29 = swift_allocObject();
  *(v29 + 16) = v3;
  *(v29 + 24) = a2 & 1;
  aBlock[4] = sub_1000BC94C;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015E3E8;
  v30 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000BCAA8(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v7 + 8))(v10, v6);
  return (*(v34 + 8))(v14, v35);
}

uint64_t sub_1000BC914()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000BC94C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1000B9430(v1);
}

uint64_t sub_1000BC978(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BC990()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BC9D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000FA04;

  return sub_1000BBD00(a1, v4, v5, v6);
}

uint64_t sub_1000BCAA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000BCAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016F8B8, &qword_100116E20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BCB90()
{
  v1 = v0[3];
  *(v0[2] + 24) = v0[4];
  return swift_unknownObjectWeakAssign();
}

__n128 sub_1000BCBFC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  swift_getKeyPath();
  *&v13 = a1;
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + 32) && (swift_getKeyPath(), *&v13 = a1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(a1 + 16) == 1))
  {

    v7 = sub_1000BD01C;
  }

  else
  {
    v7 = 0;
    a1 = 0;
  }

  v8 = static Edge.Set.horizontal.getter();
  v9 = static SafeAreaRegions.all.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v12[55] = v16;
  *&v12[71] = v17;
  *&v12[87] = v18;
  *&v12[103] = v19;
  *&v12[7] = v13;
  *&v12[23] = v14;
  *&v12[39] = v15;
  v10 = static Color.clear.getter();
  *(a2 + 105) = *&v12[64];
  *(a2 + 121) = *&v12[80];
  *(a2 + 137) = *&v12[96];
  *(a2 + 41) = *v12;
  *(a2 + 57) = *&v12[16];
  result = *&v12[32];
  *(a2 + 73) = *&v12[32];
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = a1;
  *(a2 + 32) = v9;
  *(a2 + 40) = v8;
  *(a2 + 89) = *&v12[48];
  *(a2 + 152) = *(&v19 + 1);
  *(a2 + 160) = v10;
  return result;
}

double sub_1000BCDDC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000BCEDC(a1, a2);
  v5 = static Edge.Set.horizontal.getter();
  v6 = static SafeAreaRegions.all.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v11[7] = v12;
  *&v11[23] = v13;
  *&v11[39] = v14;

  GeometryProxy.size.getter();
  v8 = v7 * 0.5;
  GeometryProxy.size.getter();
  result = v9 * 0.5;
  *(a3 + 25) = *v11;
  *a3 = a2;
  *(a3 + 8) = 1;
  *(a3 + 16) = v6;
  *(a3 + 24) = v5;
  *(a3 + 41) = *&v11[16];
  *(a3 + 57) = *&v11[32];
  *(a3 + 72) = *(&v14 + 1);
  *(a3 + 80) = v8;
  *(a3 + 88) = v9 * 0.5;
  return result;
}

double sub_1000BCEDC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(a2 + 40);
  if (v3)
  {
    [v3 videoFrameSize];
    if (v4 > 0.0 && v5 > 0.0)
    {
      sub_10002FAC4(COERCE__INT64(v5 / v4), 0);
    }
  }

  GeometryProxy.size.getter();
  v7 = v6;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = 1.0 / *(a2 + 48);
  if (*(a2 + 56))
  {
    v8 = 1.83333333;
  }

  v9 = v7 * v8;
  GeometryProxy.size.getter();
  return v9;
}

unint64_t sub_1000BD038()
{
  result = qword_10016F8C8;
  if (!qword_10016F8C8)
  {
    sub_10000459C(&qword_10016F8D0, &qword_100116FD8);
    sub_1000BD0F0();
    sub_100012C48(&qword_10016F908, &qword_10016F910, &qword_100116FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F8C8);
  }

  return result;
}

unint64_t sub_1000BD0F0()
{
  result = qword_10016F8D8;
  if (!qword_10016F8D8)
  {
    sub_10000459C(&qword_10016F8E0, &qword_100116FE0);
    sub_1000BD17C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F8D8);
  }

  return result;
}

unint64_t sub_1000BD17C()
{
  result = qword_10016F8E8;
  if (!qword_10016F8E8)
  {
    sub_10000459C(&qword_10016F8F0, &qword_100116FE8);
    sub_100012C48(&qword_10016F8F8, &qword_10016F900, &qword_100116FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F8E8);
  }

  return result;
}

uint64_t sub_1000BD254()
{
  v1 = *(v0 + 16);
  v2 = Device.productType.getter();
  v4 = v3;
  v5._countAndFlagsBits = v2;
  v5._object = v4;
  v6 = _findStringSwitchCase(cases:string:)(&off_100159AA0, v5);

  if (v6)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v6)
  {
    v8 = "_guestUserHandoverService";
  }

  else
  {
    v8 = "VisionProDeviceTitle";
  }

  type metadata accessor for Entity();
  v9 = async function pointer to Entity.init(named:in:)[1];
  v10 = swift_task_alloc();
  *(v0 + 24) = v10;
  *v10 = v0;
  v10[1] = sub_1000BD368;

  return Entity.init(named:in:)(v7, v8 | 0x8000000000000000, 0);
}

uint64_t sub_1000BD368(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(v5 + 32) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000BD4A4, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1000BD4A4()
{
  if (qword_100168E40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100181FE8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to load USDZ model: %@", v7, 0xCu);
    sub_1000077E0(v8);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_1000BD63C()
{
  if ([objc_opt_self() isMainThread])
  {
    v0 = Device.productType.getter();
    v2 = v1;
    v3._countAndFlagsBits = v0;
    v3._object = v2;
    _findStringSwitchCase(cases:string:)(&off_100159AA0, v3);

    type metadata accessor for Entity();
    v4 = static Entity.loadModel(named:in:)();

    return v4;
  }

  else
  {
    if (qword_100168E40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006B0C(v5, qword_100181FE8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "deviceModel() called from background thread - use deviceModelAsync() instead", v8, 2u);
    }

    return 0;
  }
}

uint64_t getEnumTagSinglePayload for DeviceTabViewModifier(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for DeviceTabViewModifier(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000BDA88@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v126 = a1;
  v131 = a3;
  v119 = sub_100002BE4(&qword_10016F918, &qword_100117098);
  v4 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v120 = &v113 - v5;
  v130 = sub_100002BE4(&qword_10016F920, &qword_1001170A0);
  v6 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v123 = &v113 - v7;
  v116 = sub_100002BE4(&qword_10016F928, &qword_1001170A8);
  v8 = *(*(v116 - 8) + 64);
  v9 = __chkstk_darwin(v116);
  v11 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v113 - v12;
  v125 = sub_100002BE4(&qword_10016F930, &qword_1001170B0);
  v14 = *(*(v125 - 8) + 64);
  v15 = __chkstk_darwin(v125);
  v17 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v114 = &v113 - v19;
  __chkstk_darwin(v18);
  v21 = &v113 - v20;
  v122 = sub_100002BE4(&qword_10016F938, &qword_1001170B8);
  v22 = *(*(v122 - 8) + 64);
  v23 = __chkstk_darwin(v122);
  v113 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v115 = &v113 - v25;
  v127 = sub_100002BE4(&qword_10016F940, &qword_1001170C0);
  v26 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v129 = &v113 - v27;
  v117 = sub_100002BE4(&qword_10016F948, &qword_1001170C8);
  v28 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v118 = &v113 - v29;
  v128 = sub_100002BE4(&qword_10016F950, &qword_1001170D0);
  v30 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128);
  v121 = &v113 - v31;
  v124 = sub_100002BE4(&qword_10016F958, &qword_1001170D8);
  v32 = *(*(v124 - 8) + 64);
  v33 = __chkstk_darwin(v124);
  v35 = &v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v33);
  v38 = &v113 - v37;
  __chkstk_darwin(v36);
  v40 = &v113 - v39;
  v41 = sub_100002BE4(&qword_10016F960, &qword_1001170E0);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41);
  v45 = &v113 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v43);
  v48 = &v113 - v47;
  if ((a2 & 1) == 0)
  {
    if ((a2 & 0x100) == 0)
    {
      v77 = static Edge.Set.horizontal.getter();
      EdgeInsets.init(_all:)();
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v86 = sub_100002BE4(&qword_10016F968, &qword_1001170E8);
      (*(*(v86 - 8) + 16))(v11, v126, v86);
      v87 = &v11[*(v116 + 36)];
      *v87 = v77;
      *(v87 + 1) = v79;
      *(v87 + 2) = v81;
      *(v87 + 3) = v83;
      *(v87 + 4) = v85;
      v87[40] = 0;
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      sub_10001D504(v11, v17, &qword_10016F928, &qword_1001170A8);
      v88 = &v17[*(v125 + 36)];
      v89 = v144;
      *(v88 + 4) = v143;
      *(v88 + 5) = v89;
      *(v88 + 6) = v145;
      v90 = v140;
      *v88 = v139;
      *(v88 + 1) = v90;
      v91 = v142;
      *(v88 + 2) = v141;
      *(v88 + 3) = v91;
      v71 = &qword_10016F930;
      v72 = &qword_1001170B0;
      v73 = v114;
      sub_10001D504(v17, v114, &qword_10016F930, &qword_1001170B0);
      sub_10000C178(v73, v120, &qword_10016F930, &qword_1001170B0);
      swift_storeEnumTagMultiPayload();
      sub_1000BEAA4(&qword_10016F970, &qword_10016F958, &qword_1001170D8);
      sub_1000BE9F8();
      v74 = v123;
      _ConditionalContent<>.init(storage:)();
      v75 = &qword_10016F920;
      v76 = &qword_1001170A0;
      sub_10000C178(v74, v129, &qword_10016F920, &qword_1001170A0);
      goto LABEL_6;
    }

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v106 = sub_100002BE4(&qword_10016F968, &qword_1001170E8);
    (*(*(v106 - 8) + 16))(v35, v126, v106);
    v107 = &v35[*(v124 + 36)];
    v108 = v144;
    *(v107 + 4) = v143;
    *(v107 + 5) = v108;
    *(v107 + 6) = v145;
    v109 = v140;
    *v107 = v139;
    *(v107 + 1) = v109;
    v110 = v142;
    *(v107 + 2) = v141;
    *(v107 + 3) = v110;
    v104 = &qword_1001170D8;
    sub_10001D504(v35, v38, &qword_10016F958, &qword_1001170D8);
    sub_10000C178(v38, v120, &qword_10016F958, &qword_1001170D8);
    swift_storeEnumTagMultiPayload();
    sub_1000BEAA4(&qword_10016F970, &qword_10016F958, &qword_1001170D8);
    sub_1000BE9F8();
    v111 = v123;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v111, v129, &qword_10016F920, &qword_1001170A0);
    swift_storeEnumTagMultiPayload();
    sub_1000BEB1C();
    sub_1000BECDC();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v111, &qword_10016F920, &qword_1001170A0);
    v92 = v38;
    v93 = &qword_10016F958;
LABEL_9:
    v94 = v104;
    return sub_100009908(v92, v93, v94);
  }

  v49 = v46;
  if ((a2 & 0x100) != 0)
  {
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v95 = sub_100002BE4(&qword_10016F968, &qword_1001170E8);
    (*(*(v95 - 8) + 16))(v40, v126, v95);
    v96 = &v40[*(v124 + 36)];
    v97 = v137;
    *(v96 + 4) = v136;
    *(v96 + 5) = v97;
    *(v96 + 6) = v138;
    v98 = v133;
    *v96 = v132;
    *(v96 + 1) = v98;
    v99 = v135;
    *(v96 + 2) = v134;
    *(v96 + 3) = v99;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10001D504(v40, v45, &qword_10016F958, &qword_1001170D8);
    v100 = &v45[*(v49 + 36)];
    v101 = v144;
    *(v100 + 4) = v143;
    *(v100 + 5) = v101;
    *(v100 + 6) = v145;
    v102 = v140;
    *v100 = v139;
    *(v100 + 1) = v102;
    v103 = v142;
    *(v100 + 2) = v141;
    *(v100 + 3) = v103;
    v104 = &qword_1001170E0;
    sub_10001D504(v45, v48, &qword_10016F960, &qword_1001170E0);
    sub_10000C178(v48, v118, &qword_10016F960, &qword_1001170E0);
    swift_storeEnumTagMultiPayload();
    sub_1000BEBA8();
    sub_1000BEC50();
    v105 = v121;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v105, v129, &qword_10016F950, &qword_1001170D0);
    swift_storeEnumTagMultiPayload();
    sub_1000BEB1C();
    sub_1000BECDC();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v105, &qword_10016F950, &qword_1001170D0);
    v92 = v48;
    v93 = &qword_10016F960;
    goto LABEL_9;
  }

  v50 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = sub_100002BE4(&qword_10016F968, &qword_1001170E8);
  (*(*(v59 - 8) + 16))(v13, v126, v59);
  v60 = &v13[*(v116 + 36)];
  *v60 = v50;
  *(v60 + 1) = v52;
  *(v60 + 2) = v54;
  *(v60 + 3) = v56;
  *(v60 + 4) = v58;
  v60[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001D504(v13, v21, &qword_10016F928, &qword_1001170A8);
  v61 = &v21[*(v125 + 36)];
  v62 = v137;
  *(v61 + 4) = v136;
  *(v61 + 5) = v62;
  *(v61 + 6) = v138;
  v63 = v133;
  *v61 = v132;
  *(v61 + 1) = v63;
  v64 = v135;
  *(v61 + 2) = v134;
  *(v61 + 3) = v64;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v65 = v21;
  v66 = v113;
  sub_10001D504(v65, v113, &qword_10016F930, &qword_1001170B0);
  v67 = (v66 + *(v122 + 36));
  v68 = v144;
  v67[4] = v143;
  v67[5] = v68;
  v67[6] = v145;
  v69 = v140;
  *v67 = v139;
  v67[1] = v69;
  v70 = v142;
  v67[2] = v141;
  v67[3] = v70;
  v71 = &qword_10016F938;
  v72 = &qword_1001170B8;
  v73 = v115;
  sub_10001D504(v66, v115, &qword_10016F938, &qword_1001170B8);
  sub_10000C178(v73, v118, &qword_10016F938, &qword_1001170B8);
  swift_storeEnumTagMultiPayload();
  sub_1000BEBA8();
  sub_1000BEC50();
  v74 = v121;
  _ConditionalContent<>.init(storage:)();
  v75 = &qword_10016F950;
  v76 = &qword_1001170D0;
  sub_10000C178(v74, v129, &qword_10016F950, &qword_1001170D0);
LABEL_6:
  swift_storeEnumTagMultiPayload();
  sub_1000BEB1C();
  sub_1000BECDC();
  _ConditionalContent<>.init(storage:)();
  sub_100009908(v74, v75, v76);
  v92 = v73;
  v93 = v71;
  v94 = v72;
  return sub_100009908(v92, v93, v94);
}

uint64_t sub_1000BE978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1000BDA88(a1, v3 | *v2, a2);
}

unint64_t sub_1000BE994()
{
  result = qword_10016F978;
  if (!qword_10016F978)
  {
    sub_10000459C(&qword_10016F968, &qword_1001170E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F978);
  }

  return result;
}

unint64_t sub_1000BE9F8()
{
  result = qword_10016F980;
  if (!qword_10016F980)
  {
    sub_10000459C(&qword_10016F930, &qword_1001170B0);
    sub_1000BEAA4(&qword_10016F988, &qword_10016F928, &qword_1001170A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F980);
  }

  return result;
}

uint64_t sub_1000BEAA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    sub_1000BE994();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000BEB1C()
{
  result = qword_10016F990;
  if (!qword_10016F990)
  {
    sub_10000459C(&qword_10016F950, &qword_1001170D0);
    sub_1000BEBA8();
    sub_1000BEC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F990);
  }

  return result;
}

unint64_t sub_1000BEBA8()
{
  result = qword_10016F998;
  if (!qword_10016F998)
  {
    sub_10000459C(&qword_10016F960, &qword_1001170E0);
    sub_1000BEAA4(&qword_10016F970, &qword_10016F958, &qword_1001170D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F998);
  }

  return result;
}

unint64_t sub_1000BEC50()
{
  result = qword_10016F9A0;
  if (!qword_10016F9A0)
  {
    sub_10000459C(&qword_10016F938, &qword_1001170B8);
    sub_1000BE9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F9A0);
  }

  return result;
}

unint64_t sub_1000BECDC()
{
  result = qword_10016F9A8;
  if (!qword_10016F9A8)
  {
    sub_10000459C(&qword_10016F920, &qword_1001170A0);
    sub_1000BEAA4(&qword_10016F970, &qword_10016F958, &qword_1001170D8);
    sub_1000BE9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F9A8);
  }

  return result;
}

unint64_t sub_1000BED8C()
{
  result = qword_10016F9B0;
  if (!qword_10016F9B0)
  {
    sub_10000459C(&qword_10016F9B8, &unk_1001170F0);
    sub_1000BEB1C();
    sub_1000BECDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F9B0);
  }

  return result;
}

void *sub_1000BEE18()
{
  swift_getKeyPath();
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_1000BEE90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1000BEF18(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100054D34();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016FC08, BKDevice_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void *sub_1000BF078()
{
  swift_getKeyPath();
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_1000BF0F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_1000BF178(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100054D34();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016FC30, SFAuthenticationManager_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_1000BF2D8()
{
  swift_getKeyPath();
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_1000BF348(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100054D34();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000BF428()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 40);
  v1 = *(v4 + 48);

  return v2;
}

uint64_t sub_1000BF4A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_1000BF524(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000BF564(v2, v3);
}

uint64_t sub_1000BF564(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 40) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 48);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100054D34();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t *sub_1000BF704()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v0[2] = 0;
  v0[3] = 0;
  *(v0 + 32) = 0;
  v0[5] = 0;
  v0[6] = 0;
  ObservationRegistrar.init()();
  sub_100031904(0, &qword_10016FC08, BKDevice_ptr);
  v7 = [objc_opt_self() deviceDescriptorForType:2];
  v8 = sub_1000C16F8(v7);

  sub_1000BEF18(v8);
  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = [objc_allocWithZone(SFAuthenticationManager) initWithQueue:v9];

  sub_1000BF178(v10);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;

  sub_1000EE5F8(0, 0, v6, &unk_100112328, v12);

  return v1;
}

uint64_t sub_1000BFAB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_1000BFB44();
}

uint64_t sub_1000BFB44()
{
  *(v1 + 152) = v0;
  *(v1 + 160) = *v0;
  return _swift_task_switch(sub_1000BFB8C, 0, 0);
}

uint64_t sub_1000BFB8C()
{
  v25 = v0;
  if (qword_100168E98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = sub_100006B0C(v1, qword_1001820F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[20];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s checkingEligibleDevices", v5, 0xCu);
    sub_1000052E4(v6);
  }

  v10 = v0[19];
  swift_getKeyPath();
  v0[22] = OBJC_IVAR____TtC17AppleVisionProApp29PasscodeAndBiometricsProvider___observationRegistrar;
  v0[10] = v10;
  v0[23] = sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v10 + 24);
  v0[24] = v11;
  if (v11)
  {
    v12 = v11;
    if ([v12 isSupportedForType:12])
    {
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_1000BFF5C;
      v13 = swift_continuation_init();
      v0[17] = sub_100002BE4(&qword_10016FC18, &unk_100117238);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_1000C04D0;
      v0[13] = &unk_10015E508;
      v0[14] = v13;
      [v12 listCandidateDevicesForType:12 completionHandler:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[20];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    v19 = _typeName(_:qualified:)();
    v21 = sub_100006B44(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s visionUnlockiOSPairing is not supported", v17, 0xCu);
    sub_1000052E4(v18);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000BFF5C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_1000C0300;
  }

  else
  {
    v3 = sub_1000C006C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000C006C()
{
  v25 = v0;
  v1 = v0[21];
  v2 = v0[18];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, v24);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    sub_100031904(0, &qword_10016FC20, SFAuthenticationDevice_ptr);
    sub_1000C1894();
    v10 = Set.description.getter();
    v12 = sub_100006B44(v10, v11, v24);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s listCandidateDevices: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *(v2 + 16);
  }

  v14 = v0[19];

  v15 = (v13 > 0) ^ *(v14 + 32);
  v16 = v0[24];
  v17 = v13 > 0;
  if (v15)
  {
    v19 = v0[22];
    v18 = v0[23];
    v20 = v0[19];
    swift_getKeyPath();
    v21 = swift_task_alloc();
    *(v21 + 16) = v20;
    *(v21 + 24) = v17;
    v0[10] = v20;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {

    *(v14 + 32) = v17;
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000C0300()
{
  v19 = v0;
  v1 = v0[25];
  v2 = v0[21];
  swift_willThrow();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[24];
  v6 = v0[25];
  if (v5)
  {
    v8 = v0[20];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100006B44(v12, v13, &v18);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s checkEligibleDevices error: %@", v9, 0x16u);
    sub_1000077E0(v10);

    sub_1000052E4(v11);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000C04D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000524C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002BE4(&qword_10016BBA0, &qword_1001110E0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100031904(0, &qword_10016FC20, SFAuthenticationDevice_ptr);
    sub_1000C1894();
    **(*(v4 + 64) + 40) = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

unint64_t sub_1000C05CC()
{
  v1 = v0;
  v2 = *v0;
  v3 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.forceShowAllSettingsTips.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 BOOLForKey:v4];

  if (v5)
  {
    if (qword_100168E98 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006B0C(v6, qword_1001820F0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v41 = v10;
      *v9 = 136315138;
      v11 = _typeName(_:qualified:)();
      v13 = sub_100006B44(v11, v12, &v41);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s makeMessage: returning debug text", v9, 0xCu);
      sub_1000052E4(v10);
    }

    return 0xD000000000000022;
  }

  swift_getKeyPath();
  v41 = v1;
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v1 + 24);
  if (v15)
  {
    v16 = v15;
    if ([v16 isSupportedForType:12])
    {
      if ([objc_opt_self() autoUnlockSupported])
      {
        swift_getKeyPath();
        v41 = v1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v1 + 32) == 1)
        {
          if (sub_1000C137C() & 1) != 0 && (sub_1000C0BF4())
          {
            if (sub_1000C11A0())
            {
              v17 = 0;
              v18 = 0;
LABEL_25:
              if (qword_100168E98 != -1)
              {
                swift_once();
              }

              v28 = type metadata accessor for Logger();
              sub_100006B0C(v28, qword_1001820F0);

              v29 = Logger.logObject.getter();
              v30 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v29, v30))
              {
                v31 = swift_slowAlloc();
                v41 = swift_slowAlloc();
                *v31 = 136315394;
                v32 = _typeName(_:qualified:)();
                v34 = sub_100006B44(v32, v33, &v41);

                *(v31 + 4) = v34;
                *(v31 + 12) = 2080;
                v35 = v18;
                v36 = v18 == 0;
                v37 = v17;
                if (v36)
                {
                  v38 = 7104878;
                }

                else
                {
                  v38 = v17;
                }

                if (v36)
                {
                  v39 = 0xE300000000000000;
                }

                else
                {
                  v39 = v35;
                }

                v40 = sub_100006B44(v38, v39, &v41);

                *(v31 + 14) = v40;
                _os_log_impl(&_mh_execute_header, v29, v30, "%s makeMessage: %s", v31, 0x16u);
                swift_arrayDestroy();

                return v37;
              }

              else
              {

                return v17;
              }
            }

            if (qword_100168FA8 != -1)
            {
              swift_once();
            }

            v27 = &qword_10016F9D0;
          }

          else
          {
            if (qword_100168FA0 != -1)
            {
              swift_once();
            }

            v27 = &qword_10016F9C0;
          }

          v17 = *v27;
          v18 = v27[1];

          goto LABEL_25;
        }
      }
    }
  }

  if (qword_100168E98 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100006B0C(v19, qword_1001820F0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41 = v23;
    *v22 = 136315138;
    v24 = _typeName(_:qualified:)();
    v26 = sub_100006B44(v24, v25, &v41);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s will not make message as preliminary checks have failed", v22, 0xCu);
    sub_1000052E4(v23);
  }

  return 0;
}

uint64_t sub_1000C0BF4()
{
  v1 = *v0;
  swift_getKeyPath();
  v37 = v0;
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = v0[2];
  if (!v2)
  {
    if (qword_100168E98 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006B0C(v10, qword_1001820F0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v37 = v14;
      *v13 = 136315138;
      v15 = _typeName(_:qualified:)();
      v17 = sub_100006B44(v15, v16, &v37);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s device is nil", v13, 0xCu);
      sub_1000052E4(v14);
    }

LABEL_14:

    return 0;
  }

  v37 = 0;
  v3 = v2;
  v4 = [v3 identitiesWithError:&v37];
  v5 = v37;
  if (!v4)
  {
    v18 = v37;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100168E98 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006B0C(v19, qword_1001820F0);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v11, v20))
    {

      return 0;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37 = v23;
    *v21 = 136315394;
    v24 = _typeName(_:qualified:)();
    v26 = sub_100006B44(v24, v25, &v37);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v27;
    *v22 = v27;
    _os_log_impl(&_mh_execute_header, v11, v20, "%s isEnrolledInFaceID error: %@", v21, 0x16u);
    sub_1000077E0(v22);

    sub_1000052E4(v23);

    goto LABEL_14;
  }

  v6 = v4;
  sub_100031904(0, &qword_10016FC10, BKIdentity_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v5;

  if (v7 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_5;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_5:

    return 1;
  }

  if (qword_100168E98 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100006B0C(v28, qword_1001820F0);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v31 = 136315394;
    v33 = _typeName(_:qualified:)();
    v35 = sub_100006B44(v33, v34, &v37);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2048;
    if (v7 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v31 + 14) = v36;

    _os_log_impl(&_mh_execute_header, v29, v30, "%s identity count is: %ld", v31, 0x16u);
    sub_1000052E4(v32);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return 0;
}

id sub_1000C11A0()
{
  v1 = *v0;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    v4 = [result effectiveBoolValueForSetting:MCFeatureFingerprintUnlockAllowed];

    if (qword_100168E98 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006B0C(v5, qword_1001820F0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315394;
      v10 = _typeName(_:qualified:)();
      v12 = sub_100006B44(v10, v11, &v13);

      *(v8 + 4) = v12;
      *(v8 + 12) = 1024;
      *(v8 + 14) = v4 == 1;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s isFingerprintUnlockAllowed: %{BOOL}d", v8, 0x12u);
      sub_1000052E4(v9);
    }

    return (v4 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000C137C()
{
  v1 = *v0;
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v3 = result;
    v4 = [result isPasscodeSet];

    if (qword_100168E98 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006B0C(v5, qword_1001820F0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315394;
      v10 = _typeName(_:qualified:)();
      v12 = sub_100006B44(v10, v11, &v13);

      *(v8 + 4) = v12;
      *(v8 + 12) = 1024;
      *(v8 + 14) = v4;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s isPasscodeSet: %{BOOL}d", v8, 0x12u);
      sub_1000052E4(v9);
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C1540()
{
  v1 = *(v0 + 48);

  v2 = OBJC_IVAR____TtC17AppleVisionProApp29PasscodeAndBiometricsProvider___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PasscodeAndBiometricsProvider()
{
  result = qword_10016FA10;
  if (!qword_10016FA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C1648()
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

id sub_1000C16F8(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() deviceWithDescriptor:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1000C17BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000C1800(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000BEF18(v2);
}

void sub_1000C1834(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000BF178(v2);
}

unint64_t sub_1000C1894()
{
  result = qword_10016FC28;
  if (!qword_10016FC28)
  {
    sub_100031904(255, &qword_10016FC20, SFAuthenticationDevice_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FC28);
  }

  return result;
}

uint64_t sub_1000C1900(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1000BF564(v2, v3);
}

void sub_1000C1940()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_1000C19A4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000C1A74(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TetsuoDiscoverPageShelf()
{
  result = qword_10016FC90;
  if (!qword_10016FC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C1B70()
{
  sub_1000C1C04();
  if (v0 <= 0x3F)
  {
    sub_10001EB04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000C1C04()
{
  if (!qword_10016FCA0)
  {
    sub_1000C1C60();
    v0 = type metadata accessor for _CodeByKind_Many();
    if (!v1)
    {
      atomic_store(v0, &qword_10016FCA0);
    }
  }
}

unint64_t sub_1000C1C60()
{
  result = qword_10016FCA8;
  if (!qword_10016FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FCA8);
  }

  return result;
}

uint64_t sub_1000C1CB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C1CFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C1D4C(void *a1)
{
  v3 = v1;
  v5 = sub_100002BE4(&qword_10016FD18, &qword_100117420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v20 - v8;
  v10 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_1000C2E0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20[0] = *v3;
  v21 = 0;
  sub_100002BE4(&qword_10016FD00, &qword_100117418);
  sub_100012C48(&qword_10016FD20, &qword_10016FD00, &qword_100117418);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v20[0]) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = type metadata accessor for TetsuoDiscoverPageShelf();
    v15 = *(v14 + 24);
    LOBYTE(v20[0]) = 2;
    sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    sub_1000C304C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = v3 + *(v14 + 28);
    v17 = *v16;
    v19 = *(v16 + 1);
    v18 = *(v16 + 2);
    LOBYTE(v20[0]) = v17;
    v20[1] = v19;
    v20[2] = v18;
    v21 = 3;
    sub_1000C31CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000C1FF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v36 - v6;
  v41 = sub_100002BE4(&qword_10016FCF0, &qword_100117410);
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v41);
  v10 = &v36 - v9;
  v11 = type metadata accessor for TetsuoDiscoverPageShelf();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 24);
  v17 = type metadata accessor for ImpressionMetrics();
  v18 = *(*(v17 - 8) + 56);
  v42 = v15;
  v43 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[3];
  v20 = a1[4];
  v44 = a1;
  sub_10000524C(a1, v19);
  sub_1000C2E0C();
  v40 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v23 = v43;
    sub_1000052E4(v44);
    return sub_1000C2E60(v42 + v23);
  }

  else
  {
    v37 = v4;
    v21 = v7;
    v22 = v39;
    sub_100002BE4(&qword_10016FD00, &qword_100117418);
    v48 = 0;
    sub_100012C48(&qword_10016FD08, &qword_10016FD00, &qword_100117418);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v42;
    *v42 = v45;
    LOBYTE(v45) = 1;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = v43;
    v27 = v22;
    v24[1] = v25;
    v24[2] = v28;
    LOBYTE(v45) = 2;
    sub_100012C48(&qword_10016DBE0, &qword_10016A118, &unk_10010EEF0);
    v37 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = v24;
    sub_1000C2EC8(v21, v24 + v26);
    v48 = 3;
    sub_1000C2F38();
    v31 = v40;
    v30 = v41;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v27 + 8))(v31, v30);
    v32 = v46;
    v33 = v47;
    v34 = v29 + *(v11 + 28);
    *v34 = v45;
    *(v34 + 8) = v32;
    *(v34 + 16) = v33;
    sub_1000C2F8C(v29, v38);
    sub_1000052E4(v44);
    return sub_1000C2FF0(v29);
  }
}

unint64_t sub_1000C243C()
{
  v1 = 0x736D657469;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x61746E6573657270;
  }

  if (*v0)
  {
    v1 = 25705;
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

uint64_t sub_1000C24B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000C3290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000C24DC(uint64_t a1)
{
  v2 = sub_1000C2E0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C2518(uint64_t a1)
{
  v2 = sub_1000C2E0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C2554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
}

uint64_t sub_1000C25A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - v7;
  sub_1000C3220(v2 + *(a1 + 24), &v10 - v7);
  return sub_1000200DC(v8, a2);
}

uint64_t sub_1000C2640@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t sub_1000C264C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E6F7A69726F68;
  }

  else
  {
    v4 = 0x6C61636974726576;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v6 = 0x746E6F7A69726F68;
  }

  else
  {
    v6 = 0x6C61636974726576;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006C61;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000C26F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C2780()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C27F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C2878@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A010, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000C28D8(uint64_t *a1@<X8>)
{
  v2 = 0x6C61636974726576;
  if (*v1)
  {
    v2 = 0x746E6F7A69726F68;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000C29CC(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = sub_100002BE4(&qword_10016FD60, &qword_100117430);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_1000C35B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2 & 1;
  v16 = 0;
  sub_1000C3660();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000C2B88()
{
  if (*v0)
  {
    result = 0x656C746974;
  }

  else
  {
    result = 0x7461746E6569726FLL;
  }

  *v0;
  return result;
}

uint64_t sub_1000C2BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000C2CA4(uint64_t a1)
{
  v2 = sub_1000C35B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C2CE0(uint64_t a1)
{
  v2 = sub_1000C35B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C2D1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000C33F4(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_1000C2E0C()
{
  result = qword_10016FCF8;
  if (!qword_10016FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FCF8);
  }

  return result;
}

uint64_t sub_1000C2E60(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C2EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C2F38()
{
  result = qword_10016FD10;
  if (!qword_10016FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD10);
  }

  return result;
}

uint64_t sub_1000C2F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetsuoDiscoverPageShelf();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C2FF0(uint64_t a1)
{
  v2 = type metadata accessor for TetsuoDiscoverPageShelf();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000C304C()
{
  result = qword_10016FD28;
  if (!qword_10016FD28)
  {
    sub_10000459C(&qword_10016A118, &unk_10010EEF0);
    sub_1000C30D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD28);
  }

  return result;
}

unint64_t sub_1000C30D0()
{
  result = qword_10016FD30;
  if (!qword_10016FD30)
  {
    sub_10000459C(&qword_10016A198, &qword_10010EF20);
    sub_1000C3184(&qword_10016FD38, &type metadata accessor for ImpressionMetrics);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD30);
  }

  return result;
}

uint64_t sub_1000C3184(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000C31CC()
{
  result = qword_10016FD40;
  if (!qword_10016FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD40);
  }

  return result;
}

uint64_t sub_1000C3220(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C3290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010011D5D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000C33F4(uint64_t *a1)
{
  v3 = sub_100002BE4(&qword_10016FD48, &qword_100117428);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10000524C(a1, v8);
  sub_1000C35B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[14] = 0;
    sub_1000C360C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v10[15];
    v10[13] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_1000052E4(a1);
  return v8;
}

unint64_t sub_1000C35B8()
{
  result = qword_10016FD50;
  if (!qword_10016FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD50);
  }

  return result;
}

unint64_t sub_1000C360C()
{
  result = qword_10016FD58;
  if (!qword_10016FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD58);
  }

  return result;
}

unint64_t sub_1000C3660()
{
  result = qword_10016FD68;
  if (!qword_10016FD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD68);
  }

  return result;
}

unint64_t sub_1000C372C()
{
  result = qword_10016FD80;
  if (!qword_10016FD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD80);
  }

  return result;
}

unint64_t sub_1000C3784()
{
  result = qword_10016FD88;
  if (!qword_10016FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD88);
  }

  return result;
}

unint64_t sub_1000C37DC()
{
  result = qword_10016FD90;
  if (!qword_10016FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD90);
  }

  return result;
}

unint64_t sub_1000C3834()
{
  result = qword_10016FD98;
  if (!qword_10016FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FD98);
  }

  return result;
}

unint64_t sub_1000C388C()
{
  result = qword_10016FDA0;
  if (!qword_10016FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FDA0);
  }

  return result;
}

unint64_t sub_1000C38E4()
{
  result = qword_10016FDA8;
  if (!qword_10016FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FDA8);
  }

  return result;
}

unint64_t sub_1000C393C()
{
  result = qword_10016FDB0;
  if (!qword_10016FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FDB0);
  }

  return result;
}

unint64_t sub_1000C3990()
{
  result = qword_10016FDB8;
  if (!qword_10016FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FDB8);
  }

  return result;
}

uint64_t sub_1000C39E4(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_1000C3A00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C3A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000C3A88(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1000C3AE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x646E696B24;
  if (v2 != 1)
  {
    v4 = 0x746E65746E69;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7463416775626564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  v7 = 0xE500000000000000;
  v8 = 0x646E696B24;
  if (*a2 != 1)
  {
    v8 = 0x746E65746E69;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7463416775626564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB000000006E6F69;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000C3BDC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C3C80()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C3D10()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C3DB0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C7E94(*a1);
  *a2 = result;
  return result;
}

void sub_1000C3DE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0xE500000000000000;
  v5 = 0x646E696B24;
  if (v2 != 1)
  {
    v5 = 0x746E65746E69;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7463416775626564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000C3E40()
{
  v1 = 0x646E696B24;
  if (*v0 != 1)
  {
    v1 = 0x746E65746E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463416775626564;
  }
}

unint64_t sub_1000C3E9C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C7E94(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C3EC4(uint64_t a1)
{
  v2 = sub_1000C625C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C3F00(uint64_t a1)
{
  v2 = sub_1000C625C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C3F3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v110 = a2;
  v102 = type metadata accessor for TetsuoDiscoverPageView(0);
  v2 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v94 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_100002BE4(&qword_10016FEA0, &qword_100117AD0);
  v4 = *(*(v103 - 1) + 64);
  __chkstk_darwin(v103);
  v101 = &v91 - v5;
  v109 = sub_100002BE4(&qword_10016FEA8, &unk_100117F80);
  v6 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v104 = &v91 - v7;
  v8 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v91 - v13;
  v15 = sub_100002BE4(&qword_10016FEB0, &qword_100117AD8);
  v95 = *(v15 - 8);
  v16 = *(v95 + 64);
  __chkstk_darwin(v15);
  v18 = &v91 - v17;
  v19 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v91 - v21;
  v23 = type metadata accessor for URL();
  v93 = *(v23 - 8);
  v24 = *(v93 + 64);
  __chkstk_darwin(v23);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100002BE4(&qword_10016FEB8, &unk_100117F70);
  v27 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v29 = &v91 - v28;
  v106 = sub_100002BE4(&qword_10016FEC0, &qword_100117AE0);
  v30 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v108 = &v91 - v31;
  v97 = sub_100002BE4(&qword_10016FEC8, &qword_100117AE8);
  v32 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v96 = (&v91 - v33);
  v107 = sub_100002BE4(&qword_10016FED0, &unk_100117AF0);
  v34 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v99 = &v91 - v35;
  sub_1000C7D44(v105, &v135);
  if (!v138)
  {
    v92 = v26;
    v50 = v93;
    v102 = v14;
    v103 = v12;
    v104 = v8;
    v105 = v29;
    v51 = v18;
    v122 = v135;
    v123 = v136;
    *&v124 = v137;
    sub_10002BFD4(&v122, &v111);
    sub_100002BE4(&qword_10016FE20, &qword_100117928);
    if (swift_dynamicCast())
    {
      v52 = v134;
      v101 = v133;
      URL.init(string:)();
      v53 = v50;
      v54 = v23;
      if ((*(v50 + 48))(v22, 1, v23) != 1)
      {
        v67 = v92;
        (*(v50 + 32))(v92, v22, v54);
        type metadata accessor for MetricsPipeline();
        v91 = v54;
        v68 = type metadata accessor for TVPageView();
        v69 = v51;
        v70 = &v51[v68[6]];
        BaseObjectGraph.inject<A>(_:)();
        (*(v53 + 16))(v51, v67, v54);
        v71 = &v51[v68[7]];
        type metadata accessor for BasicImpressionsTracker();
        v133 = BasicImpressionsTracker.__allocating_init(threshold:)();
        v134 = &protocol witness table for BasicImpressionsTracker;
        sub_100002BE4(&qword_10016A6F8, &unk_10010F740);
        State.init(wrappedValue:)();
        v72 = v112;
        *v71 = v111;
        *(v71 + 2) = v72;
        v73 = v68[8];
        v133 = 0;
        sub_100002BE4(&unk_10016E398, &qword_100117BA0);
        State.init(wrappedValue:)();
        *&v51[v73] = v111;
        v74 = v68[9];
        v75 = type metadata accessor for Date();
        v76 = v53;
        v77 = v102;
        (*(*(v75 - 8) + 56))(v102, 1, 1, v75);
        v100 = v52;
        sub_10000C178(v77, v103, &qword_10016B420, &qword_100110790);
        State.init(wrappedValue:)();
        sub_100009908(v77, &qword_10016B420, &qword_100110790);
        (*(v76 + 8))(v92, v91);
        v78 = v68[10];
        *(v69 + v78) = swift_getKeyPath();
        sub_100002BE4(&qword_10016A568, &unk_10010F530);
        swift_storeEnumTagMultiPayload();
        v79 = (v69 + v68[5]);
        v80 = v100;
        *v79 = v101;
        v79[1] = v80;
        v81 = (v69 + *(v15 + 36));
        *v81 = sub_1000C4EA4;
        v81[1] = 0;
        v81[2] = 0;
        v81[3] = 0;
        v56 = v105;
        sub_10001D504(v69, v105, &qword_10016FEB0, &qword_100117AD8);
        v55 = 0;
        goto LABEL_13;
      }

      sub_100009908(v22, &qword_10016BA40, &qword_100110FC0);
    }

    v55 = 1;
    v56 = v105;
LABEL_13:
    (*(v95 + 56))(v56, v55, 1, v15);
    sub_10000C178(v56, v96, &qword_10016FEB8, &unk_100117F70);
    swift_storeEnumTagMultiPayload();
    sub_100002BE4(&qword_10016FF20, &qword_100117B90);
    sub_1000C80C4();
    sub_1000C81F8();
    v82 = v99;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v82, v108, &qword_10016FED0, &unk_100117AF0);
    swift_storeEnumTagMultiPayload();
    sub_1000C8038();
    sub_1000C8380();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v82, &qword_10016FED0, &unk_100117AF0);
    sub_100009908(v56, &qword_10016FEB8, &unk_100117F70);
    v48 = &qword_10016FE78;
    v49 = &qword_100117978;
    goto LABEL_14;
  }

  if (v138 == 1)
  {
    v122 = v135;
    v123 = v136;
    *&v124 = v137;
    v36 = v94;
    sub_10002BFD4(&v122, v94);
    type metadata accessor for MetricsPipeline();
    v37 = v102;
    v38 = v36 + *(v102 + 20);
    BaseObjectGraph.inject<A>(_:)();
    v39 = v36 + v37[6];
    type metadata accessor for BasicImpressionsTracker();
    v133 = BasicImpressionsTracker.__allocating_init(threshold:)();
    v134 = &protocol witness table for BasicImpressionsTracker;
    sub_100002BE4(&qword_10016A6F8, &unk_10010F740);
    State.init(wrappedValue:)();
    v40 = v112;
    *v39 = v111;
    *(v39 + 16) = v40;
    v41 = (v36 + v37[7]);
    v133 = 0;
    State.init(wrappedValue:)();
    v42 = *(&v111 + 1);
    *v41 = v111;
    v41[1] = v42;
    v43 = (v36 + v37[8]);
    type metadata accessor for AppDelegate();
    sub_1000C8338(&qword_10016A710, type metadata accessor for AppDelegate);
    *v43 = EnvironmentObject.init()();
    v43[1] = v44;
    v45 = v37[9];
    *(v36 + v45) = swift_getKeyPath();
    sub_100002BE4(&qword_10016A488, &qword_10010F480);
    swift_storeEnumTagMultiPayload();
    v46 = v37[10];
    *(v36 + v46) = swift_getKeyPath();
    sub_100002BE4(&qword_10016A570, &unk_100113970);
    swift_storeEnumTagMultiPayload();
    sub_1000C7EF0(v36, v101);
    swift_storeEnumTagMultiPayload();
    sub_100002BE4(&qword_10016FED8, &unk_100117B70);
    sub_1000C8174(&qword_10016FEE0, &qword_10016FED8, &unk_100117B70, sub_1000C7F54);
    sub_1000C8338(&qword_10016FF08, type metadata accessor for TetsuoDiscoverPageView);
    v47 = v104;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v47, v108, &qword_10016FEA8, &unk_100117F80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8038();
    sub_1000C8380();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v47, &qword_10016FEA8, &unk_100117F80);
    sub_1000C8468(v36);
    v48 = &qword_10016FE68;
    v49 = &qword_100117970;
LABEL_14:
    v64 = &v122;
    return sub_100009908(v64, v48, v49);
  }

  if (*(&v136 + 1) | v137 | v135 | v136 | *(&v135 + 1))
  {
    v57 = static HorizontalAlignment.center.getter();
    v58 = static Color.blue.getter();
    v59 = static Edge.Set.all.getter();
    LOBYTE(v111) = 1;
    LOBYTE(v133) = 1;
    v122 = v57;
    LOBYTE(v123) = 1;
    *(&v123 + 1) = 0;
    LOBYTE(v124) = 1;
    *(&v124 + 1) = v58;
    LOBYTE(v125) = v59;
    *(&v125 + 1) = sub_1000C501C;
    v126 = 0uLL;
    *&v127 = 0;
    v60 = v125;
    v61 = v101;
    *(v101 + 32) = v124;
    *(v61 + 48) = v60;
    *(v61 + 64) = v126;
    *(v61 + 80) = 0;
    v62 = v123;
    *v61 = v122;
    *(v61 + 16) = v62;
    swift_storeEnumTagMultiPayload();
    sub_10000C178(&v122, &v111, &qword_10016FED8, &unk_100117B70);
    sub_100002BE4(&qword_10016FED8, &unk_100117B70);
    sub_1000C8174(&qword_10016FEE0, &qword_10016FED8, &unk_100117B70, sub_1000C7F54);
    sub_1000C8338(&qword_10016FF08, type metadata accessor for TetsuoDiscoverPageView);
    v63 = v104;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v63, v108, &qword_10016FEA8, &unk_100117F80);
    swift_storeEnumTagMultiPayload();
    sub_1000C8038();
    sub_1000C8380();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(&v122, &qword_10016FED8, &unk_100117B70);
    v64 = v63;
    v48 = &qword_10016FEA8;
    v49 = &unk_100117F80;
  }

  else
  {
    static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
    String.utf8CString.getter();

    has_internal_ui = os_variant_has_internal_ui();

    if (has_internal_ui)
    {

      sub_1000B6808(v66, 1, &v111);
      *&v120 = sub_1000C4E84;
      *(&v120 + 1) = 0;
      v121 = 0uLL;
      FeatureEligibilityState.rawValue.getter(&v111);
      v130 = v119;
      v131 = v120;
      v132 = v121;
      v126 = v115;
      v127 = v116;
      v128 = v117;
      v129 = v118;
      v122 = v111;
      v123 = v112;
      v124 = v113;
      v125 = v114;
    }

    else
    {
      sub_1000C84E8(&v122);
    }

    v84 = v131;
    v85 = v96;
    v96[8] = v130;
    v85[9] = v84;
    v85[10] = v132;
    v86 = v127;
    v85[4] = v126;
    v85[5] = v86;
    v87 = v129;
    v85[6] = v128;
    v85[7] = v87;
    v88 = v123;
    *v85 = v122;
    v85[1] = v88;
    v89 = v125;
    v85[2] = v124;
    v85[3] = v89;
    swift_storeEnumTagMultiPayload();
    sub_10000C178(&v122, &v111, &qword_10016FF20, &qword_100117B90);
    sub_100002BE4(&qword_10016FF20, &qword_100117B90);
    sub_1000C80C4();
    sub_1000C81F8();
    v90 = v99;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v90, v108, &qword_10016FED0, &unk_100117AF0);
    swift_storeEnumTagMultiPayload();
    sub_1000C8038();
    sub_1000C8380();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(&v122, &qword_10016FF20, &qword_100117B90);
    v64 = v90;
    v48 = &qword_10016FED0;
    v49 = &unk_100117AF0;
  }

  return sub_100009908(v64, v48, v49);
}

void sub_1000C4EC4(uint64_t (*a1)(void), const char *a2)
{
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100182048);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100006B44(0x74736544776F6C46, 0xEF6E6F6974616E69, &v9);
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 0xCu);
    sub_1000052E4(v7);
  }
}

uint64_t sub_1000C503C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016FDC0, &qword_1001178A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26[-1] - v8;
  v10 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_1000C625C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v30[0]) = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v11;
    v14 = v12 == 0x6775626564 && v11 == 0xE500000000000000;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      (*(v6 + 8))(v9, v5);

      v15 = 0;
      v16 = 0uLL;
      v17 = 2;
      v18 = 0uLL;
    }

    else
    {
      v20 = v12 == 0x656761507674 && v13 == 0xE600000000000000;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        LOBYTE(v27) = 2;
        KeyedDecodingContainer.superDecoder(forKey:)();
        sub_10002BFD4(v30, v26);
        sub_1000C5498(v26, &v27);
        sub_1000052E4(v30);
        (*(v6 + 8))(v9, v5);
        v17 = 0;
        v16 = v27;
        v18 = v28;
      }

      else
      {
        v21 = v12 == 0x7974706D65 && v13 == 0xE500000000000000;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          (*(v6 + 8))(v9, v5);

          v15 = 0;
          v16 = xmmword_1001177B0;
          v18 = 0uLL;
          v17 = 2;
          goto LABEL_8;
        }

        if (v12 == 0xD00000000000001CLL && 0x800000010011F910 == v13)
        {
        }

        else
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v23 & 1) == 0)
          {
            v24 = a1[4];
            sub_10000524C(a1, a1[3]);
            dispatch thunk of Decoder.unkeyedContainer()();
            type metadata accessor for DecodingError();
            swift_allocError();
            static DecodingError.dataCorruptedError(in:debugDescription:)();
            sub_1000052E4(v30);
            swift_willThrow();
            (*(v6 + 8))(v9, v5);
            return sub_1000052E4(a1);
          }
        }

        LOBYTE(v27) = 2;
        KeyedDecodingContainer.superDecoder(forKey:)();
        sub_10002BFD4(v30, v26);
        sub_1000C59D8(v26, &v27);
        sub_1000052E4(v30);
        (*(v6 + 8))(v9, v5);
        v16 = v27;
        v18 = v28;
        v17 = 1;
      }

      v15 = v29;
    }

LABEL_8:
    *a2 = v16;
    *(a2 + 16) = v18;
    *(a2 + 32) = v15;
    *(a2 + 40) = v17;
  }

  return sub_1000052E4(a1);
}

uint64_t sub_1000C5498@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v43 = a2;
  v4 = sub_100002BE4(&qword_10016FDD0, &qword_1001178B0);
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v46 = &v42 - v6;
  v7 = sub_100002BE4(&qword_10016FDD8, &qword_1001178B8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v42 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = (&v42 - v16);
  __chkstk_darwin(v15);
  v19 = &v42 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v53 = a1;
  sub_10000524C(a1, v21);
  sub_1000C62B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    *v17 = v2;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10001D504(v14, v17, &qword_10016FDD8, &qword_1001178B8);
  }

  sub_10001D504(v17, v19, &qword_10016FDD8, &qword_1001178B8);
  sub_10000C178(v19, v11, &qword_10016FDD8, &qword_1001178B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100009908(v11, &qword_10016FDD8, &qword_1001178B8);
LABEL_9:
    v25 = sub_100002BE4(&qword_10016FDE8, &qword_1001178C0);
    v26 = v53;
    sub_1000C7448(v25, v53, &v49);
    goto LABEL_10;
  }

  v23 = v44;
  v22 = v45;
  v24 = v46;
  (*(v44 + 32))(v46, v11, v45);
  v42 = xmmword_1001177C0;
  v49 = xmmword_1001177C0;
  v50 = 1;
  if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
  {
    (*(v23 + 8))(v24, v22);
    goto LABEL_9;
  }

  v49 = v42;
  v50 = 1;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v30;
  v32 = sub_1000C70B8();
  if (!*(v32 + 16) || (v33 = sub_10006889C(v29, v31), (v34 & 1) == 0))
  {

    v49 = v42;
    v50 = 1;
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v47 = 0xD000000000000051;
    v48 = 0x800000010011F960;
    v38._countAndFlagsBits = v29;
    v38._object = v31;
    String.append(_:)(v38);

    v39._countAndFlagsBits = 96;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100012C48(&qword_10016FDF0, &qword_10016FDD0, &qword_1001178B0);
    v40 = v46;
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();

    swift_willThrow();
    (*(v23 + 8))(v40, v22);
    sub_100009908(v19, &qword_10016FDD8, &qword_1001178B8);
    v26 = v53;
    return sub_1000052E4(v26);
  }

  v35 = v33;

  v36 = *(*(v32 + 56) + 8 * v35);

  v37 = v36;
  v26 = v53;
  sub_1000C7448(v37, v53, &v49);
  (*(v23 + 8))(v46, v22);
LABEL_10:
  sub_100009908(v19, &qword_10016FDD8, &qword_1001178B8);
  sub_10002BF6C(&v49, v51);
  v27 = v51[1];
  v28 = v43;
  *v43 = v51[0];
  v28[1] = v27;
  *(v28 + 4) = v52;
  return sub_1000052E4(v26);
}

uint64_t sub_1000C59D8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v43 = a2;
  v4 = sub_100002BE4(&qword_10016FDD0, &qword_1001178B0);
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v46 = &v42 - v6;
  v7 = sub_100002BE4(&qword_10016FDD8, &qword_1001178B8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v42 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = (&v42 - v16);
  __chkstk_darwin(v15);
  v19 = &v42 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v53 = a1;
  sub_10000524C(a1, v21);
  sub_1000C62B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    *v17 = v2;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10001D504(v14, v17, &qword_10016FDD8, &qword_1001178B8);
  }

  sub_10001D504(v17, v19, &qword_10016FDD8, &qword_1001178B8);
  sub_10000C178(v19, v11, &qword_10016FDD8, &qword_1001178B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100009908(v11, &qword_10016FDD8, &qword_1001178B8);
LABEL_9:
    v25 = sub_100002BE4(&qword_10016FE48, &qword_100117950);
    v26 = v53;
    sub_1000C71E4(v25, v53, &v49);
    goto LABEL_10;
  }

  v23 = v44;
  v22 = v45;
  v24 = v46;
  (*(v44 + 32))(v46, v11, v45);
  v42 = xmmword_1001177C0;
  v49 = xmmword_1001177C0;
  v50 = 1;
  if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
  {
    (*(v23 + 8))(v24, v22);
    goto LABEL_9;
  }

  v49 = v42;
  v50 = 1;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v30;
  v32 = sub_1000C6F8C();
  if (!*(v32 + 16) || (v33 = sub_10006889C(v29, v31), (v34 & 1) == 0))
  {

    v49 = v42;
    v50 = 1;
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v47 = 0xD00000000000005BLL;
    v48 = 0x800000010011FA00;
    v38._countAndFlagsBits = v29;
    v38._object = v31;
    String.append(_:)(v38);

    v39._countAndFlagsBits = 96;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    type metadata accessor for DecodingError();
    swift_allocError();
    sub_100012C48(&qword_10016FDF0, &qword_10016FDD0, &qword_1001178B0);
    v40 = v46;
    static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();

    swift_willThrow();
    (*(v23 + 8))(v40, v22);
    sub_100009908(v19, &qword_10016FDD8, &qword_1001178B8);
    v26 = v53;
    return sub_1000052E4(v26);
  }

  v35 = v33;

  v36 = *(*(v32 + 56) + 8 * v35);

  v37 = v36;
  v26 = v53;
  sub_1000C71E4(v37, v53, &v49);
  (*(v23 + 8))(v46, v22);
LABEL_10:
  sub_100009908(v19, &qword_10016FDD8, &qword_1001178B8);
  sub_10002BF6C(&v49, v51);
  v27 = v51[1];
  v28 = v43;
  *v43 = v51[0];
  v28[1] = v27;
  *(v28 + 4) = v52;
  return sub_1000052E4(v26);
}

uint64_t sub_1000C5F18(void *a1)
{
  v3 = v1;
  v5 = sub_100002BE4(&qword_10016FE60, &qword_100117968);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_1000C625C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000C7D44(v3, &v22);
  if (!v25)
  {
    v19 = v22;
    v20 = v23;
    v21 = v24;
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      v11 = &qword_10016FE78;
      v12 = &qword_100117978;
      goto LABEL_11;
    }

    v18 = 2;
    v13 = &qword_10016FE78;
    v14 = &qword_100117978;
    sub_100002BE4(&qword_10016FE78, &qword_100117978);
    v15 = &unk_10016FE80;
LABEL_10:
    sub_100012C48(v15, v13, v14);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v13;
    v12 = v14;
    goto LABEL_11;
  }

  if (v25 == 1)
  {
    v19 = v22;
    v20 = v23;
    v21 = v24;
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      v11 = &qword_10016FE68;
      v12 = &qword_100117970;
LABEL_11:
      sub_100009908(&v19, v11, v12);
      return (*(v6 + 8))(v9, v5);
    }

    v18 = 2;
    v13 = &qword_10016FE68;
    v14 = &qword_100117970;
    sub_100002BE4(&qword_10016FE68, &qword_100117970);
    v15 = &unk_10016FE70;
    goto LABEL_10;
  }

  LOBYTE(v19) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000C625C()
{
  result = qword_10016FDC8;
  if (!qword_10016FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FDC8);
  }

  return result;
}

unint64_t sub_1000C62B0()
{
  result = qword_10016FDE0;
  if (!qword_10016FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FDE0);
  }

  return result;
}

uint64_t *sub_1000C6304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v110 = a2;
  v100 = a3;
  v4 = type metadata accessor for JSONObject();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v99 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for AnyIntentTypes();
  v105 = *(v107 - 8);
  v7 = *(v105 + 64);
  __chkstk_darwin(v107);
  v103 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_10016FE30, &qword_100117938);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v101 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v93 - v13;
  v104 = sub_100002BE4(&qword_10016FE38, &unk_100117940);
  v15 = *(v104 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v104);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v102 = &v93 - v21;
  __chkstk_darwin(v20);
  v23 = &v93 - v22;
  v24 = type metadata accessor for JSONContext();
  v108 = *(v24 - 8);
  v109 = v24;
  v25 = *(v108 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v31 = &v93 - v30;
  v32 = __chkstk_darwin(v29);
  v116 = &v93 - v33;
  __chkstk_darwin(v32);
  v35 = &v93 - v34;
  v36 = a1;
  v37 = sub_1000C7C18(a1);
  if (v37)
  {
    v98 = v38;
    v99 = v39;
    v101 = v37;
    v40 = *(v110 + 32);
    sub_10000524C(v110, *(v110 + 24));
    dispatch thunk of Decoder.userInfo.getter();
    JSONContext.init(userInfo:)();
    static JSONContext.Property<A>.intentTypes.getter();
    v41 = v107;
    JSONContext.subscript.getter();
    v42 = *(v15 + 8);
    v43 = v104;
    v42(v23, v104);
    v44 = v105;
    v45 = (*(v105 + 48))(v14, 1, v41);
    sub_100009908(v14, &qword_10016FE30, &qword_100117938);
    v46 = v109;
    if (v45 == 1)
    {
      sub_1000C7CF0();
      v47 = v103;
      AnyIntentTypes.init(_:)();
      v48 = v102;
      static JSONContext.Property<A>.intentTypes.getter();
      JSONContext.addingValue<A>(_:forProperty:)();
      v49 = v48;
      v46 = v109;
      v42(v49, v43);
      (*(v44 + 8))(v47, v41);
      v50 = v108;
      (*(v108 + 8))(v35, v46);
      (*(v50 + 32))(v35, v116, v46);
    }

    v51 = *(v110 + 32);
    sub_10000524C(v110, *(v110 + 24));
    v52 = v108;
    (*(v108 + 16))(v116, v35, v46);
    Dictionary<>.init(jsonContext:)();
    Decoder.withUserInfo(_:)();

    *&v114 = v101;
    *(&v114 + 1) = v98;
    v115 = v99;
    sub_100020014(&v112);
    v53 = v106;
    dispatch thunk of Decodable.init(from:)();
    if (v53)
    {
      (*(v52 + 8))(v35, v46);
      return sub_1000C7CA0(&v112);
    }

    v110 = v114;
    v76 = v114;
    v77 = sub_10000524C(&v112, v114);
    v78 = v100;
    *(v100 + 24) = v110;
    v79 = sub_100020014(v78);
    (*(*(v76 - 8) + 16))(v79, v77, v76);
    (*(v52 + 8))(v35, v46);
    return sub_1000052E4(&v112);
  }

  v55 = v19;
  v56 = v101;
  v97 = v28;
  v98 = v31;
  v57 = v15;
  v58 = v107;
  v59 = v36;
  v60 = sub_1000C7C18(v36);
  if (v60)
  {
    v94 = v62;
    v95 = v61;
    v96 = v60;
    v63 = *(v110 + 32);
    sub_10000524C(v110, *(v110 + 24));
    dispatch thunk of Decoder.userInfo.getter();
    v64 = v98;
    JSONContext.init(userInfo:)();
    static JSONContext.Property<A>.intentTypes.getter();
    v65 = v56;
    v66 = v64;
    JSONContext.subscript.getter();
    v67 = *(v57 + 8);
    v68 = v55;
    v69 = v104;
    v67(v68, v104);
    v70 = v105;
    LODWORD(v64) = (*(v105 + 48))(v65, 1, v58);
    sub_100009908(v65, &qword_10016FE30, &qword_100117938);
    v71 = v108;
    if (v64 == 1)
    {
      sub_1000C7CF0();
      v72 = v103;
      AnyIntentTypes.init(_:)();
      v73 = v102;
      static JSONContext.Property<A>.intentTypes.getter();
      JSONContext.addingValue<A>(_:forProperty:)();
      v67(v73, v69);
      (*(v70 + 8))(v72, v58);
      v74 = v109;
      (*(v71 + 8))(v98, v109);
      v66 = v98;
      (*(v71 + 32))(v98, v116, v74);
    }

    sub_10002BFD4(v110, v111);
    v75 = v106;
    JSONObject.init(from:)();
    if (v75)
    {
      return (*(v71 + 8))(v66, v109);
    }

    v87 = v109;
    (*(v71 + 16))(v97, v66, v109);
    *&v114 = v96;
    *(&v114 + 1) = v95;
    v115 = v94;
    sub_100020014(&v112);
    dispatch thunk of ExpressibleByJSON.init(deserializing:using:)();
    v88 = v114;
    v89 = v115;
    v90 = sub_10000524C(&v112, v114);
    v91 = v100;
    *(v100 + 24) = v88;
    v91[4] = v89;
    v92 = sub_100020014(v91);
    (*(*(v88 - 8) + 16))(v92, v90, v88);
    (*(v71 + 8))(v66, v87);
    return sub_1000052E4(&v112);
  }

  v80 = type metadata accessor for DecodingError();
  swift_allocError();
  v82 = v81;
  v83 = *(sub_100002BE4(&qword_100169D10, &qword_100119030) + 48);
  *v82 = v59;
  v84 = *(v110 + 32);
  sub_10000524C(v110, *(v110 + 24));
  dispatch thunk of Decoder.codingPath.getter();
  v112 = 0;
  v113 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v112 = 60;
  v113 = 0xE100000000000000;
  v85._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v85);

  v86._object = 0x800000010011F9E0;
  v86._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v86);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v80 - 8) + 104))(v82, enum case for DecodingError.typeMismatch(_:), v80);
  return swift_willThrow();
}

unint64_t sub_1000C6D64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002BE4(&qword_10016FE00, &qword_1001178D0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v23 = *(*(a1 + 56) + v14);

        sub_100002BE4(&qword_10016FE08, &qword_1001178D8);
        sub_100002BE4(&qword_10016FE10, &qword_1001178E0);
        swift_dynamicCast();
        result = sub_10006889C(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;

          *(v2[7] + 8 * v11) = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          *(v2[7] + 8 * result) = v24;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1000C6F8C()
{
  if (qword_100168FC0 != -1)
  {
    swift_once();
  }

  v0 = sub_1000C6D64(qword_1001821E0);
  type metadata accessor for TetsuoDiscoverFeedPage();
  v1 = static StaticIntent.kind.getter();
  v3 = v2;
  v4 = sub_100002BE4(&qword_10016FE48, &qword_100117950);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000C76AC(v4, v1, v3, isUniquelyReferenced_nonNull_native);

  v6 = static SidepackedIntent.kind.getter();
  v8 = v7;
  v9 = sub_100002BE4(&qword_10016FE50, &qword_100117958);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000C76AC(v9, v6, v8, v10);

  return v0;
}

unint64_t sub_1000C70B8()
{
  if (qword_100168FC0 != -1)
  {
    swift_once();
  }

  v0 = sub_1000C6D64(qword_1001821E0);
  v1 = static StaticIntent.kind.getter();
  v3 = v2;
  v4 = sub_100002BE4(&qword_10016FDE8, &qword_1001178C0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000C76AC(v4, v1, v3, isUniquelyReferenced_nonNull_native);

  v6 = static SidepackedIntent.kind.getter();
  v8 = v7;
  v9 = sub_100002BE4(&qword_10016FDF8, &qword_1001178C8);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000C76AC(v9, v6, v8, v10);

  return v0;
}

uint64_t *sub_1000C71E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1000C6304(a1, a2, v20);
  if (!v3)
  {
    sub_10002BFD4(v20, v19);
    sub_100002BE4(&qword_10016FE18, &qword_1001178E8);
    sub_100002BE4(&qword_10016FE58, &qword_100117960);
    if (swift_dynamicCast())
    {
      sub_10002BF6C(&v18, a3);
    }

    else
    {
      v7 = type metadata accessor for EncodingError();
      swift_allocError();
      v9 = v8;
      v10 = *(sub_100002BE4(&qword_10016FE28, &qword_100117930) + 48);
      v11 = v21;
      v12 = sub_10000524C(v20, v21);
      v9[3] = v11;
      v13 = sub_100020014(v9);
      (*(*(v11 - 8) + 16))(v13, v12, v11);
      v14 = a2[4];
      sub_10000524C(a2, a2[3]);
      dispatch thunk of Decoder.codingPath.getter();
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(23);
      sub_10000524C(v20, v21);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v15._object = 0x800000010011F9C0;
      v15._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v15);
      v16._countAndFlagsBits = 0xD000000000000016;
      v16._object = 0x800000010011FA60;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 62;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, enum case for EncodingError.invalidValue(_:), v7);
      swift_willThrow();
    }

    return sub_1000052E4(v20);
  }

  return result;
}

uint64_t *sub_1000C7448@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1000C6304(a1, a2, v20);
  if (!v3)
  {
    sub_10002BFD4(v20, v19);
    sub_100002BE4(&qword_10016FE18, &qword_1001178E8);
    sub_100002BE4(&qword_10016FE20, &qword_100117928);
    if (swift_dynamicCast())
    {
      sub_10002BF6C(&v18, a3);
    }

    else
    {
      v7 = type metadata accessor for EncodingError();
      swift_allocError();
      v9 = v8;
      v10 = *(sub_100002BE4(&qword_10016FE28, &qword_100117930) + 48);
      v11 = v21;
      v12 = sub_10000524C(v20, v21);
      v9[3] = v11;
      v13 = sub_100020014(v9);
      (*(*(v11 - 8) + 16))(v13, v12, v11);
      v14 = a2[4];
      sub_10000524C(a2, a2[3]);
      dispatch thunk of Decoder.codingPath.getter();
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(23);
      sub_10000524C(v20, v21);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      v15._object = 0x800000010011F9C0;
      v15._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v15);
      v16._countAndFlagsBits = 0x6E49656761505654;
      v16._object = 0xEC000000746E6574;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 62;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      EncodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, enum case for EncodingError.invalidValue(_:), v7);
      swift_willThrow();
    }

    return sub_1000052E4(v20);
  }

  return result;
}

unint64_t sub_1000C76AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10006889C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000C7978(v16, a4 & 1);
      v20 = *v5;
      result = sub_10006889C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000C7810();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

void *sub_1000C7810()
{
  v1 = v0;
  sub_100002BE4(&qword_10016FE00, &qword_1001178D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000C7978(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002BE4(&qword_10016FE00, &qword_1001178D0);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000C7C18(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1000C7CA0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

unint64_t sub_1000C7CF0()
{
  result = qword_10016FE40;
  if (!qword_10016FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FE40);
  }

  return result;
}

unint64_t sub_1000C7D90()
{
  result = qword_10016FE88;
  if (!qword_10016FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FE88);
  }

  return result;
}

unint64_t sub_1000C7DE8()
{
  result = qword_10016FE90;
  if (!qword_10016FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FE90);
  }

  return result;
}

unint64_t sub_1000C7E40()
{
  result = qword_10016FE98;
  if (!qword_10016FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FE98);
  }

  return result;
}

unint64_t sub_1000C7E94(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A060, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000C7EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetsuoDiscoverPageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C7F54()
{
  result = qword_10016FEE8;
  if (!qword_10016FEE8)
  {
    sub_10000459C(&qword_10016FEF0, &unk_100117F90);
    sub_100012C48(&qword_10016FEF8, &qword_10016FF00, &unk_100117B80);
    sub_100012C48(&qword_100169FD8, &qword_100169FE0, &qword_10010EBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FEE8);
  }

  return result;
}

unint64_t sub_1000C8038()
{
  result = qword_10016FF10;
  if (!qword_10016FF10)
  {
    sub_10000459C(&qword_10016FED0, &unk_100117AF0);
    sub_1000C80C4();
    sub_1000C81F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FF10);
  }

  return result;
}

unint64_t sub_1000C80C4()
{
  result = qword_10016FF18;
  if (!qword_10016FF18)
  {
    sub_10000459C(&qword_10016FF20, &qword_100117B90);
    sub_1000C8174(&qword_10016FF28, &qword_10016FF30, &qword_100117B98, sub_100091DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FF18);
  }

  return result;
}

uint64_t sub_1000C8174(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000C81F8()
{
  result = qword_10016FF38;
  if (!qword_10016FF38)
  {
    sub_10000459C(&qword_10016FEB8, &unk_100117F70);
    sub_1000C827C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FF38);
  }

  return result;
}

unint64_t sub_1000C827C()
{
  result = qword_10016FF40;
  if (!qword_10016FF40)
  {
    sub_10000459C(&qword_10016FEB0, &qword_100117AD8);
    sub_1000C8338(&qword_10016FF48, type metadata accessor for TVPageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FF40);
  }

  return result;
}

uint64_t sub_1000C8338(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000C8380()
{
  result = qword_10016FF50;
  if (!qword_10016FF50)
  {
    sub_10000459C(&qword_10016FEA8, &unk_100117F80);
    sub_1000C8174(&qword_10016FEE0, &qword_10016FED8, &unk_100117B70, sub_1000C7F54);
    sub_1000C8338(&qword_10016FF08, type metadata accessor for TetsuoDiscoverPageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FF50);
  }

  return result;
}

uint64_t sub_1000C8468(uint64_t a1)
{
  v2 = type metadata accessor for TetsuoDiscoverPageView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000C84E8(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1000C8508()
{
  v0 = type metadata accessor for ActionMetrics();
  v22 = *(v0 - 8);
  v23 = v0;
  v1 = *(v22 + 64);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002BE4(&qword_10016FF58, &qword_100117BD8);
  v4 = (type metadata accessor for FlowAction() - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10010D3B0;
  v8 = (v7 + v6);
  static ActionMetrics.notInstrumented.getter();
  v21 = sub_1000C86F8();
  v10 = v9;
  v12 = v11;
  v13 = sub_1000C88E4();
  v14 = static FlowActionPresentation.tabSelect.getter();
  v16 = v15;
  *v8 = 0xD000000000000013;
  v8[1] = 0x800000010011FAA0;
  result = (*(v22 + 32))(v7 + v6 + v4[7], v3, v23);
  v18 = v7 + v6 + v4[8];
  *v18 = v21;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = &type metadata for TetsuoDiscoverFeedPageIntent;
  *(v18 + 32) = v13;
  *(v18 + 40) = 1;
  v19 = (v7 + v6 + v4[9]);
  *v19 = v14;
  v19[1] = v16;
  qword_1001821D8 = v7;
  return result;
}

uint64_t sub_1000C86F8()
{
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (!has_internal_ui)
  {
    return 0x3836313339333736;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.discoveryFeedToUse.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 stringForKey:v2];

  if (!v3)
  {
    return 0x3836313339333736;
  }

  v4 = 0x3532373039373031;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == 0x3532373039373031 && v7 == 0xEB00000000323934 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_6;
  }

  if (v5 == 0x3836313339333736 && v7 == 0xEA00000000003335 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0x3836313339333736;
  }

  v4 = 0x3639393230343736;
  if (v5 != 0x3639393230343736 || v7 != 0xEA00000000003134)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      return v4;
    }

    return 0x3836313339333736;
  }

LABEL_6:

  return v4;
}

unint64_t sub_1000C88E4()
{
  result = qword_10016FF60;
  if (!qword_10016FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016FF60);
  }

  return result;
}

id sub_1000C8938()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v12, "init");
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100182048);
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
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - Creating JS Logging Service", v5, 0xCu);
    sub_1000052E4(v6);
  }

  return v1;
}

void sub_1000C8BCC(void *a1, uint64_t (*a2)(void))
{
  v3 = [a1 toString];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (qword_100168E68 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006B0C(v8, qword_100182060);

    oslog = Logger.logObject.getter();
    v9 = a2();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      v12 = sub_100006B44(v5, v7, &v14);

      *(v10 + 4) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v9, "%s", v10, 0xCu);
      sub_1000052E4(v11);
    }

    else
    {
    }
  }
}

void sub_1000C8D84()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x5F455341454C4552;
  v1._object = 0xED00005345544F4ELL;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  xmmword_10016FF90 = v4;
}

id sub_1000C8ECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LearnMoreLinkWebView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000C8F4C()
{
  result = qword_100170030;
  if (!qword_100170030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170030);
  }

  return result;
}

id sub_1000C8FA0()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1000C9160();
}

id sub_1000C8FA8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for LearnMoreLinkWebView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV17AppleVisionProApp20LearnMoreLinkWebView11Coordinator_onClose];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_1000C901C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C910C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000C9080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C910C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000C90E4()
{
  sub_1000C910C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000C910C()
{
  result = qword_100170038;
  if (!qword_100170038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170038);
  }

  return result;
}

id sub_1000C9160()
{
  v0 = objc_allocWithZone(WKUserScript);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSource:v1 injectionTime:1 forMainFrameOnly:1];

  v3 = [objc_allocWithZone(WKUserContentController) init];
  [v3 addUserScript:v2];
  v4 = [objc_allocWithZone(WKWebViewConfiguration) init];
  [v4 setUserContentController:v3];
  v5 = [objc_allocWithZone(WKWebView) initWithFrame:v4 configuration:{0.0, 0.0, 0.0, 0.0}];
  v6 = String._bridgeToObjectiveC()();

  sub_100002BE4(&unk_100170040, &unk_100117D20);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v5 setNavigationDelegate:v14];

  v7 = [objc_allocWithZone(UIViewController) init];
  [v7 setView:v5];
  v8 = [v7 navigationItem];
  UIViewControllerRepresentableContext.coordinator.getter();
  v9 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v14 action:"onCloseButtonTapped"];

  [v8 setRightBarButtonItem:v9];
  v10 = [v7 navigationItem];
  if (qword_100168FB8 != -1)
  {
    swift_once();
  }

  v11 = String._bridgeToObjectiveC()();
  [v10 setTitle:v11];

  v12 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v7];
  return v12;
}

void sub_1000C9450(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[14];
  if (v5 <= a1)
  {
    v5 = a1;
  }

  v1[14] = v5;
  if (qword_100168E38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006B0C(v6, qword_100181FD0);
  swift_retain_n();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315650;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100006B44(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = a1;
    *(v9 + 22) = 2048;
    v14 = v2[14];

    *(v9 + 24) = v14;

    _os_log_impl(&_mh_execute_header, v7, v8, "%s did display item at: %ld; lowestItemDisplayed: %ld", v9, 0x20u);
    sub_1000052E4(v10);
  }

  else
  {
  }
}

void sub_1000C9624()
{
  v1 = *v0;
  if (v0[14] >= 1)
  {
    v2 = v0;
    if (qword_100168E38 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006B0C(v3, qword_100181FD0);
    swift_retain_n();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315394;
      v8 = _typeName(_:qualified:)();
      v10 = sub_100006B44(v8, v9, &v12);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2048;
      v11 = v2[14];

      *(v6 + 14) = v11;

      _os_log_impl(&_mh_execute_header, v4, v5, "%s submitting lowestItemDisplayed: %ld", v6, 0x16u);
      sub_1000052E4(v7);
    }

    else
    {
    }

    sub_10004C818(v2[14]);
    v2[14] = 0;
  }
}

uint64_t sub_1000C97F4()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000C9878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  started = type metadata accessor for JetStartUpCoordinator();
  v7 = *(started - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, started);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000C9958(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for JetStartUpCoordinator();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for DiscoveryFeedView()
{
  result = qword_100170178;
  if (!qword_100170178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C9A60()
{
  type metadata accessor for JetStartUpCoordinator();
  if (v0 <= 0x3F)
  {
    sub_1000C9AE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000C9AE4()
{
  if (!qword_100170188)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100170188);
    }
  }
}

Swift::Int sub_1000C9B40()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C9C0C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C9CC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C9D8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CD9A0(*a1);
  *a2 = result;
  return result;
}

void sub_1000C9DBC(uint64_t *a1@<X8>)
{
  v2 = 0xED00006465747261;
  v3 = 0x7453746559746F6ELL;
  v4 = 0x73736563637573;
  if (*v1 != 2)
  {
    v4 = 0x6572756C696166;
  }

  if (*v1)
  {
    v3 = 0x676E6964616F6CLL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_1000C9E48()
{
  result = qword_1001701B8;
  if (!qword_1001701B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001701B8);
  }

  return result;
}

uint64_t sub_1000C9EB8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_100002BE4(&qword_1001701C0, &qword_100117EB8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v23 = sub_100002BE4(&qword_1001701C8, &qword_100117EC0);
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v23);
  v9 = &v22 - v8;
  *v5 = static Alignment.center.getter();
  v5[1] = v10;
  v11 = sub_100002BE4(&qword_1001701D0, &qword_100117EC8);
  sub_1000CA18C(v1, v5 + *(v11 + 44));
  v12 = type metadata accessor for DiscoveryFeedStateProvider();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_10000C8CC();
  v15 = sub_100012C48(&qword_1001701D8, &qword_1001701C0, &qword_100117EB8);
  v16 = sub_1000CD958(&qword_100169930, type metadata accessor for DiscoveryFeedStateProvider);
  View.environment<A>(_:)();

  sub_1000CCF98(v5);
  v17 = v1 + *(type metadata accessor for DiscoveryFeedView() + 20);
  v18 = *v17;
  v19 = *(v17 + 8);
  LOBYTE(v25) = v18;
  v26 = v19;
  sub_100002BE4(&qword_1001701E0, &qword_100117ED0);
  State.wrappedValue.getter();
  v25 = v2;
  v26 = v12;
  v27 = v15;
  v28 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1000C9E48();
  v20 = v23;
  View.onChange<A>(of:initial:_:)();
  return (*(v6 + 8))(v9, v20);
}

void sub_1000CA18C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  started = type metadata accessor for JetStartUpDecoration();
  v53 = *(started - 8);
  v54 = started;
  v4 = *(v53 + 64);
  __chkstk_darwin(started);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for JetStartUpCoordinator();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v45);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DiscoveryFeedView();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100002BE4(&qword_1001701E8, &qword_100117ED8);
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v16 = sub_100002BE4(&qword_1001701F0, &qword_100117EE0);
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v51 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v48 = &v41 - v21;
  type metadata accessor for AppDelegate();
  sub_1000CD958(&qword_10016A710, type metadata accessor for AppDelegate);
  v22 = EnvironmentObject.init()();
  v46 = v23;
  v47 = v22;
  if (qword_100168F20 != -1)
  {
    swift_once();
  }

  v56 = qword_100182178;
  type metadata accessor for ProductPagePresentation();

  State.init(wrappedValue:)();
  v43 = v58;
  v44 = v57;
  sub_1000CD064(a1, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = a1;
  v25 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v26 = swift_allocObject();
  sub_1000CD1B4(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  (*(v6 + 16))(v9, v24, v45);
  sub_100002BE4(&qword_1001701F8, &qword_100117EE8);
  type metadata accessor for _JetViewDefaultWorking();
  type metadata accessor for _JetViewDefaultFailed();
  sub_100012C48(&qword_100170200, &qword_1001701F8, &qword_100117EE8);
  sub_1000CD958(&qword_100170208, &type metadata accessor for _JetViewDefaultWorking);
  sub_1000CD958(&qword_100170210, &type metadata accessor for _JetViewDefaultFailed);
  Jet.init(startUpWith:working:failed:content:)();
  v28 = v52;
  v27 = v53;
  v29 = v54;
  (*(v53 + 104))(v52, enum case for JetStartUpDecoration.none(_:), v54);
  sub_100012C48(&qword_100170218, &qword_1001701E8, &qword_100117ED8);
  v30 = v48;
  v31 = v50;
  View.startUpDecoration(_:)();
  (*(v27 + 8))(v28, v29);
  (*(v49 + 8))(v15, v31);
  v32 = v17[2];
  v33 = v51;
  v32(v51, v30, v16);
  v34 = v55;
  v35 = v46;
  v36 = v47;
  *v55 = v47;
  *(v34 + 1) = v35;
  v37 = v43;
  *(v34 + 2) = v44;
  *(v34 + 3) = v37;
  v38 = sub_100002BE4(&qword_100170220, &qword_100117EF0);
  v32(&v34[*(v38 + 48)], v33, v16);
  v39 = v17[1];
  v40 = v36;

  v39(v30, v16);
  v39(v33, v16);
}

uint64_t sub_1000CA82C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DiscoveryFeedView();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4 - 8);
  started = type metadata accessor for JetStartUpCoordinator();
  v7 = *(started - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(started);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Dependency();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, started);
  Dependency.init<A>(satisfying:with:)();
  v15 = dispatch thunk of BaseObjectGraph.adding(dependency:)();
  sub_1000CAB6C(v15, a2);
  sub_1000CD064(a1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v17 = swift_allocObject();
  sub_1000CD1B4(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *(v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v18 = (a2 + *(sub_100002BE4(&qword_100170228, &unk_100117EF8) + 36));
  *v18 = sub_1000CD398;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  v19 = objc_opt_self();

  v20 = [v19 defaultCenter];
  v21 = String._bridgeToObjectiveC()();
  v22 = sub_100002BE4(&qword_1001701F8, &qword_100117EE8);
  v23 = a2 + *(v22 + 52);
  NSNotificationCenter.publisher(for:object:)();

  result = (*(v11 + 8))(v14, v27);
  v25 = (a2 + *(v22 + 56));
  *v25 = sub_1000CC768;
  v25[1] = 0;
  return result;
}

uint64_t sub_1000CAB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v43 = a2;
  v3 = sub_100002BE4(&qword_100170238, &qword_100117F30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v35 - v6;
  v8 = sub_100002BE4(&qword_100170240, &qword_100117F38);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v35 - v10;
  v39 = sub_100002BE4(&qword_100170248, &qword_100117F40);
  v12 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v41 = v35 - v13;
  v14 = sub_100002BE4(&qword_100170250, &unk_100117F48);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v42 = v35 - v16;
  v17 = sub_100002BE4(&unk_100170700, &unk_1001153F0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v35 - v22;
  v40 = sub_100002BE4(&qword_100170258, &qword_100117F58);
  v37 = *(v40 - 8);
  v24 = *(v37 + 64);
  __chkstk_darwin(v40);
  v36 = v35 - v25;
  v26 = (v2 + *(type metadata accessor for DiscoveryFeedView() + 20));
  v27 = *v26;
  v28 = *(v26 + 1);
  v45 = v27;
  v46 = v28;
  sub_100002BE4(&qword_1001701E0, &qword_100117ED0);
  State.wrappedValue.getter();
  if (v44 >= 2u)
  {
    v35[1] = v14;
    v35[2] = v3;
    if (v44 == 2)
    {
      BaseObjectGraph.inject<A>(_:)();
      sub_10000C178(v23, v21, &unk_100170700, &unk_1001153F0);
      v35[0] = type metadata accessor for FlowAction();

      sub_100002BE4(&qword_100170280, &unk_100117F60);
      sub_1000CD958(&qword_100170288, type metadata accessor for FlowAction);
      sub_1000CD958(&qword_100170740, type metadata accessor for FlowAction);
      sub_1000CD8CC();
      v30 = v36;
      FlowView.init(following:tabLabels:destinations:)();
      sub_100009908(v23, &unk_100170700, &unk_1001153F0);
      v31 = v37;
      v32 = v40;
      (*(v37 + 16))(v41, v30, v40);
      swift_storeEnumTagMultiPayload();
      sub_100012C48(&qword_100170268, &qword_100170258, &qword_100117F58);
      sub_1000CD84C();
      v33 = v42;
      _ConditionalContent<>.init(storage:)();
      sub_10000C178(v33, v11, &qword_100170250, &unk_100117F48);
      swift_storeEnumTagMultiPayload();
      sub_1000CD794();
      sub_100012C48(&qword_100170278, &qword_100170238, &qword_100117F30);
      _ConditionalContent<>.init(storage:)();
      sub_100009908(v33, &qword_100170250, &unk_100117F48);
      return (*(v31 + 8))(v30, v32);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_100012C48(&qword_100170268, &qword_100170258, &qword_100117F58);
      sub_1000CD84C();
      v34 = v42;
      _ConditionalContent<>.init(storage:)();
      sub_10000C178(v34, v11, &qword_100170250, &unk_100117F48);
      swift_storeEnumTagMultiPayload();
      sub_1000CD794();
      sub_100012C48(&qword_100170278, &qword_100170238, &qword_100117F30);
      _ConditionalContent<>.init(storage:)();
      return sub_100009908(v34, &qword_100170250, &unk_100117F48);
    }
  }

  else
  {
    LoadingView.init<>()();
    (*(v4 + 16))(v11, v7, v3);
    swift_storeEnumTagMultiPayload();
    sub_1000CD794();
    sub_100012C48(&qword_100170278, &qword_100170238, &qword_100117F30);
    _ConditionalContent<>.init(storage:)();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1000CB2C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryFeedView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1000CD064(a1, v7);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_1000CD1B4(v7, v16 + v14);
  *(v16 + v15) = a2;
  sub_1000EE5F8(0, 0, v11, &unk_100117F10, v16);
}

uint64_t sub_1000CB4A0()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100079BE8;

  return sub_1000CB55C();
}

uint64_t sub_1000CB55C()
{
  v1[16] = v0;
  v2 = *(*(sub_100002BE4(&qword_1001707B0, &qword_100117F20) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[18] = v3;
  v1[19] = type metadata accessor for MainActor();
  v1[20] = static MainActor.shared.getter();
  v4 = type metadata accessor for Bag();
  v1[21] = v4;
  v5 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v6 = swift_task_alloc();
  v1[22] = v6;
  *v6 = v1;
  v6[1] = sub_1000CB680;

  return BaseObjectGraph.inject<A>(_:)(v3, v4, v4);
}

uint64_t sub_1000CB680()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);
  if (v0)
  {

    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v10 = sub_1000CC228;
  }

  else
  {
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v11;
    v10 = sub_1000CB804;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_1000CB804()
{
  v37 = v0;
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v1 - 8);
  (*(v4 + 56))(v2, 0, 1, v1);
  sub_10000C178(v2, v3, &qword_1001707B0, &qword_100117F20);
  if ((*(v4 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 136);

    sub_100009908(v6, &qword_1001707B0, &qword_100117F20);
    if (qword_100168E48 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006B0C(v7, qword_100182000);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100006B44(0xD000000000000011, 0x8000000100117D90, &v36);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s error fetching user region.", v10, 0xCu);
      sub_1000052E4(v11);
    }

    v12 = *(v0 + 144);
    v13 = *(v0 + 128);
    v14 = (v13 + *(type metadata accessor for DiscoveryFeedView() + 20));
    v15 = *v14;
    v16 = *(v14 + 1);
    *(v0 + 40) = v15;
    *(v0 + 48) = v16;
    *(v0 + 240) = 3;
    sub_100002BE4(&qword_1001701E0, &qword_100117ED0);
    State.wrappedValue.setter();
    sub_100009908(v12, &qword_1001707B0, &qword_100117F20);
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);

    v19 = *(v0 + 8);

    return v19();
  }

  v21 = *(v0 + 168);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  v24 = Bag.amsBag.getter();
  (*(v4 + 8))(v22, v21);
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 BOOLForKey:v25];
  *(v0 + 184) = v26;

  swift_unknownObjectRelease();
  v27 = (v23 + *(type metadata accessor for DiscoveryFeedView() + 20));
  v28 = *v27;
  *(v0 + 246) = *v27;
  v29 = *(v27 + 1);
  *(v0 + 56) = v28;
  *(v0 + 192) = v29;
  *(v0 + 64) = v29;
  *(v0 + 200) = sub_100002BE4(&qword_1001701E0, &qword_100117ED0);
  State.wrappedValue.getter();
  if (*(v0 + 241) > 1u)
  {
    *(v0 + 241);
  }

  else if (!*(v0 + 241))
  {

LABEL_14:
    *(v0 + 104) = v28;
    *(v0 + 112) = v29;
    *(v0 + 245) = 1;
    State.wrappedValue.setter();
    goto LABEL_15;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    goto LABEL_14;
  }

LABEL_15:
  v31 = *(v0 + 152);
  v32 = static MainActor.shared.getter();
  *(v0 + 208) = v32;
  v33 = swift_task_alloc();
  *(v0 + 216) = v33;
  *(v33 + 16) = v26;
  v34 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v35 = swift_task_alloc();
  *(v0 + 224) = v35;
  *v35 = v0;
  v35[1] = sub_1000CBD44;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 242, v32, &protocol witness table for MainActor, 0xD00000000000002CLL, 0x800000010011FDD0, sub_1000CD64C, v33, &type metadata for DiscoveryFeedView.DiscoveryLoadingState);
}

uint64_t sub_1000CBD44()
{
  v2 = v0;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 208);
  v6 = *(*v1 + 160);
  v7 = *(*v1 + 152);
  v12 = *v1;
  *(*v1 + 232) = v2;

  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v10 = sub_1000CBFC0;
  }

  else
  {
    v10 = sub_1000CBEE0;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1000CBEE0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 246);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);

  v7 = *(v0 + 242);
  *(v0 + 88) = v3;
  *(v0 + 96) = v1;
  *(v0 + 244) = v7;

  State.wrappedValue.setter();

  sub_100009908(v6, &qword_1001707B0, &qword_100117F20);
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000CBFC0()
{
  v23 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);

  sub_100009908(v3, &qword_1001707B0, &qword_100117F20);
  if (qword_100168E48 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 232);
  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100182000);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 232);
    v9 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100006B44(0xD000000000000011, 0x8000000100117D90, &v22);
    *(v9 + 12) = 2080;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = Error.localizedDescription.getter();
    v15 = sub_100006B44(v13, v14, &v22);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s error fetching user region. %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(v0 + 232);
  *(v0 + 72) = *(v0 + 246);
  v17 = *(v0 + 200);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 243) = 3;

  State.wrappedValue.setter();

  v19 = *(v0 + 136);
  v18 = *(v0 + 144);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000CC228()
{
  v37 = v0;
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v1 - 8);
  (*(v4 + 56))(v2, 1, 1, v1);
  sub_10000C178(v2, v3, &qword_1001707B0, &qword_100117F20);
  if ((*(v4 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 136);

    sub_100009908(v6, &qword_1001707B0, &qword_100117F20);
    if (qword_100168E48 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006B0C(v7, qword_100182000);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100006B44(0xD000000000000011, 0x8000000100117D90, &v36);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s error fetching user region.", v10, 0xCu);
      sub_1000052E4(v11);
    }

    v12 = *(v0 + 144);
    v13 = *(v0 + 128);
    v14 = (v13 + *(type metadata accessor for DiscoveryFeedView() + 20));
    v15 = *v14;
    v16 = *(v14 + 1);
    *(v0 + 40) = v15;
    *(v0 + 48) = v16;
    *(v0 + 240) = 3;
    sub_100002BE4(&qword_1001701E0, &qword_100117ED0);
    State.wrappedValue.setter();
    sub_100009908(v12, &qword_1001707B0, &qword_100117F20);
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);

    v19 = *(v0 + 8);

    return v19();
  }

  v21 = *(v0 + 168);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  v24 = Bag.amsBag.getter();
  (*(v4 + 8))(v22, v21);
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 BOOLForKey:v25];
  *(v0 + 184) = v26;

  swift_unknownObjectRelease();
  v27 = (v23 + *(type metadata accessor for DiscoveryFeedView() + 20));
  v28 = *v27;
  *(v0 + 246) = *v27;
  v29 = *(v27 + 1);
  *(v0 + 56) = v28;
  *(v0 + 192) = v29;
  *(v0 + 64) = v29;
  *(v0 + 200) = sub_100002BE4(&qword_1001701E0, &qword_100117ED0);
  State.wrappedValue.getter();
  if (*(v0 + 241) > 1u)
  {
    *(v0 + 241);
  }

  else if (!*(v0 + 241))
  {

LABEL_14:
    *(v0 + 104) = v28;
    *(v0 + 112) = v29;
    *(v0 + 245) = 1;
    State.wrappedValue.setter();
    goto LABEL_15;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    goto LABEL_14;
  }

LABEL_15:
  v31 = *(v0 + 152);
  v32 = static MainActor.shared.getter();
  *(v0 + 208) = v32;
  v33 = swift_task_alloc();
  *(v0 + 216) = v33;
  *(v33 + 16) = v26;
  v34 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v35 = swift_task_alloc();
  *(v0 + 224) = v35;
  *v35 = v0;
  v35[1] = sub_1000CBD44;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 242, v32, &protocol witness table for MainActor, 0xD00000000000002CLL, 0x800000010011FDD0, sub_1000CD64C, v33, &type metadata for DiscoveryFeedView.DiscoveryLoadingState);
}

void sub_1000CC768()
{
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006B0C(v0, qword_100181FA0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100006B44(0xD000000000000011, 0x8000000100117D90, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s App Store Account Did Change, Restarting Feed.", v3, 0xCu);
    sub_1000052E4(v4);
  }

  v5 = [objc_opt_self() sharedURLCache];
  [v5 removeAllCachedResponses];
}

void sub_1000CC8E4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100181FA0);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100006B44(0xD000000000000011, 0x8000000100117D90, &v13);
    v6 = 0xED00006465747261;
    *(v5 + 12) = 2080;
    v7 = 0x7453746559746F6ELL;
    v8 = 0x73736563637573;
    if (v2 != 2)
    {
      v8 = 0x6572756C696166;
    }

    if (v2)
    {
      v7 = 0x676E6964616F6CLL;
      v6 = 0xE700000000000000;
    }

    if (v2 <= 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    if (v2 <= 1)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = sub_100006B44(v9, v10, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s did change the discover feed loading state to %s", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000CCAE8(uint64_t a1, void *a2)
{
  v4 = sub_100002BE4(&qword_100170230, &qword_100117F28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1000CD6E8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CCF00;
  aBlock[3] = &unk_10015EA30;
  v11 = _Block_copy(aBlock);

  [a2 valueWithCompletion:v11];
  _Block_release(v11);
}

void sub_1000CCC98(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v4 = a1;
      swift_errorRetain();
      if (qword_100168E48 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100006B0C(v5, qword_100182000);
      swift_errorRetain();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v8 = 136315394;
        *(v8 + 4) = sub_100006B44(0xD000000000000011, 0x8000000100117D90, &v14);
        *(v8 + 12) = 2080;
        swift_getErrorValue();
        v9 = Error.localizedDescription.getter();
        v11 = sub_100006B44(v9, v10, &v14);

        *(v8 + 14) = v11;
        _os_log_impl(&_mh_execute_header, v6, v7, "%s error fetching user region. %s", v8, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    else
    {
      v12 = a1;
    }

    if ([a1 BOOLValue])
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    LOBYTE(v14) = v13;
    sub_100002BE4(&qword_100170230, &qword_100117F28);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    LOBYTE(v14) = 3;
    sub_100002BE4(&qword_100170230, &qword_100117F28);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_1000CCF00(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_1000CCF98(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_1001701C0, &qword_100117EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CD004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return _JetViewDefaultFailed.init(error:retry:)(a1, a2, a3);
}

uint64_t sub_1000CD064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryFeedView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CD0C8()
{
  v1 = (type metadata accessor for DiscoveryFeedView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  started = type metadata accessor for JetStartUpCoordinator();
  (*(*(started - 8) + 8))(v0 + v3, started);
  v6 = *(v0 + v3 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000CD1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryFeedView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CD218@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DiscoveryFeedView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000CA82C(v4, a1);
}

uint64_t sub_1000CD298()
{
  v1 = (type metadata accessor for DiscoveryFeedView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  started = type metadata accessor for JetStartUpCoordinator();
  (*(*(started - 8) + 8))(v5, started);
  v7 = *(v5 + v1[7] + 8);

  v8 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000CD398()
{
  v1 = *(type metadata accessor for DiscoveryFeedView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000CB2C4(v0 + v2, v3);
}

uint64_t sub_1000CD424()
{
  v1 = (type metadata accessor for DiscoveryFeedView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  started = type metadata accessor for JetStartUpCoordinator();
  (*(*(started - 8) + 8))(v6, started);
  v8 = *(v6 + v1[7] + 8);

  v9 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000CD52C()
{
  v2 = *(type metadata accessor for DiscoveryFeedView() - 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000FA04;

  return sub_1000CB4A0();
}

uint64_t sub_1000CD654()
{
  v1 = sub_100002BE4(&qword_100170230, &qword_100117F28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000CD6E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(sub_100002BE4(&qword_100170230, &qword_100117F28) - 8) + 80);

  sub_1000CCC98(a1, a2, a3);
}

uint64_t sub_1000CD77C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000CD794()
{
  result = qword_100170260;
  if (!qword_100170260)
  {
    sub_10000459C(&qword_100170250, &unk_100117F48);
    sub_100012C48(&qword_100170268, &qword_100170258, &qword_100117F58);
    sub_1000CD84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170260);
  }

  return result;
}

unint64_t sub_1000CD84C()
{
  result = qword_100170270;
  if (!qword_100170270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170270);
  }

  return result;
}

unint64_t sub_1000CD8CC()
{
  result = qword_100170290;
  if (!qword_100170290)
  {
    sub_10000459C(&qword_100170280, &unk_100117F60);
    sub_1000C8038();
    sub_1000C8380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170290);
  }

  return result;
}

uint64_t sub_1000CD958(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000CD9A0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A0F0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000CD9EC()
{
  sub_10000459C(&qword_1001701C8, &qword_100117EC0);
  sub_10000459C(&qword_1001701C0, &qword_100117EB8);
  type metadata accessor for DiscoveryFeedStateProvider();
  sub_100012C48(&qword_1001701D8, &qword_1001701C0, &qword_100117EB8);
  sub_1000CD958(&qword_100169930, type metadata accessor for DiscoveryFeedStateProvider);
  swift_getOpaqueTypeConformance2();
  sub_1000C9E48();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000CDB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496D616461 && a2 == 0xE600000000000000)
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

uint64_t sub_1000CDBBC(uint64_t a1)
{
  v2 = sub_1000CDC78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CDBF8(uint64_t a1)
{
  v2 = sub_1000CDC78();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000CDC78()
{
  result = qword_1001702A0;
  if (!qword_1001702A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702A0);
  }

  return result;
}

uint64_t sub_1000CDDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4970756F53746F68 && a2 == 0xE900000000000044)
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

uint64_t sub_1000CDE44(uint64_t a1)
{
  v2 = sub_1000CE048();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CDE80(uint64_t a1)
{
  v2 = sub_1000CE048();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CDF00(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v15[1] = a3;
  v8 = sub_100002BE4(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_10000524C(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1000CE048()
{
  result = qword_1001702B8;
  if (!qword_1001702B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702B8);
  }

  return result;
}

uint64_t sub_1000CE0E0(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = sub_100002BE4(a2, a3);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  v11 = a1[4];
  v12 = sub_10000524C(a1, a1[3]);
  a4();
  v13 = v12;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v16 + 8))(v10, v7);
  }

  sub_1000052E4(a1);
  return v13;
}

uint64_t sub_1000CE290@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  v21 = a5;
  v8 = sub_100002BE4(a2, a3);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  sub_10000524C(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    return sub_1000052E4(a1);
  }

  v13 = v20;
  v14 = v21;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  (*(v13 + 8))(v11, v8);
  result = sub_1000052E4(a1);
  *v14 = v15;
  v14[1] = v17;
  return result;
}

uint64_t sub_1000CE45C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v8 = sub_100002BE4(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = v6[1];
  v16 = *v6;
  v14 = a1[4];
  sub_10000524C(a1, a1[3]);
  v17();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1000CE5F0()
{
  result = qword_1001702C8;
  if (!qword_1001702C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702C8);
  }

  return result;
}

unint64_t sub_1000CE648()
{
  result = qword_1001702D0;
  if (!qword_1001702D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702D0);
  }

  return result;
}

unint64_t sub_1000CE6A0()
{
  result = qword_1001702D8;
  if (!qword_1001702D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702D8);
  }

  return result;
}

unint64_t sub_1000CE6F8()
{
  result = qword_1001702E0;
  if (!qword_1001702E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702E0);
  }

  return result;
}

unint64_t sub_1000CE750()
{
  result = qword_1001702E8;
  if (!qword_1001702E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702E8);
  }

  return result;
}

unint64_t sub_1000CE7A8()
{
  result = qword_1001702F0;
  if (!qword_1001702F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001702F0);
  }

  return result;
}

uint64_t sub_1000CE818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActionMetrics();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000CE8D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActionMetrics();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FlowAction()
{
  result = qword_100170350;
  if (!qword_100170350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CE9C8()
{
  result = type metadata accessor for ActionMetrics();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000CEA6C(void *a1)
{
  v3 = v1;
  v5 = sub_100002BE4(&qword_1001703E0, &qword_100118520);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_1000CF888();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v21 = *v3;
  v22 = v11;
  v20 = 0;
  sub_1000CFAEC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = type metadata accessor for FlowAction();
    v13 = v12[5];
    LOBYTE(v21) = 1;
    type metadata accessor for ActionMetrics();
    sub_1000CFB40(&qword_10016B358, &type metadata accessor for ActionMetrics);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v12[6];
    LOBYTE(v21) = 2;
    sub_1000CFB88();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v12[7]);
    v17 = *v15;
    v16 = v15[1];
    v21 = v17;
    v22 = v16;
    v20 = 3;
    sub_1000CFBDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000CECC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for ActionMetrics();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100002BE4(&qword_1001703B8, &qword_100118518);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v28);
  v9 = &v24 - v8;
  v10 = type metadata accessor for FlowAction();
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_1000CF888();
  v27 = v9;
  v15 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return sub_1000052E4(a1);
  }

  v16 = v25;
  v32 = 0;
  sub_1000CF8DC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(&v30 + 1);
  *v13 = v30;
  *(v13 + 1) = v17;
  v29 = v17;
  LOBYTE(v30) = 1;
  sub_1000CFB40(&qword_10016B2F0, &type metadata accessor for ActionMetrics);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 32))(&v13[v10[5]], v6, v3);
  v32 = 2;
  sub_1000CF984();
  v18 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = &v13[v10[6]];
  v20 = v31[0];
  *v19 = v30;
  *(v19 + 1) = v20;
  *(v19 + 25) = *(v31 + 9);
  v32 = 3;
  sub_1000CF9D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v18, v28);
  v21 = *(&v30 + 1);
  v22 = &v13[v10[7]];
  *v22 = v30;
  *(v22 + 1) = v21;
  sub_1000CFA2C(v13, v24);
  sub_1000052E4(a1);
  return sub_1000CFA90(v13);
}

void *sub_1000CF128@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1000CF134@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_1000CF1F0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000CF23C()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int sub_1000CF244()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000CF28C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_1000CF2C0()
{
  result = qword_100170390;
  if (!qword_100170390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170390);
  }

  return result;
}

uint64_t sub_1000CF314()
{
  v1 = 25705;
  v2 = 0x74616E6974736564;
  if (*v0 != 2)
  {
    v2 = 0x61746E6573657270;
  }

  if (*v0)
  {
    v1 = 0x654D6E6F69746361;
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

uint64_t sub_1000CF3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000D0510(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000CF3C8(uint64_t a1)
{
  v2 = sub_1000CF888();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CF404(uint64_t a1)
{
  v2 = sub_1000CF888();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CF450(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1000CF4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ActionMetrics();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_1000CF538()
{
  result = qword_100170398;
  if (!qword_100170398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100170398);
  }

  return result;
}

uint64_t sub_1000CF5D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Width = CGRectGetWidth(v18);
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  Height = CGRectGetHeight(v19);
  v13 = 0.9;
  v14 = 0.7;
  if (v10 >= v8)
  {
    v14 = 0.9;
    v13 = 0.95;
  }

  v15 = Width * v14;
  v16 = Height * v13;
  a1[3] = &type metadata for FixedPresentationSizing;
  a1[4] = sub_1000CF824();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v15;
  *(result + 24) = 0;
  *(result + 32) = v16;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1000CF6EC@<X0>(uint64_t *a1@<X8>)
{
  sub_1000CF5D4(v3);
  a1[3] = sub_100002BE4(&qword_1001703A0, &qword_100118510);
  sub_1000CF7A0();
  a1[4] = swift_getOpaqueTypeConformance2();
  sub_100020014(a1);
  PresentationSizing.sticky(horizontal:vertical:)();
  return sub_1000CF7F4(v3);
}

unint64_t sub_1000CF7A0()
{
  result = qword_1001703A8;
  if (!qword_1001703A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001703A8);
  }

  return result;
}