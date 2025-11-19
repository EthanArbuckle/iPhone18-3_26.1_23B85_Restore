unint64_t sub_10000135C()
{
  result = qword_100014098;
  if (!qword_100014098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014098);
  }

  return result;
}

uint64_t sub_1000013E4()
{
  v0 = sub_10000C898();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_10000C8D8() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_10000C988() - 8) + 64);
  __chkstk_darwin();
  v7 = sub_10000C8A8();
  sub_100002374(v7, qword_100014310);
  sub_10000233C(v7, qword_100014310);
  sub_10000C928();
  sub_10000C8C8();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10000C8B8();
}

uint64_t sub_1000015F8(uint64_t a1)
{
  v3 = *(*(type metadata accessor for FocusEntity() - 8) + 64);
  __chkstk_darwin();
  v5 = *v1;
  sub_1000023D8(a1, &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000C6C8();
  return sub_10000243C(a1);
}

void (*sub_100001688(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_10000C6A8();
  return sub_1000016FC;
}

void sub_1000016FC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100001748()
{
  result = qword_1000140A8;
  if (!qword_1000140A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140A8);
  }

  return result;
}

uint64_t sub_10000179C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002250();
  v5 = sub_1000022F8(&qword_100014100);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100001828()
{
  v0 = qword_100014068;

  return v0;
}

unint64_t sub_100001868()
{
  result = qword_1000140B0;
  if (!qword_1000140B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140B0);
  }

  return result;
}

unint64_t sub_1000018C0()
{
  result = qword_1000140B8;
  if (!qword_1000140B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140B8);
  }

  return result;
}

unint64_t sub_100001918()
{
  result = qword_1000140C0;
  if (!qword_1000140C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140C0);
  }

  return result;
}

uint64_t sub_1000019BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014060 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C8A8();
  v3 = sub_10000233C(v2, qword_100014310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001A84(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100002250();
  v7 = sub_1000022A4();
  v8 = sub_1000022F8(&qword_100014100);
  *v5 = v2;
  v5[1] = sub_100001B6C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100001B6C()
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

uint64_t sub_100001C74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100001CE8();
  *a1 = result;
  return result;
}

uint64_t sub_100001C9C(uint64_t a1)
{
  v2 = sub_100001748();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100001CE8()
{
  v0 = sub_10000C7F8();
  v35 = *(v0 - 8);
  v36 = v0;
  v1 = *(v35 + 64);
  (__chkstk_darwin)();
  v34 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(sub_100002208(&qword_1000140C8, &qword_10000D268) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v33 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v32 = v31 - v6;
  v7 = sub_100002208(&qword_1000140D0, &qword_10000D270);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7 - 8);
  v10 = v31 - v9;
  v11 = sub_100002208(&qword_1000140D8, &qword_10000D278);
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11 - 8);
  v14 = v31 - v13;
  v15 = sub_10000C898();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C8D8();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_10000C988();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v24 = sub_10000C8A8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v31[1] = sub_100002208(&qword_1000140E0, &qword_10000D280);
  sub_10000C928();
  sub_10000C8C8();
  (*(v16 + 104))(v19, enum case for LocalizedStringResource.BundleDescription.main(_:), v15);
  sub_10000C8B8();
  (*(v25 + 56))(v14, 1, 1, v24);
  v27 = type metadata accessor for FocusEntity();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v28 = sub_10000C678();
  v29 = *(*(v28 - 8) + 56);
  v29(v32, 1, 1, v28);
  v29(v33, 1, 1, v28);
  (*(v35 + 104))(v34, enum case for InputConnectionBehavior.default(_:), v36);
  sub_1000022F8(&qword_1000140E8);
  return sub_10000C708();
}

uint64_t sub_100002208(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002250()
{
  result = qword_1000140F0;
  if (!qword_1000140F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140F0);
  }

  return result;
}

unint64_t sub_1000022A4()
{
  result = qword_1000140F8;
  if (!qword_1000140F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140F8);
  }

  return result;
}

uint64_t sub_1000022F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FocusEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000233C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100002374(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000023D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000243C(uint64_t a1)
{
  v2 = type metadata accessor for FocusEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FocusEntity()
{
  result = qword_1000141E8;
  if (!qword_1000141E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002578()
{
  v0 = sub_100002208(&qword_1000140D8, &qword_10000D278);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_10000C898();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C8D8();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10000C988();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10000C8A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_10000C828();
  sub_100002374(v15, qword_100014328);
  sub_10000233C(v15, qword_100014328);
  sub_10000C928();
  sub_10000C8C8();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_10000C8B8();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_10000C818();
}

uint64_t sub_10000286C()
{
  v1 = sub_100002208(&qword_100014268, &qword_10000D808);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v21 - v3;
  v5 = sub_100002208(&qword_1000140D8, &qword_10000D278);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_10000C8A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);

  sub_10000C888();
  (*(v10 + 16))(v14, v16, v9);
  sub_100002AD4(v8);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_10000C728();
  v19 = sub_10000C738();
  (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
  sub_10000C748();
  return (*(v10 + 8))(v16, v9);
}

uint64_t sub_100002AD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C898();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10000C8D8();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10000C988();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100002208(&qword_1000140D8, &qword_10000D278);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v20[-v14];
  v16 = type metadata accessor for FocusEntity();
  sub_100006240(v1 + *(v16 + 24), v15);
  v17 = sub_10000C8A8();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) != 1)
  {
    return (*(v18 + 32))(a1, v15, v17);
  }

  sub_1000062B0(v15, &qword_1000140D8, &qword_10000D278);
  sub_10000C928();
  sub_10000C8C8();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  return sub_10000C8B8();
}

uint64_t sub_100002D94()
{
  v0 = sub_100002208(&qword_100014270, &qword_10000D810);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100002208(&qword_100014278, qword_10000D818);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100006310(&qword_1000140E8, type metadata accessor for FocusEntity);
  sub_10000C7D8();
  v9._object = 0x800000010000DCF0;
  v9._countAndFlagsBits = 0xD00000000000002FLL;
  sub_10000C7C8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_10000C7B8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_10000C7C8(v10);
  return sub_10000C7E8();
}

unint64_t sub_100003064()
{
  result = qword_100014120;
  if (!qword_100014120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014120);
  }

  return result;
}

uint64_t sub_1000030C8()
{
  sub_100006310(&qword_100014100, type metadata accessor for FocusEntity);
  v1 = sub_10000C788();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100003290@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000032A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014078 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C828();
  v3 = sub_10000233C(v2, qword_100014328);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000334C()
{
  result = qword_100014148;
  if (!qword_100014148)
  {
    sub_1000033B0(&qword_100014150, &qword_10000D460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014148);
  }

  return result;
}

uint64_t sub_1000033B0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000033F8(uint64_t a1)
{
  v2 = sub_100006310(&qword_1000140E8, type metadata accessor for FocusEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000034C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003584;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100003584()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003678(uint64_t a1)
{
  v2 = sub_100006310(&qword_100014140, type metadata accessor for FocusEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000036F4(uint64_t a1)
{
  v3 = type metadata accessor for FocusEntity();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v6 = (v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_10000CAD8();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = &_swiftEmptyArrayStorage;
  if (!v7)
  {
    return v8;
  }

  v60 = &_swiftEmptyArrayStorage;
  sub_100004AC0(0, v7 & ~(v7 >> 63), 0);
  v8 = v60;
  if (v51)
  {
    result = sub_10000CA98();
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    result = sub_10000CA88();
    v10 = *(a1 + 36);
  }

  v57 = result;
  v58 = v10;
  v59 = v51 != 0;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v13 = a1;
    }

    v45 = a1 + 56;
    v46 = v13;
    v43[1] = v1;
    v44 = a1 + 64;
    v47 = v7;
    v48 = a1;
    while (v12 < v7)
    {
      v15 = __OFADD__(v12, 1);
      v16 = v12 + 1;
      if (v15)
      {
        goto LABEL_38;
      }

      v55 = v57;
      v52 = v16;
      v53 = v58;
      v54 = v59;
      sub_100004D64(v57, v58, v59, a1);
      v18 = v17;
      v19 = [v17 modeIdentifier];
      v20 = sub_10000C9B8();
      v22 = v21;

      v23 = [v18 name];
      v24 = sub_10000C9B8();
      v26 = v25;

      v27 = v50;
      v28 = *(v50 + 24);
      v29 = sub_10000C8A8();
      (*(*(v29 - 8) + 56))(v6 + v28, 1, 1, v29);

      *v6 = v20;
      v6[1] = v22;
      v6[2] = v24;
      v6[3] = v26;
      v30 = (v6 + *(v27 + 28));
      *v30 = 0;
      v30[1] = 0;
      v60 = v8;
      v32 = v8[2];
      v31 = v8[3];
      if (v32 >= v31 >> 1)
      {
        sub_100004AC0(v31 > 1, v32 + 1, 1);
        v8 = v60;
      }

      v8[2] = v32 + 1;
      sub_100005504(v6, v8 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v32);
      if (v51)
      {
        v7 = v47;
        a1 = v48;
        result = v55;
        if (!v54)
        {
          goto LABEL_43;
        }

        if (sub_10000CAA8())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_100002208(&qword_100014258, &qword_10000D7F0);
        v14 = sub_10000CA08();
        sub_10000CAF8();
        result = v14(v56, 0);
      }

      else
      {
        v7 = v47;
        a1 = v48;
        result = v55;
        if (v54)
        {
          goto LABEL_44;
        }

        if ((v55 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v33 = 1 << *(v48 + 32);
        if (v55 >= v33)
        {
          goto LABEL_39;
        }

        v34 = v55 >> 6;
        v35 = *(v45 + 8 * (v55 >> 6));
        if (((v35 >> v55) & 1) == 0)
        {
          goto LABEL_40;
        }

        if (*(v48 + 36) != v53)
        {
          goto LABEL_41;
        }

        v36 = v35 & (-2 << (v55 & 0x3F));
        if (v36)
        {
          v33 = __clz(__rbit64(v36)) | v55 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v37 = v34 << 6;
          v38 = v34 + 1;
          v39 = (v44 + 8 * v34);
          while (v38 < (v33 + 63) >> 6)
          {
            v41 = *v39++;
            v40 = v41;
            v37 += 64;
            ++v38;
            if (v41)
            {
              result = sub_100005568(v55, v53, 0);
              v33 = __clz(__rbit64(v40)) + v37;
              goto LABEL_34;
            }
          }

          result = sub_100005568(v55, v53, 0);
        }

LABEL_34:
        v42 = *(a1 + 36);
        v57 = v33;
        v58 = v42;
        v59 = 0;
      }

      v12 = v52;
      if (v52 == v7)
      {
        sub_100005568(v57, v58, v59);
        return v8;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_100003B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10000635C;

  return (sub_100005574)(a2, a3);
}

uint64_t sub_100003C10(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000635C;

  return sub_100004F64();
}

unint64_t sub_100003CBC()
{
  result = qword_100014160;
  if (!qword_100014160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014160);
  }

  return result;
}

unint64_t sub_100003D14()
{
  result = qword_100014168;
  if (!qword_100014168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014168);
  }

  return result;
}

uint64_t sub_100003D68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000637C;

  return sub_100005B40(a1);
}

uint64_t sub_100003E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003ED0;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100003ED0(uint64_t a1)
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

unint64_t sub_100003FD4()
{
  result = qword_100014170;
  if (!qword_100014170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014170);
  }

  return result;
}

unint64_t sub_100004028()
{
  result = qword_100014178;
  if (!qword_100014178)
  {
    sub_1000033B0(&qword_100014180, qword_10000D618);
    sub_100006310(&qword_100014138, type metadata accessor for FocusEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014178);
  }

  return result;
}

uint64_t sub_1000040DC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100003064();
  *v6 = v2;
  v6[1] = sub_100003584;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100004190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100006358;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100004248()
{
  result = qword_100014188;
  if (!qword_100014188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014188);
  }

  return result;
}

uint64_t sub_1000042A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100004344;

  return sub_100004F64();
}

uint64_t sub_100004344(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_10000448C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002208(&qword_1000140D8, &qword_10000D278);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000455C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002208(&qword_1000140D8, &qword_10000D278);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000460C()
{
  sub_1000046A0();
  if (v0 <= 0x3F)
  {
    sub_1000046F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000046A0()
{
  if (!qword_1000141F8)
  {
    sub_10000C8A8();
    v0 = sub_10000CA68();
    if (!v1)
    {
      atomic_store(v0, &qword_1000141F8);
    }
  }
}

void sub_1000046F8()
{
  if (!qword_100014200)
  {
    v0 = sub_10000CA68();
    if (!v1)
    {
      atomic_store(v0, &qword_100014200);
    }
  }
}

size_t sub_100004748(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100002208(&qword_100014248, &unk_10000D7E0);
  v10 = *(type metadata accessor for FocusEntity() - 8);
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
  v15 = *(type metadata accessor for FocusEntity() - 8);
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

void sub_100004920(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100004994(uint64_t result)
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
  v7 = *v1;
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
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_100004748(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for FocusEntity();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

size_t sub_100004AC0(size_t a1, int64_t a2, char a3)
{
  result = sub_100004AE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100004AE0(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100002208(&qword_100014248, &unk_10000D7E0);
  v10 = *(type metadata accessor for FocusEntity() - 8);
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
  v15 = *(type metadata accessor for FocusEntity() - 8);
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

uint64_t sub_100004CB8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_100004D64(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_10000CAE8();
      sub_1000054B4();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000054B4();
    if (sub_10000CAB8() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_10000CAC8();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_10000CA48(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_10000CA58();

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

uint64_t sub_100004F64()
{

  return _swift_task_switch(sub_100004FF0, 0, 0);
}

uint64_t sub_100004FF0()
{
  v1 = sub_10000C998();
  v2 = [objc_opt_self() serviceForClientIdentifier:v1];

  *(v0 + 16) = 0;
  v3 = [v2 availableModesWithError:v0 + 16];
  v4 = *(v0 + 16);
  sub_1000054B4();
  sub_100006310(&qword_100014240, sub_1000054B4);
  v5 = sub_10000C9F8();
  v6 = v4;

  if (v6)
  {

    if (qword_100014080 != -1)
    {
      swift_once();
    }

    v7 = sub_10000C918();
    sub_10000233C(v7, qword_100014340);
    v8 = sub_10000CA28();
    v9 = v6;
    v10 = sub_10000C8F8();

    if (os_log_type_enabled(v10, v8))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v9;
      *v12 = v4;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, v8, "Error querying all available modes: %@", v11, 0xCu);
      sub_1000062B0(v12, &qword_100014250, &qword_10000DA90);
    }

    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v28 = sub_1000036F4(v5);

    sub_100002208(&qword_100014248, &unk_10000D7E0);
    v16 = (type metadata accessor for FocusEntity() - 8);
    v17 = *(*v16 + 72);
    v18 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10000D2A0;
    v20 = (v19 + v18);
    v21 = v16[8];
    v22 = sub_10000C8A8();
    v23 = *(*(v22 - 8) + 56);
    v23(&v20[v21], 1, 1, v22);
    *v20 = 0x7375636F46;
    *(v20 + 1) = 0xE500000000000000;
    *(v20 + 2) = 0x7375636F46;
    *(v20 + 3) = 0xE500000000000000;
    v24 = &v20[v16[9]];
    *v24 = 0xD00000000000001BLL;
    *(v24 + 1) = 0x800000010000DC00;
    v25 = &v20[v17];
    v23(&v25[v16[8]], 1, 1, v22);
    strcpy(v25, "Focus Status");
    v25[13] = 0;
    *(v25 + 7) = -5120;
    strcpy(v25 + 16, "Focus Status");
    v25[29] = 0;
    *(v25 + 15) = -5120;
    v26 = &v25[v16[9]];
    *v26 = 0xD000000000000027;
    *(v26 + 1) = 0x800000010000DC20;
    sub_100004994(v19);

    v27 = *(v0 + 8);

    return v27(v28);
  }
}

unint64_t sub_1000054B4()
{
  result = qword_100014238;
  if (!qword_100014238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014238);
  }

  return result;
}

uint64_t sub_100005504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005568(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100005574(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(type metadata accessor for FocusEntity() - 8);
  v2[8] = v3;
  v4 = *(v3 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10000563C, 0, 0);
}

uint64_t sub_10000563C()
{
  v12 = v0;
  if (qword_100014080 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_10000C918();
  sub_10000233C(v2, qword_100014340);

  v3 = sub_10000C8F8();
  v4 = sub_10000CA38();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_10000B360(v6, v5, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "Focus string query for: %{public}s", v7, 0xCu);
    sub_1000061A0(v8);
  }

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_100005808;

  return sub_100004F64();
}

uint64_t sub_100005808(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {
    v7 = *(v3 + 72);
    v6 = *(v3 + 80);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_100005960, 0, 0);
  }
}

void sub_100005960()
{
  v1 = v0[12];
  v20 = *(v1 + 16);
  if (v20)
  {
    v2 = 0;
    v3 = v0[10];
    v4 = v0[8];
    v19 = v0[12];
    while (v2 < *(v1 + 16))
    {
      v6 = v0[6];
      v5 = v0[7];
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_1000023D8(v0[12] + v7 + v8 * v2, v0[10]);
      v9 = *(v3 + 24);
      v0[2] = *(v3 + 16);
      v0[3] = v9;
      v0[4] = v6;
      v0[5] = v5;
      sub_1000061EC();
      v10 = sub_10000CA78();
      v11 = v0[10];
      if (v10)
      {
        sub_100005504(v11, v0[9]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100004AC0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_100004AC0(v12 > 1, v13 + 1, 1);
        }

        v14 = v0[9];
        _swiftEmptyArrayStorage[2] = v13 + 1;
        sub_100005504(v14, _swiftEmptyArrayStorage + v7 + v13 * v8);
        v1 = v19;
      }

      else
      {
        sub_10000243C(v11);
      }

      if (v20 == ++v2)
      {
        v15 = v0[12];
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v17 = v0[9];
    v16 = v0[10];

    v18 = v0[1];

    v18(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100005B40(uint64_t a1)
{
  v1[4] = a1;
  v2 = *(type metadata accessor for FocusEntity() - 8);
  v1[5] = v2;
  v3 = *(v2 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100005C08, 0, 0);
}

uint64_t sub_100005C08()
{
  v14 = v0;
  if (qword_100014080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_10000C918();
  sub_10000233C(v2, qword_100014340);

  v3 = sub_10000C8F8();
  v4 = sub_10000CA38();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_10000C9D8();
    v10 = sub_10000B360(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Focus entities query for: %{public}s", v6, 0xCu);
    sub_1000061A0(v7);
  }

  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_100005DEC;

  return sub_100004F64();
}

uint64_t sub_100005DEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
    v7 = v3[6];
    v6 = v3[7];

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_100005F44, 0, 0);
  }
}

void sub_100005F44()
{
  v1 = v0[9];
  v20 = *(v1 + 16);
  if (v20)
  {
    v2 = 0;
    v19 = v0[7];
    v3 = v0[5];
    v4 = v0[10];
    while (v2 < *(v1 + 16))
    {
      v5 = v0[7];
      v6 = v0[4];
      v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v8 = *(v3 + 72);
      sub_1000023D8(v0[9] + v7 + v8 * v2, v5);
      v9 = *(v19 + 8);
      v0[2] = *v5;
      v0[3] = v9;
      v10 = swift_task_alloc();
      *(v10 + 16) = v0 + 2;
      LOBYTE(v6) = sub_100004CB8(sub_100006148, v10, v6);

      v11 = v0[7];
      if (v6)
      {
        sub_100005504(v11, v0[6]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100004AC0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_100004AC0(v12 > 1, v13 + 1, 1);
        }

        v14 = v0[6];
        _swiftEmptyArrayStorage[2] = v13 + 1;
        sub_100005504(v14, _swiftEmptyArrayStorage + v7 + v13 * v8);
      }

      else
      {
        sub_10000243C(v11);
      }

      if (v20 == ++v2)
      {
        v15 = v0[9];
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v17 = v0[6];
    v16 = v0[7];

    v18 = v0[1];

    v18(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100006148(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10000CB28() & 1;
  }
}

uint64_t sub_1000061A0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000061EC()
{
  result = qword_100014260;
  if (!qword_100014260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014260);
  }

  return result;
}

uint64_t sub_100006240(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002208(&qword_1000140D8, &qword_10000D278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000062B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002208(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006310(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006380(uint64_t a1)
{
  v2 = sub_1000064D0();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100006428();
  sub_10000C8E8();
  return 0;
}

unint64_t sub_100006428()
{
  result = qword_100014280;
  if (!qword_100014280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014280);
  }

  return result;
}

unint64_t sub_1000064D0()
{
  result = qword_100014288;
  if (!qword_100014288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014288);
  }

  return result;
}

uint64_t sub_100006534()
{
  v0 = sub_10000C918();
  sub_100002374(v0, qword_100014340);
  sub_10000233C(v0, qword_100014340);
  return sub_10000C908();
}

unint64_t sub_1000065B4()
{
  result = qword_100014298;
  if (!qword_100014298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014298);
  }

  return result;
}

unint64_t sub_10000660C()
{
  result = qword_1000142A0;
  if (!qword_1000142A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142A0);
  }

  return result;
}

unint64_t sub_1000066E4()
{
  result = qword_1000142A8;
  if (!qword_1000142A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142A8);
  }

  return result;
}

uint64_t sub_100006738()
{
  v0 = sub_10000C898();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C8D8();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10000C988();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10000C8A8();
  sub_100002374(v9, qword_100014358);
  sub_10000233C(v9, qword_100014358);
  sub_10000C928();
  sub_10000C8C8();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10000C8B8();
}

uint64_t sub_100006938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_10000C678();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = *(*(sub_10000C978() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = type metadata accessor for FocusEntity();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v11 = sub_10000C898();
  v3[21] = v11;
  v12 = *(v11 - 8);
  v3[22] = v12;
  v13 = *(v12 + 64) + 15;
  v3[23] = swift_task_alloc();
  v14 = *(*(sub_10000C8D8() - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v15 = *(*(sub_10000C988() - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v16 = *(*(sub_10000C8A8() - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v17 = *(*(sub_100002208(&qword_1000140C8, &qword_10000D268) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v18 = *(*(sub_100002208(&qword_1000140D0, &qword_10000D270) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_100006CD8, 0, 0);
}

uint64_t sub_100006CD8()
{
  v26 = v0;
  if (qword_100014080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = sub_10000C918();
  *(v0 + 320) = sub_10000233C(v3, qword_100014340);
  v4 = sub_10000CA18();

  v5 = sub_10000C8F8();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = *(v0 + 312);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 67109378;
    sub_10000C6B8();
    *(v11 + 4) = *(v0 + 457);

    *(v11 + 8) = 2080;
    sub_10000C6B8();
    v13 = (*(v8 + 48))(v6, 1, v7);
    v14 = *(v0 + 312);
    if (v13)
    {
      v15 = 0xE500000000000000;
      v16 = 0x3E6C696E3CLL;
    }

    else
    {
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
    }

    sub_1000062B0(v14, &qword_1000140D0, &qword_10000D270);
    v19 = sub_10000B360(v16, v15, &v25);

    *(v11 + 10) = v19;
    _os_log_impl(&_mh_execute_header, v5, v4, "Receive Perform with enable: %{BOOL}d on focus name: %s", v11, 0x12u);
    sub_1000061A0(v12);
  }

  else
  {
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
  }

  v20 = sub_10000C998();
  v21 = [objc_opt_self() serviceForClientIdentifier:v20];
  *(v0 + 328) = v21;

  v22 = swift_task_alloc();
  *(v0 + 336) = v22;
  *v22 = v0;
  v22[1] = sub_100006FDC;
  v23 = *(v0 + 304);

  return sub_100009F58(v23, v21);
}

uint64_t sub_100006FDC()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_100009938;
  }

  else
  {
    v3 = sub_10000711C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000711C()
{
  v203 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 40);
  sub_10000C6B8();
  v3 = (v1 + 48);
  v4 = *(v0 + 88);
  v5 = *(v0 + 48);
  if (*(v0 + 456) == 1)
  {
    v6 = *(v0 + 296);
    sub_10000C6B8();
    v7 = *v3;
    *(v0 + 352) = *v3;
    *(v0 + 360) = v3 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v8 = v7(v6, 1, v4);
    sub_1000062B0(v6, &qword_1000140D0, &qword_10000D270);
    if (v8 == 1)
    {
      v9 = *(v0 + 48);
      *(v0 + 368) = sub_10000C6D8();
      v10 = swift_task_alloc();
      *(v0 + 376) = v10;
      *v10 = v0;
      v10[1] = sub_1000080E0;

      return sub_100004F64();
    }

    v17 = *(v0 + 352);
    v16 = *(v0 + 360);
    v18 = *(v0 + 272);
    v19 = *(v0 + 88);
    v20 = *(v0 + 48);
    sub_10000C6B8();
    v21 = v17(v18, 1, v19);
    v22 = *(v0 + 304);
    v23 = *(v0 + 272);
    if (v21 == 1)
    {
      v24 = *(v0 + 328);
      sub_1000062B0(v23, &qword_1000140D0, &qword_10000D270);
      sub_10000C28C();
      swift_allocError();
      swift_willThrow();

      sub_1000062B0(v22, &qword_1000140D0, &qword_10000D270);
LABEL_40:
      v139 = *(v0 + 304);
      v138 = *(v0 + 312);
      v140 = *(v0 + 288);
      v141 = *(v0 + 296);
      v143 = *(v0 + 272);
      v142 = *(v0 + 280);
      v145 = *(v0 + 256);
      v144 = *(v0 + 264);
      v147 = *(v0 + 240);
      v146 = *(v0 + 248);
      v163 = *(v0 + 232);
      v165 = *(v0 + 224);
      v167 = *(v0 + 216);
      v169 = *(v0 + 208);
      v171 = *(v0 + 200);
      v173 = *(v0 + 192);
      v175 = *(v0 + 184);
      v177 = *(v0 + 160);
      v179 = *(v0 + 152);
      v181 = *(v0 + 144);
      v183 = *(v0 + 136);
      v185 = *(v0 + 128);
      v187 = *(v0 + 120);
      v189 = *(v0 + 112);
      v192 = *(v0 + 104);
      v196 = *(v0 + 80);
      v201 = *(v0 + 72);

      v136 = *(v0 + 8);
      goto LABEL_41;
    }

    v42 = *(v0 + 352);
    v41 = *(v0 + 360);
    v43 = *(v0 + 264);
    v44 = *(v0 + 88);
    sub_100005504(v23, *(v0 + 160));
    sub_10000C21C(v22, v43);
    v45 = v42(v43, 1, v44);
    v46 = *(v0 + 264);
    if (v45 == 1)
    {
      sub_1000062B0(v46, &qword_1000140D0, &qword_10000D270);
LABEL_18:
      v47 = *(v0 + 320);
      v48 = *(v0 + 160);
      v49 = *(v0 + 136);
      v50 = *(v0 + 144);
      v51 = [objc_opt_self() lifetimeUntilEndOfScheduleWithIdentifier:DNDDefaultScheduleIdentifier];
      v52 = *v48;
      v53 = v48[1];
      v54 = v51;
      v55 = sub_10000C998();
      v56 = sub_10000C998();
      v57 = [objc_opt_self() detailsWithIdentifier:v55 modeIdentifier:v56 lifetime:v54];
      v197 = v54;

      sub_1000023D8(v48, v50);
      sub_1000023D8(v48, v49);
      v58 = v57;
      v59 = sub_10000C8F8();
      v60 = sub_10000CA38();
      v61 = os_log_type_enabled(v59, v60);
      v62 = *(v0 + 136);
      v63 = *(v0 + 144);
      if (v61)
      {
        v64 = swift_slowAlloc();
        v202[0] = swift_slowAlloc();
        *v64 = 136446466;
        v66 = *(v63 + 16);
        v65 = *(v63 + 24);

        sub_10000243C(v63);
        v67 = sub_10000B360(v66, v65, v202);

        *(v64 + 4) = v67;
        *(v64 + 12) = 2082;
        v68 = *v62;
        v69 = v62[1];

        sub_10000243C(v62);
        v70 = sub_10000B360(v68, v69, v202);

        *(v64 + 14) = v70;
        _os_log_impl(&_mh_execute_header, v59, v60, "Activating mode: %{public}s (%{public}s)", v64, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000243C(v62);
        sub_10000243C(v63);
      }

      v115 = *(v0 + 328);
      *(v0 + 24) = 0;
      v116 = [v115 activateModeWithDetails:v58 error:v0 + 24];

      v117 = *(v0 + 24);
      v118 = *(v0 + 328);
      v119 = *(v0 + 304);
      v120 = *(v0 + 160);
      if (v116)
      {
        v122 = *(v0 + 80);
        v121 = *(v0 + 88);
        v124 = *(v0 + 64);
        v123 = *(v0 + 72);
        v194 = *(v0 + 56);
        v190 = *(v0 + 32);
        v125 = v117;
        sub_10000C968();
        v209._countAndFlagsBits = 539773775;
        v209._object = 0xE400000000000000;
        sub_10000C958(v209);
        sub_1000022F8(&qword_100014158);
        sub_10000C948();
        v210._countAndFlagsBits = 0x69207375636F4620;
        v210._object = 0xED00002E6E6F2073;
        sub_10000C958(v210);
        sub_10000C668();
        sub_10000C698();

        (*(v124 + 8))(v123, v194);
        sub_1000062B0(v119, &qword_1000140D0, &qword_10000D270);
        v99 = v120;
        goto LABEL_36;
      }

      v137 = v117;
      sub_10000C878();

      swift_willThrow();
      sub_1000062B0(v119, &qword_1000140D0, &qword_10000D270);
      v114 = v120;
LABEL_39:
      sub_10000243C(v114);
      goto LABEL_40;
    }

    v89 = *(v0 + 152);
    v88 = *(v0 + 160);
    sub_100005504(v46, v89);
    if ((*v89 != *v88 || v89[1] != v88[1]) && (sub_10000CB28() & 1) == 0)
    {
      sub_10000243C(*(v0 + 152));
      goto LABEL_18;
    }

    v90 = *(v0 + 328);
    v91 = *(v0 + 304);
    v92 = *(v0 + 160);
    v198 = *(v0 + 152);
    v93 = *(v0 + 80);
    v94 = *(v0 + 88);
    v95 = *(v0 + 64);
    v96 = *(v0 + 72);
    v97 = *(v0 + 56);
    v98 = *(v0 + 32);
    sub_10000C968();
    v205._countAndFlagsBits = 0;
    v205._object = 0xE000000000000000;
    sub_10000C958(v205);
    sub_1000022F8(&qword_100014158);
    sub_10000C948();
    v206._object = 0x800000010000DF10;
    v206._countAndFlagsBits = 0xD000000000000015;
    sub_10000C958(v206);
    sub_10000C668();
    sub_10000C698();

    (*(v95 + 8))(v96, v97);
    sub_1000062B0(v91, &qword_1000140D0, &qword_10000D270);
    sub_10000243C(v198);
    v99 = v92;
LABEL_36:
    sub_10000243C(v99);
    goto LABEL_37;
  }

  v12 = *(v0 + 248);
  sub_10000C6B8();
  v13 = *v3;
  if ((*v3)(v12, 1, v4) == 1)
  {
    v14 = *(v0 + 248);
    v15 = *(v0 + 88);
    sub_10000C21C(*(v0 + 304), *(v0 + 256));
    if (v13(v14, 1, v15) != 1)
    {
      sub_1000062B0(*(v0 + 248), &qword_1000140D0, &qword_10000D270);
    }
  }

  else
  {
    v25 = *(v0 + 256);
    v26 = *(v0 + 88);
    v27 = *(v0 + 96);
    sub_100005504(*(v0 + 248), v25);
    (*(v27 + 56))(v25, 0, 1, v26);
  }

  v29 = (v0 + 240);
  v28 = *(v0 + 240);
  v30 = *(v0 + 88);
  sub_10000C21C(*(v0 + 256), v28);
  if (v13(v28, 1, v30) == 1)
  {
LABEL_15:
    v34 = *(v0 + 328);
    v35 = *(v0 + 304);
    v36 = *(v0 + 256);
    v38 = *(v0 + 64);
    v37 = *(v0 + 72);
    v39 = *(v0 + 56);
    v40 = *(v0 + 32);
    sub_1000062B0(*v29, &qword_1000140D0, &qword_10000D270);
    sub_10000C658();
    sub_10000C698();

    (*(v38 + 8))(v37, v39);
    sub_1000062B0(v36, &qword_1000140D0, &qword_10000D270);
    sub_1000062B0(v35, &qword_1000140D0, &qword_10000D270);
LABEL_37:
    v127 = *(v0 + 304);
    v126 = *(v0 + 312);
    v128 = *(v0 + 288);
    v129 = *(v0 + 296);
    v131 = *(v0 + 272);
    v130 = *(v0 + 280);
    v133 = *(v0 + 256);
    v132 = *(v0 + 264);
    v135 = *(v0 + 240);
    v134 = *(v0 + 248);
    v162 = *(v0 + 232);
    v164 = *(v0 + 224);
    v166 = *(v0 + 216);
    v168 = *(v0 + 208);
    v170 = *(v0 + 200);
    v172 = *(v0 + 192);
    v174 = *(v0 + 184);
    v176 = *(v0 + 160);
    v178 = *(v0 + 152);
    v180 = *(v0 + 144);
    v182 = *(v0 + 136);
    v184 = *(v0 + 128);
    v186 = *(v0 + 120);
    v188 = *(v0 + 112);
    v191 = *(v0 + 104);
    v195 = *(v0 + 80);
    v200 = *(v0 + 72);

    v136 = *(v0 + 8);
LABEL_41:

    return v136();
  }

  v29 = (v0 + 232);
  v31 = *(v0 + 232);
  v32 = *(v0 + 304);
  v33 = *(v0 + 88);
  sub_100005504(*(v0 + 240), *(v0 + 128));
  sub_10000C21C(v32, v31);
  if (v13(v31, 1, v33) == 1)
  {
    sub_10000243C(*(v0 + 128));
    goto LABEL_15;
  }

  v72 = *(v0 + 120);
  v71 = *(v0 + 128);
  sub_100005504(*(v0 + 232), v72);
  if (*v72 == *v71 && v72[1] == v71[1] || (sub_10000CB28() & 1) != 0)
  {
    v73 = *(v0 + 320);
    v74 = *(v0 + 120);
    v75 = *(v0 + 104);
    sub_1000023D8(v74, *(v0 + 112));
    sub_1000023D8(v74, v75);
    v76 = sub_10000C8F8();
    v77 = sub_10000CA38();
    v78 = os_log_type_enabled(v76, v77);
    v79 = *(v0 + 104);
    v80 = *(v0 + 112);
    if (v78)
    {
      v81 = swift_slowAlloc();
      v202[0] = swift_slowAlloc();
      *v81 = 136446466;
      v82 = *(v80 + 16);
      v83 = *(v80 + 24);

      sub_10000243C(v80);
      v84 = sub_10000B360(v82, v83, v202);

      *(v81 + 4) = v84;
      *(v81 + 12) = 2082;
      v85 = *v79;
      v86 = v79[1];

      sub_10000243C(v79);
      v87 = sub_10000B360(v85, v86, v202);

      *(v81 + 14) = v87;
      _os_log_impl(&_mh_execute_header, v76, v77, "Deactivating mode: %{public}s (%{public}s)", v81, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000243C(v79);
      sub_10000243C(v80);
    }

    v100 = *(v0 + 328);
    *(v0 + 16) = 0;
    v101 = [v100 activateModeWithDetails:0 error:v0 + 16];
    v102 = *(v0 + 16);
    v103 = *(v0 + 328);
    v104 = *(v0 + 304);
    v105 = *(v0 + 256);
    v107 = *(v0 + 120);
    v106 = *(v0 + 128);
    if (!v101)
    {
      v113 = v102;
      sub_10000C878();

      swift_willThrow();
      sub_1000062B0(v105, &qword_1000140D0, &qword_10000D270);
      sub_1000062B0(v104, &qword_1000140D0, &qword_10000D270);
      sub_10000243C(v107);
      v114 = v106;
      goto LABEL_39;
    }

    v109 = *(v0 + 72);
    v108 = *(v0 + 80);
    v199 = *(v0 + 128);
    v110 = *(v0 + 64);
    v193 = *(v0 + 56);
    v111 = *(v0 + 32);
    v112 = v102;
    sub_10000C968();
    v207._countAndFlagsBits = 539773775;
    v207._object = 0xE400000000000000;
    sub_10000C958(v207);
    sub_10000C938(v107[1]);
    v208._countAndFlagsBits = 0x69207375636F4620;
    v208._object = 0xEE002E66666F2073;
    sub_10000C958(v208);
    sub_10000C668();
    sub_10000C698();

    (*(v110 + 8))(v109, v193);
    sub_1000062B0(v105, &qword_1000140D0, &qword_10000D270);
    sub_1000062B0(v104, &qword_1000140D0, &qword_10000D270);
    sub_10000243C(v107);
    v99 = v199;
    goto LABEL_36;
  }

  v148 = *(v0 + 216);
  v150 = *(v0 + 120);
  v149 = *(v0 + 128);
  v151 = *(v0 + 56);
  v152 = *(v0 + 64);
  v153 = *(v0 + 48);
  *(v0 + 416) = sub_10000C6D8();
  v154 = *(v149 + 16);
  v155 = *(v149 + 24);
  v156 = *(v150 + 16);
  *(v0 + 424) = v156;
  v157 = *(v150 + 24);
  *(v0 + 432) = v157;
  sub_10000AB2C(v154, v155, v156, v157);
  (*(v152 + 56))(v148, 0, 1, v151);
  v158 = async function pointer to IntentParameter.requestConfirmation(for:dialog:)[1];
  v159 = swift_task_alloc();
  *(v0 + 440) = v159;
  *v159 = v0;
  v159[1] = sub_1000090BC;
  v160 = *(v0 + 216);
  v161 = *(v0 + 120);

  return IntentParameter.requestConfirmation(for:dialog:)(v161, v160);
}

uint64_t sub_1000080E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v8 = *v2;
  v3[48] = a1;
  v3[49] = v1;

  if (v1)
  {
    v5 = v3[46];

    v6 = sub_100008598;
  }

  else
  {
    v6 = sub_100008230;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100008230()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[7];
  v9 = v0[8];
  sub_10000C928();
  sub_10000C8C8();
  (*(v7 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_10000C8B8();
  sub_10000C688();
  (*(v9 + 56))(v1, 0, 1, v8);
  v10 = async function pointer to IntentParameter.requestDisambiguation(among:dialog:)[1];
  v11 = swift_task_alloc();
  v0[50] = v11;
  *v11 = v0;
  v11[1] = sub_1000083E8;
  v12 = v0[48];
  v13 = v0[46];
  v14 = v0[36];
  v15 = v0[28];

  return IntentParameter.requestDisambiguation(among:dialog:)(v14, v12, v15);
}

uint64_t sub_1000083E8()
{
  v2 = *v1;
  v3 = (*v1)[50];
  v4 = *v1;
  (*v1)[51] = v0;

  v5 = v2[48];
  v6 = v2[46];
  sub_1000062B0(v2[28], &qword_1000140C8, &qword_10000D268);

  if (v0)
  {
    v7 = sub_100009B20;
  }

  else
  {
    v7 = sub_10000879C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100008598()
{
  v1 = *(v0 + 304);

  sub_1000062B0(v1, &qword_1000140D0, &qword_10000D270);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v11 = *(v0 + 240);
  v10 = *(v0 + 248);
  v14 = *(v0 + 392);
  v15 = *(v0 + 232);
  v16 = *(v0 + 224);
  v17 = *(v0 + 216);
  v18 = *(v0 + 208);
  v19 = *(v0 + 200);
  v20 = *(v0 + 192);
  v21 = *(v0 + 184);
  v22 = *(v0 + 160);
  v23 = *(v0 + 152);
  v24 = *(v0 + 144);
  v25 = *(v0 + 136);
  v26 = *(v0 + 128);
  v27 = *(v0 + 120);
  v28 = *(v0 + 112);
  v29 = *(v0 + 104);
  v30 = *(v0 + 80);
  v31 = *(v0 + 72);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10000879C()
{
  v126 = v0;
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[6];
  (*(v0[12] + 56))(v1, 0, 1, v0[11]);
  sub_10000C21C(v1, v2);
  sub_10000C6C8();
  sub_1000062B0(v1, &qword_1000140D0, &qword_10000D270);
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[34];
  v7 = v0[11];
  v8 = v0[6];
  sub_10000C6B8();
  v9 = v5(v6, 1, v7);
  v10 = v0[38];
  v11 = v0[34];
  if (v9 != 1)
  {
    v14 = v0[44];
    v13 = v0[45];
    v15 = v0[33];
    v16 = v0[11];
    sub_100005504(v11, v0[20]);
    sub_10000C21C(v10, v15);
    v17 = v14(v15, 1, v16);
    v18 = v0[33];
    if (v17 == 1)
    {
      sub_1000062B0(v18, &qword_1000140D0, &qword_10000D270);
    }

    else
    {
      v44 = v0[19];
      v43 = v0[20];
      sub_100005504(v18, v44);
      if (*v44 == *v43 && v44[1] == v43[1] || (sub_10000CB28() & 1) != 0)
      {
        v45 = v0[41];
        v46 = v0[38];
        v47 = v0[20];
        v122 = v0[19];
        v48 = v0[10];
        v49 = v0[11];
        v50 = v0[8];
        v51 = v0[9];
        v52 = v0[7];
        v53 = v0[4];
        sub_10000C968();
        v128._countAndFlagsBits = 0;
        v128._object = 0xE000000000000000;
        sub_10000C958(v128);
        sub_1000022F8(&qword_100014158);
        sub_10000C948();
        v129._object = 0x800000010000DF10;
        v129._countAndFlagsBits = 0xD000000000000015;
        sub_10000C958(v129);
        sub_10000C668();
        sub_10000C698();

        (*(v50 + 8))(v51, v52);
        sub_1000062B0(v46, &qword_1000140D0, &qword_10000D270);
        sub_10000243C(v122);
        goto LABEL_14;
      }

      sub_10000243C(v0[19]);
    }

    v19 = v0[40];
    v20 = v0[20];
    v21 = v0[17];
    v22 = v0[18];
    v23 = [objc_opt_self() lifetimeUntilEndOfScheduleWithIdentifier:DNDDefaultScheduleIdentifier];
    v24 = *v20;
    v25 = v20[1];
    v26 = v23;
    v27 = sub_10000C998();
    v28 = sub_10000C998();
    v29 = [objc_opt_self() detailsWithIdentifier:v27 modeIdentifier:v28 lifetime:v26];
    v121 = v26;

    sub_1000023D8(v20, v22);
    sub_1000023D8(v20, v21);
    v30 = v29;
    v31 = sub_10000C8F8();
    v32 = sub_10000CA38();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[17];
    v35 = v0[18];
    if (v33)
    {
      v36 = swift_slowAlloc();
      v125[0] = swift_slowAlloc();
      *v36 = 136446466;
      v38 = *(v35 + 16);
      v37 = *(v35 + 24);

      sub_10000243C(v35);
      v39 = sub_10000B360(v38, v37, v125);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2082;
      v40 = *v34;
      v41 = v34[1];

      sub_10000243C(v34);
      v42 = sub_10000B360(v40, v41, v125);

      *(v36 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v31, v32, "Activating mode: %{public}s (%{public}s)", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000243C(v34);
      sub_10000243C(v35);
    }

    v54 = v0[41];
    v0[3] = 0;
    v55 = [v54 activateModeWithDetails:v30 error:v0 + 3];

    v56 = v0[3];
    v57 = v0[41];
    v58 = v0[38];
    v47 = v0[20];
    if (!v55)
    {
      v75 = v56;
      sub_10000C878();

      swift_willThrow();
      sub_1000062B0(v58, &qword_1000140D0, &qword_10000D270);
      sub_10000243C(v47);
      goto LABEL_16;
    }

    v60 = v0[10];
    v59 = v0[11];
    v62 = v0[8];
    v61 = v0[9];
    v118 = v0[7];
    v115 = v0[4];
    v63 = v56;
    sub_10000C968();
    v130._countAndFlagsBits = 539773775;
    v130._object = 0xE400000000000000;
    sub_10000C958(v130);
    sub_1000022F8(&qword_100014158);
    sub_10000C948();
    v131._countAndFlagsBits = 0x69207375636F4620;
    v131._object = 0xED00002E6E6F2073;
    sub_10000C958(v131);
    sub_10000C668();
    sub_10000C698();

    (*(v62 + 8))(v61, v118);
    sub_1000062B0(v58, &qword_1000140D0, &qword_10000D270);
LABEL_14:
    sub_10000243C(v47);
    v65 = v0[38];
    v64 = v0[39];
    v66 = v0[36];
    v67 = v0[37];
    v69 = v0[34];
    v68 = v0[35];
    v71 = v0[32];
    v70 = v0[33];
    v73 = v0[30];
    v72 = v0[31];
    v87 = v0[29];
    v89 = v0[28];
    v91 = v0[27];
    v93 = v0[26];
    v95 = v0[25];
    v97 = v0[24];
    v99 = v0[23];
    v101 = v0[20];
    v103 = v0[19];
    v105 = v0[18];
    v107 = v0[17];
    v109 = v0[16];
    v111 = v0[15];
    v113 = v0[14];
    v116 = v0[13];
    v119 = v0[10];
    v123 = v0[9];

    v74 = v0[1];
    goto LABEL_17;
  }

  v12 = v0[41];
  sub_1000062B0(v11, &qword_1000140D0, &qword_10000D270);
  sub_10000C28C();
  swift_allocError();
  swift_willThrow();

  sub_1000062B0(v10, &qword_1000140D0, &qword_10000D270);
LABEL_16:
  v77 = v0[38];
  v76 = v0[39];
  v78 = v0[36];
  v79 = v0[37];
  v81 = v0[34];
  v80 = v0[35];
  v83 = v0[32];
  v82 = v0[33];
  v85 = v0[30];
  v84 = v0[31];
  v88 = v0[29];
  v90 = v0[28];
  v92 = v0[27];
  v94 = v0[26];
  v96 = v0[25];
  v98 = v0[24];
  v100 = v0[23];
  v102 = v0[20];
  v104 = v0[19];
  v106 = v0[18];
  v108 = v0[17];
  v110 = v0[16];
  v112 = v0[15];
  v114 = v0[14];
  v117 = v0[13];
  v120 = v0[10];
  v124 = v0[9];

  v74 = v0[1];
LABEL_17:

  return v74();
}

uint64_t sub_1000090BC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(v4 + 448) = v1;

  v7 = *(v4 + 416);
  v8 = *(v4 + 216);
  if (v1)
  {
    sub_1000062B0(v8, &qword_1000140C8, &qword_10000D268);

    v9 = sub_100009D24;
  }

  else
  {
    *(v4 + 458) = a1 & 1;
    sub_1000062B0(v8, &qword_1000140C8, &qword_10000D268);

    v9 = sub_100009280;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100009280()
{
  v98 = v0;
  if ((*(v0 + 458) & 1) == 0)
  {
    v17 = *(v0 + 424);
    v16 = *(v0 + 432);
    v87 = *(v0 + 328);
    v18 = *(v0 + 304);
    v19 = *(v0 + 128);
    v90 = *(v0 + 120);
    v94 = *(v0 + 256);
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v23 = *(v0 + 56);
    v22 = *(v0 + 64);
    v24 = *(v0 + 32);
    sub_10000C968();
    v100._countAndFlagsBits = 539904847;
    v100._object = 0xE400000000000000;
    sub_10000C958(v100);
    v101._countAndFlagsBits = v17;
    v101._object = v16;
    sub_10000C938(v101);
    v102._object = 0x800000010000DEF0;
    v102._countAndFlagsBits = 0xD000000000000012;
    sub_10000C958(v102);
    sub_10000C668();
    sub_10000C698();

    (*(v22 + 8))(v21, v23);
    v25 = v90;
LABEL_8:
    sub_1000062B0(v94, &qword_1000140D0, &qword_10000D270);
    sub_1000062B0(v18, &qword_1000140D0, &qword_10000D270);
    sub_10000243C(v25);
    sub_10000243C(v19);
    v37 = *(v0 + 304);
    v36 = *(v0 + 312);
    v38 = *(v0 + 288);
    v39 = *(v0 + 296);
    v41 = *(v0 + 272);
    v40 = *(v0 + 280);
    v43 = *(v0 + 256);
    v42 = *(v0 + 264);
    v45 = *(v0 + 240);
    v44 = *(v0 + 248);
    v59 = *(v0 + 232);
    v61 = *(v0 + 224);
    v63 = *(v0 + 216);
    v65 = *(v0 + 208);
    v67 = *(v0 + 200);
    v69 = *(v0 + 192);
    v71 = *(v0 + 184);
    v73 = *(v0 + 160);
    v75 = *(v0 + 152);
    v77 = *(v0 + 144);
    v79 = *(v0 + 136);
    v81 = *(v0 + 128);
    v83 = *(v0 + 120);
    v85 = *(v0 + 112);
    v88 = *(v0 + 104);
    v92 = *(v0 + 80);
    v95 = *(v0 + 72);

    v46 = *(v0 + 8);
    goto LABEL_10;
  }

  v1 = *(v0 + 320);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_1000023D8(v2, *(v0 + 112));
  sub_1000023D8(v2, v3);
  v4 = sub_10000C8F8();
  v5 = sub_10000CA38();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  if (v6)
  {
    v9 = swift_slowAlloc();
    v97[0] = swift_slowAlloc();
    *v9 = 136446466;
    v10 = *(v8 + 16);
    v11 = *(v8 + 24);

    sub_10000243C(v8);
    v12 = sub_10000B360(v10, v11, v97);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2082;
    v13 = *v7;
    v14 = v7[1];

    sub_10000243C(v7);
    v15 = sub_10000B360(v13, v14, v97);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deactivating mode: %{public}s (%{public}s)", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000243C(v7);
    sub_10000243C(v8);
  }

  v26 = *(v0 + 328);
  *(v0 + 16) = 0;
  v27 = [v26 activateModeWithDetails:0 error:v0 + 16];
  v28 = *(v0 + 16);
  v29 = *(v0 + 328);
  v18 = *(v0 + 304);
  v30 = *(v0 + 256);
  v25 = *(v0 + 120);
  v19 = *(v0 + 128);
  if (v27)
  {
    v32 = *(v0 + 72);
    v31 = *(v0 + 80);
    v94 = *(v0 + 256);
    v33 = *(v0 + 64);
    v91 = *(v0 + 56);
    v34 = *(v0 + 32);
    v35 = v28;
    sub_10000C968();
    v103._countAndFlagsBits = 539773775;
    v103._object = 0xE400000000000000;
    sub_10000C958(v103);
    sub_10000C938(v25[1]);
    v104._countAndFlagsBits = 0x69207375636F4620;
    v104._object = 0xEE002E66666F2073;
    sub_10000C958(v104);
    sub_10000C668();
    sub_10000C698();

    (*(v33 + 8))(v32, v91);
    goto LABEL_8;
  }

  v47 = v28;
  sub_10000C878();

  swift_willThrow();
  sub_1000062B0(v30, &qword_1000140D0, &qword_10000D270);
  sub_1000062B0(v18, &qword_1000140D0, &qword_10000D270);
  sub_10000243C(v25);
  sub_10000243C(v19);
  v49 = *(v0 + 304);
  v48 = *(v0 + 312);
  v50 = *(v0 + 288);
  v51 = *(v0 + 296);
  v53 = *(v0 + 272);
  v52 = *(v0 + 280);
  v55 = *(v0 + 256);
  v54 = *(v0 + 264);
  v57 = *(v0 + 240);
  v56 = *(v0 + 248);
  v60 = *(v0 + 232);
  v62 = *(v0 + 224);
  v64 = *(v0 + 216);
  v66 = *(v0 + 208);
  v68 = *(v0 + 200);
  v70 = *(v0 + 192);
  v72 = *(v0 + 184);
  v74 = *(v0 + 160);
  v76 = *(v0 + 152);
  v78 = *(v0 + 144);
  v80 = *(v0 + 136);
  v82 = *(v0 + 128);
  v84 = *(v0 + 120);
  v86 = *(v0 + 112);
  v89 = *(v0 + 104);
  v93 = *(v0 + 80);
  v96 = *(v0 + 72);

  v46 = *(v0 + 8);
LABEL_10:

  return v46();
}

uint64_t sub_100009938()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);
  v13 = *(v0 + 344);
  v14 = *(v0 + 232);
  v15 = *(v0 + 224);
  v16 = *(v0 + 216);
  v17 = *(v0 + 208);
  v18 = *(v0 + 200);
  v19 = *(v0 + 192);
  v20 = *(v0 + 184);
  v21 = *(v0 + 160);
  v22 = *(v0 + 152);
  v23 = *(v0 + 144);
  v24 = *(v0 + 136);
  v25 = *(v0 + 128);
  v26 = *(v0 + 120);
  v27 = *(v0 + 112);
  v28 = *(v0 + 104);
  v29 = *(v0 + 80);
  v30 = *(v0 + 72);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100009B20()
{
  v1 = *(v0 + 304);

  sub_1000062B0(v1, &qword_1000140D0, &qword_10000D270);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v11 = *(v0 + 240);
  v10 = *(v0 + 248);
  v14 = *(v0 + 408);
  v15 = *(v0 + 232);
  v16 = *(v0 + 224);
  v17 = *(v0 + 216);
  v18 = *(v0 + 208);
  v19 = *(v0 + 200);
  v20 = *(v0 + 192);
  v21 = *(v0 + 184);
  v22 = *(v0 + 160);
  v23 = *(v0 + 152);
  v24 = *(v0 + 144);
  v25 = *(v0 + 136);
  v26 = *(v0 + 128);
  v27 = *(v0 + 120);
  v28 = *(v0 + 112);
  v29 = *(v0 + 104);
  v30 = *(v0 + 80);
  v31 = *(v0 + 72);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100009D24()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 256);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);

  sub_1000062B0(v2, &qword_1000140D0, &qword_10000D270);
  sub_1000062B0(v1, &qword_1000140D0, &qword_10000D270);
  sub_10000243C(v4);
  sub_10000243C(v3);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v8 = *(v0 + 288);
  v7 = *(v0 + 296);
  v10 = *(v0 + 272);
  v9 = *(v0 + 280);
  v12 = *(v0 + 256);
  v11 = *(v0 + 264);
  v14 = *(v0 + 240);
  v13 = *(v0 + 248);
  v17 = *(v0 + 448);
  v18 = *(v0 + 232);
  v19 = *(v0 + 224);
  v20 = *(v0 + 216);
  v21 = *(v0 + 208);
  v22 = *(v0 + 200);
  v23 = *(v0 + 192);
  v24 = *(v0 + 184);
  v25 = *(v0 + 160);
  v26 = *(v0 + 152);
  v27 = *(v0 + 144);
  v28 = *(v0 + 136);
  v29 = *(v0 + 128);
  v30 = *(v0 + 120);
  v31 = *(v0 + 112);
  v32 = *(v0 + 104);
  v33 = *(v0 + 80);
  v34 = *(v0 + 72);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100009F58(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(sub_100002208(&qword_1000140D0, &qword_10000D270) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_10000A020, 0, 0);
}

void sub_10000A020()
{
  v45 = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = type metadata accessor for FocusEntity();
  v0[6] = v3;
  v4 = *(v3 - 8);
  v0[7] = v4;
  v5 = *(v4 + 56);
  v0[8] = v5;
  v0[9] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v0[2] = 0;
  v6 = [v2 activeModeAssertionWithError:v0 + 2];
  v0[10] = v6;
  v7 = v0[2];
  if (v6)
  {
    v8 = v6;
    v9 = qword_100014080;
    v10 = v7;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_10000C918();
    sub_10000233C(v11, qword_100014340);
    v12 = sub_10000CA18();
    v13 = v8;
    v14 = sub_10000C8F8();

    if (os_log_type_enabled(v14, v12))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v44 = v16;
      *v15 = 136315138;
      v17 = [v13 debugDescription];
      v18 = sub_10000C9B8();
      v20 = v19;

      v21 = sub_10000B360(v18, v20, &v44);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v12, "modeAssertion: %s", v15, 0xCu);
      sub_1000061A0(v16);
    }

    sub_100002208(&qword_100014300, &qword_10000DA98);
    v22 = swift_allocObject();
    v0[11] = v22;
    *(v22 + 16) = xmmword_10000D900;
    v23 = [v13 details];
    v24 = [v23 modeIdentifier];

    if (v24)
    {
      v25 = sub_10000C9B8();
      v27 = v26;

      *(v22 + 32) = v25;
      *(v22 + 40) = v27;
      v28 = swift_task_alloc();
      v0[12] = v28;
      *v28 = v0;
      v28[1] = sub_10000A5F0;

      sub_100005B40(v22);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v29 = v7;
    sub_10000C878();

    swift_willThrow();
    v30 = sub_10000C868();
    if (qword_100014090 != -1)
    {
      swift_once();
    }

    v31 = qword_100014290;
    sub_10000C390();
    v32 = v31;
    v33 = sub_10000CA58();

    if (v33)
    {

      v34 = v0[5];

      v35 = v0[1];
    }

    else
    {
      if (qword_100014080 != -1)
      {
        swift_once();
      }

      v36 = sub_10000C918();
      sub_10000233C(v36, qword_100014340);
      v37 = sub_10000CA28();
      swift_errorRetain();
      v38 = sub_10000C8F8();

      if (os_log_type_enabled(v38, v37))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        swift_errorRetain();
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v41;
        *v40 = v41;
        _os_log_impl(&_mh_execute_header, v38, v37, "Error querying active mode assertion: %@", v39, 0xCu);
        sub_1000062B0(v40, &qword_100014250, &qword_10000DA90);
      }

      v42 = v0[5];
      v43 = v0[3];

      swift_willThrow();
      sub_1000062B0(v43, &qword_1000140D0, &qword_10000D270);

      v35 = v0[1];
    }

    v35();
  }
}

uint64_t sub_10000A5F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v8 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v5 = sub_10000A880;
  }

  else
  {
    v6 = v3[11];

    v5 = sub_10000A740;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000A740()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 24);
    v4 = *(*(v0 + 56) + 80);
    sub_1000023D8(v1 + ((v4 + 32) & ~v4), *(v0 + 40));

    sub_1000062B0(v3, &qword_1000140D0, &qword_10000D270);
    v5 = 0;
  }

  else
  {
    sub_1000062B0(*(v0 + 24), &qword_1000140D0, &qword_10000D270);

    v5 = 1;
  }

  v6 = *(v0 + 72);
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);
  (*(v0 + 64))(v7, v5, 1, *(v0 + 48));
  sub_10000C3DC(v7, v8);
  v9 = *(v0 + 40);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10000A880()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[14];
  v4 = sub_10000C868();
  if (qword_100014090 != -1)
  {
    swift_once();
  }

  v5 = qword_100014290;
  sub_10000C390();
  v6 = v5;
  v7 = sub_10000CA58();

  if (v7)
  {

    v8 = v0[5];

    v9 = v0[1];
  }

  else
  {
    if (qword_100014080 != -1)
    {
      swift_once();
    }

    v10 = sub_10000C918();
    sub_10000233C(v10, qword_100014340);
    v11 = sub_10000CA28();
    swift_errorRetain();
    v12 = sub_10000C8F8();

    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v12, v11, "Error querying active mode assertion: %@", v13, 0xCu);
      sub_1000062B0(v14, &qword_100014250, &qword_10000DA90);
    }

    v16 = v0[5];
    v17 = v0[3];

    swift_willThrow();
    sub_1000062B0(v17, &qword_1000140D0, &qword_10000D270);

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_10000AB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() mainBundle];
  v13._countAndFlagsBits = 0x800000010000DFC0;
  v15._object = 0x800000010000DF30;
  v17._countAndFlagsBits = 0xD000000000000046;
  v17._object = 0x800000010000DF70;
  v16.value._countAndFlagsBits = 0;
  v15._countAndFlagsBits = 0xD000000000000034;
  v16.value._object = 0;
  v9.super.isa = v8;
  sub_10000C858(v15, v16, v9, v17, v13);

  sub_100002208(&qword_1000142E8, &qword_10000DA88);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10000D2A0;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_10000C33C();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v11;
  *(v10 + 64) = v11;
  *(v10 + 72) = a3;
  *(v10 + 80) = a4;

  sub_10000C9A8();

  return sub_10000C658();
}

uint64_t sub_10000ACB4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014088 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C8A8();
  v3 = sub_10000233C(v2, qword_100014358);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000AD64(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003584;

  return sub_100006938(a1, v5, v4);
}

char *sub_10000AE10@<X0>(char **a1@<X8>)
{
  result = sub_10000B908();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000AE38(uint64_t a1)
{
  v2 = sub_1000066E4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_10000AE74(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000AE80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000AEC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000AF18()
{
  result = qword_1000142B0;
  if (!qword_1000142B0)
  {
    sub_1000033B0(&qword_1000142B8, "$\n");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142B0);
  }

  return result;
}

Swift::Int sub_10000AF7C()
{
  sub_10000CB78();
  sub_10000CB88(0);
  return sub_10000CB98();
}

Swift::Int sub_10000AFE8()
{
  sub_10000CB78();
  sub_10000CB88(0);
  return sub_10000CB98();
}

uint64_t sub_10000B038()
{
  v0 = sub_10000C898();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C8D8();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10000C988();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_10000C928();
  sub_10000C8C8();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10000C8B8();
}

void sub_10000B208()
{
  v0 = objc_allocWithZone(NSError);
  v1 = sub_10000C998();
  v2 = [v0 initWithDomain:v1 code:0 userInfo:0];

  qword_100014290 = v2;
}

uint64_t sub_10000B280(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_10000B2CC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10000B304(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10000B360(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10000B360(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000B42C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000C2E0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000061A0(v11);
  return v7;
}

unint64_t sub_10000B42C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000B538(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10000CB18();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10000B538(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000B584(a1, a2);
  sub_10000B6B4(&off_100010B58);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_10000B584(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10000B7A0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000CB18();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000C9C8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000B7A0(v10, 0);
        result = sub_10000CB08();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000B6B4(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
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

  result = sub_10000B814(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000B7A0(uint64_t a1, uint64_t a2)
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

  sub_100002208(&qword_1000142E0, &qword_10000DA80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000B814(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002208(&qword_1000142E0, &qword_10000DA80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10000B908()
{
  v0 = sub_100002208(&qword_1000140D0, &qword_10000D270);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v63 = v47 - v2;
  v64 = sub_10000C7F8();
  v67 = *(v64 - 8);
  v3 = *(v67 + 64);
  __chkstk_darwin(v64);
  v62 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002208(&qword_1000140C8, &qword_10000D268);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v58 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = v47 - v9;
  v10 = sub_100002208(&qword_1000142C0, &unk_10000DA50);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v57 = v47 - v12;
  v13 = sub_100002208(&qword_1000140D8, &qword_10000D278);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v65 = v47 - v15;
  v16 = sub_10000C898();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C8D8();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = sub_10000C988();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v61 = sub_10000C8A8();
  v25 = *(v61 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v61);
  __chkstk_darwin(v27);
  v60 = v47 - v28;
  v54 = sub_100002208(&qword_1000142C8, &qword_10000DA60);
  sub_10000C928();
  sub_10000C8C8();
  v29 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v30 = *(v17 + 104);
  v59 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v47[0] = v16;
  v30(v20, enum case for LocalizedStringResource.BundleDescription.main(_:), v16);
  v48 = v30;
  v47[1] = v17 + 104;
  sub_10000C8B8();
  v31 = *(v25 + 56);
  v52 = v25 + 56;
  v53 = v31;
  v31(v65, 1, 1, v61);
  v68 = 2;
  v32 = sub_10000C9E8();
  (*(*(v32 - 8) + 56))(v57, 1, 1, v32);
  sub_10000C928();
  sub_10000C8C8();
  v30(v20, v29, v16);
  sub_10000C8B8();
  v33 = v66;
  sub_10000C688();
  v49 = sub_10000C678();
  v34 = *(v49 - 8);
  v50 = *(v34 + 56);
  v51 = v34 + 56;
  v50(v33, 0, 1, v49);
  v55 = enum case for InputConnectionBehavior.default(_:);
  v35 = *(v67 + 104);
  v67 += 104;
  v56 = v35;
  v35(v62);
  v36 = v65;
  v57 = sub_10000C718();
  v54 = sub_100002208(&qword_1000142D0, &qword_10000DA68);
  sub_10000C928();
  sub_10000C8C8();
  v37 = v59;
  v38 = v47[0];
  v39 = v48;
  v48(v20, v59, v47[0]);
  sub_10000C8B8();
  v53(v36, 1, 1, v61);
  v40 = type metadata accessor for FocusEntity();
  (*(*(v40 - 8) + 56))(v63, 1, 1, v40);
  sub_10000C928();
  sub_10000C8C8();
  v41 = v38;
  v39(v20, v37, v38);
  sub_10000C8B8();
  v42 = v66;
  sub_10000C688();
  v43 = v49;
  v44 = v50;
  v50(v42, 0, 1, v49);
  sub_10000C928();
  sub_10000C8C8();
  v39(v20, v59, v41);
  sub_10000C8B8();
  v45 = v58;
  sub_10000C688();
  v44(v45, 0, 1, v43);
  v56(v62, v55, v64);
  sub_1000022F8(&qword_1000140E8);
  sub_10000C708();
  return v57;
}

uint64_t sub_10000C21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002208(&qword_1000140D0, &qword_10000D270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000C28C()
{
  result = qword_1000142D8;
  if (!qword_1000142D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142D8);
  }

  return result;
}

uint64_t sub_10000C2E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000C33C()
{
  result = qword_1000142F0;
  if (!qword_1000142F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142F0);
  }

  return result;
}

unint64_t sub_10000C390()
{
  result = qword_1000142F8;
  if (!qword_1000142F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000142F8);
  }

  return result;
}

uint64_t sub_10000C3DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002208(&qword_1000140D0, &qword_10000D270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SetFocusState.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SetFocusState.Error(_WORD *result, int a2, int a3)
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

unint64_t sub_10000C534()
{
  result = qword_100014308;
  if (!qword_100014308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014308);
  }

  return result;
}