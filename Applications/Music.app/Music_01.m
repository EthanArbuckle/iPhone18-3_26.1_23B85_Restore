uint64_t sub_100015860()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100015898()
{

  return swift_deallocObject();
}

Swift::Int sub_1000158E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180270);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_100015A48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A7D40);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

char *sub_100015C04(char *a1, int64_t a2, char a3)
{
  result = sub_100015C84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015C24(char *a1, int64_t a2, char a3)
{
  result = sub_100015D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015C44(char *a1, int64_t a2, char a3)
{
  result = sub_100015E9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015C64(char *a1, int64_t a2, char a3)
{
  result = sub_100015FA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015C84(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&unk_101181640);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100015D90(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&unk_1011AAAB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100015E9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BA508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100015FA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC0F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000160B4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100016154(a1, v4);
}

unint64_t sub_100016154(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000160F8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001621C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

_OWORD *sub_100016270(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_100016280(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_10000E40C(*a1);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5 & 1;

  return a2;
}

uint64_t sub_100016318(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  v3 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider);
  v4 = *(a1 + 16);
  v5 = v2;

  sub_10000E44C(v2, v3, v4, v17);
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
  sub_10001494C(v18, v16);
  sub_10001494C(v17, v16);
  sub_100014984(v25);
  sub_10001645C(v18);
  sub_100014984(v18);
  return sub_100014984(v17);
}

uint64_t sub_10001645C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_1011A7F00);
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
  sub_10001494C(&v37, &v34);
  if (qword_1011A6980 != -1)
  {
    swift_once();
  }

  if (static NSUserDefaults.mobileiPod)
  {
    sub_100011A14();
    sub_10000988C();
    NSUserDefaults.subscript.getter(&v34);
    if (!v35)
    {
      sub_1000095E8(&v34, &qword_1011ABB20);
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

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

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
    if (qword_1011A6888 != -1)
    {
      swift_once();
    }

    sub_100A00190(&v34, static ApplicationCapabilities.NotificationNames.activeAccountDidChange);
  }

  v13 = v39;
  v14 = sub_10048BBDC(5, v39) & 1;
  v15 = *(a1 + 4);
  if (v14 != (sub_10048BBDC(5, v15) & 1))
  {
    if (qword_1011A6840 != -1)
    {
      swift_once();
    }

    sub_100A00190(&v34, static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange);
  }

  v16 = sub_10048BBDC(0, v13) & 1;
  if (v16 != (sub_10048BBDC(0, v15) & 1))
  {
    if (qword_1011A6848 != -1)
    {
      swift_once();
    }

    sub_100A00190(&v34, static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange);
  }

  v17 = sub_10048BBDC(3, v13) & 1;
  if (v17 != (sub_10048BBDC(3, v15) & 1))
  {
    if (qword_1011A6850 != -1)
    {
      swift_once();
    }

    sub_100A00190(&v34, static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange);
  }

  v18 = sub_10048BBDC(9, v13) & 1;
  if (v18 != (sub_10048BBDC(9, v15) & 1))
  {
    if (qword_1011A6870 != -1)
    {
      swift_once();
    }

    sub_100A00190(&v34, static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange);
  }

  v19 = sub_10048BBDC(4, v13) & 1;
  if (v19 != (sub_10048BBDC(4, v15) & 1))
  {
    if (qword_1011A6858 != -1)
    {
      swift_once();
    }

    sub_100A00190(&v34, static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange);
  }

  v20 = sub_10048BBDC(2, v13) & 1;
  if (v20 != (sub_10048BBDC(2, v15) & 1))
  {
    if (qword_1011A6860 != -1)
    {
      swift_once();
    }

    sub_100A00190(&v34, static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange);
  }

  v21 = sub_10048BBDC(10, v13) & 1;
  if (v21 != (sub_10048BBDC(10, v15) & 1))
  {
    if (qword_1011A6868 != -1)
    {
      swift_once();
    }

    sub_100A00190(&v34, static ApplicationCapabilities.NotificationNames.mliEnabledDidChange);
  }

  if ((BYTE1(v37) ^ a1[1]))
  {
    if (qword_1011A6890 != -1)
    {
      swift_once();
    }

    sub_100A00190(&v34, static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange);
  }

  if ((BYTE2(v37) ^ a1[2]))
  {
    if (qword_1011A68A0 != -1)
    {
      swift_once();
    }

    sub_100A00190(&v34, static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange);
  }

  if (v40 != *(a1 + 6))
  {
    if (qword_1011A6898 != -1)
    {
      swift_once();
    }

    sub_100A00190(&v34, static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange);
  }

  if ((sub_100017774(v43, a1[96]) & 1) == 0)
  {
    if (qword_1011A6880 != -1)
    {
      swift_once();
    }

    sub_100A00190(&v34, static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange);
  }

  v22 = v44;
  v23 = *(&v44 + 1);
  v24 = a1[112];
  v25 = *(a1 + 15);
  if ((sub_10001F358(*(&v43 + 1), *(a1 + 13)) & 1) == 0)
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

  else if (v24 == 7 || (sub_10001797C(v22, v24) & 1) == 0)
  {
    goto LABEL_71;
  }

  if ((sub_100017BA4(v23, v25) & 1) == 0)
  {
LABEL_71:
    if (qword_1011A6878 != -1)
    {
      swift_once();
    }

    sub_100A00190(&v34, static ApplicationCapabilities.NotificationNames.supportedTabsDidChange);
  }

  if (*(&v37 + 1) != *(a1 + 1))
  {
    if (qword_1011A68A8 != -1)
    {
      swift_once();
    }

    sub_100A00190(&v34, static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange);
  }

LABEL_78:
  if (_s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(&v37, a1))
  {
  }

  else
  {
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
    v27 = v36;
    type metadata accessor for MainActor();
    sub_10001494C(&v37, &v34);

    v28 = static MainActor.shared.getter();
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
    sub_100969440(0, 0, v6, &unk_100EF1D00, v29);
  }

  return sub_100014984(&v37);
}

uint64_t sub_100016E98()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

BOOL _s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || ((a1[24] ^ a2[24]))
  {
    return 0;
  }

  if ((sub_100017154(*(a1 + 4), *(a2 + 4)) & 1) == 0 || (sub_100017154(*(a1 + 5), *(a2 + 5)) & 1) == 0 || *(a1 + 6) != *(a2 + 6))
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
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
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
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
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

    sub_100009F78(0, &qword_1011A9F78);
    v17 = v16;
    v18 = v15;
    v19 = static NSObject.== infix(_:_:)();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if ((sub_100017774(a1[96], a2[96]) & 1) == 0)
  {
    return 0;
  }

  v20 = a1[112];
  v21 = *(a1 + 15);
  v22 = a2[112];
  v23 = *(a2 + 15);
  if ((sub_10001F358(*(a1 + 13), *(a2 + 13)) & 1) == 0)
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

  else if (v22 == 7 || (sub_10001797C(v20, v22) & 1) == 0)
  {
    return 0;
  }

  return (sub_100017BA4(v21, v23) & 1) != 0;
}

uint64_t sub_100017154(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v35 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v36 = v8;
  v37 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v38 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    ApplicationCapabilities.Service.rawValue.getter(v13);
    String.hash(into:)();

    v14 = Hasher._finalize()();
    v15 = -1 << *(a2 + 32);
    v16 = v14 & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = *(*(a2 + 48) + v16);
      if (v18 <= 4)
      {
        v21 = 0x6C6169636F73;
        if (v18 != 3)
        {
          v21 = 0x6F69646172;
        }

        v22 = 0xE600000000000000;
        if (v18 != 3)
        {
          v22 = 0xE500000000000000;
        }

        if (v18 == 2)
        {
          v21 = 0xD000000000000013;
          v22 = 0x8000000100E4DAB0;
        }

        v23 = 0x646956636973756DLL;
        if (!*(*(a2 + 48) + v16))
        {
          v23 = 0x636973756DLL;
        }

        v24 = 0xEB00000000736F65;
        if (!*(*(a2 + 48) + v16))
        {
          v24 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v16) <= 1u)
        {
          v19 = v23;
        }

        else
        {
          v19 = v21;
        }

        if (*(*(a2 + 48) + v16) <= 1u)
        {
          v20 = v24;
        }

        else
        {
          v20 = v22;
        }
      }

      else if (*(*(a2 + 48) + v16) > 7u)
      {
        if (v18 == 8)
        {
          v19 = 0xD000000000000013;
          v20 = 0x8000000100E4DA90;
        }

        else if (v18 == 9)
        {
          v19 = 0xD000000000000011;
          v20 = 0x8000000100E4DA70;
        }

        else
        {
          v19 = 0x6C62616E45696C6DLL;
          v20 = 0xEA00000000006465;
        }
      }

      else if (v18 == 5)
      {
        v20 = 0xE600000000000000;
        v19 = 0x73656E757469;
      }

      else
      {
        if (v18 == 6)
        {
          v19 = 0x74634170756F7267;
        }

        else
        {
          v19 = 0x746963696C707865;
        }

        if (v18 == 6)
        {
          v20 = 0xED00007974697669;
        }

        else
        {
          v20 = 0xEF746E65746E6F43;
        }
      }

      if (v13 > 4)
      {
        v25 = 0xD000000000000011;
        if (v13 != 9)
        {
          v25 = 0x6C62616E45696C6DLL;
        }

        v26 = 0xEA00000000006465;
        if (v13 == 9)
        {
          v26 = 0x8000000100E4DA70;
        }

        if (v13 == 8)
        {
          v25 = 0xD000000000000013;
          v26 = 0x8000000100E4DA90;
        }

        v27 = 0x746963696C707865;
        if (v13 == 6)
        {
          v27 = 0x74634170756F7267;
        }

        v28 = 0xEF746E65746E6F43;
        if (v13 == 6)
        {
          v28 = 0xED00007974697669;
        }

        if (v13 == 5)
        {
          v27 = 0x73656E757469;
          v28 = 0xE600000000000000;
        }

        if (v13 <= 7)
        {
          v29 = v27;
        }

        else
        {
          v29 = v25;
        }

        if (v13 <= 7)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

        if (v19 == v29)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      }

      if (v13 <= 1)
      {
        break;
      }

      v31 = 0x6C6169636F73;
      if (v13 != 3)
      {
        v31 = 0x6F69646172;
      }

      v32 = 0xE500000000000000;
      if (v13 == 3)
      {
        v32 = 0xE600000000000000;
      }

      if (v13 == 2)
      {
        v33 = 0xD000000000000013;
      }

      else
      {
        v33 = v31;
      }

      if (v13 == 2)
      {
        v30 = 0x8000000100E4DAB0;
      }

      else
      {
        v30 = v32;
      }

      if (v19 == v33)
      {
        goto LABEL_83;
      }

LABEL_84:
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        goto LABEL_89;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v13)
    {
      v30 = 0xE500000000000000;
      if (v19 == 0x636973756DLL)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    v30 = 0xEB00000000736F65;
    if (v19 != 0x646956636973756DLL)
    {
      goto LABEL_84;
    }

LABEL_83:
    if (v20 != v30)
    {
      goto LABEL_84;
    }

LABEL_89:
    v8 = v36;
    v3 = v37;
    v7 = v38;
  }

  while (v38);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v35 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100017618(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF72656269726373;
  v3 = 0x6275536563696F76;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6269726373627573;
    }

    else
    {
      v5 = 0x6275536563696F76;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000007265;
    }

    else
    {
      v6 = 0xEF72656269726373;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x63697373616C63;
    }

    else
    {
      v5 = 0x6564696365646E75;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  if (a2 == 2)
  {
    v3 = 0x6269726373627573;
    v2 = 0xEA00000000007265;
  }

  v7 = 0x6564696365646E75;
  v8 = 0xE900000000000064;
  if (a2)
  {
    v7 = 0x63697373616C63;
    v8 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
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

uint64_t sub_10001777C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x7473696C79616C70;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x736F65646976;
  if (a1 != 5)
  {
    v6 = 0x7473696C79616C70;
    v5 = 0xE900000000000073;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F69646172;
  if (a1 != 3)
  {
    v8 = 0x686372616573;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x7972617262696CLL;
  v11 = 0x6F4E6E657473696CLL;
  v12 = 0xE900000000000077;
  if (a1 != 1)
  {
    v11 = 0x6573776F7262;
    v12 = 0xE600000000000000;
  }

  if (a1)
  {
    v10 = v11;
    v9 = v12;
  }

  if (a1 <= 2u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 2)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0xE700000000000000;
      if (v13 != 0x7972617262696CLL)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    if (a2 == 1)
    {
      v2 = 0xE900000000000077;
      if (v13 != 0x6F4E6E657473696CLL)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE600000000000000;
    v3 = 0x6573776F7262;
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x6F69646172)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v13 != 0x686372616573)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 5)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x736F65646976)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  if (v13 != v3)
  {
LABEL_36:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v14 != v2)
  {
    goto LABEL_36;
  }

  v15 = 1;
LABEL_37:

  return v15 & 1;
}

uint64_t sub_100017984(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x736F65646976;
  if (a1 != 5)
  {
    v5 = 0x7473696C79616C70;
    v4 = 0xE900000000000073;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6F69646172;
  if (a1 != 3)
  {
    v7 = 0x686372616573;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6F4E6E657473696CLL;
  v9 = 0xE900000000000077;
  if (a1 != 1)
  {
    v8 = 0x6573776F7262;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x7972617262696CLL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE900000000000077;
        if (v10 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x6573776F7262)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x7972617262696CLL)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x736F65646976)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x7473696C79616C70)
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
    if (v10 != 0x6F69646172)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x686372616573)
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

uint64_t sub_100017BA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 33);
    v4 = (a2 + 33);
    do
    {
      v6 = *v3;
      v7 = *(v3 - 1);
      v8 = *(v4 - 1);
      v9 = *v4;
      v10 = 0x686372616573;
      if (v7 == 5)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v10 = 0x6F65646976;
        v11 = 0xE500000000000000;
      }

      v12 = 0x6573776F7262;
      if (v7 == 3)
      {
        v13 = 0xE600000000000000;
      }

      else
      {
        v12 = 0x6F69646172;
        v13 = 0xE500000000000000;
      }

      if (*(v3 - 1) <= 4u)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6E5F6E657473696CLL;
      if (v7 == 1)
      {
        v14 = 0x756F795F726F66;
      }

      v15 = 0xE700000000000000;
      if (v7 != 1)
      {
        v15 = 0xEA0000000000776FLL;
      }

      if (!*(v3 - 1))
      {
        v14 = 0x636973756D5F796DLL;
        v15 = 0xE800000000000000;
      }

      if (*(v3 - 1) <= 2u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v10;
      }

      if (*(v3 - 1) <= 2u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v11;
      }

      if (*(v4 - 1) <= 2u)
      {
        if (*(v4 - 1))
        {
          if (v8 == 1)
          {
            v5 = 0xE700000000000000;
            if (v16 != 0x756F795F726F66)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v5 = 0xEA0000000000776FLL;
            if (v16 != 0x6E5F6E657473696CLL)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          v5 = 0xE800000000000000;
          if (v16 != 0x636973756D5F796DLL)
          {
            goto LABEL_46;
          }
        }
      }

      else if (*(v4 - 1) > 4u)
      {
        if (v8 != 5)
        {
          v5 = 0xE500000000000000;
          v18 = 1701079414;
LABEL_45:
          if (v16 != (v18 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
          {
            goto LABEL_46;
          }

          goto LABEL_6;
        }

        v5 = 0xE600000000000000;
        if (v16 != 0x686372616573)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v8 != 3)
        {
          v5 = 0xE500000000000000;
          v18 = 1768186226;
          goto LABEL_45;
        }

        v5 = 0xE600000000000000;
        if (v16 != 0x6573776F7262)
        {
          goto LABEL_46;
        }
      }

LABEL_6:
      if (v17 == v5)
      {

        if (v6 != v9)
        {
          return 0;
        }

        goto LABEL_8;
      }

LABEL_46:
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = 0;
      if (v19 & 1) == 0 || ((v6 ^ v9))
      {
        return result;
      }

LABEL_8:
      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100017E48()
{
  v1 = v0;
  type metadata accessor for Whitetail.Binding();
  v2 = ICUserIdentityStoreDidChangeNotification;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 defaultIdentityStore];
  UIScreen.Dimensions.size.getter(v6);
  v75 = &type metadata for NotificationTrigger;
  v76 = &protocol witness table for NotificationTrigger;
  v73 = v7;
  v74 = v8;
  v9 = swift_allocObject();
  v67 = v1;
  swift_weakInit();
  v72 = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v73, 1, sub_1000188CC, v9);
  v10 = [objc_opt_self() sharedController];
  v11 = MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification;
  UIScreen.Dimensions.size.getter(v12);
  v75 = &type metadata for NotificationTrigger;
  v76 = &protocol witness table for NotificationTrigger;
  v73 = v13;
  v74 = v14;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = v11;
  v70 = v10;
  v71 = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v73, 1, sub_100018E48, v15);
  v68 = [objc_opt_self() standardUserDefaults];
  sub_10010FC20(&unk_1011A9FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EC6C60;
  v18 = MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification;
  v19 = UIScreen.Dimensions.size.getter(COERCE_DOUBLE(5));
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v20;
  *(inited + 40) = v21;
  v22 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
  v23 = UIScreen.Dimensions.size.getter(v19);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v24;
  *(inited + 80) = v25;
  v26 = RadioAvailabilityControllerRadioAvailableDidChangeNotification;
  v27 = UIScreen.Dimensions.size.getter(v23);
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v28;
  *(inited + 120) = v29;
  v30 = MPCloudServiceStatusControllerSubscriptionAvailabilityDidChangeNotification;
  v31 = UIScreen.Dimensions.size.getter(v27);
  *(inited + 176) = &type metadata for NotificationTrigger;
  *(inited + 184) = &protocol witness table for NotificationTrigger;
  *(inited + 152) = v32;
  *(inited + 160) = v33;
  v34 = MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification;
  UIScreen.Dimensions.size.getter(v31);
  *(inited + 216) = &type metadata for NotificationTrigger;
  *(inited + 224) = &protocol witness table for NotificationTrigger;
  *(inited + 192) = v35;
  *(inited + 200) = v36;
  v37 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v38 = v18;
  v69 = v68;
  v39 = v22;
  v40 = v26;
  v41 = v30;
  v42 = v34;

  v43 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_100018E48, v37);

  sub_10010FC20(&qword_1011AA660);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_100EBE270;
  *(v44 + 32) = v72;
  *(v44 + 40) = v71;
  *(v44 + 48) = v43;
  v45 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bindings;
  swift_beginAccess();

  sub_100018E78(v44);
  swift_endAccess();
  sub_100011A14();
  v47 = UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(0xD000000000000014, 0x8000000100E5D210, v46, &type metadata for NSUserDefaults.MobileiPod);
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v75 = &type metadata for UserDefaultsKeyValueTrigger;
  v76 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v54 = swift_allocObject();
  v73 = v54;
  v54[2] = v47;
  v54[3] = v49;
  v54[4] = v51;
  v54[5] = v53;
  v55 = swift_allocObject();
  swift_weakInit();
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v73, 1, sub_100018E48, v55);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v67 + v45) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v67 + v45) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v56 = [objc_allocWithZone(type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver()) init];
  v57 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver;
  v58 = *(v67 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver);
  *(v67 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver) = v56;

  if (*(v67 + v57))
  {
    swift_weakAssign();
  }

  if (qword_1011A68E8 != -1)
  {
    swift_once();
  }

  v59 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for BagProvider.Observer();
  v60 = swift_allocObject();
  swift_weakInit();
  *(v60 + 24) = 0;
  *(v60 + 32) = 0;
  swift_weakAssign();
  v61 = *(v60 + 24);
  *(v60 + 24) = sub_100961508;
  *(v60 + 32) = v59;
  swift_retain_n();
  v62 = sub_100020438(v61);
  v73 = 0;
  __chkstk_darwin(v62);
  UnfairLock.locked<A>(_:)(sub_10001A4A4);
  if (v73)
  {
    v63 = v73;
    sub_10001A4C4(v63);
  }

  else
  {
    sub_10000679C(0);
  }

  *(v67 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bagObserver) = v60;

  v64 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for PrivacyAcknowledgementObserver();
  swift_allocObject();

  v65 = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_100961510, v64);

  *(v67 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = v65;
}

uint64_t sub_1000185BC()
{

  return swift_deallocObject();
}

uint64_t NotificationTrigger.createObserver(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for NotificationObserver();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v7 + 16) = a3;
  swift_unknownObjectWeakAssign();
  *(v7 + 32) = 1;
  *(v7 + 48) = sub_100029B6C;
  *(v7 + 56) = v6;
  v8 = objc_opt_self();

  v9 = a3;

  v10 = [v8 defaultCenter];
  *(v7 + 40) = v10;
  v11 = *(v7 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = v10;

  v14 = v11;
  [v13 addObserver:v7 selector:"handleNotification:" name:v14 object:Strong];

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_100018788()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = [objc_opt_self() defaultIdentityStore];
    v2 = sub_10000F474();
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
    sub_10001351C();
    sub_10000988C();
    NSUserDefaults.subscript.setter(v8, &v7, &_s3KeyON);

    UnfairLock.locked<A>(_:)(sub_100016444);
  }

  return result;
}

uint64_t sub_1000188D4(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v4 = &v6[-v3];
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_100018B10(a1, v6);
  NSUserDefaults.subscript.setter(v6, v4, AssociatedTypeWitness);
  return sub_100011F28(a1);
}

uint64_t sub_1000189C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101183F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018A30(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011ABB20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B7C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BADF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NSUserDefaults.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018B10(v9, &v16);
  if (v17)
  {
    sub_100016270(&v16, &v18);
    sub_10000954C(&v18, v19);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 16))(v11, a2, a3);
    String.init<A>(_:)();
    v13 = String._bridgeToObjectiveC()();

    [v4 setObject:v12 forKey:v13];
    swift_unknownObjectRelease();

    (*(v8 + 8))(a2, a3);
    sub_100011F28(a1);
    return sub_10000959C(&v18);
  }

  else
  {
    sub_100011F28(&v16);
    (*(v8 + 16))(v11, a2, a3);
    String.init<A>(_:)();
    v15 = String._bridgeToObjectiveC()();

    [v4 removeObjectForKey:v15];

    (*(v8 + 8))(a2, a3);
    return sub_100011F28(a1);
  }
}

{
  sub_1000188D4(a1);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

uint64_t sub_100018DC0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnfairLock.locked<A>(_:)(a2);
  }

  return result;
}

uint64_t UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(*(a4 - 8) + 8))(a3, a4);
  return a1;
}

uint64_t sub_100018F2C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = sub_100018FE4(v8, v7, v5, v6, sub_1001D3174, v9);

  return v10;
}

uint64_t sub_100018FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v10 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  v11 = v10 - 8;
  v35 = *(v10 - 8);
  v12 = *(v35 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v34 - v16;
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  v38 = a1;
  v39 = a2;

  v20 = String.init<A>(_:)();
  v22 = v21;
  UUID.init()();
  v23 = &v19[*(v11 + 28)];
  *v23 = a3;
  *(v23 + 1) = a4;
  v24 = &v19[*(v11 + 32)];
  *v24 = v20;
  v24[1] = v22;
  v25 = qword_1011B9A38;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_1011BAE90;
  v27 = *(qword_1011BAE90 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_lock);
  os_unfair_lock_lock(*(v27 + 16));
  v28 = v40;
  sub_100019508(v26, v19, v36, v37);
  os_unfair_lock_unlock(*(v27 + 16));
  if (v28)
  {
    return sub_100C1DE9C(v19);
  }

  sub_10002029C(v19, v17);
  sub_100020300(v19, v14);
  v30 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v31 = swift_allocObject();
  sub_100020300(v14, v31 + v30);
  type metadata accessor for NSUserDefaults.KeyValueRegistration(0);
  v32 = swift_allocObject();
  sub_100020300(v17, v32 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_identifier);
  result = v32;
  v33 = (v32 + OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaults20KeyValueRegistration_onInvalidate);
  *v33 = sub_100C1DEF8;
  v33[1] = v31;
  return result;
}

uint64_t sub_100019274()
{
  v1 = *(_s20KeyValueRegistrationC10IdentifierVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_100019390()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_100019414()
{
  result = [objc_allocWithZone(_s9_ObserverCMa()) init];
  qword_1011BAE90 = result;
  return result;
}

uint64_t sub_100019508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v51 = _s9_ObserverC18HandlerAssociationVMa(0);
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCE14MusicUtilitiesCSo14NSUserDefaultsP33_0EE8F48931DDE162065F15584D7CE3A39_Observer_registeredSuites;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v57 = a2;

  v10 = sub_10001F978(sub_100C5BC3C, v56, v9);
  v12 = v11;
  v14 = v13;

  if (v14)
  {
    v50 = v4;
  }

  else
  {
    sub_100009F78(0, qword_1011BAF40);
    v15 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 20));
    v10 = *v15;
    v12 = v15[1];

    v16 = NSUserDefaults.init(suite:)(v10, v12);
    if (!v16)
    {
      sub_100C5BC5C();
      swift_allocError();
      *v47 = v10;
      v47[1] = v12;
      swift_willThrow();
    }

    v14 = v16;
    v50 = v4;
  }

  v17 = *(a1 + v8);
  v18 = *(v17 + 16);

  v19 = v14;
  if (v18)
  {

    v20 = sub_100019F90(v10, v12, v19);
    if (v21)
    {
      v48 = *(*(v17 + 56) + 8 * v20);

      goto LABEL_10;
    }
  }

  v48 = sub_10001FBD0(&_swiftEmptyArrayStorage);
LABEL_10:
  v22 = *(a1 + v8);
  v23 = *(v22 + 16);
  v49 = v10;
  if (!v23)
  {
LABEL_17:
    v33 = &_swiftEmptyArrayStorage;
LABEL_18:
    v34 = (a2 + *(_s20KeyValueRegistrationC10IdentifierVMa(0) + 24));
    v29 = *v34;
    v30 = v34[1];
    v35 = String._bridgeToObjectiveC()();
    [v19 addObserver:a1 forKeyPath:v35 options:0 context:0];

    goto LABEL_19;
  }

  v24 = sub_100019F90(v10, v12, v19);
  if ((v25 & 1) == 0 || (v26 = *(*(v22 + 56) + 8 * v24), , , v27 = _s20KeyValueRegistrationC10IdentifierVMa(0), !*(v26 + 16)) || (v28 = (a2 + *(v27 + 24)), v29 = *v28, v30 = v28[1], v31 = sub_100019C40(*v28, v30), (v32 & 1) == 0))
  {

    goto LABEL_17;
  }

  v33 = *(*(v26 + 56) + 8 * v31);

  if (!v33[2])
  {
    goto LABEL_18;
  }

LABEL_19:
  v36 = type metadata accessor for UUID();
  v37 = v55;
  (*(*(v36 - 8) + 16))(v55, a2, v36);
  v38 = (v37 + *(v51 + 20));
  v39 = v53;
  *v38 = v52;
  v38[1] = v39;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v33 = sub_100019BE8(0, v33[2] + 1, 1, v33);
  }

  v41 = v33[2];
  v40 = v33[3];
  if (v41 >= v40 >> 1)
  {
    v33 = sub_100019BE8(v40 > 1, v41 + 1, 1, v33);
  }

  v33[2] = v41 + 1;
  sub_10001FCD4(v55, v33 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v41, _s9_ObserverC18HandlerAssociationVMa);

  v42 = v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v42;
  sub_100019C6C(v33, v29, v30, isUniquelyReferenced_nonNull_native);

  v44 = v58;
  swift_beginAccess();
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(a1 + v8);
  *(a1 + v8) = 0x8000000000000000;
  sub_100019DE8(v44, v49, v12, v19, v45);

  *(a1 + v8) = v59;
  swift_endAccess();
}

size_t sub_100019A0C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100019C6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100019C40(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10001FE54(v16, a4 & 1);
      v11 = sub_100019C40(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100C56724();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

id sub_100019DE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_100019F90(a2, a3, a4);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 < v17 || (a5 & 1) != 0)
    {
      sub_10001A034(v17, a5 & 1);
      v12 = sub_100019F90(a2, a3, a4);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      sub_100C5659C();
      v12 = v20;
    }
  }

  v22 = *v6;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  v24 = (v22[6] + 24 * v12);
  *v24 = a2;
  v24[1] = a3;
  v24[2] = a4;
  *(v22[7] + 8 * v12) = a1;
  v25 = v22[2];
  v16 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v26;

  return a4;
}

unint64_t sub_100019F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return sub_1000200FC(a1, a2, a3, v6);
}

uint64_t sub_10001A034(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011B9B88);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 24 * v20);
      v23 = v22[1];
      v37 = *v22;
      v24 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v26 = v24;
      }

      Hasher.init(_seed:)();
      if (v23)
      {
        Hasher._combine(_:)(1uLL);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v37;
      v16[1] = v23;
      v16[2] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_10001A324()
{
  result = _s20KeyValueRegistrationC10IdentifierVMa(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10001A3E4(uint64_t a1, uint64_t a2, void **a3)
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011AA598);
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

void sub_10001A4C4(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);

    UnfairLock.locked<A>(_:)(sub_10001A6D8);

    UnfairLock.locked<A>(_:)(sub_100016444);
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    v5 = [a1 dictionaryForBagKey:v4];

    if (v5 && (v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v5, v7 = sub_10001A718(v6), , v7))
    {
      *(&v10 + 1) = sub_10010FC20(&qword_1011A9FC0);
      *&v9 = v7;
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v8 = 1;
    sub_10001351C();
    sub_10000988C();
    NSUserDefaults.subscript.setter(&v9, &v8, &_s3KeyON);
  }
}

id sub_10001A6D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag) = v2;

  return v2;
}

unint64_t sub_10001A718(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10010FC20(&qword_1011B01C8);
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
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1000160F8(*(a1 + 48) + 40 * v12, v24);
        sub_10000DD18(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_1000160F8(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_10001A9D4(v21);

          goto LABEL_23;
        }

        sub_10000DD18(v22 + 8, v20);
        sub_10001A9D4(v21);
        sub_10010FC20(&qword_1011A7FD8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_100019C28(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;

          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10001A9D4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B01D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001AA60(uint64_t result, int a2, int a3)
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

uint64_t sub_10001AAC0(uint64_t a1, int a2)
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

uint64_t sub_10001AB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  *a2 = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v2;
}

uint64_t Player.with(_:)(void (*a1)(id *))
{
  v3 = v1 + OBJC_IVAR____TtC9MusicCore6Player_nowPlayingConfiguration;
  swift_beginAccess();
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v16 = *v3;
  v17 = v4;
  v18 = v5;
  v6 = v16;
  v7 = v4;

  a1(&v16);
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v11 = *v3;
  v12 = *(v3 + 8);
  *v3 = v16;
  *(v3 + 8) = v9;
  *(v3 + 16) = v10;
  v13 = v8;
  v14 = v9;

  sub_10002B6B0();
}

id sub_10001AC48()
{
  v0 = sub_100020BA8(1u);
  v1 = sub_100020BA8(2u);
  v2 = *GroupActivitiesManager.Activity.playingProperties.unsafeMutableAddressor();
  sub_10010FC20(&qword_101183990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE270;
  *(inited + 32) = v0;
  *(inited + 40) = v1;
  *(inited + 48) = v2;
  v4 = v2;
  v5 = static PropertySetCombinator.buildBlock(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v5;
}

uint64_t sub_10001AD48(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = Hasher._finalize()();

  return a3(a1, a2, v5);
}

uint64_t sub_10001ADCC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101186F18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001AE34(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AAC28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001AE9C()
{
  sub_10010FC20(&unk_1011AAAB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBDC20;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  sub_10010FC20(&qword_1011AAC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBC6B0;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = objc_opt_self();
  v9 = [v8 propertySetWithProperties:isa];

  *(inited + 48) = v9;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v10;
  v11 = Array._bridgeToObjectiveC()().super.isa;
  v12 = [v8 propertySetWithProperties:v11];

  *(inited + 72) = v12;
  sub_10000C0A4(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011AAC28);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MPPropertySet);
  v14 = Array._bridgeToObjectiveC()().super.isa;

  sub_100009F78(0, &qword_1011AC8D0);
  v15 = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithProperties:v14 relationships:v15];

  qword_1011AF040 = v16;
}

void sub_10001B11C()
{
  sub_10010FC20(&unk_1011AAAB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBDC20;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  sub_10010FC20(&qword_1011AAC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBC6B0;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  sub_10000C0A4(inited);
  swift_setDeallocating();
  sub_1000095E8(inited + 32, &qword_1011AAC28);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  sub_100009F78(0, &qword_1011AC8D0);
  v11 = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  qword_1011AF048 = v12;
}

void sub_10001B338(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10010FC20(&unk_1011AAAB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBDC20;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  *(v5 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 56) = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [objc_opt_self() propertySetWithProperties:isa];

  *a4 = v9;
}

id static PropertySetCombinator.buildBlock(_:)(unint64_t a1)
{
  v2 = [objc_opt_self() emptyPropertySet];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v2 = v2;
    v4 = v2;
    v11 = v2;
    if (!v3)
    {
      break;
    }

    v5 = 0;
    v6 = v2;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v2 = *(a1 + 8 * v5 + 32);
      }

      v7 = v2;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v4 = [v6 propertySetByCombiningWithPropertySet:v2];

      ++v5;
      v6 = v4;
      if (v8 == v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v10 = v2;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v10;
  }

LABEL_12:

  return v4;
}

id sub_10001B540()
{
  v0 = sub_100020BA8(3u);
  sub_10010FC20(&qword_101183990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6C0;
  *(inited + 32) = v0;
  v2 = static PropertySetCombinator.buildBlock(_:)(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

char *sub_10001B5D8()
{
  v1 = OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___playbackDataSource);
  }

  else
  {
    v4 = v0;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = swift_allocObject();
    swift_weakInit();
    v6 = type metadata accessor for Player.DataSource();
    v7 = objc_allocWithZone(v6);
    v8 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request;
    v9 = objc_allocWithZone(MPCPlayerRequest);

    *&v7[v8] = [v9 init];
    v7[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
    v10 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller;
    *&v7[v10] = [objc_allocWithZone(MPRequestResponseController) init];
    *&v7[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v27;
    v11 = &v7[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onResponseChanged];
    *v11 = sub_100A6EF8C;
    v11[1] = v5;
    v12 = &v7[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_onError];
    *v12 = sub_100A6EF94;
    v12[1] = v4;
    v28.receiver = v7;
    v28.super_class = v6;
    v26 = v27;

    v13 = objc_msgSendSuper2(&v28, "init");
    v14 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller;
    v15 = *&v13[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
    v16 = v13;
    [v15 setDelegate:v16];
    v17 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request;
    v18 = qword_1011A6A88;
    v19 = *&v16[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_request];
    if (v18 != -1)
    {
      swift_once();
    }

    [v19 setPlayingItemProperties:{qword_1011ACFD0, v5}];

    [*&v16[v17] setTracklistRange:{0, 0}];
    [*&v16[v17] setPlayerPath:v26];
    v20 = *&v16[v17];
    v21._countAndFlagsBits = 0x6B63616279616C50;
    v21._object = 0xEF646E616D6D6F43;
    String.append(_:)(v21);
    v22 = String._bridgeToObjectiveC()();

    [v20 setLabel:v22];

    [*&v13[v14] setRequest:*&v16[v17]];

    v23 = *(v4 + v1);
    *(v4 + v1) = v13;
    v3 = v16;

    v2 = 0;
  }

  v24 = v2;
  return v3;
}

uint64_t PlaybackController.player.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_1000237E4(v4);
}

uint64_t sub_10001B988()
{
  v0 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_10010FC20(&unk_101183D80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v7 = sub_10010FC20(&qword_10118C410);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = sub_10010FC20(&qword_10118C418);
  v20 = *(v11 - 8);
  v21 = v11;
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  (*(*qword_101218AC8 + 456))();
  sub_10010FC20(&unk_10118C420);
  sub_100020674(&unk_1011A4650, &unk_101183D80);
  Publisher.map<A>(_:)();
  (*(v4 + 8))(v6, v3);
  sub_100009F78(0, &qword_101182960);
  v14 = static OS_dispatch_queue.main.getter();
  v22 = v14;
  v15 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
  sub_100020674(&qword_10118C430, &qword_10118C410);
  sub_10001C070(&qword_101184920, &qword_101182960);
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v2, &qword_101182140);

  (*(v8 + 8))(v10, v7);
  swift_allocObject();
  if (qword_10117F228 != -1)
  {
    swift_once();
  }

  swift_weakInit();
  sub_100020674(&qword_10118C438, &qword_10118C418);
  v16 = v21;
  v17 = Publisher<>.sink(receiveValue:)();

  (*(v20 + 8))(v13, v16);
  qword_10118C3C0 = v17;
}

uint64_t sub_10001BE9C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_10001BED4()
{
  sub_100008E80();
  if (v0 <= 0x3F)
  {
    sub_10001C018();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10001C018()
{
  if (!qword_1011AC798)
  {
    _s3__C6CGRectVMa_0(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011AC798);
    }
  }
}

uint64_t sub_10001C070(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100009F78(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001C0B4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10001C144()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() iconWithSystemImageName:v2];

  v4 = objc_allocWithZone(UIApplicationShortcutItem);
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v4 initWithType:v5 localizedTitle:v6 localizedSubtitle:0 icon:v3 userInfo:0];

  return v7;
}

void sub_10001C32C()
{
  static ApplicationCapabilities.shared.getter(v20);
  sub_100014984(v20);
  v1 = BYTE8(v20[0]);
  v2 = *(v0 + OBJC_IVAR____TtC5Music22QuickActionsController_searchShortcutItem);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v3 = sub_10002584C();
  if (*(v0 + OBJC_IVAR____TtC5Music22QuickActionsController_hasFavorites) == 1)
  {
    if ((v1 & 1) == 0)
    {

      goto LABEL_14;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {

    if ((v1 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(v0 + OBJC_IVAR____TtC5Music22QuickActionsController_playMyStationShortcutItem);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_14:
  v5 = sub_100025A20();
  if (*(v0 + OBJC_IVAR____TtC5Music22QuickActionsController_nowPlaying))
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() iconWithSystemImageName:v6];

  v8 = objc_allocWithZone(UIApplicationShortcutItem);
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 initWithType:v9 localizedTitle:v10 localizedSubtitle:0 icon:v7 userInfo:0];

  v12 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v12) & 1) != 0 && (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor())
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
  }

  v13 = objc_opt_self();

  v14 = [v13 sharedApplication];
  v15 = [v14 shortcutItems];

  if (v15)
  {
    sub_100009F78(0, qword_10118A200);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = sub_10001C93C(&_swiftEmptyArrayStorage, v16);

    if (v17)
    {

      return;
    }
  }

  else
  {
  }

  v18 = [v13 sharedApplication];
  sub_100009F78(0, qword_10118A200);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 setShortcutItems:isa];
}

__n128 static ApplicationCapabilities.shared.getter@<Q0>(_OWORD *a1@<X8>)
{
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

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

uint64_t *sub_10001C8B8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001C964(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a1;
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v8)
    {
      goto LABEL_29;
    }

    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
    v35 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 < 0)
    {
      v10 = v6;
    }

    if (v7)
    {
      v11 = v10;
    }

    v12 = a2 & 0xFFFFFFFFFFFFFF8;
    v13 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v12 = a2;
    }

    if (a2 >> 62)
    {
      v13 = v12;
    }

    if (v11 == v13)
    {
LABEL_29:
      v21 = 1;
      return v21 & 1;
    }

    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = sub_100009F78(0, a3);
    if (((a2 | v6) & 0xC000000000000001) != 0)
    {
      v14 = a2 & 0xC000000000000001;
      v15 = 4;
      while (1)
      {
        v16 = v15 - 4;
        v17 = v15 - 3;
        if (__OFADD__(v15 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          v18 = a5(v15 - 4, v6);
          if (!v14)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v16 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v18 = *(v6 + 8 * v15);
          if (!v14)
          {
LABEL_24:
            if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v19 = *(a2 + 8 * v15);
            goto LABEL_26;
          }
        }

        v19 = a5(v15 - 4, a2);
LABEL_26:
        v20 = v19;
        v21 = static NSObject.== infix(_:_:)();

        if (v21)
        {
          ++v15;
          if (v17 != v8)
          {
            continue;
          }
        }

        return v21 & 1;
      }
    }

    v6 += 32;
    v22 = (a2 + 32);
    v23 = *(v35 + 16);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v8 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v6;
      v6 += 8;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v29 = v28;
      v21 = static NSObject.== infix(_:_:)();

      v31 = v25-- != 0;
      if (v21)
      {
        --v24;
        --v23;
        if (v31)
        {
          continue;
        }
      }

      return v21 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v32 = a3;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v32;
    v8 = v33;
  }

  v34 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v34;
  if (v8 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_10001CBE0(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101181520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001CC48(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A7F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001CCB0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B62E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001CD18(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011BA2C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *BackgroundRefreshController.shared.unsafeMutableAddressor()
{
  if (qword_1011A68C0 != -1)
  {
    swift_once();
  }

  return &static BackgroundRefreshController.shared;
}

unint64_t sub_10001CDD0()
{
  result = qword_1011A1140;
  if (!qword_1011A1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1140);
  }

  return result;
}

unint64_t sub_10001CE24()
{
  result = qword_1011A98A8;
  if (!qword_1011A98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A98A8);
  }

  return result;
}

unint64_t sub_10001CE78()
{
  result = qword_1011B5080;
  if (!qword_1011B5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B5080);
  }

  return result;
}

uint64_t type metadata accessor for WidgetUpdateManager()
{
  result = qword_10118D870;
  if (!qword_10118D870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001CF18()
{
  type metadata accessor for WidgetUpdateManager();
  swift_allocObject();
  result = sub_100026678();
  qword_101218B80 = result;
  return result;
}

uint64_t sub_10001CF58()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10001D018()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011897D0);
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v41 = &v38 - v3;
  v4 = sub_10010FC20(&qword_10118DA08);
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v38 - v5;
  v6 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_10010FC20(&unk_101183D80);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = sub_10010FC20(&qword_101189DE0);
  v40 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v15 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v0;

  sub_10035EB10(0, 0, v17, &unk_100EC9770, v19);

  sub_1000095E8(v17, &unk_101181520);
  if (UIApp)
  {
    v20 = [UIApp launchedToTest];
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    if (v20)
    {
      if (v23)
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Disabled because an automated test is running", v24, 2u);
      }
    }

    else
    {
      if (v23)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Starting widget update manager", v25, 2u);
      }

      if (qword_10117F5F8 != -1)
      {
        swift_once();
      }

      (*(*qword_101218AC8 + 456))();
      sub_100009F78(0, &qword_101182960);
      v26 = static OS_dispatch_queue.main.getter();
      v47 = v26;
      v27 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
      sub_100020674(&unk_1011A4650, &unk_101183D80);
      sub_1000206BC();
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v8, &qword_101182140);

      (*(v39 + 8))(v11, v9);
      swift_allocObject();
      swift_weakInit();
      sub_100020674(&unk_10118ACC0, &qword_101189DE0);
      v28 = Publisher<>.sink(receiveValue:)();

      (*(v40 + 8))(v14, v12);
      v1[4] = v28;

      v29 = ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

      v30 = v41;
      ApplicationCapabilities.Controller.$capabilities.getter();

      sub_100020674(&qword_101182BB0, &qword_1011897D0);
      sub_1003C9F28();
      v31 = v43;
      v32 = v44;
      Publisher<>.removeDuplicates()();
      (*(v42 + 8))(v30, v31);
      swift_allocObject();
      swift_weakInit();
      sub_100020674(&qword_10118DA18, &qword_10118DA08);
      v33 = v46;
      v34 = Publisher<>.sink(receiveValue:)();

      (*(v45 + 8))(v32, v33);
      v1[2] = v34;

      v35 = *ApplicationCapabilities.NotificationNames.activeAccountDidChange.unsafeMutableAddressor();
      v36 = *v29;
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v37 = v35;

      v1[3] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v37, v36, 1, 1, sub_1003C5F9C, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001D864()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_10001D8A0()
{
  sub_1000267C0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10001D948()
{
  v0 = objc_opt_self();
  v1 = 0;
  v15 = v0;
  do
  {
    v4 = *(&off_10109A9A0 + v1 + 32);
    sub_10001DBF4(v4, v19);
    sub_1000189C0(v19, v18);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v7 = 136446466;
      v16[0] = v4;
      v8 = String.init<A>(describing:)();
      v10 = sub_1000105AC(v8, v9, &v17);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2082;
      sub_1000189C0(v18, v16);
      sub_10010FC20(&unk_101183F30);
      v11 = String.init<A>(describing:)();
      v13 = v12;
      sub_1000095E8(v18, &unk_101183F30);
      v14 = sub_1000105AC(v11, v13, &v17);

      *(v7 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v5, v6, "Copying from bag, key: %{public}s, value: %{public}s", v7, 0x16u);
      swift_arrayDestroy();

      v0 = v15;
    }

    else
    {

      sub_1000095E8(v18, &unk_101183F30);
    }

    ++v1;
    v2 = [v0 standardUserDefaults];
    sub_1000189C0(v19, v18);
    v16[0] = v4;
    sub_100027238();
    sub_100009838();
    NSUserDefaults.subscript.setter(v18, v16, &_s21WidgetUserDefaultsKeyON);

    result = sub_1000095E8(v19, &unk_101183F30);
  }

  while (v1 != 4);
  return result;
}

double sub_10001DBDC(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_10001DBF4@<D0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X8>)
{
  BagProvider.shared.unsafeMutableAddressor();

  v4 = BagProvider.bag.getter();

  if (v4)
  {
    ICURLBag.subscript.getter(ICURLBagKeyMusicCommon, &v16);
    if (v17)
    {
      sub_10010FC20(&qword_101197BD0);
      if (swift_dynamicCast())
      {
        v5 = "chartsWidgetRefreshTTLSeconds";
        v6 = 0xD000000000000024;
        if (a1 != 2)
        {
          v6 = 0xD00000000000001BLL;
          v5 = "istRefreshTTLSeconds";
        }

        v7 = 0xD00000000000001DLL;
        if (a1)
        {
          v8 = "dgetsRefreshTTLSeconds";
        }

        else
        {
          v7 = 0xD000000000000026;
          v8 = "eviewed";
        }

        if (a1 <= 1u)
        {
          v9 = v7;
        }

        else
        {
          v9 = v6;
        }

        if (a1 <= 1u)
        {
          v10 = v8;
        }

        else
        {
          v10 = v5;
        }

        if (*(v15 + 16))
        {
          v11 = sub_100019C10(v9, v10 | 0x8000000000000000);
          v13 = v12;

          if (v13)
          {
            sub_10000DD18(*(v15 + 56) + 32 * v11, &v16);

            sub_100016270(&v16, a2);
            return result;
          }
        }

        else
        {
        }
      }
    }

    else
    {

      sub_1000095E8(&v16, &unk_101183F30);
    }
  }

  result = 0.0;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t BagProvider.bag.getter()
{
  sub_10010FC20(&qword_1011A9F70);
  UnfairLock.locked<A>(_:)(sub_10000E354);
  return v1;
}

uint64_t ApplicationCapabilities.Controller.$capabilities.getter()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011AD0E0);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_10001DEA0()
{
  sub_100009F78(0, &unk_10118C3A0);
  static CAPackageDefinition.play.getter(v0 + 120);

  static CAPackageDefinition.skipForward.getter(v0 + 16);
  [objc_opt_self() migrateCellularDataPreferencesIfNeeded];

  sub_10002D83C();
  MetricsReportingController.shared.unsafeMutableAddressor();
  type metadata accessor for MusicDownloadedSongCatalogStore();
  static MusicDownloadedSongCatalogStore.shared.getter();
  MusicDownloadedSongCatalogStore.activate()();

  v1 = *(v0 + 8);

  return v1();
}

id sub_10001DFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_1011B0430 != -1)
  {
    v7 = a1;
    v8 = a2;
    v9 = a4;
    v10 = a3;
    swift_once();
    a1 = v7;
    a2 = v8;
    a3 = v10;
    a4 = v9;
  }

  v5 = qword_10121B340;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v5;
  *(a4 + 24) = 0x3FF0000000000000;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0x3FF0000000000000;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = a3;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 1;

  return v5;
}

uint64_t sub_10001E0B8()
{
  result = sub_100027334();
  qword_10121B340 = result;
  return result;
}

void *sub_10001E0D8(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&qword_1011A4F88);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_10088DF68(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_10088DF68(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_100027A08(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

unint64_t *sub_10001E30C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&qword_1011A77F0);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = &_swiftEmptyArrayStorage;
    sub_100899E80(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_100899E80(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_100027A78(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

unint64_t *sub_10001E540(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&qword_1011B0C20);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = &_swiftEmptyArrayStorage;
    sub_100BFA344(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_100BFA344(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_100027AE8(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_10001E774(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&qword_1011B8490);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100C0EAD4(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_100C0EAD4(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_100027B58(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_10001E9A8(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&qword_1011BB9E8);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100C71380(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_100C71380(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_100027C38(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_10001EBDC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_100027CCC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_10010FC20(&qword_1011A4F88);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10001ED14(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_100027EBC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_10010FC20(&qword_1011A77F0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10001EE4C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_1000280AC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_10010FC20(&qword_1011B0C20);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10001EF84(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_10002829C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_10010FC20(&qword_1011B8490);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10001F0BC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_10002848C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_10010FC20(&qword_1011BB9E8);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10001F1F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6564696365646E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6269726373627573;
    }

    else
    {
      v5 = 0x6275536563696F76;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000007265;
    }

    else
    {
      v6 = 0xEF72656269726373;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x63697373616C63;
    }

    else
    {
      v5 = 0x6564696365646E75;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0x6269726373627573;
  v8 = 0xEA00000000007265;
  if (a2 != 2)
  {
    v7 = 0x6275536563696F76;
    v8 = 0xEF72656269726373;
  }

  if (a2)
  {
    v3 = 0x63697373616C63;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
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

uint64_t sub_10001F358(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0x7473696C79616C70;
      if (v6 == 5)
      {
        v8 = 0x736F65646976;
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xE900000000000073;
      }

      v10 = 0x686372616573;
      if (v6 == 3)
      {
        v10 = 0x6F69646172;
      }

      v11 = 0xE500000000000000;
      if (v6 != 3)
      {
        v11 = 0xE600000000000000;
      }

      if (*v3 <= 4u)
      {
        v8 = v10;
        v9 = v11;
      }

      v12 = 0xE900000000000077;
      v13 = 0x6F4E6E657473696CLL;
      if (v6 != 1)
      {
        v13 = 0x6573776F7262;
        v12 = 0xE600000000000000;
      }

      if (!*v3)
      {
        v13 = 0x7972617262696CLL;
        v12 = 0xE700000000000000;
      }

      if (*v3 <= 2u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v8;
      }

      if (*v3 <= 2u)
      {
        v15 = v12;
      }

      else
      {
        v15 = v9;
      }

      if (*v4 <= 2u)
      {
        if (*v4)
        {
          if (v7 == 1)
          {
            v16 = 0xE900000000000077;
            if (v14 != 0x6F4E6E657473696CLL)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v16 = 0xE600000000000000;
            if (v14 != 0x6573776F7262)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          v16 = 0xE700000000000000;
          if (v14 != 0x7972617262696CLL)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 > 4u)
      {
        if (v7 == 5)
        {
          v16 = 0xE600000000000000;
          if (v14 != 0x736F65646976)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v16 = 0xE900000000000073;
          if (v14 != 0x7473696C79616C70)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v7 == 3)
      {
        v16 = 0xE500000000000000;
        if (v14 != 0x6F69646172)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = 0xE600000000000000;
        if (v14 != 0x686372616573)
        {
          goto LABEL_5;
        }
      }

      if (v15 != v16)
      {
LABEL_5:
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

unint64_t sub_10001F644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B9B88);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      v9 = v8;

      result = sub_100019F90(v5, v6, v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v9;
      *(v3[7] + 8 * result) = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001F764()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_10001F8D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10001F7E8()
{
  result = qword_10118AD40;
  if (!qword_10118AD40)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10118AD40);
  }

  return result;
}

unint64_t sub_10001F838()
{
  result = qword_1011AC320;
  if (!qword_1011AC320)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1011AC320);
  }

  return result;
}

unint64_t sub_10001F888()
{
  result = qword_1011B45F0;
  if (!qword_1011B45F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1011B45F0);
  }

  return result;
}

unint64_t sub_10001F8D8()
{
  result = qword_1011BB1A0;
  if (!qword_1011BB1A0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1011BB1A0);
  }

  return result;
}

unint64_t sub_10001F928()
{
  result = qword_1011BD690;
  if (!qword_1011BD690)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1011BD690);
  }

  return result;
}

uint64_t sub_10001F978(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v3 = a3 + 64;
  v4 = 1 << *(a3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = (*(a3 + 48) + 24 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = v12[2];
      v16 = *(*(a3 + 56) + 8 * v11);
      v22[0] = *v12;
      v22[1] = v13;
      v22[2] = v15;
      v22[3] = v16;

      v17 = v15;

      v18 = v23;
      v19 = a1(v22);
      if (v18)
      {

        return v14;
      }

      v23 = 0;
      if (v19)
      {
        break;
      }

      v6 &= v6 - 1;

      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return v14;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return 0;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

id NSUserDefaults.init(suite:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSuiteName:0];
  }

  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithSuiteName:v3];

  if (!v4)
  {
    return 0;
  }

  return v4;
}

unint64_t sub_10001FBD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B9BC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100019C40(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10001FCD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001FD3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = Hasher._finalize()();

  return a3(a1, a2, v5);
}

uint64_t sub_10001FDC0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

uint64_t sub_10001FE54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10010FC20(&qword_1011B9BC8);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1000200FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v11 = ~v6;
    do
    {
      v14 = (*(v8 + 48) + 24 * v7);
      v15 = v14[1];
      v16 = v14[2];
      if (v15)
      {
        if (a2)
        {
          v17 = *v14 == a1 && v15 == a2;
          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
LABEL_3:
            sub_100009F78(0, &unk_1011BADB0);

            v12 = v16;
            v13 = static NSObject.== infix(_:_:)();

            if (v13)
            {
              return v7;
            }
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_3;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_100020248()
{
  result = qword_1011BB2E8;
  if (!qword_1011BB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BB2E8);
  }

  return result;
}

uint64_t sub_10002029C(uint64_t a1, uint64_t a2)
{
  v4 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020300(uint64_t a1, uint64_t a2)
{
  v4 = _s20KeyValueRegistrationC10IdentifierVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020438(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t WeakArray.append(_:)()
{
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  type metadata accessor for WeakArray.WeakBox();
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = ICPrivacyIdentifierMusic;
  *(v3 + 16) = ICPrivacyIdentifierMusic;
  *(v3 + 24) = 0;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  v5 = objc_opt_self();
  v6 = v4;

  v7 = [v5 sharedPrivacyInfo];
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v14[4] = sub_100A23AC8;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100A23AD0;
  v14[3] = &unk_1010D9540;
  v10 = _Block_copy(v14);
  v11 = v8;

  v12 = [v7 beginObservingPrivacyAcknowledgementForIdentifier:v11 handler:v10];

  _Block_release(v10);

  *(v3 + 24) = v12;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_10002063C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100020674(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000206BC()
{
  result = qword_101184920;
  if (!qword_101184920)
  {
    sub_100009F78(255, &qword_101182960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184920);
  }

  return result;
}

unint64_t sub_100020724()
{
  result = qword_1011AD100;
  if (!qword_1011AD100)
  {
    sub_100009F78(255, &qword_1011A9F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AD100);
  }

  return result;
}

unint64_t sub_10002078C()
{
  result = qword_1011B4F10;
  if (!qword_1011B4F10)
  {
    sub_100009F78(255, &qword_1011B4F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B4F10);
  }

  return result;
}

__n128 sub_1000207F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_100020808(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_10002081C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_100020830(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_100020844(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_100020858(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002086C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101181520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000208DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A54B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002094C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A7F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000209BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B62E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B9378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100020A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011BA2C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100020B0C(id *a1)
{
  sub_100009F78(0, &qword_101186F20);
  v2 = static MPPropertySet.with(_:)(sub_10001AC48);

  *a1 = v2;
  v3 = static MPPropertySet.with(_:)(sub_10001B540);

  a1[1] = v3;
}

id sub_100020BA8(unsigned __int8 a1)
{
  if (qword_10117F818 != -1)
  {
    v287 = a1;
    swift_once();
    a1 = v287;
  }

  v1 = qword_101193F40;
  if (a1 > 1u)
  {
    v292 = qword_101193F40;
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        sub_10010FC20(&qword_101186F10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100EBEF50;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v3;
        sub_10010FC20(&unk_101181640);
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_100EC6C60;
        *(v4 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v4 + 40) = v5;
        *(v4 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v4 + 56) = v6;
        *(v4 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v4 + 72) = v7;
        *(v4 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v4 + 88) = v8;
        *(v4 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v4 + 104) = v9;
        v10 = swift_initStackObject();
        *(v10 + 16) = xmmword_100EBDC20;
        *(v10 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v10 + 40) = v11;
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_100EBC6B0;
        *(v12 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v12 + 40) = v13;
        v293 = v292;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v15 = objc_opt_self();
        v16 = [v15 propertySetWithProperties:isa];

        *(v10 + 48) = v16;
        *(v10 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v10 + 64) = v17;
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_100EBDC20;
        *(v18 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v18 + 40) = v19;
        *(v18 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v18 + 56) = v20;
        v21 = Array._bridgeToObjectiveC()().super.isa;

        v22 = [v15 propertySetWithProperties:v21];

        *(v10 + 72) = v22;
        sub_10000BFA0(v10);
        swift_setDeallocating();
        sub_10010FC20(&qword_101186F18);
        swift_arrayDestroy();
        v23 = objc_allocWithZone(MPPropertySet);
        v24 = Array._bridgeToObjectiveC()().super.isa;

        sub_100009F78(0, &qword_101186F20);
        v25 = Dictionary._bridgeToObjectiveC()().super.isa;

        v26 = [v23 initWithProperties:v24 relationships:v25];

        *(inited + 48) = v26;
        *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 64) = v27;
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100EBC6B0;
        *(v28 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v28 + 40) = v29;
        v30 = Array._bridgeToObjectiveC()().super.isa;

        v31 = [v15 propertySetWithProperties:v30];

        *(inited + 72) = v31;
        *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 88) = v32;
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_100EBEF50;
        *(v33 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v33 + 40) = v34;
        *(v33 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v33 + 56) = v35;
        *(v33 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v33 + 72) = v36;
        *(v33 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v33 + 88) = v37;
        v38 = Array._bridgeToObjectiveC()().super.isa;

        v39 = [v15 propertySetWithProperties:v38];

        *(inited + 96) = v39;
        *(inited + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 112) = v40;
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_100EC3E00;
        *(v41 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v41 + 40) = v42;
        *(v41 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v41 + 56) = v43;
        *(v41 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v41 + 72) = v44;
        *(v41 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v41 + 88) = v45;
        *(v41 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v41 + 104) = v46;
        *(v41 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v41 + 120) = v47;
        *(v41 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v41 + 136) = v48;
        *(v41 + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v41 + 152) = v49;
        v50 = Array._bridgeToObjectiveC()().super.isa;

        v51 = [v15 propertySetWithProperties:v50];

        *(inited + 120) = v51;
        sub_10000BFA0(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        v52 = objc_allocWithZone(MPPropertySet);
        v53 = Array._bridgeToObjectiveC()().super.isa;
        v54 = Dictionary._bridgeToObjectiveC()().super.isa;

        v55 = [v52 initWithProperties:v53 relationships:v54];

        v56 = sub_10002B3C8();
        v57 = [v55 propertySetByCombiningWithPropertySet:v56];

        return v57;
      }

      else
      {
        sub_10010FC20(&qword_101186F10);
        v108 = swift_initStackObject();
        *(v108 + 16) = xmmword_100EBE260;
        v290 = v108;
        *(v108 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v108 + 40) = v109;
        sub_10010FC20(&unk_101181640);
        v110 = swift_allocObject();
        *(v110 + 16) = xmmword_100ED1A50;
        *(v110 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v110 + 40) = v111;
        *(v110 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v110 + 56) = v112;
        *(v110 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v110 + 72) = v113;
        *(v110 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v110 + 88) = v114;
        *(v110 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v110 + 104) = v115;
        *(v110 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v110 + 120) = v116;
        *(v110 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v110 + 136) = v117;
        *(v110 + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v110 + 152) = v118;
        *(v110 + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v110 + 168) = v119;
        *(v110 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v110 + 184) = v120;
        *(v110 + 192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v110 + 200) = v121;
        *(v110 + 208) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v110 + 216) = v122;
        v123 = swift_initStackObject();
        *(v123 + 16) = xmmword_100EC6C60;
        *(v123 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v123 + 40) = v124;
        v125 = swift_allocObject();
        *(v125 + 16) = xmmword_100EBC6B0;
        *(v125 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v125 + 40) = v126;
        v288 = v292;
        v127 = Array._bridgeToObjectiveC()().super.isa;

        v128 = objc_opt_self();
        v129 = [v128 propertySetWithProperties:v127];

        *(v123 + 48) = v129;
        *(v123 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v123 + 64) = v130;
        v131 = swift_allocObject();
        *(v131 + 16) = xmmword_100EC6C60;
        *(v131 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v131 + 40) = v132;
        *(v131 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v131 + 56) = v133;
        *(v131 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v131 + 72) = v134;
        *(v131 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v131 + 88) = v135;
        *(v131 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v131 + 104) = v136;
        v137 = swift_initStackObject();
        *(v137 + 16) = xmmword_100EBDC20;
        *(v137 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v137 + 40) = v138;
        v139 = swift_allocObject();
        *(v139 + 16) = xmmword_100EBC6B0;
        *(v139 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v139 + 40) = v140;
        v141 = Array._bridgeToObjectiveC()().super.isa;

        v142 = [v128 propertySetWithProperties:v141];

        *(v137 + 48) = v142;
        *(v137 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v137 + 64) = v143;
        v144 = swift_allocObject();
        *(v144 + 16) = xmmword_100EBDC20;
        *(v144 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v144 + 40) = v145;
        *(v144 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v144 + 56) = v146;
        v147 = Array._bridgeToObjectiveC()().super.isa;

        v148 = [v128 propertySetWithProperties:v147];

        *(v137 + 72) = v148;
        sub_10000BFA0(v137);
        swift_setDeallocating();
        sub_10010FC20(&qword_101186F18);
        swift_arrayDestroy();
        v149 = objc_allocWithZone(MPPropertySet);
        v150 = Array._bridgeToObjectiveC()().super.isa;

        sub_100009F78(0, &qword_101186F20);
        v151 = Dictionary._bridgeToObjectiveC()().super.isa;

        v152 = [v149 initWithProperties:v150 relationships:v151];

        *(v123 + 72) = v152;
        *(v123 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v123 + 88) = v153;
        v154 = swift_allocObject();
        *(v154 + 16) = xmmword_100EBC6B0;
        *(v154 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v154 + 40) = v155;
        v156 = Array._bridgeToObjectiveC()().super.isa;

        v157 = [v128 propertySetWithProperties:v156];

        *(v123 + 96) = v157;
        *(v123 + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v123 + 112) = v158;
        v159 = swift_allocObject();
        *(v159 + 16) = xmmword_100EBEF50;
        *(v159 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v159 + 40) = v160;
        *(v159 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v159 + 56) = v161;
        *(v159 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v159 + 72) = v162;
        *(v159 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v159 + 88) = v163;
        v164 = Array._bridgeToObjectiveC()().super.isa;

        v165 = [v128 propertySetWithProperties:v164];

        *(v123 + 120) = v165;
        *(v123 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v123 + 136) = v166;
        v167 = swift_allocObject();
        *(v167 + 16) = xmmword_100EBEF50;
        *(v167 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v167 + 40) = v168;
        *(v167 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v167 + 56) = v169;
        *(v167 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v167 + 72) = v170;
        *(v167 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v167 + 88) = v171;
        v172 = Array._bridgeToObjectiveC()().super.isa;

        v173 = [v128 propertySetWithProperties:v172];

        *(v123 + 144) = v173;
        sub_10000BFA0(v123);
        swift_setDeallocating();
        swift_arrayDestroy();
        v174 = objc_allocWithZone(MPPropertySet);
        v175 = Array._bridgeToObjectiveC()().super.isa;

        v176 = Dictionary._bridgeToObjectiveC()().super.isa;

        v177 = [v174 initWithProperties:v175 relationships:v176];

        v290[6] = v177;
        v290[7] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v290[8] = v178;
        v179 = swift_allocObject();
        *(v179 + 16) = xmmword_100EBCED0;
        *(v179 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v179 + 40) = v180;
        *(v179 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v179 + 56) = v181;
        *(v179 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v179 + 72) = v182;
        *(v179 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v179 + 88) = v183;
        *(v179 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v179 + 104) = v184;
        *(v179 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v179 + 120) = v185;
        v186 = swift_initStackObject();
        *(v186 + 16) = xmmword_100EBE260;
        *(v186 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v186 + 40) = v187;
        v188 = swift_allocObject();
        *(v188 + 16) = xmmword_100EBC6B0;
        *(v188 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v188 + 40) = v189;
        v190 = Array._bridgeToObjectiveC()().super.isa;

        v191 = v128;
        v192 = [v128 propertySetWithProperties:v190];

        *(v186 + 48) = v192;
        *(v186 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v186 + 64) = v193;
        v194 = swift_allocObject();
        *(v194 + 16) = xmmword_100EBEF50;
        *(v194 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v194 + 40) = v195;
        *(v194 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v194 + 56) = v196;
        *(v194 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v194 + 72) = v197;
        *(v194 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v194 + 88) = v198;
        v199 = Array._bridgeToObjectiveC()().super.isa;

        v200 = [v128 propertySetWithProperties:v199];

        *(v186 + 72) = v200;
        *(v186 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v186 + 88) = v201;
        v202 = swift_allocObject();
        *(v202 + 16) = xmmword_100EBEF50;
        *(v202 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v202 + 40) = v203;
        *(v202 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v202 + 56) = v204;
        *(v202 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v202 + 72) = v205;
        *(v202 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v202 + 88) = v206;
        v207 = Array._bridgeToObjectiveC()().super.isa;

        v208 = [v128 propertySetWithProperties:v207];

        *(v186 + 96) = v208;
        sub_10000BFA0(v186);
        swift_setDeallocating();
        swift_arrayDestroy();
        v209 = objc_allocWithZone(MPPropertySet);
        v210 = Array._bridgeToObjectiveC()().super.isa;

        v211 = Dictionary._bridgeToObjectiveC()().super.isa;

        v212 = [v209 initWithProperties:v210 relationships:v211];

        v290[9] = v212;
        v290[10] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v290[11] = v213;
        v214 = swift_allocObject();
        *(v214 + 16) = xmmword_100EBCED0;
        *(v214 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v214 + 40) = v215;
        *(v214 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v214 + 56) = v216;
        *(v214 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v214 + 72) = v217;
        *(v214 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v214 + 88) = v218;
        *(v214 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v214 + 104) = v219;
        *(v214 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v214 + 120) = v220;
        v221 = swift_initStackObject();
        *(v221 + 16) = xmmword_100EBDC20;
        *(v221 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v221 + 40) = v222;
        v223 = swift_allocObject();
        *(v223 + 16) = xmmword_100EBEF50;
        *(v223 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v223 + 40) = v224;
        *(v223 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v223 + 56) = v225;
        *(v223 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v223 + 72) = v226;
        *(v223 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v223 + 88) = v227;
        v228 = Array._bridgeToObjectiveC()().super.isa;

        v229 = [v128 propertySetWithProperties:v228];

        *(v221 + 48) = v229;
        *(v221 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v221 + 64) = v230;
        v231 = swift_allocObject();
        *(v231 + 16) = xmmword_100EBEF50;
        *(v231 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v231 + 40) = v232;
        *(v231 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v231 + 56) = v233;
        *(v231 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v231 + 72) = v234;
        *(v231 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v231 + 88) = v235;
        v236 = Array._bridgeToObjectiveC()().super.isa;

        v237 = [v191 propertySetWithProperties:v236];

        *(v221 + 72) = v237;
        sub_10000BFA0(v221);
        swift_setDeallocating();
        swift_arrayDestroy();
        v238 = objc_allocWithZone(MPPropertySet);
        v239 = Array._bridgeToObjectiveC()().super.isa;

        v240 = Dictionary._bridgeToObjectiveC()().super.isa;

        v241 = [v238 initWithProperties:v239 relationships:v240];

        v290[12] = v241;
        sub_10000BFA0(v290);
        swift_setDeallocating();
        swift_arrayDestroy();
        v242 = objc_allocWithZone(MPPropertySet);
        v243 = Array._bridgeToObjectiveC()().super.isa;
        v244 = Dictionary._bridgeToObjectiveC()().super.isa;

        v245 = [v242 initWithProperties:v243 relationships:v244];

        return v245;
      }
    }

    sub_10010FC20(&qword_101186F10);
    v59 = swift_initStackObject();
    *(v59 + 16) = xmmword_100EBE260;
    *(v59 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v59 + 40) = v60;
    sub_10010FC20(&unk_101181640);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100EBDC20;
    *(v61 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v61 + 40) = v62;
    *(v61 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v61 + 56) = v63;
    v64 = swift_initStackObject();
    *(v64 + 16) = xmmword_100EBC6B0;
    *(v64 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v64 + 40) = v65;
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_100EC6C60;
    *(v66 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v66 + 40) = v67;
    *(v66 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v66 + 56) = v68;
    *(v66 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v66 + 72) = v69;
    *(v66 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v66 + 88) = v70;
    *(v66 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v66 + 104) = v71;
    v72 = swift_initStackObject();
    *(v72 + 16) = xmmword_100EBDC20;
    *(v72 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v72 + 40) = v73;
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_100EBC6B0;
    *(v74 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v74 + 40) = v75;
    v294 = v292;
    v76 = Array._bridgeToObjectiveC()().super.isa;

    v289 = objc_opt_self();
    v77 = [v289 propertySetWithProperties:v76];

    *(v72 + 48) = v77;
    *(v72 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v72 + 64) = v78;
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_100EBDC20;
    *(v79 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v79 + 40) = v80;
    *(v79 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v79 + 56) = v81;
    v82 = Array._bridgeToObjectiveC()().super.isa;

    v83 = [v289 propertySetWithProperties:v82];

    *(v72 + 72) = v83;
    sub_10000BFA0(v72);
    swift_setDeallocating();
    sub_10010FC20(&qword_101186F18);
    swift_arrayDestroy();
    v84 = objc_allocWithZone(MPPropertySet);
    v85 = Array._bridgeToObjectiveC()().super.isa;

    sub_100009F78(0, &qword_101186F20);
    v86 = Dictionary._bridgeToObjectiveC()().super.isa;

    v87 = [v84 initWithProperties:v85 relationships:v86];

    *(v64 + 48) = v87;
    sub_10000BFA0(v64);
    swift_setDeallocating();
    sub_10001ADCC(v64 + 32);
    v88 = objc_allocWithZone(MPPropertySet);
    v89 = Array._bridgeToObjectiveC()().super.isa;

    v90 = Dictionary._bridgeToObjectiveC()().super.isa;

    v91 = [v88 initWithProperties:v89 relationships:v90];

    *(v59 + 48) = v91;
    *(v59 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v59 + 64) = v92;
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_100EBC6B0;
    *(v93 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v93 + 40) = v94;
    v95 = Array._bridgeToObjectiveC()().super.isa;

    v96 = [v289 propertySetWithProperties:v95];

    *(v59 + 72) = v96;
    *(v59 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v59 + 88) = v97;
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_100EBC6B0;
    *(v98 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v98 + 40) = v99;
    v100 = Array._bridgeToObjectiveC()().super.isa;

    v101 = [v289 propertySetWithProperties:v100];

    *(v59 + 96) = v101;
    sub_10000BFA0(v59);
    swift_setDeallocating();
    swift_arrayDestroy();
    v102 = objc_allocWithZone(MPPropertySet);
    v103 = Array._bridgeToObjectiveC()().super.isa;
    v104 = Dictionary._bridgeToObjectiveC()().super.isa;

    v105 = [v102 initWithProperties:v103 relationships:v104];

    v106 = v294;
    v107 = [v294 propertySetByCombiningWithPropertySet:v105];
LABEL_16:
    v286 = v107;

    return v286;
  }

  if (a1)
  {
    v295 = qword_101193F40;
    sub_10010FC20(&qword_101186F10);
    v246 = swift_allocObject();
    *(v246 + 16) = xmmword_100EBDC20;
    *(v246 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v246 + 40) = v247;
    v248 = qword_10117F820;
    v291 = v295;
    if (v248 != -1)
    {
      swift_once();
    }

    v249 = qword_101193F48;
    *(v246 + 48) = qword_101193F48;
    *(v246 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v246 + 64) = v250;
    sub_10010FC20(&unk_101181640);
    v251 = swift_allocObject();
    *(v251 + 16) = xmmword_100EBC6B0;
    *(v251 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v251 + 40) = v252;
    v253 = swift_allocObject();
    *(v253 + 16) = xmmword_100EBE260;
    *(v253 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v253 + 40) = v254;
    *(v253 + 48) = v249;
    *(v253 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v253 + 64) = v255;
    v256 = swift_allocObject();
    *(v256 + 16) = xmmword_100EBE260;
    *(v256 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v256 + 40) = v257;
    *(v256 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v256 + 56) = v258;
    *(v256 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v256 + 72) = v259;
    v260 = swift_initStackObject();
    *(v260 + 16) = xmmword_100EBC6B0;
    *(v260 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v260 + 40) = v261;
    v262 = swift_allocObject();
    *(v262 + 16) = xmmword_100EBC6B0;
    *(v262 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v262 + 40) = v263;
    v264 = v249;
    v265 = Array._bridgeToObjectiveC()().super.isa;

    v266 = objc_opt_self();
    v267 = [v266 propertySetWithProperties:v265];

    *(v260 + 48) = v267;
    sub_10000BFA0(v260);
    swift_setDeallocating();
    sub_10001ADCC(v260 + 32);
    v268 = objc_allocWithZone(MPPropertySet);
    v269 = Array._bridgeToObjectiveC()().super.isa;

    sub_100009F78(0, &qword_101186F20);
    v270 = Dictionary._bridgeToObjectiveC()().super.isa;

    v271 = [v268 initWithProperties:v269 relationships:v270];

    *(v253 + 72) = v271;
    *(v253 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v253 + 88) = v272;
    v273 = swift_allocObject();
    *(v273 + 16) = xmmword_100EBE260;
    *(v273 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v273 + 40) = v274;
    *(v273 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v273 + 56) = v275;
    *(v273 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v273 + 72) = v276;
    v277 = Array._bridgeToObjectiveC()().super.isa;

    v278 = [v266 propertySetWithProperties:v277];

    *(v253 + 96) = v278;
    sub_10000BFA0(v253);
    swift_setDeallocating();
    sub_10010FC20(&qword_101186F18);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v279 = objc_allocWithZone(MPPropertySet);
    v280 = Array._bridgeToObjectiveC()().super.isa;

    v281 = Dictionary._bridgeToObjectiveC()().super.isa;

    v282 = [v279 initWithProperties:v280 relationships:v281];

    *(v246 + 72) = v282;
    sub_10000BFA0(v246);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v283 = objc_allocWithZone(MPPropertySet);
    v284 = Array._bridgeToObjectiveC()().super.isa;
    v285 = Dictionary._bridgeToObjectiveC()().super.isa;

    v105 = [v283 initWithProperties:v284 relationships:v285];

    v106 = v291;
    v107 = [v291 propertySetByCombiningWithPropertySet:v105];
    goto LABEL_16;
  }

  return v1;
}

void sub_100022C64()
{
  sub_10010FC20(&qword_101186F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  sub_100009F78(0, &qword_101183A28);
  *(inited + 48) = sub_10002A4A8();
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v2;
  sub_100009F78(0, qword_101186D10);
  *(inited + 72) = sub_10002A4A8();
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v3;
  sub_100009F78(0, &qword_10118A280);
  *(inited + 96) = sub_10002A4A8();
  *(inited + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 112) = v4;
  sub_100009F78(0, &qword_10118A288);
  *(inited + 120) = sub_10002A4A8();
  sub_10000BFA0(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101186F18);
  swift_arrayDestroy();
  v5 = objc_allocWithZone(MPPropertySet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_100009F78(0, &qword_101186F20);
  v7 = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v5 initWithProperties:isa relationships:v7];

  qword_101193F40 = v8;
}

void sub_100022E68()
{
  sub_10010FC20(&unk_101181640);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100ED1A70;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v3;
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v4;
  *(v0 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 104) = v5;
  *(v0 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 120) = v6;
  *(v0 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 136) = v7;
  *(v0 + 144) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 152) = v8;
  *(v0 + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 168) = v9;
  sub_10010FC20(&qword_101186F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EC6C60;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100EBC6B0;
  *(v12 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v12 + 40) = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v61 = objc_opt_self();
  v15 = [v61 propertySetWithProperties:isa];

  *(inited + 48) = v15;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100EBC6B0;
  *(v17 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v17 + 40) = v18;
  v19 = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v61 propertySetWithProperties:v19];

  *(inited + 72) = v20;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100EC6C60;
  *(v22 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v22 + 40) = v23;
  *(v22 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v22 + 56) = v24;
  *(v22 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v22 + 72) = v25;
  *(v22 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v22 + 88) = v26;
  *(v22 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v22 + 104) = v27;
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_100EBDC20;
  *(v28 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v28 + 40) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBC6B0;
  *(v30 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v30 + 40) = v31;
  v32 = Array._bridgeToObjectiveC()().super.isa;

  v33 = [v61 propertySetWithProperties:v32];

  *(v28 + 48) = v33;
  *(v28 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v28 + 64) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100EBDC20;
  *(v35 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v35 + 40) = v36;
  *(v35 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v35 + 56) = v37;
  v38 = Array._bridgeToObjectiveC()().super.isa;

  v39 = [v61 propertySetWithProperties:v38];

  *(v28 + 72) = v39;
  sub_10000BFA0(v28);
  swift_setDeallocating();
  sub_10010FC20(&qword_101186F18);
  swift_arrayDestroy();
  v40 = objc_allocWithZone(MPPropertySet);
  v41 = Array._bridgeToObjectiveC()().super.isa;

  sub_100009F78(0, &qword_101186F20);
  v42 = Dictionary._bridgeToObjectiveC()().super.isa;

  v43 = [v40 initWithProperties:v41 relationships:v42];

  *(inited + 96) = v43;
  *(inited + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 112) = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100EBEF50;
  *(v45 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v45 + 40) = v46;
  *(v45 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v45 + 56) = v47;
  *(v45 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v45 + 72) = v48;
  *(v45 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v45 + 88) = v49;
  v50 = Array._bridgeToObjectiveC()().super.isa;

  v51 = [v61 propertySetWithProperties:v50];

  *(inited + 120) = v51;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v52;
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100EBC6B0;
  *(v53 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v53 + 40) = v54;
  v55 = Array._bridgeToObjectiveC()().super.isa;

  v56 = [v61 propertySetWithProperties:v55];

  *(inited + 144) = v56;
  sub_10000BFA0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v57 = objc_allocWithZone(MPPropertySet);
  v58 = Array._bridgeToObjectiveC()().super.isa;

  v59 = Dictionary._bridgeToObjectiveC()().super.isa;

  v60 = [v57 initWithProperties:v58 relationships:v59];

  qword_101193F48 = v60;
}

void sub_100023590()
{
  sub_10010FC20(&qword_1011AAC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  if (qword_1011A6AF0 != -1)
  {
    swift_once();
  }

  v2 = qword_1011AF040;
  *(inited + 48) = qword_1011AF040;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v3;
  v4 = qword_1011A6AF8;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_1011AF048;
  *(inited + 72) = qword_1011AF048;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v7;
  v8 = qword_1011A6B00;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1011AF050;
  *(inited + 96) = qword_1011AF050;
  v11 = v10;
  sub_10000C0A4(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011AAC28);
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MPPropertySet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_100009F78(0, &qword_1011AC8D0);
  v14 = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v12 initWithProperties:isa relationships:v14];

  static GroupActivitiesManager.Activity.playingProperties = v15;
}

uint64_t sub_1000237E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_1011AFA60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  if (a1)
  {
    swift_beginAccess();
    v8 = *(a1 + 24);
    if (v8)
    {
      if (v8 == v2)
      {
        swift_beginAccess();
        *(a1 + 24) = 0;
        swift_unknownObjectRelease();
        [*(a1 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:0];
      }
    }
  }

  v9 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v10 = *&v2[v9];
  if (v10)
  {
    swift_beginAccess();
    *(v10 + 24) = v2;

    v11 = v2;
    swift_unknownObjectRelease();
    [*(v10 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:v11];

    if (*&v2[v9])
    {
      swift_beginAccess();

      sub_10010FC20(&qword_1011ACC50);
      Published.projectedValue.getter();
      swift_endAccess();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100023AAC();
      v10 = Publisher<>.sink(receiveValue:)();

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v10 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingSubscription] = v10;
}

uint64_t sub_100023A74()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

unint64_t sub_100023AAC()
{
  result = qword_1011AD130;
  if (!qword_1011AD130)
  {
    sub_1001109D0(&unk_1011AFA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AD130);
  }

  return result;
}

void *sub_100023B18()
{
  type metadata accessor for VideoPlaybackContext();
  result = swift_allocObject();
  result[2] = 0;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    v2 = result;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v1 = sub_10010E5A8(&_swiftEmptyArrayStorage);
    }

    else
    {
      v1 = &_swiftEmptySetSingleton;
    }

    result = v2;
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  result[3] = v1;
  result[4] = &_swiftEmptyArrayStorage;
  qword_101218668 = result;
  return result;
}

id sub_100023BC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    result = MPCPlayerResponse.videoContext.getter();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void sub_100023C78(id a1)
{
  v1 = objc_opt_class();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000DFABC;
  v17[3] = &unk_101097EB8;
  v17[4] = &v18;
  v17[5] = "getStatusWithOptions:statusBlock:";
  v2 = objc_retainBlock(v17);
  v3 = imp_implementationWithBlock(v2);
  InstanceMethod = class_getInstanceMethod(v1, "getStatusWithOptions:statusBlock:");
  TypeEncoding = method_getTypeEncoding(InstanceMethod);
  v6 = class_replaceMethod(v1, "getStatusWithOptions:statusBlock:", v3, TypeEncoding);

  v19[3] = v6;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000DFBA8;
  v12[3] = &unk_101097F00;
  v12[4] = &v13;
  v12[5] = "modifyLastKnownStatusUsingBlock:";
  v7 = objc_retainBlock(v12);
  v8 = imp_implementationWithBlock(v7);
  v9 = class_getInstanceMethod(v1, "modifyLastKnownStatusUsingBlock:");
  v10 = method_getTypeEncoding(v9);
  v11 = class_replaceMethod(v1, "modifyLastKnownStatusUsingBlock:", v8, v10);

  v14[3] = v11;
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v18, 8);
}

void sub_100023E3C(unsigned __int8 *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = [objc_opt_self() shared];
  v8 = [v7 activeUserState];

  if (v8 && (v9 = [v8 music], v8, v9) && (v10 = objc_msgSend(v9, "userProfile"), v9, v10))
  {
    v11 = [v10 displayNameAccepted];

    if (!v6 || (v11 & 1) != 0)
    {
      return;
    }
  }

  else if ((v6 & 1) == 0)
  {
    return;
  }

  v12 = objc_opt_self();
  v13 = [v12 standardUserDefaults];
  SharePlayTogetherSession.didShowDisplayNameAck.unsafeMutableAddressor();

  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 BOOLForKey:v14];

  if ((v15 & 1) == 0)
  {
    v16 = [v12 standardUserDefaults];
    v17 = SharePlayTogetherSession.needsDisplayNameAckDefaultsKey.unsafeMutableAddressor();
    v18 = *v17;
    v19 = v17[1];
    v26 = &type metadata for Bool;
    v25[0] = 1;
    v24[0] = v18;
    v24[1] = v19;
    sub_100009838();

    NSUserDefaults.subscript.setter(v25, v24, &type metadata for String);

    v20 = Logger.sharePlayTogether.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v20, v2);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "[Application] [TermsAckFlow] Setting needsDisplayNameAck key", v23, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100024240(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Notification();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  if (*(v1 + 32) != 1)
  {
    return (*(v1 + 48))(a1);
  }

  v25 = v4;
  v26 = v3;
  v15 = *(v9 + 16);
  v15(&v24 - v13, a1, v8);
  v15(v12, v14, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  (*(v9 + 32))(v17 + v16, v14, v8);
  v18 = objc_opt_self();

  if ([v18 isMainThread])
  {
    (*(v1 + 48))(v12);
  }

  else
  {
    sub_100009F78(0, &qword_1011BADD0);
    v24 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100066264;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010F0AF0;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100024844();
    sub_10010FC20(&unk_1011BADE0);
    sub_100024A2C();
    v21 = v28;
    v22 = v26;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v25 + 8))(v21, v22);
    (*(v27 + 8))(v7, v29);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100024678()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

unint64_t sub_10002473C()
{
  result = qword_101183F60;
  if (!qword_101183F60)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183F60);
  }

  return result;
}

unint64_t sub_100024794()
{
  result = qword_1011AD950;
  if (!qword_1011AD950)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AD950);
  }

  return result;
}

unint64_t sub_1000247EC()
{
  result = qword_1011B9108;
  if (!qword_1011B9108)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B9108);
  }

  return result;
}

unint64_t sub_100024844()
{
  result = qword_1011B9CA8;
  if (!qword_1011B9CA8)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B9CA8);
  }

  return result;
}

unint64_t sub_10002489C()
{
  result = qword_101183F70;
  if (!qword_101183F70)
  {
    sub_1001109D0(&qword_101182970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183F70);
  }

  return result;
}

unint64_t sub_100024900()
{
  result = qword_1011AD960;
  if (!qword_1011AD960)
  {
    sub_1001109D0(&unk_1011AB610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AD960);
  }

  return result;
}

unint64_t sub_100024964()
{
  result = qword_1011B1158;
  if (!qword_1011B1158)
  {
    sub_1001109D0(&qword_1011B1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1158);
  }

  return result;
}

unint64_t sub_1000249C8()
{
  result = qword_1011B9118;
  if (!qword_1011B9118)
  {
    sub_1001109D0(&qword_1011B9110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B9118);
  }

  return result;
}

unint64_t sub_100024A2C()
{
  result = qword_1011B9CB0;
  if (!qword_1011B9CB0)
  {
    sub_1001109D0(&unk_1011BADE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B9CB0);
  }

  return result;
}

uint64_t sub_100024B50()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  if (qword_10117F660 != -1)
  {
    swift_once();
  }

  refreshed = BackgroundRefreshController.shared.unsafeMutableAddressor();

  BackgroundRefreshController.registerAllTasks()();

  v6 = *refreshed;
  UIScreen.Dimensions.size.getter(v7);
  v9 = v8;
  v11 = v10;
  swift_beginAccess();
  v12 = *(v6 + 16);
  *(v6 + 16) = v9;
  *(v6 + 24) = v11;

  sub_100020438(v12);

  if (qword_10117F678 != -1)
  {
    swift_once();
  }

  sub_10001D018();
  if (qword_10117F278 != -1)
  {
    swift_once();
  }

  TaskPriority.init(rawValue:)();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_10035EB10(0, 0, v4, &unk_100EC7BC0, v14);

  sub_1000095E8(v4, &unk_101181520);
  v15 = [objc_opt_self() currentNotificationCenter];
  [v15 setDelegate:v1];

  [*(v1 + OBJC_IVAR____TtC5Music19ApplicationDelegate_remoteRadioController) start];
  return 1;
}

uint64_t sub_100024DF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_100024E2C()
{
  result = [objc_allocWithZone(type metadata accessor for QuickActionsController()) init];
  qword_101218B68 = result;
  return result;
}

char *sub_100024E5C()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v41 = &v38 - v2;
  v3 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = sub_10010FC20(&unk_101183D80);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v10 = sub_10010FC20(&qword_10118D4B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  v14 = sub_10010FC20(&qword_10118D4B8);
  v39 = *(v14 - 8);
  v40 = v14;
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  *&v0[OBJC_IVAR____TtC5Music22QuickActionsController_nowPlaying] = 0;
  *&v0[OBJC_IVAR____TtC5Music22QuickActionsController_observers] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC5Music22QuickActionsController_fspAutoupdatingResponse] = 0;
  *&v0[OBJC_IVAR____TtC5Music22QuickActionsController_bindings] = &_swiftEmptyArrayStorage;
  v17 = OBJC_IVAR____TtC5Music22QuickActionsController_searchShortcutItem;
  *&v0[v17] = sub_100025670();
  v18 = OBJC_IVAR____TtC5Music22QuickActionsController_playMyStationShortcutItem;
  *&v0[v18] = sub_10001C144();
  v0[OBJC_IVAR____TtC5Music22QuickActionsController_hasFavorites] = 0;
  v19 = type metadata accessor for QuickActionsController();
  v43.receiver = v0;
  v43.super_class = v19;
  v20 = objc_msgSendSuper2(&v43, "init");
  sub_10001C32C();
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  (*(*qword_101218AC8 + 456))();
  sub_100020674(&unk_1011A4650, &unk_101183D80);
  Publisher.removeDuplicates(by:)();
  (*(v7 + 8))(v9, v6);
  sub_100009F78(0, &qword_101182960);
  v21 = static OS_dispatch_queue.main.getter();
  v42 = v21;
  v22 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  sub_100020674(&qword_10118D4C0, &qword_10118D4B0);
  sub_1000206BC();
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v5, &qword_101182140);

  (*(v11 + 8))(v13, v10);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&qword_10118D4C8, &qword_10118D4B8);
  v23 = v20;
  v24 = v40;
  Publisher<>.sink(receiveValue:)();

  (*(v39 + 8))(v16, v24);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v25 = type metadata accessor for TaskPriority();
  v26 = v41;
  (*(*(v25 - 8) + 56))(v41, 1, 1, v25);
  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v23;
  sub_1001F4CB8(0, 0, v26, &unk_100EC91E8, v28);

  sub_10010FC20(&qword_101183990);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100EBC6C0;
  sub_10010FC20(&qword_101183B78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  v31 = *ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange.unsafeMutableAddressor();
  ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  UIScreen.Dimensions.size.getter(v32);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v33;
  *(inited + 40) = v34;
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();

  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  v36 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 0, sub_1003C1F4C, v35);

  *(v29 + 32) = v36;
  *&v23[OBJC_IVAR____TtC5Music22QuickActionsController_bindings] = v29;

  return v23;
}

uint64_t sub_1000255F8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100025630()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_100025670()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() iconWithSystemImageName:v2];

  v4 = objc_allocWithZone(UIApplicationShortcutItem);
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v4 initWithType:v5 localizedTitle:v6 localizedSubtitle:0 icon:v3 userInfo:0];

  return v7;
}

id sub_10002584C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() iconWithSystemImageName:v2];

  v4 = objc_allocWithZone(UIApplicationShortcutItem);
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();

  v7 = [v4 initWithType:v5 localizedTitle:v6 localizedSubtitle:0 icon:v3 userInfo:0];

  return v7;
}

id sub_100025A20()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = *(v0 + OBJC_IVAR____TtC5Music22QuickActionsController_nowPlaying);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 tracklist];
  v5 = [v4 playingItem];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = [v5 metadataObject];

  if (v6)
  {
    v7 = [v6 innermostModelObject];

    sub_1003C1A14();
    v5 = v8;
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_6:
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() iconWithSystemImageName:v9];

  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();

  if (v5)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(UIApplicationShortcutItem) initWithType:v11 localizedTitle:v12 localizedSubtitle:v13 icon:v10 userInfo:0];

  return v14;
}

unint64_t sub_100025CE0()
{
  result = qword_101183890;
  if (!qword_101183890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183890);
  }

  return result;
}

unint64_t sub_100025D34()
{
  result = qword_1011AFC10;
  if (!qword_1011AFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFC10);
  }

  return result;
}

unint64_t sub_100025D88()
{
  result = qword_1011B1750;
  if (!qword_1011B1750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1750);
  }

  return result;
}

unint64_t sub_100025DDC()
{
  result = qword_1011BBAF8;
  if (!qword_1011BBAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BBAF8);
  }

  return result;
}

uint64_t FeatureFlagsKey.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v6[3] = a1;
  v6[4] = a2;
  v4 = sub_10001C8B8(v6);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LOBYTE(v3) = isFeatureEnabled(_:)();
  sub_10000959C(v6);
  return v3 & 1;
}

const char *Feature.Music.feature.getter(char a1)
{
  result = "potluck";
  switch(a1)
  {
    case 1:
      result = "bilby";
      break;
    case 2:
      result = "symphony";
      break;
    case 3:
      result = "qulh";
      break;
    case 4:
      result = "image_playground_covers";
      break;
    case 5:
      result = "in_with_the_new";
      break;
    case 6:
      result = "despacito";
      break;
    case 7:
      result = "despacito_server";
      break;
    case 8:
      result = "atv_sing";
      break;
    case 9:
      result = "lucky_roll";
      break;
    case 10:
      result = "motion_over_media_remote";
      break;
    case 11:
      result = "ipad_motion_background";
      break;
    case 12:
      result = "quick_search";
      break;
    case 13:
      result = "pins_widget";
      break;
    case 14:
      result = "jafar";
      break;
    case 15:
      result = "jose";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000260B0(unint64_t a1, unint64_t a2, unint64_t *a3)
{
  sub_100009F78(0, a3);
  if (a2 >> 62)
  {
    v5 = _CocoaArrayWrapper.subscript.getter();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v5;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v7 = 0xD000000000000046;
    v6 = 0x8000000100E57D00;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v5;
  }

  _StringGuts.grow(_:)(82);
  v6 = 0x8000000100E57CB0;
  v7 = 0xD000000000000043;
LABEL_11:
  String.append(_:)(*&v7);
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x756F662074756220;
  v10._object = 0xEB0000000020646ELL;
  String.append(_:)(v10);
  swift_getObjectType();
  v11._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v11);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t *ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange.unsafeMutableAddressor()
{
  if (qword_1011A68A8 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange;
}

NSString sub_1000262D0()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange = result;
  return result;
}

uint64_t *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor()
{
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.Controller.shared;
}

id sub_100026358()
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

Swift::Void __swiftcall BackgroundRefreshController.registerAllTasks()()
{
  static os_log_type_t.default.getter();
  sub_10010FC20(&qword_1011A98A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6B0;
  *(v0 + 56) = &type metadata for String;
  v1 = sub_10001CE24();
  *(v0 + 64) = v1;
  *(v0 + 32) = 0xD00000000000002FLL;
  *(v0 + 40) = 0x8000000100E5D320;
  sub_100009F78(0, &qword_1011AFB00);
  v2 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v3 = objc_opt_self();
  v4 = [v3 sharedScheduler];
  v5 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_100963300;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_1010D2EA0;
  v6 = _Block_copy(aBlock);
  [v4 registerForTaskWithIdentifier:v5 usingQueue:0 launchHandler:v6];
  _Block_release(v6);

  static os_log_type_t.default.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBC6B0;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = v1;
  *(v7 + 32) = 0xD000000000000041;
  *(v7 + 40) = 0x8000000100E5D3B0;
  v8 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v9 = [v3 sharedScheduler];
  v10 = String._bridgeToObjectiveC()();
  [v9 cancelTaskRequestWithIdentifier:v10];
}

uint64_t sub_100026678()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v0 + 48) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillTerminateNotification, 0, 1, 1, sub_1003C8F8C, 0);
  *(v0 + 56) = 0;
  *(v0 + 64) = &_swiftEmptySetSingleton;
  static Logger.music(_:)();
  return v0;
}

uint64_t type metadata accessor for UserProfileObserver()
{
  result = qword_101182AF8;
  if (!qword_101182AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100026780()
{
  type metadata accessor for UserProfileObserver();
  v0 = swift_allocObject();
  result = sub_1000268F8();
  qword_1012186F8 = v0;
  return result;
}

void sub_1000267C0()
{
  if (!qword_101182B08)
  {
    sub_1001109D0(&qword_101183AD0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101182B08);
    }
  }
}

uint64_t sub_100026824(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1000268D8(a1, v4, v5, v6);
}

uint64_t sub_1000268F8()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v42 = &v39 - v3;
  v4 = sub_10010FC20(&qword_1011897D0);
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  __chkstk_darwin(v4);
  v40 = &v39 - v6;
  v7 = sub_10010FC20(&qword_101182BA8);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  __chkstk_darwin(v7);
  v41 = &v39 - v9;
  v10 = sub_10010FC20(&qword_101184240);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v14 = sub_10010FC20(&qword_101183AD0);
  v15 = __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v39 - v18;
  v20 = OBJC_IVAR____TtC5Music19UserProfileObserver__profile;
  v21 = type metadata accessor for UserProfile();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  sub_1000089F8(v19, v17, &qword_101183AD0);
  Published.init(initialValue:)();
  sub_1000095E8(v19, &qword_101183AD0);
  (*(v11 + 32))(v1 + v20, v13, v10);
  v22 = OBJC_IVAR____TtC5Music19UserProfileObserver_capabilitiesSubscription;
  *(v1 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilitiesSubscription) = 0;
  v23 = OBJC_IVAR____TtC5Music19UserProfileObserver_privacyAcknowledgementObserver;
  *(v1 + OBJC_IVAR____TtC5Music19UserProfileObserver_privacyAcknowledgementObserver) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19UserProfileObserver_task) = 0;
  v24 = (v1 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities);
  sub_10001DBDC(v48);
  v25 = v48[5];
  v24[4] = v48[4];
  v24[5] = v25;
  v26 = v48[7];
  v24[6] = v48[6];
  v24[7] = v26;
  v27 = v48[1];
  *v24 = v48[0];
  v24[1] = v27;
  v28 = v48[3];
  v24[2] = v48[2];
  v24[3] = v28;
  ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

  v29 = v40;
  ApplicationCapabilities.Controller.$capabilities.getter();

  sub_100027010();
  v30 = static OS_dispatch_queue.main.getter();
  v47 = v30;
  v31 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v32 = v42;
  (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
  sub_100020674(&qword_101182BB0, &qword_1011897D0);
  sub_1000206BC();
  v33 = v41;
  v34 = v43;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v32, &qword_101182140);

  (*(v44 + 8))(v29, v34);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_101182BB8, &qword_101182BA8);

  v35 = v45;
  v36 = Publisher<>.sink(receiveValue:)();

  (*(v46 + 8))(v33, v35);
  *(v1 + v22) = v36;

  v37 = swift_allocObject();
  swift_weakInit();

  type metadata accessor for PrivacyAcknowledgementObserver();
  swift_allocObject();
  *(v1 + v23) = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_10017E930, v37);

  return v1;
}

uint64_t sub_100026F00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100026F38()
{
  sub_10001D948();
  sub_10002867C();
  v1 = *(v0 + 8);

  return v1();
}

double ICURLBag.subscript.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ([v2 valueForBagKey:a1])
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_100027010()
{
  result = qword_101182960;
  if (!qword_101182960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101182960);
  }

  return result;
}

unint64_t sub_10002705C()
{
  result = qword_1011A9F80;
  if (!qword_1011A9F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011A9F80);
  }

  return result;
}

unint64_t sub_1000270A8()
{
  result = qword_1011B4F00;
  if (!qword_1011B4F00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B4F00);
  }

  return result;
}

unint64_t sub_1000270F4()
{
  result = qword_1011B9100;
  if (!qword_1011B9100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B9100);
  }

  return result;
}

unint64_t sub_100027140()
{
  result = qword_1011BADD0;
  if (!qword_1011BADD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011BADD0);
  }

  return result;
}

uint64_t sub_10002718C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return sub_10002728C();
}

unint64_t sub_100027238()
{
  result = qword_10118B1D0;
  if (!qword_10118B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118B1D0);
  }

  return result;
}

void sub_1000272A8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "chartsWidgetRefreshTTLBagValue";
  v4 = 0xD000000000000022;
  v5 = "RefreshTTLBagValue";
  if (v2 != 3)
  {
    v5 = "moteQueriesEnabledBagValue";
  }

  if (v2 != 2)
  {
    v4 = 0xD00000000000002ALL;
    v3 = v5;
  }

  v6 = 0xD00000000000001ELL;
  if (*v1)
  {
    v7 = "idgetRefreshTTLBagValue";
  }

  else
  {
    v6 = 0xD000000000000027;
    v7 = "ShortcutItem.🌚";
  }

  if (*v1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v6 = v4;
    v8 = v3;
  }

  *a1 = v6;
  a1[1] = v8 | 0x8000000000000000;
}

uint64_t sub_100027334()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v59 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&qword_1011B0C20);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v55 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v55 - v14;
  __chkstk_darwin(v13);
  v17 = &v55 - v16;
  v61 = sub_10001E540(&_swiftEmptyArrayStorage);
  sub_10010FC20(&qword_1011B0C28);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v63 = *(v4 + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBE260;
  v65 = v18;
  v58 = v19;
  v20 = v19 + v18;
  v21 = objc_opt_self();
  v22 = [v21 mainBundle];
  v23 = [v22 resourceURL];

  if (v23)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v1 + 56);
    v25 = v17;
    v26 = 0;
  }

  else
  {
    v24 = *(v1 + 56);
    v25 = v17;
    v26 = 1;
  }

  v64 = v24;
  v24(v25, v26, 1, v0);
  v27 = v1;
  sub_100027AE8(v17, v20);
  type metadata accessor for BundleFinder();
  v28 = [v21 bundleForClass:swift_getObjCClassFromMetadata()];
  v29 = [v28 resourceURL];

  if (v29)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = v60;
  v56 = v27;
  v32 = v15;
  v33 = v15;
  v34 = v64;
  v64(v32, v30, 1, v0);
  v35 = v63;
  sub_100027AE8(v33, v20 + v63);
  v36 = [v21 mainBundle];
  v37 = [v36 bundleURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = (v27 + 7);
  v34(v20 + 2 * v35, 0, 1, v0);
  v66 = v61;
  sub_10001EE4C(v58);
  v38 = v66;
  v39 = v66[2];
  if (v39)
  {
    v40 = 0;
    v41 = v65 + v66;
    v65 = (v56 + 6);
    v61 = (v56 + 1);
    v56 += 4;
    v57 = "1F9AD12BundleFinder";
    v58 = v39;
    while (v40 < v38[2])
    {
      sub_1000089F8(v41, v9, &qword_1011B0C20);
      v42 = *v65;
      if ((*v65)(v9, 1, v0) == 1)
      {
        sub_100028B70(v9);
        v43 = 1;
      }

      else
      {
        URL.appendingPathComponent(_:)();
        (*v61)(v9, v0);
        v43 = 0;
      }

      v64(v12, v43, 1, v0);
      sub_1000089F8(v12, v31, &qword_1011B0C20);
      if (v42(v31, 1, v0) == 1)
      {
        sub_100028B70(v12);
      }

      else
      {
        v44 = v38;
        v45 = v12;
        v46 = v9;
        v47 = v59;
        (*v56)(v59, v31, v0);
        v48 = objc_allocWithZone(NSBundle);
        URL._bridgeToObjectiveC()(v49);
        v51 = v50;
        v52 = [v48 initWithURL:v50];

        v31 = v60;
        v53 = v47;
        v9 = v46;
        v12 = v45;
        v38 = v44;
        v39 = v58;
        (*v61)(v53, v0);
        sub_100028B70(v12);
        if (v52)
        {

          return v52;
        }
      }

      ++v40;
      v41 += v63;
      if (v39 == v40)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100027998(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101183A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A4F88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027A78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A77F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B0C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B8490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BA528);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027C38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011BB9E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for BundleFinder()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

size_t sub_100027CCC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(&unk_1011A4F90);
  v10 = *(sub_10010FC20(&qword_1011A4F88) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10010FC20(&qword_1011A4F88) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_100027EBC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(&qword_1011A77F8);
  v10 = *(sub_10010FC20(&qword_1011A77F0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10010FC20(&qword_1011A77F0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1000280AC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(&qword_1011B0C28);
  v10 = *(sub_10010FC20(&qword_1011B0C20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10010FC20(&qword_1011B0C20) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_10002829C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(&qword_1011B8498);
  v10 = *(sub_10010FC20(&qword_1011B8490) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10010FC20(&qword_1011B8490) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_10002848C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(&qword_1011BB9F0);
  v10 = *(sub_10010FC20(&qword_1011BB9E8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10010FC20(&qword_1011BB9E8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_10002867C()
{
  v17 = [objc_opt_self() standardUserDefaults];
  if (qword_10117F570 != -1)
  {
    swift_once();
  }

  v0 = qword_101218A18;
  if (qword_101218A18)
  {
    sub_100027238();
    sub_100009838();
    v1 = v0;
    v2 = 0;
    v16 = v1;
    do
    {
      v18 = *(&off_10109A9C8 + v2 + 32);
      v21[0] = v18;
      NSUserDefaults.subscript.getter(v22);
      sub_1000189C0(v22, v21);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v3 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v3 = 136446466;
        v19[0] = v18;
        v4 = String.init<A>(describing:)();
        v6 = sub_1000105AC(v4, v5, &v20);

        *(v3 + 4) = v6;
        *(v3 + 12) = 2082;
        sub_1000189C0(v21, v19);
        sub_10010FC20(&unk_101183F30);
        v7 = String.init<A>(describing:)();
        v9 = v8;
        sub_1000095E8(v21, &unk_101183F30);
        v10 = sub_1000105AC(v7, v9, &v20);

        *(v3 + 14) = v10;
        _os_log_impl(&_mh_execute_header, v11, v12, "Copying to widgetUserDefaults, key: %{public}s, value %{public}s", v3, 0x16u);
        swift_arrayDestroy();
        v1 = v16;
      }

      else
      {

        sub_1000095E8(v21, &unk_101183F30);
      }

      ++v2;
      sub_1000189C0(v22, v21);
      v19[0] = v18;
      NSUserDefaults.subscript.setter(v21, v19, &_s21WidgetUserDefaultsKeyON);
      sub_1000095E8(v22, &unk_101183F30);
    }

    while (v2 != 5);
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to obtain widget user defaults", v15, 2u);
    }
  }
}

uint64_t sub_100028A38(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101183A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028AA0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A4F88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028B08(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A77F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028B70(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B0C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028BD8(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B8490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028C40(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BA528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028CA8(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BB9E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CAPackage.init(definition:)(uint64_t a1)
{
  v41 = type metadata accessor for URL();
  v3 = *(v41 - 8);
  v4 = __chkstk_darwin(v41);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v38 - v7;
  if (qword_1011B04B0 != -1)
  {
    swift_once();
  }

  v42 = v1;
  v9 = qword_1011B1290;
  v11 = *a1;
  v10 = *(a1 + 8);
  v12 = sub_10002995C(*a1, v10);
  if (v13 >> 60 == 15)
  {
    v39 = v3;
    v14 = *(a1 + 16);
    v40 = a1;
    v15 = v14;
    v16 = String._bridgeToObjectiveC()();
    v17 = String._bridgeToObjectiveC()();
    v18 = [v15 URLForResource:v16 withExtension:v17];

    if (!v18)
    {
      [objc_allocWithZone(NSError) initWithDomain:NSURLErrorDomain code:-1002 userInfo:0];
      swift_willThrow();
      sub_10002A428(v40);

      return v9;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = v39;
    v20 = v41;
    (*(v39 + 32))(v8, v6, v41);
    v21 = v42;
    v22 = Data.init(contentsOf:options:)();
    if (v21)
    {
      (*(v19 + 8))(v8, v20);

      v24 = v40;
LABEL_12:
      sub_10002A428(v24);
      return v9;
    }

    v31 = v22;
    v42 = 0;
    v32 = v23;
    sub_100029CC8(v22, v23, v11, v10);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = v32;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v43 = 0;
    v9 = [ObjCClassFromMetadata packageWithData:isa type:kCAPackageTypeArchive options:0 error:&v43];

    if (!v9)
    {
      v9 = v43;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10002C064(v31, v34);
      sub_10002A428(v40);
      (*(v39 + 8))(v8, v20);
      return v9;
    }

    v36 = *(v39 + 8);
    v37 = v43;
    v36(v8, v20);

    sub_10002C064(v31, v34);
    a1 = v40;
  }

  else
  {
    v25 = v12;
    v26 = v13;
    v27 = swift_getObjCClassFromMetadata();
    v28 = Data._bridgeToObjectiveC()().super.isa;
    v43 = 0;
    v9 = [v27 packageWithData:v28 type:kCAPackageTypeArchive options:0 error:&v43];

    if (!v9)
    {
      v9 = v43;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100029CA4(v25, v26);
      v24 = a1;
      goto LABEL_12;
    }

    v29 = v43;
    sub_100029CA4(v25, v26);
  }

  sub_10002A428(a1);
  return v9;
}

void sub_100029174()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_101218A18 = v2;
}

uint64_t sub_1000291E4()
{
  _s16PackageDataCacheCMa();
  swift_allocObject();
  result = sub_100029248();
  qword_1011B1290 = result;
  return result;
}

uint64_t sub_100029248()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v12 - 8);
  __chkstk_darwin(v12);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = sub_1000294D8(&_swiftEmptyArrayStorage);
  v6 = sub_100009F78(0, &qword_1011B4F00);
  v10[1] = "AF216PackageDataCache";
  v10[2] = v6;
  static DispatchQoS.unspecified.getter();
  v13 = &_swiftEmptyArrayStorage;
  sub_100029830(&qword_1011B1380, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10010FC20(&qword_1011B1388);
  sub_100029908(&qword_1011B1390, &qword_1011B1388);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = v11;
  *(v11 + 24) = v7;
  return v8;
}

unint64_t sub_1000294D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B1648);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_10002BC44(v7, v8);
      result = sub_10000F8B8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000295F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100029638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100029680(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000296C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100029710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100029758(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000297A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000297E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100029830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100029878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000298C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100029908(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002995C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v14 = xmmword_100EFDB60;
  v6 = *(v3 + 24);
  v7 = swift_allocObject();
  v7[2] = &v14;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10002BC38;
  *(v8 + 24) = v7;
  v13[4] = sub_100029B94;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100029B9C;
  v13[3] = &unk_1010E19F0;
  v9 = _Block_copy(v13);
  v10 = v6;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v12 = v14;
    sub_10002D6A4(v14, *(&v14 + 1));
    sub_100029CA4(v12, *(&v12 + 1));

    return v12;
  }

  return result;
}

uint64_t sub_100029B0C()
{

  return swift_deallocObject();
}

uint64_t sub_100029BEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_10000F8B8(a3, a4);
    if (v10)
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v12 = *v11;
      v13 = v11[1];
      sub_10002BC44(*v11, v13);
    }

    else
    {
      v12 = 0;
      v13 = 0xF000000000000000;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = *a1;
  v15 = a1[1];
  *a1 = v12;
  a1[1] = v13;
  return sub_100029CA4(v14, v15);
}

uint64_t sub_100029CA4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002C064(a1, a2);
  }

  return a1;
}

uint64_t sub_100029CC8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v5 + 24);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a1;
  v17[6] = a2;
  aBlock[4] = sub_10002BD98;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010E1978;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  sub_10002BC44(a1, a2);
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_100029830(&qword_1011B1148, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_1011B1150);
  sub_100029908(&qword_1011B1158, &qword_1011B1150);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);
}

uint64_t sub_100029FBC()
{

  sub_10002C064(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_10002A004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10000F8B8(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10002BDA8(v18, a5 & 1);
      v13 = sub_10000F8B8(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100BB35C0();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_10002C064(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

uint64_t Logger.scenes.unsafeMutableAddressor()
{
  if (qword_1011B05F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.scenes);
}

uint64_t sub_10002A27C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.scenes);
  sub_1000060E4(v0, static Logger.scenes);
  return static Logger.music(_:)();
}