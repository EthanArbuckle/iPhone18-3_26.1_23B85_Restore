unint64_t PropertyType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_1C74()
{
  v1 = *v0;
  sub_31900();
  sub_31910(v1);
  return sub_31920();
}

Swift::Int sub_1CE8()
{
  v1 = *v0;
  sub_31900();
  sub_31910(v1);
  return sub_31920();
}

uint64_t *sub_1D2C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t BasePropertyConfiguration.eventName.getter()
{
  v1 = *(v0 + OBJC_IVAR___BMBasePropertyConfiguration_eventName);
  v2 = *(v0 + OBJC_IVAR___BMBasePropertyConfiguration_eventName + 8);

  return v1;
}

uint64_t BasePropertyConfiguration.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___BMBasePropertyConfiguration_identifier);
  v2 = *(v0 + OBJC_IVAR___BMBasePropertyConfiguration_identifier + 8);

  return v1;
}

id BasePropertyConfiguration.__allocating_init(eventName:recordType:identifier:ageToExpire:countLimit:shouldBeCached:shouldBeSynced:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  *v19 = a1;
  v19[1] = a2;
  *&v18[OBJC_IVAR___BMBasePropertyConfiguration_recordType] = a3;
  v20 = &v18[OBJC_IVAR___BMBasePropertyConfiguration_identifier];
  *v20 = a4;
  v20[1] = a5;
  *&v18[OBJC_IVAR___BMBasePropertyConfiguration_countLimit] = a7;
  *&v18[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] = a6;
  v18[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached] = a8;
  v18[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced] = a9;
  v22.receiver = v18;
  v22.super_class = v9;
  return objc_msgSendSuper2(&v22, "init");
}

id BasePropertyConfiguration.init(eventName:recordType:identifier:ageToExpire:countLimit:shouldBeCached:shouldBeSynced:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v10 = &v9[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  *v10 = a1;
  v10[1] = a2;
  *&v9[OBJC_IVAR___BMBasePropertyConfiguration_recordType] = a3;
  v11 = &v9[OBJC_IVAR___BMBasePropertyConfiguration_identifier];
  *v11 = a4;
  v11[1] = a5;
  *&v9[OBJC_IVAR___BMBasePropertyConfiguration_countLimit] = a7;
  *&v9[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] = a6;
  v9[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached] = a8;
  v9[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced] = a9;
  v13.receiver = v9;
  v13.super_class = type metadata accessor for BasePropertyConfiguration();
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t sub_20C4(uint64_t a1)
{
  sub_2224(a1, v10);
  if (!v11)
  {
    sub_22DC(v10);
    goto LABEL_20;
  }

  type metadata accessor for BasePropertyConfiguration();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v7 = 0;
    return v7 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___BMBasePropertyConfiguration_eventName) == *&v9[OBJC_IVAR___BMBasePropertyConfiguration_eventName] && *(v1 + OBJC_IVAR___BMBasePropertyConfiguration_eventName + 8) == *&v9[OBJC_IVAR___BMBasePropertyConfiguration_eventName + 8];
  if (!v2 && (sub_31850() & 1) == 0 || *(v1 + OBJC_IVAR___BMBasePropertyConfiguration_recordType) != *&v9[OBJC_IVAR___BMBasePropertyConfiguration_recordType] || *(v1 + OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire) != *&v9[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] || *(v1 + OBJC_IVAR___BMBasePropertyConfiguration_countLimit) != *&v9[OBJC_IVAR___BMBasePropertyConfiguration_countLimit])
  {
    goto LABEL_19;
  }

  v3 = *(v1 + OBJC_IVAR___BMBasePropertyConfiguration_identifier + 8);
  v4 = *&v9[OBJC_IVAR___BMBasePropertyConfiguration_identifier + 8];
  if (v3)
  {
    if (v4 && (*(v1 + OBJC_IVAR___BMBasePropertyConfiguration_identifier) == *&v9[OBJC_IVAR___BMBasePropertyConfiguration_identifier] && v3 == v4 || (sub_31850() & 1) != 0))
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (v4)
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_16:
  v5 = *(v1 + OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced);
  v6 = v9[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced];

  v7 = v5 ^ v6 ^ 1;
  return v7 & 1;
}

uint64_t sub_2224(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_42260, &qword_32880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2294(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_22DC(uint64_t a1)
{
  v2 = sub_2294(&qword_42260, &qword_32880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id BaseDonor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BasePropertyConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BasePropertyConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_252C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  *v14 = a1;
  v14[1] = a2;
  *&v13[OBJC_IVAR___BMBasePropertyConfiguration_recordType] = a6;
  v15 = &v13[OBJC_IVAR___BMBasePropertyConfiguration_identifier];
  *v15 = 0;
  v15[1] = 0;
  *&v13[OBJC_IVAR___BMBasePropertyConfiguration_countLimit] = 0x7FFFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] = a3;
  v13[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached] = a4;
  v13[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced] = a5;
  v17.receiver = v13;
  v17.super_class = type metadata accessor for BasePropertyConfiguration();
  return objc_msgSendSuper2(&v17, "init");
}

id sub_260C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v7 = &v6[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  *v7 = a1;
  v7[1] = a2;
  *&v6[OBJC_IVAR___BMBasePropertyConfiguration_recordType] = a6;
  v8 = &v6[OBJC_IVAR___BMBasePropertyConfiguration_identifier];
  *v8 = 0;
  v8[1] = 0;
  *&v6[OBJC_IVAR___BMBasePropertyConfiguration_countLimit] = 0x7FFFFFFFFFFFFFFFLL;
  *&v6[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] = a3;
  v6[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached] = a4;
  v6[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced] = a5;
  v10.receiver = v6;
  v10.super_class = type metadata accessor for BasePropertyConfiguration();
  return objc_msgSendSuper2(&v10, "init");
}

id CollectionPropertyConfiguration.__allocating_init(eventName:identifier:ageToExpire:countLimit:shouldBeCached:shouldBeSynced:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  *v18 = a1;
  v18[1] = a2;
  *&v17[OBJC_IVAR___BMBasePropertyConfiguration_recordType] = 2;
  v19 = &v17[OBJC_IVAR___BMBasePropertyConfiguration_identifier];
  *v19 = a3;
  v19[1] = a4;
  *&v17[OBJC_IVAR___BMBasePropertyConfiguration_countLimit] = a6;
  *&v17[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] = a5;
  v17[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached] = a7;
  v17[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced] = a8;
  v21.receiver = v17;
  v21.super_class = type metadata accessor for BasePropertyConfiguration();
  return objc_msgSendSuper2(&v21, "init");
}

id CollectionPropertyConfiguration.init(eventName:identifier:ageToExpire:countLimit:shouldBeCached:shouldBeSynced:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v9 = &v8[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  *v9 = a1;
  v9[1] = a2;
  *&v8[OBJC_IVAR___BMBasePropertyConfiguration_recordType] = 2;
  v10 = &v8[OBJC_IVAR___BMBasePropertyConfiguration_identifier];
  *v10 = a3;
  v10[1] = a4;
  *&v8[OBJC_IVAR___BMBasePropertyConfiguration_countLimit] = a6;
  *&v8[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] = a5;
  v8[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached] = a7;
  v8[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced] = a8;
  v12.receiver = v8;
  v12.super_class = type metadata accessor for BasePropertyConfiguration();
  return objc_msgSendSuper2(&v12, "init");
}

id _s19EngagementCollector26StatePropertyConfigurationCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_28BC()
{
  result = qword_42268;
  if (!qword_42268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_42268);
  }

  return result;
}

uint64_t sub_2A88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2AA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_423D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_423D0);
    }
  }
}

Swift::Int PropertyError.hashValue.getter()
{
  v1 = *v0;
  sub_31900();
  sub_31910(v1);
  return sub_31920();
}

Swift::Int sub_2C04()
{
  v1 = *v0;
  sub_31900();
  sub_31910(v1);
  return sub_31920();
}

uint64_t sub_2C58@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 createdAt];
  if (v3)
  {
    v4 = v3;
    sub_31160();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_31180();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2CFC(uint64_t a1, void **a2)
{
  v4 = (*(*(sub_2294(&qword_42490, &qword_32CB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  sub_B488(a1, &v11 - v5, &qword_42490, &qword_32CB0);
  v7 = *a2;
  v8 = sub_31180();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = sub_31120().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  [v7 setCreatedAt:isa];
}

void sub_2E38(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 data];
  if (v3)
  {
    v4 = v3;
    v5 = sub_310F0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2EA0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v4 = *a1;
    isa = sub_310E0().super.isa;
  }

  v5 = isa;
  [v2 setData:?];
}

void sub_2F18(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_31320();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_2F7C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_31300();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

id CDCloudSyncVersions.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id CDProperty.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CDProperty();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id CDProperty.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDProperty();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3158@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CDProperty();
  result = sub_316E0();
  *a1 = result;
  return result;
}

uint64_t CDProperty.SpecialPlistKeys.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_3CD00;
  v8._object = a2;
  v6 = sub_31810(v5, v8);

  *a3 = v6 != 0;
  return result;
}

Swift::Int sub_3210()
{
  sub_31900();
  sub_31370();
  return sub_31920();
}

Swift::Int sub_327C()
{
  sub_31900();
  sub_31370();
  return sub_31920();
}

uint64_t sub_32CC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_3CD38;
  v7._object = v3;
  v5 = sub_31810(v4, v7);

  *a2 = v5 != 0;
  return result;
}

void sub_3368(unint64_t a1, char a2, void (*a3)(uint64_t *))
{
  if (a2)
  {
    v19 = a1;
    v20 = 0u;
    v21 = 0u;
    v22 = 256;
    a3(&v19);
    return;
  }

  if (a1 >> 62)
  {
    if (sub_317C0())
    {
      goto LABEL_5;
    }

LABEL_19:
    sub_8C34();
    v16 = swift_allocError();
    *v17 = 1;
    v19 = v16;
    v20 = 0u;
    v21 = 0u;
    v22 = 256;
    a3(&v19);

    return;
  }

  if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_19;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_31700();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v5 = *(a1 + 32);
  }

  v18 = v5;
  v6 = sub_53D8();
  if (v6)
  {
    v7 = v6;
    v8 = [v18 identifier];
    if (v8)
    {
      v9 = v8;
      v10 = sub_31320();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v15 = sub_56D8(v7);

    v19 = v10;
    *&v20 = v12;
    v21 = 0uLL;
    *(&v20 + 1) = v15;
    v22 = 1;
    a3(&v19);
  }

  else
  {
    sub_8C34();
    v13 = swift_allocError();
    *v14 = 0;
    v19 = v13;
    v20 = 0u;
    v21 = 0u;
    v22 = 256;
    a3(&v19);
  }
}

uint64_t static CDProperty.fetchCollectionValues(_:assetIDs:sortByCreatedAt:limit:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(unint64_t, uint64_t))
{
  sub_2294(&qword_42440, &unk_32AB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_32A60;
  *(v14 + 32) = 7955819;
  *(v14 + 40) = 0xE300000000000000;
  *(v14 + 88) = &type metadata for String;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = a1;
  *(v14 + 72) = a2;
  swift_retain_n();

  v15 = sub_31300();
  isa = sub_313D0().super.isa;

  v17 = [objc_opt_self() predicateWithFormat:v15 argumentArray:isa];

  sub_6144(v17, 0, 0, a3, a4, a5, a6, a7);
}

uint64_t sub_3758(unint64_t a1, char a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  if (a2)
  {
    return a3(a1, 1);
  }

  if (a1 >> 62)
  {
LABEL_29:
    v5 = sub_317C0();
    if (v5)
    {
LABEL_5:
      v6 = 0;
      v7 = &_swiftEmptyArrayStorage;
      do
      {
        v8 = v6;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v9 = sub_31700();
          }

          else
          {
            if (v8 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_28;
            }

            v9 = *(a1 + 8 * v8 + 32);
          }

          v10 = v9;
          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v11 = sub_53D8();
          if (v11)
          {
            break;
          }

          ++v8;
          if (v6 == v5)
          {
            goto LABEL_31;
          }
        }

        v12 = v11;
        v13 = [v10 identifier];
        if (v13)
        {
          v14 = v13;
          v15 = sub_31320();
          v27 = v16;
          v28 = v15;
        }

        else
        {
          v27 = 0;
          v28 = 0;
        }

        v17 = [v10 assetID];
        if (v17)
        {
          v18 = v17;
          v19 = sub_31320();
          v25 = v20;
          v26 = v19;
        }

        else
        {
          v25 = 0;
          v26 = 0;
        }

        v21 = sub_56D8(v12);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2E8B0(0, *(v7 + 2) + 1, 1, v7);
        }

        v23 = *(v7 + 2);
        v22 = *(v7 + 3);
        if (v23 >= v22 >> 1)
        {
          v7 = sub_2E8B0((v22 > 1), v23 + 1, 1, v7);
        }

        *(v7 + 2) = v23 + 1;
        v24 = &v7[48 * v23];
        *(v24 + 4) = v28;
        *(v24 + 5) = v27;
        *(v24 + 6) = v26;
        *(v24 + 7) = v25;
        *(v24 + 8) = v21;
        v24[72] = 2;
      }

      while (v6 != v5);
      goto LABEL_31;
    }
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_5;
    }
  }

  v7 = &_swiftEmptyArrayStorage;
LABEL_31:
  a3(v7, 0);
}

uint64_t sub_39C4@<X0>(uint64_t a1@<X8>)
{
  result = sub_53D8();
  if (result)
  {
    v4 = result;
    v5 = [v1 identifier];
    if (v5)
    {
      v6 = v5;
      v7 = sub_31320();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v14 = [v1 assetID];
    if (v14)
    {
      v15 = v14;
      v10 = sub_31320();
      v11 = v16;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v12 = sub_56D8(v4);

    v13 = 2;
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = -1;
  }

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  return result;
}

uint64_t sub_3AC8(unint64_t a1, char a2, uint64_t (*a3)(unint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    return a3(a1, 1);
  }

  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_35:
    v38 = a3;
    v39 = sub_317C0();
    a3 = v38;
    v10 = v39;
    if (v39)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
LABEL_5:
      v11 = 0;
      v12 = _swiftEmptyArrayStorage;
      v44 = a4;
      v45 = a3;
      while (1)
      {
        v46 = v12;
        v13 = v11;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v14 = sub_31700();
          }

          else
          {
            if (v13 >= *(v9 + 16))
            {
              goto LABEL_34;
            }

            v14 = *(a1 + 8 * v13 + 32);
          }

          v15 = v14;
          v11 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          v16 = [v14 key];
          if (v16)
          {
            break;
          }

LABEL_9:

          ++v13;
          if (v11 == v10)
          {
            v45(v46, 0);
            goto LABEL_38;
          }
        }

        v17 = v16;
        v18 = v9;
        a4 = sub_31320();
        v20 = v19;

        if (!*(a5 + 16))
        {
          break;
        }

        v21 = sub_17054(a4, v20);
        a4 = v22;

        v9 = v18;
        if ((a4 & 1) == 0)
        {
          goto LABEL_9;
        }

        v23 = *(*(a5 + 56) + 8 * v21);
        swift_unknownObjectRetain();
        a4 = v15;
        v24 = sub_53D8();
        if (!v24)
        {
          swift_unknownObjectRelease();
          goto LABEL_8;
        }

        v25 = v24;
        v26 = [v15 identifier];
        if (v26)
        {
          v27 = v26;
          v28 = sub_31320();
          v42 = v29;
          v43 = v28;
        }

        else
        {
          v42 = 0;
          v43 = 0;
        }

        v30 = [v15 assetID];
        if (v30)
        {
          v31 = v30;
          v32 = sub_31320();
          v40 = v33;
          v41 = v32;
        }

        else
        {
          v40 = 0;
          v41 = 0;
        }

        v34 = sub_56D8(v25);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_2E9CC(0, v46[2] + 1, 1, v46);
        }

        v36 = v46[2];
        v35 = v46[3];
        if (v36 >= v35 >> 1)
        {
          v46 = sub_2E9CC((v35 > 1), v36 + 1, 1, v46);
        }

        a3 = v45;
        v46[2] = v36 + 1;
        v37 = &v46[7 * v36];
        v37[4] = v23;
        v37[5] = v43;
        v37[6] = v42;
        v37[7] = v41;
        v37[8] = v40;
        v37[9] = v34;
        v12 = v46;
        *(v37 + 80) = 2;
        a4 = v44;
        v9 = v18;
        if (v11 == v10)
        {
          goto LABEL_37;
        }
      }

LABEL_8:
      v9 = v18;
      goto LABEL_9;
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_37:
  a3(v12, 0);
LABEL_38:
}

uint64_t static CDProperty.fetchCollectionValue(_:identifier:assetIDs:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t *))
{
  sub_2294(&qword_42440, &unk_32AB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_32A60;
  *(v14 + 32) = 7955819;
  *(v14 + 40) = 0xE300000000000000;
  *(v14 + 88) = &type metadata for String;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = a1;
  *(v14 + 72) = a2;
  swift_retain_n();

  v15 = sub_31300();
  isa = sub_313D0().super.isa;

  v17 = [objc_opt_self() predicateWithFormat:v15 argumentArray:isa];

  sub_7374(v17, a3, a4, a5, 0, 1, a6, a7);
}

uint64_t sub_3F64(unint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  if (a2)
  {
    v20 = a1;
    v21 = 0u;
    v22 = 0u;
    v23 = 256;
    return a3(&v20);
  }

  if (a1 >> 62)
  {
    result = sub_317C0();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_17:
    sub_8C34();
    v18 = swift_allocError();
    *v19 = 1;
    v20 = v18;
    v21 = 0u;
    v22 = 0u;
    v23 = 256;
    a3(&v20);
    goto LABEL_18;
  }

  result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_31700();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v6 = *(a1 + 32);
  }

  v7 = v6;
  v8 = sub_53D8();
  if (v8)
  {
    v9 = v8;
    v10 = [v7 identifier];
    if (v10)
    {
      v11 = v10;
      v12 = sub_31320();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v17 = sub_56D8(v9);

    v20 = v12;
    *&v21 = v14;
    v22 = 0uLL;
    *(&v21 + 1) = v17;
    v23 = 1;
    a3(&v20);
  }

  sub_8C34();
  v15 = swift_allocError();
  *v16 = 0;
  v20 = v15;
  v21 = 0u;
  v22 = 0u;
  v23 = 256;
  a3(&v20);

LABEL_18:
}

void sub_41F0(unint64_t a1, char a2, void (*a3)(id *))
{
  if (a2)
  {
    v9 = a1;
    v10 = 0u;
    v11 = 0u;
    v12 = 256;
    a3(&v9);
    return;
  }

  if (a1 >> 62)
  {
    if (sub_317C0())
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_8C34();
    v6 = swift_allocError();
    *v7 = 1;
    v9 = v6;
    v10 = 0u;
    v11 = 0u;
    v12 = 256;
    a3(&v9);

    return;
  }

  if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_31700();
  }

  else
  {
    if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v5 = *(a1 + 32);
  }

  v8 = v5;
  v9 = [v5 count];
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  a3(&v9);
}

uint64_t CDProperty.toValue(recordType:completion:)(uint64_t a1, void (*a2)(uint64_t *))
{
  if (a1 == 2)
  {
    sub_39C4(v25);
    v11 = v26;
    if (v26 != 255)
    {
      v13 = v25[3];
      v12 = v25[4];
      v10 = v25[1];
      v14 = v25[2];
      v8 = v25[0];
LABEL_19:
      v27 = v8;
      *&v28 = v10;
      *(&v28 + 1) = v14;
      *&v29 = v13;
      *(&v29 + 1) = v12;
      v30 = v11;
      a2(&v27);

      return sub_8C88(v8, v10, v14, v13, v12, v11);
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        result = sub_31880();
        __break(1u);
        return result;
      }

      v8 = [v2 count];
      v10 = 0;
      v14 = 0;
      v13 = 0;
      v12 = 0;
      v11 = 0;
      goto LABEL_19;
    }

    v4 = sub_53D8();
    if (v4)
    {
      v5 = v4;
      v6 = [v2 identifier];
      if (v6)
      {
        v7 = v6;
        v8 = sub_31320();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      v14 = sub_56D8(v5);

      v13 = 0;
      v12 = 0;
      v11 = 1;
      goto LABEL_19;
    }
  }

  if (qword_42220 != -1)
  {
    swift_once();
  }

  v15 = sub_311B0();
  sub_8BFC(v15, qword_434B0);
  v16 = sub_31190();
  v17 = sub_314D0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    sub_8C34();
    swift_allocError();
    *v20 = 1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_0, v16, v17, "Could not fetch. %@", v18, 0xCu);
    sub_B5AC(v19, &qword_42790, &unk_334A0);
  }

  sub_8C34();
  v22 = swift_allocError();
  *v23 = 1;
  v27 = v22;
  v28 = 0u;
  v29 = 0u;
  v30 = 256;
  a2(&v27);
}

id sub_46A0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v10 = objc_opt_self();
    v11 = sub_31300();
    v12 = [v10 entityForName:v11 inManagedObjectContext:a5];

    if (!v12)
    {
      return 0;
    }

    v8 = [objc_allocWithZone(type metadata accessor for CDProperty()) initWithEntity:v12 insertIntoManagedObjectContext:a5];
  }

  v13 = v8;
  v14 = a1;
  isa = sub_31120().super.isa;
  [v13 setCreatedAt:isa];

  v16 = [a2 eventName];
  [v13 setKey:v16];

  v17 = *a4;
  if (*(a4 + 40))
  {
    v19 = *(a4 + 8);
    v18 = *(a4 + 16);
    if (*(a4 + 40) == 1)
    {
      v20 = *(v18 + 16);
      v21 = *(a4 + 8);

      if (v20 && (v22 = sub_17054(0x44497465737361, 0xE700000000000000), (v23 & 1) != 0) && (sub_B61C(*(v18 + 56) + 32 * v22, v46), sub_2294(&qword_424D0, &qword_32CD8), (swift_dynamicCast() & 1) != 0))
      {
        v24 = sub_31300();
      }

      else
      {
        v24 = 0;
      }

      [v13 setAssetID:v24];

      v27 = sub_A6F8(a4);
      if (v28 >> 60 == 15)
      {
        v29 = 0;
      }

      else
      {
        v30 = v27;
        v31 = v28;
        v29 = sub_310E0().super.isa;
        sub_B544(v30, v31);
      }

      [v13 setData:v29];

      if (v19)
      {
        goto LABEL_32;
      }

      v32 = [a2 identifier];
      if (v32)
      {
        goto LABEL_21;
      }

      goto LABEL_36;
    }

    v25 = *(a4 + 24);
    if (v25)
    {
      v46[4] = *(a4 + 16);
      v47 = v25;
    }

    else
    {
      v34 = *(a4 + 32);
      v35 = *(v34 + 16);
      v36 = *(a4 + 8);

      if (!v35 || (v37 = sub_17054(0x44497465737361, 0xE700000000000000), (v38 & 1) == 0) || (sub_B61C(*(v34 + 56) + 32 * v37, v46), sub_2294(&qword_424D0, &qword_32CD8), (swift_dynamicCast() & 1) == 0) || !v47)
      {

        v26 = 0;
LABEL_28:
        [v13 setAssetID:v26];

        v39 = sub_A6F8(a4);
        if (v40 >> 60 == 15)
        {
          v41 = 0;
        }

        else
        {
          v42 = v39;
          v43 = v40;
          v41 = sub_310E0().super.isa;
          sub_B544(v42, v43);
        }

        [v13 setData:v41];

        if (v19)
        {
          goto LABEL_32;
        }

        v32 = [a2 identifier];
        if (v32)
        {
LABEL_21:
          v33 = v32;
          sub_31320();

LABEL_32:
          v44 = sub_31300();

LABEL_33:
          [v13 setIdentifier:v44];

          return v13;
        }

LABEL_36:
        v44 = 0;
        goto LABEL_33;
      }
    }

    v26 = sub_31300();

    goto LABEL_28;
  }

  [v13 setCount:*a4];
  return v13;
}

uint64_t sub_4AD4(unint64_t a1, char a2, void (**a3)(char *, uint64_t, uint64_t), void *a4, uint64_t (*a5)(void *, void *, char *, __int128 *), uint64_t a6, void (*a7)(id, uint64_t), uint64_t a8)
{
  v124 = a5;
  v125 = a6;
  v129 = sub_31180();
  v14 = *(v129 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v129);
  v126 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2294(&unk_42700, &qword_32CD0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v127 = &v114 - v21;
  v117 = a8;
  v118 = a7;
  v116 = a4;
  v122 = v18;
  v123 = a3;
  v121 = v14;
  v119 = v20;
  if (a2)
  {
    if (qword_42220 == -1)
    {
LABEL_3:
      v22 = sub_311B0();
      sub_8BFC(v22, qword_434B0);
      v23 = sub_31190();
      v24 = sub_314C0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_0, v23, v24, "No existing record, creating new one", v25, 2u);
      }

      goto LABEL_48;
    }

LABEL_46:
    swift_once();
    goto LABEL_3;
  }

  if (a1 >> 62)
  {
    v26 = sub_317C0();
    if (v26)
    {
      goto LABEL_8;
    }

LABEL_48:
    v128 = &_swiftEmptyDictionarySingleton;
    v35 = v129;
    goto LABEL_49;
  }

  v26 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v26)
  {
    goto LABEL_48;
  }

LABEL_8:
  v27 = 0;
  v128 = &_swiftEmptyDictionarySingleton;
  p_type = &stru_40FF0.type;
  v29 = &stru_40FF0.type;
  do
  {
    v30 = v27;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v31 = sub_31700();
      }

      else
      {
        if (v30 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_45;
        }

        v31 = *(a1 + 8 * v30 + 32);
      }

      v32 = v31;
      v27 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v33 = [v31 p_type[24]];
      if (v33)
      {
        v36 = v33;
        v37 = sub_31320();
        v39 = v38;

        v120 = v32;
        v40 = v128;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v130 = v40;
        v115 = v37;
        v42 = v37;
        v43 = v39;
        v44 = sub_17054(v42, v39);
        v46 = v40[2];
        v47 = (v45 & 1) == 0;
        v48 = __OFADD__(v46, v47);
        v49 = v46 + v47;
        if (v48)
        {
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v50 = v45;
        if (v40[3] < v49)
        {
          sub_17650(v49, isUniquelyReferenced_nonNull_native);
          v51 = v39;
          v44 = sub_17054(v115, v39);
          v29 = (&stru_40FF0 + 16);
          if ((v50 & 1) == (v52 & 1))
          {
            p_type = (&stru_40FF0 + 16);
            if (v50)
            {
              goto LABEL_23;
            }

LABEL_32:
            v70 = v130;
            *(v130 + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v71 = (v70[6] + 16 * v44);
            *v71 = v115;
            v71[1] = v51;
            v72 = v120;
            *(v70[7] + 8 * v44) = v120;

            v73 = v70[2];
            v48 = __OFADD__(v73, 1);
            v74 = v73 + 1;
            if (!v48)
            {
              goto LABEL_39;
            }

LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
          }

LABEL_80:
          result = sub_31890();
          __break(1u);
          return result;
        }

        v29 = (&stru_40FF0 + 16);
        if (isUniquelyReferenced_nonNull_native)
        {
          v51 = v43;
          p_type = (&stru_40FF0 + 16);
          if ((v45 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v78 = v44;
          sub_187A8();
          v44 = v78;
          v51 = v43;
          p_type = (&stru_40FF0 + 16);
          if ((v50 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

LABEL_23:
        v53 = v44;

        v128 = v130;
        v54 = *(v130 + 56);
        v55 = *(v54 + 8 * v53);
        v56 = v120;
LABEL_29:
        *(v54 + 8 * v53) = v56;

        goto LABEL_40;
      }

      v34 = [v32 v29[28]];
      if (v34)
      {
        break;
      }

      ++v30;
      v35 = v129;
      if (v27 == v26)
      {
        goto LABEL_49;
      }
    }

    v57 = v34;
    v120 = sub_31320();
    v59 = v58;

    v115 = v32;
    v60 = v128;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    *&v130 = v60;
    v114 = v59;
    v62 = sub_17054(v120, v59);
    v64 = v60[2];
    v65 = (v63 & 1) == 0;
    v48 = __OFADD__(v64, v65);
    v66 = v64 + v65;
    if (v48)
    {
      goto LABEL_77;
    }

    v67 = v63;
    if (v60[3] >= v66)
    {
      if ((v61 & 1) == 0)
      {
        v79 = v62;
        sub_187A8();
        v62 = v79;
      }

      v68 = v114;
      if ((v67 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_28:
      v53 = v62;

      v128 = v130;
      v54 = *(v130 + 56);
      v55 = *(v54 + 8 * v53);
      v56 = v115;
      goto LABEL_29;
    }

    sub_17650(v66, v61);
    v68 = v114;
    v62 = sub_17054(v120, v114);
    if ((v67 & 1) != (v69 & 1))
    {
      goto LABEL_80;
    }

    if (v67)
    {
      goto LABEL_28;
    }

LABEL_38:
    v70 = v130;
    *(v130 + 8 * (v62 >> 6) + 64) |= 1 << v62;
    v75 = (v70[6] + 16 * v62);
    *v75 = v120;
    v75[1] = v68;
    v76 = v115;
    *(v70[7] + 8 * v62) = v115;

    v77 = v70[2];
    v48 = __OFADD__(v77, 1);
    v74 = v77 + 1;
    if (v48)
    {
      goto LABEL_79;
    }

LABEL_39:
    v128 = v70;
    v70[2] = v74;
LABEL_40:
    v35 = v129;
  }

  while (v27 != v26);
LABEL_49:
  v80 = v123[2];
  if (!v80)
  {

    goto LABEL_74;
  }

  v81 = v126;
  v82 = (v127 + *(v119 + 48));
  v83 = v123 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
  v122 = *(v122 + 72);
  v123 = (v121 + 4);
  v120 = 0;
  ++v121;
  v84 = v116;
  while (2)
  {
    v85 = v127;
    sub_B488(v83, v127, &unk_42700, &qword_32CD0);
    v86 = v82[1];
    v130 = *v82;
    *v131 = v86;
    *&v131[9] = *(v82 + 25);
    v87 = *(v82 + 1);
    v88 = *(v82 + 3);
    v89 = *(v82 + 4);
    (*v123)(v81, v85, v35);
    v90 = v84;
    if ([v84 recordType] == &dword_0 + 2 && v131[24] == 2 && (v91 = *(&v130 + 1), v119 = v130, , , , , , v91))
    {
      v92 = v128;
      if (v128[2])
      {
        v93 = sub_17054(v119, v91);
        v95 = v94;

        v81 = v126;
        if (v95)
        {
          v96 = *(v92[7] + 8 * v93);
          v97 = v96;
        }

        else
        {
          v96 = 0;
        }

        v84 = v90;
      }

      else
      {

        v96 = 0;
        v84 = v90;
        v81 = v126;
      }
    }

    else
    {
      v84 = v90;
      v98 = [v90 identifier];
      if (!v98)
      {
        v98 = [v90 eventName];
      }

      v99 = v98;
      v100 = sub_31320();
      v102 = v101;

      v103 = v128;
      v81 = v126;
      if (v128[2])
      {
        v104 = sub_17054(v100, v102);
        v106 = v105;

        if (v106)
        {
          v96 = *(v103[7] + 8 * v104);
          v107 = v96;
          goto LABEL_66;
        }
      }

      else
      {
      }

      v96 = 0;
    }

LABEL_66:
    v108 = v96;
    v109 = v124(v96, v84, v81, &v130);
    sub_B4F0(&v130);

    if (v109)
    {
    }

    else
    {
      sub_8C34();
      v110 = swift_allocError();
      *v111 = 0;

      v120 = v110;
    }

    v35 = v129;
    (*v121)(v81, v129);
    v83 += v122;
    v80 = (v80 - 1);
    if (v80)
    {
      continue;
    }

    break;
  }

  v112 = v120;
  if (v120)
  {
    swift_errorRetain();
    v118(v112, 1);
  }

LABEL_74:
  v118(0, 0);
}

uint64_t sub_53D8()
{
  v1 = [v0 data];
  if (v1)
  {
    v2 = v1;
    v3 = sub_310F0();
    v5 = v4;

    v6 = objc_opt_self();
    isa = sub_310E0().super.isa;
    v21[0] = 0;
    v8 = [v6 JSONObjectWithData:isa options:0 error:v21];

    if (v8)
    {
      v9 = v21[0];
      sub_31680();
      swift_unknownObjectRelease();
      sub_2294(&qword_424E8, &qword_32CF0);
      if (swift_dynamicCast())
      {
        sub_B558(v3, v5);
        return v20;
      }

      if (qword_42220 != -1)
      {
        swift_once();
      }

      v16 = sub_311B0();
      sub_8BFC(v16, qword_434B0);
      v17 = sub_31190();
      v18 = sub_314D0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_0, v17, v18, "Tried to convert a Property to a StatePropertyValue but data can't be deserialized to a valid state value", v19, 2u);
      }

      sub_B558(v3, v5);
    }

    else
    {
      v15 = v21[0];
      sub_31070();

      swift_willThrow();
      sub_B558(v3, v5);
    }
  }

  else
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v11 = sub_311B0();
    sub_8BFC(v11, qword_434B0);
    v12 = sub_31190();
    v13 = sub_314D0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "Tried to convert a Property to a StatePropertyValue without data", v14, 2u);
    }
  }

  return 0;
}

unint64_t sub_56D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2294(&qword_424E0, &qword_32CE8);
    v2 = sub_31800();
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
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_B61C(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_B60C(v29, &v24);

        sub_2294(&qword_424D0, &qword_32CD8);
        swift_dynamicCast();
        sub_B60C(&v25, v27);
        sub_B60C(v27, v28);
        sub_B60C(v28, &v26);
        result = sub_17054(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_9170(v12);
          result = sub_B60C(&v26, v12);
          v8 = v13;
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
          *(v2[6] + 16 * result) = v19;
          result = sub_B60C(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
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

uint64_t sub_5964(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2294(&qword_42480, &qword_32CA8);
    v2 = sub_31800();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_B61C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_B60C(v33, v32);
    sub_2294(&qword_424D0, &qword_32CD8);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_B60C(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_B60C(v31, v32);
    result = sub_316B0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_B60C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_5C60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2294(&qword_42480, &qword_32CA8);
    v2 = sub_31800();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_B304(0, &qword_42488, NSObject_ptr);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_B60C(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_B60C(v31, v32);
    result = sub_316B0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_B60C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

double sub_5F30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_17054(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18780();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_B60C((*(v12 + 56) + 32 * v9), a3);
    sub_2ED78(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_5FD4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_6144(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(unint64_t, uint64_t))
{
  v14 = objc_allocWithZone(NSFetchRequest);
  v15 = sub_31300();
  v16 = [v14 initWithEntityName:v15];

  [v16 setPredicate:a1];
  if (a3)
  {
    sub_2294(&qword_42440, &unk_32AB0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_32A60;
    *(v17 + 32) = 0x696669746E656469;
    *(v17 + 40) = 0xEA00000000007265;
    *(v17 + 88) = &type metadata for String;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = a2;
    *(v17 + 72) = a3;

    v18 = sub_31300();
    isa = sub_313D0().super.isa;

    v20 = [objc_opt_self() predicateWithFormat:v18 argumentArray:isa];
  }

  else
  {
    v21 = a1;
  }

  sub_313C0();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v35 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_31400();
  }

  sub_31410();
  if (a4)
  {

    v22 = sub_2294(&qword_424F0, qword_32CF8);
    sub_B678(&qword_424F8, &qword_424F0, qword_32CF8);
    if (sub_31490())
    {
      sub_2294(&qword_42440, &unk_32AB0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_32A60;
      *(v23 + 32) = 0x44497465737361;
      *(v23 + 40) = 0xE700000000000000;
      *(v23 + 88) = v22;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = a4;
      v24 = sub_31300();
      v25 = sub_313D0().super.isa;

      v26 = [objc_opt_self() predicateWithFormat:v24 argumentArray:v25];

      sub_313C0();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v36 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        sub_31400();
      }

      sub_31410();
    }

    else
    {
    }
  }

  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v27 = sub_313D0().super.isa;
  v28 = [objc_opt_self() andPredicateWithSubpredicates:v27];

  [v16 setPredicate:v28];
  if (a5)
  {
    sub_2294(&qword_42498, &qword_32CB8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_32A70;
    v30 = objc_allocWithZone(NSSortDescriptor);
    v31 = sub_31300();
    v32 = [v30 initWithKey:v31 ascending:1];

    *(v29 + 32) = v32;
    sub_B304(0, &qword_424A0, NSSortDescriptor_ptr);
    v33 = sub_313D0().super.isa;

    [v16 setSortDescriptors:v33];
  }

  if (a6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v16 setFetchLimit:a6];
  }

  type metadata accessor for CDProperty();
  v34 = sub_31620();

  sub_3758(v34, 0, a8);
}

void _s19EngagementCollector10CDPropertyC21fetchCollectionValues22propertyConfigurations8assetIDs15sortByCreatedAt5limit7context10completionySayAA21PropertyConfiguration_pG_ShySSGSgSbSiSo22NSManagedObjectContextCys6ResultOySayAaK_p_AA0R5ValueOtGs5Error_pGctFZ_0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(unint64_t, uint64_t), uint64_t a7)
{
  v60 = a6;
  v7 = a1;
  if (a1 >> 62)
  {
LABEL_27:
    v8 = sub_317C0();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v66 = (v7 & 0xFFFFFFFFFFFFFF8);
      v68 = v7 & 0xC000000000000001;
      v10 = &_swiftEmptyDictionarySingleton;
      v65 = v7;
      while (1)
      {
        if (v68)
        {
          v13 = sub_31700();
          v14 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v9 >= v66[2])
          {
            goto LABEL_24;
          }

          v13 = *(v7 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v14 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v15 = [v13 eventName];
        v16 = sub_31320();
        v18 = v17;

        swift_unknownObjectRetain();
        v19 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v19;
        v7 = sub_17054(v16, v18);
        v22 = v19[2];
        v23 = (v21 & 1) == 0;
        v24 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_25;
        }

        v25 = v21;
        if (v19[3] >= v24)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v21)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_18610();
            if (v25)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_173A8(v24, isUniquelyReferenced_nonNull_native);
          v26 = sub_17054(v16, v18);
          if ((v25 & 1) != (v27 & 1))
          {
            sub_31890();
            __break(1u);
            return;
          }

          v7 = v26;
          if (v25)
          {
LABEL_4:

            v10 = v70;
            v11 = *(v70 + 56);
            v12 = *(v11 + 8 * v7);
            *(v11 + 8 * v7) = v13;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        v10 = v70;
        *(v70 + 8 * (v7 >> 6) + 64) |= 1 << v7;
        v28 = (v10[6] + 16 * v7);
        *v28 = v16;
        v28[1] = v18;
        *(v10[7] + 8 * v7) = v13;
        swift_unknownObjectRelease();
        v29 = v10[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_26;
        }

        v10[2] = v31;
LABEL_5:
        ++v9;
        v7 = v65;
        if (v14 == v8)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v10 = &_swiftEmptyDictionarySingleton;
LABEL_29:
  v32 = v10[2];
  v69 = v10;
  if (!v32)
  {
    goto LABEL_32;
  }

  v33 = sub_2EC6C(v32, 0);
  v34 = sub_5FD4(&v70, v33 + 4, v32, v10);

  sub_B6C0();
  if (v34 != v32)
  {
    __break(1u);
LABEL_32:
    v33 = _swiftEmptyArrayStorage;
  }

  sub_2294(&qword_42440, &unk_32AB0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_32A60;
  *(v35 + 56) = &type metadata for String;
  *(v35 + 32) = 7955819;
  *(v35 + 40) = 0xE300000000000000;
  *(v35 + 88) = sub_2294(&qword_424C0, &qword_32CC8);
  *(v35 + 64) = v33;
  swift_retain_n();

  v36 = sub_31300();
  isa = sub_313D0().super.isa;

  v38 = objc_opt_self();
  v39 = [v38 predicateWithFormat:v36 argumentArray:isa];

  v40 = objc_allocWithZone(NSFetchRequest);
  v41 = sub_31300();
  v42 = [v40 initWithEntityName:v41];

  p_type = &stru_40FF0.type;
  v67 = v42;
  [v42 setPredicate:v39];
  v70 = _swiftEmptyArrayStorage;
  v44 = v39;
  sub_313C0();
  if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v58 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
    sub_31400();
  }

  sub_31410();
  if (a2)
  {

    v45 = sub_2294(&qword_424F0, qword_32CF8);
    sub_B678(&qword_424F8, &qword_424F0, qword_32CF8);
    if (sub_31490())
    {
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_32A60;
      *(v46 + 32) = 0x44497465737361;
      *(v46 + 40) = 0xE700000000000000;
      *(v46 + 88) = v45;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = a2;
      v47 = sub_31300();
      v48 = sub_313D0().super.isa;

      v49 = [v38 predicateWithFormat:v47 argumentArray:v48];

      sub_313C0();
      p_type = (&stru_40FF0 + 16);
      if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v59 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
        sub_31400();
      }

      sub_31410();
    }

    else
    {

      p_type = &stru_40FF0.type;
    }
  }

  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v50 = sub_313D0().super.isa;
  v51 = [objc_opt_self() andPredicateWithSubpredicates:v50];

  [v67 p_type[37]];
  if (a3)
  {
    sub_2294(&qword_42498, &qword_32CB8);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_32A70;
    v53 = objc_allocWithZone(NSSortDescriptor);
    v54 = sub_31300();
    v55 = [v53 initWithKey:v54 ascending:1];

    *(v52 + 32) = v55;
    sub_B304(0, &qword_424A0, NSSortDescriptor_ptr);
    v56 = sub_313D0().super.isa;

    [v67 setSortDescriptors:v56];
  }

  if (a4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v67 setFetchLimit:?];
  }

  type metadata accessor for CDProperty();
  v57 = sub_31620();

  sub_3AC8(v57, 0, v60, a7, v69);

  swift_bridgeObjectRelease_n();
}

void sub_7374(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t *))
{
  v14 = objc_allocWithZone(NSFetchRequest);
  v15 = sub_31300();
  v16 = [v14 initWithEntityName:v15];

  [v16 setPredicate:a1];
  if (a3)
  {
    sub_2294(&qword_42440, &unk_32AB0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_32A60;
    *(v17 + 32) = 0x696669746E656469;
    *(v17 + 40) = 0xEA00000000007265;
    *(v17 + 88) = &type metadata for String;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = a2;
    *(v17 + 72) = a3;

    v18 = sub_31300();
    isa = sub_313D0().super.isa;

    v20 = [objc_opt_self() predicateWithFormat:v18 argumentArray:isa];
  }

  else
  {
    v21 = a1;
  }

  sub_313C0();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v35 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_31400();
  }

  sub_31410();
  if (a4)
  {

    v22 = sub_2294(&qword_424F0, qword_32CF8);
    sub_B678(&qword_424F8, &qword_424F0, qword_32CF8);
    if (sub_31490())
    {
      sub_2294(&qword_42440, &unk_32AB0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_32A60;
      *(v23 + 32) = 0x44497465737361;
      *(v23 + 40) = 0xE700000000000000;
      *(v23 + 88) = v22;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = a4;
      v24 = sub_31300();
      v25 = sub_313D0().super.isa;

      v26 = [objc_opt_self() predicateWithFormat:v24 argumentArray:v25];

      sub_313C0();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v36 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        sub_31400();
      }

      sub_31410();
    }

    else
    {
    }
  }

  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v27 = sub_313D0().super.isa;
  v28 = [objc_opt_self() andPredicateWithSubpredicates:v27];

  [v16 setPredicate:v28];
  if (a5)
  {
    sub_2294(&qword_42498, &qword_32CB8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_32A70;
    v30 = objc_allocWithZone(NSSortDescriptor);
    v31 = sub_31300();
    v32 = [v30 initWithKey:v31 ascending:1];

    *(v29 + 32) = v32;
    sub_B304(0, &qword_424A0, NSSortDescriptor_ptr);
    v33 = sub_313D0().super.isa;

    [v16 setSortDescriptors:v33];
  }

  if (a6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v16 setFetchLimit:a6];
  }

  type metadata accessor for CDProperty();
  v34 = sub_31620();

  sub_3F64(v34, 0, a8);
}

void sub_7B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void, uint64_t, uint64_t))
{
  sub_2294(&qword_42440, &unk_32AB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_32A60;
  *(v11 + 32) = 7955819;
  *(v11 + 40) = 0xE300000000000000;
  *(v11 + 88) = &type metadata for String;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = a1;
  *(v11 + 72) = a2;
  swift_retain_n();

  v12 = sub_31300();
  isa = sub_313D0().super.isa;

  v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:isa];

  v15 = objc_allocWithZone(NSFetchRequest);
  v16 = sub_31300();
  v22 = [v15 initWithEntityName:v16];

  [v22 setPredicate:v14];
  v17 = v14;
  sub_313C0();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v21 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    sub_31400();
  }

  sub_31410();
  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v18 = sub_313D0().super.isa;
  v19 = [objc_opt_self() andPredicateWithSubpredicates:v18];

  [v22 setPredicate:v19];
  [v22 setFetchLimit:1];
  type metadata accessor for CDProperty();
  v20 = sub_31620();

  a6(v20, 0, a4, a5);
}

void _s19EngagementCollector10CDPropertyC14fetchObjectIDs9startDate03endH010eventNames7context10completiony10Foundation0H0VSg_AMSaySSGSgSo09NSManagedE7ContextCys6ResultOySaySo0oE2IDCGs5Error_pGctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v64 = a6;
  v65 = a5;
  v62 = a3;
  v63 = a4;
  v60 = a2;
  v7 = *(*(sub_2294(&qword_42490, &qword_32CB0) - 8) + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v58 - v11;
  v13 = sub_31180();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v61 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v58 - v18;
  v20 = objc_allocWithZone(NSFetchRequest);
  v21 = sub_31300();
  v66 = [v20 initWithEntityName:v21];

  v67 = &_swiftEmptyArrayStorage;
  sub_B488(a1, v12, &qword_42490, &qword_32CB0);
  v59 = *(v14 + 48);
  if (v59(v12, 1, v13) == 1)
  {
    v22 = v14;
    sub_B5AC(v12, &qword_42490, &qword_32CB0);
    v23 = v66;
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    sub_2294(&qword_42440, &unk_32AB0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_32A60;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 32) = 0x4164657461657263;
    *(v24 + 40) = 0xE900000000000074;
    *(v24 + 88) = v13;
    v25 = sub_B34C((v24 + 64));
    (*(v14 + 16))(v25, v19, v13);
    v26 = sub_31300();
    isa = sub_313D0().super.isa;

    v28 = [objc_opt_self() predicateWithFormat:v26 argumentArray:isa];

    sub_313C0();
    if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v67 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v56 = *(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8));
      sub_31400();
    }

    sub_31410();
    v22 = v14;
    (*(v14 + 8))(v19, v13);
    v23 = v66;
  }

  sub_B488(v60, v10, &qword_42490, &qword_32CB0);
  v29 = v59(v10, 1, v13);
  v30 = v61;
  if (v29 == 1)
  {
    sub_B5AC(v10, &qword_42490, &qword_32CB0);
    v31 = v62;
    p_type = (&stru_40FF0 + 16);
    v33 = &_s10Foundation12NotificationV36_unconditionallyBridgeFromObjectiveCyACSo14NSNotificationCSgFZ_ptr;
    v34 = swift_unknownObjectWeakDestroy;
    if (!v62)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  (*(v22 + 32))(v61, v10, v13);
  sub_2294(&qword_42440, &unk_32AB0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_32A60;
  *(v35 + 56) = &type metadata for String;
  *(v35 + 32) = 0x4164657461657263;
  *(v35 + 40) = 0xE900000000000074;
  *(v35 + 88) = v13;
  v36 = sub_B34C((v35 + 64));
  (*(v22 + 16))(v36, v30, v13);
  v37 = v30;
  v38 = sub_31300();
  v39 = sub_313D0().super.isa;

  v33 = &_s10Foundation12NotificationV36_unconditionallyBridgeFromObjectiveCyACSo14NSNotificationCSgFZ_ptr;
  p_type = &stru_40FF0.type;
  v40 = [objc_opt_self() predicateWithFormat:v38 argumentArray:v39];

  sub_313C0();
  if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v67 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v57 = *(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8));
    sub_31400();
  }

  sub_31410();
  (*(v22 + 8))(v37, v13);
  v31 = v62;
  v34 = swift_unknownObjectWeakDestroy;
  if (v62)
  {
LABEL_12:
    sub_2294(&qword_42440, &unk_32AB0);
    v41 = swift_allocObject();
    *(v41 + 16) = *(v34 + 166);
    *(v41 + 56) = &type metadata for String;
    *(v41 + 32) = 7955819;
    *(v41 + 40) = 0xE300000000000000;
    *(v41 + 88) = sub_2294(&qword_424C0, &qword_32CC8);
    *(v41 + 64) = v31;

    v42 = sub_31300();
    v43 = sub_313D0().super.isa;

    v44 = v33[273];
    v45 = [objc_opt_self() p_type[23]];

    sub_313C0();
    if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v67 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v55 = *(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8));
      sub_31400();
    }

    sub_31410();
  }

LABEL_15:
  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v46 = sub_313D0().super.isa;
  v47 = [objc_opt_self() andPredicateWithSubpredicates:v46];

  [v23 setPredicate:v47];
  v48 = objc_allocWithZone(NSSortDescriptor);
  v49 = sub_31300();
  v50 = [v48 initWithKey:v49 ascending:1];

  sub_2294(&qword_42498, &qword_32CB8);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_32A70;
  *(v51 + 32) = v50;
  sub_B304(0, &qword_424A0, NSSortDescriptor_ptr);
  v52 = v50;
  v53 = sub_313D0().super.isa;

  [v23 setSortDescriptors:v53];

  [v23 setResultType:1];
  sub_B304(0, &qword_424B8, NSManagedObjectID_ptr);
  v54 = sub_31620();

  v65(v54, 0);
}

uint64_t sub_8BFC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_8C34()
{
  result = qword_425B0;
  if (!qword_425B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_425B0);
  }

  return result;
}

uint64_t sub_8C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 1)
  {
    if (a6 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_8D00()
{
  result = qword_42448;
  if (!qword_42448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_42448);
  }

  return result;
}

unint64_t sub_8D64()
{
  result = qword_42450;
  if (!qword_42450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_42450);
  }

  return result;
}

id sub_8DC4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 count];
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PropertyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PropertyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CDProperty.SpecialPlistKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CDProperty.SpecialPlistKeys(_WORD *result, int a2, int a3)
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

uint64_t sub_9170(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_91BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(void *, uint64_t *, char *), uint64_t a8, uint64_t (*a9)(void), uint64_t a10)
{
  v61 = a7;
  v62 = a8;
  v59 = a5;
  v60 = a6;
  v67 = a3;
  v68 = a4;
  v66 = a2;
  v11 = sub_2294(&qword_42490, &qword_32CB0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v65 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = sub_31180();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v63 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v58 - v22;
  v24 = objc_allocWithZone(NSFetchRequest);
  v25 = sub_31300();
  v69 = [v24 initWithEntityName:v25];

  v70 = _swiftEmptyArrayStorage;
  sub_B488(a1, v16, &qword_42490, &qword_32CB0);
  v64 = *(v18 + 48);
  if (v64(v16, 1, v17) == 1)
  {
    v26 = v18;
    sub_B5AC(v16, &qword_42490, &qword_32CB0);
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
    sub_2294(&qword_42440, &unk_32AB0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_32A60;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 32) = 0x4164657461657263;
    *(v27 + 40) = 0xE900000000000074;
    *(v27 + 88) = v17;
    v28 = sub_B34C((v27 + 64));
    (*(v18 + 16))(v28, v23, v17);
    v29 = sub_31300();
    isa = sub_313D0().super.isa;

    v31 = [objc_opt_self() predicateWithFormat:v29 argumentArray:isa];

    sub_313C0();
    if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v56 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
      sub_31400();
    }

    sub_31410();
    v26 = v18;
    (*(v18 + 8))(v23, v17);
  }

  v32 = v65;
  sub_B488(v66, v65, &qword_42490, &qword_32CB0);
  if (v64(v32, 1, v17) == 1)
  {
    sub_B5AC(v32, &qword_42490, &qword_32CB0);
    v33 = v67;
    p_type = (&stru_40FF0 + 16);
  }

  else
  {
    v35 = v63;
    (*(v26 + 32))(v63, v32, v17);
    sub_2294(&qword_42440, &unk_32AB0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_32A60;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 32) = 0x4164657461657263;
    *(v36 + 40) = 0xE900000000000074;
    *(v36 + 88) = v17;
    v37 = sub_B34C((v36 + 64));
    (*(v26 + 16))(v37, v35, v17);
    v38 = sub_31300();
    v39 = sub_313D0().super.isa;

    p_type = &stru_40FF0.type;
    v40 = [objc_opt_self() predicateWithFormat:v38 argumentArray:v39];

    sub_313C0();
    if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v57 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
      sub_31400();
    }

    sub_31410();
    (*(v26 + 8))(v35, v17);
    v33 = v67;
  }

  v41 = v69;
  if (v33)
  {
    sub_2294(&qword_42440, &unk_32AB0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_32A60;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 32) = 7955819;
    *(v42 + 40) = 0xE300000000000000;
    *(v42 + 88) = sub_2294(&qword_424C0, &qword_32CC8);
    *(v42 + 64) = v33;

    v43 = sub_31300();
    v44 = sub_313D0().super.isa;

    v45 = [objc_opt_self() p_type[23]];

    sub_313C0();
    if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v55 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
      sub_31400();
    }

    sub_31410();
  }

  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v46 = sub_313D0().super.isa;
  v47 = [objc_opt_self() andPredicateWithSubpredicates:v46];

  [v41 setPredicate:v47];
  v48 = objc_allocWithZone(NSSortDescriptor);
  v49 = sub_31300();
  v50 = [v48 initWithKey:v49 ascending:1];

  sub_2294(&qword_42498, &qword_32CB8);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_32A70;
  *(v51 + 32) = v50;
  sub_B304(0, &qword_424A0, NSSortDescriptor_ptr);
  v52 = v50;
  v53 = sub_313D0().super.isa;

  [v41 setSortDescriptors:v53];

  [v41 setResultType:1];
  sub_B304(0, &qword_424B8, NSManagedObjectID_ptr);
  v54 = sub_31620();

  sub_22BF8(v54, 0, v59, v60, v61, v62, a9, a10);
}

uint64_t sub_9D94(char **a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v47 = v12;
  v12[4] = a6;
  v48 = swift_allocObject();
  *(v48 + 16) = a3;
  v13 = a1[2];
  v14 = a3;
  v50 = a1;
  if (!v13)
  {
    v49 = &_swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v15 = 0;
  v49 = &_swiftEmptyArrayStorage;
  p_type = &stru_40FF0.type;
  do
  {
    v17 = v15;
    while (1)
    {
      if (v17 >= v13)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v19 = sub_2294(&unk_42700, &qword_32CD0);
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_26;
      }

      v20 = a1 + ((*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80)) + *(*(v19 - 8) + 72) * v17 + *(v19 + 48);
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 40);
      if ([a2 recordType] != &dword_0 + 2 || v23 != 2)
      {
        break;
      }

      if (v22)
      {
        goto LABEL_13;
      }

LABEL_5:
      ++v17;
      a1 = v50;
      if (v15 == v13)
      {
        goto LABEL_20;
      }
    }

    v18 = [a2 identifier];
    if (!v18)
    {
      goto LABEL_5;
    }

    v24 = v18;
    v21 = sub_31320();
    v22 = v25;

LABEL_13:
    a1 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_2E9F0(0, *(v49 + 2) + 1, 1, v49);
    }

    v27 = *(v49 + 2);
    v26 = *(v49 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v30 = sub_2E9F0((v26 > 1), v27 + 1, 1, v49);
      v28 = v27 + 1;
      v49 = v30;
    }

    *(v49 + 2) = v28;
    v29 = &v49[16 * v27];
    *(v29 + 4) = v21;
    *(v29 + 5) = v22;
  }

  while (v15 != v13);
LABEL_20:
  v31 = [a2 eventName];
  v32 = sub_31320();
  v34 = v33;

  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  v35 = sub_2294(&qword_424C0, &qword_32CC8);
  sub_B678(&qword_424C8, &qword_424C0, &qword_32CC8);
  if (sub_31490())
  {
    sub_2294(&qword_42440, &unk_32AB0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_32A80;
    *(v36 + 32) = 7955819;
    *(v36 + 40) = 0xE300000000000000;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v32;
    *(v36 + 72) = v34;
    *(v36 + 88) = &type metadata for String;
    *(v36 + 96) = 0x696669746E656469;
    *(v36 + 104) = 0xEA00000000007265;
    *(v36 + 152) = v35;
    *(v36 + 120) = &type metadata for String;
    *(v36 + 128) = v49;
  }

  else
  {

    sub_2294(&qword_42440, &unk_32AB0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_32A60;
    *(v37 + 32) = 7955819;
    *(v37 + 40) = 0xE300000000000000;
    *(v37 + 88) = &type metadata for String;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = v32;
    *(v37 + 72) = v34;
  }

  v38 = sub_31300();
  isa = sub_313D0().super.isa;

  v40 = [objc_opt_self() predicateWithFormat:v38 argumentArray:isa];

  v41 = objc_allocWithZone(NSFetchRequest);

  swift_unknownObjectRetain();
  v15 = v48;

  v42 = sub_31300();
  p_type = [v41 initWithEntityName:v42];

  a1 = &stru_40FF0.type;
  [p_type setPredicate:v40];
  v17 = v40;
  sub_313C0();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
LABEL_27:
    sub_31400();
  }

  sub_31410();
  sub_B304(0, &qword_424B0, NSPredicate_ptr);
  v43 = sub_313D0().super.isa;
  v44 = [objc_opt_self() andPredicateWithSubpredicates:v43];

  [p_type a1[37]];
  [p_type setFetchLimit:0];
  type metadata accessor for CDProperty();
  v45 = sub_31620();

  sub_4AD4(v45, 0, v50, a2, sub_B438, v15, sub_B3F0, v47);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_A6F8(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    v3 = 32;
    if (result == 1)
    {
      v3 = 16;
    }

    v20 = *(a1 + v3);

    sub_5F30(0x44497465737361, 0xE700000000000000, v21);
    sub_B5AC(v21, &qword_424D8, &qword_32CE0);
    sub_5964(v20);

    v4 = objc_allocWithZone(NSDictionary);
    isa = sub_312C0().super.isa;

    v6 = [v4 initWithDictionary:isa];

    v7 = objc_opt_self();
    *&v21[0] = 0;
    v8 = [v7 dataWithJSONObject:v6 options:1 error:v21];
    v9 = *&v21[0];
    if (v8)
    {
      v10 = sub_310F0();

      return v10;
    }

    else
    {
      v11 = v9;
      sub_31070();

      swift_willThrow();
      if (qword_42220 != -1)
      {
        swift_once();
      }

      v12 = sub_311B0();
      sub_8BFC(v12, qword_434B0);
      swift_errorRetain();
      v13 = sub_31190();
      v14 = sub_314D0();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *&v21[0] = v16;
        *v15 = 136315138;
        swift_getErrorValue();
        v17 = sub_318A0();
        v19 = sub_28BCC(v17, v18, v21);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_0, v13, v14, "Could not convert StatePropertyValue to a valid JSON data object: %s", v15, 0xCu);
        sub_9170(v16);
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_AA04(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = sub_31300();
  v6 = [v4 initWithEntityName:v5];

  sub_2294(&qword_42440, &unk_32AB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_32A60;
  *(v7 + 32) = 7955819;
  *(v7 + 40) = 0xE300000000000000;
  *(v7 + 88) = &type metadata for String;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;

  v8 = sub_31300();
  isa = sub_313D0().super.isa;

  v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

  [v6 setPredicate:v10];
  v11 = objc_allocWithZone(NSSortDescriptor);
  v12 = sub_31300();
  v13 = [v11 initWithKey:v12 ascending:1];

  sub_2294(&qword_42498, &qword_32CB8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_32A70;
  *(v14 + 32) = v13;
  sub_B304(0, &qword_424A0, NSSortDescriptor_ptr);
  v15 = v13;
  v16 = sub_313D0().super.isa;

  [v6 setSortDescriptors:v16];

  type metadata accessor for CDProperty();
  v17 = sub_31620();

  return v17;
}

uint64_t sub_AEE8(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = sub_31300();
  v6 = [v4 initWithEntityName:v5];

  sub_2294(&qword_42440, &unk_32AB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_32A60;
  *(v7 + 32) = 7955819;
  *(v7 + 40) = 0xE300000000000000;
  *(v7 + 88) = &type metadata for String;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = a1;
  *(v7 + 72) = a2;

  v8 = sub_31300();
  isa = sub_313D0().super.isa;

  v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

  [v6 setPredicate:v10];
  type metadata accessor for CDProperty();
  v11 = sub_31610();

  return v11;
}

uint64_t sub_B304(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t *sub_B34C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_B3B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_B400()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B440(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_B488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2294(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_B544(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_B558(a1, a2);
  }

  return a1;
}

uint64_t sub_B558(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_B5AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2294(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_B60C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_B61C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_B678(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_B440(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id BMPropertyValue.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 40);
  if (v4 == 255)
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v5 = &v3[OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue];
    v6 = *(a1 + 16);
    *v5 = *a1;
    *(v5 + 1) = v6;
    *(v5 + 4) = *(a1 + 32);
    v5[40] = v4;
    v8.receiver = v3;
    v8.super_class = v1;
    return objc_msgSendSuper2(&v8, "init");
  }
}

id BMPropertyValue.init(with:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 255)
  {
    type metadata accessor for BMPropertyValue();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v3 = &v1[OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue];
    v4 = *(a1 + 16);
    *v3 = *a1;
    *(v3 + 1) = v4;
    *(v3 + 4) = *(a1 + 32);
    v3[40] = v2;
    v6.receiver = v1;
    v6.super_class = type metadata accessor for BMPropertyValue();
    return objc_msgSendSuper2(&v6, "init");
  }
}

id BMPropertyValue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BMPropertyValue();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t PropertyValue.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  if (!*(v0 + 40))
  {
    v5 = 0xE700000000000000;
    v4 = 0x7265746E756F63;
LABEL_13:
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_316D0(37);
    v14 = 0;
    v15 = 0xE000000000000000;
    v21._object = 0x8000000000034830;
    v21._countAndFlagsBits = 0xD000000000000015;
    sub_31390(v21);
    v22._countAndFlagsBits = v4;
    v22._object = v5;
    sub_31390(v22);

    v23._countAndFlagsBits = 0x6C6156776172202CLL;
    v23._object = 0xEC000000203A6575;
    sub_31390(v23);
    if (v2)
    {
      if (v2 == 1)
      {
        v9 = *(v0 + 16);
      }

      else
      {
        v9 = *(v0 + 32);
      }

      v13 = sub_2294(&qword_42508, &qword_32D10);
      v11 = v9;
    }

    else
    {
      v13 = &type metadata for Int;
      v11 = v1;
    }

    goto LABEL_19;
  }

  v3 = *(v0 + 8);
  if (v2 == 1)
  {
    v4 = 0x6574617473;
  }

  else
  {
    v4 = 0x697463656C6C6F63;
  }

  if (v2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEA00000000006E6FLL;
  }

  if (!v3)
  {
    goto LABEL_13;
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_316D0(53);
  v14 = 0;
  v15 = 0xE000000000000000;
  v16._object = 0x8000000000034830;
  v16._countAndFlagsBits = 0xD000000000000015;
  sub_31390(v16);
  v17._countAndFlagsBits = v4;
  v17._object = v5;
  sub_31390(v17);

  v18._countAndFlagsBits = 0x69746E656469202CLL;
  v18._object = 0xEE00203A72656966;
  sub_31390(v18);
  v19._countAndFlagsBits = v1;
  v19._object = v3;
  sub_31390(v19);
  v20._countAndFlagsBits = 0x6C6156776172202CLL;
  v20._object = 0xEC000000203A6575;
  sub_31390(v20);
  v6 = 16;
  if (v2 == 2)
  {
    v6 = 32;
  }

  v7 = *(v0 + v6);
  v8 = sub_2294(&qword_42508, &qword_32D10);

  v13 = v8;
  v11 = v7;
LABEL_19:
  sub_31790();
  sub_9170(&v11);
  return v14;
}

void PropertyValue.rawValue.getter(void *a1@<X8>)
{
  if (*(v1 + 40))
  {
    if (*(v1 + 40) == 1)
    {
      v3 = v1[2];
    }

    else
    {
      v3 = v1[4];
    }

    a1[3] = sub_2294(&qword_42508, &qword_32D10);
    *a1 = v3;
  }

  else
  {
    v4 = *v1;
    a1[3] = &type metadata for Int;
    *a1 = v4;
  }
}

uint64_t PropertyValue.assetID.getter()
{
  if (*(v0 + 40) < 2u)
  {
    return 0;
  }

  v3 = v0 + 16;
  v1 = *(v0 + 16);
  v2 = *(v3 + 8);

  return v1;
}

uint64_t dispatch thunk of BMPropertyValue.__allocating_init(with:)(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v1 + 88);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  v8 = v2;
  v9 = v3;
  return v4(v7);
}

__n128 sub_BC7C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_BC90(uint64_t a1, unsigned int a2)
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

uint64_t sub_BCD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

id sub_BD98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_BDF0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for CDConfiguration();
  result = sub_316E0();
  *a1 = result;
  return result;
}

void sub_BE30(void *a1, char a2, uint64_t a3, void *a4, void (*a5)(id, void))
{
  if (a2)
  {
    v8 = objc_opt_self();
    v9 = sub_31300();
    v10 = [v8 entityForName:v9 inManagedObjectContext:a3];

    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = [objc_allocWithZone(type metadata accessor for CDConfiguration()) initWithEntity:v10 insertIntoManagedObjectContext:a3];
  }

  else
  {
    v11 = a1;
  }

  v13 = v11;
  v12 = [a4 eventName];
  [v13 setPropertyName:v12];

  [v13 setAgeToExpire:{objc_msgSend(a4, "ageToExpire")}];
  [v13 setCountLimit:{objc_msgSend(a4, "countLimit")}];
  [v13 setRecordType:{objc_msgSend(a4, "recordType")}];
  [v13 setShouldBeSynced:{objc_msgSend(a4, "shouldBeSynced")}];
  a5(v13, 0);
}

uint64_t sub_C008(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_C21C(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(&stru_20.cmd + 8 * a1 + (v3 & 0xFFFFFFFFFFFFFF8));
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

id sub_C098()
{
  v1 = v0;
  v2 = [v0 propertyName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_31320();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [v1 ageToExpire];
  v8 = [v1 countLimit];
  v9 = [v1 recordType];
  v10 = [v1 shouldBeSynced];
  if (v6)
  {
    if (v9 < 3)
    {
      v11 = v10;
      v12 = type metadata accessor for BasePropertyConfiguration();
      v13 = objc_allocWithZone(v12);
      v14 = &v13[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
      *v14 = v4;
      v14[1] = v6;
      *&v13[OBJC_IVAR___BMBasePropertyConfiguration_recordType] = v9;
      v15 = &v13[OBJC_IVAR___BMBasePropertyConfiguration_identifier];
      *v15 = 0;
      v15[1] = 0;
      *&v13[OBJC_IVAR___BMBasePropertyConfiguration_countLimit] = v8;
      *&v13[OBJC_IVAR___BMBasePropertyConfiguration_ageToExpire] = v7;
      v13[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached] = 0;
      v13[OBJC_IVAR___BMBasePropertyConfiguration_shouldBeSynced] = v11;
      v17.receiver = v13;
      v17.super_class = v12;
      return objc_msgSendSuper2(&v17, "init");
    }
  }

  return 0;
}

uint64_t sub_C21C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_317C0();
  }

  else
  {
    v1 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  return sub_31710();
}

unint64_t sub_C280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2294(&unk_42650, &qword_32E98);
    v3 = sub_31800();
    v4 = a1 + 32;

    while (1)
    {
      sub_D74C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_17054(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_B6C8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void sub_C390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(id, void))
{
  v11 = objc_allocWithZone(NSFetchRequest);
  v12 = sub_31300();
  v30 = [v11 initWithEntityName:v12];

  sub_2294(&qword_42440, &unk_32AB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_32A60;
  strcpy((v13 + 32), "propertyName");
  *(v13 + 45) = 0;
  *(v13 + 46) = -5120;
  *(v13 + 88) = &type metadata for String;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = a1;
  *(v13 + 72) = a2;

  v14 = sub_31300();
  isa = sub_313D0().super.isa;

  v16 = [objc_opt_self() predicateWithFormat:v14 argumentArray:isa];

  [v30 setPredicate:v16];
  [v30 setFetchLimit:1];
  type metadata accessor for CDConfiguration();
  v17 = sub_31620();
  if (!(v17 >> 62))
  {
    if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_2294(&qword_42560, &qword_32E88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_32E20;
    *(inited + 32) = 0xD000000000000014;
    v24 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x8000000000034910;
    *(inited + 48) = 0xD000000000000017;
    *(inited + 56) = 0x8000000000034930;
    sub_C280(inited);
    swift_setDeallocating();
    sub_B5AC(v24, &qword_42568, &qword_32E90);
    v25 = objc_allocWithZone(NSError);
    v26 = sub_31300();
    v27 = sub_312C0().super.isa;

    v28 = [v25 initWithDomain:v26 code:1002 userInfo:v27];

    v29 = v28;
    sub_BE30(v28, 1, a4, a5, a6);

    return;
  }

  v21 = v17;
  v22 = sub_317C0();
  v17 = v21;
  if (!v22)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = sub_31700();
  }

  else
  {
    if (!*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v18 = *(v17 + 32);
  }

  v19 = v18;

  v20 = v19;
  sub_BE30(v19, 0, a4, a5, a6);
}

void sub_CA08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t))
{
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_31300();
  v9 = [v7 initWithEntityName:v8];

  sub_2294(&qword_42440, &unk_32AB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_32A60;
  strcpy((v10 + 32), "propertyName");
  *(v10 + 45) = 0;
  *(v10 + 46) = -5120;
  *(v10 + 88) = &type metadata for String;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = a1;
  *(v10 + 72) = a2;

  v11 = sub_31300();
  isa = sub_313D0().super.isa;

  v13 = [objc_opt_self() predicateWithFormat:v11 argumentArray:isa];

  [v9 setPredicate:v13];
  [v9 setFetchLimit:1];
  type metadata accessor for CDConfiguration();
  v14 = sub_31620();
  if (!(v14 >> 62))
  {
    if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_2294(&qword_42560, &qword_32E88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_32E20;
    *(inited + 32) = 0xD000000000000014;
    v21 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x8000000000034910;
    *(inited + 48) = 0xD000000000000017;
    *(inited + 56) = 0x8000000000034930;
    sub_C280(inited);
    swift_setDeallocating();
    sub_B5AC(v21, &qword_42568, &qword_32E90);
    v22 = objc_allocWithZone(NSError);
    v23 = sub_31300();
    v24 = sub_312C0().super.isa;

    v25 = [v22 initWithDomain:v23 code:1002 userInfo:v24];

    v26 = v25;
    a4(v25, 1);

    return;
  }

  v18 = v14;
  v19 = sub_317C0();
  v14 = v18;
  if (!v19)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = sub_31700();
  }

  else
  {
    if (!*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;

  v17 = v16;
  v27 = sub_C098();
  a4(v27, 0);
}

void sub_D050(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = sub_31300();
  v6 = [v3 initWithEntityName:v4];

  type metadata accessor for CDConfiguration();
  v5 = sub_31620();
  sub_26918(v5, 0, a2);
}

void sub_D3A8(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = sub_31300();
  v5 = [v3 initWithEntityName:v4];

  type metadata accessor for CDConfiguration();
  sub_31620();
  a2();
}

unint64_t sub_D700()
{
  result = qword_424A8;
  if (!qword_424A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_424A8);
  }

  return result;
}

uint64_t sub_D74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_42568, &qword_32E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D7BC(unint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(NSFetchRequest);
  v5 = sub_31300();
  v6 = [v4 initWithEntityName:v5];

  v7 = type metadata accessor for CDConfiguration();
  v8 = sub_31620();
  v21 = v8;
  v95 = a1;
  if (v8 >> 62)
  {
LABEL_94:
    v22 = sub_317C0();
  }

  else
  {
    v22 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  v101 = a2;
  v97 = v21;
  v92 = v6;
  v93 = v7;
  if (v22)
  {
    if (v22 < 1)
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      result = sub_31890();
      __break(1u);
      return result;
    }

    v23 = 0;
    v99 = v21 & 0xC000000000000001;
    v98 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v99)
      {
        v24 = sub_31700();
      }

      else
      {
        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = [v24 propertyName];
      if (v26)
      {
        v27 = v26;
        v28 = sub_31320();
        v30 = v29;

        if (v98[2] && (v31 = sub_17054(v28, v30), (v32 & 1) != 0))
        {
          v104 = *(v98[7] + 8 * v31);
        }

        else
        {
          v104 = _swiftEmptyArrayStorage;
        }

        v33 = v25;
        sub_313C0();
        if (*(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v104 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v27 = *(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8));
          sub_31400();
        }

        sub_31410();
        v34 = v104;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = v98;
        v36 = sub_17054(v28, v30);
        v38 = v98[2];
        v39 = (v37 & 1) == 0;
        v40 = __OFADD__(v38, v39);
        v41 = v38 + v39;
        if (v40)
        {
          __break(1u);
LABEL_91:
          __break(1u);
          swift_once();
          v9 = sub_311B0();
          sub_8BFC(v9, qword_434B0);
          v10 = v27;
          v11 = sub_31190();
          v12 = sub_314D0();

          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            v14 = swift_slowAlloc();
            v102 = v14;
            *v13 = 136315138;
            v15 = [v10 localizedDescription];
            v16 = sub_31320();
            v18 = v17;

            v19 = sub_28BCC(v16, v18, &v102);

            *(v13 + 4) = v19;
            _os_log_impl(&dword_0, v11, v12, "Could not fetch. %s", v13, 0xCu);
            sub_9170(v14);
          }

          return v10;
        }

        v42 = v37;
        if (v98[3] >= v41)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v27 = v36;
            sub_18914();
            v36 = v27;
          }
        }

        else
        {
          sub_178F4(v41, isUniquelyReferenced_nonNull_native);
          v36 = sub_17054(v28, v30);
          if ((v42 & 1) != (v43 & 1))
          {
            goto LABEL_100;
          }
        }

        v44 = v103;
        v98 = v103;
        if (v42)
        {
          v45 = v103[7];
          v46 = *(v45 + 8 * v36);
          *(v45 + 8 * v36) = v34;
        }

        else
        {
          v103[(v36 >> 6) + 8] |= 1 << v36;
          v47 = (v44[6] + 16 * v36);
          *v47 = v28;
          v47[1] = v30;
          *(v44[7] + 8 * v36) = v34;
          v48 = v44[2];
          v40 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v40)
          {
            goto LABEL_91;
          }

          v44[2] = v49;
        }

        a2 = v101;
        v21 = v97;
      }

      else
      {
      }

      if (v22 == ++v23)
      {
        goto LABEL_35;
      }
    }
  }

  v98 = &_swiftEmptyDictionarySingleton;
LABEL_35:
  v50 = v95;
  if (v95 >> 62)
  {
    v87 = sub_317C0();
    v50 = v95;
    v6 = v87;
  }

  else
  {
    v6 = *(&dword_10 + (v95 & 0xFFFFFFFFFFFFFF8));
  }

  v7 = 0x6769666E6F434443;
  if (!v6)
  {
    goto LABEL_89;
  }

  v51 = 0;
  v52 = v50 & 0xC000000000000001;
  v88 = v50 + 32;
  v89 = v50 & 0xFFFFFFFFFFFFFF8;
  v53 = qword_434B0;
  v54 = &off_42000;
  v90 = v50 & 0xC000000000000001;
  v91 = v6;
  while (1)
  {
    if (v52)
    {
      v96 = sub_31700();
      v40 = __OFADD__(v51, 1);
      v55 = v51 + 1;
      if (v40)
      {
        goto LABEL_92;
      }
    }

    else
    {
      if (v51 >= *(v89 + 16))
      {
        goto LABEL_97;
      }

      v96 = *(v88 + 8 * v51);
      swift_unknownObjectRetain();
      v40 = __OFADD__(v51, 1);
      v55 = v51 + 1;
      if (v40)
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }
    }

    v94 = v55;
    v6 = [v96 eventName];
    v56 = sub_31320();
    v58 = v57;

    if (v98[2])
    {
      v6 = sub_17054(v56, v58);
      v60 = v59;

      if (v60)
      {
        v21 = *(v98[7] + 8 * v6);
        v104 = v21;
        swift_bridgeObjectRetain_n();
        goto LABEL_50;
      }
    }

    else
    {
    }

    v21 = _swiftEmptyArrayStorage;
    v104 = _swiftEmptyArrayStorage;
LABEL_50:
    if (v21 >> 62)
    {
      v61 = sub_317C0();
    }

    else
    {
      v61 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
    }

    if (!v61)
    {
      v62 = objc_opt_self();
      v63 = sub_31300();
      v64 = [v62 entityForName:v63 inManagedObjectContext:a2];

      if (!v64)
      {
        goto LABEL_99;
      }

      v6 = [objc_allocWithZone(v93) initWithEntity:v64 insertIntoManagedObjectContext:a2];
      v65 = [v96 eventName];
      [v6 setPropertyName:v65];

      [v6 setRecordType:{objc_msgSend(v96, "recordType")}];
      v66 = v6;
      sub_313C0();
      if (*(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v104 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v6 = *(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8));
        sub_31400();
      }

      sub_31410();

      v21 = v104;
    }

    if (v21 >> 62)
    {
      v67 = sub_317C0();
      if (!v67)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v67 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
      if (!v67)
      {
        goto LABEL_98;
      }
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v68 = sub_31700();
      v7 = v96;
    }

    else
    {
      v7 = v96;
      if (!*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_93;
      }

      v68 = *(v21 + 32);
    }

    v69 = [v7 ageToExpire];
    if (v69 != [v68 ageToExpire])
    {
      [v68 setAgeToExpire:{objc_msgSend(v7, "ageToExpire")}];
    }

    v70 = [v7 countLimit];
    if (v70 != [v68 countLimit])
    {
      [v68 setCountLimit:{objc_msgSend(v7, "countLimit")}];
    }

    v71 = [v7 shouldBeSynced];
    if (v71 != [v68 shouldBeSynced])
    {
      [v68 setShouldBeSynced:{objc_msgSend(v7, "shouldBeSynced")}];
    }

    v72 = v67 - 1;
    if (v67 < 1)
    {
      goto LABEL_98;
    }

    if (v67 != 1)
    {
      break;
    }

LABEL_81:
    swift_unknownObjectRelease();

    v52 = v90;
    v6 = v91;
    v51 = v94;
    v7 = 0x6769666E6F434443;
    v21 = v97;
    if (v94 == v91)
    {
      goto LABEL_89;
    }
  }

  v100 = v67;
  while (v67 >= (v72 + 1))
  {
    v73 = sub_C008(v72);
    if (v54[68] != -1)
    {
      swift_once();
    }

    v74 = sub_311B0();
    sub_8BFC(v74, v53);
    v75 = v73;
    v76 = sub_31190();
    v77 = sub_314D0();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = v53;
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v103 = v80;
      *v79 = 136315138;
      v81 = [v75 propertyName];
      if (v81)
      {
        v82 = v81;
        v83 = sub_31320();
        v85 = v84;
      }

      else
      {
        v85 = 0xE300000000000000;
        v83 = 7104878;
      }

      v86 = sub_28BCC(v83, v85, &v103);

      *(v79 + 4) = v86;
      _os_log_impl(&dword_0, v76, v77, "Found erroneous duplicated stored configuration %s.  Deleting", v79, 0xCu);
      sub_9170(v80);

      v53 = v78;
      v54 = &off_42000;
      v67 = v100;
      a2 = v101;
    }

    else
    {
    }

    [a2 deleteObject:v75];

    if (!--v72)
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_89:

  return 0;
}

uint64_t sub_E2F8()
{
  v0 = sub_311B0();
  sub_E37C(v0, qword_434B0);
  sub_8BFC(v0, qword_434B0);
  return sub_311A0();
}

uint64_t *sub_E37C(uint64_t a1, uint64_t *a2)
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

void *sub_E3E0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_317C0();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_2ECF0(v3, 0);
  sub_1941C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t ManagerConfiguration.localStorageDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BMInternalManagerConfiguration_localStorageDirectory;
  v4 = sub_310D0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ManagerConfiguration.__allocating_init(localStorageDirectory:shouldRunUpdatesOnSchedule:shouldPurgeOutdatedData:)(uint64_t a1, char a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR___BMInternalManagerConfiguration_localStorageDirectory;
  v9 = sub_310D0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a1, v9);
  v7[OBJC_IVAR___BMInternalManagerConfiguration_shouldRunUpdatesOnSchedule] = a2;
  v7[OBJC_IVAR___BMInternalManagerConfiguration_shouldPurgeOutdatedData] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  (*(v10 + 8))(a1, v9);
  return v11;
}

id ManagerConfiguration.init(localStorageDirectory:shouldRunUpdatesOnSchedule:shouldPurgeOutdatedData:)(uint64_t a1, char a2, char a3)
{
  v7 = OBJC_IVAR___BMInternalManagerConfiguration_localStorageDirectory;
  v8 = sub_310D0();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  v3[OBJC_IVAR___BMInternalManagerConfiguration_shouldRunUpdatesOnSchedule] = a2;
  v3[OBJC_IVAR___BMInternalManagerConfiguration_shouldPurgeOutdatedData] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for ManagerConfiguration();
  v10 = objc_msgSendSuper2(&v12, "init");
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t type metadata accessor for ManagerConfiguration()
{
  result = qword_42608;
  if (!qword_42608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_E978()
{
  sub_316D0(110);
  v6._countAndFlagsBits = 0xD00000000000002FLL;
  v6._object = 0x8000000000034990;
  sub_31390(v6);
  sub_310D0();
  sub_1C938(&qword_42570, &type metadata accessor for URL);
  v7._countAndFlagsBits = sub_31820();
  sub_31390(v7);

  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v8._object = 0x80000000000349C0;
  sub_31390(v8);
  if (*(v0 + OBJC_IVAR___BMInternalManagerConfiguration_shouldRunUpdatesOnSchedule))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___BMInternalManagerConfiguration_shouldRunUpdatesOnSchedule))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_31390(v1);

  v9._object = 0x80000000000349E0;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  sub_31390(v9);
  if (*(v0 + OBJC_IVAR___BMInternalManagerConfiguration_shouldPurgeOutdatedData))
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___BMInternalManagerConfiguration_shouldPurgeOutdatedData))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v3._object = v4;
  sub_31390(v3);

  return 0;
}

id ManagerConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagerConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *Manager.configuration.getter()
{
  v1 = *(v0 + OBJC_IVAR___BMInternalManager_configuration);
  v2 = v1;
  return v1;
}

_BYTE *Manager.__allocating_init(configuration:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A79C(a1);

  return v4;
}

_BYTE *Manager.init(configuration:)(void *a1)
{
  v2 = sub_1A79C(a1);

  return v2;
}

id Manager.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR___BMInternalManager_scheduledUpdateWorkItem])
  {

    sub_31290();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for Manager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_EE58()
{
  v1 = sub_31200();
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_31240();
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_31210();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B4();
  (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.background(_:), v9);
  v14 = sub_315B0();
  (*(v10 + 8))(v13, v9);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_1B938;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BEC;
  aBlock[3] = &unk_3D3C8;
  v16 = _Block_copy(aBlock);
  v17 = v0;
  sub_31230();
  v22 = &_swiftEmptyArrayStorage;
  sub_1C938(&qword_42660, &type metadata accessor for DispatchWorkItemFlags);
  sub_2294(&qword_42668, &qword_33000);
  sub_B678(&qword_42670, &qword_42668, &qword_33000);
  sub_31690();
  sub_31590();
  _Block_release(v16);

  (*(v21 + 8))(v4, v1);
  (*(v5 + 8))(v8, v20);
}

uint64_t sub_F1F4()
{
  v1 = sub_2294(&qword_42590, &unk_32ED0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = *(v0 + OBJC_IVAR___BMInternalManager_collector);
  swift_beginAccess();
  v6 = *(v5 + 32);

  v8 = sub_E3E0(v7);
  v9 = sub_31480();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v8;
  *(v10 + 40) = xmmword_32EC0;
  *(v10 + 56) = sub_F33C;
  *(v10 + 64) = 0;
  sub_10C5C(0, 0, v4, &unk_32EE0, v10);
}

void sub_F33C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v1 = sub_311B0();
    sub_8BFC(v1, qword_434B0);
    oslog = sub_31190();
    v2 = sub_314D0();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v13 = v4;
      *v3 = 136315138;
      sub_1C5A8();
      v5 = sub_318A0();
      v7 = sub_28BCC(v5, v6, &v13);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_0, oslog, v2, "Error from completion: %s", v3, 0xCu);
      sub_9170(v4);

LABEL_10:
    }
  }

  else
  {
    v8 = *a1;
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v9 = sub_311B0();
    sub_8BFC(v9, qword_434B0);

    oslog = sub_31190();
    v10 = sub_314D0();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(v8 + 16);
      sub_1C59C(v8, 0);
      _os_log_impl(&dword_0, oslog, v10, "received properties for submit: %ld", v11, 0xCu);
      goto LABEL_10;
    }

    sub_1C59C(v8, 0);
  }
}

uint64_t sub_F810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*(v4 + OBJC_IVAR___BMInternalManager_localStorage) + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  os_unfair_lock_lock(v9 + 4);
  sub_1AE34(&v14);
  os_unfair_lock_unlock(v9 + 4);
  v10 = v14;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;

  sub_2C458(v10, sub_1AED0, v12);
}

uint64_t sub_F96C(void (*a1)(uint64_t *))
{
  v2 = sub_2294(&unk_425A0, &unk_32EE8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v19 - v4);
  v6 = sub_2294(&qword_42490, &qword_32CB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  v10 = sub_31180();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() standardUserDefaults];
  sub_FC30(v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_B5AC(v9, &qword_42490, &qword_32CB0);
    sub_8C34();
    v16 = swift_allocError();
    *v17 = 1;
    *v5 = v16;
    swift_storeEnumTagMultiPayload();
    a1(v5);
    return sub_B5AC(v5, &unk_425A0, &unk_32EE8);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    (*(v11 + 16))(v5, v14, v10);
    swift_storeEnumTagMultiPayload();
    a1(v5);
    sub_B5AC(v5, &unk_425A0, &unk_32EE8);
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_FC30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_31300();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_31680();
    swift_unknownObjectRelease();
    sub_B5AC(v9, &qword_42260, &qword_32880);
    v5 = sub_31300();
    [v1 doubleForKey:v5];

    sub_31100();
    v6 = 0;
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    sub_B5AC(v9, &qword_42260, &qword_32880);
    v6 = 1;
  }

  v7 = sub_31180();
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

uint64_t sub_FD8C(uint64_t a1, uint64_t (*a2)(void, void))
{
  v4 = sub_2294(&qword_42490, &qword_32CB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_31180();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a1, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  sub_FED8(v7);

  return a2(0, 0);
}

uint64_t sub_FED8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2294(&qword_42490, &qword_32CB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - v6;
  sub_B488(a1, v14 - v6, &qword_42490, &qword_32CB0);
  v8 = sub_31180();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_B5AC(v7, &qword_42490, &qword_32CB0);
    v10 = 0;
  }

  else
  {
    sub_31110();
    v14[1] = v11;
    (*(v9 + 8))(v7, v8);
    v10 = sub_31840();
  }

  v12 = sub_31300();
  [v2 setObject:v10 forKey:v12];
  swift_unknownObjectRelease();

  return sub_B5AC(a1, &qword_42490, &qword_32CB0);
}

void sub_10088(void *a1, uint64_t a2)
{
  swift_getObjectType();

  sub_199D0(a1, a2, v2);
}

uint64_t Manager.register(donor:)(void *a1)
{
  v3 = v1;
  v5 = *(v1 + OBJC_IVAR___BMInternalManager_collector);
  result = sub_27214(a1);
  if (!v2)
  {
    [a1 addDonorObserver:v3];
    return sub_101A0(a1);
  }

  return result;
}

uint64_t sub_101A0(void *a1)
{
  v2 = v1;
  v4 = sub_2294(&qword_42590, &unk_32ED0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = [a1 eventConfigurations];
  type metadata accessor for BasePropertyConfiguration();
  v9 = sub_313E0();

  v27 = &_swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)); i; i = sub_317C0())
  {
    v25 = v7;
    v26 = v2;
    v11 = 0;
    v2 = &OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = sub_31700();
      }

      else
      {
        if (v11 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v7 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (*(v12 + OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached))
      {
        sub_31740();
        v13 = v27[2];
        sub_31770();
        sub_31780();
        sub_31750();
      }

      else
      {
      }

      ++v11;
      if (v7 == i)
      {
        v2 = v26;
        v14 = v27;
        v7 = v25;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v14 = &_swiftEmptyArrayStorage;
LABEL_18:

  if (qword_42220 != -1)
  {
    swift_once();
  }

  v15 = sub_311B0();
  sub_8BFC(v15, qword_434B0);
  v16 = sub_31190();
  v17 = sub_314E0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_28BCC(0xD000000000000021, 0x8000000000034C80, &v27);
    _os_log_impl(&dword_0, v16, v17, "Manager - %s", v18, 0xCu);
    sub_9170(v19);
  }

  v20 = sub_31480();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v2;
  v21[5] = v14;
  v22 = v2;
  sub_10C5C(0, 0, v7, &unk_33108, v21);
}

void *Manager.donor(type:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___BMInternalManager_collector);
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (v6 >> 62)
  {
LABEL_23:
    v7 = sub_317C0();
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  if (v7)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_31700();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_23;
        }

        v9 = *(v6 + 8 * v8 + 32);
        swift_unknownObjectRetain();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_17;
        }
      }

      v11 = [v9 type];
      v12 = sub_31320();
      v14 = v13;

      if (v12 == a1 && v14 == a2)
      {

LABEL_20:

        return v9;
      }

      v16 = sub_31850();

      if (v16)
      {
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
      ++v8;
    }

    while (v10 != v7);
  }

  return 0;
}

uint64_t sub_106AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return _swift_task_switch(sub_106CC, 0, 0);
}

uint64_t sub_106CC()
{
  v1 = v0[7];
  v2 = *(v0[6] + OBJC_IVAR___BMInternalManager_localStorage);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[7];
    }

    v8 = v0[7];

    sub_2294(&qword_426E0, &qword_330C8);
    v4 = sub_317B0();
  }

  else
  {
    v3 = v0[7];

    sub_31860();
    v4 = v0[7];
  }

  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_107DC;

  return sub_25CCC(v4);
}

uint64_t sub_107DC(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return _swift_task_switch(sub_10900, 0, 0);
}

uint64_t sub_10900()
{
  v18 = v0;
  if (*(v0 + 88))
  {
    v1 = *(v0 + 80);
    if (qword_42220 != -1)
    {
      swift_once();
      v1 = *(v0 + 80);
    }

    v2 = sub_311B0();
    sub_8BFC(v2, qword_434B0);
    swift_errorRetain();
    v3 = sub_31190();
    v4 = sub_314D0();
    sub_1C704(v1, 1);
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 80);
    if (v5)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v10 = *(v0 + 16);
      v9 = *(v0 + 24);
      v11 = *(v0 + 32);
      v12 = sub_318A0();
      v14 = sub_28BCC(v12, v13, &v17);

      *(v7 + 4) = v14;
      _os_log_impl(&dword_0, v3, v4, "Error storing cached updated configurations %s", v7, 0xCu);
      sub_9170(v8);

      sub_1C704(v6, 1);
    }

    else
    {

      sub_1C704(v6, 1);
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

void *sub_10ADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_19250(0, v1, 0);
    v3 = (a1 + 80);
    do
    {
      v4 = *(v3 - 5);
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v8 = *(v3 - 2);
      v7 = *(v3 - 1);
      v9 = *v3;
      v10 = *(v3 - 6);
      sub_1BBC8(v4, v5, v6, v8, v7, v9);
      sub_2294(&qword_426B0, &qword_334C0);
      sub_2294(&qword_426B8, &qword_330A0);
      swift_dynamicCast();
      v11 = v18;
      v12 = v19;
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_19250((v13 > 1), v14 + 1, 1);
        v12 = v19;
        v11 = v18;
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[7 * v14];
      v15[4] = v17;
      v3 += 56;
      *(v15 + 5) = v11;
      *(v15 + 7) = v12;
      v15[9] = v20;
      *(v15 + 80) = v21;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2294(&qword_42590, &unk_32ED0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_B488(a3, v27 - v11, &qword_42590, &unk_32ED0);
  v13 = sub_31480();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_B5AC(v12, &qword_42590, &unk_32ED0);
  }

  else
  {
    sub_31470();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_31420();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_31350() + 32;
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

      sub_B5AC(a3, &qword_42590, &unk_32ED0);

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

  sub_B5AC(a3, &qword_42590, &unk_32ED0);
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

void Manager.propertyDidChange(_:propertyConfiguration:)(void *a1, void *a2)
{
  if (*(a2 + OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached) == 1)
  {
    v4 = sub_31300();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    v9[4] = sub_1AF60;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_11248;
    v9[3] = &unk_3D198;
    v7 = _Block_copy(v9);
    v8 = a2;

    [a1 donateWithConfiguration:v8 context:v4 donationCompleteBlock:v7];
    _Block_release(v7);
  }
}

void sub_110AC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue;
      v8 = *(a1 + OBJC_IVAR____TtC19EngagementCollector15BMPropertyValue_propertyValue);
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      v11 = *(v7 + 24);
      v12 = *(v7 + 32);
      v13 = *(v7 + 40);
      sub_2294(&qword_426F8, &unk_330E0);
      v14 = (sub_2294(&unk_42700, &qword_32CD0) - 8);
      v15 = *(*v14 + 72);
      v19 = a3;
      v16 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_32E20;
      v18 = v17 + v16 + v14[14];
      sub_1BBC8(v8, v9, v10, v11, v12, v13);
      sub_31170();
      *v18 = v8;
      *(v18 + 8) = v9;
      *(v18 + 16) = v10;
      *(v18 + 24) = v11;
      *(v18 + 32) = v12;
      *(v18 + 40) = v13;
      sub_19654(v19, v17, v6);
    }

    else
    {
    }
  }
}

void sub_11248(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t Manager.updateLocalStorage(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_2294(&qword_42590, &unk_32ED0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = *(v2 + OBJC_IVAR___BMInternalManager_collector);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v10;
  swift_beginAccess();
  v12 = *(v9 + 32);

  v14 = sub_E3E0(v13);
  v15 = sub_31480();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = 0xD000000000000012;
  v16[6] = 0x8000000000034970;
  v16[7] = sub_1AF84;
  v16[8] = v11;
  sub_10C5C(0, 0, v8, &unk_32EF8, v16);
}

uint64_t sub_1151C(uint64_t a1, int64_t a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v13 = qword_42220;
    v44 = *a1;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_311B0();
    sub_8BFC(v14, qword_434B0);

    v15 = sub_31190();
    v16 = sub_314C0();
    v34 = a2;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *(v44 + 16);
      sub_1C59C(v44, 0);
      _os_log_impl(&dword_0, v15, v16, "Received properties for local storage: %ld", v17, 0xCu);
    }

    else
    {
      sub_1C59C(v44, 0);
    }

    v18 = 1 << *(v44 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v44 + 64);
    swift_beginAccess();
    a2 = 0;
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
LABEL_21:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v24 = v23 | (a2 << 6);
      v25 = *(*(v44 + 48) + 8 * v24);
      if (*(v25 + OBJC_IVAR___BMBasePropertyConfiguration_shouldBeCached))
      {
        v26 = *(v44 + 56) + 48 * v24;
        v37 = *v26;
        v40 = *(v26 + 16);
        v42 = *(v26 + 24);
        v43 = *(v26 + 8);
        v27 = *(v26 + 32);
        v41 = *(v26 + 40);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v36 = Strong;
          sub_2294(&qword_426F8, &unk_330E0);
          v29 = (sub_2294(&unk_42700, &qword_32CD0) - 8);
          v30 = *(*v29 + 72);
          v38 = v27;
          v31 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_32E20;
          v32 = v39 + v31 + v29[14];
          v35 = v25;
          sub_1BBC8(v37, v43, v40, v42, v38, v41);
          sub_31170();
          *v32 = v37;
          *(v32 + 8) = v43;
          *(v32 + 16) = v40;
          *(v32 + 24) = v42;
          *(v32 + 32) = v38;
          *(v32 + 40) = v41;
          v33 = v35;
          sub_1BBC8(v37, v43, v40, v42, v38, v41);
          sub_19654(v33, v39, v36);

          sub_8C88(v37, v43, v40, v42, v38, v41);
        }
      }
    }

    while (1)
    {
      v22 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if (v22 >= v21)
      {

        return v34(0, 0);
      }

      v20 = *(v44 + 64 + 8 * v22);
      ++a2;
      if (v20)
      {
        a2 = v22;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  if (qword_42220 != -1)
  {
LABEL_26:
    swift_once();
  }

  v3 = sub_311B0();
  sub_8BFC(v3, qword_434B0);
  v4 = sub_31190();
  v5 = sub_314D0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45 = v7;
    *v6 = 136315138;
    sub_1C5A8();
    v8 = sub_318A0();
    v10 = sub_28BCC(v8, v9, &v45);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "Error from completion: %s", v6, 0xCu);
    sub_9170(v7);
  }

  sub_1C5A8();
  v11 = swift_allocError();
  (a2)(v11, 1);
}

void sub_11A7C(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    if (qword_42220 != -1)
    {
      swift_once();
    }

    v5 = sub_311B0();
    sub_8BFC(v5, qword_434B0);
    swift_unknownObjectRetain();
    sub_1C6F8(a1, 1);
    oslog = sub_31190();
    v6 = sub_314D0();
    swift_unknownObjectRelease();
    sub_1C704(a1, 1);
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v7 = 136315394;
      v8 = [a3 eventName];
      v9 = sub_31320();
      v11 = v10;

      v12 = sub_28BCC(v9, v11, &v17);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      swift_getErrorValue();
      v13 = sub_318A0();
      v15 = sub_28BCC(v13, v14, &v17);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_0, oslog, v6, "Property values for %s could not get saved: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall Manager.forcePurgeLocalStorage()()
{
  v1 = *(v0 + OBJC_IVAR___BMInternalManager_localStorage);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = sub_1B160;
  v3[4] = v2;
  v4 = *(v1 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  swift_retain_n();

  os_unfair_lock_lock(v4 + 4);
  sub_1CB04(&v6);
  os_unfair_lock_unlock(v4 + 4);
  v5 = v6;
  sub_2C458(v6, sub_1B16C, v3);

  sub_2CF28();
}

uint64_t sub_11DD0()
{
  v1 = sub_31270();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = sub_31200();
  v10 = *(*(v9 - 8) + 64);
  result = __chkstk_darwin(v9);
  if (*(v0 + OBJC_IVAR___BMInternalManager_shouldScheduleUpdates) == 1)
  {
    v12 = swift_allocObject();
    v26 = v2;
    v13 = v12;
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1C980;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23BEC;
    aBlock[3] = &unk_3DA30;
    v24 = _Block_copy(aBlock);
    v27 = &_swiftEmptyArrayStorage;
    sub_1C938(&qword_42660, &type metadata accessor for DispatchWorkItemFlags);

    sub_2294(&qword_42668, &qword_33000);
    v25 = v1;
    sub_B678(&qword_42670, &qword_42668, &qword_33000);
    v14 = v0;
    sub_31690();
    v15 = sub_312A0();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = sub_31280();

    v19 = *(v0 + OBJC_IVAR___BMInternalManager_scheduledUpdateWorkItem);
    *(v14 + OBJC_IVAR___BMInternalManager_scheduledUpdateWorkItem) = v18;

    v20 = *(v14 + OBJC_IVAR___BMInternalManager_managerQueue);
    sub_31260();
    sub_312B0();
    v21 = *(v26 + 8);
    v22 = v6;
    v23 = v25;
    v21(v22, v25);
    sub_31540();

    return (v21)(v8, v23);
  }

  return result;
}

void sub_1211C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_12170();
  }
}

uint64_t sub_12170()
{
  v1 = v0;
  v2 = sub_2294(&qword_42590, &unk_32ED0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v1 + OBJC_IVAR___BMInternalManager_collector);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = sub_1C988;
  v9[3] = v6;
  v9[4] = v8;
  swift_beginAccess();
  v10 = *(v7 + 32);
  swift_retain_n();

  v12 = sub_E3E0(v11);
  v13 = sub_31480();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = 0xD000000000000012;
  v14[6] = 0x8000000000034970;
  v14[7] = sub_1CAD4;
  v14[8] = v9;

  sub_10C5C(0, 0, v5, &unk_33160, v14);
}

void sub_123A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_11DD0();
  }
}

void Manager.getAllConfigurations(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___BMInternalManager_localStorage);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = sub_1CB00;
  v7[4] = v6;
  v8 = *(v5 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);

  os_unfair_lock_lock(v8 + 4);
  sub_1CB04(&v10);
  os_unfair_lock_unlock(v8 + 4);
  v9 = v10;
  sub_2C458(v10, sub_1CB28, v7);
}

uint64_t sub_1253C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_2294(&qword_425B8, &qword_32F10);
  *v4 = v0;
  v4[1] = sub_12644;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000016, 0x8000000000034A90, sub_1B178, v2, v5);
}

uint64_t sub_12644()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1CB24, 0, 0);
}

void sub_1275C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2294(&qword_426F0, &qword_330D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16[-v7];
  (*(v5 + 16))(&v16[-v7], a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(a2 + OBJC_IVAR___BMInternalManager_localStorage);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C510;
  *(v12 + 24) = v10;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = sub_1CB00;
  v13[4] = v12;
  v14 = *(v11 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v17 = sub_1CAE4;
  v18 = v11;

  os_unfair_lock_lock(v14 + 4);
  sub_1CB04(&v19);
  os_unfair_lock_unlock(v14 + 4);
  v15 = v19;
  sub_2C458(v19, sub_1CB28, v13);
}

void Manager.getProperties(config:assetIDs:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  sub_1A388(a1, a2, a3, a4, v4);
}

uint64_t sub_129EC(uint64_t a1, uint64_t (*a2)(void *))
{
  if (*(a1 + 41))
  {
    return a2(_swiftEmptyArrayStorage);
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *a1;
  v9 = *(a1 + 40);
  sub_2294(&qword_426A0, &qword_33038);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_32E20;
  *(v11 + 32) = v8;
  *(v11 + 40) = *(a1 + 8);
  *(v11 + 56) = *(a1 + 24);
  *(v11 + 72) = *(a1 + 40);
  sub_1BBC8(v8, v7, v6, v5, v4, v9);
  a2(v11);
}

uint64_t Manager.getProperties(config:assetIDs:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_12B28, 0, 0);
}

uint64_t sub_12B28()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = sub_2294(&qword_425C0, &qword_32F20);
  *v6 = v0;
  v6[1] = sub_12C40;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000001FLL, 0x8000000000034AB0, sub_1B180, v4, v7);
}

uint64_t sub_12C40()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1CB24, 0, 0);
}

uint64_t sub_12D58(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_2294(&unk_42690, &unk_33028);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  swift_getObjectType();
  sub_1A388(a3, a4, sub_1C334, v14, a2);
}

uint64_t sub_12EC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  sub_2294(a3, a4);
  return sub_31440();
}

uint64_t Manager.getProperties(configs:assetIDs:sortByCreatedAt:limit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 80) = a3;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  return _swift_task_switch(sub_12F4C, 0, 0);
}

uint64_t sub_12F4C()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
LABEL_35:
    v2 = sub_317C0();
    v40 = v0;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v43 = v1 & 0xFFFFFFFFFFFFFF8;
      v44 = v1 & 0xC000000000000001;
      v4 = &_swiftEmptyDictionarySingleton;
      v41 = v2;
      v42 = *(v0 + 24) + 32;
      p_type = &stru_40FF0.type;
      while (1)
      {
        if (v44)
        {
          v27 = *(v40 + 24);
          v8 = sub_31700();
          v9 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v3 >= *(v43 + 16))
          {
            goto LABEL_32;
          }

          v8 = *(v42 + 8 * v3);
          swift_unknownObjectRetain();
          v9 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }
        }

        v10 = [v8 p_type[43]];
        if (v4[2] && (v11 = sub_170CC(v10), (v12 & 1) != 0))
        {
          v45 = *(v4[7] + 8 * v11);
        }

        else
        {
          v45 = &_swiftEmptyArrayStorage;
        }

        v13 = [v8 toBaseConfiguration];
        sub_313C0();
        if (*(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v45 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v28 = *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8));
          sub_31400();
        }

        sub_31410();
        v0 = v45;
        v14 = p_type;
        v15 = [v8 p_type[43]];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v4;
        v1 = v4;
        v17 = sub_170CC(v15);
        v19 = v4[2];
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          goto LABEL_33;
        }

        v23 = v18;
        if (v4[3] < v22)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        v1 = &v47;
        v29 = v17;
        sub_18A84();
        v17 = v29;
        v4 = v47;
        if (v23)
        {
LABEL_4:
          v6 = v4[7];
          v7 = *(v6 + 8 * v17);
          *(v6 + 8 * v17) = v45;

          swift_unknownObjectRelease();
          goto LABEL_5;
        }

LABEL_21:
        v4[(v17 >> 6) + 8] |= 1 << v17;
        *(v4[6] + 8 * v17) = v15;
        *(v4[7] + 8 * v17) = v45;
        swift_unknownObjectRelease();
        v25 = v4[2];
        v21 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v21)
        {
          goto LABEL_34;
        }

        v4[2] = v26;
LABEL_5:
        ++v3;
        p_type = v14;
        if (v9 == v41)
        {
          goto LABEL_37;
        }
      }

      sub_17B9C(v22, isUniquelyReferenced_nonNull_native);
      v4 = v47;
      v1 = v47;
      v17 = sub_170CC(v15);
      if ((v23 & 1) != (v24 & 1))
      {

        return sub_31890();
      }

LABEL_20:
      if (v23)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  v4 = &_swiftEmptyDictionarySingleton;
LABEL_37:
  *(v40 + 56) = v4;
  v31 = *(v40 + 40);
  v32 = *(v40 + 80);
  v33 = *(v40 + 32);
  v34 = *(*(v40 + 48) + OBJC_IVAR___BMInternalManager_localStorage);
  v35 = sub_2294(&qword_425C8, &qword_32F30);
  v36 = swift_task_alloc();
  *(v40 + 64) = v36;
  *(v36 + 16) = v4;
  *(v36 + 24) = v34;
  *(v36 + 32) = v33;
  *(v36 + 40) = v32;
  *(v36 + 48) = v31;
  v37 = sub_2294(&qword_425D0, &qword_32F48);
  v38 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v39 = swift_task_alloc();
  *(v40 + 72) = v39;
  *v39 = v40;
  v39[1] = sub_1337C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v40 + 16, v35, v37, 0, 0, &unk_32F40, v36, v35);
}

uint64_t sub_1337C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return _swift_task_switch(sub_1CB24, 0, 0);
}

uint64_t sub_134B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 328) = a6;
  *(v7 + 224) = a5;
  *(v7 + 232) = a7;
  *(v7 + 208) = a3;
  *(v7 + 216) = a4;
  *(v7 + 192) = a1;
  *(v7 + 200) = a2;
  v8 = *(*(sub_2294(&qword_42590, &unk_32ED0) - 8) + 64) + 15;
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  v9 = sub_2294(&qword_426A8, &qword_33040);
  *(v7 + 288) = v9;
  v10 = *(v9 - 8);
  *(v7 + 296) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_135FC, 0, 0);
}

uint64_t sub_135FC()
{
  v94 = v0 + 10;
  v95 = v0 + 6;
  v88 = *(v0 + 328);
  v1 = v0[26];
  v2 = v1 + 64;
  v86 = v0 + 2;
  v87 = v0[28];
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;

  v11 = 0;
  v90 = v1 + 64;
  v91 = v1;
  v89 = v6;
  v104 = v0;
  while (v5)
  {
LABEL_11:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = (v11 << 9) | (8 * v13);
    v15 = *(*(v1 + 48) + v14);
    v16 = *(*(v1 + 56) + v14);
    v105 = v16;
    if (v15)
    {
      if (v15 == 1)
      {
        if (v16 >> 62)
        {
          v76 = v11;
          v7 = sub_317C0();
          v11 = v76;
          v30 = v7;
          if (v7)
          {
LABEL_19:
            if (v30 < 1)
            {
              goto LABEL_63;
            }

            v92 = v11;
            v93 = v5;
            v96 = v16 & 0xC000000000000001;
            v98 = *v0[25];

            v31 = 0;
            v100 = v30;
            do
            {
              v102 = v31;
              if (v96)
              {
                v33 = sub_31700();
              }

              else
              {
                v33 = *(v16 + 8 * v31 + 32);
              }

              v34 = v33;
              v36 = v0[32];
              v35 = v0[33];
              v37 = v0[27];
              v38 = sub_31480();
              v39 = *(v38 - 8);
              (*(v39 + 56))(v35, 1, 1, v38);
              v40 = swift_allocObject();
              v40[2] = 0;
              v41 = v40 + 2;
              v40[3] = 0;
              v40[4] = v37;
              v40[5] = v34;
              sub_B488(v35, v36, &qword_42590, &unk_32ED0);
              LODWORD(v35) = (*(v39 + 48))(v36, 1, v38);

              v42 = v34;
              v43 = v0[32];
              if (v35 == 1)
              {
                sub_B5AC(v0[32], &qword_42590, &unk_32ED0);
              }

              else
              {
                sub_31470();
                (*(v39 + 8))(v43, v38);
              }

              v0 = v104;
              if (*v41)
              {
                v44 = v40[3];
                v45 = *v41;
                swift_getObjectType();
                swift_unknownObjectRetain();
                v46 = sub_31420();
                v48 = v47;
                swift_unknownObjectRelease();
              }

              else
              {
                v46 = 0;
                v48 = 0;
              }

              v49 = swift_allocObject();
              *(v49 + 16) = &unk_33070;
              *(v49 + 24) = v40;

              sub_2294(&qword_425C8, &qword_32F30);
              v50 = (v48 | v46);
              if (v48 | v46)
              {
                v50 = v95;
                *v95 = 0;
                v95[1] = 0;
                v104[8] = v46;
                v104[9] = v48;
              }

              v16 = v105;
              v31 = v102 + 1;
              v32 = v104[33];
              v104[17] = 1;
              v104[18] = v50;
              v104[19] = v98;
              swift_task_create();

              sub_B5AC(v32, &qword_42590, &unk_32ED0);
            }

            while (v100 != v102 + 1);
LABEL_4:

            goto LABEL_5;
          }
        }

        else
        {
          v30 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
          if (v30)
          {
            goto LABEL_19;
          }
        }
      }

      else if (v15 == 2)
      {
        v92 = v11;
        v93 = v5;
        v17 = v0[31];
        v106 = v0[30];
        v19 = v0[28];
        v18 = v0[29];
        v20 = v0[27];
        v21 = sub_31480();
        v22 = *(v21 - 8);
        (*(v22 + 56))(v17, 1, 1, v21);
        v23 = swift_allocObject();
        *(v23 + 16) = 0;
        v24 = (v23 + 16);
        *(v23 + 24) = 0;
        *(v23 + 32) = v20;
        *(v23 + 40) = v16;
        *(v23 + 48) = v19;
        *(v23 + 56) = v88;
        *(v23 + 64) = v18;
        sub_B488(v17, v106, &qword_42590, &unk_32ED0);
        LODWORD(v17) = (*(v22 + 48))(v106, 1, v21);

        v25 = v0[30];
        if (v17 == 1)
        {
          sub_B5AC(v0[30], &qword_42590, &unk_32ED0);
          if (!*v24)
          {
            goto LABEL_50;
          }
        }

        else
        {
          sub_31470();
          (*(v22 + 8))(v25, v21);
          if (!*v24)
          {
LABEL_50:
            v27 = 0;
            v29 = 0;
            goto LABEL_51;
          }
        }

        v26 = *(v23 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v27 = sub_31420();
        v29 = v28;
        swift_unknownObjectRelease();
LABEL_51:
        v72 = *v0[25];
        v73 = swift_allocObject();
        *(v73 + 16) = &unk_33050;
        *(v73 + 24) = v23;

        sub_2294(&qword_425C8, &qword_32F30);
        v74 = (v29 | v27);
        if (v29 | v27)
        {
          v74 = v86;
          *v86 = 0;
          v86[1] = 0;
          v0[4] = v27;
          v0[5] = v29;
        }

        v75 = v0[31];
        v0[14] = 1;
        v0[15] = v74;
        v0[16] = v72;
        swift_task_create();

        v7 = sub_B5AC(v75, &qword_42590, &unk_32ED0);
LABEL_5:
        v2 = v90;
        v1 = v91;
        v6 = v89;
        v11 = v92;
        v5 = v93;
      }
    }

    else if (v16 >> 62)
    {
      v77 = v11;
      v7 = sub_317C0();
      v11 = v77;
      v51 = v7;
      if (v7)
      {
LABEL_35:
        if (v51 < 1)
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          return TaskGroup.Iterator.next(isolation:)(v7, v8, v9, v10);
        }

        v92 = v11;
        v93 = v5;
        v97 = v16 & 0xC000000000000001;
        v99 = *v0[25];

        v52 = 0;
        v101 = v51;
        do
        {
          v103 = v52;
          if (v97)
          {
            v54 = sub_31700();
          }

          else
          {
            v54 = *(v16 + 8 * v52 + 32);
          }

          v55 = v54;
          v57 = v0[34];
          v56 = v0[35];
          v58 = v0[27];
          v59 = sub_31480();
          v60 = *(v59 - 8);
          (*(v60 + 56))(v56, 1, 1, v59);
          v61 = swift_allocObject();
          v61[2] = 0;
          v62 = v61 + 2;
          v61[3] = 0;
          v61[4] = v58;
          v61[5] = v55;
          sub_B488(v56, v57, &qword_42590, &unk_32ED0);
          LODWORD(v56) = (*(v60 + 48))(v57, 1, v59);

          v63 = v55;
          v64 = v0[34];
          if (v56 == 1)
          {
            sub_B5AC(v0[34], &qword_42590, &unk_32ED0);
          }

          else
          {
            sub_31470();
            (*(v60 + 8))(v64, v59);
          }

          v0 = v104;
          if (*v62)
          {
            v65 = v61[3];
            v66 = *v62;
            swift_getObjectType();
            swift_unknownObjectRetain();
            v67 = sub_31420();
            v69 = v68;
            swift_unknownObjectRelease();
          }

          else
          {
            v67 = 0;
            v69 = 0;
          }

          v70 = swift_allocObject();
          *(v70 + 16) = &unk_33088;
          *(v70 + 24) = v61;

          sub_2294(&qword_425C8, &qword_32F30);
          v71 = (v69 | v67);
          if (v69 | v67)
          {
            v71 = v94;
            *v94 = 0;
            v94[1] = 0;
            v104[12] = v67;
            v104[13] = v69;
          }

          v16 = v105;
          v52 = v103 + 1;
          v53 = v104[35];
          v104[20] = 1;
          v104[21] = v71;
          v104[22] = v99;
          swift_task_create();

          sub_B5AC(v53, &qword_42590, &unk_32ED0);
        }

        while (v101 != v103 + 1);
        goto LABEL_4;
      }
    }

    else
    {
      v51 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
      if (v51)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v12 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v12);
    ++v11;
    if (v5)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  v78 = v0[38];
  v80 = v0[25];
  v79 = v0[26];

  v81 = *v80;
  sub_2294(&qword_425C8, &qword_32F30);
  sub_31450();
  v0[39] = _swiftEmptyArrayStorage;
  v82 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v83 = swift_task_alloc();
  v0[40] = v83;
  *v83 = v0;
  v83[1] = sub_14054;
  v84 = v0[38];
  v10 = v0[36];
  v7 = (v0 + 23);
  v8 = 0;
  v9 = 0;

  return TaskGroup.Iterator.next(isolation:)(v7, v8, v9, v10);
}

uint64_t sub_14054()
{
  v1 = *(*v0 + 320);
  v3 = *v0;

  return _swift_task_switch(sub_14150, 0, 0);
}

uint64_t sub_14150(void *isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[23];
  v6 = v4[39];
  if (v5)
  {
    v7 = *(v5 + 16);
    v8 = *(v6 + 16);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      __break(1u);
    }

    else
    {
      v10 = v4[39];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v4[39];
      if (isUniquelyReferenced_nonNull_native && v9 <= v11[3] >> 1)
      {
        if (*(v5 + 16))
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v8 <= v9)
        {
          v24 = v8 + v7;
        }

        else
        {
          v24 = v8;
        }

        isUniquelyReferenced_nonNull_native = sub_2EAFC(isUniquelyReferenced_nonNull_native, v24, 1, v4[39]);
        v11 = isUniquelyReferenced_nonNull_native;
        if (*(v5 + 16))
        {
LABEL_6:
          if ((v11[3] >> 1) - v11[2] >= v7)
          {
            sub_2294(&qword_426B0, &qword_334C0);
            swift_arrayInitWithCopy();

            if (!v7)
            {
              goto LABEL_18;
            }

            v12 = v11[2];
            v13 = __OFADD__(v12, v7);
            v14 = v12 + v7;
            if (!v13)
            {
              v11[2] = v14;
              goto LABEL_18;
            }

LABEL_24:
            __break(1u);
            return TaskGroup.Iterator.next(isolation:)(isUniquelyReferenced_nonNull_native, a2, a3, a4);
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      if (!v7)
      {
LABEL_18:
        v4[39] = v11;
        v25 = *(&async function pointer to TaskGroup.Iterator.next(isolation:) + 1);
        v26 = swift_task_alloc();
        v4[40] = v26;
        *v26 = v4;
        v26[1] = sub_14054;
        v27 = v4[38];
        a4 = v4[36];
        isUniquelyReferenced_nonNull_native = v4 + 23;
        a2 = 0;
        a3 = 0;

        return TaskGroup.Iterator.next(isolation:)(isUniquelyReferenced_nonNull_native, a2, a3, a4);
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v15 = v4[35];
  v17 = v4[33];
  v16 = v4[34];
  v19 = v4[31];
  v18 = v4[32];
  v28 = v4[30];
  v20 = v4[24];
  (*(v4[37] + 8))(v4[38], v4[36]);
  v21 = sub_10ADC(v6);

  *v20 = v21;

  v22 = v4[1];

  return v22();
}

uint64_t sub_143C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_143E4, 0, 0);
}

uint64_t sub_143E4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_2294(&qword_425C8, &qword_32F30);
  *v3 = v0;
  v3[1] = sub_1CA24;
  v5 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000036, 0x8000000000034C40, sub_1C0AC, v1, v4);
}

void sub_144EC(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_2294(&qword_426C8, &qword_330B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  v12 = *&a3[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  v11 = *&a3[OBJC_IVAR___BMBasePropertyConfiguration_eventName + 8];
  (*(v7 + 16))(&v19[-v9], a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v11;
  v15[4] = a2;
  v15[5] = sub_1CAE0;
  v15[6] = v14;
  v16 = *(a2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v20 = sub_1CAE4;
  v21 = a2;
  v17 = a3;

  os_unfair_lock_lock(v16 + 4);
  sub_1CB04(&v22);
  os_unfair_lock_unlock(v16 + 4);
  v18 = v22;
  sub_2C458(v22, sub_1CA90, v15);
}

uint64_t sub_1470C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return _swift_task_switch(sub_14730, 0, 0);
}

uint64_t sub_14730()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_2294(&qword_425C8, &qword_32F30);
  *v3 = v0;
  v3[1] = sub_14838;
  v5 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000036, 0x8000000000034C40, sub_1C0B8, v1, v4);
}

uint64_t sub_14838()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_14948(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_2294(&qword_426C8, &qword_330B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  v12 = *&a3[OBJC_IVAR___BMBasePropertyConfiguration_eventName];
  v11 = *&a3[OBJC_IVAR___BMBasePropertyConfiguration_eventName + 8];
  (*(v7 + 16))(&v19[-v9], a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v11;
  v15[4] = a2;
  v15[5] = sub_1C168;
  v15[6] = v14;
  v16 = *(a2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v20 = sub_1CAE4;
  v21 = a2;
  v17 = a3;

  os_unfair_lock_lock(v16 + 4);
  sub_1CB04(&v22);
  os_unfair_lock_unlock(v16 + 4);
  v18 = v22;
  sub_2C458(v22, sub_1CA9C, v15);
}

uint64_t sub_14B68(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 41))
  {
    v10[0] = _swiftEmptyArrayStorage;
    sub_2294(&qword_426C8, &qword_330B0);
  }

  else
  {
    v4 = *a1;
    sub_2294(&qword_426D0, &qword_330B8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_32E20;
    *(v6 + 32) = a3;
    *(v6 + 40) = v4;
    v7 = *(a1 + 24);
    *(v6 + 48) = *(a1 + 8);
    *(v6 + 64) = v7;
    *(v6 + 80) = *(a1 + 40);
    v10[6] = v6;
    sub_B488(a1, v10, &qword_426D8, &qword_330C0);
    v8 = a3;
    sub_2294(&qword_426C8, &qword_330B0);
  }

  return sub_31440();
}

uint64_t sub_14C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 72) = a7;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a1;
  return _swift_task_switch(sub_14C90, 0, 0);
}

uint64_t sub_14C90()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 24);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  v7 = sub_2294(&qword_425C8, &qword_32F30);
  *v6 = v0;
  v6[1] = sub_14DB4;
  v8 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD000000000000036, 0x8000000000034C40, sub_1C208, v4, v7);
}

uint64_t sub_14DB4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_14EC4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v23 = a6;
  v11 = sub_2294(&qword_426C8, &qword_330B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;

  if (a3 >> 62)
  {
    sub_2294(&qword_426E0, &qword_330C8);
    v21 = sub_317B0();

    a3 = v21;
  }

  else
  {
    sub_31860();
  }

  (*(v12 + 16))(v15, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5 & 1;
  *(v18 + 40) = v23;
  *(v18 + 48) = a2;
  *(v18 + 56) = sub_1C230;
  *(v18 + 64) = v17;
  v19 = *(a2 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  __chkstk_darwin(v18);
  *(&v22 - 2) = sub_1CAE4;
  *(&v22 - 1) = a2;

  os_unfair_lock_lock(v19 + 4);
  sub_1CB04(&v24);
  os_unfair_lock_unlock(v19 + 4);
  v20 = v24;
  sub_2C458(v24, sub_1C30C, v18);
}

uint64_t sub_15158(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      sub_19290(0, v2, 0);
      v4 = _swiftEmptyArrayStorage;
      v5 = (a1 + 80);
      do
      {
        v6 = *(v5 - 6);
        v7 = *(v5 - 3);
        v8 = *(v5 - 2);
        v9 = *(v5 - 1);
        v10 = *v5;
        v17 = *(v5 - 4);
        v18 = *(v5 - 5);
        sub_1BBC8(v18, v17, v7, v8, v9, *v5);
        v11 = [v6 toBaseConfiguration];
        v19 = v4;
        v13 = v4[2];
        v12 = v4[3];
        if (v13 >= v12 >> 1)
        {
          v15 = v11;
          sub_19290((v12 > 1), v13 + 1, 1);
          v11 = v15;
          v4 = v19;
        }

        v5 += 56;
        v4[2] = v13 + 1;
        v14 = &v4[7 * v13];
        v14[4] = v11;
        v14[5] = v18;
        v14[6] = v17;
        v14[7] = v7;
        v14[8] = v8;
        v14[9] = v9;
        *(v14 + 80) = v10;
        --v2;
      }

      while (v2);
    }
  }

  sub_2294(&qword_426C8, &qword_330B0);
  return sub_31440();
}

void Manager.getProperties(propertyName:assetIDs:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *(v6 + OBJC_IVAR___BMInternalManager_localStorage);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a3;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v12;
  v15[5] = sub_1B26C;
  v15[6] = v14;
  v16 = *(v12 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);

  os_unfair_lock_lock(v16 + 4);
  sub_1CB04(&v18);
  os_unfair_lock_unlock(v16 + 4);
  v17 = v18;
  sub_2C458(v18, sub_1B270, v15);
}

void sub_1544C(void *a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a4();
    return;
  }

  v12 = Strong;
  if (a2)
  {
    sub_2294(&unk_42780, &qword_32CC0);
    swift_willThrowTypedImpl();
  }

  else if (a1)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a4;
    *(v13 + 24) = a5;
    sub_1BB58(a1, 0);
    sub_1BB58(a1, 0);

    sub_19F74(a1, a6, sub_1BB30, v13, v12);

    sub_1BB64(a1, 0);
    sub_1BB64(a1, 0);
    return;
  }

  (a4)(0);
}

uint64_t Manager.getProperties(propertyName:assetIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_155C0, 0, 0);
}

uint64_t sub_155C0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v8 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  *(v3 + 40) = v2;
  v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_2294(&qword_425C0, &qword_32F20);
  *v5 = v0;
  v5[1] = sub_156E4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000025, 0x8000000000034AD0, sub_1B288, v3, v6);
}

uint64_t sub_156E4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_157FC, 0, 0);
}

void sub_15814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2294(&unk_42690, &unk_33028);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23[-v13];
  (*(v11 + 16))(&v23[-v13], a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  v17 = *(a2 + OBJC_IVAR___BMInternalManager_localStorage);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = sub_1BA20;
  v19[4] = v16;
  v19[5] = a5;
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = v17;
  v20[5] = sub_1CAFC;
  v20[6] = v19;
  v21 = *(v17 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v24 = sub_1CAE4;
  v25 = v17;

  os_unfair_lock_lock(v21 + 4);
  sub_1CB04(&v26);
  os_unfair_lock_unlock(v21 + 4);
  v22 = v26;
  sub_2C458(v26, sub_1CA7C, v20);
}

uint64_t sub_15A9C()
{

  sub_2294(&unk_42690, &unk_33028);
  return sub_31440();
}

uint64_t Manager.getProperties(propertyNames:assetIDs:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_15B20, 0, 0);
}

uint64_t sub_15B20()
{
  v1 = v0[7];
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_2294(&qword_425B8, &qword_32F10);
  *v4 = v0;
  v4[1] = sub_15C28;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 4, 0, 0, 0xD000000000000016, 0x8000000000034A90, sub_1CB20, v2, v5);
}

uint64_t sub_15C28()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_15D40, 0, 0);
}

uint64_t sub_15D40()
{
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
LABEL_16:
    v2 = sub_317C0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v18 = v22 + 2;
      v19 = v2;
      v20 = v1 & 0xFFFFFFFFFFFFFF8;
      v21 = v1 & 0xC000000000000001;
      do
      {
        if (v21)
        {
          v4 = sub_31700();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v3 >= *(v20 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v4 = *(v1 + 8 * v3 + 32);
          swift_unknownObjectRetain();
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        v6 = v1;
        v7 = v22[5];
        v8 = [v4 eventName];
        v9 = sub_31320();
        v11 = v10;

        v22[2] = v9;
        v22[3] = v11;
        v12 = swift_task_alloc();
        *(v12 + 16) = v18;
        LOBYTE(v7) = sub_16DB8(sub_1B294, v12, v7);

        if (v7)
        {
          sub_31740();
          v13 = _swiftEmptyArrayStorage[2];
          sub_31770();
          sub_31780();
          sub_31750();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v1 = v6;
        ++v3;
      }

      while (v5 != v19);
    }
  }

  v22[10] = _swiftEmptyArrayStorage;

  v14 = swift_task_alloc();
  v22[11] = v14;
  *v14 = v22;
  v14[1] = sub_15FAC;
  v15 = v22[6];
  v16 = v22[7];

  return Manager.getProperties(configs:assetIDs:sortByCreatedAt:limit:)(_swiftEmptyArrayStorage, v15, 0, 0);
}

uint64_t sub_15FAC(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t Manager.getEarliestTimestamp(propertyNames:assetIDs:earliestTimestampComparator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[19] = a5;
  v6[20] = v5;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v7 = *(*(sub_2294(&qword_42490, &qword_32CB0) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();

  return _swift_task_switch(sub_16168, 0, 0);
}

uint64_t sub_16168()
{
  v1 = v0[20];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[23] = v4;
  v5 = sub_2294(&qword_425B8, &qword_32F10);
  *v4 = v0;
  v4[1] = sub_16270;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 14, 0, 0, 0xD000000000000016, 0x8000000000034A90, sub_1CB20, v2, v5);
}

uint64_t sub_16270()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_16388, 0, 0);
}

uint64_t sub_16388()
{
  v1 = v0[14];
  if (v1 >> 62)
  {
LABEL_25:
    v20 = v1;
    v2 = sub_317C0();
    v1 = v20;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = v0[16];
      v26 = v1 & 0xFFFFFFFFFFFFFF8;
      v27 = v1 & 0xC000000000000001;
      v5 = v1 + 32;
      v0 = (v4 + 56);
      while (1)
      {
        if (v27)
        {
          v6 = sub_31700();
          v7 = __OFADD__(v3++, 1);
          if (v7)
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v0 = v25;
            break;
          }
        }

        else
        {
          if (v3 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v6 = *(v5 + 8 * v3);
          swift_unknownObjectRetain();
          v7 = __OFADD__(v3++, 1);
          if (v7)
          {
            goto LABEL_22;
          }
        }

        v8 = [v6 eventName];
        v9 = sub_31320();
        v11 = v10;

        if (*(v4 + 16) && (v12 = *(v4 + 40), sub_31900(), sub_31370(), v13 = sub_31920(), v14 = -1 << *(v4 + 32), v15 = v13 & ~v14, ((*(v0 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
        {
          v16 = ~v14;
          while (1)
          {
            v17 = (*(v4 + 48) + 16 * v15);
            v18 = *v17 == v9 && v17[1] == v11;
            if (v18 || (sub_31850() & 1) != 0)
            {
              break;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v0 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          sub_31740();
          v19 = _swiftEmptyArrayStorage[2];
          sub_31770();
          sub_31780();
          v1 = sub_31750();
        }

        else
        {
LABEL_4:
          swift_unknownObjectRelease();
        }

        if (v3 == v2)
        {
          goto LABEL_23;
        }
      }
    }
  }

  v0[24] = _swiftEmptyArrayStorage;

  v21 = swift_task_alloc();
  v0[25] = v21;
  *v21 = v0;
  v21[1] = sub_1663C;
  v22 = v0[20];
  v23 = v0[17];

  return Manager.getProperties(configs:assetIDs:sortByCreatedAt:limit:)(_swiftEmptyArrayStorage, v23, 1, 20);
}

uint64_t sub_1663C(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_1675C, 0, 0);
}

uint64_t sub_1675C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 120);
  v3 = sub_31180();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = (*(v0 + 208) + 40);
    do
    {
      v6 = *(v0 + 168);
      v8 = *(v0 + 144);
      v7 = *(v0 + 152);
      v9 = *(v0 + 120);
      v10 = *(v5 + 25);
      v11 = v5[1];
      *(v0 + 16) = *v5;
      *(v0 + 32) = v11;
      *(v0 + 41) = v10;
      sub_1B2EC(v0 + 16, v0 + 64);
      v8(v0 + 16, v9);
      sub_B4F0(v0 + 16);
      sub_B5AC(v9, &qword_42490, &qword_32CB0);
      sub_1B348(v6, v9);
      v5 = (v5 + 56);
      --v4;
    }

    while (v4);
  }

  v12 = *(v0 + 208);
  v13 = *(v0 + 168);

  v14 = *(v0 + 8);

  return v14();
}

void Manager.enumerate(startDate:endDate:closure:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v9 = sub_2294(&qword_42490, &qword_32CB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v16 = *(v6 + OBJC_IVAR___BMInternalManager_localStorage);
  sub_B488(a1, &v28 - v14, &qword_42490, &qword_32CB0);
  sub_B488(a2, v13, &qword_42490, &qword_32CB0);
  v17 = *(v10 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = (v11 + v17 + v18) & ~v17;
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  sub_1B348(v15, v21 + v18);
  sub_1B348(v13, v21 + v19);
  v22 = (v21 + v20);
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  v24 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  v25 = v31;
  *v24 = v30;
  v24[1] = v25;
  v26 = *(v16 + OBJC_IVAR____TtC19EngagementCollector12LocalStorage_accessLock);
  v32 = sub_1CAE4;
  v33 = v16;

  os_unfair_lock_lock(v26 + 4);
  sub_1CB04(&v34);
  os_unfair_lock_unlock(v26 + 4);
  v27 = v34;
  sub_2C458(v34, sub_1B558, v21);
}

uint64_t Manager.fetchCounts(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_16B00, 0, 0);
}

uint64_t sub_16B00()
{
  v1 = v0[3];
  v2 = *(v0[4] + OBJC_IVAR___BMInternalManager_localStorage);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = sub_2294(&qword_425D8, &qword_32F70);
  *v5 = v0;
  v5[1] = sub_16C1C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x756F436863746566, 0xEF293A5F2873746ELL, sub_1B618, v3, v6);
}

uint64_t sub_16C1C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_16D54;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_16D38;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_16D54()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_16DB8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_16E64(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_16F5C;

  return v7(a1);
}

uint64_t sub_16F5C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_17054(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_31900();
  sub_31370();
  v6 = sub_31920();

  return sub_171C0(a1, a2, v6);
}

unint64_t sub_170CC(Swift::UInt a1)
{
  v3 = *(v1 + 40);
  sub_31900();
  sub_31910(a1);
  v4 = sub_31920();

  return sub_17278(a1, v4);
}

unint64_t sub_17138(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_318F0();

  return sub_17278(a1, v4);
}

unint64_t sub_1717C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_31660(*(v2 + 40));

  return sub_172E4(a1, v4);
}

unint64_t sub_171C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_31850())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_17278(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_172E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for BasePropertyConfiguration();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_31670();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_173A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2294(&qword_42688, &qword_33020);
  v38 = a2;
  result = sub_317F0();
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

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_31900();
      sub_31370();
      result = sub_31920();
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

uint64_t sub_17650(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2294(&unk_42710, &unk_330F0);
  v39 = a2;
  result = sub_317F0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_31900();
      sub_31370();
      result = sub_31920();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_178F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2294(&unk_42720, &unk_33110);
  v38 = a2;
  result = sub_317F0();
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
      sub_31900();
      sub_31370();
      result = sub_31920();
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

uint64_t sub_17B9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2294(&qword_426E8, &qword_330D0);
  v33 = a2;
  result = sub_317F0();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_31900();
      sub_31910(v21);
      result = sub_31920();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_17E2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2294(&qword_42680, &qword_33018);
  v38 = a2;
  result = sub_317F0();
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
      sub_31900();
      sub_31370();
      result = sub_31920();
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

uint64_t sub_180CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2294(&qword_42678, &qword_33010);
  result = sub_317F0();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = 8 * (v18 | (v9 << 6));
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + v21;
      if (a2)
      {
        sub_1B9C4(v23, v34);
      }

      else
      {
        sub_1B968(v23, v34);
      }

      v24 = *(v8 + 40);
      result = sub_318F0();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 8 * v16;
      *(*(v8 + 48) + v17) = v22;
      result = sub_1B9C4(v34, *(v8 + 56) + v17);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1834C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2294(&qword_42730, &qword_33138);
  v39 = a2;
  result = sub_317F0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 48 * v21;
      v24 = *(v23 + 8);
      v25 = *(v23 + 16);
      v26 = *(v23 + 24);
      v27 = *(v23 + 32);
      v41 = v27;
      v42 = *v23;
      v40 = *(v23 + 40);
      if ((v39 & 1) == 0)
      {
        v28 = v22;
        sub_1BBC8(v42, v24, v25, v26, v41, v40);
      }

      result = sub_31660(*(v8 + 40));
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 48 * v16;
      *v17 = v42;
      *(v17 + 8) = v24;
      *(v17 + 16) = v25;
      *(v17 + 24) = v26;
      *(v17 + 32) = v41;
      *(v17 + 40) = v40;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_18610()
{
  v1 = v0;
  sub_2294(&qword_42688, &qword_33020);
  v2 = *v0;
  v3 = sub_317E0();
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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