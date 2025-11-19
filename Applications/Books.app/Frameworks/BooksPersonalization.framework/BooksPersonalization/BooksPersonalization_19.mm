uint64_t sub_143EB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_143F88@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AttributeScorer();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_21C750;
  *a1 = result;
  return result;
}

uint64_t sub_144030@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1[4];
  sub_2698(a1, a1[3]);
  v8 = a2(0);
  result = sub_1B4254();
  if (result)
  {
    a4[3] = v8;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1440B4(void *a1)
{
  v2 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A308, &unk_1C65B0);
  result = sub_1B4264();
  if (v9)
  {
    v4 = a1[4];
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_22DFD8, &qword_1CEBF8);
    result = sub_1B4264();
    if (v7)
    {
      type metadata accessor for DefaultGenreCollectionRecommendationService();
      v5 = swift_allocObject();
      sub_264B8(&v8, v5 + 16);
      sub_264B8(&v6, v5 + 56);
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1441A4(void *a1)
{
  v2 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22C060, &unk_1CEC20);
  result = sub_1B4254();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_22A308, &unk_1C65B0);
    result = sub_1B4264();
    if (v8)
    {
      type metadata accessor for DelegatingGenreRecommendationService();
      v6 = swift_allocObject();
      *(v6 + 64) = _swiftEmptyDictionarySingleton;
      *(v6 + 16) = v4;
      sub_264B8(&v7, v6 + 24);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_14429C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_228FE8, &qword_1CEBF0);
  result = sub_1B4264();
  if (v12)
  {
    v6 = a1[4];
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_228FF0, qword_1BB3D0);
    result = sub_1B4264();
    if (v10)
    {
      v7 = type metadata accessor for SeedBookGenreRecommendationService();
      v8 = swift_allocObject();
      sub_264B8(&v11, v8 + 16);
      result = sub_264B8(&v9, v8 + 56);
      a2[3] = v7;
      a2[4] = &off_21C730;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1443A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22DFF0, &unk_1CEC10);
  result = sub_1B4244();
  if (v12)
  {
    v6 = a1[4];
    sub_2698(a1, a1[3]);
    result = sub_1B4244();
    if (v10)
    {
      v7 = type metadata accessor for CombinedGenreRecommendationService();
      v8 = swift_allocObject();
      sub_264B8(&v11, v8 + 16);
      result = sub_264B8(&v9, v8 + 56);
      a2[3] = v7;
      a2[4] = &off_21C698;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1444DC(uint64_t a1, void *a2)
{
  sub_2B0C(&qword_22DFF0, &unk_1CEC10);
  v4 = 0;
  while (1)
  {
    v7 = *(&off_213850 + v4++ + 32);
    v8 = a2[4];
    sub_2698(a2, a2[3]);
    sub_1B4244();

    if (!v25)
    {
      break;
    }

    sub_264B8(&v24, v26);
    swift_beginAccess();
    sub_404C4(v26, &v24);
    v9 = *(a1 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + 64);
    *(a1 + 64) = 0x8000000000000000;
    v12 = sub_3AE10(v7);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      break;
    }

    v18 = v13;
    if (v11[3] < v17)
    {
      sub_181AC8(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_3AE10(v7);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v20 = v11;
      if (v18)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v12;
    sub_1874BC();
    v12 = v23;
    v20 = v11;
    if (v18)
    {
LABEL_2:
      v5 = (v20[7] + 40 * v12);
      sub_2BF8(v5);
      sub_264B8(&v24, v5);
      goto LABEL_3;
    }

LABEL_11:
    v20[(v12 >> 6) + 8] |= 1 << v12;
    *(v20[6] + v12) = v7;
    sub_264B8(&v24, v20[7] + 40 * v12);
    v21 = v20[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_17;
    }

    v20[2] = v22;
LABEL_3:
    *(a1 + 64) = v20;
    swift_endAccess();
    result = sub_2BF8(v26);
    if (v4 == 5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_1447DC(uint64_t a1)
{
  v2 = sub_1B4274();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v21 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B4344();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4284();
  sub_2B0C(&qword_228FE8, &qword_1CEBF0);
  sub_1B4304();

  v10 = enum case for Scope.singleton(_:);
  v11 = v6[13];
  v11(v9, enum case for Scope.singleton(_:), v5);
  sub_1B4214();

  v12 = v6[1];
  v12(v9, v5);
  sub_1B4284();
  sub_2B0C(&qword_22DFD8, &qword_1CEBF8);
  sub_1B4304();

  v11(v9, v10, v5);
  sub_1B4214();

  v12(v9, v5);
  sub_1B4284();
  sub_2B0C(&qword_22DFE0, &qword_1CEC00);
  sub_1B4304();

  v11(v9, v10, v5);
  sub_1B4214();

  v12(v9, v5);
  sub_1B4284();
  sub_2B0C(&qword_22DFE8, &qword_1CEC08);
  sub_1B4304();

  v11(v9, v10, v5);
  sub_1B4214();

  v12(v9, v5);
  sub_1B4294();
  type metadata accessor for DefaultGenreCollectionRecommendationService();
  sub_1B42F4();

  v11(v9, v10, v5);
  v19 = v11;
  sub_1B4214();

  v12(v9, v5);
  v18[1] = a1;
  sub_1B4294();
  v20 = type metadata accessor for DelegatingGenreRecommendationService();
  sub_1B42F4();

  v11(v9, v10, v5);
  sub_1B4214();

  v12(v9, v5);
  sub_1B4294();
  sub_2B0C(&qword_22DFF0, &unk_1CEC10);
  sub_1B4304();

  v13 = v19;
  v19(v9, v10, v5);
  sub_1B4214();

  v12(v9, v5);
  sub_1B4294();
  sub_1B4304();

  v13(v9, v10, v5);
  sub_1B4214();

  v12(v9, v5);
  sub_1B42A4();
  sub_2698(v24, v24[3]);
  v15 = v21;
  v14 = v22;
  v16 = v23;
  (*(v22 + 104))(v21, enum case for CallbackScope.any(_:), v23);
  sub_1B4314();
  (*(v14 + 8))(v15, v16);
  return sub_2BF8(v24);
}

uint64_t ConfigReader.configuration<A>(preferredLanguageTags:configName:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v19 = *v3;
  if (!sub_1450A4(a1, a2, a3))
  {
    sub_145820();
    swift_allocError();
    v5 = 0;
LABEL_8:
    *v17 = v5;
    return swift_willThrow();
  }

  v6 = objc_opt_self();
  isa = sub_1B4694().super.isa;

  v19 = 0;
  v8 = [v6 dataWithJSONObject:isa options:0 error:&v19];

  v9 = v19;
  if (!v8)
  {
    v18 = v9;
    v5 = sub_1B3E64();

    swift_willThrow();
    goto LABEL_7;
  }

  v10 = sub_1B3F94();
  v12 = v11;

  v13 = sub_1B3BD4();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1B3BC4();
  sub_1B3BA4();

  result = sub_41670(v10, v12);
  if (v4)
  {
LABEL_7:
    sub_145820();
    swift_allocError();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1450A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  if (*(*v3 + 16) && (v8 = *v3, v9 = sub_3A678(a2, a3), (v10 & 1) != 0))
  {
    sub_430C8(*(v7 + 56) + 32 * v9, v77);
    sub_2B0C(&qword_22E008, &qword_1CECE8);
    if (swift_dynamicCast())
    {
      v11 = v76;
    }

    else
    {
      v11 = 0;
    }

    if (!*(v7 + 16))
    {
      return v11;
    }
  }

  else
  {
    v11 = 0;
    if (!*(v7 + 16))
    {
      return v11;
    }
  }

  v12 = sub_3A678(0x65676175676E616CLL, 0xEF736769666E6F43);
  if ((v13 & 1) == 0)
  {
    return v11;
  }

  sub_430C8(*(v7 + 56) + 32 * v12, v77);
  sub_2B0C(&qword_22E000, &qword_1CECE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return v11;
  }

  v73 = a1;
  v72 = v11;
  v14 = _swiftEmptyArrayStorage;
  v15 = sub_131038(_swiftEmptyArrayStorage);
  v16 = *(v76 + 16);
  if (v16)
  {
    v71 = 0;
    v74 = 0;
    v17 = v76 + 32;
    while (1)
    {
      v18 = *v17;
      if (*(*v17 + 16))
      {
        v19 = *v17;

        v20 = sub_3A678(0x65676175676E616CLL, 0xEB00000000676154);
        if (v21)
        {
          sub_430C8(*(v18 + 56) + 32 * v20, v77);
          if (swift_dynamicCast())
          {
            v75 = sub_1B4844();
            v23 = v22;

            if (!*(v18 + 16) || (v24 = sub_3A678(a2, a3), (v25 & 1) == 0))
            {

              goto LABEL_14;
            }

            sub_430C8(*(v18 + 56) + 32 * v24, v77);

            sub_2B0C(&qword_22E008, &qword_1CECE8);
            if (swift_dynamicCast())
            {

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v77[0] = v15;
              sub_5487C(v76, v75, v23, isUniquelyReferenced_nonNull_native);

              v15 = v77[0];
              sub_145894(45, 0xE100000000000000, v75, v23);
              sub_1B4964();
              v70 = sub_1B4EB4();
              v28 = v27;

              if (*(v15 + 16) && (sub_3A678(v70, v28), (v29 & 1) != 0))
              {
              }

              else
              {
                v30 = swift_isUniquelyReferenced_nonNull_native();
                v77[0] = v15;
                sub_5487C(v76, v70, v28, v30);

                v15 = v77[0];
              }

              if (!v74)
              {
                v71 = v75;
                v74 = v23;
                goto LABEL_14;
              }
            }
          }
        }
      }

LABEL_14:
      v17 += 8;
      if (!--v16)
      {
        goto LABEL_31;
      }
    }
  }

  v71 = 0;
  v74 = 0;
LABEL_31:

  v31 = *(v73 + 16);
  if (v31)
  {
    v77[0] = _swiftEmptyArrayStorage;
    sub_3747C(0, v31, 0);
    v14 = v77[0];
    v32 = (v73 + 40);
    do
    {
      v33 = *(v32 - 1);
      v34 = *v32;
      v35 = sub_1B4844();
      v77[0] = v14;
      v38 = v14[2];
      v37 = v14[3];
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v41 = v35;
        v42 = v36;
        sub_3747C((v37 > 1), v38 + 1, 1);
        v36 = v42;
        v35 = v41;
        v14 = v77[0];
      }

      v14[2] = v39;
      v40 = &v14[2 * v38];
      v40[4] = v35;
      v40[5] = v36;
      v32 += 2;
      --v31;
    }

    while (v31);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage[2];
    if (!v39)
    {
LABEL_48:

      if (*(v7 + 16))
      {
        v57 = sub_3A678(0xD000000000000013, 0x80000000001D8290);
        if (v58)
        {
          sub_430C8(*(v7 + 56) + 32 * v57, v77);
          if (swift_dynamicCast())
          {
            v59 = sub_1B4844();
            v61 = v60;

            if (*(v15 + 16))
            {
              v62 = sub_3A678(v59, v61);
              v64 = v63;

              if (v64)
              {
                v11 = *(*(v15 + 56) + 8 * v62);

                return v11;
              }
            }

            else
            {
            }
          }
        }
      }

      if (!v74)
      {

        return v72;
      }

      if (*(v15 + 16))
      {
        v66 = sub_3A678(v71, v74);
        v68 = v67;

        if (v68)
        {
          v11 = *(*(v15 + 56) + 8 * v66);

          return v11;
        }
      }

      else
      {
      }

      return 0;
    }
  }

  v43 = 0;
  v44 = v14 + 5;
  v45 = v39 - 1;
  while (1)
  {
    v47 = *(v44 - 1);
    v46 = *v44;
    v48 = *(v15 + 16);

    if (v48)
    {
      v49 = sub_3A678(v47, v46);
      if (v50)
      {
        v65 = *(*(v15 + 56) + 8 * v49);

        goto LABEL_56;
      }
    }

    sub_145894(45, 0xE100000000000000, v47, v46);
    sub_1B4964();
    v51 = sub_1B4EB4();
    v53 = v52;

    if (!*(v15 + 16))
    {

      if (v45 == v43)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    v54 = sub_3A678(v51, v53);
    v56 = v55;

    if (v56)
    {
      break;
    }

    if (v45 == v43)
    {
      goto LABEL_48;
    }

LABEL_46:
    ++v43;
    v44 += 2;
    if (v43 >= v14[2])
    {
      __break(1u);
      goto LABEL_48;
    }
  }

  v65 = *(*(v15 + 56) + 8 * v54);

LABEL_56:

  return v65;
}

unint64_t sub_145820()
{
  result = qword_22DFF8;
  if (!qword_22DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22DFF8);
  }

  return result;
}

unint64_t sub_145894(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1B4944() != a1 || v9 != a2)
  {
    v10 = sub_1B5604();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1B48A4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

BooksPersonalization::CollectionType_optional __swiftcall CollectionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_213968;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 7;
  if (v5 < 7)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t CollectionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x736B6F6F62;
  v3 = 0xD000000000000013;
  if (v1 != 5)
  {
    v3 = 0x6974736567677573;
  }

  v4 = 0x756F59726F66;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_145AF8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x736B6F6F62;
  v5 = 0x80000000001D47A0;
  v6 = 0xD000000000000013;
  if (v2 != 5)
  {
    v6 = 0x6974736567677573;
    v5 = 0xEB00000000736E6FLL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x756F59726F66;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x80000000001D4780;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000000001D4740;
  v10 = 0xD000000000000017;
  if (v2 != 1)
  {
    v10 = 0xD000000000000011;
    v9 = 0x80000000001D4760;
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

uint64_t sub_145C04()
{
  *v0;
  *v0;
  *v0;
  sub_1B4884();
}

unint64_t sub_145DEC()
{
  result = qword_22E010;
  if (!qword_22E010)
  {
    sub_1CC1C(&qword_22E018, &qword_1CED28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E010);
  }

  return result;
}

unint64_t sub_145E54()
{
  result = qword_22E020;
  if (!qword_22E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E020);
  }

  return result;
}

unint64_t sub_145EAC()
{
  result = qword_22E028;
  if (!qword_22E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E028);
  }

  return result;
}

unint64_t sub_145F10()
{
  result = qword_22E030;
  if (!qword_22E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E030);
  }

  return result;
}

uint64_t Array<A>.affinity.getter(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = v1 + 56 * v2;
  while (1)
  {
    if (v3 == v2)
    {
      v12 = *(v4 + 2);
      if (!v12)
      {

        return 0;
      }

      if (v12 > 3)
      {
        v13 = v12 & 0x7FFFFFFFFFFFFFFCLL;
        v15 = (v4 + 48);
        v14 = 0.0;
        v16 = v12 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v17 = *v15;
          v14 = v14 + *(v15 - 2) + *(v15 - 1) + *v15 + v15[1];
          v15 += 4;
          v16 -= 4;
        }

        while (v16);
        if (v12 == v13)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v13 = 0;
        v14 = 0.0;
      }

      v18 = v12 - v13;
      v19 = &v4[8 * v13 + 32];
      do
      {
        v20 = *v19++;
        v14 = v14 + v20;
        --v18;
      }

      while (v18);
LABEL_21:

      return *&v14;
    }

    if (v2 >= v3)
    {
      break;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_23;
    }

    v7 = *(v5 + 80);
    ++v2;
    v5 += 56;
    if ((v7 & 1) == 0)
    {
      v8 = *(v5 + 8);
      v9 = exp2(-*(v5 + 16) / *v5);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_337AC(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        result = sub_337AC((v10 > 1), v11 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v11 + 1;
      *&v4[8 * v11 + 32] = v8 * v9;
      v2 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t Array<A>.rawAffinity.getter(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 80;
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = (v3 + 56 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      v11 = *(v4 + 2);
      if (!v11)
      {

        return 0;
      }

      if (v11 > 3)
      {
        v12 = v11 & 0x7FFFFFFFFFFFFFFCLL;
        v14 = (v4 + 48);
        v13 = 0.0;
        v15 = v11 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v16 = *v14;
          v13 = v13 + *(v14 - 2) + *(v14 - 1) + *v14 + v14[1];
          v14 += 4;
          v15 -= 4;
        }

        while (v15);
        if (v11 == v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v12 = 0;
        v13 = 0.0;
      }

      v17 = v11 - v12;
      v18 = &v4[8 * v12 + 32];
      do
      {
        v19 = *v18++;
        v13 = v13 + v19;
        --v17;
      }

      while (v17);
LABEL_21:

      return *&v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_23;
    }

    v7 = *v5;
    v5 += 56;
    ++v1;
    if ((v7 & 1) == 0)
    {
      v8 = *(v5 - 9);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_337AC(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        result = sub_337AC((v9 > 1), v10 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v10 + 1;
      *&v4[8 * v10 + 32] = v8;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

__n128 FeatureAffinityInfo.datedRawAffinity.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[3].n128_u8[0];
  result = v1[2];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

unint64_t sub_1462C0()
{
  v1 = 0x746867696577;
  v2 = 0x6566694C666C6168;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_146338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1474B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_146360(uint64_t a1)
{
  v2 = sub_146FC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_14639C(uint64_t a1)
{
  v2 = sub_146FC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FeatureAffinityInfo.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22E038, &qword_1CEE90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v12 = v1[4];
  v19 = v1[5];
  v20 = v12;
  v25 = *(v1 + 48);
  v13 = a1[4];
  sub_2698(a1, a1[3]);
  sub_146FC8();
  sub_1B5884();
  LOBYTE(v22) = 0;
  v14 = v21;
  sub_1B54F4();
  if (!v14)
  {
    v15 = v25;
    v17 = v19;
    v16 = v20;
    LOBYTE(v22) = 1;
    sub_1B5514();
    LOBYTE(v22) = 2;
    sub_1B5514();
    v22 = v16;
    v23 = v17;
    v24 = v15;
    v26 = 3;
    sub_14701C();
    sub_1B54B4();
  }

  return (*(v4 + 8))(v7, v3);
}

void FeatureAffinityInfo.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = v0[3];
  v6 = *(v0 + 4);
  v5 = *(v0 + 5);
  v7 = *(v0 + 48);
  sub_1B4884();
  if (v3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v3;
  }

  sub_1B5834(*&v8);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  sub_1B5834(*&v9);
  if (v7 == 1)
  {
    sub_1B5814(0);
  }

  else
  {
    sub_1B5814(1u);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    sub_1B5834(v10);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    sub_1B5834(v11);
  }
}

Swift::Int FeatureAffinityInfo.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = *(v0 + 48);
  sub_1B57F4();
  FeatureAffinityInfo.hash(into:)();
  return sub_1B5844();
}

uint64_t FeatureAffinityInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22E050, &qword_1CEE98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_146FC8();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v22) = 0;
  v11 = sub_1B53B4();
  v13 = v12;
  v14 = v11;
  LOBYTE(v22) = 1;
  sub_1B53D4();
  v16 = v15;
  LOBYTE(v22) = 2;
  sub_1B53D4();
  v18 = v17;
  v24 = 3;
  sub_147070();
  sub_1B5374();
  (*(v6 + 8))(v9, v5);
  v20 = v23;
  v21 = v22;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 24) = v18;
  *(a2 + 32) = v21;
  *(a2 + 48) = v20;

  sub_2BF8(a1);
}

Swift::Int sub_1469A0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = *(v0 + 48);
  sub_1B57F4();
  FeatureAffinityInfo.hash(into:)();
  return sub_1B5844();
}

unint64_t sub_1469FC()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0x7974696E69666661;
  }

  *v0;
  return result;
}

uint64_t sub_146A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7974696E69666661 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000000001D82F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_146B20(uint64_t a1)
{
  v2 = sub_1470C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_146B5C(uint64_t a1)
{
  v2 = sub_1470C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DatedAffinity.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22E060, &qword_1CEEA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1470C4();
  sub_1B5884();
  v13[15] = 0;
  sub_1B5514();
  if (!v2)
  {
    v13[14] = 1;
    sub_1B5514();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t DatedAffinity.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22E070, &qword_1CEEA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1470C4();
  sub_1B5864();
  if (!v2)
  {
    v18 = 0;
    sub_1B53D4();
    v12 = v11;
    v17 = 1;
    sub_1B53D4();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return sub_2BF8(a1);
}

uint64_t _s20BooksPersonalization19FeatureAffinityInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v3 != v8 || v2 != v7)
    {
      return 0;
    }

LABEL_14:
    if (v6)
    {
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v11)
      {
        return 0;
      }

      if (v4 != v9 || v5 != v10)
      {
        return 0;
      }
    }

    return 1;
  }

  v13 = sub_1B5604();
  result = 0;
  if ((v13 & 1) != 0 && v3 == v8 && v2 == v7)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_146FC8()
{
  result = qword_22E040;
  if (!qword_22E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E040);
  }

  return result;
}

unint64_t sub_14701C()
{
  result = qword_22E048;
  if (!qword_22E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E048);
  }

  return result;
}

unint64_t sub_147070()
{
  result = qword_22E058;
  if (!qword_22E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E058);
  }

  return result;
}

unint64_t sub_1470C4()
{
  result = qword_22E068;
  if (!qword_22E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E068);
  }

  return result;
}

unint64_t sub_14711C()
{
  result = qword_22E078;
  if (!qword_22E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E078);
  }

  return result;
}

unint64_t sub_147174()
{
  result = qword_22E080;
  if (!qword_22E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E080);
  }

  return result;
}

uint64_t sub_1471C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_147210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1472A4()
{
  result = qword_22E088;
  if (!qword_22E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E088);
  }

  return result;
}

unint64_t sub_1472FC()
{
  result = qword_22E090;
  if (!qword_22E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E090);
  }

  return result;
}

unint64_t sub_147354()
{
  result = qword_22E098;
  if (!qword_22E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E098);
  }

  return result;
}

unint64_t sub_1473AC()
{
  result = qword_22E0A0;
  if (!qword_22E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E0A0);
  }

  return result;
}

unint64_t sub_147404()
{
  result = qword_22E0A8;
  if (!qword_22E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E0A8);
  }

  return result;
}

unint64_t sub_14745C()
{
  result = qword_22E0B0;
  if (!qword_22E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22E0B0);
  }

  return result;
}

uint64_t sub_1474B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000000001D82B0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6566694C666C6168 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D82D0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1B5604();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_147624(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 320);
  v4 = *(v1 + 48);
  v41 = *(v1 + 96);
  v40 = *(v1 + 104);
  v39 = *(v1 + 112);
  v38 = *(v1 + 120);
  v37 = *(v1 + 128);
  v36 = *(v1 + 136);
  v35 = *(v1 + 144);
  v34 = *(v1 + 152);
  v33 = *(v1 + 160);
  v32 = *(v1 + 168);
  v31 = *(v1 + 176);
  v30 = *(v1 + 184);
  v29 = *(v1 + 192);
  v28 = *(v1 + 200);
  v5 = *(v1 + 240);
  v6 = *(v1 + 248);
  v7 = *(v1 + 256);
  v27 = v7 & 1;
  v8 = *(v1 + 296);
  v26 = *(v1 + 304);
  v25 = *(v1 + 312);
  v24 = *(v1 + 320);
  v23 = *(v1 + 328);
  v9 = v3 * *(v1 + 64) + v4;
  v10 = v3 * *(v1 + 280) + *(v1 + 264);
  v11 = *(a1 + 312) * *(v1 + 224) + *(v1 + 208);
  if (*(v1 + 56) < v9)
  {
    v9 = *(v1 + 56);
  }

  v42 = *(v1 + 80);
  if (v42)
  {
    v4 = v9;
  }

  v22 = v4;
  if (*(v1 + 272) < v10)
  {
    v10 = *(v1 + 272);
  }

  v12 = v10;
  if ((v8 & 1) == 0)
  {
    v12 = *(v1 + 264);
  }

  v21 = v12;
  if (*(v1 + 216) < v11)
  {
    v11 = *(v1 + 216);
  }

  if ((v5 & 1) == 0)
  {
    v11 = *(v1 + 208);
  }

  v13 = v11;
  v14 = (v5 != 255) & (v7 | (v11 < v6));
  v15 = _swiftEmptyArrayStorage;
  do
  {
    switch(*(&off_20E7A8 + v2 + 32))
    {
      case 1:
        v16 = v22;
        if (v42 != 255)
        {
          goto LABEL_42;
        }

        break;
      case 3:
        v16 = v41;
        if ((v40 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 4:
        v16 = v39;
        if ((v38 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 5:
        v16 = v37;
        if ((v36 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 6:
        v16 = v35;
        if ((v34 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 7:
        v16 = v33;
        if ((v32 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 8:
        v16 = v31;
        if ((v30 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 9:
        v16 = v29;
        if ((v28 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 0xA:
        v16 = v13;
        if (v14)
        {
          goto LABEL_42;
        }

        break;
      case 0xB:
        v16 = v6;
        if ((v27 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 0xC:
        v16 = v21;
        if (v8 != 255)
        {
          goto LABEL_42;
        }

        break;
      case 0xD:
        v16 = v26;
        if ((v25 & 1) == 0)
        {
          goto LABEL_42;
        }

        break;
      case 0xE:
        v16 = v24;
        if ((v23 & 1) == 0)
        {
LABEL_42:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_337AC(0, *(v15 + 2) + 1, 1, v15);
          }

          v18 = *(v15 + 2);
          v17 = *(v15 + 3);
          if (v18 >= v17 >> 1)
          {
            v15 = sub_337AC((v17 > 1), v18 + 1, 1, v15);
          }

          *(v15 + 2) = v18 + 1;
          *&v15[8 * v18 + 32] = v16;
        }

        break;
      default:
        break;
    }

    ++v2;
  }

  while (v2 != 18);
  v19 = sub_BF11C(v15);

  return v19;
}

uint64_t BookHistory.isEmpty.getter()
{
  v1 = 0;
  v2 = v0[16];
  v3 = v0[32];
  v4 = v0[80];
  v5 = v0[104];
  v6 = v0[120];
  v7 = v0[136];
  v8 = v0[152];
  v9 = v0[168];
  v10 = v0[184];
  v11 = v0[200];
  v12 = v0[240];
  v13 = v0[256];
  v14 = v0[296];
  v15 = v0[312];
  v16 = v0[328];
  v17 = v0[344];
  v18 = v0[360];
  v19 = v0[376];
  while (2)
  {
    v20 = &off_20E7A8 + v1++;
    switch(v20[32])
    {
      case 1:
        if (v4 == 255)
        {
          goto LABEL_3;
        }

        return 0;
      case 2:
        if ((v3 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 3:
        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 4:
        if ((v6 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 5:
        if ((v7 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 6:
        if ((v8 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 7:
        if ((v9 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 8:
        if ((v10 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 9:
        if ((v11 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 10:
        if (v12 != 255)
        {
          return 0;
        }

        goto LABEL_3;
      case 11:
        if ((v13 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 12:
        if (v14 != 255)
        {
          return 0;
        }

        goto LABEL_3;
      case 13:
        if ((v15 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 14:
        if ((v16 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 15:
        if ((v17 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      case 16:
        if (v18)
        {
          goto LABEL_3;
        }

        return 0;
      case 17:
        if ((v19 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_3;
      default:
        if (!v2)
        {
          return 0;
        }

LABEL_3:
        if (v1 != 18)
        {
          continue;
        }

        return 1;
    }
  }
}

uint64_t sub_147C40(uint64_t a1)
{
  v2 = *(v1 + 152);
  if ((v2 & 1) == 0)
  {
LABEL_14:
    v31 = 1;
    return v31 & 1;
  }

  v3 = *(a1 + 64);
  v62 = *(a1 + 80);
  v63 = *(a1 + 72);
  v4 = *(a1 + 96);
  v60 = *(a1 + 104);
  v61 = *(a1 + 88);
  v5 = *(a1 + 312);
  v7 = *(v1 + 27);
  v6 = *(v1 + 28);
  v8 = *(v1 + 29);
  v9 = *(v1 + 240);
  v10 = *(v1 + 31);
  v11 = *(v1 + 256);
  v12 = *(v1 + 42);
  v13 = *(v1 + 344);
  v14 = *(v1 + 46);
  v15 = *(v1 + 376);
  v16 = *(v1 + 296);
  v17 = v1[7];
  v76 = v1[6];
  v77 = v17;
  v78 = v1[8];
  v79 = *(v1 + 18);
  v18 = v1[3];
  v72 = v1[2];
  v73 = v18;
  v19 = v1[5];
  v74 = v1[4];
  v75 = v19;
  v20 = v1[1];
  v70 = *v1;
  v71 = v20;
  v55 = v2;
  v80 = v2;
  v81 = *(v1 + 153);
  v82 = *(v1 + 169);
  *v83 = *(v1 + 185);
  v21 = *(v1 + 26);
  *&v83[15] = *(v1 + 25);
  v84 = v21;
  v52 = v21;
  v53 = v7;
  v85 = v7;
  v86 = v6;
  v54 = v6;
  v56 = v8;
  v87 = v8;
  v57 = v9;
  v58 = v11;
  v88 = v9;
  *v89 = *(v1 + 241);
  *&v89[3] = *(v1 + 61);
  v59 = v10;
  v90 = v10;
  v91 = v11;
  v22 = *(v1 + 273);
  v92 = *(v1 + 257);
  *v93 = v22;
  v23 = (v1 + 257);
  *&v93[15] = *(v1 + 36);
  v94 = v16;
  v24 = *(v1 + 313);
  v95 = *(v1 + 297);
  *v96 = v24;
  *&v96[15] = *(v1 + 41);
  v25 = v12;
  v97 = v12;
  v26 = v13;
  v98 = v13;
  v27 = *(v1 + 45);
  *v99 = *(v1 + 345);
  *&v99[15] = v27;
  v28 = v14;
  v100 = v14;
  v29 = v15;
  v101 = v15;
  v30 = sub_DF2A8();
  v31 = 0;
  if ((v30 & 1) == 0)
  {
    v32 = (v1 + 297);
    if (v16 == 255)
    {
      if (v57 == 255)
      {
        goto LABEL_10;
      }

      v33 = v52;
      if (v57)
      {
        v33 = v53;
        if (v5 * v54 + v52 <= v53)
        {
          v33 = v5 * v54 + v52;
        }
      }

      v31 = 0;
      if ((v58 & 1) == 0 && v33 >= v59)
      {
LABEL_10:
        v34 = v1[7];
        v76 = v1[6];
        v77 = v34;
        v78 = v1[8];
        v79 = *(v1 + 18);
        v35 = v1[3];
        v72 = v1[2];
        v73 = v35;
        v36 = v1[5];
        v74 = v1[4];
        v75 = v36;
        v37 = v1[1];
        v70 = *v1;
        v71 = v37;
        v80 = v55;
        v81 = *(v1 + 153);
        v82 = *(v1 + 169);
        *v83 = *(v1 + 185);
        *&v83[15] = *(v1 + 25);
        v84 = v52;
        v85 = v53;
        v86 = v54;
        v87 = v56;
        v88 = v57;
        *v89 = *(v1 + 241);
        *&v89[3] = *(v1 + 61);
        v90 = v59;
        v91 = v58;
        v38 = *(v1 + 273);
        v92 = *v23;
        *v93 = v38;
        *&v93[15] = *(v1 + 36);
        v94 = -1;
        v39 = *(v1 + 313);
        v95 = *v32;
        *v96 = v39;
        *&v96[15] = *(v1 + 41);
        v97 = v25;
        v98 = v26;
        v40 = *(v1 + 45);
        *v99 = *(v1 + 345);
        *&v99[15] = v40;
        v100 = v28;
        v101 = v29;
        if (v26)
        {
          v41 = 0;
        }

        else
        {
          v41 = v25;
        }

        v64 = v3;
        v65 = v63;
        v66 = v62;
        v67 = v61;
        v68 = v4;
        v69 = v60;
        sub_14A79C(v41, v63, &v64);
        if (v42)
        {
          goto LABEL_14;
        }

        v44 = v1[7];
        v76 = v1[6];
        v77 = v44;
        v78 = v1[8];
        v79 = *(v1 + 18);
        v45 = v1[3];
        v72 = v1[2];
        v73 = v45;
        v46 = v1[5];
        v74 = v1[4];
        v75 = v46;
        v47 = v1[1];
        v70 = *v1;
        v71 = v47;
        v80 = v55;
        v81 = *(v1 + 153);
        v82 = *(v1 + 169);
        *v83 = *(v1 + 185);
        *&v83[15] = *(v1 + 25);
        v84 = v52;
        v85 = v53;
        v86 = v54;
        v87 = v56;
        v88 = v57;
        *v89 = *(v1 + 241);
        *&v89[3] = *(v1 + 61);
        v90 = v59;
        v91 = v58;
        v48 = *(v1 + 273);
        v92 = *v23;
        *v93 = v48;
        *&v93[15] = *(v1 + 36);
        v94 = -1;
        v49 = *(v1 + 313);
        v95 = *v32;
        *v96 = v49;
        *&v96[15] = *(v1 + 41);
        v97 = v25;
        v98 = v26;
        v50 = *(v1 + 45);
        *v99 = *(v1 + 345);
        *&v99[15] = v50;
        v100 = v28;
        v101 = v29;
        if (v29)
        {
          v51 = 0;
        }

        else
        {
          v51 = v28;
        }

        v64 = v3;
        v65 = v63;
        v66 = v62;
        v67 = v61;
        v68 = v4;
        v69 = v60;
        sub_14A79C(v51, v62, &v64);
      }
    }
  }

  return v31 & 1;
}

uint64_t BookHistory.affinity(with:)(__int128 *a1)
{
  BookHistory.internalAffinitySource(with:)(a1, v11);
  v1 = v12;
  if (v12 >> 1 == 0xFFFFFFFF)
  {
    return 0;
  }

  v3 = v11[0];
  v4 = v11[1];
  v6 = v11[2];
  v5 = v11[3];
  v8 = v11[4];
  v7 = v11[5];
  if ((v12 >> 62) > 2)
  {
    v9 = v11[0];
  }

  else
  {
    sub_2B0C(&qword_229488, &qword_1BC520);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BCA80;
    *(v9 + 32) = v3;
    *(v9 + 40) = v4;
    *(v9 + 48) = v6;
    *(v9 + 56) = v5;
    *(v9 + 64) = v8;
    *(v9 + 72) = v7;
    *(v9 + 80) = v1 & 1;
  }

  v10 = Array<A>.affinity.getter(v9);

  return v10;
}

uint64_t sub_1481B0@<X0>(double a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  if (a3)
  {
    v11 = 0;
    v12 = 0xA300000000000000;
    result = 9732322;
  }

  else
  {
    v11 = a2;
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BCA80;
    *(v14 + 56) = &type metadata for Double;
    *(v14 + 64) = &protocol witness table for Double;
    *(v14 + 32) = a1;
    result = sub_1B47F4();
  }

  v15 = a1 * a5;
  *a4 = result;
  *(a4 + 8) = v12;
  if (a3)
  {
    v15 = 0.0;
  }

  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = v15;
  *(a4 + 40) = v11;
  *(a4 + 48) = a3 & 1;
  return result;
}

void *BookHistory.pruned(to:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 1);
  v123 = *v2;
  v5 = *(v2 + 16);
  v6 = *(v2 + 3);
  v102 = *(v2 + 32);
  v7 = *(v2 + 6);
  v91 = v2[7];
  v92 = v2[5];
  v89 = v2[9];
  v90 = v2[8];
  v124 = *(v2 + 80);
  v8 = v2[11];
  v9 = v2[12];
  v10 = *(v2 + 14);
  v86 = *(v2 + 120);
  v87 = *(v2 + 104);
  v11 = *(v2 + 16);
  v12 = *(v2 + 18);
  v82 = *(v2 + 152);
  v83 = *(v2 + 136);
  v80 = *(v2 + 168);
  v105 = *(v2 + 20);
  v107 = *(v2 + 22);
  v78 = *(v2 + 184);
  v76 = *(v2 + 200);
  v13 = *(v2 + 26);
  v97 = v2[28];
  v98 = v2[27];
  v14 = *(v2 + 33);
  v109 = *(v2 + 24);
  v111 = *(v2 + 31);
  v95 = v2[34];
  v96 = v2[29];
  v93 = v2[36];
  v94 = v2[35];
  v99 = *(v2 + 296);
  v100 = *(v2 + 240);
  v73 = *(v2 + 312);
  v74 = *(v2 + 256);
  v113 = *(v2 + 38);
  v115 = *(v2 + 40);
  v71 = *(v2 + 344);
  v72 = *(v2 + 328);
  v117 = v2[42];
  v119 = v2[44];
  v121 = v2[46];
  v69 = *(v2 + 376);
  v70 = *(v2 + 360);
  v15 = sub_2A978(0, a1);
  if (v15)
  {
    v16 = v4;
  }

  else
  {
    v16 = 0.0;
  }

  v104 = v16;
  v17 = !v15;
  v103 = sub_2A978(2u, a1);
  if (v103)
  {
    v18 = v6;
  }

  else
  {
    v18 = 0.0;
  }

  v101 = v18;
  if (!sub_2A978(1u, a1))
  {
    v91 = 0;
    v92 = 0;
    v89 = 0;
    v90 = 0;
    v7 = 0.0;
    v124 = 255;
  }

  v19 = v17 | v5;
  v20 = sub_2A978(3u, a1);
  v85 = v20;
  if (v20)
  {
    v21 = v8;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v9;
  }

  else
  {
    v22 = 0;
  }

  v67 = v22;
  v68 = v21;
  v23 = sub_2A978(4u, a1);
  if (v23)
  {
    v24 = v10;
  }

  else
  {
    v24 = 0.0;
  }

  v88 = v24;
  v25 = sub_2A978(5u, a1);
  if (v25)
  {
    v26 = v11;
  }

  else
  {
    v26 = 0.0;
  }

  v84 = v26;
  v27 = sub_2A978(6u, a1);
  if (v27)
  {
    v28 = v12;
  }

  else
  {
    v28 = 0.0;
  }

  v81 = v28;
  v79 = sub_2A978(7u, a1);
  v29 = v105;
  if (!v79)
  {
    v29 = 0.0;
  }

  v106 = v29;
  v77 = sub_2A978(8u, a1);
  v30 = v107;
  if (!v77)
  {
    v30 = 0.0;
  }

  v108 = v30;
  v75 = sub_2A978(9u, a1);
  v31 = v109;
  if (!v75)
  {
    v31 = 0.0;
  }

  v110 = v31;
  if (!sub_2A978(0xAu, a1))
  {
    v97 = 0;
    v98 = 0;
    v96 = 0;
    v100 = 255;
    v13 = 0.0;
  }

  v32 = sub_2A978(0xBu, a1);
  v33 = v111;
  if (!v32)
  {
    v33 = 0.0;
  }

  v112 = v33;
  if (!sub_2A978(0xCu, a1))
  {
    v94 = 0;
    v95 = 0;
    v93 = 0;
    v99 = 255;
    v14 = 0.0;
  }

  v34 = sub_2A978(0xDu, a1);
  v35 = v113;
  if (!v34)
  {
    v35 = 0.0;
  }

  v114 = v35;
  v36 = sub_2A978(0xEu, a1);
  v37 = v115;
  if (!v36)
  {
    v37 = 0.0;
  }

  v116 = v37;
  v38 = sub_2A978(0xFu, a1);
  v39 = v117;
  if (!v38)
  {
    v39 = 0;
  }

  v118 = v39;
  v40 = sub_2A978(0x10u, a1);
  v41 = v119;
  if (!v40)
  {
    v41 = 0;
  }

  v120 = v41;
  v42 = sub_2A978(0x11u, a1);
  if (v42)
  {
    v43 = v121;
  }

  else
  {
    v43 = 0;
  }

  if ((v19 & 1) == 0 && (v104 < 0.0 || v104 > 1.0))
  {
    sub_E1C20();
    swift_allocError();
    v45 = 0;
    *v44 = v123;
    *(v44 + 8) = v104;
    goto LABEL_73;
  }

  v141 = v19 & 1;
  if (((!v103 | v102) & 1) == 0 && (v101 < 0.0 || v101 > 1.0))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v101;
    v45 = 1;
    goto LABEL_73;
  }

  v140 = (!v103 | v102) & 1;
  if (v124 != 255 && v7 < 0.0)
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v7;
    v45 = 2;
LABEL_73:
    *(v44 + 16) = v45;
    swift_willThrow();
    if (qword_228358 != -1)
    {
      swift_once();
    }

    v52 = sub_1B4644();
    sub_50E58(v52, qword_260C80);
    swift_errorRetain();
    v53 = sub_1B4624();
    v54 = sub_1B4D94();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&dword_0, v53, v54, "failed to prune with error %@", v55, 0xCu);
      sub_42F48(v56, &qword_22B250, &qword_1C3850);
    }

    else
    {
    }

    goto LABEL_78;
  }

  v46 = !v23 | v86;
  v139 = (!v85 | v87) & 1;
  if (!(v46 & 1 | (v88 >= 0.0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v88;
    v45 = 4;
    goto LABEL_73;
  }

  v47 = !v25 | v83;
  v138 = v46 & 1;
  if (!(v47 & 1 | (v84 >= 0.0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v84;
    v45 = 5;
    goto LABEL_73;
  }

  v48 = !v27 | v82;
  v137 = v47 & 1;
  if (!(v48 & 1 | (v81 >= 0.0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v81;
    v45 = 6;
    goto LABEL_73;
  }

  v49 = !v79 | v80;
  v136 = v48 & 1;
  if (!(v49 & 1 | (v106 >= 0.0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v106;
    v45 = 7;
    goto LABEL_73;
  }

  v50 = !v77 | v78;
  v135 = v49 & 1;
  if (!(v50 & 1 | (v108 >= 0.0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v108;
    v45 = 8;
    goto LABEL_73;
  }

  v51 = !v75 | v76;
  v134 = v50 & 1;
  if (!(v51 & 1 | (v110 >= 0.0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v110;
    v45 = 9;
    goto LABEL_73;
  }

  v133 = v51 & 1;
  if (v100 != 255 && v13 < 0.0)
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v13;
    v45 = 10;
    goto LABEL_73;
  }

  v59 = !v32 | v74;
  if (!(v59 & 1 | (v112 >= 0.0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v112;
    v45 = 11;
    goto LABEL_73;
  }

  v132 = v59 & 1;
  if (v99 != 255 && v14 < 0.0)
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v14;
    v45 = 12;
    goto LABEL_73;
  }

  v60 = !v34 | v73;
  v61 = v114;
  if (!(v60 & 1 | (v114 >= 0.0)) || (v62 = !v36 | v72, v131 = v60 & 1, v61 = v116, !(v62 & 1 | (v116 >= 0.0))))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v61;
    v45 = 13;
    goto LABEL_73;
  }

  v63 = !v38 | v71;
  v130 = v62 & 1;
  if (!(v63 & 1 | (v118 >= 0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v118;
    v45 = 15;
    goto LABEL_73;
  }

  v64 = !v40 | v70;
  v129 = v63 & 1;
  if (!(v64 & 1 | (v120 >= 0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v120;
    v45 = 16;
    goto LABEL_73;
  }

  v65 = !v42 | v69;
  v128 = v64 & 1;
  if (!(v65 & 1 | (v43 >= 0)))
  {
    sub_E1C20();
    swift_allocError();
    *v44 = v123;
    *(v44 + 8) = v43;
    v45 = 17;
    goto LABEL_73;
  }

  v66 = v65 & 1;
  v127 = v65 & 1;
  *__src = v123;
  *&__src[1] = v104;
  LOBYTE(__src[2]) = v141;
  *&__src[3] = v101;
  LOBYTE(__src[4]) = v140;
  __src[5] = v92;
  *&__src[6] = v7;
  __src[7] = v91;
  __src[8] = v90;
  __src[9] = v89;
  LOBYTE(__src[10]) = v124;
  __src[11] = v68;
  __src[12] = v67;
  LOBYTE(__src[13]) = v139;
  *&__src[14] = v88;
  LOBYTE(__src[15]) = v138;
  *&__src[16] = v84;
  LOBYTE(__src[17]) = v137;
  *&__src[18] = v81;
  LOBYTE(__src[19]) = v136;
  *&__src[20] = v106;
  LOBYTE(__src[21]) = v135;
  *&__src[22] = v108;
  LOBYTE(__src[23]) = v134;
  *&__src[24] = v110;
  LOBYTE(__src[25]) = v133;
  *&__src[26] = v13;
  __src[27] = v98;
  __src[28] = v97;
  __src[29] = v96;
  LOBYTE(__src[30]) = v100;
  *&__src[31] = v112;
  LOBYTE(__src[32]) = v132;
  *&__src[33] = v14;
  __src[34] = v95;
  __src[35] = v94;
  __src[36] = v93;
  LOBYTE(__src[37]) = v99;
  *&__src[38] = v114;
  LOBYTE(__src[39]) = v131;
  *&__src[40] = v116;
  LOBYTE(__src[41]) = v130;
  __src[42] = v118;
  LOBYTE(__src[43]) = v129;
  __src[44] = v120;
  LOBYTE(__src[45]) = v128;
  __src[46] = v43;
  LOBYTE(__src[47]) = v65 & 1;
  if ((BookHistory.isEmpty.getter() & 1) == 0)
  {
    *v125 = v123;
    *&v125[1] = v104;
    LOBYTE(v125[2]) = v141;
    *&v125[3] = v101;
    LOBYTE(v125[4]) = v140;
    v125[5] = v92;
    v125[7] = v91;
    v125[8] = v90;
    v125[9] = v89;
    LOBYTE(v125[10]) = v124;
    v125[11] = v68;
    v125[12] = v67;
    LOBYTE(v125[13]) = v139;
    *&v125[14] = v88;
    *&v125[6] = v7;
    LOBYTE(v125[15]) = v138;
    *&v125[16] = v84;
    LOBYTE(v125[17]) = v137;
    *&v125[18] = v81;
    LOBYTE(v125[19]) = v136;
    *&v125[20] = v106;
    LOBYTE(v125[21]) = v135;
    *&v125[22] = v108;
    LOBYTE(v125[23]) = v134;
    *&v125[24] = v110;
    LOBYTE(v125[25]) = v133;
    *&v125[26] = v13;
    v125[27] = v98;
    v125[28] = v97;
    v125[29] = v96;
    LOBYTE(v125[30]) = v100;
    *&v125[31] = v112;
    LOBYTE(v125[32]) = v132;
    *&v125[33] = v14;
    v125[34] = v95;
    v125[35] = v94;
    v125[36] = v93;
    LOBYTE(v125[37]) = v99;
    *&v125[38] = v114;
    LOBYTE(v125[39]) = v131;
    *&v125[40] = v116;
    LOBYTE(v125[41]) = v130;
    v125[42] = v118;
    LOBYTE(v125[43]) = v129;
    v125[44] = v120;
    LOBYTE(v125[45]) = v128;
    v125[46] = v43;
    LOBYTE(v125[47]) = v66;
    AuthorRecommendationSource.id.getter(v125);
    memcpy(__src, v125, 0x179uLL);
    return memcpy(a2, __src, 0x179uLL);
  }

LABEL_78:
  sub_5CB94(__src);
  return memcpy(a2, __src, 0x179uLL);
}

void BookHistory.internalAffinitySource(with:)(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v185 = *a1;
  v186 = v4;
  v5 = a1[3];
  v187 = a1[2];
  v188 = v5;
  v6 = *(a1 + 8);
  v7 = *(a1 + 9);
  v8 = *(a1 + 10);
  v9 = *(a1 + 12);
  v80 = *(a1 + 11);
  v81 = *(a1 + 13);
  v10 = *(a1 + 14);
  v11 = *(a1 + 15);
  v12 = *(a1 + 16);
  v13 = *(a1 + 17);
  v14 = a1[10];
  v181 = a1[9];
  v182 = v14;
  v15 = a1[12];
  v183 = a1[11];
  v184 = v15;
  v16 = *(a1 + 27);
  v79 = *(a1 + 26);
  v17 = a1[17];
  v177 = a1[16];
  v178 = v17;
  v179 = a1[18];
  v180 = *(a1 + 38);
  v18 = a1[15];
  v175 = a1[14];
  v176 = v18;
  v19 = *(a1 + 39);
  *(v174 + 11) = *(a1 + 347);
  v20 = a1[21];
  v173 = a1[20];
  v174[0] = v20;
  v21 = v2[1];
  v202 = *v2;
  v203 = v21;
  v22 = *(v2 + 11);
  v207 = *(v2 + 10);
  v23 = v2[4];
  v205 = v2[3];
  v206 = v23;
  v204 = v2[2];
  v96 = *(v2 + 12);
  v97 = v22;
  v99 = *(v2 + 104);
  v24 = *(v2 + 105);
  *(v201 + 3) = *(v2 + 27);
  v201[0] = v24;
  v25 = *(v2 + 14);
  v26 = *(v2 + 120);
  v27 = *(v2 + 121);
  *(v200 + 3) = *(v2 + 31);
  v200[0] = v27;
  v102 = *(v2 + 16);
  v103 = v25;
  LOBYTE(v25) = *(v2 + 136);
  v28 = *(v2 + 137);
  *(v199 + 7) = *(v2 + 18);
  v199[0] = v28;
  v87 = *(v2 + 152);
  v29 = *(v2 + 153);
  v30 = *(v2 + 169);
  v31 = *(v2 + 185);
  v32 = *(v2 + 26);
  *(v198 + 15) = *(v2 + 25);
  v198[0] = v31;
  v197 = v30;
  v196 = v29;
  v94 = *(v2 + 27);
  v95 = v32;
  v93 = *(v2 + 28);
  v86 = *(v2 + 29);
  v92 = *(v2 + 240);
  LODWORD(v28) = *(v2 + 241);
  *(v195 + 3) = *(v2 + 61);
  v195[0] = v28;
  v91 = *(v2 + 31);
  v33 = *(v2 + 256);
  v34 = *(v2 + 257);
  v35 = *(v2 + 273);
  *&v194[15] = *(v2 + 36);
  *v194 = v35;
  v193 = v34;
  v85 = *(v2 + 296);
  v36 = *(v2 + 297);
  v37 = *(v2 + 313);
  v101 = *(v2 + 42);
  *(v192 + 15) = *(v2 + 41);
  v192[0] = v37;
  v191 = v36;
  v89 = *(v2 + 344);
  v90 = v33;
  LODWORD(v28) = *(v2 + 345);
  *(v190 + 3) = *(v2 + 87);
  v190[0] = v28;
  v98 = *(v2 + 44);
  v100 = *(v2 + 360);
  LODWORD(v28) = *(v2 + 361);
  *(v189 + 3) = *(v2 + 91);
  v189[0] = v28;
  v88 = LOBYTE(v25);
  if ((LOBYTE(v25) & 1) == 0)
  {
    if ((v26 & 1) != 0 || v102 < v103)
    {
      LOBYTE(v132) = 0;
      *a2 = xmmword_1CF300;
      *(a2 + 16) = v12;
      *(a2 + 24) = v13;
      *(a2 + 32) = v12;
      *(a2 + 40) = v102;
      *(a2 + 48) = 0;
      *(a2 + 55) = 0;
      *(a2 + 53) = 0;
      *(a2 + 49) = 0;
      return;
    }

    goto LABEL_50;
  }

  if ((v26 & 1) == 0)
  {
LABEL_50:
    LOBYTE(v132) = 0;
    *a2 = xmmword_1CF300;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v10;
    *(a2 + 40) = v103;
    *(a2 + 48) = 0;
    *(a2 + 53) = 0;
    *(a2 + 49) = 0;
    *(a2 + 55) = 64;
    return;
  }

  if ((v99 & 1) == 0)
  {
    sub_1481B0(v97, v96, 0, &v132, v79, v16);
    v56 = v132;
    v57 = v133;
    v58 = v134;
    LOBYTE(v132) = v135;
    v59 = v135 & 1 | 0x8000000000000000;
    *a2 = v56;
    *(a2 + 16) = v57;
    *(a2 + 32) = v58;
    *(a2 + 48) = v59;
    *(a2 + 56) = v97;
    *(a2 + 64) = v96;
    return;
  }

  v74 = a2;
  v38 = 0;
  v39 = v32;
  v40 = v19 * v93 + v32;
  v84 = *(v2 + 46);
  if (v40 > v94)
  {
    v40 = v94;
  }

  if (v92)
  {
    v39 = v40;
  }

  v76 = (v92 != 255) & (v33 | (v39 < v91));
  v83 = *(v2 + 376);
  v41 = _swiftEmptyArrayStorage;
  v75 = v80;
  v77 = v8;
  v78 = v7;
  v82 = v26;
  do
  {
    v137 = v207;
    *&v141[3] = *(v201 + 3);
    *v141 = v201[0];
    *v144 = v200[0];
    *&v144[3] = *(v200 + 3);
    *v147 = v199[0];
    *&v147[7] = *(v199 + 7);
    *&v151[15] = *(v198 + 15);
    *&v157[3] = *(v195 + 3);
    *v157 = v195[0];
    *&v161[15] = *&v194[15];
    *&v164[15] = *(v192 + 15);
    *&v167[3] = *(v190 + 3);
    *v167 = v190[0];
    *&v170[3] = *(v189 + 3);
    *v170 = v189[0];
    v127 = v180;
    v42 = *(&off_20EA98 + v38 + 32);
    v134 = v204;
    v135 = v205;
    v136 = v206;
    v132 = v202;
    v133 = v203;
    v138 = v97;
    v139 = v96;
    v140 = v99;
    v142 = v103;
    v143 = v26;
    v145 = v102;
    v146 = v88;
    v148 = v87;
    *v151 = v198[0];
    v150 = v197;
    v149 = v196;
    v152 = v95;
    v153 = v94;
    v154 = v93;
    v155 = v86;
    v156 = v92;
    v158 = v91;
    v159 = v90;
    v160 = v193;
    *v161 = *v194;
    v162 = v85;
    v163 = v191;
    *v164 = v192[0];
    v165 = v101;
    v166 = v89;
    v168 = v98;
    v169 = v100;
    v171 = v84;
    v172 = v83;
    v104 = v42;
    v131 = v42;
    v105[0] = v185;
    v105[1] = v186;
    v105[2] = v187;
    v105[3] = v188;
    v106 = v6;
    v107 = v7;
    v108 = v8;
    v109 = v80;
    v110 = v9;
    v111 = v81;
    v112 = v10;
    v113 = v11;
    v114 = v12;
    v115 = v13;
    v116 = v181;
    v117 = v182;
    v118 = v183;
    v119 = v184;
    v120 = v79;
    v121 = v16;
    v124 = v177;
    v125 = v178;
    v126 = v179;
    v122 = v175;
    v123 = v176;
    v128 = v19;
    *&v130[11] = *(v174 + 11);
    v129 = v173;
    *v130 = v174[0];
    v43 = BookHistory.affinityInfosExcludingDecline(for:with:)(&v131, v105);
    if ((v87 & 1) == 0)
    {
      goto LABEL_36;
    }

    v134 = v204;
    v135 = v205;
    v136 = v206;
    v132 = v202;
    v133 = v203;
    v137 = v207;
    v138 = v97;
    v139 = v96;
    v140 = v99;
    *&v141[3] = *(v201 + 3);
    *v141 = v201[0];
    v142 = v103;
    v143 = v82;
    *v144 = v200[0];
    *&v144[3] = *(v200 + 3);
    v145 = v102;
    v146 = v88;
    *v147 = v199[0];
    *&v147[7] = *(v199 + 7);
    v148 = v87;
    *&v151[15] = *(v198 + 15);
    *v151 = v198[0];
    v150 = v197;
    v149 = v196;
    v152 = v95;
    v153 = v94;
    v154 = v93;
    v155 = v86;
    v156 = v92;
    *&v157[3] = *(v195 + 3);
    *v157 = v195[0];
    v158 = v91;
    v159 = v90;
    *&v161[15] = *&v194[15];
    v160 = v193;
    *v161 = *v194;
    v162 = v85;
    *&v164[15] = *(v192 + 15);
    v163 = v191;
    *v164 = v192[0];
    v165 = v101;
    v166 = v89;
    *&v167[3] = *(v190 + 3);
    *v167 = v190[0];
    v168 = v98;
    v169 = v100;
    *&v170[3] = *(v189 + 3);
    *v170 = v189[0];
    v171 = v84;
    v172 = v83;
    if (sub_DF2A8() & 1 | (v85 != 255) | v76 & 1)
    {
      goto LABEL_41;
    }

    if (!(v89 & 1 | (v101 < 1)))
    {
      if (!v78)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        return;
      }

      if (!(v101 % v78))
      {
        v46 = round(pow(v9, (v101 / v78 - 1)) * v75);
        if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_69;
        }

        if (v46 <= -9.22337204e18)
        {
          goto LABEL_70;
        }

        if (v46 >= 9.22337204e18)
        {
          goto LABEL_71;
        }

        v47 = v46;
        if (v81 < v46)
        {
          v47 = v81;
        }

        if (v100)
        {
          if (v47 > 0)
          {
            goto LABEL_36;
          }
        }

        else if (v98 < v47)
        {
          goto LABEL_36;
        }
      }
    }

    if (!(v83 & 1 | (v84 < 1)))
    {
      if (!v77)
      {
        goto LABEL_68;
      }

      if (!(v84 % v77))
      {
        v44 = round(pow(v9, (v84 / v77 - 1)) * v75);
        if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_72;
        }

        if (v44 <= -9.22337204e18)
        {
          goto LABEL_73;
        }

        if (v44 >= 9.22337204e18)
        {
          goto LABEL_74;
        }

        v45 = v44;
        if (v81 < v44)
        {
          v45 = v81;
        }

        if (v100)
        {
          if (v45 < 1)
          {
            goto LABEL_41;
          }
        }

        else if (v98 >= v45)
        {
          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_3413C(0, *(v43 + 2) + 1, 1, v43);
        }

        v49 = *(v43 + 2);
        v48 = *(v43 + 3);
        if (v49 >= v48 >> 1)
        {
          v43 = sub_3413C((v48 > 1), v49 + 1, 1, v43);
        }

        *(v43 + 2) = v49 + 1;
        v50 = &v43[56 * v49];
        *(v50 + 4) = 1702195828;
        *(v50 + 5) = 0xE400000000000000;
        *(v50 + 6) = v6;
        *(v50 + 7) = 0x7FEFFFFFFFFFFFFFLL;
        *(v50 + 8) = v6;
        *(v50 + 9) = 0;
        v50[80] = 0;
      }
    }

LABEL_41:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_34008(0, v41[2] + 1, 1, v41);
    }

    v52 = v41[2];
    v51 = v41[3];
    v53 = v52 + 1;
    v8 = v77;
    v7 = v78;
    if (v52 >= v51 >> 1)
    {
      v55 = sub_34008((v51 > 1), v52 + 1, 1, v41);
      v8 = v77;
      v7 = v78;
      v41 = v55;
    }

    ++v38;
    v41[2] = v53;
    v54 = &v41[2 * v52];
    *(v54 + 32) = v104;
    v54[5] = v43;
    v26 = v82;
  }

  while (v38 != 8);
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = v41 + 5;
  v64 = -1.79769313e308;
  while (2)
  {
    v65 = &v63[2 * v62];
    v66 = v62;
    while (1)
    {
      if (v66 > v52)
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v62 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        goto LABEL_66;
      }

      v67 = *v65;
      v68 = *(v65 - 8);

      v70 = COERCE_DOUBLE(Array<A>.affinity.getter(v69));
      if ((v71 & 1) == 0)
      {
        v72 = v70;
        if (v64 < v70)
        {
          break;
        }
      }

      ++v66;
      v65 += 2;
      if (v62 == v53)
      {
        v68 = v61;
        v67 = v60;
        goto LABEL_61;
      }
    }

    v64 = v72;
    v60 = v67;
    v61 = v68;
    v63 = v41 + 5;
    if (v62 != v53)
    {
      continue;
    }

    break;
  }

LABEL_61:

  if (v67)
  {
    *v74 = v67;
    *(v74 + 8) = v68;
    v73 = 0xC000000000000000;
  }

  else
  {
    *(v74 + 16) = 0u;
    *(v74 + 32) = 0u;
    *v74 = 0u;
    v73 = 0x1FFFFFFFELL;
    *(v74 + 56) = 0;
    *(v74 + 64) = 0;
  }

  *(v74 + 48) = v73;
}

char *BookHistory.affinityInfos(for:with:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v4;
  v5 = *(a2 + 48);
  v14[2] = *(a2 + 32);
  v14[3] = v5;
  v6 = *(a2 + 64);
  memcpy(v16, (a2 + 72), sizeof(v16));
  v20 = v3;
  v7 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v7;
  v8 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v8;
  v18 = v6;
  memcpy(v19, (a2 + 72), sizeof(v19));
  v9 = BookHistory.affinityInfosExcludingDecline(for:with:)(&v20, v17);
  v15 = v6;
  if (sub_147C40(v14))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_3413C(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_3413C((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[56 * v11];
    *(v12 + 4) = 1702195828;
    *(v12 + 5) = 0xE400000000000000;
    *(v12 + 6) = v6;
    *(v12 + 7) = 0x7FEFFFFFFFFFFFFFLL;
    *(v12 + 8) = v6;
    *(v12 + 9) = 0;
    v12[80] = 0;
  }

  return v9;
}

char *BookHistory.affinityInfosExcludingDecline(for:with:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v5 = *a2;
  v4 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 144);
  v13 = *(a2 + 152);
  v14 = *(a2 + 160);
  v138 = *(a2 + 168);
  v16 = *(a2 + 176);
  v15 = *(a2 + 184);
  v17 = *(a2 + 224);
  v18 = *(a2 + 232);
  v19 = *(a2 + 240);
  v20 = *(a2 + 248);
  v21 = *(a2 + 256);
  v22 = *(a2 + 264);
  v24 = *(a2 + 312);
  v23 = *(a2 + 320);
  v25 = *v2;
  v26 = *(v2 + 8);
  v27 = *(v2 + 16);
  v28 = *(v2 + 24);
  v29 = *(v2 + 32);
  v213 = v29;
  v30 = *(v2 + 40);
  v31 = *(v2 + 48);
  v32 = *(v2 + 56);
  v33 = *(v2 + 64);
  v34 = *(v2 + 80);
  v35 = *(v2 + 160);
  v36 = *(v2 + 168);
  v212 = v36;
  v37 = *(v2 + 192);
  v38 = *(v2 + 200);
  v39 = *(v2 + 208);
  v40 = *(v2 + 216);
  v41 = *(v2 + 224);
  v42 = *(v2 + 240);
  v43 = *(v2 + 248);
  v44 = *(v2 + 256);
  v46 = *(v2 + 264);
  v45 = *(v2 + 272);
  v47 = *(v2 + 280);
  v48 = *(v2 + 296);
  v49 = *(v2 + 304);
  v50 = *(v2 + 312);
  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        if (v42 == 255)
        {
          v68 = v20;
          v71 = 0.0;
          v70 = 2;
        }

        else
        {
          v67 = *(v2 + 208);
          if (v42)
          {
            v67 = *(v2 + 216);
            if (v24 * v41 + v39 <= v40)
            {
              v67 = v24 * v41 + v39;
            }
          }

          v68 = v20;
          v69 = *(v2 + 248);
          if (v44 & 1 | (v67 < v43))
          {
            v70 = 1;
          }

          else
          {
            v70 = 2;
          }

          if (v44 & 1 | (v67 < v43))
          {
            v71 = v67;
          }

          else
          {
            v71 = 0.0;
          }
        }

        sub_2B0C(&qword_229488, &qword_1BC520);
        result = swift_allocObject();
        *(result + 1) = xmmword_1BCA80;
        v103 = 1702195828;
        if ((v70 & 1) == 0)
        {
          v103 = 0x65736C6166;
        }

        v104 = 0xE500000000000000;
        if (v70)
        {
          v104 = 0xE400000000000000;
        }

        v61 = v19;
        if ((v70 & 1) == 0)
        {
          v61 = 0;
        }

        if (v70 == 2)
        {
          v103 = 9732322;
          v104 = 0xA300000000000000;
        }

        *(result + 4) = v103;
        *(result + 5) = v104;
        v57 = v70 == 2;
        if (v70 == 2)
        {
          v60 = 0.0;
        }

        else
        {
          v60 = v71;
        }

        *(result + 6) = v19;
        *(result + 7) = v68;
        if (v70 == 2)
        {
          v61 = 0;
        }
      }

      else
      {
        sub_2B0C(&qword_229488, &qword_1BC520);
        result = swift_allocObject();
        *(result + 1) = xmmword_1BCA80;
        v57 = v50 & 1;
        if (v50)
        {
          v60 = 0.0;
        }

        else
        {
          v60 = v49;
        }

        v100 = 1702195828;
        if (v50)
        {
          v100 = 9732322;
        }

        v101 = 0xE400000000000000;
        if (v50)
        {
          v101 = 0xA300000000000000;
        }

        *(result + 4) = v100;
        *(result + 5) = v101;
        v61 = v21;
        *(result + 6) = v21;
        *(result + 7) = v22;
        if (v50)
        {
          v61 = 0;
        }
      }
    }

    else
    {
      if (v3 != 4)
      {
        if (v48 == 255)
        {
          v94 = v18;
          v46 = 0.0;
          v95 = 0xA300000000000000;
          v96 = 9732322;
        }

        else if ((v48 & 1) != 0 && (v46 = v23 * v47 + v46, v46 > v45))
        {
          v94 = v18;
          v95 = 0xE400000000000000;
          v96 = 1702195828;
          v46 = v45;
        }

        else
        {
          v94 = v18;
          v95 = 0xE400000000000000;
          v96 = 1702195828;
        }

        sub_2B0C(&qword_229488, &qword_1BC520);
        result = swift_allocObject();
        *(result + 1) = xmmword_1BCA80;
        v57 = v48 == 255;
        v105 = v17;
        if (v48 == 255)
        {
          v105 = 0;
        }

        *(result + 4) = v96;
        *(result + 5) = v95;
        *(result + 6) = v17;
        *(result + 7) = v94;
        *(result + 8) = v105;
        *(result + 9) = v46;
        goto LABEL_92;
      }

      sub_2B0C(&qword_229488, &qword_1BC520);
      result = swift_allocObject();
      *(result + 1) = xmmword_1BCA80;
      v57 = v38 & 1;
      v58 = 1702195828;
      if (v38)
      {
        v58 = 9732322;
      }

      v59 = 0xE400000000000000;
      if (v38)
      {
        v59 = 0xA300000000000000;
      }

      *(result + 4) = v58;
      *(result + 5) = v59;
      if (v38)
      {
        v60 = 0.0;
      }

      else
      {
        v60 = v37;
      }

      if (v38)
      {
        v61 = 0;
      }

      else
      {
        v61 = v14;
      }

      *(result + 6) = v14;
      *(result + 7) = v138;
    }

    goto LABEL_91;
  }

  v135 = v28;
  v136 = v14;
  v51 = v12;
  v52 = *(v2 + 176);
  v137 = *(v2 + 184);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v139 = v33;
      v62 = v24;
      v63 = v16;
      v64 = v15;
      sub_2B0C(&qword_229488, &qword_1BC520);
      result = swift_allocObject();
      v65 = 0.0;
      *(result + 1) = xmmword_1BCA80;
      v66 = 2;
      if (v34 != 255 && (v137 & 1) != 0)
      {
        v66 = (v38 & 1) != 0 ? 1 : 2;
        v65 = (v38 & 1) != 0 ? v31 : 0.0;
        if (v38 & 1) != 0 && (v34)
        {
          if (v62 * v139 + v31 <= v32)
          {
            v65 = v62 * v139 + v31;
            v66 = 1;
          }

          else
          {
            v66 = 1;
            v65 = v32;
          }
        }
      }

      v119 = 1702195828;
      if ((v66 & 1) == 0)
      {
        v119 = 0x65736C6166;
      }

      v120 = 0xE500000000000000;
      if (v66)
      {
        v120 = 0xE400000000000000;
      }

      v121 = v63;
      if ((v66 & 1) == 0)
      {
        v121 = 0;
      }

      v122 = v66 == 2;
      v123 = 9732322;
      if (!v122)
      {
        v123 = v119;
      }

      v124 = 0xA300000000000000;
      if (!v122)
      {
        v124 = v120;
      }

      *(result + 4) = v123;
      *(result + 5) = v124;
      if (v122)
      {
        v65 = 0.0;
        v125 = 0;
      }

      else
      {
        v125 = v121;
      }

      *(result + 6) = v63;
      *(result + 7) = v64;
      *(result + 8) = v125;
      *(result + 9) = v65;
      v57 = v122;
      goto LABEL_92;
    }

    v97 = *(v2 + 176);
    sub_2B0C(&qword_229488, &qword_1BC520);
    result = swift_allocObject();
    *(result + 1) = xmmword_1BCA80;
    v57 = v137 & 1;
    v98 = 1702195828;
    if (v137)
    {
      v98 = 9732322;
    }

    v99 = 0xE400000000000000;
    if (v137)
    {
      v99 = 0xA300000000000000;
    }

    *(result + 4) = v98;
    *(result + 5) = v99;
    if (v137)
    {
      v60 = 0.0;
    }

    else
    {
      v60 = v97;
    }

    if (v137)
    {
      v61 = 0;
    }

    else
    {
      v61 = v51;
    }

    *(result + 6) = v51;
    *(result + 7) = v13;
LABEL_91:
    *(result + 8) = v61;
    *(result + 9) = v60;
LABEL_92:
    result[80] = v57;
    return result;
  }

  if (v3)
  {
    v72 = v35;
    *v199 = *(v2 + 257);
    *v205 = *(v2 + 297);
    v168 = v25;
    v169 = v26;
    LOBYTE(v170) = v27;
    *(&v170 + 1) = *(v2 + 17);
    HIDWORD(v170) = *(v2 + 20);
    LOBYTE(v172) = v29;
    *(&v172 + 1) = *(v2 + 33);
    HIDWORD(v172) = *(v2 + 36);
    v173 = v30;
    v174 = v31;
    v175 = v32;
    v177 = v34;
    *v184 = *(v2 + 169);
    *&v187[3] = *(v2 + 188);
    *v187 = *(v2 + 185);
    *&v190[3] = *(v2 + 204);
    *v190 = *(v2 + 201);
    *&v196[3] = *(v2 + 244);
    *v196 = *(v2 + 241);
    v179 = *(v2 + 97);
    v180 = *(v2 + 113);
    *v181 = *(v2 + 129);
    v178 = *(v2 + 81);
    v183 = v36;
    *&v184[3] = *(v2 + 172);
    v185 = v52;
    v186 = v137;
    v188 = v37;
    v189 = v38;
    v191 = v39;
    v192 = v40;
    v73 = *(v2 + 232);
    v193 = v41;
    v194 = v73;
    v195 = v42;
    v197 = v43;
    v198 = v44;
    *&v199[3] = *(v2 + 260);
    v74 = *(v2 + 288);
    v202 = v47;
    v203 = v74;
    v204 = v48;
    *&v205[3] = *(v2 + 300);
    v206 = v49;
    v207 = v50;
    v75 = *(v2 + 144);
    v76 = *(v2 + 313);
    v77 = *(v2 + 329);
    v78 = *(v2 + 361);
    v210 = *(v2 + 345);
    v211 = v78;
    v208 = v76;
    v209 = v77;
    v167 = 5;
    v146 = v12;
    v147 = v13;
    v148 = v136;
    v149 = v138;
    *&v166[15] = *(a2 + 359);
    v79 = *(a2 + 344);
    v165 = *(a2 + 328);
    *v166 = v79;
    v80 = *(a2 + 96);
    v81 = *(a2 + 112);
    v82 = *(a2 + 128);
    v84 = *(a2 + 64);
    v83 = *(a2 + 80);
    v85 = *(a2 + 192);
    v86 = *(a2 + 208);
    v87 = *(a2 + 272);
    v88 = *(a2 + 288);
    v162 = *(a2 + 304);
    v176 = v33;
    *&v181[15] = v75;
    v200 = v46;
    v201 = v45;
    *v140 = v5;
    *&v140[1] = v4;
    *&v140[2] = v7;
    *&v140[3] = v6;
    v171 = v135;
    v182 = v35;
    *&v140[4] = v8;
    *&v140[5] = v9;
    *&v140[6] = v10;
    *&v140[7] = v11;
    v89 = v11;
    v143 = v80;
    v144 = v81;
    v145 = v82;
    v142 = v83;
    v141 = v84;
    v150 = v16;
    v151 = v15;
    v152 = v85;
    v153 = v86;
    v154 = v17;
    v155 = v18;
    v156 = v19;
    v157 = v20;
    v158 = v21;
    v159 = v22;
    v160 = v87;
    v161 = v88;
    v163 = v24;
    v164 = v23;
    v90 = BookHistory.affinityInfos(for:with:)(&v167, v140);
    if (v213 & 1) != 0 || (v212)
    {
      v91 = 0.0;
      v92 = 0;
      v93 = 1;
    }

    else
    {
      v93 = 0;
      if (v9 > v135)
      {
        v111 = v8 * v135;
      }

      else
      {
        v111 = v8 + v10;
      }

      v91 = v111;
      v92 = v72;
    }

    sub_1481B0(v91, v92, v93, &v168, 1.0, v89);
    v112 = v169;
    if ((LOBYTE(v174) & 1) == 0)
    {
      v113 = v168;
      v114 = v170;
      v115 = v171;
      v116 = v172;
      v117 = v173;
      sub_2B0C(&qword_229488, &qword_1BC520);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1BCA80;
      *(v118 + 32) = v113;
      *(v118 + 40) = v112;
      *(v118 + 48) = v114;
      *(v118 + 56) = v115;
      *(v118 + 64) = v116;
      *(v118 + 72) = v117;
      *(v118 + 80) = 0;
      v168 = v90;
      sub_60824(v118);
      return v168;
    }

    goto LABEL_143;
  }

  if (*(v2 + 184))
  {
    if (*(v2 + 200))
    {
      if (v34 == 255)
      {
        return _swiftEmptyArrayStorage;
      }

      v53 = v16;
      v54 = v15;
      if (v34)
      {
        v55 = v24 * v33;
        if (v55 + v31 <= v32)
        {
          v32 = v55 + v31;
        }
      }

      else
      {
        v32 = v31;
      }

      if (v36)
      {
        v106 = *&v32;
      }

      else
      {
        v106 = v35;
      }

      v107 = 1.0;
      v102 = 0x80;
      goto LABEL_137;
    }

    v102 = 0;
    v12 = v136;
    v13 = v138;
    v52 = v37;
  }

  else
  {
    v102 = 64;
  }

  if (v36)
  {
    v106 = *&v52;
  }

  else
  {
    v106 = v35;
  }

  if (v34 != 255)
  {
    v107 = 1.0;
    if (!v30)
    {
      v32 = v52;
      v54 = v13;
      v53 = v12;
LABEL_137:
      v109 = 0;
      v126 = v5 * v107;
      v127 = v5 + v7;
      if (v4 > v107)
      {
        v128 = v126;
      }

      else
      {
        v128 = v127;
      }

      v108 = v128;
      v110 = v106;
      goto LABEL_141;
    }
  }

  v108 = 0.0;
  v109 = 1;
  v32 = v52;
  v54 = v13;
  v53 = v12;
  if (v27)
  {
    v110 = 0;
    goto LABEL_141;
  }

  v107 = v26;
  v110 = 0;
  if (v26 > 0.0)
  {
    goto LABEL_137;
  }

LABEL_141:
  sub_1481B0(v108, v110, v109, &v168, 1.0, v6);
  v129 = v169;
  if (LOBYTE(v174))
  {
    sub_14A870(1702195828, 0xE400000000000000, v53, v54, v53, *&v32, v102);
LABEL_143:

    return _swiftEmptyArrayStorage;
  }

  v130 = v168;
  v131 = v170;
  v132 = v171;
  v133 = v172;
  v134 = v173;
  sub_2B0C(&qword_229488, &qword_1BC520);
  result = swift_allocObject();
  *(result + 1) = xmmword_1BFC80;
  *(result + 4) = 1702195828;
  *(result + 5) = 0xE400000000000000;
  *(result + 6) = v53;
  *(result + 7) = v54;
  *(result + 8) = v53;
  *(result + 9) = v32;
  result[80] = 0;
  *(result + 11) = v130;
  *(result + 12) = v129;
  *(result + 13) = v131;
  *(result + 14) = v132;
  *(result + 15) = v133;
  *(result + 16) = v134;
  result[136] = 0;
  return result;
}

uint64_t BookHistory.rawAffinity(with:)(__int128 *a1)
{
  BookHistory.internalAffinitySource(with:)(a1, v11);
  v16 = v11[2];
  v17 = v12;
  v18 = v13;
  v14 = v11[0];
  v15 = v11[1];
  v1 = v12;
  if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
  {
    return 0;
  }

  v3 = v14;
  v4 = v15;
  v5 = v16;
  if ((v12 >> 62) > 2)
  {
    v6 = v14;
  }

  else
  {
    sub_2B0C(&qword_229488, &qword_1BC520);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BCA80;
    *(v6 + 32) = v3;
    *(v6 + 48) = v4;
    *(v6 + 64) = v5;
    *(v6 + 80) = v1 & 1;
  }

  sub_42CD4(&v14, &v10);
  v7 = Array<A>.rawAffinity.getter(v6);
  v9 = v8;
  sub_42F48(v11, &qword_22A4E0, &unk_1C01D0);

  if (v9)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void sub_14A79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 1)
  {
    if (a2)
    {
      if (a1 % a2)
      {
        return;
      }

      v4 = *(a3 + 40);
      v5 = *(v3 + 352);
      v6 = *(v3 + 360);
      v7 = round(pow(*(a3 + 32), (a1 / a2 - 1)) * *(a3 + 24));
      if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v7 > -9.22337204e18)
        {
          if (v7 < 9.22337204e18)
          {
            return;
          }

LABEL_12:
          __break(1u);
          return;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_14A870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 0xFDu)
  {
    return sub_14A884(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_14A884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_14A89C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = a2;
  v5 = type metadata accessor for SeedBasedRecommendationRequest(0);
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v53 = _swiftEmptyArrayStorage;
  sub_37768(0, v10, 0);
  v11 = v53;
  v45 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v46 = v9;
  v12 = a1 + v45;
  v44 = *(v6 + 72);
  while (1)
  {
    v50 = v11;
    v51 = v10;
    v13 = *(v12 + v5[5]);
    v14 = *(v13 + 16);
    if (v14)
    {
      break;
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_7:
    v52[0] = v15;
    sub_14B0F4(v52, sub_56BA8, &type metadata for SeedBook, sub_152180, sub_151780);
    if (v3)
    {
      goto LABEL_12;
    }

    sub_2B0C(&qword_22AA48, &qword_1CD280);
    sub_42094(&qword_22B470, &qword_22AA48, &qword_1CD280);
    v17 = sub_1B4984();

    __chkstk_darwin(v18);
    v19 = v47;
    *(&v43 - 2) = v12;
    *(&v43 - 1) = v19;
    v20 = sub_1AA034(sub_155AB8, (&v43 - 4), v17);

    v52[0] = v20;
    v21 = sub_1B4984();
    v3 = 0;

    v22 = sub_40D04(v21);

    v23 = sub_1B40F4();
    v24 = v46;
    (*(*(v23 - 8) + 16))(v46, v12, v23);
    v25 = (v12 + v5[6]);
    v27 = *v25;
    v26 = v25[1];
    v28 = (v12 + v5[7]);
    v29 = *(v12 + v5[8]);
    v30 = *(v12 + v5[9]);
    v31 = *(v12 + v5[10]);
    v32 = *(v12 + v5[11]);
    v33 = *(v12 + v5[13]);
    v34 = *(v12 + v5[14]);
    v35 = *v28;
    v36 = v28[1];
    *(v24 + v5[5]) = v22;
    v37 = (v24 + v5[6]);
    *v37 = v27;
    v37[1] = v26;
    v38 = (v24 + v5[7]);
    *v38 = v35;
    v38[1] = v36;
    *(v24 + v5[8]) = v29;
    *(v24 + v5[9]) = v30;
    *(v24 + v5[10]) = v31;
    *(v24 + v5[11]) = v32;
    *(v24 + v5[12]) = _swiftEmptySetSingleton;
    *(v24 + v5[13]) = v33;
    *(v24 + v5[14]) = v34;
    v11 = v50;
    v53 = v50;
    v39 = v50[2];
    v40 = v50[3];

    if (v39 >= v40 >> 1)
    {
      sub_37768(v40 > 1, v39 + 1, 1);
      v11 = v53;
    }

    v11[2] = v39 + 1;
    v41 = v44;
    sub_84A24(v24, v11 + v45 + v39 * v44);
    v12 += v41;
    v10 = v51 - 1;
    if (v51 == 1)
    {
      return v11;
    }
  }

  v15 = sub_351DC(*(v13 + 16), 0);
  v16 = sub_3EF0C(v52, v15 + 32, v14, v13);
  v48 = v52[1];
  v49 = v16;

  sub_417B8();
  if (v49 == v14)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_12:

  __break(1u);
  return result;
}

Swift::Int sub_14AD54(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B58(v2);
  }

  v3 = *(v2 + 2);
  v41[0] = (v2 + 32);
  v41[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 168;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 136;
          if (*v12 >= *(v12 - 17))
          {
            break;
          }

          v32 = *v12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 4);
          v35 = *(v12 + 3);
          v36 = v16;
          v33 = v14;
          v34 = v15;
          v17 = *(v12 + 5);
          v18 = *(v12 + 6);
          v19 = *(v12 + 7);
          v40 = v12[128];
          v38 = v18;
          v39 = v19;
          v37 = v17;
          v20 = *(v12 - 88);
          *(v12 + 2) = *(v12 - 104);
          *(v12 + 3) = v20;
          *(v12 + 16) = *(v12 - 1);
          v21 = *(v12 - 24);
          *(v12 + 6) = *(v12 - 40);
          *(v12 + 7) = v21;
          v22 = *(v12 - 56);
          *(v12 + 4) = *(v12 - 72);
          *(v12 + 5) = v22;
          v23 = *(v12 - 120);
          *v12 = *v13;
          *(v12 + 1) = v23;
          *v13 = v32;
          v24 = v33;
          v25 = v34;
          v26 = v36;
          *(v12 - 88) = v35;
          *(v12 - 72) = v26;
          *(v12 - 120) = v24;
          *(v12 - 104) = v25;
          v27 = v37;
          v28 = v38;
          v29 = v39;
          *(v12 - 8) = v40;
          *(v12 - 40) = v28;
          *(v12 - 24) = v29;
          *(v12 - 56) = v27;
          v12 -= 136;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 136;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v32 = v7 + 4;
    *(&v32 + 1) = v6;
    sub_151B2C(&v32, v31, v41, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_14AF70(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56BA8(v2);
  }

  v3 = *(v2 + 2);
  v16[0] = (v2 + 32);
  v16[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v14 = v1;
      v8 = -1;
      v9 = 1;
      v10 = v2;
      do
      {
        v11 = v8;
        v12 = v10;
        do
        {
          if (*(v12 + 75) >= *(v12 + 4))
          {
            break;
          }

          memcpy(__dst, v12 + 600, 0x231uLL);
          memcpy(v12 + 600, v12 + 32, 0x238uLL);
          result = memcpy(v12 + 32, __dst, 0x231uLL);
          v12 -= 568;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 568;
        --v8;
      }

      while (v9 != v3);
      v1 = v14;
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    __dst[0] = v7 + 4;
    __dst[1] = v6;
    sub_152D5C(__dst, v17, v16, v5);
    v7[2] = 0;
  }

  *v1 = v2;
  return result;
}

Swift::Int sub_14B0F4(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_151670(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_14B190()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v0[18];
  v5 = *(v0 + 7);
  v32 = *(v0 + 6);
  v33 = v5;
  v34 = *(v0 + 8);
  v35 = v4;
  v36 = *(v0 + 19);
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
  {
    v6 = 0x3E6C696E3CLL;
    v7 = 0xE500000000000000;
    goto LABEL_13;
  }

  v8 = v32;
  v9 = v33;
  v10 = v34;
  if ((v4 >> 62) > 1)
  {
    if (v4 >> 62 != 2)
    {
      v11 = v32;
      goto LABEL_9;
    }

    v25 = *(&v34 + 1);
    v26 = *(&v33 + 1);
  }

  else
  {
    v25 = *(&v34 + 1);
    v26 = *(&v33 + 1);
  }

  sub_2B0C(&qword_229488, &qword_1BC520);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BCA80;
  *(v11 + 32) = v8;
  *(v11 + 48) = v9;
  *(v11 + 56) = v26;
  *(v11 + 64) = v10;
  *(v11 + 72) = v25;
  *(v11 + 80) = v4 & 1;
LABEL_9:
  sub_42CD4(&v32, v27);
  v12 = COERCE_DOUBLE(Array<A>.affinity.getter(v11));
  v14 = v13;

  if (v14)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v12;
  }

  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BCA80;
  *(v16 + 56) = &type metadata for Double;
  *(v16 + 64) = &protocol witness table for Double;
  *(v16 + 32) = v15;
  v6 = sub_1B47F4();
  v7 = v17;
LABEL_13:
  *&v27[0] = v2;
  v30 = sub_1B5594();
  v31 = v18;
  v37._countAndFlagsBits = 58;
  v37._object = 0xE100000000000000;
  sub_1B48D4(v37);
  if (v3)
  {
    v19._countAndFlagsBits = 0x6F6F626F69647561;
  }

  else
  {
    v19._countAndFlagsBits = 0x6B6F6F6265;
  }

  if (v3)
  {
    v20 = 0xE90000000000006BLL;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  v19._object = v20;
  sub_1B48D4(v19);

  v38._countAndFlagsBits = 58;
  v38._object = 0xE100000000000000;
  sub_1B48D4(v38);
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
  {
    object = 0xE300000000000000;
    v22._countAndFlagsBits = 7104878;
  }

  else
  {
    v23 = v1[7];
    v27[0] = v1[6];
    v27[1] = v23;
    v27[2] = v1[8];
    v28 = v4;
    v29 = *(v1 + 152);
    v22._countAndFlagsBits = sub_150AB0();
    object = v22._object;
  }

  v22._object = object;
  sub_1B48D4(v22);

  v39._countAndFlagsBits = 58;
  v39._object = 0xE100000000000000;
  sub_1B48D4(v39);
  v40._countAndFlagsBits = v6;
  v40._object = v7;
  sub_1B48D4(v40);

  return v30;
}

uint64_t sub_14B460()
{
  sub_768DC();
  result = sub_1B4E94();
  qword_260C58 = result;
  return result;
}

uint64_t sub_14B4C8()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_260C60);
  sub_50E58(v0, qword_260C60);
  if (qword_2282F8 != -1)
  {
    swift_once();
  }

  v1 = qword_260C58;
  return sub_1B4654();
}

uint64_t sub_14B554(uint64_t a1, const void *a2)
{
  v3[144] = v2;
  v3[143] = a1;
  memcpy(v3 + 2, a2, 0x460uLL);

  return _swift_task_switch(sub_14B5C8, 0, 0);
}

uint64_t sub_14B5C8()
{
  v12 = v0;
  v1 = v0[144];
  v2 = v0[143];
  v11 = _swiftEmptyDictionarySingleton;
  v3 = sub_14A89C(v2, &v11);
  v0[145] = v3;
  v4 = v11;
  v0[146] = v11;

  v5 = sub_2B0C(&qword_229360, &qword_1BC400);
  v6 = sub_2B0C(&qword_22A410, &qword_1C0110);
  v7 = swift_task_alloc();
  v0[147] = v7;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v1;
  v7[5] = v0 + 2;
  v8 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v9 = swift_task_alloc();
  v0[148] = v9;
  *v9 = v0;
  v9[1] = sub_14B730;
  v14 = v6;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 142, v5, v6, 0, 0, &unk_1CF3B8, v7, v5);
}

uint64_t sub_14B730()
{
  v2 = *v1;
  v3 = *(*v1 + 1184);
  v4 = *v1;
  *(*v1 + 1192) = v0;

  v5 = v2[147];
  v6 = v2[146];
  v7 = v2[145];

  if (v0)
  {

    v8 = sub_14B944;
  }

  else
  {

    v8 = sub_14B8B4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_14B8B4()
{
  v1 = sub_14D384(v0[146], v0[142]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_14B95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[295] = a6;
  v6[294] = a5;
  v6[293] = a3;
  v6[292] = a2;
  v6[291] = a1;
  v7 = sub_2B0C(&qword_229360, &qword_1BC400);
  v6[296] = v7;
  v8 = *(v7 - 8);
  v6[297] = v8;
  v9 = *(v8 + 64) + 15;
  v6[298] = swift_task_alloc();
  v6[299] = swift_task_alloc();
  v6[300] = swift_task_alloc();
  v10 = *(*(sub_2B0C(&qword_22A4C8, &qword_1CF3D0) - 8) + 64) + 15;
  v6[301] = swift_task_alloc();
  v11 = sub_2B0C(&qword_22A4D0, &unk_1C01A0);
  v6[302] = v11;
  v12 = *(v11 - 8);
  v6[303] = v12;
  v13 = *(v12 + 64) + 15;
  v6[304] = swift_task_alloc();
  v14 = *(type metadata accessor for SeedBasedRecommendationRequest(0) - 8);
  v6[305] = v14;
  v6[306] = *(v14 + 64);
  v6[307] = swift_task_alloc();
  v15 = *(*(sub_2B0C(&qword_2296C0, &qword_1C3800) - 8) + 64) + 15;
  v6[308] = swift_task_alloc();
  v6[309] = swift_task_alloc();

  return _swift_task_switch(sub_14BB94, 0, 0);
}

uint64_t sub_14BB94()
{
  v1 = *(v0 + 2344);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 2440);
    v40 = **(v0 + 2336);
    v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v5 = v1 + v4;
    v38 = *(v3 + 72);
    v39 = v4;
    v37 = (*(v0 + 2448) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = sub_1B4C54();
    v7 = *(v6 - 8);
    v36 = *(v7 + 56);
    v35 = (v7 + 48);
    v34 = (v7 + 8);
    do
    {
      v41 = v2;
      v11 = *(v0 + 2472);
      v12 = *(v0 + 2464);
      v13 = *(v0 + 2456);
      v14 = *(v0 + 2360);
      v15 = *(v0 + 2352);
      v36(v11, 1, 1, v6);
      sub_8478C(v5, v13);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      v17 = (v16 + 16);
      *(v16 + 24) = 0;
      sub_84A24(v13, v16 + v39);
      *(v16 + v37) = v15;
      memcpy((v16 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)), v14, 0x460uLL);
      sub_43050(v11, v12, &qword_2296C0, &qword_1C3800);
      LODWORD(v12) = (*v35)(v12, 1, v6);

      v18 = *(v0 + 2464);
      v19 = *(v0 + 2360);
      if (v12 == 1)
      {
        sub_84BC0(v19, v0 + 16);
        sub_42F48(v18, &qword_2296C0, &qword_1C3800);
      }

      else
      {
        sub_84BC0(v19, v0 + 1136);
        sub_1B4C44();
        (*v34)(v18, v6);
      }

      if (*v17)
      {
        v20 = *(v16 + 24);
        v21 = *v17;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = sub_1B4BC4();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      if (v24 | v22)
      {
        v8 = v0 + 2256;
        *(v0 + 2256) = 0;
        *(v0 + 2264) = 0;
        *(v0 + 2272) = v22;
        *(v0 + 2280) = v24;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 2472);
      v10 = *(v0 + 2368);
      *(v0 + 2288) = 1;
      *(v0 + 2296) = v8;
      *(v0 + 2304) = v40;
      swift_task_create();

      sub_42F48(v9, &qword_2296C0, &qword_1C3800);
      v5 += v38;
      v2 = v41 - 1;
    }

    while (v41 != 1);
  }

  v25 = *(v0 + 2432);
  v26 = *(v0 + 2368);
  v27 = **(v0 + 2336);
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_1B4C74();
  *(v0 + 2480) = _swiftEmptyDictionarySingleton;
  v28 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v29 = swift_task_alloc();
  *(v0 + 2488) = v29;
  *v29 = v0;
  v29[1] = sub_14BF94;
  v30 = *(v0 + 2432);
  v31 = *(v0 + 2416);
  v32 = *(v0 + 2408);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v32, 0, 0, v31, v0 + 2312);
}

uint64_t sub_14BF94()
{
  v2 = *v1;
  v3 = *(*v1 + 2488);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 2480);

    v5 = sub_82284;
  }

  else
  {
    v5 = sub_14C0AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_14C0AC()
{
  v1 = v0[301];
  v2 = v0[296];
  v3 = (*(v0[297] + 48))(v1, 1, v2);
  v4 = v0[310];
  if (v3 == 1)
  {
    v5 = v0[309];
    v6 = v0[308];
    v7 = v0[307];
    v8 = v0[300];
    v9 = v0[299];
    v52 = v0[298];
    v10 = v0[291];
    (*(v0[303] + 8))(v0[304], v0[302]);
    *v10 = v4;

    v11 = v0[1];

    return v11();
  }

  v13 = v0[300];
  v14 = v0[299];
  v15 = v0[298];
  v16 = *(v2 + 48);
  v17 = *(v1 + v16);
  v18 = sub_1B40F4();
  v19 = *(v18 - 8);
  v53 = v18;
  (*(v19 + 32))(v13, v1);
  *(v13 + v16) = v17;
  v20 = &qword_229360;
  sub_43050(v13, v14, &qword_229360, &qword_1BC400);
  v21 = *(v14 + *(v2 + 48));

  sub_43050(v13, v15, &qword_229360, &qword_1BC400);
  v22 = *(v15 + *(v2 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[290] = v4;
  v24 = sub_3AC78(v14);
  v26 = *(v4 + 16);
  v27 = (v25 & 1) == 0;
  v28 = __OFADD__(v26, v27);
  v29 = v26 + v27;
  if (v28)
  {
    __break(1u);
LABEL_20:
    v51 = v24;
    sub_185F44();
    v24 = v51;
LABEL_12:
    v33 = v0[290];
    v34 = v0[300];
    if (v20)
    {
      v35 = v33[7];
      v36 = *(v35 + 8 * v24);
      *(v35 + 8 * v24) = v22;

      sub_42F48(v34, &qword_229360, &qword_1BC400);
    }

    else
    {
      v37 = v0[299];
      v33[(v24 >> 6) + 8] |= 1 << v24;
      v38 = v24;
      (*(v19 + 16))(v33[6] + *(v19 + 72) * v24, v37, v53);
      *(v33[7] + 8 * v38) = v22;
      v39 = sub_42F48(v34, &qword_229360, &qword_1BC400);
      v44 = v33[2];
      v28 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v28)
      {
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v39, v40, v41, v42, v43);
      }

      v33[2] = v45;
    }

    v46 = v0[298];
    v47 = *(v19 + 8);
    v47(v0[299], v53);
    v47(v46, v53);
    v0[310] = v33;
    v48 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
    v49 = swift_task_alloc();
    v0[311] = v49;
    *v49 = v0;
    v49[1] = sub_14BF94;
    v50 = v0[304];
    v42 = v0[302];
    v39 = v0[301];
    v43 = v0 + 289;
    v40 = 0;
    v41 = 0;

    return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v39, v40, v41, v42, v43);
  }

  LOBYTE(v20) = v25;
  if (*(v0[310] + 24) >= v29)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

  v30 = v0[299];
  sub_17F10C(v29, isUniquelyReferenced_nonNull_native);
  v31 = v0[290];
  v24 = sub_3AC78(v30);
  if ((v20 & 1) == (v32 & 1))
  {
    goto LABEL_12;
  }

  return sub_1B5784();
}

uint64_t sub_14C4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[145] = a6;
  v6[144] = a5;
  v6[143] = a4;
  v6[142] = a1;
  return _swift_task_switch(sub_14C50C, 0, 0);
}

uint64_t sub_14C50C()
{
  v1 = v0[145];
  v2 = v0[143];
  v3 = v0[142];
  v4 = sub_1B40F4();
  v0[146] = v4;
  v5 = *(v4 - 8);
  v0[147] = v5;
  (*(v5 + 16))(v3, v2, v4);
  memcpy(v0 + 2, v1, 0x460uLL);
  v6 = swift_task_alloc();
  v0[148] = v6;
  *v6 = v0;
  v6[1] = sub_82580;
  v7 = v0[144];
  v8 = v0[143];

  return sub_14C620(v8, v0 + 2);
}

uint64_t sub_14C620(uint64_t a1, const void *a2)
{
  v3[451] = v2;
  v3[450] = a1;
  v5 = sub_1B40F4();
  v3[452] = v5;
  v6 = *(v5 - 8);
  v3[453] = v6;
  v7 = *(v6 + 64) + 15;
  v3[454] = swift_task_alloc();
  memcpy(v3 + 2, a2, 0x460uLL);

  return _swift_task_switch(sub_14C6F8, 0, 0);
}

uint64_t sub_14C6F8()
{
  v1 = v0[454];
  v2 = v0[453];
  v3 = v0[452];
  sub_1B40E4();
  v0[455] = sub_1B40D4();
  v0[456] = v4;
  (*(v2 + 8))(v1, v3);
  memcpy(v0 + 142, v0 + 2, 0x460uLL);
  v5 = swift_task_alloc();
  v0[457] = v5;
  *v5 = v0;
  v5[1] = sub_14C7E8;
  v6 = v0[451];
  v7 = v0[450];

  return sub_14D860((v0 + 444), v7, (v0 + 142));
}

uint64_t sub_14C7E8()
{
  v2 = *v1;
  v3 = *(*v1 + 3656);
  v7 = *v1;
  *(*v1 + 3664) = v0;

  if (v0)
  {
    v4 = *(v2 + 3648);

    v5 = sub_14D320;
  }

  else
  {
    v5 = sub_14C904;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_14C904()
{
  v122 = v0;
  v1 = v0[444];
  v2 = v0[445];
  v3 = v0[446];
  v4 = v0[447];
  v5 = v0[448];
  v6 = v0[449];
  v7 = sub_F1750();
  v8 = sub_F1A00();
  *&v116 = v1;
  *(&v116 + 1) = v2;
  *&v117 = v3;
  *(&v117 + 1) = v4;
  *&v118 = v5;
  *(&v118 + 1) = v6;
  v9 = sub_F14D8();
  v106 = v7;
  if (!*(v1 + 16))
  {
    v114 = v0[456];
    sub_F1484();
    swift_allocError();
    *v13 = 2;
    *(v13 + 8) = 7;
    swift_willThrow();

    goto LABEL_5;
  }

  v104 = v8;
  v105 = v9;
  v10 = v0[458];
  *&v116 = *(v1 + 32);
  sub_F1014();
  if (v10)
  {
    v12 = v0[456];

LABEL_5:

    v14 = v0[454];

    v15 = v0[1];

    return v15();
  }

  v103 = v0;
  v17 = v0[450];
  v18 = v11;

  v19 = type metadata accessor for SeedBasedRecommendationRequest(0);
  v20 = *(v17 + *(v19 + 32));
  v21 = *(v17 + *(v19 + 20));
  v22 = v103;
  memcpy(v103 + 141, v103 + 104, 0x16BuLL);
  sub_71E28((v22 + 13), (v22 + 328));
  v23 = sub_159364(v18);

  v121[0] = _swiftEmptyDictionarySingleton;
  sub_71E28((v22 + 13), (v22 + 374));

  sub_1553FC(v21, v23, (v103 + 141), v121, v20);
  sub_72470(v103 + 104);
  swift_bridgeObjectRelease_n();
  v24 = v121[0];
  v25 = *(v121[0] + 16);
  if (v25)
  {
    v26 = sub_35304(*(v121[0] + 16), 0);
    v3 = sub_3FF88(&v116, v26 + 2, v25, v24);

    result = sub_417B8();
    if (v3 != v25)
    {
      __break(1u);
      return result;
    }

    sub_72470(v103 + 104);

    v27 = v104;
    v28 = v105;
    v29 = v106;
    v30 = v26;
    v31 = v26[2];
    if (v31)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_72470(v103 + 104);

    v30 = _swiftEmptyArrayStorage;
    v27 = v104;
    v28 = v105;
    v29 = v106;
    v31 = _swiftEmptyArrayStorage[2];
    if (v31)
    {
LABEL_11:
      sub_37574(0, v31, 0);
      if (v30[2])
      {
        v32 = 0;
        v3 = (v103 + 210);
        v33 = _swiftEmptyArrayStorage;
        v100 = v30 + 4;
        v101 = v31;
        v34 = 1;
        v102 = v30;
        do
        {
          v112 = v34;
          v113 = v33;
          v35 = &v100[8 * v32];
          v36 = v35[3];
          v38 = *v35;
          v37 = v35[1];
          v103[212] = v35[2];
          v103[213] = v36;
          *v3 = v38;
          v103[211] = v37;
          v39 = *v3;
          if (v29[2] && (v40 = sub_43124(*v3), (v41 & 1) != 0))
          {
            v42 = *(v29[7] + 8 * v40);

            if (!v27[2])
            {
              goto LABEL_21;
            }
          }

          else
          {
            v42 = _swiftEmptyArrayStorage;
            if (!v27[2])
            {
              goto LABEL_21;
            }
          }

          v43 = sub_43124(v39);
          if ((v44 & 1) == 0)
          {
LABEL_21:
            v45 = _swiftEmptyArrayStorage;
            if (!v28[2])
            {
              goto LABEL_24;
            }

            goto LABEL_22;
          }

          v45 = *(v27[7] + 8 * v43);

          if (!v28[2])
          {
            goto LABEL_24;
          }

LABEL_22:
          v46 = sub_43124(v39);
          if (v47)
          {
            v48 = v28[7] + 40 * v46;
            v110 = *(v48 + 8);
            v111 = *v48;
            v108 = *(v48 + 16);
            v109 = *(v48 + 24);
            v107 = *(v48 + 32);
            goto LABEL_25;
          }

LABEL_24:
          v110 = 0;
          v111 = 0;
          v107 = 0;
          v108 = 2;
          v109 = 0;
LABEL_25:
          v49 = v42[2];
          sub_42BA4(v3, (v22 + 428));
          sub_42BA4(v3, (v22 + 436));
          v50 = sub_1B4CC4();
          v51 = v50;
          v52 = v42[2];
          v115 = v45;
          if (v52)
          {
            v53 = 0;
            v54 = v50 + 56;
            do
            {
              while (1)
              {
                v55 = v42[v53++ + 4];
                v56 = *(v51 + 40);
                v57 = sub_1B57E4();
                v58 = -1 << *(v51 + 32);
                v59 = v57 & ~v58;
                if ((*(v54 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
                {
                  break;
                }

LABEL_32:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v116 = v51;
                sub_115EFC(v55, v59, isUniquelyReferenced_nonNull_native);
                v51 = v116;
                if (v53 == v52)
                {
                  goto LABEL_34;
                }

                v54 = v116 + 56;
              }

              v60 = ~v58;
              while (*(*(v51 + 48) + 8 * v59) != v55)
              {
                v59 = (v59 + 1) & v60;
                if (((*(v54 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
                {
                  goto LABEL_32;
                }
              }
            }

            while (v53 != v52);
LABEL_34:

            v45 = v115;
          }

          else
          {
          }

          v62 = v45[2];
          v63 = sub_1B4CC4();
          v64 = v45[2];
          if (v64)
          {
            v65 = 0;
            v66 = v45 + 4;
            do
            {
              v68 = v63 + 56;
              while (1)
              {
                v69 = v66[v65++];
                v70 = *(v63 + 40);
                v71 = sub_1B57E4();
                v72 = -1 << *(v63 + 32);
                v73 = v71 & ~v72;
                if (((*(v68 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
                {
                  break;
                }

                v74 = ~v72;
                while (*(*(v63 + 48) + 8 * v73) != v69)
                {
                  v73 = (v73 + 1) & v74;
                  if (((*(v68 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
                  {
                    goto LABEL_38;
                  }
                }

                if (v65 == v64)
                {
                  goto LABEL_46;
                }
              }

LABEL_38:
              v67 = swift_isUniquelyReferenced_nonNull_native();
              *&v116 = v63;
              sub_115EFC(v69, v73, v67);
              v63 = v116;
            }

            while (v65 != v64);
          }

LABEL_46:

          sub_42EA0();
          v121[0] = sub_1B4CC4();
          sub_1122C4(&v120, 0);
          sub_43FF4(v3);
          v75 = v121[0];
          v76 = v103[213];
          v118 = v103[212];
          v119 = v76;
          v77 = v103[211];
          v116 = *v3;
          v117 = v77;
          v33 = v113;
          v79 = v113[2];
          v78 = v113[3];
          if (v79 >= v78 >> 1)
          {
            sub_37574((v78 > 1), v79 + 1, 1);
            v33 = v113;
          }

          v33[2] = v79 + 1;
          v80 = &v33[17 * v79];
          v81 = v116;
          v82 = v117;
          v83 = v119;
          *(v80 + 4) = v118;
          *(v80 + 5) = v83;
          *(v80 + 2) = v81;
          *(v80 + 3) = v82;
          v80[12] = v51;
          v80[13] = v63;
          v80[14] = v75;
          v80[15] = _swiftEmptySetSingleton;
          v80[16] = v111;
          v80[17] = v110;
          v80[18] = v108;
          v80[19] = v109;
          *(v80 + 160) = v107;
          v31 = v101;
          v32 = v112;
          if (v112 == v101)
          {
            v3 = v33;

            v22 = v103;
            goto LABEL_54;
          }

          v34 = v112 + 1;
          v22 = v103;
          v27 = v104;
          v28 = v105;
          v29 = v106;
        }

        while (v112 < v102[2]);
      }

      __break(1u);
      goto LABEL_66;
    }
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_54:
  v31 = 0;
  if (qword_228300 != -1)
  {
LABEL_66:
    swift_once();
  }

  v84 = v22[456];
  v85 = sub_1B4644();
  sub_50E58(v85, qword_260C60);

  v86 = sub_1B4624();
  v87 = sub_1B4DB4();

  v88 = os_log_type_enabled(v86, v87);
  v89 = v22[456];
  if (v88)
  {
    v90 = v22[455];
    v91 = swift_slowAlloc();
    v121[0] = swift_slowAlloc();
    *v91 = 136446466;
    v92 = sub_60FF4(v90, v89, v121);

    *(v91 + 4) = v92;
    *(v91 + 12) = 2080;
    *&v116 = v3;

    sub_14AD54(&v116);
    if (v31)
    {
    }

    sub_C04B0(v116);
    v94 = v93;
    v96 = v95;

    v97 = sub_60FF4(v94, v96, v121);

    *(v91 + 14) = v97;
    _os_log_impl(&dword_0, v86, v87, "for %{public}s, returning result %s", v91, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v98 = v22[454];

  v99 = v22[1];

  return v99(v3);
}

uint64_t sub_14D320()
{
  v1 = v0[458];
  v2 = v0[454];

  v3 = v0[1];

  return v3();
}

uint64_t sub_14D384(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v52 = sub_2B0C(&qword_22E178, &unk_1CF3C0);
  v3 = *(*(v52 - 8) + 64);
  v4 = __chkstk_darwin(v52);
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = &v43 - v6;
  v7 = sub_2B0C(&qword_229360, &qword_1BC400);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  __chkstk_darwin(v7);
  v10 = &v43 - v9;
  v11 = *(a2 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v57 = _swiftEmptyArrayStorage;
    sub_377AC(0, v11, 0);
    v12 = v57;
    v13 = a2 + 64;
    v14 = -1 << *(a2 + 32);
    v15 = sub_1B4F84();
    v16 = 0;
    v17 = *(a2 + 36);
    v43 = a2 + 72;
    v44 = v11;
    v45 = v17;
    v46 = a2 + 64;
    v47 = a2;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a2 + 32))
    {
      if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v17 != *(a2 + 36))
      {
        goto LABEL_26;
      }

      v55 = 1 << v15;
      v56 = v15 >> 6;
      v54 = v16;
      v19 = *(a2 + 48);
      v20 = sub_1B40F4();
      v21 = *(v20 - 8);
      v22 = v21;
      v23 = v12;
      v24 = *(v21 + 16);
      v25 = v10;
      v26 = v50;
      v24(v50, v19 + *(v21 + 72) * v15, v20);
      v27 = *(*(a2 + 56) + 8 * v15);
      v28 = v51;
      v29 = v26;
      v10 = v25;
      (*(v22 + 32))(v51, v29, v20);
      *(v28 + *(v52 + 48)) = v27;
      v30 = *(v49 + 48);
      v24(v25, v28, v20);
      v12 = v23;

      *(v25 + v30) = sub_150218(v53, v27);
      sub_42F48(v28, &qword_22E178, &unk_1CF3C0);
      v57 = v23;
      v32 = v23[2];
      v31 = v23[3];
      if (v32 >= v31 >> 1)
      {
        sub_377AC(v31 > 1, v32 + 1, 1);
        v12 = v57;
      }

      v12[2] = v32 + 1;
      sub_15476C(v25, v12 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v32);
      a2 = v47;
      v18 = 1 << *(v47 + 32);
      if (v15 >= v18)
      {
        goto LABEL_27;
      }

      v13 = v46;
      v33 = *(v46 + 8 * v56);
      if ((v33 & v55) == 0)
      {
        goto LABEL_28;
      }

      LODWORD(v17) = v45;
      if (v45 != *(v47 + 36))
      {
        goto LABEL_29;
      }

      v34 = v33 & (-2 << (v15 & 0x3F));
      if (v34)
      {
        v18 = __clz(__rbit64(v34)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v56 << 6;
        v36 = v56 + 1;
        v37 = (v43 + 8 * v56);
        while (v36 < (v18 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            sub_42FF0(v15, v45, 0);
            v18 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        sub_42FF0(v15, v45, 0);
      }

LABEL_4:
      v16 = v54 + 1;
      v15 = v18;
      if (v54 + 1 == v44)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (v12[2])
    {
      sub_2B0C(&qword_22E180, &unk_1D1530);
      v40 = sub_1B52B4();
    }

    else
    {
      v40 = _swiftEmptyDictionarySingleton;
    }

    v57 = v40;

    sub_150DB8(v41, 1, &v57);

    return v57;
  }

  return result;
}

uint64_t sub_14D860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 2576) = v3;
  *(v4 + 2568) = a2;
  *(v4 + 2560) = a1;
  v6 = sub_1B40F4();
  *(v4 + 2584) = v6;
  v7 = *(v6 - 8);
  *(v4 + 2592) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 2600) = swift_task_alloc();
  v9 = type metadata accessor for SeedBasedRecommendationRequest(0);
  *(v4 + 2608) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v4 + 2616) = swift_task_alloc();
  *(v4 + 2624) = swift_task_alloc();
  *(v4 + 2632) = swift_task_alloc();
  *(v4 + 2640) = swift_task_alloc();
  memcpy((v4 + 1856), a3, 0x170uLL);
  *(v4 + 2648) = *(a3 + 368);
  *(v4 + 2512) = *(a3 + 376);
  *(v4 + 2656) = *(a3 + 392);
  memcpy((v4 + 1136), (a3 + 400), 0x2D0uLL);

  return _swift_task_switch(sub_14D9BC, 0, 0);
}

uint64_t sub_14D9BC()
{
  v98 = v0;
  v2 = *(*(v0 + 2568) + *(*(v0 + 2608) + 20));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_351DC(*(v2 + 16), 0);
    v5 = sub_3EF0C(v97, v4 + 32, v3, v2);
    v6 = v97[0];
    v1 = v97[4];

    sub_417B8();
    if (v5 != v3)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v97[0] = v4;
  sub_14B0F4(v97, sub_56BA8, &type metadata for SeedBook, sub_152180, sub_151780);
  v8 = *(v0 + 2608);
  v6 = *(v0 + 2568);
  v9 = v97[0];
  *(v0 + 2664) = v97[0];
  sub_2B0C(&qword_2293A0, &qword_1BC440);
  v10 = swift_allocObject();
  v94 = 1;
  *(v10 + 16) = xmmword_1BCA80;
  *(v10 + 32) = _swiftEmptyArrayStorage;

  v11 = *(v6 + *(v8 + 56));
  *(v0 + 2672) = v11;
  v12 = *(v6 + *(v8 + 52));
  *(v0 + 2680) = v12;
  if (!v12)
  {
    goto LABEL_49;
  }

  if (v11 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_51;
  }

  v14 = v11 / v12;
  if (*(v0 + 2648) >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(v0 + 2648);
  }

  if (v15)
  {
    v16 = v9[2];

    v17 = sub_154B48(0, v16, v15, v15, v9);
    v96 = 0;

    v18 = v17;
    v19 = v17[2];
    if (!v19)
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_2B0C(&qword_2293A8, &qword_1BC448);
    v18 = swift_allocObject();
    v96 = 0;
    *(v18 + 16) = xmmword_1BCA80;
    *(v18 + 32) = _swiftEmptyArrayStorage;
    *(v18 + 40) = &_swiftEmptyArrayStorage[4];
    *(v18 + 48) = xmmword_1C00C0;
    v19 = 1;
  }

  *(v0 + 2696) = v19;
  *(v0 + 2688) = v18;
  v20 = *(v0 + 2656);
  v6 = *(v0 + 2608);
  v21 = *(v0 + 2592);
  if (v20 < 0)
  {
    v22 = -1;
  }

  else
  {
    v22 = *(v0 + 2656);
  }

  *(v0 + 2704) = v22;
  *(v0 + 2760) = v10;
  *(v0 + 2712) = 0u;
  *(v0 + 2728) = 0u;
  *(v0 + 2744) = 0u;
  if (!*(v18 + 16))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v23 = *(v18 + 32);
  *(v0 + 2768) = v23;
  if (v20 < 0)
  {
LABEL_28:
    v49 = *(v0 + 2664);
    v50 = *(v0 + 2640);
    v51 = *(v0 + 2632);
    v52 = *(v0 + 2624);
    v53 = *(v0 + 2616);
    v54 = *(v0 + 2600);
    v55 = *(v0 + 2560);

    *v55 = v10;
    *(v55 + 8) = 0u;
    *(v55 + 24) = 0u;
    *(v55 + 40) = 0;

    v56 = *(v0 + 8);

    return v56();
  }

  v24 = (v21 + 16);
  v26 = *(v18 + 40);
  v25 = *(v18 + 48);
  v27 = *(v18 + 56);
  v91 = *(v0 + 2680);
  v92 = *(v0 + 2672);
  v93 = (v21 + 8);
  v28 = *(v0 + 2640);
  v29 = *(v0 + 2600);
  v90 = *(v0 + 2584);
  v30 = *(v0 + 2568);
  swift_unknownObjectRetain();
  sub_1B40E4();
  v89 = v26;
  v94 = v25;
  v31 = sub_41158(v26, v25, v27);
  v32 = v23;
  v33 = v31;
  (*v24)(v28, v29, v90);
  v34 = (v30 + v6[6]);
  v36 = *v34;
  v35 = v34[1];
  v37 = *(v30 + v6[8]);
  v38 = *(v30 + v6[9]);
  v39 = (v30 + v6[7]);
  v40 = *(v30 + v6[10]);
  v41 = *(v30 + v6[11]);
  v42 = *v39;
  v43 = v39[1];
  *(v28 + v6[5]) = v33;
  v1 = v27;
  v44 = (v28 + v6[6]);
  *v44 = v36;
  v44[1] = v35;
  v45 = (v28 + v6[7]);
  *v45 = v42;
  v45[1] = v43;
  *(v28 + v6[8]) = v37;
  *(v28 + v6[9]) = v38;
  *(v28 + v6[10]) = v40;
  *(v28 + v6[11]) = v41;
  *(v28 + v6[12]) = _swiftEmptySetSingleton;
  *(v28 + v6[13]) = v91;
  *(v28 + v6[14]) = v92;
  v46 = *v93;

  v46(v29, v90);
  if ((v27 & 1) == 0)
  {
    goto LABEL_27;
  }

  v47 = v94;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v57 = swift_dynamicCastClass();
  v6 = v32;
  if (!v57)
  {
    swift_unknownObjectRelease();
    v57 = _swiftEmptyArrayStorage;
  }

  v58 = v57[2];

  if (__OFSUB__(v27 >> 1, v94))
  {
    goto LABEL_52;
  }

  if (v58 != (v27 >> 1) - v94)
  {
LABEL_53:
    swift_unknownObjectRelease();
    v32 = v6;
LABEL_27:
    v47 = v94;
    sub_51454(v32, v89, v94, v1);
    goto LABEL_37;
  }

  v48 = swift_dynamicCastClass();
  if (!v48)
  {
    swift_unknownObjectRelease();
    v48 = _swiftEmptyArrayStorage;
  }

LABEL_37:
  *(v0 + 2528) = v48;
  sub_14AF70((v0 + 2528));
  if (v96)
  {

    v59 = *(v0 + 2528);
  }

  else
  {
    v60 = *(v0 + 2528);
    *(v0 + 2776) = v60;
    if (qword_228300 != -1)
    {
      swift_once();
    }

    v61 = *(v0 + 2640);
    v62 = *(v0 + 2632);
    v63 = *(v0 + 2624);
    v64 = *(v0 + 2568);
    v65 = sub_1B4644();
    *(v0 + 2784) = sub_50E58(v65, qword_260C60);
    sub_8478C(v61, v62);
    sub_8478C(v64, v63);
    swift_unknownObjectRetain_n();

    v66 = sub_1B4624();
    v67 = sub_1B4DB4();

    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 2632);
    if (v68)
    {
      v95 = v67;
      v70 = swift_slowAlloc();
      *(v0 + 2552) = swift_slowAlloc();
      *v70 = 136446978;
      v71 = sub_1B40D4();
      v73 = v72;
      sub_155848(v69);
      v74 = sub_60FF4(v71, v73, (v0 + 2552));

      *(v70 + 4) = v74;
      *(v70 + 12) = 2048;
      result = swift_unknownObjectRelease();
      if (__OFSUB__(v1 >> 1, v47))
      {
        __break(1u);
        return result;
      }

      v75 = *(v0 + 2624);
      *(v70 + 14) = (v1 >> 1) - v47;
      swift_unknownObjectRelease();
      *(v70 + 22) = 2082;
      v76 = sub_1B40D4();
      v78 = v77;
      sub_155848(v75);
      v79 = sub_60FF4(v76, v78, (v0 + 2552));

      *(v70 + 24) = v79;
      *(v70 + 32) = 2080;
      v80 = sub_14F0AC(v60);
      v82 = sub_60FF4(v80, v81, (v0 + 2552));

      *(v70 + 34) = v82;
      _os_log_impl(&dword_0, v66, v95, "issuing subrequest %{public}s with %ld seed books for request %{public}s seedBooks=%s", v70, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v83 = *(v0 + 2624);
      swift_unknownObjectRelease_n();

      sub_155848(v83);
      sub_155848(v69);
    }

    v84 = *(v0 + 2656);
    v85 = *(v0 + 2648);
    memcpy((v0 + 16), (v0 + 1856), 0x170uLL);
    *(v0 + 384) = v85;
    *(v0 + 392) = *(v0 + 2512);
    *(v0 + 408) = v84;
    memcpy((v0 + 416), (v0 + 1136), 0x2D0uLL);
    v86 = swift_task_alloc();
    *(v0 + 2792) = v86;
    *v86 = v0;
    v86[1] = sub_14E268;
    v87 = *(v0 + 2640);
    v88 = *(v0 + 2576);

    return sub_14F254(v0 + 2224, v87, v0 + 16);
  }
}

uint64_t sub_14E268()
{
  v2 = *v1;
  v3 = *(*v1 + 2792);
  v15 = *v1;
  *(*v1 + 2800) = v0;

  if (v0)
  {
    v4 = v2[347];
    v5 = v2[345];
    v6 = v2[344];
    v7 = v2[343];
    v8 = v2[342];
    v9 = v2[341];
    v10 = v2[340];
    v11 = v2[336];
    v12 = v2[333];

    v13 = sub_14EFF4;
  }

  else
  {
    v13 = sub_14E404;
  }

  return _swift_task_switch(v13, 0, 0);
}

uint64_t sub_14E404()
{
  v148 = v0;
  v1 = *(v0 + 2232);
  v2 = *(v0 + 2240);
  v3 = *(v0 + 2248);
  v4 = *(v0 + 2256);
  v5 = *(v0 + 2264);
  *(v0 + 2320) = *(v0 + 2224);
  *(v0 + 2328) = v1;
  *(v0 + 2336) = v2;
  v134 = v3;
  *(v0 + 2344) = v3;
  *(v0 + 2352) = v4;
  *(v0 + 2360) = v5;
  sub_F1CB0(sub_14FDF4, 0, (v0 + 2272));
  v6 = *(v0 + 2272);
  v141 = *(v0 + 2280);
  v7 = *(v0 + 2288);
  v8 = *(v0 + 2296);
  v9 = *(v0 + 2304);
  v10 = *(v0 + 2312);
  if (!*(v6 + 16))
  {
    sub_F1484();
    swift_allocError();
    *v13 = 2;
    *(v13 + 8) = 7;
    swift_willThrow();
    goto LABEL_5;
  }

  v11 = *(v0 + 2800);
  *(v0 + 2536) = *(v6 + 32);
  sub_F1014();
  if (v11)
  {
LABEL_5:
    v14 = *(v0 + 2776);
    v15 = *(v0 + 2768);
    v16 = *(v0 + 2760);
    v17 = *(v0 + 2752);
    v18 = *(v0 + 2744);
    v127 = *(v0 + 2736);
    v128 = *(v0 + 2728);
    v129 = *(v0 + 2720);
    v19 = *(v0 + 2688);
    v20 = *(v0 + 2664);
    sub_155848(*(v0 + 2640));

    swift_unknownObjectRelease();

    v21 = *(v0 + 2640);
    v22 = *(v0 + 2632);
    v23 = *(v0 + 2624);
    v24 = *(v0 + 2616);
    v25 = *(v0 + 2600);

    v26 = *(v0 + 8);
LABEL_6:

    return v26();
  }

  *(v0 + 2544) = v12;

  sub_14B0F4((v0 + 2544), sub_56C0C, &_s15RecommendedBookVN, sub_153340, sub_151A94);
  v130 = v7;
  v131 = v8;
  v132 = v9;
  v133 = v10;
  v28 = *(v0 + 2784);
  v29 = *(v0 + 2776);
  v30 = *(v0 + 2640);
  v31 = *(v0 + 2616);

  v32 = *(v0 + 2544);
  sub_8478C(v30, v31);

  v33 = sub_1B4624();
  v34 = sub_1B4DB4();

  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 2616);
  if (v35)
  {
    v37 = swift_slowAlloc();
    v147[0] = swift_slowAlloc();
    *v37 = 136446466;
    v38 = sub_1B40D4();
    v40 = v39;
    sub_155848(v36);
    v41 = sub_60FF4(v38, v40, v147);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    v42 = sub_14FE0C(v32);
    v44 = v43;

    v45 = sub_60FF4(v42, v44, v147);

    *(v37 + 14) = v45;
    _os_log_impl(&dword_0, v33, v34, "subrequest %{public}s filteredResponse=%s", v37, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_155848(v36);
  }

  v46 = *(v0 + 2768);
  v47 = *(v0 + 2720);
  v144 = *(v0 + 2696);
  v135 = *(v0 + 2640);
  v138 = *(v0 + 2712) + 1;
  *(v0 + 2416) = *(v0 + 2760);
  v48 = vextq_s8(*(v0 + 2728), *(v0 + 2728), 8uLL);
  *(v0 + 2424) = vextq_s8(*(v0 + 2744), *(v0 + 2744), 8uLL);
  *(v0 + 2440) = v48;
  *(v0 + 2456) = v47;
  *(v0 + 2464) = v6;
  *(v0 + 2472) = v141;
  *(v0 + 2480) = v130;
  *(v0 + 2488) = v131;
  *(v0 + 2496) = v132;
  *(v0 + 2504) = v133;
  sub_F1E5C((v0 + 2416), (v0 + 2464), (v0 + 2368));
  swift_unknownObjectRelease();
  v49 = *(v0 + 2416);
  v50 = *(v0 + 2424);
  v51 = *(v0 + 2432);
  v52 = *(v0 + 2440);
  v53 = *(v0 + 2448);
  v54 = *(v0 + 2456);

  sub_155848(v135);

  v55 = *(v0 + 2368);
  v56 = *(v0 + 2376);
  v57 = *(v0 + 2384);
  v58 = *(v0 + 2392);
  v59 = *(v0 + 2400);
  v60 = *(v0 + 2408);
  if (v138 == v144)
  {
    v61 = *(v0 + 2688);
LABEL_16:
    v67 = *(v0 + 2664);
    v68 = *(v0 + 2640);
    v136 = *(v0 + 2632);
    v139 = *(v0 + 2624);
    v142 = *(v0 + 2616);
    v145 = *(v0 + 2600);
    v69 = *(v0 + 2560);

    *v69 = v55;
    v69[1] = v56;
    v69[2] = v57;
    v69[3] = v58;
    v69[4] = v59;
    v69[5] = v60;

    v26 = *(v0 + 8);
    goto LABEL_6;
  }

  v62 = *(v0 + 2712);
  *(v0 + 2760) = v55;
  *(v0 + 2752) = v56;
  *(v0 + 2744) = v57;
  *(v0 + 2736) = v58;
  *(v0 + 2728) = v59;
  *(v0 + 2720) = v60;
  *(v0 + 2712) = v62 + 1;
  v63 = *(v0 + 2688);
  if ((v62 + 1) >= *(v63 + 16))
  {
    __break(1u);
  }

  else
  {
    v64 = *(v0 + 2704);
    v65 = (v63 + 32 * (v62 + 1));
    v66 = v65[4];
    *(v0 + 2768) = v66;
    if (v62 == v64)
    {
      goto LABEL_16;
    }

    v70 = v65[5];
    v71 = v65[6];
    v72 = v65[7];
    v137 = *(v0 + 2680);
    v140 = *(v0 + 2672);
    v73 = *(v0 + 2640);
    v74 = *(v0 + 2608);
    v75 = *(v0 + 2600);
    v76 = *(v0 + 2592);
    v77 = *(v0 + 2584);
    v78 = *(v0 + 2568);
    v141 = v66;
    swift_unknownObjectRetain();
    sub_1B40E4();
    v134 = v70;
    v144 = v71;
    v79 = sub_41158(v70, v71, v72);
    (*(v76 + 16))(v73, v75, v77);
    v80 = (v78 + v74[6]);
    v82 = *v80;
    v81 = v80[1];
    v83 = (v78 + v74[7]);
    v84 = *(v78 + v74[8]);
    v85 = *(v78 + v74[9]);
    v86 = *(v78 + v74[10]);
    v87 = *(v78 + v74[11]);
    v88 = *v83;
    v89 = v83[1];
    *(v73 + v74[5]) = v79;
    v90 = (v73 + v74[6]);
    *v90 = v82;
    v90[1] = v81;
    v91 = (v73 + v74[7]);
    *v91 = v88;
    v91[1] = v89;
    *(v73 + v74[8]) = v84;
    *(v73 + v74[9]) = v85;
    *(v73 + v74[10]) = v86;
    *(v73 + v74[11]) = v87;
    *(v73 + v74[12]) = _swiftEmptySetSingleton;
    *(v73 + v74[13]) = v137;
    v92 = v74[14];
    v53 = v72;
    *(v73 + v92) = v140;
    v93 = *(v76 + 8);

    v93(v75, v77);
    if ((v72 & 1) == 0)
    {
      goto LABEL_18;
    }

    v94 = v144;
    sub_1B5744();
    swift_unknownObjectRetain_n();
    v96 = swift_dynamicCastClass();
    if (!v96)
    {
      swift_unknownObjectRelease();
      v96 = _swiftEmptyArrayStorage;
    }

    v97 = v96[2];

    if (!__OFSUB__(v53 >> 1, v144))
    {
      if (v97 == (v53 >> 1) - v144)
      {
        v95 = swift_dynamicCastClass();
        if (!v95)
        {
          swift_unknownObjectRelease();
          v95 = _swiftEmptyArrayStorage;
        }

        goto LABEL_25;
      }

      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_36:
  swift_unknownObjectRelease();
LABEL_18:
  v94 = v144;
  sub_51454(v141, v134, v144, v53);
LABEL_25:
  *(v0 + 2528) = v95;
  sub_14AF70((v0 + 2528));
  v98 = *(v0 + 2528);
  *(v0 + 2776) = v98;
  if (qword_228300 != -1)
  {
    swift_once();
  }

  v99 = *(v0 + 2640);
  v100 = *(v0 + 2632);
  v101 = *(v0 + 2624);
  v102 = *(v0 + 2568);
  v103 = sub_1B4644();
  *(v0 + 2784) = sub_50E58(v103, qword_260C60);
  sub_8478C(v99, v100);
  sub_8478C(v102, v101);
  swift_unknownObjectRetain_n();

  v104 = sub_1B4624();
  v105 = sub_1B4DB4();

  v146 = v104;
  v106 = os_log_type_enabled(v104, v105);
  v107 = *(v0 + 2632);
  if (v106)
  {
    v143 = v105;
    v108 = swift_slowAlloc();
    *(v0 + 2552) = swift_slowAlloc();
    *v108 = 136446978;
    v109 = sub_1B40D4();
    v111 = v110;
    sub_155848(v107);
    v112 = sub_60FF4(v109, v111, (v0 + 2552));

    *(v108 + 4) = v112;
    *(v108 + 12) = 2048;
    result = swift_unknownObjectRelease();
    if (__OFSUB__(v53 >> 1, v94))
    {
      __break(1u);
      return result;
    }

    v113 = *(v0 + 2624);
    *(v108 + 14) = (v53 >> 1) - v94;
    swift_unknownObjectRelease();
    *(v108 + 22) = 2082;
    v114 = sub_1B40D4();
    v116 = v115;
    sub_155848(v113);
    v117 = sub_60FF4(v114, v116, (v0 + 2552));

    *(v108 + 24) = v117;
    *(v108 + 32) = 2080;
    v118 = sub_14F0AC(v98);
    v120 = sub_60FF4(v118, v119, (v0 + 2552));

    *(v108 + 34) = v120;
    _os_log_impl(&dword_0, v146, v143, "issuing subrequest %{public}s with %ld seed books for request %{public}s seedBooks=%s", v108, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v121 = *(v0 + 2624);
    swift_unknownObjectRelease_n();

    sub_155848(v121);
    sub_155848(v107);
  }

  v122 = *(v0 + 2656);
  v123 = *(v0 + 2648);
  memcpy((v0 + 16), (v0 + 1856), 0x170uLL);
  *(v0 + 384) = v123;
  *(v0 + 392) = *(v0 + 2512);
  *(v0 + 408) = v122;
  memcpy((v0 + 416), (v0 + 1136), 0x2D0uLL);
  v124 = swift_task_alloc();
  *(v0 + 2792) = v124;
  *v124 = v0;
  v124[1] = sub_14E268;
  v125 = *(v0 + 2640);
  v126 = *(v0 + 2576);

  return sub_14F254(v0 + 2224, v125, v0 + 16);
}

uint64_t sub_14EFF4()
{
  v1 = v0[346];
  v2 = v0[330];
  swift_unknownObjectRelease();
  sub_155848(v2);
  v3 = v0[350];
  v4 = v0[330];
  v5 = v0[329];
  v6 = v0[328];
  v7 = v0[327];
  v8 = v0[325];

  v9 = v0[1];

  return v9();
}

uint64_t sub_14F0AC(uint64_t a1)
{
  v18 = 0x202020200A5BLL;
  v19 = 0xE600000000000000;
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_3747C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      memcpy(v16, v4, 0x231uLL);
      v5 = sub_14B190();
      v17 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_3747C((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v2 = v17;
      }

      v2[2] = v8 + 1;
      v9 = &v2[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      v4 += 568;
      --v1;
    }

    while (v1);
  }

  v16[0] = v2;
  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_42094(&qword_229000, &qword_228590, &qword_1B6590);
  v12 = sub_1B4764();
  v14 = v13;

  v20._countAndFlagsBits = v12;
  v20._object = v14;
  sub_1B48D4(v20);

  v21._countAndFlagsBits = 93;
  v21._object = 0xE100000000000000;
  sub_1B48D4(v21);
  return v18;
}

uint64_t sub_14F254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[75] = v3;
  v4[74] = a2;
  v4[73] = a1;
  v4[76] = *(a3 + 464);
  return _swift_task_switch(sub_14F284, 0, 0);
}

uint64_t sub_14F284()
{
  v69 = v0;
  v2 = *(v0 + 592);
  v3 = sub_1B40D4();
  v5 = v4;
  v62 = v3;
  *(v0 + 616) = v3;
  *(v0 + 624) = v4;
  v6 = type metadata accessor for SeedBasedRecommendationRequest(0);
  v7 = v6;
  v8 = *(v2 + *(v6 + 20));
  v9 = *(v8 + 16);
  if (v9)
  {
    v63 = v6;
    v64 = v0;
    v0 = v5;
    v10 = sub_351DC(v9, 0);
    v1 = sub_3EF0C(&v65, v10 + 32, v9, v8);
    v12 = v67;
    v11 = v68;

    sub_417B8();
    if (v1 != v9)
    {
      __break(1u);
      goto LABEL_30;
    }

    v7 = v63;
    v0 = v64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v65 = v10;
  sub_14B0F4(&v65, sub_56BA8, &type metadata for SeedBook, sub_152180, sub_151780);
  v12 = *(v0 + 592);
  v13 = v65;
  v11 = swift_task_alloc();
  *(v11 + 16) = v12;
  v14 = sub_1A9E3C(sub_1558A4, v11, v13);

  v15 = *(v14 + 2);
  v16 = *(v12 + v7[13]);
  if ((v15 * v16) >> 64 != (v15 * v16) >> 63)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_13;
  }

  v17 = *(v0 + 592);
  if (*(v17 + v7[14]) >= v15 * v16)
  {
    v18 = v15 * v16;
  }

  else
  {
    v18 = *(v17 + v7[14]);
  }

  sub_F0C94(v14, &v65);

  v11 = v65;
  v12 = v66;
  sub_2B0C(&qword_22E198, &qword_1CF408);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BCA80;
  v19 = v7;
  if (*(v17 + v7[9]))
  {
    v20 = _swiftEmptySetSingleton;
  }

  else
  {
    v21 = *(v0 + 608);

    v20 = sub_40854(v22);
  }

  v23 = *(v0 + 592);
  sub_F0DA8(v20, v18, v1 + 32);
  v64 = v5;
  v24 = *(v0 + 592);

  v25 = (v24 + v19[7]);
  v59 = *v25;
  v60 = v25[1];
  v26 = qword_228300;

  if (v26 != -1)
  {
    goto LABEL_31;
  }

LABEL_13:
  v61 = v11;
  v27 = (v0 + 16);
  v28 = sub_1B4644();
  *(v0 + 632) = sub_50E58(v28, qword_260C60);

  v29 = sub_1B4624();
  v30 = sub_1B4DB4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = v12;
    v33 = swift_slowAlloc();
    v65 = v33;
    *v31 = 136446210;
    v34 = v62;
    *(v31 + 4) = sub_60FF4(v62, v64, &v65);
    _os_log_impl(&dword_0, v29, v30, "initiating request for %{public}s", v31, 0xCu);
    sub_2BF8(v33);
    v12 = v32;
  }

  else
  {

    v34 = v62;
  }

  v35 = (v0 + 408);
  v36 = 0xD00000000000002ELL;
  v37 = *(v0 + 600);

  sub_F212C(0, 0);
  *(v0 + 408) = v34;
  *(v0 + 416) = v64;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0;
  *(v0 + 440) = v59;
  *(v0 + 448) = v60;
  *(v0 + 456) = v61;
  *(v0 + 464) = v12;
  *(v0 + 472) = v1;
  *(v0 + 480) = 0;
  if (*(v37 + 48) > 1u)
  {
    if (*(v37 + 48) == 2)
    {
      v39 = "rsonalization-server.apple.com";
      v36 = 0xD00000000000003FLL;
      goto LABEL_24;
    }

    v38 = "https://books-personalization-server.apple.com";
  }

  else
  {
    if (*(v37 + 48))
    {
      v39 = "ation-server.newsapps.apple.com";
      v36 = 0xD00000000000004CLL;
      goto LABEL_24;
    }

    v36 = 0xD00000000000003DLL;
    v38 = "https://devel-books-personalization-server.newsapps.apple.com";
  }

  v39 = (v38 - 32);
LABEL_24:
  v40 = *(v0 + 600);
  v41 = v39 | 0x8000000000000000;
  v42 = v40[2];
  v43 = v40[3];
  v44 = v40[4];
  v45 = v40[5];
  sub_404C4((v40 + 12), v0 + 544);
  *(v0 + 168) = v36;
  *(v0 + 176) = v41;
  *(v0 + 184) = v42;
  *(v0 + 192) = v43;
  *(v0 + 200) = v44;
  *(v0 + 208) = v45;
  sub_404C4(v0 + 544, v0 + 216);
  v65 = v42;
  v66 = v43;
  v67 = v44;
  v68 = v45;
  sub_41BF8(v42);
  sub_41BF8(v44);
  sub_41BF8(v42);
  sub_41BF8(v44);
  ClientConverter.init(configuration:)(&v65, v0 + 256);
  sub_2BF8((v0 + 544));
  v46 = *(v0 + 368);
  *(v0 + 112) = *(v0 + 352);
  *(v0 + 128) = v46;
  *(v0 + 144) = *(v0 + 384);
  *(v0 + 160) = *(v0 + 400);
  v47 = *(v0 + 304);
  *(v0 + 48) = *(v0 + 288);
  *(v0 + 64) = v47;
  v48 = *(v0 + 336);
  *(v0 + 80) = *(v0 + 320);
  *(v0 + 96) = v48;
  v49 = *(v0 + 272);
  *v27 = *(v0 + 256);
  *(v0 + 32) = v49;

  v50 = sub_1B4624();
  v51 = sub_1B4DB4();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v65 = v53;
    *v52 = 136446210;
    *(v52 + 4) = sub_60FF4(v62, v64, &v65);
    _os_log_impl(&dword_0, v50, v51, "fetching recommendations for %{public}s", v52, 0xCu);
    sub_2BF8(v53);
  }

  v54 = swift_task_alloc();
  *(v0 + 640) = v54;
  *(v54 + 16) = v27;
  *(v54 + 24) = v35;
  v55 = swift_task_alloc();
  *(v0 + 648) = v55;
  *(v55 + 16) = v27;
  v56 = swift_task_alloc();
  *(v0 + 656) = v56;
  *(v56 + 16) = v27;
  v57 = swift_task_alloc();
  *(v0 + 664) = v57;
  *v57 = v0;
  v57[1] = sub_14FA20;

  return sub_F4974(v0 + 488, v35, sub_F44B4, v54, &unk_1CF410, v55, sub_F4958, v56);
}

uint64_t sub_14FA20()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v13 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v4 = v2[82];
    v5 = v2[81];
    v6 = v2[80];
    v7 = v2[78];

    v8 = sub_14FD88;
  }

  else
  {
    v9 = v2[82];
    v10 = v2[81];
    v11 = v2[80];
    sub_1559C4((v2 + 51));

    v8 = sub_14FB94;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_14FB94()
{
  v27 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 488);
  v4 = *(v0 + 496);
  v5 = *(v0 + 504);
  v24 = *(v0 + 512);
  v6 = *(v0 + 520);
  v7 = *(v0 + 528);
  v8 = *(v0 + 536);

  v9 = sub_1B4624();
  v10 = sub_1B4DB4();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 624);
  if (v11)
  {
    v23 = v3;
    v13 = *(v0 + 616);
    v22 = v4;
    v14 = swift_slowAlloc();
    v21 = v5;
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136446210;
    v16 = sub_60FF4(v13, v12, v25);

    *(v14 + 4) = v16;
    v3 = v23;
    _os_log_impl(&dword_0, v9, v10, "fetched recommendations for %{public}s", v14, 0xCu);
    sub_2BF8(v15);
    v5 = v21;

    v4 = v22;
  }

  else
  {
  }

  v17 = *(v0 + 672);
  v18 = *(v0 + 584);
  v25[0] = v3;
  v25[1] = v4;
  v25[2] = v5;
  v25[3] = v24;
  v25[4] = v6;
  v25[5] = v7;
  v26 = v8;
  sub_F0EB4(v18);
  sub_136AC4(v0 + 16);
  sub_155A18(v3, v4, v5, v24, v6, v7, v8);
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_14FD88()
{
  sub_1559C4(v0 + 408);
  sub_136AC4(v0 + 16);
  v1 = *(v0 + 672);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_14FE0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3747C(0, v1, 0);
    v3 = (a1 + 48);
    do
    {
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      v20 = *v3;

      v21 = sub_1B5594();
      v22 = v6;
      v23._countAndFlagsBits = 58;
      v23._object = 0xE100000000000000;
      sub_1B48D4(v23);
      v24._countAndFlagsBits = sub_1B5594();
      sub_1B48D4(v24);

      v25._countAndFlagsBits = 58;
      v25._object = 0xE100000000000000;
      sub_1B48D4(v25);
      if (*(v5 + 16) && (v7 = sub_3AFEC(0, 0), (v8 & 1) != 0))
      {
        v9 = *(*(v5 + 56) + 8 * v7);
        sub_2B0C(&qword_22A048, &unk_1BFC60);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1BCA80;
        *(v10 + 56) = &type metadata for Double;
        *(v10 + 64) = &protocol witness table for Double;
        *(v10 + 32) = v9;
        v11._countAndFlagsBits = sub_1B47F4();
        object = v11._object;
      }

      else
      {
        object = 0xE300000000000000;
        v11._countAndFlagsBits = 7104878;
      }

      v11._object = object;
      sub_1B48D4(v11);

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_3747C((v13 > 1), v14 + 1, 1);
      }

      v3 += 3;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v21;
      v15[5] = v22;
      --v1;
    }

    while (v1);
  }

  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_42094(&qword_229000, &qword_228590, &qword_1B6590);
  v16 = sub_1B4764();
  v18 = v17;

  v26._countAndFlagsBits = v16;
  v26._object = v18;
  sub_1B48D4(v26);

  v27._countAndFlagsBits = 93;
  v27._object = 0xE100000000000000;
  sub_1B48D4(v27);
  return 0x202020200A5BLL;
}

uint64_t sub_1500DC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  sub_41C08(v0[2]);
  sub_41C08(v2);
  sub_2BF8(v0 + 7);
  sub_2BF8(v0 + 12);
  v4 = v0[17];

  return swift_deallocClassInstance();
}

uint64_t sub_150170(uint64_t a1, const void *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_91B58;

  return sub_14B554(a1, a2);
}

void *sub_150218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v145 = _swiftEmptyArrayStorage;
  v78 = v2;
  sub_37574(0, v2, 0);
  v5 = 0;
  result = _swiftEmptyArrayStorage;
  v77 = a2 + 32;
  v105 = a1;
  while (1)
  {
    v7 = v77 + 136 * v5;
    v8 = *(v7 + 112);
    v142 = *(v7 + 96);
    v143 = v8;
    v144 = *(v7 + 128);
    v9 = *(v7 + 48);
    v138 = *(v7 + 32);
    v139 = v9;
    v10 = *(v7 + 80);
    v140 = *(v7 + 64);
    v141 = v10;
    v11 = *(v7 + 16);
    v137[0] = *v7;
    v137[1] = v11;
    v12 = v11;
    v13 = BYTE8(v11);
    v84 = result;
    v85 = v5;
    v82 = *(&v138 + 1);
    v83 = *(&v141 + 1);
    v89 = v141;
    v87 = v138;
    v88 = v140;
    v86 = v11;
    v81 = BYTE8(v137[0]);
    v80 = *&v137[0];
    if (v9)
    {
      break;
    }

    sub_43688(v12, v13);

    v63 = 0;
    v64 = v78;
LABEL_43:
    v67 = v142;
    v68 = v143;
    LODWORD(v116) = *__dst;
    *(&v116 + 3) = *&__dst[3];
    __src[0] = *v126;
    *(__src + 3) = *&v126[3];
    result = v84;
    v69 = v85;
    v71 = v84[2];
    v70 = v84[3];
    v72 = v144;
    v73 = *(&v139 + 1);
    v145 = v84;
    if (v71 >= v70 >> 1)
    {
      v113 = v143;
      v115 = v142;
      sub_37574((v70 > 1), v71 + 1, 1);
      v68 = v113;
      v67 = v115;
      v69 = v85;
      v64 = v78;
      result = v145;
    }

    result[2] = v71 + 1;
    v74 = &result[17 * v71];
    v74[4] = v80;
    v5 = v69 + 1;
    *(v74 + 40) = v81;
    v75 = *(&v116 + 3);
    *(v74 + 41) = v116;
    *(v74 + 11) = v75;
    v74[6] = v86;
    *(v74 + 56) = v13;
    v76 = __src[0];
    *(v74 + 15) = *(__src + 3);
    *(v74 + 57) = v76;
    v74[8] = v87;
    v74[9] = v82;
    v74[10] = v63;
    v74[11] = v73;
    *(v74 + 6) = v88;
    v74[14] = v89;
    v74[15] = v83;
    *(v74 + 8) = v67;
    *(v74 + 9) = v68;
    *(v74 + 160) = v72;
    if (v5 == v64)
    {
      return result;
    }
  }

  v79 = BYTE8(v11);
  v14 = *(v9 + 16);
  v15 = v9;
  if (!v14)
  {
    swift_bridgeObjectRetain_n();
    sub_429F8(v137, __dst);

    sub_42BA4(v137, __dst);
    sub_43688(v86, v13);

    v65 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
LABEL_39:
      sub_2B0C(&qword_22A510, &qword_1C0208);
      v66 = sub_1B52B4();
    }

    else
    {
LABEL_41:
      v66 = _swiftEmptyDictionarySingleton;
    }

    *__dst = v66;
    v64 = v78;
    sub_15130C(v65, 1, __dst);
    v13 = v79;

    sub_43FF4(v137);

    sub_5C740(v137);
    v63 = *__dst;
    goto LABEL_43;
  }

  swift_bridgeObjectRetain_n();
  sub_429F8(v137, __dst);

  sub_42BA4(v137, __dst);
  sub_43688(v86, v13);
  v136 = _swiftEmptyArrayStorage;

  sub_37A58(0, v14, 0);
  v104 = v136;
  v16 = v15 + 64;
  v17 = -1 << *(v15 + 32);
  v18 = sub_1B4F84();
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
  }

  else
  {
    v93 = v15;
    v94 = -v17;
    v90 = v15 + 72;
    v91 = v14;
    v19 = 1;
    v103 = *(v15 + 36);
    v20 = v103;
    v92 = v15 + 64;
    while (v18 < v94)
    {
      if (v20 != v103)
      {
        goto LABEL_50;
      }

      v21 = v18 >> 6;
      v22 = 1 << v18;
      if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_50;
      }

      v102 = v19;
      v23 = *(*(v15 + 48) + v18);
      v24 = *(*(v15 + 56) + 8 * v18);
      v135 = v23;
      v25 = *(v24 + 16);
      if (v25)
      {
        v95 = 1 << v18;
        v96 = v18 >> 6;
        v98 = v20;
        v100 = v18;
        v134 = _swiftEmptyArrayStorage;

        sub_3749C(0, v25, 0);
        v26 = v134;
        v114 = v25 - 1;
        v27 = 32;
        for (i = v24; ; v24 = i)
        {
          memcpy(__dst, (v24 + v27), sizeof(__dst));
          v28 = *__dst;
          if (*(a1 + 16) && (v29 = sub_43124(*__dst), (v30 & 1) != 0))
          {
            memcpy(v126, (*(a1 + 56) + 568 * v29), sizeof(v126));
            v112 = v126[560];
            v28 = *v126;
            v110 = *&v126[88];
            v111 = *&v126[552];
            v108 = *&v126[48];
            v109 = *&v126[64];
            v31 = v126[80];
            v32 = *&v126[32];
            v33 = v126[40];
            v107 = *&v126[16];
            v34 = v126[8];
            sub_4299C(v126, &v116);
            v35 = v126;
          }

          else
          {
            v112 = __dst[560];
            v110 = *&__dst[88];
            v111 = *&__dst[552];
            v108 = *&__dst[48];
            v109 = *&__dst[64];
            v31 = __dst[80];
            v32 = *&__dst[32];
            v33 = __dst[40];
            v107 = *&__dst[16];
            v34 = __dst[8];
            sub_4299C(__dst, v126);
            v35 = __dst;
          }

          v36 = *(v35 + 9);
          v129 = *(v35 + 8);
          v130 = v36;
          v131 = *(v35 + 20);
          v37 = *(v35 + 6);
          v128 = *(v35 + 7);
          v127 = v37;
          memcpy(__src, v35 + 168, 0x179uLL);
          v134 = v26;
          v39 = v26[2];
          v38 = v26[3];
          if (v39 >= v38 >> 1)
          {
            sub_3749C((v38 > 1), v39 + 1, 1);
            v26 = v134;
          }

          v121 = v33;
          v118 = v129;
          v119 = v130;
          v120 = v131;
          v116 = v127;
          v117 = v128;
          memcpy(v126, __src, 0x179uLL);
          v26[2] = v39 + 1;
          v40 = &v26[71 * v39];
          v40[4] = v28;
          *(v40 + 40) = v34;
          v41 = *&v125[3];
          *(v40 + 41) = *v125;
          *(v40 + 11) = v41;
          *(v40 + 3) = v107;
          v40[8] = v32;
          *(v40 + 72) = v33;
          v42 = *&v124[3];
          *(v40 + 73) = *v124;
          *(v40 + 19) = v42;
          *(v40 + 5) = v108;
          *(v40 + 6) = v109;
          *(v40 + 112) = v31;
          v43 = *&v123[3];
          *(v40 + 113) = *v123;
          *(v40 + 29) = v43;
          v40[15] = v110;
          *(v40 + 8) = v116;
          v44 = v117;
          v45 = v118;
          v46 = v119;
          v40[24] = v120;
          *(v40 + 10) = v45;
          *(v40 + 11) = v46;
          *(v40 + 9) = v44;
          memcpy(v40 + 25, v126, 0x179uLL);
          v47 = *&v122[3];
          *(v40 + 577) = *v122;
          *(v40 + 145) = v47;
          v40[73] = v111;
          *(v40 + 592) = v112;
          if (!v114)
          {
            break;
          }

          --v114;
          v27 += 568;
          a1 = v105;
        }

        v23 = v135;
        v48 = v104;
        a1 = v105;
        v20 = v98;
        v18 = v100;
        v22 = v95;
        v21 = v96;
      }

      else
      {
        v26 = _swiftEmptyArrayStorage;
        v48 = v104;
      }

      v136 = v48;
      v50 = v48[2];
      v49 = v48[3];
      if (v50 >= v49 >> 1)
      {
        v99 = v20;
        v101 = v18;
        v97 = v21;
        v62 = v22;
        sub_37A58((v49 > 1), v50 + 1, 1);
        v22 = v62;
        v21 = v97;
        v20 = v99;
        v18 = v101;
        v48 = v136;
      }

      v48[2] = v50 + 1;
      v51 = &v48[2 * v50];
      *(v51 + 32) = v23;
      v51[5] = v26;
      v15 = v93;
      v52 = 1 << *(v93 + 32);
      if (v18 >= v52)
      {
        goto LABEL_51;
      }

      v16 = v92;
      v53 = *(v92 + 8 * v21);
      if ((v53 & v22) == 0)
      {
        goto LABEL_52;
      }

      if (v103 != *(v93 + 36))
      {
        goto LABEL_53;
      }

      v104 = v48;
      v54 = v53 & (-2 << (v18 & 0x3F));
      if (v54)
      {
        v55 = v18;
        sub_42FF0(v18, v20, 0);
        v18 = __clz(__rbit64(v54)) | v55 & 0x7FFFFFFFFFFFFFC0;
        v56 = v91;
      }

      else
      {
        v57 = v21 << 6;
        v58 = v21 + 1;
        v56 = v91;
        v59 = (v90 + 8 * v21);
        while (v58 < (v52 + 63) >> 6)
        {
          v61 = *v59++;
          v60 = v61;
          v57 += 64;
          ++v58;
          if (v61)
          {
            sub_42FF0(v18, v20, 0);
            v18 = __clz(__rbit64(v60)) + v57;
            goto LABEL_34;
          }
        }

        sub_42FF0(v18, v20, 0);
        v18 = v52;
      }

LABEL_34:
      if (v102 == v56)
      {
        v65 = v104;
        if (!v104[2])
        {
          goto LABEL_41;
        }

        goto LABEL_39;
      }

      v20 = *(v93 + 36);
      v19 = v102 + 1;
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_150AB0()
{
  v1 = *(v0 + 48) >> 62;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v8 = *(v0 + 56);
      ReviewInfo.starRating.getter(&v7);
      v9._countAndFlagsBits = sub_1B5594();
      sub_1B48D4(v9);

      v10._countAndFlagsBits = 41;
      v10._object = 0xE100000000000000;
      sub_1B48D4(v10);
      return 0x6974615272617473;
    }

    else
    {
      v3 = *(v0 + 8);
      if (v3 > 3)
      {
        v6 = 0xD00000000000001DLL;
        if (v3 != 4)
        {
          v6 = 0x6C706D6153736177;
        }

        if (*(v0 + 8) <= 5u)
        {
          return v6;
        }

        else
        {
          return 0xD000000000000014;
        }
      }

      else
      {
        v4 = 0x6863727550736177;
        if (v3 == 2)
        {
          v4 = 0xD000000000000015;
        }

        v5 = 0xD00000000000001FLL;
        if (!*(v0 + 8))
        {
          v5 = 0xD000000000000019;
        }

        if (*(v0 + 8) <= 1u)
        {
          return v5;
        }

        else
        {
          return v4;
        }
      }
    }
  }

  else if (v1)
  {
    return 0x656B694C65726F6DLL;
  }

  else
  {
    return 0x656B694C7373656CLL;
  }
}

uint64_t sub_150CF0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_7A038;

  return sub_14B95C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_150DB8(uint64_t a1, char a2, void *a3)
{
  v7 = sub_1B40F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2B0C(&qword_229360, &qword_1BC400);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v17 = v58 - v16;
  v63 = *(a1 + 16);
  if (!v63)
  {
  }

  v58[1] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v62 = *(v15 + 72);
  v64 = a1;
  v58[0] = v19;
  sub_43050(a1 + v19, v58 - v16, &qword_229360, &qword_1BC400);
  v59 = v8;
  v65 = *(v8 + 32);
  v66 = v7;
  v65(v11, v17, v7);
  v61 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_3AC78(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_17F10C(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_3AC78(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      sub_1B5784();
      __break(1u);
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v35 = v22;
  sub_185F44();
  v22 = v35;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();
    v69 = v31;
    swift_errorRetain();
    sub_2B0C(&qword_229560, &unk_1BFC70);
    v32 = swift_dynamicCast();
    v33 = v66;
    if ((v32 & 1) == 0)
    {

      (*(v59 + 8))(v11, v33);
    }

    goto LABEL_26;
  }

LABEL_12:
  v36 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v37 = v36[6];
  v60 = *(v59 + 72);
  v38 = v22;
  v65((v37 + v60 * v22), v11, v66);
  *(v36[7] + 8 * v38) = v20;
  v39 = v36[2];
  v26 = __OFADD__(v39, 1);
  v40 = v39 + 1;
  if (!v26)
  {
    v36[2] = v40;
    v41 = v64;
    if (v63 == 1)
    {
    }

    v42 = v64 + v62 + v58[0];
    v43 = 1;
    while (v43 < *(v41 + 16))
    {
      sub_43050(v42, v17, &qword_229360, &qword_1BC400);
      v65(v11, v17, v66);
      v44 = *&v17[v61];
      v45 = *a3;
      v46 = sub_3AC78(v11);
      v48 = v45[2];
      v49 = (v47 & 1) == 0;
      v26 = __OFADD__(v48, v49);
      v50 = v48 + v49;
      if (v26)
      {
        goto LABEL_23;
      }

      v51 = v47;
      if (v45[3] < v50)
      {
        sub_17F10C(v50, 1);
        v52 = *a3;
        v46 = sub_3AC78(v11);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v51)
      {
        goto LABEL_9;
      }

      v54 = *a3;
      *(*a3 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v55 = v46;
      v65((v54[6] + v60 * v46), v11, v66);
      *(v54[7] + 8 * v55) = v44;
      v56 = v54[2];
      v26 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v43;
      v54[2] = v57;
      v42 += v62;
      v41 = v64;
      if (v63 == v43)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1B5084(30);
  v70._object = 0x80000000001D57D0;
  v70._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1B48D4(v70);
  sub_1B51F4();
  v71._countAndFlagsBits = 39;
  v71._object = 0xE100000000000000;
  sub_1B48D4(v71);
  result = sub_1B5234();
  __break(1u);
  return result;
}

uint64_t sub_15130C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  if (!v8)
  {
  }

  v9 = *a3;
  v10 = sub_3AB0C(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_183284(v15, v6 & 1);
    v17 = *a3;
    v10 = sub_3AB0C(v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_1B5784();
    __break(1u);
  }

  if (v6)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  sub_187DC0();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_2B0C(&qword_229560, &unk_1BFC70);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + v10) = v7;
  *(v21[7] + 8 * v10) = v8;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1B5084(30);
    v36._object = 0x80000000001D57D0;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    sub_1B48D4(v36);
    sub_1B51F4();
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    sub_1B48D4(v37);
    result = sub_1B5234();
    __break(1u);
    return result;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v24 = 1;
    while (v24 < *(a1 + 16))
    {
      v7 = *(v6 - 8);
      v8 = *v6;

      if (!v8)
      {
      }

      v25 = *a3;
      v26 = sub_3AB0C(v7);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_183284(v30, 1);
        v31 = *a3;
        v26 = sub_3AB0C(v7);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v33[6] + v26) = v7;
      *(v33[7] + 8 * v26) = v8;
      v34 = v33[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v24;
      v33[2] = v35;
      v6 += 2;
      if (v4 == v24)
      {
      }
    }

    goto LABEL_27;
  }
}

Swift::Int sub_151670(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1B5584(v7);
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      if (v7 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        v10 = sub_1B4B34();
        v10[2] = v7 / 2;
      }

      v12[0] = v10 + 4;
      v12[1] = v7 / 2;
      v11 = v10;
      a3(v12, v13, a1, v9);
      v11[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_151780(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v33 = *a4;
  v4 = *a4 + 568 * a3 - 568;
  v5 = result - a3 + 1;
LABEL_5:
  v31 = v4;
  v32 = a3;
  v30 = v5;
  for (i = v5; ; i = v27 + 1)
  {
    memcpy(__dst, (v4 + 568), 0x231uLL);
    result = memcpy(v41, v4, 0x231uLL);
    v7 = __dst[18];
    if (__dst[18] >> 1 == 0xFFFFFFFFLL)
    {
      break;
    }

    v42 = i;
    v8 = __dst[12];
    v9 = __dst[13];
    v10 = __dst[14];
    v11 = __dst[15];
    v12 = __dst[16];
    v13 = __dst[17];
    if ((__dst[18] >> 62) > 2)
    {
      v14 = __dst[12];
    }

    else
    {
      sub_2B0C(&qword_229488, &qword_1BC520);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BCA80;
      *(v14 + 32) = v8;
      *(v14 + 40) = v9;
      *(v14 + 48) = v10;
      *(v14 + 56) = v11;
      *(v14 + 64) = v12;
      *(v14 + 72) = v13;
      *(v14 + 80) = v7 & 1;
    }

    sub_4299C(__dst, __src);
    sub_4299C(v41, __src);
    sub_43050(&__dst[12], __src, &qword_22A4E0, &unk_1C01D0);
    v15 = COERCE_DOUBLE(Array<A>.affinity.getter(v14));
    v17 = v16;

    if (v17)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v15;
    }

    v36 = v41[8];
    v37 = v41[9];
    v38 = *&v41[10];
    v34 = v41[6];
    v35 = v41[7];
    v19 = v41[9];
    if (*&v41[9] >> 1 == 0xFFFFFFFFLL)
    {
      goto LABEL_28;
    }

    v20 = v34;
    v21 = v35;
    v22 = v36;
    if ((*&v41[9] >> 62) > 2)
    {
      v23 = v34;
    }

    else
    {
      sub_2B0C(&qword_229488, &qword_1BC520);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1BCA80;
      *(v23 + 32) = v20;
      *(v23 + 48) = v21;
      *(v23 + 64) = v22;
      *(v23 + 80) = v19 & 1;
    }

    sub_42CD4(&v34, __src);
    v24 = COERCE_DOUBLE(Array<A>.affinity.getter(v23));
    v26 = v25;

    sub_2601C(v41);
    result = sub_2601C(__dst);
    v27 = v42;
    if (v26)
    {
      if (v18 == 0.0)
      {
        goto LABEL_21;
      }

      v28 = 0.0;
    }

    else
    {
      v28 = v24;
      if (v18 == v24)
      {
LABEL_21:
        if (__dst[0] >= *&v41[0])
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }
    }

    if (v28 >= v18)
    {
      goto LABEL_4;
    }

LABEL_24:
    if (!v33)
    {
      goto LABEL_29;
    }

    memcpy(__src, (v4 + 568), 0x231uLL);
    memcpy((v4 + 568), v4, 0x238uLL);
    result = memcpy(v4, __src, 0x231uLL);
    if (!v27)
    {
LABEL_4:
      a3 = v32 + 1;
      v4 = v31 + 568;
      v5 = v30 - 1;
      if (v32 + 1 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    v4 -= 568;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_151A94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 24 * a3 + 16);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *(v9 - 1);
      if (v7 >= v10)
      {
        v11 = v7 != v10 || *v9 >= *(v9 - 3);
        if (v11)
        {
LABEL_4:
          ++a3;
          v5 += 24;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v12 = *v9;
      v13 = v9[1];
      *v9 = *(v9 - 3);
      v9[2] = *(v9 - 1);
      *(v9 - 2) = v13;
      *(v9 - 1) = v7;
      *(v9 - 3) = v12;
      v9 -= 3;
      v11 = __CFADD__(v8++, 1);
      if (v11)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_151B2C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v7);
      v7 = result;
    }

    v82 = v7 + 2;
    v83 = v7[2];
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v7[2 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_153964((*a3 + 136 * *v84), (*a3 + 136 * *v86), (*a3 + 136 * v87), v91);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 136 * v6);
      v10 = 136 * v8;
      v11 = (*a3 + 136 * v8);
      v14 = *v11;
      v13 = v11 + 17;
      v12 = v14;
      v15 = v8 + 2;
      while (v5 != v15)
      {
        v16 = *v13;
        v17 = v13[17];
        v13 += 17;
        ++v15;
        if (v9 < v12 == v17 >= v16)
        {
          v6 = v15 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 136 * v6 - 136;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v104 = *(v22 + v10 + 96);
            v106 = *(v22 + v10 + 112);
            v108 = *(v22 + v10 + 128);
            v96 = *(v22 + v10 + 32);
            v98 = *(v22 + v10 + 48);
            v100 = *(v22 + v10 + 64);
            v102 = *(v22 + v10 + 80);
            v92 = *(v22 + v10);
            v94 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x88uLL);
            *(v21 + 96) = v104;
            *(v21 + 112) = v106;
            *(v21 + 128) = v108;
            *(v21 + 32) = v96;
            *(v21 + 48) = v98;
            *(v21 + 64) = v100;
            *(v21 + 80) = v102;
            *v21 = v92;
            *(v21 + 16) = v94;
          }

          ++v20;
          v18 -= 136;
          v10 += 136;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v35 = v7[2];
    v34 = v7[3];
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_32F04((v34 > 1), v35 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v36;
    v37 = v7 + 4;
    v38 = &v7[2 * v35 + 4];
    *v38 = v8;
    v38[1] = v6;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = v7[4];
          v41 = v7[5];
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v7[2 * v36];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v37[2 * v39];
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v7[2 * v36];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v37[2 * v39];
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v39 - 1 >= v36)
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
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = &v37[2 * v39 - 2];
        v78 = *v77;
        v79 = &v37[2 * v39];
        v80 = v79[1];
        sub_153964((*a3 + 136 * *v77), (*a3 + 136 * *v79), (*a3 + 136 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v39 > v7[2])
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = v7[2];
        if (v39 >= v81)
        {
          goto LABEL_101;
        }

        v36 = v81 - 1;
        result = memmove(&v37[2 * v39], v79 + 2, 16 * (v81 - 1 - v39));
        v7[2] = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v37[2 * v36];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v7[2 * v36];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v37[2 * v39];
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 136 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    v28 = (v27 - 136);
    if (*v27 >= *(v27 - 136))
    {
LABEL_29:
      ++v6;
      v24 += 136;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v105 = *(v27 + 96);
    v107 = *(v27 + 112);
    v109 = *(v27 + 128);
    v97 = *(v27 + 32);
    v99 = *(v27 + 48);
    v101 = *(v27 + 64);
    v103 = *(v27 + 80);
    v93 = *v27;
    v95 = *(v27 + 16);
    v29 = *(v27 - 56);
    *(v27 + 64) = *(v27 - 72);
    *(v27 + 80) = v29;
    v30 = *(v27 - 24);
    *(v27 + 96) = *(v27 - 40);
    *(v27 + 112) = v30;
    *(v27 + 128) = *(v27 - 8);
    v31 = *(v27 - 88);
    *(v27 + 32) = *(v27 - 104);
    *(v27 + 48) = v31;
    v32 = *(v27 - 120);
    *v27 = *v28;
    *(v27 + 16) = v32;
    *(v27 - 72) = v101;
    *(v27 - 56) = v103;
    *(v27 - 40) = v105;
    *(v27 - 24) = v107;
    *(v27 - 8) = v109;
    *(v27 - 104) = v97;
    *(v27 - 88) = v99;
    v27 -= 136;
    *v28 = v93;
    v28[1] = v95;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_152180(uint64_t a1)
{
  result = __chkstk_darwin(a1);
  v118 = result;
  v123 = v6;
  v7 = *(v6 + 8);
  if (v7 >= 1)
  {
    v117 = v5;
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = v8 + 1;
      v122 = v9;
      v120 = v8;
      if (v8 + 1 >= v7)
      {
        v33 = v8 + 1;
        goto LABEL_36;
      }

      v1 = *v123;
      v11 = (*v123 + 568 * v10);
      memcpy(v141, v11, 0x231uLL);
      memcpy(__dst, v11, 0x231uLL);
      v3 = v1 + 568 * v8;
      memcpy(v142, v3, sizeof(v142));
      memcpy(__src, v3, 0x231uLL);
      sub_4299C(v141, v138);
      sub_4299C(v142, v138);
      LODWORD(v144) = sub_12CA44(__dst, __src);
      if (v2)
      {
        memcpy(v137, __src, 0x231uLL);
        sub_2601C(v137);
        memcpy(v138, __dst, 0x231uLL);
        sub_2601C(v138);
      }

      memcpy(v137, __src, 0x231uLL);
      sub_2601C(v137);
      memcpy(v138, __dst, 0x231uLL);
      result = sub_2601C(v138);
      v12 = v8 + 2;
      if (v8 + 2 >= v7)
      {
        v33 = v8 + 2;
LABEL_31:
        if ((v144 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_34:
        if (v33 >= v120)
        {
          if (v120 <= v10)
          {
            v1 = 568 * v33 - 568;
            v108 = 568 * v120;
            v3 = v33;
            v109 = v120;
            while (1)
            {
              if (v109 != --v3)
              {
                v110 = v33;
                v111 = *v123;
                if (!*v123)
                {
                  goto LABEL_172;
                }

                memcpy(v136, (v111 + v108), sizeof(v136));
                memmove((v111 + v108), (v111 + v1), 0x238uLL);
                result = memcpy((v111 + v1), v136, 0x231uLL);
                v33 = v110;
              }

              ++v109;
              v1 -= 568;
              v108 += 568;
              if (v109 >= v3)
              {
                goto LABEL_36;
              }
            }
          }

          goto LABEL_36;
        }

LABEL_164:
        __break(1u);
LABEL_165:
        result = sub_52E40(v1);
        goto LABEL_131;
      }

      v13 = v1 + 568 * v8 + 568;
      v127 = v7;
      while (1)
      {
        v124 = v12;
        memcpy(v135, (v13 + 568), 0x231uLL);
        result = memcpy(v136, v13, sizeof(v136));
        v14 = v135[18];
        if (v135[18] >> 1 == 0xFFFFFFFFLL)
        {
          goto LABEL_170;
        }

        v15 = v135[12];
        v16 = v135[13];
        v17 = v135[14];
        v18 = v135[15];
        v19 = v135[16];
        v20 = v135[17];
        if ((v135[18] >> 62) > 2)
        {
          v21 = v135[12];
        }

        else
        {
          sub_2B0C(&qword_229488, &qword_1BC520);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1BCA80;
          *(v21 + 32) = v15;
          *(v21 + 40) = v16;
          *(v21 + 48) = v17;
          *(v21 + 56) = v18;
          *(v21 + 64) = v19;
          *(v21 + 72) = v20;
          *(v21 + 80) = v14 & 1;
        }

        sub_4299C(v135, &v130);
        sub_4299C(v136, &v130);
        sub_43050(&v135[12], &v130, &qword_22A4E0, &unk_1C01D0);
        v22 = COERCE_DOUBLE(Array<A>.affinity.getter(v21));
        v24 = v23;

        if (v24)
        {
          v25 = 0.0;
        }

        else
        {
          v25 = v22;
        }

        v132 = *&v136[128];
        v133 = *&v136[144];
        v134 = *&v136[160];
        v130 = *&v136[96];
        v131 = *&v136[112];
        v26 = v136[144];
        if (*&v136[144] >> 1 == 0xFFFFFFFFLL)
        {
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        v27 = v130;
        v1 = *(&v131 + 1);
        v28 = v131;
        v29 = v132;
        if ((*&v136[144] >> 62) > 2)
        {
          v3 = v130;
        }

        else
        {
          sub_2B0C(&qword_229488, &qword_1BC520);
          v3 = swift_allocObject();
          *(v3 + 16) = xmmword_1BCA80;
          *(v3 + 32) = v27;
          *(v3 + 48) = v28;
          *(v3 + 56) = v1;
          *(v3 + 64) = v29;
          *(v3 + 80) = v26 & 1;
        }

        sub_42CD4(&v130, v129);
        v30 = COERCE_DOUBLE(Array<A>.affinity.getter(v3));
        v32 = v31;

        sub_2601C(v136);
        result = sub_2601C(v135);
        if (v32)
        {
          v33 = v124;
          if (v25 == 0.0)
          {
            goto LABEL_24;
          }

          v34 = 0.0;
        }

        else
        {
          v34 = v30;
          v35 = v25 == v30;
          v33 = v124;
          if (v35)
          {
LABEL_24:
            v36 = v135[0] < *v136;
            v37 = v127;
            goto LABEL_26;
          }
        }

        v37 = v127;
        v36 = v34 < v25;
LABEL_26:
        if ((v144 ^ v36))
        {
          break;
        }

        v12 = v33 + 1;
        v13 += 568;
        if (v37 == v33 + 1)
        {
          v10 = v33;
          v33 = v37;
          goto LABEL_31;
        }
      }

      v10 = v33 - 1;
      if (v144)
      {
        goto LABEL_34;
      }

LABEL_36:
      v38 = v123[1];
      if (v33 >= v38)
      {
        goto LABEL_69;
      }

      if (__OFSUB__(v33, v120))
      {
        goto LABEL_161;
      }

      if (v33 - v120 >= v117)
      {
        goto LABEL_69;
      }

      v39 = v120 + v117;
      if (__OFADD__(v120, v117))
      {
        goto LABEL_162;
      }

      if (v39 >= v38)
      {
        v39 = v123[1];
      }

      if (v39 < v120)
      {
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      if (v33 == v39)
      {
        goto LABEL_69;
      }

      v126 = *v123;
      v1 = v120 - v33 + 1;
      v40 = *v123 + 568 * v33 - 568;
      v119 = v39;
      while (2)
      {
        v125 = v33;
        v41 = v1;
        v121 = v40;
        v42 = v40;
        v128 = v1;
        while (2)
        {
          memcpy(v141, (v42 + 568), 0x231uLL);
          result = memcpy(v142, v42, sizeof(v142));
          v43 = v141[18];
          if (v141[18] >> 1 == 0xFFFFFFFFLL)
          {
            goto LABEL_167;
          }

          v144 = v41;
          v44 = v141[12];
          v45 = v141[13];
          v46 = v141[14];
          v47 = v141[15];
          v48 = v141[16];
          v49 = v141[17];
          if ((v141[18] >> 62) > 2)
          {
            v50 = v141[12];
          }

          else
          {
            sub_2B0C(&qword_229488, &qword_1BC520);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_1BCA80;
            *(v50 + 32) = v44;
            *(v50 + 40) = v45;
            *(v50 + 48) = v46;
            *(v50 + 56) = v47;
            *(v50 + 64) = v48;
            *(v50 + 72) = v49;
            *(v50 + 80) = v43 & 1;
          }

          sub_4299C(v141, __dst);
          sub_4299C(v142, __dst);
          sub_43050(&v141[12], __dst, &qword_22A4E0, &unk_1C01D0);
          v51 = COERCE_DOUBLE(Array<A>.affinity.getter(v50));
          v53 = v52;

          if (v53)
          {
            v54 = 0.0;
          }

          else
          {
            v54 = v51;
          }

          __src[2] = *&v142[128];
          __src[3] = *&v142[144];
          *&__src[4] = *&v142[160];
          __src[0] = *&v142[96];
          __src[1] = *&v142[112];
          v55 = v142[144];
          if (*&v142[144] >> 1 == 0xFFFFFFFFLL)
          {
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
            goto LABEL_171;
          }

          v56 = __src[0];
          v57 = __src[1];
          v58 = __src[2];
          if ((*&v142[144] >> 62) > 2)
          {
            v3 = *&__src[0];
          }

          else
          {
            sub_2B0C(&qword_229488, &qword_1BC520);
            v3 = swift_allocObject();
            *(v3 + 16) = xmmword_1BCA80;
            *(v3 + 32) = v56;
            *(v3 + 48) = v57;
            *(v3 + 64) = v58;
            *(v3 + 80) = v55 & 1;
          }

          sub_42CD4(__src, __dst);
          v59 = COERCE_DOUBLE(Array<A>.affinity.getter(v3));
          v61 = v60;

          sub_2601C(v142);
          result = sub_2601C(v141);
          v62 = v144;
          if ((v61 & 1) == 0)
          {
            v63 = v59;
            if (v54 != v59)
            {
              goto LABEL_64;
            }

LABEL_62:
            if (v141[0] >= *v142)
            {
              break;
            }

            goto LABEL_65;
          }

          if (v54 == 0.0)
          {
            goto LABEL_62;
          }

          v63 = 0.0;
LABEL_64:
          if (v63 >= v54)
          {
            break;
          }

LABEL_65:
          if (!v126)
          {
            goto LABEL_168;
          }

          memcpy(__dst, (v42 + 568), 0x231uLL);
          memcpy((v42 + 568), v42, 0x238uLL);
          memcpy(v42, __dst, 0x231uLL);
          if (v62)
          {
            v42 -= 568;
            v41 = v62 + 1;
            continue;
          }

          break;
        }

        v33 = v125 + 1;
        v40 = v121 + 568;
        v1 = v128 - 1;
        if (v125 + 1 != v119)
        {
          continue;
        }

        break;
      }

      v33 = v119;
LABEL_69:
      if (v33 < v120)
      {
        goto LABEL_160;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v9 = v122;
      }

      else
      {
        result = sub_32F04(0, *(v122 + 2) + 1, 1, v122);
        v9 = result;
      }

      v1 = *(v9 + 2);
      v64 = *(v9 + 3);
      v3 = v1 + 1;
      if (v1 >= v64 >> 1)
      {
        result = sub_32F04((v64 > 1), v1 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v3;
      v65 = &v9[16 * v1];
      *(v65 + 4) = v120;
      *(v65 + 5) = v33;
      v66 = *v118;
      if (!*v118)
      {
        goto LABEL_174;
      }

      v8 = v33;
      if (v1)
      {
        while (1)
        {
          v67 = v3 - 1;
          if (v3 >= 4)
          {
            break;
          }

          if (v3 == 3)
          {
            v68 = *(v9 + 4);
            v69 = *(v9 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
LABEL_89:
            if (v71)
            {
              goto LABEL_149;
            }

            v84 = &v9[16 * v3];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_152;
            }

            v90 = &v9[16 * v67 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_155;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_156;
            }

            if (v88 + v93 >= v70)
            {
              if (v70 < v93)
              {
                v67 = v3 - 2;
              }

              goto LABEL_110;
            }

            goto LABEL_103;
          }

          v94 = &v9[16 * v3];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_103:
          if (v89)
          {
            goto LABEL_151;
          }

          v97 = &v9[16 * v67];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_154;
          }

          if (v100 < v88)
          {
            goto LABEL_3;
          }

LABEL_110:
          v1 = v67 - 1;
          if (v67 - 1 >= v3)
          {
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
            goto LABEL_163;
          }

          if (!*v123)
          {
            goto LABEL_169;
          }

          v105 = v9;
          v106 = *&v9[16 * v1 + 32];
          v3 = *&v9[16 * v67 + 40];
          sub_153B94((*v123 + 568 * v106), (*v123 + 568 * *&v9[16 * v67 + 32]), (*v123 + 568 * v3), v66);
          if (v2)
          {
          }

          if (v3 < v106)
          {
            goto LABEL_145;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_52E40(v105);
          }

          if (v1 >= *(v105 + 2))
          {
            goto LABEL_146;
          }

          v107 = &v105[16 * v1];
          *(v107 + 4) = v106;
          *(v107 + 5) = v3;
          v143 = v105;
          result = sub_52DB4(v67);
          v9 = v143;
          v3 = *(v143 + 2);
          if (v3 <= 1)
          {
            goto LABEL_3;
          }
        }

        v72 = &v9[16 * v3 + 32];
        v73 = *(v72 - 64);
        v74 = *(v72 - 56);
        v78 = __OFSUB__(v74, v73);
        v75 = v74 - v73;
        if (v78)
        {
          goto LABEL_147;
        }

        v77 = *(v72 - 48);
        v76 = *(v72 - 40);
        v78 = __OFSUB__(v76, v77);
        v70 = v76 - v77;
        v71 = v78;
        if (v78)
        {
          goto LABEL_148;
        }

        v79 = &v9[16 * v3];
        v81 = *v79;
        v80 = *(v79 + 1);
        v78 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v78)
        {
          goto LABEL_150;
        }

        v78 = __OFADD__(v70, v82);
        v83 = v70 + v82;
        if (v78)
        {
          goto LABEL_153;
        }

        if (v83 >= v75)
        {
          v101 = &v9[16 * v67 + 32];
          v103 = *v101;
          v102 = *(v101 + 1);
          v78 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v78)
          {
            goto LABEL_157;
          }

          if (v70 < v104)
          {
            v67 = v3 - 2;
          }

          goto LABEL_110;
        }

        goto LABEL_89;
      }

LABEL_3:
      v7 = v123[1];
      if (v8 >= v7)
      {
        goto LABEL_128;
      }
    }
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_128:
  v3 = *v118;
  if (*v118)
  {
    v1 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_165;
    }

    result = v1;
LABEL_131:
    v143 = result;
    v112 = *(result + 16);
    if (v112 < 2)
    {
    }

    v1 = 568;
    while (*v123)
    {
      v113 = *(result + 16 * v112);
      v114 = result;
      v115 = *(result + 16 * (v112 - 1) + 40);
      sub_153B94((*v123 + 568 * v113), (*v123 + 568 * *(result + 16 * (v112 - 1) + 32)), (*v123 + 568 * v115), v3);
      if (v2)
      {
      }

      if (v115 < v113)
      {
        goto LABEL_158;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = sub_52E40(v114);
      }

      if (v112 - 2 >= *(v114 + 2))
      {
        goto LABEL_159;
      }

      v116 = &v114[16 * v112];
      *v116 = v113;
      *(v116 + 1) = v115;
      v143 = v114;
      sub_52DB4(v112 - 1);
      result = v143;
      v112 = *(v143 + 2);
      if (v112 <= 1)
      {
      }
    }

LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
  }

  __break(1u);
  return result;
}