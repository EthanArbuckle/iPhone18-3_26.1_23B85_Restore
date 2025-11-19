unint64_t sub_100017290(uint64_t a1, int a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_1000032F4(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = sub_1000032AC(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        sub_10001D3F4();
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = sub_100047DD0(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

unint64_t sub_100017350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_10001BED0(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_1000184BC(a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_10001D6E0();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v13);

      result = sub_100048170(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_100017424(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a2)
  {
    v14 = *v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v7;
    sub_10001C030(a1, a2, a3, a4 & 0x101, a5, a6, isUniquelyReferenced_nonNull_native);

    *v7 = v25;
  }

  else
  {
    v17 = *v6;
    v18 = sub_1000182E8(a5, a6);
    LOBYTE(v17) = v19;

    if (v17)
    {
      v20 = *v7;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v7;
      v26 = *v7;
      if (!v21)
      {
        sub_10001D848();
        v22 = v26;
      }

      v23 = *(*(v22 + 48) + 16 * v18 + 8);

      v24 = *(*(v22 + 56) + 32 * v18 + 8);

      result = sub_1000482E0(v18, v22);
      *v7 = v22;
    }
  }

  return result;
}

uint64_t sub_100017604(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v11 = sub_10000637C(&qword_10007AD40, &qword_100066638);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v15) == 1)
  {
    sub_100008630(a1, &qword_10007AD40, &qword_100066638);
    a5(a2);
    v20 = a4(0);
    (*(*(v20 - 8) + 8))(a2, v20);
    return sub_100008630(v14, &qword_10007AD40, &qword_100066638);
  }

  else
  {
    (*(v16 + 32))(v19, a1, v15);
    v22 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    a3(v19, a2, isUniquelyReferenced_nonNull_native);
    v24 = a4(0);
    result = (*(*(v24 - 8) + 8))(a2, v24);
    *v5 = v26;
  }

  return result;
}

uint64_t sub_100017854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10001C868(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1000182E8(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_10001DD34();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_100048874(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t Dictionary<>.filterSensitiveInformation()(uint64_t a1)
{
  v58 = type metadata accessor for Logger();
  v2 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v3 = *(a1 + 16);
  sub_100009638();
  v56 = Dictionary.init(minimumCapacity:)();
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v57 = a1;
  v59 = v8;
  v60 = a1 + 64;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);
    v17 = *v13 == 0x6E6F6973726576 && v15 == 0xE700000000000000;
    if (v17 || (v18 = *v13, v19 = v13[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v54 = v16;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = v56;
      v23 = sub_1000182E8(v14, v15);
      v24 = *(v56 + 16);
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_39;
      }

      v27 = v22;
      if (*(v56 + 24) >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v22)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_10001DD34();
          if (v27)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        sub_10001B190(v26, isUniquelyReferenced_nonNull_native);
        v28 = sub_1000182E8(v14, v15);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_43;
        }

        v23 = v28;
        if (v27)
        {
LABEL_21:

          v56 = v62[0];
          v30 = *(v62[0] + 56);
          v31 = *(v30 + 8 * v23);
          *(v30 + 8 * v23) = v54;

          goto LABEL_36;
        }
      }

      v48 = v62[0];
      *(v62[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v49 = (v48[6] + 16 * v23);
      *v49 = v14;
      v49[1] = v15;
      *(v48[7] + 8 * v23) = v54;

      v50 = v48[2];
      v37 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v37)
      {
        goto LABEL_40;
      }

      v56 = v48;
      v48[2] = v51;
LABEL_36:
      a1 = v57;
      v8 = v59;
      v4 = v60;
    }

    else
    {
      v20 = v16;

      static SettingMetadataDirectory.metadata(for:)();
      sub_100003AA0(&v61, v62);
      sub_100008578(v62, v62[3]);
      v55 = sub_100017F8C(v20);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *&v61 = v56;
      v33 = sub_1000182E8(v14, v15);
      v35 = *(v56 + 16);
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_41;
      }

      v39 = v34;
      if (*(v56 + 24) >= v38)
      {
        if ((v32 & 1) == 0)
        {
          v52 = v33;
          sub_10001DD34();
          v33 = v52;
        }
      }

      else
      {
        sub_10001B190(v38, v32);
        v33 = sub_1000182E8(v14, v15);
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_43;
        }
      }

      if (v39)
      {
        v41 = v33;

        v56 = v61;
        v42 = *(v61 + 56);
        v43 = *(v42 + 8 * v41);
        *(v42 + 8 * v41) = v55;
      }

      else
      {
        v44 = v61;
        *(v61 + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v45 = (v44[6] + 16 * v33);
        *v45 = v14;
        v45[1] = v15;
        *(v44[7] + 8 * v33) = v55;

        v46 = v44[2];
        v37 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v37)
        {
          goto LABEL_42;
        }

        v56 = v44;
        v44[2] = v47;
      }

      a1 = v57;
      v8 = v59;
      v4 = v60;
      sub_10000210C(v62);
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return v56;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_100017F8C(uint64_t a1)
{
  v14[0] = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(AssociatedTypeWitness);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v14 - v7;
  if (dispatch thunk of SettingMetadataProtocol.isPrivacySensitive.getter())
  {
    v17[5] = 0x657463616465523CLL;
    v17[6] = 0xEA00000000003E64;
    v9 = swift_checkMetadataState();
    if (!swift_dynamicCastMetatype() && swift_conformsToProtocol2() && v9)
    {
      dispatch thunk of static Persistable.value(from:)();
      (*(v2 + 16))(v6, v8, AssociatedTypeWitness);
      sub_10000637C(&qword_10007ADB8, &qword_100066680);
      if (swift_dynamicCast())
      {
        sub_100003AA0(&v15._countAndFlagsBits, v17);
        v15._countAndFlagsBits = 0x203A746E756F6320;
        v15._object = 0xE800000000000000;
        sub_100008578(v17, v17[3]);
        v14[1] = dispatch thunk of Collection.count.getter();
        v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v13);

        String.append(_:)(v15);

        (*(v2 + 8))(v8, AssociatedTypeWitness);
        sub_10000210C(v17);
      }

      else
      {
        (*(v2 + 8))(v8, AssociatedTypeWitness);
        v16 = 0;
        memset(&v15, 0, 32);
        sub_100008630(&v15, &qword_10007ADC0, &qword_100066688);
      }
    }

    v10 = String._bridgeToObjectiveC()();

    return v10;
  }

  else
  {
    v12 = v14[0];

    return v12;
  }
}

unint64_t sub_1000182E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100018804(a1, a2, v6);
}

unint64_t sub_100018360(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_10001E110(&qword_10007AD58, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100018A38(a1, v5, &type metadata accessor for UUID, &qword_10007AD60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100018434(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  v4 = *a1;
  v5 = *(a1 + 8);
  String.hash(into:)();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  String.hash(into:)();
  Hasher._combine(_:)(*(a1 + 32) & 1);
  v8 = Hasher._finalize()();

  return sub_1000188BC(a1, v8);
}

unint64_t sub_1000184BC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_1000189CC(a1, v4);
}

unint64_t sub_100018500(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for WebDomain();
  sub_10001E110(&qword_10007ACE0, &type metadata accessor for WebDomain);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100018A38(a1, v5, &type metadata accessor for WebDomain, &qword_10007AD98, &type metadata accessor for WebDomain, &protocol conformance descriptor for WebDomain);
}

unint64_t sub_1000185D4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for Application();
  sub_10001E110(&qword_10007ACE8, &type metadata accessor for Application);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100018A38(a1, v5, &type metadata accessor for Application, &qword_10007AD70, &type metadata accessor for Application, &protocol conformance descriptor for Application);
}

unint64_t sub_1000186A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for ActivityCategory();
  sub_10001E110(&qword_10007ACF0, &type metadata accessor for ActivityCategory);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_100018A38(a1, v5, &type metadata accessor for ActivityCategory, &qword_10007AD80, &type metadata accessor for ActivityCategory, &protocol conformance descriptor for ActivityCategory);
}

unint64_t sub_10001877C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100018BD8(a1, v4);
}

unint64_t sub_1000187C0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100018CA0(a1, v4);
}

unint64_t sub_100018804(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000188BC(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *a1;
    v9 = a1[1];
    v10 = *(v2 + 48);
    do
    {
      v11 = v10 + 40 * v5;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      v14 = *(v11 + 32);
      v15 = *v11 == v8 && *(v11 + 8) == v9;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v16 = v12 == a1[2] && v13 == a1[3];
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v14 == (a1[4] & 1))
        {
          break;
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000189CC(uint64_t a1, uint64_t a2)
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

unint64_t sub_100018A38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_10001E110(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_100018BD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001E428(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001E484(v8);
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

unint64_t sub_100018CA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100009638();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

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

char *sub_100018D64(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000637C(&qword_10007ADC8, &qword_100066690);
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

uint64_t sub_100018E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100018500(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10001D9DC(&type metadata accessor for WebDomain, &qword_10007AD90, &qword_100066668);
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for WebDomain();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_10004849C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_10001901C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000185D4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10001D9DC(&type metadata accessor for Application, &qword_10007AD88, &qword_100066660);
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for Application();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_1000484E4(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1000191E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1000186A8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10001D9DC(&type metadata accessor for ActivityCategory, &qword_10007AD78, &qword_100066658);
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for ActivityCategory();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_10004882C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1000193A4(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_1000187C0(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_100048A24(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_10001E158();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_100035710(v4, v7);

  v9 = sub_1000187C0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100048A24(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1000194F0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10000637C(&qword_10007A268, &qword_100065BA0);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10001E110(&qword_10007AD58, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1000198CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007A388, &unk_100065BE8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 4 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
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

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100019B40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007ADA0, &qword_100066670);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v41 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 40 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 24);
      v43 = *(v23 + 16);
      v42 = *(v23 + 32);
      v27 = *(v22 + 8 * v21);
      if ((v40 & 1) == 0)
      {

        v28 = v27;
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v42);
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v43;
      *(v17 + 24) = v26;
      *(v17 + 32) = v42;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
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
        v41 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100019E3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007ADD0, &qword_100066698);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v23 = (*(v5 + 56) + 16 * v21);
      v25 = *v23;
      v24 = v23[1];
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v25;
      v17[1] = v24;
      ++*(v8 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10001A0C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007A270, &qword_100065BA8);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 32 * v22;
      v27 = *(v26 + 8);
      v42 = *(v26 + 16);
      v43 = *v26;
      v40 = *(v26 + 25);
      v41 = *(v26 + 24);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 32 * v16;
      *v18 = v43;
      *(v18 + 8) = v27;
      *(v18 + 16) = v42;
      *(v18 + 24) = v41;
      *(v18 + 25) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
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

uint64_t sub_10001A398(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WebDomain();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_10000637C(&qword_10007AD90, &qword_100066668);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_10001E110(&qword_10007ACE0, &type metadata accessor for WebDomain);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_10001A840(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Application();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_10000637C(&qword_10007AD88, &qword_100066660);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_10001E110(&qword_10007ACE8, &type metadata accessor for Application);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_10001ACE8(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityCategory();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_10000637C(&qword_10007AD78, &qword_100066658);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_10001E110(&qword_10007ACF0, &type metadata accessor for ActivityCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_10001B190(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007A258, &unk_100065B90);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_10001B434(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Application();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10000637C(&qword_10007AD68, &qword_100066650);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_10001E110(&qword_10007ACE8, &type metadata accessor for Application);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10001B7F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007ADB0, &unk_100066F70);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
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

uint64_t sub_10001BA5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000637C(&qword_10007ADA8, &qword_100066678);
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

uint64_t sub_10001BD04(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100018360(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10001D174();
      goto LABEL_7;
    }

    sub_1000194F0(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_100018360(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10001CE64(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

unint64_t sub_10001BED0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000184BC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100019E3C(v16, a4 & 1);
      v20 = *v5;
      result = sub_1000184BC(a3);
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
      sub_10001D6E0();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = *v23;
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_10001C030(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1000182E8(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_10001D848();
      v17 = v25;
      goto LABEL_8;
    }

    sub_10001A0C0(v22, a7 & 1);
    v26 = *v8;
    v17 = sub_1000182E8(a5, a6);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v8;
  if (v23)
  {
    v29 = v28[7] + 32 * v17;
    v30 = *(v29 + 8);
    *v29 = a1;
    *(v29 + 8) = a2;
    *(v29 + 16) = a3;
    *(v29 + 24) = a4 & 1;
    *(v29 + 25) = HIBYTE(a4) & 1;
  }

  else
  {
    sub_10001CF1C(v17, a5, a6, a1, a2, a3, a4 & 0x101, v28);
  }
}

uint64_t sub_10001C1B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for WebDomain();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100018500(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10001D9DC(&type metadata accessor for WebDomain, &qword_10007AD90, &qword_100066668);
      goto LABEL_7;
    }

    sub_10001A398(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_100018500(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10001CF7C(v15, v12, a1, v21, &type metadata accessor for WebDomain);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_10001C3F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Application();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1000185D4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10001D9DC(&type metadata accessor for Application, &qword_10007AD88, &qword_100066660);
      goto LABEL_7;
    }

    sub_10001A840(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_1000185D4(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10001CF7C(v15, v12, a1, v21, &type metadata accessor for Application);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_10001C62C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ActivityCategory();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1000186A8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10001D9DC(&type metadata accessor for ActivityCategory, &qword_10007AD78, &qword_100066658);
      goto LABEL_7;
    }

    sub_10001ACE8(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_1000186A8(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10001CF7C(v15, v12, a1, v21, &type metadata accessor for ActivityCategory);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_10001C868(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000182E8(a2, a3);
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
      sub_10001B190(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000182E8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10001DD34();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_10001C9E0(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Application();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1000185D4(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_10001DEA0();
    goto LABEL_7;
  }

  sub_10001B434(result, a3 & 1);
  v22 = *v4;
  result = sub_1000185D4(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_10001D0BC(v15, v12, a1 & 1, v21);
}

uint64_t sub_10001CB80(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000187C0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_10001B7F4(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1000187C0(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_100009638();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_10001E158();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return _objc_retain_x1();
}

uint64_t sub_10001CCE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000182E8(a2, a3);
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
      sub_10001BA5C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000182E8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
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
      sub_10001E2B8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_10001CE64(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_10001CF1C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6;
  *(v9 + 24) = a7 & 1;
  *(v9 + 25) = HIBYTE(a7) & 1;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

uint64_t sub_10001CF7C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  v11 = a4[7];
  v12 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a3, v12);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_10001D074(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_10001D0BC(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for Application();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_10001D174()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000637C(&qword_10007A268, &qword_100065BA0);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_10001D3F4()
{
  v1 = v0;
  sub_10000637C(&qword_10007A388, &unk_100065BE8);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

id sub_10001D550()
{
  v1 = v0;
  sub_10000637C(&qword_10007ADA0, &qword_100066670);
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
        v18 = *(v2 + 48) + 40 * v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(*(v2 + 56) + 8 * v17);
        v24 = *(v4 + 48) + 40 * v17;
        *v24 = v20;
        *(v24 + 8) = v19;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v18;
        *(*(v4 + 56) + 8 * v17) = v23;

        result = v23;
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

void *sub_10001D6E0()
{
  v1 = v0;
  sub_10000637C(&qword_10007ADD0, &qword_100066698);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v19;
        v21[1] = v20;
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

void *sub_10001D848()
{
  v1 = v0;
  sub_10000637C(&qword_10007A270, &qword_100065BA8);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        LOBYTE(v22) = *(v22 + 25);
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v25;
        *(v28 + 24) = v26;
        *(v28 + 25) = v22;
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

char *sub_10001D9DC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v7 = v3;
  v49 = type metadata accessor for ScreenTimeSettings.ShieldPolicy();
  v52 = *(v49 - 8);
  v8 = *(v52 + 64);
  __chkstk_darwin(v49);
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1(0);
  v51 = *(v47 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v47);
  v46 = &v38 - v11;
  sub_10000637C(a2, a3);
  v12 = *v3;
  v13 = static _DictionaryStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    result = (v13 + 64);
    v16 = (v12 + 64);
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = v12 + 64;
    if (v14 != v12 || result >= &v16[8 * v17])
    {
      result = memmove(result, v16, 8 * v17);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v50 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v12 + 64);
    v23 = (v20 + 63) >> 6;
    v43 = v51 + 16;
    v44 = v23;
    v41 = v51 + 32;
    v42 = v52 + 16;
    v40 = v52 + 32;
    v45 = v12;
    v25 = v46;
    v24 = v47;
    if (v22)
    {
      do
      {
        v26 = __clz(__rbit64(v22));
        v53 = (v22 - 1) & v22;
LABEL_14:
        v29 = v26 | (v18 << 6);
        v30 = v51;
        v31 = *(v51 + 72) * v29;
        (*(v51 + 16))(v25, *(v12 + 48) + v31, v24);
        v32 = v52;
        v33 = *(v52 + 72) * v29;
        v34 = v48;
        v35 = v49;
        (*(v52 + 16))(v48, *(v12 + 56) + v33, v49);
        v36 = v50;
        (*(v30 + 32))(*(v50 + 48) + v31, v25, v24);
        v37 = *(v36 + 56);
        v12 = v45;
        result = (*(v32 + 32))(v37 + v33, v34, v35);
        v23 = v44;
        v22 = v53;
      }

      while (v53);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v38;
        v14 = v50;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v53 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v14;
  }

  return result;
}

id sub_10001DD34()
{
  v1 = v0;
  sub_10000637C(&qword_10007A258, &unk_100065B90);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

char *sub_10001DEA0()
{
  v1 = v0;
  v32 = type metadata accessor for Application();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000637C(&qword_10007AD68, &qword_100066650);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_10001E110(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10001E158()
{
  v1 = v0;
  sub_10000637C(&qword_10007ADB0, &unk_100066F70);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_10001E2B8()
{
  v1 = v0;
  sub_10000637C(&qword_10007ADA8, &qword_100066678);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

Swift::Int sub_10001E4E0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10001E54C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

id sub_10001E58C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_10001E674(uint64_t a1)
{
  v2 = a1;
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return v4;
  }

  v54 = _swiftEmptyArrayStorage;
  sub_1000577B0(0, v3 & ~(v3 >> 63), 0);
  v4 = _swiftEmptyArrayStorage;
  if (v42)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    result = _HashTable.startBucket.getter();
    v6 = *(v2 + 36);
  }

  v51 = result;
  v52 = v6;
  v53 = v42 != 0;
  if ((v3 & 0x8000000000000000) == 0)
  {
    v36[1] = v1;
    v8 = 0;
    v9 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 < 0)
    {
      v9 = v2;
    }

    v38 = v2 + 56;
    v39 = v9;
    v37 = v2 + 64;
    v10 = &type metadata for ApplicationExtensionRecord;
    v40 = v3;
    v41 = v2;
    while (v8 < v3)
    {
      if (__OFADD__(v8++, 1))
      {
        goto LABEL_39;
      }

      v13 = v51;
      v44 = v52;
      v43 = v53;
      sub_10001EE9C(v51, v52, v53, v2);
      v49 = v10;
      v50 = &off_100075FC0;
      v48[0] = v14;
      v54 = v4;
      v16 = v4[2];
      v15 = v4[3];
      v17 = v10;
      v18 = v10;
      if (v16 >= v15 >> 1)
      {
        sub_1000577B0((v15 > 1), v16 + 1, 1);
        v17 = v49;
        v4 = v54;
      }

      v19 = sub_100005AE4(v48, v17);
      v20 = *(*(v17 - 8) + 64);
      __chkstk_darwin(v19);
      v22 = (v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = *v22;
      v46 = v18;
      v47 = &off_100075FC0;
      *&v45 = v24;
      v4[2] = v16 + 1;
      sub_100003AA0(&v45, &v4[5 * v16 + 4]);
      result = sub_10000210C(v48);
      v10 = v18;
      if (v42)
      {
        if (!v43)
        {
          goto LABEL_44;
        }

        v25 = __CocoaSet.Index.handleBitPattern.getter();
        v2 = v41;
        if (v25)
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v3 = v40;
        sub_10000637C(&qword_10007ADF0, &qword_1000667B0);
        v11 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v11(v48, 0);
      }

      else
      {
        if (v43)
        {
          goto LABEL_45;
        }

        v2 = v41;
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        v26 = 1 << *(v41 + 32);
        if (v13 >= v26)
        {
          goto LABEL_40;
        }

        v27 = v13 >> 6;
        v28 = *(v38 + 8 * (v13 >> 6));
        if (((v28 >> v13) & 1) == 0)
        {
          goto LABEL_41;
        }

        if (*(v41 + 36) != v44)
        {
          goto LABEL_42;
        }

        v29 = v28 & (-2 << (v13 & 0x3F));
        if (v29)
        {
          v26 = __clz(__rbit64(v29)) | v13 & 0x7FFFFFFFFFFFFFC0;
          v3 = v40;
        }

        else
        {
          v30 = v27 << 6;
          v31 = v27 + 1;
          v32 = (v37 + 8 * v27);
          v3 = v40;
          while (v31 < (v26 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              result = sub_10001F0C0(v13, v44, 0);
              v26 = __clz(__rbit64(v33)) + v30;
              goto LABEL_34;
            }
          }

          result = sub_10001F0C0(v13, v44, 0);
LABEL_34:
          v10 = v18;
        }

        v35 = *(v2 + 36);
        v51 = v26;
        v52 = v35;
        v53 = 0;
      }

      if (v8 == v3)
      {
        sub_10001F0C0(v51, v52, v53);
        return v4;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_10001EAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10001F0CC(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_10001EAE8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t getEnumTagSinglePayload for ApplicationRecordError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ApplicationRecordError(_WORD *result, int a2, int a3)
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

unint64_t sub_10001EC48()
{
  result = qword_10007ADD8;
  if (!qword_10007ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007ADD8);
  }

  return result;
}

uint64_t sub_10001EC9C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 dataContainerURL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_10001ED40()
{
  v1 = [*v0 applicationExtensionRecords];
  sub_100006820(0, &qword_10007ADE0, LSApplicationExtensionRecord_ptr);
  sub_10001EE34();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_10001E674(v2);

  return v3;
}

uint64_t sub_10001EDDC()
{
  v1 = [*v0 localizedName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10001EE34()
{
  result = qword_10007ADE8;
  if (!qword_10007ADE8)
  {
    sub_100006820(255, &qword_10007ADE0, LSApplicationExtensionRecord_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007ADE8);
  }

  return result;
}

void sub_10001EE9C(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100006820(0, &qword_10007ADE0, LSApplicationExtensionRecord_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100006820(0, &qword_10007ADE0, LSApplicationExtensionRecord_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10001F0C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10001F0CC(uint64_t a1, uint64_t a2)
{
  sub_100006820(0, &qword_10007ADF8, LSBundleRecord_ptr);
  v5 = sub_10001E58C(a1, a2, 0);
  if (!v2)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [v8 containingBundleRecord];
      if (v10)
      {
        v11 = v10;
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          a1 = v12;

          return a1;
        }
      }

      sub_100008524();
      a1 = swift_allocError();
      swift_willThrow();
    }

    else
    {
      objc_opt_self();
      a1 = swift_dynamicCastObjCClass();
      if (a1)
      {
        return a1;
      }

      sub_100008524();
      a1 = swift_allocError();
      swift_willThrow();
    }
  }

  return a1;
}

uint64_t sub_10001F264(uint64_t a1, uint64_t (*a2)(void, void))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.overrideSettings.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = v4;
    v12 = v11;
    v18 = swift_slowAlloc();
    v21 = v18;
    *v12 = 136446466;
    *(v12 + 4) = sub_100001ED8(0xD000000000000040, 0x80000001000693F0, &v21);
    *(v12 + 12) = 2082;
    v20 = a1;
    swift_errorRetain();
    sub_10000637C(&qword_10007A380, &qword_100065BE0);
    v13 = String.init<A>(describing:)();
    v15 = a2;
    v16 = sub_100001ED8(v13, v14, &v21);

    *(v12 + 14) = v16;
    a2 = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to create or lost connection to remote object proxy for extension with ID %{public}s: %{public}s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v8, v19);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return a2(0, a1);
}

uint64_t sub_10001F57C()
{
  sub_10000210C((v0 + 16));
  sub_10000210C((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_10001F5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.overrideSettings.getter();
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = a2;
    v12 = v11;
    v20 = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_100001ED8(0xD000000000000040, 0x80000001000693F0, &v20);
    *(v12 + 12) = 2082;
    v19 = a1;
    swift_errorRetain();
    sub_10000637C(&qword_10007A380, &qword_100065BE0);
    v13 = String.init<A>(describing:)();
    v15 = sub_100001ED8(v13, v14, &v20);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to create or lost connection to remote object proxy for extension with ID %{public}s: %{public}s", v12, 0x16u);
    swift_arrayDestroy();

    a2 = v18;
  }

  (*(v5 + 8))(v8, v4);
  v16 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, 0, v16);
}

void sub_10001F828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v53[2] = a4;
  v53[1] = a3;
  v64 = a2;
  v66 = a1;
  v8 = type metadata accessor for OverrideSettingsResponse();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  __chkstk_darwin(v8);
  v54 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Application();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v67 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v63 = v53 - v16;
  v17 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v58 = v53 - v19;
  v59 = swift_allocObject();
  *(v59 + 16) = a6;
  v20 = *(a5 + 80);
  v55 = a5;
  v21 = *sub_100008578((a5 + 56), v20);
  _Block_copy(a6);
  v60 = a6;
  _Block_copy(a6);
  v22 = sub_100034798();
  v23 = v22;
  v24 = v22 + 56;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v22 + 56);
  v28 = (v25 + 63) >> 6;
  v65 = v12 + 32;
  v61 = (v12 + 8);
  v62 = v12 + 16;

  v29 = 0;
  while (v27)
  {
LABEL_11:
    v32 = v63;
    (*(v12 + 16))(v63, *(v23 + 48) + *(v12 + 72) * (__clz(__rbit64(v27)) | (v29 << 6)), v11);
    v33 = *(v12 + 32);
    v34 = v32;
    v35 = v11;
    v33(v67, v34, v11);
    v36 = Application.bundleIdentifier.getter();
    if (v37)
    {
      if (v36 == v66 && v37 == v64)
      {

        goto LABEL_23;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v30)
      {

LABEL_23:
        v39 = v58;
        v11 = v35;
        v33(v58, v67, v35);
        v38 = 0;
        v40 = v59;
LABEL_16:
        (*(v12 + 56))(v39, v38, 1, v11);

        v41 = (*(v12 + 48))(v39, 1, v11);
        sub_10001FE50(v39);
        if (v41 == 1)
        {
          v43 = v56;
          v42 = v57;
          v44 = v54;
          (*(v56 + 104))(v54, enum case for OverrideSettingsResponse.approved(_:), v57);
          v45 = OverrideSettingsResponse.rawValue.getter();
          (*(v43 + 8))(v44, v42);
          v46 = [objc_allocWithZone(NSNumber) initWithInteger:v45];
          v47 = v60;
          (v60)[2](v60, v46, 0);
        }

        else
        {
          v48 = *sub_100008578((v55 + 16), *(v55 + 40));

          v47 = v60;
          _Block_copy(v60);

          v49 = sub_100026784(0xD000000000000040, 0x80000001000693F0, v48, v47);
          _Block_release(v47);

          if (v49)
          {
            v50 = String._bridgeToObjectiveC()();
            v51 = String._bridgeToObjectiveC()();
            aBlock[4] = sub_10001FE48;
            aBlock[5] = v40;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100055788;
            aBlock[3] = &unk_100076000;
            v52 = _Block_copy(aBlock);

            [v49 askToOverrideUnremovabilityOfApplicationWithBundleIdentifier:v50 teamIdentifier:v51 replyHandler:v52];

            _Block_release(v52);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }

        _Block_release(v47);
        return;
      }
    }

    v27 &= v27 - 1;
    v11 = v35;
    (*v61)(v67, v35);
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v28)
    {

      v38 = 1;
      v39 = v58;
      v40 = v59;
      goto LABEL_16;
    }

    v27 = *(v24 + 8 * v31);
    ++v29;
    if (v27)
    {
      v29 = v31;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_10001FE50(uint64_t a1)
{
  v2 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001FED0(int a1, xpc_object_t xstring)
{
  if (xpc_string_get_string_ptr(xstring))
  {
    v2 = String.init(cString:)();
    sub_100002624(&v5, v2, v3);
  }

  return 1;
}

uint64_t sub_10001FF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

uint64_t sub_10001FF84()
{
  _StringGuts.grow(_:)(21);

  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x7370756F7247202CLL;
  v1._object = 0xEA0000000000203ALL;
  String.append(_:)(v1);
  v2._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v2);

  return 0x203A6E656B6F54;
}

uint64_t sub_10002006C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_10001FF84();
}

uint64_t sub_100020074(void *a1)
{
  v1 = a1;
  if (!a1)
  {
    return v1;
  }

  v2 = String.utf8CString.getter();
  v3 = swift_unknownObjectRetain();
  v4 = xpc_dictionary_get_array(v3, (v2 + 32));

  if (!v4)
  {
    swift_unknownObjectRelease_n();
    return 0;
  }

  v11 = &_swiftEmptySetSingleton;
  v5 = swift_allocObject();
  *(v5 + 16) = &v11;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100020264;
  *(v6 + 24) = v5;
  aBlock[4] = sub_10002026C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001FF2C;
  aBlock[3] = &unk_1000760F8;
  v7 = _Block_copy(aBlock);

  xpc_array_apply(v4, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v1 = v11;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002026C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_1000202A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a1;
  aBlock[4] = sub_100020A58;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020A64;
  aBlock[3] = &unk_100076148;
  v17 = _Block_copy(aBlock);

  a4;

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100020EF4(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000637C(&qword_10007AF10, &unk_1000670A0);
  sub_100020F3C(&qword_10007B290, &qword_10007AF10, &unk_1000670A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v11, v8);
  (*(v12 + 8))(v15, v20);
}

void sub_100020578(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v42 = a2;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v41 - v9;
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  static Logger.nanoSync.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Syncing store data to watch", v15, 2u);
  }

  v16 = *(v3 + 8);
  v16(v12, v2);
  v17 = objc_opt_self();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 createAccessorWithDomain:v18];

  if (v19)
  {
    sub_10000637C(&qword_10007AF18, &unk_1000668D0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v21 = String._bridgeToObjectiveC()();
    [v19 setObject:isa forKey:v21];

    v22 = [v19 synchronize];
    if (v22)
    {
      v23 = v22;
      v42 = v16;
      static Logger.nanoSync.getter();
      v24 = v23;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v43 = v24;
        v44 = v28;
        *v27 = 136446210;
        v41 = v24;
        sub_10000637C(&qword_10007A380, &qword_100065BE0);
        v29 = String.init<A>(describing:)();
        v31 = v2;
        v32 = sub_100001ED8(v29, v30, &v44);

        *(v27 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "Unable to synchronize accessor after updating sync stores. Error: %{public}s", v27, 0xCu);
        sub_10000210C(v28);

        swift_unknownObjectRelease();
        v33 = v7;
        v34 = v31;
      }

      else
      {

        swift_unknownObjectRelease();
        v33 = v7;
        v34 = v2;
      }

      v42(v33, v34);
    }

    else
    {
      v38 = [objc_opt_self() createManager];
      v39 = String._bridgeToObjectiveC()();
      sub_100020D38(&off_1000756C8);
      sub_100020EA0(&unk_1000756E8);
      v40 = Set._bridgeToObjectiveC()().super.isa;

      [v38 synchronizeNanoDomain:v39 keys:v40];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    static Logger.nanoSync.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Unable to create accessor to update sync stores", v37, 2u);
    }

    v16(v10, v2);
  }
}

void sub_100020A58()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_100020578(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_100020A64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void *sub_100020AB0(void *a1, uint64_t a2)
{
  v16 = a1;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v17 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10000AA70();
  v15[2] = a2;
  v15[3] = v12;
  v18 = a1;
  v19 = a2;

  v13._object = 0x8000000100069490;
  v13._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v13);
  v15[1] = v19;
  static DispatchQoS.unspecified.getter();
  v18 = &_swiftEmptyArrayStorage;
  sub_100020EF4(&qword_10007A970, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000637C(&unk_10007A370, &qword_100065BD8);
  sub_100020F3C(&qword_10007A980, &unk_10007A370, &qword_100065BD8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v16;
}

Swift::Int sub_100020D38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000637C(&qword_10007AF20, &unk_1000668E0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
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

uint64_t sub_100020EF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100020F3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006914(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_100020F90(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100020FA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100020FEC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10002103C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  sub_100021470(a1, &v16 - v8);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v9, v10);
  }

  v13 = [v3 _extensionContextForUUID:isa];

  result = 0;
  if (v13)
  {
    result = sub_1000214E0();
    v15 = &off_100076238;
  }

  else
  {
    v15 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v13;
  a2[3] = result;
  a2[4] = v15;
  return result;
}

id sub_1000211C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v10 = 0;
  v6 = [v3 beginExtensionRequestWithOptions:a1 inputItems:v5.super.isa error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_1000212EC(uint64_t a1)
{
  v3 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = *v1;
  sub_100021470(a1, &v13 - v5);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  v11 = [v7 pidForRequestIdentifier:isa];

  return v11;
}

uint64_t sub_100021470(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000214E0()
{
  result = qword_10007AF28;
  if (!qword_10007AF28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10007AF28);
  }

  return result;
}

id sub_10002152C()
{
  result = [objc_allocWithZone(NSLock) init];
  qword_10007AF30 = result;
  return result;
}

void sub_100021560()
{
  v1 = [objc_opt_self() sharedScheduler];
  v2 = v0[9];
  v3 = v0[10];
  v4 = String._bridgeToObjectiveC()();
  v5 = v0[11];
  v7[4] = sub_100023540;
  v8 = v0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000315B8;
  v7[3] = &unk_100076300;
  v6 = _Block_copy(v7);

  [v1 registerForTaskWithIdentifier:v4 usingQueue:v5 launchHandler:v6];
  _Block_release(v6);
}

id sub_10002166C(void *a1, _BYTE *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_100023548;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020A64;
  aBlock[3] = &unk_100076328;
  v9 = _Block_copy(aBlock);

  [a1 setExpirationHandler:v9];
  _Block_release(v9);
  if (qword_10007A218 != -1)
  {
    swift_once();
  }

  [qword_10007AF30 lock];
  if (a2[16] != 6)
  {
    sub_10002221C();
  }

  [qword_10007AF30 unlock];
  if (a2[16] == 6)
  {
    return [a1 setTaskCompleted];
  }

  aBlock[0] = 0;
  if ([a1 setTaskExpiredWithRetryAfter:aBlock error:0.0])
  {

    return _objc_retain_x1();
  }

  else
  {
    v21[0] = aBlock[0];
    v11 = aBlock[0];
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.migrator.getter();
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21[0] = v5;
      v16 = v15;
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136446210;
      v21[1] = v12;
      swift_errorRetain();
      sub_10000637C(&qword_10007A380, &qword_100065BE0);
      v18 = String.init<A>(describing:)();
      v20 = sub_100001ED8(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to expire task with error: %{public}s", v16, 0xCu);
      sub_10000210C(v17);

      (*(v21[0] + 8))(v8, v4);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    [a1 setTaskCompleted];
  }
}

uint64_t sub_100021A64()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 88);
  aBlock[4] = sub_100023484;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020A64;
  aBlock[3] = &unk_1000762D8;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14[1] = _swiftEmptyArrayStorage;
  sub_100023494(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000637C(&qword_10007AF10, &unk_1000670A0);
  sub_1000234DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

id sub_100021CE8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v32 - v7;
  v9 = objc_opt_self();
  v10 = [v9 sharedScheduler];
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v10 taskRequestForIdentifier:v13];

  if (v14)
  {

    v15 = [v9 sharedScheduler];
    v16 = String._bridgeToObjectiveC()();
    v36 = 0;
    v17 = [v15 cancelTaskRequestWithIdentifier:v16 error:&v36];

    v18 = v36;
    if (v17)
    {

      return v18;
    }

    else
    {
      v32[1] = v36;
      v24 = v36;
      v25 = _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.migrator.getter();

      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v28 = 136446466;
        *(v28 + 4) = sub_100001ED8(v11, v12, &v36);
        *(v28 + 12) = 2080;
        v35 = v25;
        swift_errorRetain();
        sub_10000637C(&qword_10007A380, &qword_100065BE0);
        v29 = String.init<A>(describing:)();
        v31 = sub_100001ED8(v29, v30, &v36);

        *(v28 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed to cancel task with identifier %{public}s. Error: %s", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return (*(v33 + 8))(v6, v34);
    }
  }

  else
  {
    static Logger.migrator.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_100001ED8(v11, v12, &v36);
      _os_log_impl(&_mh_execute_header, v20, v21, "No task scheduled with identifier %{public}s", v22, 0xCu);
      sub_10000210C(v23);
    }

    return (*(v33 + 8))(v8, v34);
  }
}

id sub_100022170(char a1)
{
  if (qword_10007A218 != -1)
  {
    swift_once();
  }

  [qword_10007AF30 lock];
  if (*(v1 + 16) != 6)
  {
    sub_10002221C();
    if ((a1 & 1) != 0 && *(v1 + 16) == 6)
    {
      sub_100021A64();
    }
  }

  v3 = qword_10007AF30;

  return [v3 unlock];
}

uint64_t sub_10002221C()
{
  v1 = v0;
  v63 = type metadata accessor for URL();
  v2 = *(v63 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v63);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v53 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v54 = &v53 - v15;
  v16 = __chkstk_darwin(v14);
  v59 = &v53 - v17;
  result = __chkstk_darwin(v16);
  v22 = &v53 - v20;
  if (*(v1 + 17))
  {
LABEL_2:
    *(v1 + 17) = 0;
    return result;
  }

  v23 = (v19 + 8);
  v61 = (v2 + 8);
  LOBYTE(v19) = *(v1 + 16);
  *&v21 = 136446210;
  v60 = v21;
  *&v21 = 136446466;
  v55 = v21;
  v57 = &v53 - v20;
  v58 = v6;
  v56 = v8;
  v62 = v13;
  while (1)
  {
    if (v19 <= 2u)
    {
      if (v19)
      {
        v25 = *(v1 + 64);
        if (v19 == 1)
        {
          result = sub_10003E3E8();
          LOBYTE(v19) = 2;
        }

        else
        {
          result = sub_100040550();
          LOBYTE(v19) = 3;
        }
      }

      else
      {
        static Logger.migrator.getter();

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v64 = v29;
          *v28 = v60;
          *(v28 + 4) = sub_100001ED8(*(v1 + 72), *(v1 + 80), &v64);
          _os_log_impl(&_mh_execute_header, v26, v27, "PostInstallMigrator migration start for %{public}s", v28, 0xCu);
          sub_10000210C(v29);
        }

        v30 = *v23;
        (*v23)(v22, v9);
        if ([objc_opt_self() isUpgradeDisposition])
        {
          goto LABEL_18;
        }

        type metadata accessor for Persistence();
        v34 = *(v1 + 56);
        sub_100008578((v1 + 24), *(v1 + 48));
        v35 = v56;
        dispatch thunk of Locatable.dataVersionPath.getter();
        static Persistence.dataVersion(from:)();
        v40 = v39;
        (*v61)(v35, v63);
        if ((v40 & 1) == 0)
        {
LABEL_18:
          type metadata accessor for Persistence();
          v31 = *(v1 + 56);
          sub_100008578((v1 + 24), *(v1 + 48));
          v32 = v58;
          dispatch thunk of Locatable.dataVersionPath.getter();
          v33 = static Persistence.dataVersion(from:)();
          v37 = v36;
          v38 = v33;
          result = (*v61)(v32, v63);
          LOBYTE(v19) = 1;
          if ((v37 & 1) == 0 && v38 <= 4)
          {
            v19 = 0x603030301uLL >> (8 * v38);
          }
        }

        else
        {
          v41 = v59;
          static Logger.migrator.getter();

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = v41;
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v64 = v46;
            *v45 = v60;
            *(v45 + 4) = sub_100001ED8(*(v1 + 72), *(v1 + 80), &v64);
            _os_log_impl(&_mh_execute_header, v42, v43, "Disposition is not an upgrade. Skipping migration for %{public}s", v45, 0xCu);
            sub_10000210C(v46);

            v47 = v44;
            v22 = v57;
          }

          else
          {

            v47 = v41;
          }

          result = v30(v47, v9);
          LOBYTE(v19) = 5;
        }
      }

      goto LABEL_5;
    }

    if (v19 <= 4u)
    {
      v24 = *(v1 + 64);
      if (v19 == 3)
      {
        result = sub_10003D780();
        LOBYTE(v19) = 4;
      }

      else
      {
        result = sub_10003BE20();
        LOBYTE(v19) = 5;
      }

      goto LABEL_5;
    }

    if (v19 != 5)
    {
      break;
    }

    result = sub_100022A78();
    LOBYTE(v19) = 6;
LABEL_5:
    *(v1 + 16) = v19;
    if (*(v1 + 17))
    {
      goto LABEL_2;
    }
  }

  v48 = v54;
  static Logger.migrator.getter();

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v64 = v52;
    *v51 = v60;
    *(v51 + 4) = sub_100001ED8(*(v1 + 72), *(v1 + 80), &v64);
    _os_log_impl(&_mh_execute_header, v49, v50, "PostInstallMigrator migration end for %{public}s", v51, 0xCu);
    sub_10000210C(v52);
  }

  return (*v23)(v48, v9);
}

uint64_t sub_100022A78()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for CocoaError.Code();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  __chkstk_darwin(v4);
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  v9 = __chkstk_darwin(v7);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v50 = &v48 - v12;
  v13 = __chkstk_darwin(v11);
  v53 = &v48 - v14;
  v15 = __chkstk_darwin(v13);
  v54 = &v48 - v16;
  __chkstk_darwin(v15);
  v18 = &v48 - v17;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v55 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v48 - v24;
  static Logger.migrator.getter();

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v49 = v1;
    v29 = v20;
    v30 = v19;
    v31 = v28;
    v32 = swift_slowAlloc();
    v61 = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_100001ED8(v3[9], v3[10], &v61);
    _os_log_impl(&_mh_execute_header, v26, v27, "Write new data version for %{public}s", v31, 0xCu);
    sub_10000210C(v32);

    v19 = v30;
    v20 = v29;
    v2 = v49;
  }

  v52 = *(v20 + 8);
  v52(v25, v19);
  type metadata accessor for Persistence();
  v33 = v3[7];
  sub_100008578(v3 + 3, v3[6]);
  dispatch thunk of Locatable.dataVersionPath.getter();
  static Persistence.write(dataVersion:to:)();
  if (v2)
  {
    v48 = v19;
    v34 = v18;
    v35 = v60;
    v49 = *(v59 + 8);
    v49(v34, v60);
    swift_errorRetain();
    v36 = v56;
    static CocoaError.fileNoSuchFile.getter();
    sub_100023494(&qword_10007A460, &type metadata accessor for CocoaError.Code);
    v37 = v58;
    v38 = static _ErrorCodeProtocol.~= infix(_:_:)();

    result = (*(v57 + 8))(v36, v37);
    if ((v38 & 1) == 0)
    {
      return result;
    }

    v58 = v20;

    v40 = v3[7];
    sub_100008578(v3 + 3, v3[6]);
    v41 = v53;
    dispatch thunk of Locatable.dataVersionDirectory.getter();
    static Persistence.createDirectory(at:)();
    v44 = v49;
    v49(v41, v35);
    v45 = v35;
    v46 = v3[7];
    sub_100008578(v3 + 3, v3[6]);
    v47 = v50;
    dispatch thunk of Locatable.dataVersionPath.getter();
    static Persistence.write(dataVersion:to:)();
    v44(v47, v45);
  }

  else
  {
    v58 = v20;
    v44 = *(v59 + 8);
    v44(v18, v60);
  }

  v42 = v3[7];
  sub_100008578(v3 + 3, v3[6]);
  v43 = v54;
  dispatch thunk of Locatable.dataVersionPath.getter();
  static Persistence.setFileAttributes(of:)();
  return (v44)(v43, v60);
}

uint64_t sub_100023268()
{
  sub_10000210C((v0 + 24));
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for MigrationStep(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MigrationStep(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100023430()
{
  result = qword_10007B070;
  if (!qword_10007B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B070);
  }

  return result;
}

uint64_t sub_100023494(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000234DC()
{
  result = qword_10007B290;
  if (!qword_10007B290)
  {
    sub_100006914(&qword_10007AF10, &unk_1000670A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B290);
  }

  return result;
}

uint64_t sub_100023564(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100002624(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int ExtensionError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t ExtensionFinder.__allocating_init(extensionPointName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006820(0, &qword_10007A220, NSExtension_ptr);
  type metadata accessor for ExtensionFinder();
  v5 = swift_allocObject();
  sub_100023798(v4, a1, a2);
  return v5;
}

uint64_t sub_100023798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = xmmword_100066AA0;
  *(v3 + 64) = 0x3FE0000000000000;
  *(v3 + 72) = 0xD00000000000002FLL;
  *(v3 + 80) = 0x8000000100068A10;
  *(v3 + 88) = 0xD000000000000038;
  *(v3 + 96) = 0x8000000100068A40;
  *(v3 + 24) = a3;
  *(v3 + 32) = a1;
  *(v3 + 16) = a2;
  sub_10000637C(&qword_10007B2E0, &unk_100067080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100066AB0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "SettingsGroups");
  *(inited + 95) = -18;
  *(inited + 96) = 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD00000000000003DLL;
  *(inited + 136) = 0x80000001000696C0;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;

  v8 = sub_100005B34(inited);
  swift_setDeallocating();
  sub_10000637C(&unk_10007A280, &qword_100066D10);
  swift_arrayDestroy();
  *(v3 + 40) = v8;
  return v3;
}

void *ExtensionFinder.extensions.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v36 - v7;
  v9 = *(v0 + 32);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10002400C(*(v0 + 40));
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v37 = 0;
  v12 = [ObjCClassFromMetadata extensionsWithMatchingAttributes:isa error:&v37];

  v13 = v37;
  if (v12)
  {
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v13;

    v16 = sub_100024440(v14);
    if (v16)
    {
      v17 = v16;

      return v17;
    }

    static Logger.agent.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 136446210;
      v32 = Array.description.getter();
      v34 = v33;

      v35 = sub_100001ED8(v32, v34, &v37);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Invalid matching extensions %{public}s", v30, 0xCu);
      sub_10000210C(v31);
    }

    else
    {
    }

    (*(v2 + 8))(v8, v1);
  }

  else
  {
    v19 = v37;
    v20 = _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.agent.getter();
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136446210;
      v36[0] = v20;
      swift_errorRetain();
      sub_10000637C(&qword_10007A380, &qword_100065BE0);
      v25 = String.init<A>(describing:)();
      v27 = sub_100001ED8(v25, v26, &v37);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to match extensions: %{public}s", v23, 0xCu);
      sub_10000210C(v24);
    }

    (*(v2 + 8))(v6, v1);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100023D44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000637C(&qword_10007B2A0, &qword_100065BC0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_100002614(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_100002614(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_100002614(v34, (v2[7] + 32 * v10));
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

uint64_t sub_10002400C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000637C(&qword_10007B2A0, &qword_100065BC0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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
    sub_100001FA4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100002614(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100002614(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100002614(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
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
    result = sub_100002614(v32, (v2[7] + 32 * v10));
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

void *sub_1000242D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1000577F0(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100001FA4(i, v10);
      sub_10000637C(&qword_10007B258, &qword_100067210);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_100003AA0(v8, v11);
      sub_100003AA0(v11, v8);
      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000577F0((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      sub_100003AA0(v8, &v3[5 * v6 + 4]);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_100008630(v8, &qword_10007B298, qword_100066CA0);
    return 0;
  }

  return v3;
}

void *sub_100024440(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100001FA4(i, v6);
    sub_100006820(0, &qword_10007A220, NSExtension_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = v7[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void *ExtensionFinder.extensionsForGroups(_:)()
{

  v1 = sub_100026624(v0);

  v2 = ExtensionFinder.extensions.getter();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_19:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v17 = _swiftEmptyArrayStorage;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_18;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v10 = sub_1000246DC(v7, v1);
    v12 = v11;

    ++v6;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1000262B8(0, v17[2] + 1, 1, v17);
      }

      v14 = v17[2];
      v13 = v17[3];
      if (v14 >= v13 >> 1)
      {
        v17 = sub_1000262B8((v13 > 1), v14 + 1, 1, v17);
      }

      v17[2] = v14 + 1;
      v15 = &v17[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
      v6 = v9;
    }
  }

  return v17;
}

id sub_1000246DC(void *a1, uint64_t a2)
{
  result = [a1 attributes];
  if (!result)
  {
    goto LABEL_15;
  }

  v5 = result;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v16, "SettingsGroups");
  HIBYTE(v16[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (*(v6 + 16) && (v7 = sub_10001877C(&v17), (v8 & 1) != 0))
  {
    sub_100001FA4(*(v6 + 56) + 32 * v7, v18);
    sub_10001E484(&v17);

    sub_10000637C(&qword_10007B2D8, &unk_100066D00);
    if (swift_dynamicCast())
    {
      v9 = sub_100026624(v16[0]);

      v10 = sub_10000DF68(a2, v9);
      v11 = v10;
      v12 = *(v10 + 16);
      if (!v12)
      {

        if (_swiftEmptyArrayStorage[2])
        {
          goto LABEL_8;
        }

LABEL_13:

        return 0;
      }

      v13 = sub_1000479A4(*(v10 + 16), 0);
      v14 = sub_10004DB84(&v17, v13 + 4, v12, v11);
      result = sub_100003AB8();
      if (v14 == v12)
      {
        if (v13[2])
        {
LABEL_8:
          v15 = a1;
          return a1;
        }

        goto LABEL_13;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }
  }

  else
  {

    sub_10001E484(&v17);
  }

  return 0;
}

void *sub_1000248D4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[6];
  v6 = v3[7];
  result = sub_100024A98(v13, a1, v3[9], v3[10], a2, a3);
  if (!v4)
  {
    v8 = result;
    sub_100002614(v13, &v11);
    v12 = v8;
    sub_10000637C(&qword_10007B2A8, &unk_100066CB8);
    sub_10000637C(&qword_10007B2B8, &unk_100066CD8);
    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      sub_100026724();
      swift_allocError();
      *v9 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

void *sub_1000249B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[6];
  v6 = v3[8];
  result = sub_100024A98(v13, a1, v3[11], v3[12], a2, a3);
  if (!v4)
  {
    v8 = result;
    sub_100002614(v13, &v11);
    v12 = v8;
    sub_10000637C(&qword_10007B2A8, &unk_100066CB8);
    sub_10000637C(&qword_10007B2B0, &unk_100066CC8);
    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      sub_100026724();
      swift_allocError();
      *v9 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

void *sub_100024A98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v103 = a6;
  v102 = a5;
  v95 = a1;
  v11 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v96 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v97 = (v89 - v15);
  v100 = type metadata accessor for UUID();
  v99 = *(v100 - 8);
  v16 = *(v99 + 64);
  v17 = __chkstk_darwin(v100);
  v94 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v18;
  __chkstk_darwin(v17);
  v98 = v89 - v19;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000637C(&qword_10007B230, &qword_100066C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100065C80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v26;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v27;
  v28 = *sub_100008578(a2, a2[3]);

  v29 = [v28 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = URL.path.getter();
  v32 = v31;
  (*(v21 + 8))(v24, v20);
  *(inited + 80) = v30;
  *(inited + 88) = v32;
  v33 = sub_100006504(inited);
  swift_setDeallocating();
  sub_10000637C(&qword_10007B238, &unk_100066C68);
  swift_arrayDestroy();
  sub_100023D44(v33);

  v34 = *(v7 + 32);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v36 = &type metadata for Any;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&aBlock = 0;
  v38 = [ObjCClassFromMetadata extensionsWithMatchingAttributes:isa error:&aBlock];

  v39 = aBlock;
  if (!v38)
  {
    v75 = aBlock;
    _convertNSErrorToError(_:)();

LABEL_13:
    swift_willThrow();
    return v36;
  }

  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v39;

  v42 = sub_1000242D4(v40);

  if (!v42)
  {
LABEL_12:
    sub_100026724();
    swift_allocError();
    *v76 = 2;
    goto LABEL_13;
  }

  if (!v42[2])
  {

    goto LABEL_12;
  }

  sub_10000695C((v42 + 4), &aBlock);

  sub_100003AA0(&aBlock, v110);
  sub_10000695C(v110, &aBlock);
  v43 = swift_allocObject();
  sub_100003AA0(&aBlock, v43 + 16);
  v44 = v103;
  *(v43 + 56) = v102;
  *(v43 + 64) = v44;

  v36 = sub_100026F98(sub_100026778, v43);

  v45 = v111;
  v46 = v112;
  sub_100008578(v110, v111);
  v47 = v101;
  v48 = (v46[1])(1, 0, v45, v46);
  if (v47)
  {
LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:
    sub_10000210C(v110);
    return v36;
  }

  *&aBlock = v48;
  sub_10000637C(&qword_10007B248, &qword_100066C78);
  v49 = v97;
  v50 = v100;
  v51 = swift_dynamicCast();
  v52 = v99;
  v53 = *(v99 + 56);
  if ((v51 & 1) == 0)
  {
    v53(v49, 1, 1, v50);
    sub_100008630(v49, &unk_10007B400, &unk_100066D80);
    sub_100026724();
    swift_allocError();
    *v77 = 3;
    swift_willThrow();
    goto LABEL_15;
  }

  v53(v49, 0, 1, v50);
  v54 = *(v52 + 32);
  v55 = v98;
  v91 = v52 + 32;
  v90 = v54;
  v54(v98, v49, v50);
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  v56 = v111;
  v101 = v112;
  sub_100008578(v110, v111);
  v57 = v52 + 16;
  v58 = *(v52 + 16);
  v59 = v96;
  v60 = v55;
  v61 = v57;
  v92 = v58;
  v58(v96, v60, v50);
  v97 = v53;
  v53(v59, 0, 1, v50);
  v101[3](v109, v59, v56);
  sub_100008630(v59, &unk_10007B400, &unk_100066D80);
  sub_100027590(v109, &aBlock);
  v62 = v106;
  if (!v106)
  {
    sub_100008630(&aBlock, &qword_10007B250, &unk_100066C80);
    goto LABEL_19;
  }

  v63 = v107;
  sub_100008578(&aBlock, v106);
  v64 = (*(v63 + 8))(v62, v63);
  sub_10000210C(&aBlock);
  if (!v64)
  {
LABEL_19:
    sub_100026724();
    swift_allocError();
    *v79 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_100008630(v109, &qword_10007B250, &unk_100066C80);
    (*(v99 + 8))(v98, v100);
    goto LABEL_16;
  }

  v101 = v64;
  v65 = v111;
  v66 = v112;
  sub_100008578(v110, v111);
  v67 = v96;
  v68 = v61;
  v69 = v100;
  v70 = v92;
  v89[1] = v68;
  v92(v96, v98, v100);
  v97(v67, 0, 1, v69);
  (v66)[4](v67, v65, v66);
  sub_100008630(v67, &unk_10007B400, &unk_100066D80);
  if (BSPIDIsBeingDebugged())
  {
    v71 = v99;
    v72 = v98;
    v73 = v102;
    v74 = v103;
  }

  else
  {
    sub_10000695C(v110, &aBlock);
    v80 = v100;
    v81 = v94;
    v70(v94, v98, v100);
    v71 = v99;
    v82 = (*(v99 + 80) + 56) & ~*(v99 + 80);
    v83 = (v93 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
    v84 = swift_allocObject();
    sub_100003AA0(&aBlock, v84 + 16);
    v90(v84 + v82, v81, v80);
    v85 = (v84 + v83);
    v73 = v102;
    v74 = v103;
    *v85 = v102;
    v85[1] = v74;

    v86 = sub_100026F98(sub_100027600, v84);

    swift_unknownObjectRelease();
    v36 = v86;
    v72 = v98;
  }

  v107 = v73;
  v108 = v74;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v105 = sub_100025B00;
  v106 = &unk_100076468;
  v87 = _Block_copy(&aBlock);

  v88 = [v101 synchronousRemoteObjectProxyWithErrorHandler:v87];
  _Block_release(v87);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100008630(v109, &qword_10007B250, &unk_100066C80);
  (*(v71 + 8))(v72, v100);
  sub_10000210C(v110);
  return v36;
}

uint64_t sub_1000255EC(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.agent.getter();
  sub_10000695C(a1, v29);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25[1] = a3;
    v16 = v15;
    v28 = v15;
    *v14 = 136446210;
    sub_10000695C(v29, v27);
    sub_10000637C(&qword_10007B258, &qword_100067210);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    sub_10000210C(v29);
    v20 = sub_100001ED8(v17, v19, &v28);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Killing %{public}s because it took too long to start.", v14, 0xCu);
    sub_10000210C(v16);

    a2 = v26;
  }

  else
  {

    sub_10000210C(v29);
  }

  (*(v7 + 8))(v10, v6);
  v21 = a1[3];
  v22 = a1[4];
  sub_100008578(a1, v21);
  (*(v22 + 40))(9, v21, v22);
  sub_100026724();
  swift_allocError();
  *v23 = 4;
  a2();
}

uint64_t sub_10002586C(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v29 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.agent.getter();
  sub_10000695C(a1, v32);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = a4;
    v17 = v16;
    v31 = v16;
    *v15 = 136446210;
    sub_10000695C(v32, v30);
    sub_10000637C(&qword_10007B258, &qword_100067210);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    sub_10000210C(v32);
    v21 = sub_100001ED8(v18, v20, &v31);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Canceling request to %{public}s because it exceeded its allowed time.", v15, 0xCu);
    sub_10000210C(v17);

    a3 = v28;
  }

  else
  {

    sub_10000210C(v32);
  }

  (*(v8 + 8))(v11, v7);
  v22 = a1[3];
  v23 = a1[4];
  sub_100008578(a1, v22);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v23 + 16))(isa, v22, v23);

  sub_100026724();
  swift_allocError();
  *v25 = 4;
  a3();
}

void sub_100025B00(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100025B68()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10002769C(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000637C(&qword_10007AF10, &unk_1000670A0);
  sub_100020F3C(&qword_10007B290, &qword_10007AF10, &unk_1000670A0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void *ExtensionFinder.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[10];

  v4 = v0[12];

  return v0;
}

uint64_t ExtensionFinder.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[10];

  v4 = v0[12];

  return swift_deallocClassInstance();
}

size_t sub_100025CC8(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10000637C(&unk_10007B200, &unk_100066C30);
  v10 = *(sub_10000637C(&qword_10007A468, &qword_100065C10) - 8);
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
  v15 = *(sub_10000637C(&qword_10007A468, &qword_100065C10) - 8);
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

size_t sub_100025EB8(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10000637C(&qword_10007B1F8, &qword_100066C28);
  v10 = *(type metadata accessor for URL() - 8);
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
  v15 = *(type metadata accessor for URL() - 8);
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

char *sub_100026090(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000637C(&qword_10007B1E8, &qword_100066C18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000261AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000637C(&unk_10007B220, &unk_100066C50);
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

void *sub_1000262B8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10000637C(&qword_10007B2C8, &qword_100066CF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000637C(&qword_10007B2D0, &qword_100066CF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000263EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000637C(&qword_10007B1F0, &qword_100066C20);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1000264F0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_10000637C(&unk_10007B210, &unk_100066C40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000637C(&qword_10007AF18, &unk_1000668D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100026624(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100002624(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1000266C0()
{
  result = qword_10007B080;
  if (!qword_10007B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B080);
  }

  return result;
}

unint64_t sub_100026724()
{
  result = qword_10007B240;
  if (!qword_10007B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B240);
  }

  return result;
}

uint64_t sub_100026784(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v8 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v56 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v54 - v12;
  v14 = type metadata accessor for UUID();
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  __chkstk_darwin(v14);
  v57 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10001FE48;
  *(v18 + 24) = v17;
  v60 = v18;
  sub_10000637C(&qword_10007B230, &qword_100066C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100065C80;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v20;
  v21 = a3[3];
  *(inited + 48) = a3[2];
  *(inited + 56) = v21;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v22;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  _Block_copy(a4);
  _Block_copy(a4);

  v23 = sub_100006504(inited);
  swift_setDeallocating();
  sub_10000637C(&qword_10007B238, &unk_100066C68);
  swift_arrayDestroy();
  sub_100023D44(v23);

  v24 = a3[4];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v61 = 0;
  v27 = [ObjCClassFromMetadata extensionsWithMatchingAttributes:isa error:&v61];

  v28 = v61;
  if (!v27)
  {
    v34 = v61;
    v35 = _convertNSErrorToError(_:)();

LABEL_8:
    swift_willThrow();
    goto LABEL_15;
  }

  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v28;

  v31 = sub_1000242D4(v29);

  if (!v31)
  {
LABEL_7:
    sub_100026724();
    v35 = swift_allocError();
    *v36 = 2;
    goto LABEL_8;
  }

  if (!v31[2])
  {

    goto LABEL_7;
  }

  sub_10000695C((v31 + 4), &v61);

  sub_100003AA0(&v61, v67);
  v32 = v68;
  v33 = v69;
  sub_100008578(v67, v68);
  *&v61 = (*(v33 + 8))(0, 0, v32, v33);
  sub_10000637C(&qword_10007B248, &qword_100066C78);
  v37 = v59;
  v38 = swift_dynamicCast();
  v39 = v58;
  v40 = *(v58 + 56);
  if ((v38 & 1) == 0)
  {
    v40(v13, 1, 1, v37);
    sub_100008630(v13, &unk_10007B400, &unk_100066D80);
    sub_100026724();
    v35 = swift_allocError();
    *v51 = 3;
    swift_willThrow();
    sub_10000210C(v67);
    goto LABEL_15;
  }

  v40(v13, 0, 1, v37);
  v41 = v57;
  (*(v39 + 32))(v57, v13, v37);
  v54 = v69;
  v55 = v68;
  sub_100008578(v67, v68);
  v42 = *(v39 + 16);
  v43 = v56;
  v42(v56, v41, v37);
  v40(v43, 0, 1, v37);
  (*(v54 + 24))(v66, v43, v55);
  sub_100008630(v43, &unk_10007B400, &unk_100066D80);
  sub_100027590(v66, &v61);
  v44 = v63;
  if (!v63)
  {
    sub_100008630(&v61, &qword_10007B250, &unk_100066C80);
    goto LABEL_18;
  }

  v45 = v64;
  sub_100008578(&v61, v63);
  v46 = (*(v45 + 1))(v44, v45);
  sub_10000210C(&v61);
  if (!v46)
  {
LABEL_18:
    sub_100026724();
    v35 = swift_allocError();
    *v52 = 1;
    swift_willThrow();
    sub_100008630(v66, &qword_10007B250, &unk_100066C80);
    (*(v58 + 8))(v57, v59);
    sub_10000210C(v67);
    goto LABEL_15;
  }

  v64 = sub_1000276E4;
  v65 = v60;
  *&v61 = _NSConcreteStackBlock;
  *(&v61 + 1) = 1107296256;
  v62 = sub_100025B00;
  v63 = &unk_100076508;
  v47 = _Block_copy(&v61);

  v48 = [v46 synchronousRemoteObjectProxyWithErrorHandler:v47];
  _Block_release(v47);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100008630(v66, &qword_10007B250, &unk_100066C80);
  (*(v58 + 8))(v57, v59);
  sub_10000210C(v67);
  sub_10000637C(&qword_10007B2C0, &qword_100066CE8);
  if (swift_dynamicCast())
  {
    v49 = v61;

    _Block_release(a4);
    return v49;
  }

  sub_100026724();
  v35 = swift_allocError();
  *v53 = 0;
LABEL_15:
  _Block_copy(a4);
  sub_10001F5E0(v35, a4);
  _Block_release(a4);

  _Block_release(a4);
  return 0;
}

uint64_t sub_100026F98(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v48 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  __chkstk_darwin(v2);
  v52 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  __chkstk_darwin(v5);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v39 - v13;
  v42 = type metadata accessor for DispatchTime();
  v55 = *(v42 - 8);
  v14 = *(v55 + 64);
  v15 = __chkstk_darwin(v42);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v41 = &v39 - v18;
  v19 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006820(0, &qword_10007B260, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002769C(&qword_10007B268, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10000637C(&qword_10007B270, &unk_100066C90);
  sub_100020F3C(&qword_10007B278, &qword_10007B270, &unk_100066C90);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v20 + 8))(v23, v19);
  ObjectType = swift_getObjectType();
  static DispatchTime.now()();
  v26 = v41;
  + infix(_:_:)();
  v27 = *(v55 + 8);
  v55 += 8;
  v40 = v27;
  v28 = v42;
  v27(v17, v42);
  v30 = v45;
  v29 = v46;
  v31 = *(v46 + 104);
  v32 = v47;
  v31(v45, enum case for DispatchTimeInterval.never(_:), v47);
  *v12 = 0;
  v31(v12, enum case for DispatchTimeInterval.nanoseconds(_:), v32);
  v43 = v24;
  v44 = ObjectType;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v33 = *(v29 + 8);
  v33(v12, v32);
  v33(v30, v32);
  v40(v26, v28);
  if (v48)
  {
    aBlock[4] = v48;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020A64;
    aBlock[3] = &unk_100076490;
    v34 = _Block_copy(aBlock);
  }

  else
  {
    v34 = 0;
  }

  v35 = v49;
  static DispatchQoS.unspecified.getter();
  v36 = v52;
  sub_100025B68();
  v37 = v43;
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v34);
  (*(v53 + 8))(v36, v54);
  (*(v50 + 8))(v35, v51);
  OS_dispatch_source.resume()();
  return v37;
}

uint64_t sub_100027590(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000637C(&qword_10007B250, &unk_100066C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027600()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_10002586C((v0 + 16), v0 + v2, v4, v5);
}

uint64_t sub_10002769C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Dictionary<>.incorporate(persistableKeysAndValues:scope:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = a2;
  v75 = type metadata accessor for Logger();
  v5 = *(v75 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v75);
  v76 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SettingScope();
  v8 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v80 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v79 = (v9 + 8);
  v74 = (v5 + 8);

  v16 = 0;
  v17 = 0;
  *&v18 = 136446210;
  v73 = v18;
  v78 = v3;
  while (v14)
  {
LABEL_10:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v21 = v20 | (v16 << 6);
    v22 = (*(a1 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(a1 + 56) + 8 * v21);

    v26 = v25;
    static SettingMetadataDirectory.metadata(for:)();
    if (v17)
    {

      v88 = 0;
      v86 = 0u;
      v87 = 0u;
      sub_100027D78(&v86);
      v17 = 0;
    }

    else
    {
      v84 = v26;
      v85 = v23;
      v83 = 0;
      v27 = a1;
      sub_100003AA0(&v86, v89);
      sub_100008578(v89, v90);
      v28 = v80;
      dispatch thunk of SettingMetadataProtocol.scope.getter();
      sub_100027DE0();
      v29 = v81;
      v30 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*v79)(v28, v29);
      if (v30)
      {

        sub_10000210C(v89);
        a1 = v27;
        v17 = v83;
      }

      else
      {
        v31 = v78;
        v32 = *v78;
        v33 = *(*v78 + 16);
        v77 = v27;
        if (v33)
        {
          v34 = sub_1000182E8(v85, v24);
          if ((v35 & 1) == 0)
          {
            v43 = *v31;
            goto LABEL_18;
          }

          v36 = *(*(v32 + 56) + 8 * v34);
          sub_100008578(v89, v90);
          v37 = v36;
          dispatch thunk of SettingMetadataProtocol.combineOperator.getter();
          sub_100008578(&v86, *(&v87 + 1));
          v38 = v84;
          v39 = CombineOperator.combinePeristableValues(_:_:scope:)();
          sub_10000210C(&v86);
          if (v39)
          {
            v40 = v78;
            v41 = *v78;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v86 = *v40;
            sub_10001C868(v39, v85, v24, isUniquelyReferenced_nonNull_native);

            *v40 = v86;
            a1 = v77;
            goto LABEL_29;
          }

          v62 = v76;
          static Logger.effective.getter();

          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v72 = v63;
            v66 = v65;
            v67 = swift_slowAlloc();
            *&v86 = v67;
            *v66 = v73;
            v68 = sub_100001ED8(v85, v24, &v86);

            *(v66 + 4) = v68;
            v69 = v72;
            _os_log_impl(&_mh_execute_header, v72, v64, "Failed to combine setting values for %{public}s", v66, 0xCu);
            sub_10000210C(v67);

            (*v74)(v76, v75);
          }

          else
          {

            (*v74)(v62, v75);
          }

          a1 = v77;
          v17 = v83;
          sub_10000210C(v89);
        }

        else
        {
LABEL_18:
          v44 = swift_isUniquelyReferenced_nonNull_native();
          *&v86 = *v31;
          v45 = v86;
          v47 = sub_1000182E8(v85, v24);
          v48 = *(v45 + 16);
          v49 = (v46 & 1) == 0;
          v50 = v48 + v49;
          if (__OFADD__(v48, v49))
          {
            goto LABEL_36;
          }

          v51 = v46;
          if (*(v45 + 24) >= v50)
          {
            if ((v44 & 1) == 0)
            {
              sub_10001DD34();
            }
          }

          else
          {
            sub_10001B190(v50, v44);
            v52 = sub_1000182E8(v85, v24);
            if ((v51 & 1) != (v53 & 1))
            {
              goto LABEL_38;
            }

            v47 = v52;
          }

          a1 = v77;
          v54 = v84;
          v55 = v86;
          if (v51)
          {
            v56 = *(v86 + 56);
            v57 = *(v56 + 8 * v47);
            *(v56 + 8 * v47) = v84;
          }

          else
          {
            *(v86 + 8 * (v47 >> 6) + 64) |= 1 << v47;
            v58 = (v55[6] + 16 * v47);
            *v58 = v85;
            v58[1] = v24;
            *(v55[7] + 8 * v47) = v54;
            v59 = v55[2];
            v60 = __OFADD__(v59, 1);
            v61 = v59 + 1;
            if (v60)
            {
              goto LABEL_37;
            }

            v55[2] = v61;
          }

          *v78 = v55;
LABEL_29:
          sub_10000210C(v89);
          v17 = v83;
        }
      }
    }
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
    }

    v14 = *(v11 + 8 * v19);
    ++v16;
    if (v14)
    {
      v16 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100027D78(uint64_t a1)
{
  v2 = sub_10000637C(&qword_10007AC50, &unk_1000672E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100027DE0()
{
  result = qword_10007B2E8;
  if (!qword_10007B2E8)
  {
    type metadata accessor for SettingScope();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B2E8);
  }

  return result;
}

uint64_t sub_100027E38()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_listener];
  [v2 setDelegate:v1];
  [v2 activate];
  v3 = *&v1[OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_publisherListener];
  [v3 setDelegate:v1];
  NSXPCListener.setNonLaunching(_:)(1);
  [v3 activate];
  v4 = *&v1[OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator];
  sub_100021560();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v10[4] = sub_10003146C;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10002A394;
  v10[3] = &unk_100076918;
  v6 = _Block_copy(v10);
  v7 = v1;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, v6);
  _Block_release(v6);
  v8 = *&v7[OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_eventPublisher];
  return sub_10000C2E0();
}

uint64_t sub_100027F94()
{
  v1 = OBJC_IVAR____TtC20ManagedSettingsAgent5Agent____lazy_storage___shieldExtension;
  if (*(v0 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent____lazy_storage___shieldExtension))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent____lazy_storage___shieldExtension);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_effectiveSettings);
    v4 = *(v0 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
    sub_10000695C(v0 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_extensionFinder, v15);
    v5 = v16;
    v6 = sub_100005AE4(v15, v16);
    v7 = *(*(v5 - 8) + 64);
    __chkstk_darwin(v6);
    v9 = (&v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;

    v2 = sub_10002A818(v3, v4, v11);
    sub_10000210C(v15);
    v12 = *(v0 + v1);
    *(v0 + v1) = v2;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

void *sub_100028108()
{
  v1 = OBJC_IVAR____TtC20ManagedSettingsAgent5Agent____lazy_storage___overrideSettingsExtension;
  if (*(v0 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent____lazy_storage___overrideSettingsExtension))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent____lazy_storage___overrideSettingsExtension);
  }

  else
  {
    v29 = *(v0 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_effectiveSettings);
    v3 = v29;
    sub_10000695C(v0 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_extensionFinder, v35);
    v4 = v36;
    v5 = sub_100005AE4(v35, v36);
    v30 = &v28;
    v6 = *(*(v4 - 8) + 64);
    __chkstk_darwin(v5);
    v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v11 = type metadata accessor for EffectiveSettings();
    v34[3] = v11;
    v34[4] = &off_100076A48;
    v34[0] = v3;
    v12 = type metadata accessor for ExtensionFinder();
    v32 = v12;
    v33 = &off_100076350;
    v31[0] = v10;
    type metadata accessor for OverrideSettingsExtension();
    v2 = swift_allocObject();
    v13 = sub_100005AE4(v34, v11);
    v14 = *(*(v11 - 8) + 64);
    __chkstk_darwin(v13);
    v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = v32;
    v19 = sub_100005AE4(v31, v32);
    v20 = *(*(v18 - 8) + 64);
    __chkstk_darwin(v19);
    v22 = (&v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v16;
    v25 = *v22;
    v2[10] = v11;
    v2[11] = &off_100076A48;
    v2[7] = v24;
    v2[5] = v12;
    v2[6] = &off_100076350;
    v2[2] = v25;

    sub_10000210C(v31);
    sub_10000210C(v34);
    sub_10000210C(v35);
    v26 = *(v0 + v1);
    *(v0 + v1) = v2;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

double sub_100028434@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_overrideEntitlements);
  if (v5)
  {
    if (*(v5 + 16))
    {
      v6 = sub_1000182E8(a1, a2);
      if (v7)
      {
        v8 = *(v5 + 56) + 32 * v6;

        sub_100001FA4(v8, a3);
        return result;
      }
    }

LABEL_10:
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v10 = [objc_opt_self() currentConnection];
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v10;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 valueForEntitlement:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  result = *&v14;
  *a3 = v14;
  a3[1] = v15;
  return result;
}

id sub_100028584()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002873C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, void (*a8)(id, char *, uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v13 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v29 - v15;
  v17 = _Block_copy(a7);
  if (a4)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  }

  else
  {
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  _Block_copy(v17);
  v26 = a3;
  v27 = a1;
  a8(v26, v16, v20, v22, v23, v25, v27, v17);
  _Block_release(v17);
  _Block_release(v17);

  return sub_100008630(v16, &unk_10007B400, &unk_100066D80);
}

uint64_t sub_100028C9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, const char *a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v28 - v15;
  v17 = _Block_copy(a6);
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  }

  else
  {
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;
  _Block_copy(v17);
  v26 = a1;
  sub_10002E1BC(v16, v20, v22, v23, v25, v26, v17, a7, a8);
  _Block_release(v17);
  _Block_release(v17);

  return sub_100008630(v16, &unk_10007B400, &unk_100066D80);
}

void sub_100029228(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_100029324(void *a1, int a2, int a3, int a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  _Block_copy(v8);
  v15 = a1;
  a6(v9, v11, v12, v14, v15, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_100029444(void *a1, int a2, int a3, int a4, int a5, void *aBlock, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v11 = _Block_copy(aBlock);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  _Block_copy(v11);
  v21 = a1;
  sub_10003040C(v12, v14, v15, v17, v18, v20, v21, v11, a7, a8, a9, a10);
  _Block_release(v11);
  _Block_release(v11);
}

uint64_t sub_100029698(void *a1, int a2, uint64_t a3, int a4, int a5, void *aBlock, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v13 = _Block_copy(aBlock);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  _Block_copy(v13);
  v20 = a1;
  sub_100030968(a3, v14, v16, v17, v19, v20, v13, a7, a8, a9, a10);
  _Block_release(v13);
  _Block_release(v13);
}

uint64_t sub_100029790(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_1000298E0(void *a1, int a2, int a3, int a4, void *aBlock, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9)
{
  v13 = _Block_copy(aBlock);
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  _Block_copy(v13);
  v20 = a1;
  sub_100030E9C(v14, v16, v17, v19, v20, v13, a6, a7, a8, a9);
  _Block_release(v13);
  _Block_release(v13);
}

uint64_t sub_1000299EC(void *a1, int a2, int a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

id sub_100029A90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_publisherCenter);
  swift_getObjectType();
  v6 = dispatch thunk of XPCConnectable.processIdentifier.getter();
  return sub_100009A5C(v6, a4);
}

uint64_t sub_100029BBC()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100029BFC()
{
  sub_100028434(0xD000000000000028, 0x8000000100069A60, &v2);
  if (v3)
  {
    if (swift_dynamicCast() && (v1 & 1) != 0)
    {
      return 1;
    }
  }

  else
  {
    sub_100008630(&v2, &unk_10007B3F0, &unk_100066D70);
  }

  sub_100028434(0xD000000000000023, 0x8000000100069A90, &v2);
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v1;
    }
  }

  else
  {
    sub_100008630(&v2, &unk_10007B3F0, &unk_100066D70);
    return 0;
  }

  return result;
}

uint64_t sub_100029D08(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = XPC_EVENT_KEY_NAME.getter();
  if (xpc_dictionary_get_string(a1, v10))
  {
    v11 = String.init(cString:)();
    v13 = v12;
    static Logger.agent.getter();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100001ED8(v11, v13, &v28);
      _os_log_impl(&_mh_execute_header, v14, v15, "Received notification %s", v16, 0xCu);
      sub_10000210C(v17);
    }

    (*(v3 + 8))(v7, v2);
    v18 = [objc_opt_self() pairedDeviceRegistryDeviceDidPairDarwinNotification];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v19 == v11 && v21 == v13)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        return result;
      }
    }

    return sub_10002A014();
  }

  else
  {
    static Logger.agent.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to retrieve notifyd event name", v24, 2u);
    }

    return (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_10002A014()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006820(0, &qword_10007A360, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v13, v9);
  v15 = swift_allocObject();
  v16 = v21;
  *(v15 + 16) = v21;
  aBlock[4] = sub_100031474;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020A64;
  aBlock[3] = &unk_100076968;
  v17 = _Block_copy(aBlock);
  v18 = v16;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000025CC(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000637C(&qword_10007AF10, &unk_1000670A0);
  sub_1000234DC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v1 + 8))(v4, v0);
  (*(v5 + 8))(v8, v22);
}

uint64_t sub_10002A394(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10002A3F4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = __chkstk_darwin(v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
  if ((*(v17 + 264) & 1) == 0)
  {
    *(v17 + 264) = 1;
    sub_100006820(0, &qword_10007A360, OS_dispatch_queue_ptr);
    (*(v12 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v11);
    v18 = static OS_dispatch_queue.global(qos:)();
    v22 = v7;
    v19 = v18;
    (*(v12 + 8))(v16, v11);
    aBlock[4] = sub_10003147C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020A64;
    aBlock[3] = &unk_100076990;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_1000025CC(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000637C(&qword_10007AF10, &unk_1000670A0);
    sub_1000234DC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v3 + 8))(v6, v2);
    (*(v23 + 8))(v10, v22);
  }

  return result;
}

unint64_t *sub_10002A77C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10002B320(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_10002A818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EffectiveSettings();
  v26[3] = v6;
  v26[4] = &off_100076A48;
  v26[0] = a1;
  v7 = type metadata accessor for ExtensionFinder();
  v24 = v7;
  v25 = &off_100076350;
  v23[0] = a3;
  type metadata accessor for ShieldExtension();
  v8 = swift_allocObject();
  v9 = sub_100005AE4(v26, v6);
  v10 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = v24;
  v15 = sub_100005AE4(v23, v24);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v12;
  v21 = *v18;
  *(v8 + 96) = v6;
  *(v8 + 104) = &off_100076A48;
  *(v8 + 144) = v7;
  *(v8 + 152) = &off_100076350;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0;
  *(v8 + 72) = v20;
  *(v8 + 112) = a2;
  *(v8 + 120) = v21;
  sub_10000210C(v23);
  sub_10000210C(v26);
  return v8;
}

uint64_t sub_10002AA1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() currentConnection];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 processIdentifier];
  }

  else
  {
    v11 = 0;
  }

  static Logger.agent.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67240192;
    *(v14 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Update effective settings received from process %{public}d", v14, 8u);
  }

  (*(v5 + 8))(v8, v4);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      v15 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
      sub_100022170(1);
      v16 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
      [*(v16 + 216) lock];
      sub_10003B7C4(1);
      [*(v16 + 216) unlock];
      return (*(a2 + 16))(a2, 0);
    }

    sub_100031408();
    swift_allocError();
    *v18 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v17 = 2;
  }

  swift_willThrow();
  swift_errorRetain();
  v19 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, v19);
}