uint64_t sub_1000012E0(uint64_t a1)
{
  v2 = sub_100001434();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000138C();
  sub_100005218();
  return 0;
}

unint64_t sub_10000138C()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

unint64_t sub_100001434()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

unint64_t sub_1000014A8()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

uint64_t sub_1000014FC()
{
  v0 = sub_10000304C(&qword_10000C178, &qword_100005E30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100005208();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000051C8();
  sub_10000313C(v7, qword_10000D1A0);
  sub_100003104(v7, qword_10000D1A0);
  sub_1000051F8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_1000051B8();
}

uint64_t sub_10000166C()
{
  v1 = (*(*(sub_10000304C(&qword_10000C170, &unk_100005A30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v3 = &v20 - v2;
  v4 = *(*(sub_10000304C(&qword_10000C178, &qword_100005E30) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100005208();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v14 = *v0;
  sub_100003840();
  if ((v14 - 1) >= 4 && (v14 - 5) >= 2)
  {
    v15 = 1;
  }

  else
  {
    sub_1000051F8();
    v15 = 0;
  }

  (*(v11 + 56))(v7, v15, 1, v10);
  sub_100003094(v7, v9);
  v16 = *(type metadata accessor for AmbientSettingsDeepLink() + 20);
  v17 = sub_1000050E8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v3, &v0[v16], v17);
  (*(v18 + 56))(v3, 0, 1, v17);
  sub_100003914();
  return sub_1000050F8();
}

uint64_t sub_100001948(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000019E8;

  return sub_1000033BC(&off_1000087E0, 1);
}

uint64_t sub_1000019E8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100001AE8, 0, 0);
}

uint64_t sub_100001AE8()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for AmbientSettingsDeepLink();
    v4 = *(v3 - 8);
    sub_100003758(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);

    v5 = 0;
  }

  else
  {
    v6 = v0[4];

    v3 = type metadata accessor for AmbientSettingsDeepLink();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[2], v5, 1, v3);
  v7 = v0[1];

  return v7();
}

uint64_t sub_100001C10(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100001CB0;

  return sub_1000033BC(&off_1000087E0, 0);
}

uint64_t sub_100001CB0(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100001DCC()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_100001E24()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t type metadata accessor for AmbientSettingsDeepLink()
{
  result = qword_10000C138;
  if (!qword_10000C138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001EF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001F90;

  return sub_1000033BC(a1, 1);
}

uint64_t sub_100001F90(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100002090(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003828;

  return sub_1000033BC(&off_1000087E0, 1);
}

uint64_t sub_100002130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000021F0;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000021F0(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_1000022F4()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_100002380()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    sub_100002420(&qword_10000C078, qword_100005658);
    sub_1000031A0(&qword_10000C068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

uint64_t sub_100002420(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002468(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000014A8();
  *v6 = v2;
  v6[1] = sub_10000251C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000251C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002610(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000251C;

  return sub_100001948(a1);
}

uint64_t sub_1000026B0()
{
  v0 = qword_10000C030;

  return v0;
}

uint64_t sub_10000271C()
{
  v0 = sub_10000304C(&qword_10000C188, &qword_100005A40);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_10000304C(&qword_10000C190, &qword_100005A48);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000031A0(&qword_10000C058);
  sub_100005178();
  v9._object = 0x8000000100005F90;
  v9._countAndFlagsBits = 0xD000000000000030;
  sub_100005168(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100005158();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100005168(v10);
  return sub_100005188();
}

unint64_t sub_10000299C()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_1000029F0()
{
  sub_1000031A0(&qword_10000C180);
  v1 = sub_100005128();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100002B18()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

uint64_t sub_100002B78@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  v2 = sub_1000051C8();
  v3 = sub_100003104(v2, qword_10000D1A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100002C24()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    sub_100002420(&qword_10000C0D0, &qword_1000058F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

uint64_t sub_100002C88(uint64_t a1)
{
  v2 = sub_1000031A0(&qword_10000C058);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100002D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003824;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100002DEC(uint64_t a1)
{
  v2 = sub_1000031A0(&qword_10000C0B8);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100002E68(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v4 = *a1;
    if (v4 >= 7)
    {
      return v4 - 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1000050E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_100002F20(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 249)
  {
    *result = a2 + 6;
  }

  else
  {
    v7 = sub_1000050E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100002FC0()
{
  result = sub_1000050E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000304C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003094(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000304C(&qword_10000C178, &qword_100005E30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003104(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000313C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000031A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AmbientSettingsDeepLink();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_1000031E4(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10000304C(&qword_10000C198, &unk_100005A60);
  v10 = *(type metadata accessor for AmbientSettingsDeepLink() - 8);
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
  v15 = *(type metadata accessor for AmbientSettingsDeepLink() - 8);
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

uint64_t sub_1000033BC(uint64_t a1, char a2)
{
  *(v2 + 56) = a2;
  *(v2 + 16) = a1;
  v3 = type metadata accessor for AmbientSettingsDeepLink();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10000348C, 0, 0);
}

id sub_10000348C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (*(v0 + 56) == 1)
  {
    if (v2)
    {
      v3 = *(v0 + 32);
      v30 = *(v0 + 24);
      v4 = objc_opt_self();
      v5 = (v1 + 32);
      v6 = &_swiftEmptyArrayStorage;
      while (1)
      {
        v9 = *v5++;
        v8 = v9;
        v10 = [v4 currentDevice];
        v11 = [v10 userInterfaceIdiom];

        if (!v11)
        {
          if (v8 < 4)
          {
            goto LABEL_10;
          }

          result = MobileGestalt_get_current_device();
          if (!result)
          {
            __break(1u);
            return result;
          }

          v13 = result;
          deviceSupportsAlwaysOnTime = MobileGestalt_get_deviceSupportsAlwaysOnTime();

          if (deviceSupportsAlwaysOnTime)
          {
LABEL_10:
            v15 = *(v0 + 48);
            *v15 = v8;
            v16 = &v15[*(v30 + 20)];
            sub_1000050D8();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = sub_1000031E4(0, v6[2] + 1, 1, v6);
            }

            v18 = v6[2];
            v17 = v6[3];
            if (v18 >= v17 >> 1)
            {
              v6 = sub_1000031E4(v17 > 1, v18 + 1, 1, v6);
            }

            v7 = *(v0 + 48);
            v6[2] = v18 + 1;
            sub_1000037BC(v7, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18);
          }
        }

        if (!--v2)
        {
          goto LABEL_23;
        }
      }
    }
  }

  else if (v2)
  {
    v20 = *(v0 + 24);
    v19 = *(v0 + 32);
    v21 = (v1 + 32);
    v6 = &_swiftEmptyArrayStorage;
    do
    {
      v22 = *v21++;
      **(v0 + 40) = v22;
      v23 = *(v20 + 20);
      sub_1000050D8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1000031E4(0, v6[2] + 1, 1, v6);
      }

      v25 = v6[2];
      v24 = v6[3];
      if (v25 >= v24 >> 1)
      {
        v6 = sub_1000031E4(v24 > 1, v25 + 1, 1, v6);
      }

      v26 = *(v0 + 40);
      v6[2] = v25 + 1;
      sub_1000037BC(v26, v6 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v25);
      --v2;
    }

    while (v2);
    goto LABEL_23;
  }

  v6 = &_swiftEmptyArrayStorage;
LABEL_23:
  v28 = *(v0 + 40);
  v27 = *(v0 + 48);

  v29 = *(v0 + 8);

  return v29(v6);
}

uint64_t sub_100003758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AmbientSettingsDeepLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000037BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AmbientSettingsDeepLink();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000039D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v9 = 0x8000000100005E40;
    v10 = 0xD000000000000015;
    if (a1 != 1)
    {
      v10 = 0xD000000000000016;
      v9 = 0x8000000100005E60;
    }

    if (a1)
    {
      v7 = v10;
    }

    else
    {
      v7 = 47;
    }

    if (v2)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0xE100000000000000;
    }
  }

  else
  {
    v3 = 0x8000000100005EC0;
    v4 = 0xD00000000000002DLL;
    if (a1 != 5)
    {
      v4 = 0xD000000000000031;
      v3 = 0x8000000100005EF0;
    }

    v5 = 0x8000000100005E80;
    v6 = 0xD00000000000001ALL;
    if (a1 == 3)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x8000000100005EA0;
    }

    if (a1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 4)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v11 = "#NOTIFICATIONS_ENABLED";
LABEL_35:
        v12 = (v11 - 32) | 0x8000000000000000;
        if (v7 != 0xD000000000000016)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v12 = 0x8000000100005E40;
      if (v7 != 0xD000000000000015)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v12 = 0xE100000000000000;
      if (v7 != 47)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 != 3)
      {
        v12 = 0x8000000100005EA0;
        if (v7 != 0xD00000000000001ALL)
        {
          goto LABEL_42;
        }

        goto LABEL_40;
      }

      v11 = "#NOTIFICATIONS_PREVIEW";
      goto LABEL_35;
    }

    if (a2 == 5)
    {
      v12 = 0x8000000100005EC0;
      if (v7 != 0xD00000000000002DLL)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v12 = 0x8000000100005EF0;
      if (v7 != 0xD000000000000031)
      {
LABEL_42:
        v13 = sub_100005248();
        goto LABEL_43;
      }
    }
  }

LABEL_40:
  if (v8 != v12)
  {
    goto LABEL_42;
  }

  v13 = 1;
LABEL_43:

  return v13 & 1;
}

unint64_t sub_100003BF8()
{
  result = qword_10000C1A0;
  if (!qword_10000C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A0);
  }

  return result;
}

uint64_t sub_100003C58()
{
  *v0;
  sub_100005228();
}

Swift::Int sub_100003D7C()
{
  sub_100005258();
  sub_100005228();

  return sub_100005268();
}

uint64_t sub_100003EAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000042E4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100003EDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE100000000000000;
    v9 = 0x8000000100005E40;
    v10 = 0xD000000000000015;
    if (v2 != 1)
    {
      v10 = 0xD000000000000016;
      v9 = 0x8000000100005E60;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 47;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x8000000100005EC0;
    v4 = 0xD000000000000031;
    if (v2 == 5)
    {
      v4 = 0xD00000000000002DLL;
    }

    else
    {
      v3 = 0x8000000100005EF0;
    }

    v5 = 0xD000000000000016;
    v6 = 0x8000000100005E80;
    if (v2 != 3)
    {
      v5 = 0xD00000000000001ALL;
      v6 = 0x8000000100005EA0;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_100003FD0()
{
  result = qword_10000C1A8;
  if (!qword_10000C1A8)
  {
    sub_100002420(&qword_10000C1B0, qword_100005B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A8);
  }

  return result;
}

uint64_t sub_100004044()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000015;
    if (v1 != 1)
    {
      v5 = 0xD000000000000016;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 47;
    }
  }

  else
  {
    v2 = 0xD000000000000031;
    if (v1 == 5)
    {
      v2 = 0xD00000000000002DLL;
    }

    v3 = 0xD000000000000016;
    if (v1 != 3)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10000412C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_1000042E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AmbientSettingsDeepLinkDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AmbientSettingsDeepLinkDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000042E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008808;
  v6._object = a2;
  v4 = sub_100005238(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100004334()
{
  result = qword_10000C1C8;
  if (!qword_10000C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C8);
  }

  return result;
}

uint64_t sub_1000043BC()
{
  v0 = sub_100005208();
  sub_10000313C(v0, qword_10000D1B8);
  sub_100003104(v0, qword_10000D1B8);
  return sub_1000051F8();
}

uint64_t sub_100004444(uint64_t a1)
{
  v3 = type metadata accessor for AmbientSettingsDeepLink();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_100003758(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000050B8();
  return sub_100004F78(a1);
}

void (*sub_1000044D4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100005098();
  return sub_100004548;
}

void sub_100004548(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100004594()
{
  result = qword_10000C1D0;
  if (!qword_10000C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D0);
  }

  return result;
}

uint64_t sub_1000045E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004ED0();
  v5 = sub_1000031A0(&qword_10000C180);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100004674()
{
  v0 = qword_10000C1B8;

  return v0;
}

unint64_t sub_1000046B4()
{
  result = qword_10000C1D8;
  if (!qword_10000C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D8);
  }

  return result;
}

unint64_t sub_10000470C()
{
  result = qword_10000C1E0;
  if (!qword_10000C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E0);
  }

  return result;
}

unint64_t sub_100004764()
{
  result = qword_10000C1E8;
  if (!qword_10000C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E8);
  }

  return result;
}

uint64_t sub_100004808@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C018 != -1)
  {
    swift_once();
  }

  v2 = sub_100005208();
  v3 = sub_100003104(v2, qword_10000D1B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000048D0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100004ED0();
  v7 = sub_100004F24();
  v8 = sub_1000031A0(&qword_10000C180);
  *v5 = v2;
  v5[1] = sub_1000049B8;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000049B8()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_100004AC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004B34();
  *a1 = result;
  return result;
}

uint64_t sub_100004AE8(uint64_t a1)
{
  v2 = sub_100004594();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100004B34()
{
  v27 = sub_100005198();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000304C(&qword_10000C1F0, &qword_100005E20);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_10000304C(&qword_10000C1F8, &qword_100005E28);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_10000304C(&qword_10000C178, &qword_100005E30);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_100005208();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v26 = sub_10000304C(&qword_10000C200, qword_100005E38);
  sub_1000051F8();
  (*(v20 + 56))(v18, 1, 1, v19);
  v22 = type metadata accessor for AmbientSettingsDeepLink();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_100005088();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v24(v8, 1, 1, v23);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v27);
  sub_1000031A0(&qword_10000C058);
  return sub_1000050C8();
}

unint64_t sub_100004ED0()
{
  result = qword_10000C208;
  if (!qword_10000C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C208);
  }

  return result;
}

unint64_t sub_100004F24()
{
  result = qword_10000C210;
  if (!qword_10000C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C210);
  }

  return result;
}

uint64_t sub_100004F78(uint64_t a1)
{
  v2 = type metadata accessor for AmbientSettingsDeepLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}