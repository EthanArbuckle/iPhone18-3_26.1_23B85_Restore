uint64_t sub_100001578(uint64_t a1)
{
  v2 = sub_1000016CC();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001624();
  sub_100006F20();
  return 0;
}

unint64_t sub_100001624()
{
  result = qword_100010140;
  if (!qword_100010140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010140);
  }

  return result;
}

unint64_t sub_1000016CC()
{
  result = qword_100010148;
  if (!qword_100010148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010148);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicSettingsAppIntentsFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicSettingsAppIntentsFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000192C()
{
  result = qword_100010150;
  if (!qword_100010150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010150);
  }

  return result;
}

Swift::Int sub_100001994()
{
  v1 = *v0;
  sub_100006F90();
  sub_100006FA0(v1);
  return sub_100006FB0();
}

Swift::Int sub_100001A08()
{
  v1 = *v0;
  sub_100006F90();
  sub_100006FA0(v1);
  return sub_100006FB0();
}

const char *sub_100001A4C()
{
  v1 = "Sonic";
  if (*v0 != 1)
  {
    v1 = "Music";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "MediaPlayer";
  }
}

const char *sub_100001A94()
{
  v1 = "Alchemy";
  if (*v0 != 1)
  {
    v1 = "despacito";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "AddToLibraryWhenFavoriting";
  }
}

BOOL sub_100001B10()
{
  v0 = [objc_opt_self() defaultIdentityStore];
  v1 = [objc_opt_self() activeAccount];
  v6 = 0;
  v2 = [v0 DSIDForUserIdentity:v1 outError:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_100006EE0();

    swift_willThrow();
  }

  return v2 != 0;
}

id sub_100001C24()
{
  v0 = [objc_opt_self() songsQuery];
  v1 = MPMediaItemPropertyRating;
  v2 = sub_100006F80();
  v3 = [objc_opt_self() predicateWithValue:v2 forProperty:v1 comparisonType:101];
  swift_unknownObjectRelease();

  [v0 addFilterPredicate:v3];
  v4 = [v0 _hasItems];

  return v4;
}

uint64_t sub_100001D10()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedController];
  v2 = [v1 matchStatus];

  if ((v2 & 4) != 0)
  {
    return 1;
  }

  v3 = [v0 sharedController];
  v4 = [v3 musicSubscriptionStatus];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 capabilities];

  return (v5 >> 7) & 1;
}

id sub_100001DD8()
{
  if (sub_100001D10())
  {
    result = [objc_opt_self() sharedCloudController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v1 = result;
    v2 = [result isEnhancedAudioAvailable];

    if (v2)
    {
      result = MSVDeviceSupportsEnhancedMusic();
      if (!result)
      {
        return result;
      }

      v3 = [objc_opt_self() sharedController];
      v4 = [v3 musicSubscriptionStatus];

      if (v4)
      {
        v5 = [v4 capabilities];

        return (v5 & 1);
      }
    }
  }

  return 0;
}

uint64_t sub_100001EB0()
{
  if (sub_100001D10())
  {
    v0 = [objc_opt_self() sharedController];
    v1 = [v0 isCloudLibraryEnabled];

    if (v1)
    {
      return 1;
    }
  }

  if (sub_100001D10())
  {
    return 0;
  }

  v3 = [objc_allocWithZone(ICCloudClient) init];
  v4 = [v3 musicPurchasesDisabledForJaliscoLibrary];

  return v4 ^ 1;
}

unint64_t sub_100001F5C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100006F30();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    v3 = sub_100006F30();
    v4 = [v2 valueForKey:v3];

    if (v4)
    {
      sub_100006F50();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8 = v6;
    v9 = v7;
    v2 = *(&v7 + 1) != 0;
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  sub_100002078(&v8);
  return v2;
}

uint64_t sub_100002078(uint64_t a1)
{
  v2 = sub_1000020E0(&qword_1000101F0, qword_100007E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000020E0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000212C()
{
  result = qword_100010208;
  if (!qword_100010208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010208);
  }

  return result;
}

uint64_t sub_100002180()
{
  v0 = sub_1000020E0(&qword_100010340, &qword_1000086F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100006F00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100006EB0();
  sub_100003CD8(v7, qword_1000114F0);
  sub_100003CA0(v7, qword_1000114F0);
  sub_100006EF0();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100006EA0();
}

uint64_t sub_1000022F8()
{
  v1 = (*(*(sub_1000020E0(&qword_100010338, &unk_1000082C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v3 = &v18 - v2;
  v4 = (*(*(sub_1000020E0(&qword_100010340, &qword_1000086F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v6 = &v18 - v5;
  v7 = sub_100006F00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = *v0;
  sub_100004384();
  sub_100006EF0();
  (*(v8 + 32))(v6, v12, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = *(type metadata accessor for MusicSettingsDeepLink() + 20);
  v15 = sub_100006DD0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v3, &v0[v14], v15);
  (*(v16 + 56))(v3, 0, 1, v15);
  sub_100004668(v13);
  return sub_100006DE0();
}

uint64_t sub_10000259C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000263C;

  return sub_100003F58(&off_10000C8E0, 1);
}

uint64_t sub_10000263C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10000273C, 0, 0);
}

uint64_t sub_10000273C()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for MusicSettingsDeepLink();
    v4 = *(v3 - 8);
    sub_10000429C(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);

    v5 = 0;
  }

  else
  {
    v6 = v0[4];

    v3 = type metadata accessor for MusicSettingsDeepLink();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[2], v5, 1, v3);
  v7 = v0[1];

  return v7();
}

uint64_t sub_100002864(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100002904;

  return sub_100003F58(&off_10000C8E0, 0);
}

uint64_t sub_100002904(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100002A20()
{
  result = qword_100010210;
  if (!qword_100010210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010210);
  }

  return result;
}

unint64_t sub_100002A78()
{
  result = qword_100010218;
  if (!qword_100010218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010218);
  }

  return result;
}

uint64_t type metadata accessor for MusicSettingsDeepLink()
{
  result = qword_100010300;
  if (!qword_100010300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002B4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002BE4;

  return sub_100003F58(a1, 1);
}

uint64_t sub_100002BE4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100002CE4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000436C;

  return sub_100003F58(&off_10000C8E0, 1);
}

uint64_t sub_100002D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100002E44;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100002E44(uint64_t a1)
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

unint64_t sub_100002F48()
{
  result = qword_100010228;
  if (!qword_100010228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010228);
  }

  return result;
}

unint64_t sub_100002FD4()
{
  result = qword_100010238;
  if (!qword_100010238)
  {
    sub_100003074(&qword_100010240, qword_100007EF8);
    sub_100003D3C(&qword_100010230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010238);
  }

  return result;
}

uint64_t sub_100003074(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000030BC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000212C();
  *v6 = v2;
  v6[1] = sub_100003170;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100003170()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003264(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003170;

  return sub_10000259C(a1);
}

uint64_t sub_100003338()
{
  v0 = sub_1000020E0(&qword_100010350, &qword_1000082D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_1000020E0(&qword_100010358, &qword_1000082D8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100003D3C(&qword_100010220);
  sub_100006E60();
  v9._object = 0x80000001000076C0;
  v9._countAndFlagsBits = 0xD00000000000003DLL;
  sub_100006E50(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100006E40();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100006E50(v10);
  return sub_100006E70();
}

uint64_t sub_100003518()
{
  v0 = qword_1000101F8;

  return v0;
}

unint64_t sub_1000035F0()
{
  result = qword_100010268;
  if (!qword_100010268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010268);
  }

  return result;
}

uint64_t sub_100003644()
{
  sub_100003D3C(&qword_100010348);
  v1 = sub_100006E10();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000376C()
{
  result = qword_100010288;
  if (!qword_100010288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010288);
  }

  return result;
}

uint64_t sub_1000037CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010120 != -1)
  {
    swift_once();
  }

  v2 = sub_100006EB0();
  v3 = sub_100003CA0(v2, qword_1000114F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100003878()
{
  result = qword_100010290;
  if (!qword_100010290)
  {
    sub_100003074(&qword_100010298, &qword_100008198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010290);
  }

  return result;
}

uint64_t sub_1000038DC(uint64_t a1)
{
  v2 = sub_100003D3C(&qword_100010220);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10000397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100004368;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100003A40(uint64_t a1)
{
  v2 = sub_100003D3C(&qword_100010280);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100003ABC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 233)
  {
    v4 = *a1;
    if (v4 >= 0x17)
    {
      return v4 - 22;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100006DD0();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_100003B74(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 233)
  {
    *result = a2 + 22;
  }

  else
  {
    v7 = sub_100006DD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100003C14()
{
  result = sub_100006DD0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100003CA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003CD8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100003D3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MusicSettingsDeepLink();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_100003D80(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1000020E0(&qword_100010360, &unk_1000082F0);
  v10 = *(type metadata accessor for MusicSettingsDeepLink() - 8);
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
  v15 = *(type metadata accessor for MusicSettingsDeepLink() - 8);
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

uint64_t sub_100003F58(uint64_t a1, char a2)
{
  *(v2 + 56) = a2;
  *(v2 + 16) = a1;
  v3 = type metadata accessor for MusicSettingsDeepLink();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100004028, 0, 0);
}

uint64_t sub_100004028()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (*(v0 + 56) == 1)
  {
    if (v2)
    {
      v4 = *(v0 + 24);
      v3 = *(v0 + 32);
      v5 = (v1 + 32);
      v6 = &_swiftEmptyArrayStorage;
      do
      {
        v9 = *v5++;
        v8 = v9;
        if (sub_10000502C(v9))
        {
          **(v0 + 48) = v8;
          v10 = *(v4 + 20);
          sub_100006DC0();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_100003D80(0, v6[2] + 1, 1, v6);
          }

          v12 = v6[2];
          v11 = v6[3];
          if (v12 >= v11 >> 1)
          {
            v6 = sub_100003D80(v11 > 1, v12 + 1, 1, v6);
          }

          v7 = *(v0 + 48);
          v6[2] = v12 + 1;
          sub_100004300(v7, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12);
        }

        --v2;
      }

      while (v2);
      goto LABEL_20;
    }

LABEL_19:
    v6 = &_swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  if (!v2)
  {
    goto LABEL_19;
  }

  v14 = *(v0 + 24);
  v13 = *(v0 + 32);
  v15 = (v1 + 32);
  v6 = &_swiftEmptyArrayStorage;
  do
  {
    v16 = *v15++;
    **(v0 + 40) = v16;
    v17 = *(v14 + 20);
    sub_100006DC0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100003D80(0, v6[2] + 1, 1, v6);
    }

    v19 = v6[2];
    v18 = v6[3];
    if (v19 >= v18 >> 1)
    {
      v6 = sub_100003D80(v18 > 1, v19 + 1, 1, v6);
    }

    v20 = *(v0 + 40);
    v6[2] = v19 + 1;
    sub_100004300(v20, v6 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v19);
    --v2;
  }

  while (v2);
LABEL_20:
  v22 = *(v0 + 40);
  v21 = *(v0 + 48);

  v23 = *(v0 + 8);

  return v23(v6);
}

uint64_t sub_10000429C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSettingsDeepLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSettingsDeepLink();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100004668(char a1)
{
  result = &_swiftEmptyArrayStorage;
  switch(a1)
  {
    case 8:
      sub_1000020E0(&qword_100010380, qword_100008498);
      v3 = *(sub_100006F00() - 8);
      v4 = *(v3 + 72);
      v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100008330;
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      goto LABEL_6;
    case 9:
      sub_1000020E0(&qword_100010380, qword_100008498);
      v13 = *(sub_100006F00() - 8);
      v14 = *(v13 + 72);
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100008320;
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      sub_100006EF0();
      goto LABEL_6;
    case 11:
    case 18:
      sub_1000020E0(&qword_100010380, qword_100008498);
      v7 = *(sub_100006F00() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100008310;
      sub_100006EF0();
      goto LABEL_6;
    case 12:
    case 13:
    case 19:
    case 21:
      sub_1000020E0(&qword_100010380, qword_100008498);
      v10 = *(sub_100006F00() - 8);
      v11 = *(v10 + 72);
      v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100008300;
LABEL_6:
      sub_100006EF0();
      result = v6;
      break;
    default:
      return result;
  }

  return result;
}

id sub_10000502C(char a1)
{
  LOBYTE(v1) = 1;
  switch(a1)
  {
    case 1:
      v2 = objc_opt_self();
      v3 = [v2 sharedController];
      v4 = [v3 musicSubscriptionStatus];

      if (!v4)
      {
        goto LABEL_58;
      }

      v5 = [v4 capabilities];

      if ((v5 & 0x80) == 0)
      {
        goto LABEL_58;
      }

      v6 = [v2 sharedController];
      goto LABEL_39;
    case 2:
      v42 = &type metadata for MusicSettingsAppIntentsFeatureFlags;
      v43 = sub_100005F2C();
      LOBYTE(v41[0]) = 0;
      v24 = sub_100006F10();
      sub_100005F80(v41);
      if ((v24 & 1) == 0)
      {
        goto LABEL_58;
      }

      v25 = objc_opt_self();
      v26 = [v25 sharedController];
      v27 = [v26 musicSubscriptionStatus];

      if (!v27)
      {
        goto LABEL_58;
      }

      v28 = [v27 capabilities];

      if ((v28 & 0x80) == 0)
      {
        goto LABEL_58;
      }

      v6 = [v25 sharedController];
      goto LABEL_39;
    case 3:

      return sub_100001C24();
    case 4:
      v19 = objc_opt_self();
      v20 = [v19 sharedController];
      v21 = [v20 matchStatus];

      if ((v21 & 4) != 0)
      {
        goto LABEL_42;
      }

      v22 = [v19 sharedController];
      v23 = [v22 isCloudLibraryEnabled];

      if (v23)
      {
        goto LABEL_42;
      }

      if ((sub_100001D10() & 1) == 0)
      {
        goto LABEL_58;
      }

      v10 = [v19 sharedController];
      v11 = [v10 musicSubscriptionStatus];
      goto LABEL_52;
    case 5:
      v32 = [objc_opt_self() sharedController];
      v1 = [v32 musicSubscriptionStatus];

      if (v1)
      {
        goto LABEL_36;
      }

      return (v1 & 1);
    case 6:
      v12 = objc_opt_self();
      v13 = [v12 sharedController];
      v14 = [v13 musicSubscriptionStatus];

      if (!v14)
      {
        goto LABEL_58;
      }

      v15 = [v14 capabilities];

      if ((v15 & 0x80) == 0)
      {
        goto LABEL_58;
      }

      v16 = [v12 sharedController];
      v17 = [v16 isCloudLibraryEnabled];

      if (!v17)
      {
        goto LABEL_58;
      }

      return sub_100001F5C();
    case 7:
      if ((sub_100001D10() & 1) == 0)
      {
        goto LABEL_58;
      }

      v29 = [objc_opt_self() sharedCloudController];
      if (!v29)
      {
        goto LABEL_61;
      }

      v30 = v29;
      v31 = [v29 isEnhancedAudioAvailable];

      if (v31 && MSVDeviceSupportsEnhancedMusic())
      {
        goto LABEL_9;
      }

      goto LABEL_58;
    case 8:
      if ((sub_100001D10() & 1) == 0)
      {
        goto LABEL_58;
      }

      v7 = [objc_opt_self() sharedCloudController];
      if (!v7)
      {
        __break(1u);
LABEL_61:
        __break(1u);
        JUMPOUT(0x100005740);
      }

      v8 = v7;
      v9 = [v7 isEnhancedAudioAvailable];

      if (v9 && MSVDeviceSupportsEnhancedMusic())
      {
LABEL_9:
        v10 = [objc_opt_self() sharedController];
        v11 = [v10 musicSubscriptionStatus];
LABEL_52:
        v1 = v11;

        if (v1)
        {
          v40 = [v1 capabilities];

          LOBYTE(v1) = v40 & 1;
        }
      }

      else
      {
LABEL_58:
        LOBYTE(v1) = 0;
      }

      return (v1 & 1);
    case 11:
      v42 = &type metadata for MusicSettingsAppIntentsFeatureFlags;
      v43 = sub_100005F2C();
      LOBYTE(v41[0]) = 1;
      LOBYTE(v1) = sub_100006F10();
      sub_100005F80(v41);
      return (v1 & 1);
    case 12:
    case 14:
      goto LABEL_44;
    case 13:
      if (sub_100001EB0())
      {
        goto LABEL_38;
      }

      goto LABEL_58;
    case 15:
      if ((sub_100001EB0() & 1) == 0)
      {
        goto LABEL_58;
      }

      return sub_100001DD8();
    case 16:
      if ((sub_100001EB0() & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_38:
      v6 = [objc_opt_self() sharedController];
LABEL_39:
      v34 = v6;
      LOBYTE(v1) = [v34 isCloudLibraryEnabled];

      return (v1 & 1);
    case 17:
      if (!sub_100001B10())
      {
        goto LABEL_58;
      }

LABEL_44:

      return sub_100001EB0();
    case 18:
      v42 = &type metadata for MusicSettingsAppIntentsFeatureFlags;
      v43 = sub_100005F2C();
      LOBYTE(v41[0]) = 2;
      v39 = sub_100006F10();
      sub_100005F80(v41);
      if ((v39 & 1) == 0 || (sub_100001D10() & 1) == 0)
      {
        goto LABEL_58;
      }

      v10 = [objc_opt_self() sharedController];
      v11 = [v10 musicSubscriptionStatus];
      goto LABEL_52;
    case 20:
    case 22:
      v38 = [objc_opt_self() sharedController];
      v1 = [v38 musicSubscriptionStatus];

      if (v1)
      {
LABEL_36:
        v33 = [v1 capabilities];

        v1 = (v33 >> 7) & 1;
      }

      return (v1 & 1);
    case 21:
      v35 = [objc_opt_self() sharedController];
      v36 = [v35 musicSubscriptionStatus];

      if (!v36)
      {
        goto LABEL_58;
      }

      v37 = [v36 capabilities];

      if ((v37 & 0x80) == 0)
      {
        goto LABEL_58;
      }

LABEL_42:
      LOBYTE(v1) = 1;
      return (v1 & 1);
    default:
      return (v1 & 1);
  }
}

unint64_t sub_10000579C(char a1)
{
  result = 47;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000030;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
    case 14:
    case 22:
      result = 0xD000000000000029;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
    case 16:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
    case 19:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD00000000000001FLL;
      break;
    case 13:
      result = 0xD000000000000020;
      break;
    case 15:
      result = 0xD000000000000028;
      break;
    case 17:
      result = 0xD000000000000027;
      break;
    case 18:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0xD000000000000021;
      break;
    case 21:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100005A6C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10000579C(*a1);
  v5 = v4;
  if (v3 == sub_10000579C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100006F60();
  }

  return v8 & 1;
}

unint64_t sub_100005AF8()
{
  result = qword_100010368;
  if (!qword_100010368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010368);
  }

  return result;
}

Swift::Int sub_100005B4C()
{
  v1 = *v0;
  sub_100006F90();
  sub_10000579C(v1);
  sub_100006F40();

  return sub_100006FB0();
}

uint64_t sub_100005BB0()
{
  sub_10000579C(*v0);
  sub_100006F40();
}

Swift::Int sub_100005C04()
{
  v1 = *v0;
  sub_100006F90();
  sub_10000579C(v1);
  sub_100006F40();

  return sub_100006FB0();
}

uint64_t sub_100005C64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100005ED8();
  *a2 = result;
  return result;
}

unint64_t sub_100005C94@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10000579C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100005CC4()
{
  result = qword_100010370;
  if (!qword_100010370)
  {
    sub_100003074(&qword_100010378, qword_1000083E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010370);
  }

  return result;
}

uint64_t sub_100005D40@<X0>(_BYTE *a1@<X8>)
{

  result = sub_100005ED8();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MusicSettingsDeepLinkDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicSettingsDeepLinkDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100005ED8()
{
  v0 = sub_100006F70();

  if (v0 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100005F2C()
{
  result = qword_100010388;
  if (!qword_100010388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010388);
  }

  return result;
}

uint64_t sub_100005F80(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_100005FD0()
{
  result = qword_1000103A0;
  if (!qword_1000103A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103A0);
  }

  return result;
}

uint64_t sub_100006058()
{
  v0 = sub_100006F00();
  sub_100003CD8(v0, qword_100011508);
  sub_100003CA0(v0, qword_100011508);
  return sub_100006EF0();
}

uint64_t sub_1000060E0(uint64_t a1)
{
  v3 = type metadata accessor for MusicSettingsDeepLink();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_10000429C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006DA0();
  return sub_100006C50(a1);
}

void (*sub_100006170(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100006D80();
  return sub_1000061E4;
}

void sub_1000061E4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100006230()
{
  result = qword_1000103A8;
  if (!qword_1000103A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103A8);
  }

  return result;
}

uint64_t sub_100006284(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006BA8();
  v5 = sub_100003D3C(&qword_100010348);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100006310()
{
  v0 = qword_100010390;

  return v0;
}

unint64_t sub_100006350()
{
  result = qword_1000103B0;
  if (!qword_1000103B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103B0);
  }

  return result;
}

unint64_t sub_1000063A8()
{
  result = qword_1000103B8;
  if (!qword_1000103B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103B8);
  }

  return result;
}

unint64_t sub_100006400()
{
  result = qword_1000103C0;
  if (!qword_1000103C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103C0);
  }

  return result;
}

uint64_t sub_1000064A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010128 != -1)
  {
    swift_once();
  }

  v2 = sub_100006F00();
  v3 = sub_100003CA0(v2, qword_100011508);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000654C(uint64_t a1)
{
  v2 = sub_100006BA8();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1000065A0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100006BA8();
  v7 = sub_100006BFC();
  v8 = sub_100003D3C(&qword_100010348);
  *v5 = v2;
  v5[1] = sub_100006688;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100006688()
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

uint64_t sub_100006790@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006804();
  *a1 = result;
  return result;
}

uint64_t sub_1000067B8(uint64_t a1)
{
  v2 = sub_100006230();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100006804()
{
  v27 = sub_100006E80();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000020E0(&qword_1000103C8, &qword_1000086E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_1000020E0(&qword_1000103D0, &qword_1000086E8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_1000020E0(&qword_100010340, &qword_1000086F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_100006F00();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v26 = sub_1000020E0(&qword_1000103D8, &qword_1000086F8);
  sub_100006EF0();
  (*(v20 + 56))(v18, 1, 1, v19);
  v22 = type metadata accessor for MusicSettingsDeepLink();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_100006D70();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v24(v8, 1, 1, v23);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v27);
  sub_100003D3C(&qword_100010220);
  return sub_100006DB0();
}

unint64_t sub_100006BA8()
{
  result = qword_1000103E0;
  if (!qword_1000103E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103E0);
  }

  return result;
}

unint64_t sub_100006BFC()
{
  result = qword_1000103E8;
  if (!qword_1000103E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103E8);
  }

  return result;
}

uint64_t sub_100006C50(uint64_t a1)
{
  v2 = type metadata accessor for MusicSettingsDeepLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}