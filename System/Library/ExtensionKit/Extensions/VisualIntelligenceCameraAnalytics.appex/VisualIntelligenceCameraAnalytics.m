uint64_t *sub_1000015E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((*(*(*v4 + 88) + 32))(*(*v4 + 80), *(*v4 + 88)) == a1 && v9 == a2)
  {
  }

  else
  {
    v11 = sub_100009FA8();

    if ((v11 & 1) == 0)
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100001DB8(a3, v16);
  *(a4 + 24) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(a4 + 32) = AssociatedConformanceWitness;
  sub_100001D04(a4);
  v15 = *(AssociatedConformanceWitness + 8);
  result = sub_100009ED8();
  if (v5)
  {
    return sub_100001D68(a4);
  }

  return result;
}

uint64_t *sub_100001764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v41 = a4;
  v5 = v4;
  v42 = a3;
  v8 = *(*v4 + 88);
  v9 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = sub_100009F18();
  v36 = *(v38 - 8);
  v11 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = (__chkstk_darwin)();
  v14 = &v34 - v13;
  v43 = *(AssociatedTypeWitness - 8);
  v15 = *(v43 + 64);
  v16 = __chkstk_darwin(v12);
  v37 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v39 = &v34 - v18;
  if ((*(v8 + 32))(v9, v8) == a1 && v19 == a2)
  {
  }

  else
  {
    v35 = a2;
    v21 = sub_100009FA8();

    if ((v21 & 1) == 0)
    {
      type metadata accessor for BlockFactory.Error();
      swift_getWitnessTable();
      swift_allocError();
      v22 = v35;
      *v23 = a1;
      v23[1] = v22;
      swift_willThrow();
    }
  }

  sub_100009BD8();
  sub_100001CBC(qword_1000142C0, &qword_10000AB08);
  v25 = swift_dynamicCast();
  v26 = v43;
  v27 = *(v43 + 56);
  if (v25)
  {
    v27(v14, 0, 1, AssociatedTypeWitness);
    v28 = v39;
    (*(v26 + 32))(v39, v14, AssociatedTypeWitness);
    v29 = v37;
    (*(v26 + 16))(v37, v28, AssociatedTypeWitness);
    v30 = v4[2];
    v38 = v5[3];
    v42 = *(v8 + 40);
    v31 = v41;
    v41[3] = v9;
    v31[4] = *(v8 + 8);
    sub_100001D04(v31);
    swift_unknownObjectRetain();
    v32 = v40;
    v42(v29, v30, v38, v9, v8);
    if (v32)
    {
      (*(v26 + 8))(v28, AssociatedTypeWitness);
      return sub_100001D68(v31);
    }

    else
    {
      return (*(v26 + 8))(v28, AssociatedTypeWitness);
    }
  }

  else
  {
    v27(v14, 1, 1, AssociatedTypeWitness);
    (*(v36 + 8))(v14, v38);
    type metadata accessor for BlockFactory.Error();
    swift_getWitnessTable();
    swift_allocError();
    *v33 = 0;
    v33[1] = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100001BD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100001BF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100001CBC(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_100001D04(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *sub_100001D68(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t sub_100001DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100001E4C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100001E94(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001EA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100001F44(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100001F60(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_100001F90(uint64_t a1, int a2)
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

uint64_t sub_100001FB0(uint64_t result, int a2, int a3)
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
  if (!qword_100014348)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100014348);
    }
  }
}

Swift::Int sub_100002040()
{
  v1 = *v0;
  sub_100009FF8();
  sub_10000A008(v1);
  return sub_10000A018();
}

Swift::Int sub_1000020B4()
{
  v1 = *v0;
  sub_100009FF8();
  sub_10000A008(v1);
  return sub_10000A018();
}

unint64_t sub_1000020F8()
{
  if (*v0)
  {
    result = 0x726564616F6C7075;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_10000213C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010000B400 == a2 || (sub_100009FA8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x726564616F6C7075 && a2 == 0xEA00000000006449)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_100009FA8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100002244(uint64_t a1)
{
  v2 = sub_1000063A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100002280(uint64_t a1)
{
  v2 = sub_1000063A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000022BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100001CBC(&qword_1000144F0, &qword_10000AD78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000714C(a1, a1[3]);
  sub_1000063A8();
  sub_10000A038();
  v16 = 0;
  sub_100009F88();
  if (!v5)
  {
    v15 = 1;
    sub_100009F88();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100002450(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_100001DB8(a1, v13);
  sub_100001CBC(&qword_1000144F8, &qword_10000AD80);
  if (!swift_dynamicCast())
  {
    goto LABEL_12;
  }

  v6 = v2 == v9 && v3 == v10;
  if (!v6 && (sub_100009FA8() & 1) == 0)
  {

LABEL_12:
    v7 = 0;
    return v7 & 1;
  }

  if (v4 == v11 && v5 == v12)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_100009FA8();
  }

  return v7 & 1;
}

uint64_t sub_10000256C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000061C4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void *sub_1000025BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a4;
  v65 = a6;
  v74 = a5;
  v66 = sub_100009CA8();
  v12 = *(v66 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v66);
  v63 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100009D18();
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = *(v70 + 64);
  __chkstk_darwin(v15);
  v69 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100009C88();
  v55 = *(v18 - 8);
  v56 = v18;
  v19 = *(v55 + 64);
  __chkstk_darwin(v18);
  v67 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock_done) = 0;
  v21 = OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock__messageSchema;
  v22 = sub_100009CF8();
  (*(*(v22 - 8) + 56))(v6 + v21, 1, 1, v22);
  v6[2] = a1;
  v6[3] = a2;
  v23 = a2;
  v6[4] = a3;
  v6[5] = a4;
  v68 = v6;
  v24 = (v6 + OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock_bookmarkConfig);
  v57 = v24;
  v25 = v65;
  *v24 = a5;
  v24[1] = v25;
  sub_100001CBC(&qword_100014500, &qword_10000AD88);
  v26 = (sub_100001CBC(&qword_100014508, &qword_10000AD90) - 8);
  v27 = *(*v26 + 72);
  v28 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10000ABD0;
  v30 = (v29 + v28);
  v64 = v26[14];
  v65 = v29;
  v61 = v23;
  v62 = v29 + v28;
  *v30 = a1;
  v30[1] = v23;
  sub_100001CBC(&qword_100014510, &qword_10000AD98);
  v31 = sub_100001CBC(&qword_100014518, &qword_10000ADA0);
  v32 = *(*(v31 - 8) + 72);
  v33 = (*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80);
  v59 = 2 * v32;
  v34 = swift_allocObject();
  v60 = v34;
  *(v34 + 16) = xmmword_10000ABE0;
  v35 = (v34 + v33);
  v58 = *(v31 + 48);
  *v35 = 0xD00000000000001CLL;
  v35[1] = 0x800000010000B450;
  v36 = enum case for TypeManifest.int64(_:);
  v37 = *(v12 + 104);
  v38 = v63;
  v39 = v66;
  v37(v63, enum case for TypeManifest.int64(_:), v66);
  swift_bridgeObjectRetain_n();

  swift_unknownObjectRetain();
  v77 = 1;
  sub_100009CB8();
  v40 = (v35 + v32);
  v41 = *(v31 + 48);
  *v40 = 0xD000000000000031;
  v40[1] = 0x800000010000B470;
  v37(v38, v36, v39);
  v76 = 1;
  sub_100009CB8();
  v42 = (v35 + v59);
  v43 = *(v31 + 48);
  *v42 = 0xD000000000000017;
  v42[1] = 0x800000010000B4B0;
  v37(v38, enum case for TypeManifest.bytes(_:), v39);
  v75 = 1;
  v44 = v67;
  sub_100009CB8();
  sub_1000063FC(v60);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v45 = v62;
  sub_100009D28();

  sub_1000065FC(v65);
  swift_setDeallocating();
  sub_100007334(v45, &qword_100014508, &qword_10000AD90);
  swift_deallocClassInstance();
  sub_1000067FC(&_swiftEmptyArrayStorage);
  v46 = v69;
  sub_100009D08();
  v47 = v72;
  sub_100009C68();
  if (v47)
  {
    swift_unknownObjectRelease();
    (*(v70 + 8))(v46, v71);
    v48 = v68;
    v49 = v68[3];

    v50 = v48[5];

    v51 = *v57;
    swift_unknownObjectRelease();
    sub_100007334(v48 + OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock__messageSchema, &qword_100014520, &qword_10000ADA8);
    type metadata accessor for UploadBlock();
    v52 = *(*v48 + 48);
    v53 = *(*v48 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v70 + 8))(v46, v71);
    swift_unknownObjectRelease();
    v48 = v68;
    (*(v55 + 32))(v68 + OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock_schemaStore, v44, v56);
  }

  return v48;
}

uint64_t sub_100002CE0@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = sub_100009CF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001CBC(&qword_100014520, &qword_10000ADA8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  v14 = OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock__messageSchema;
  swift_beginAccess();
  sub_1000073F8(v1 + v14, v13, &qword_100014520, &qword_10000ADA8);
  if ((*(v3 + 48))(v13, 1, v2) == 1)
  {
    sub_100007334(v13, &qword_100014520, &qword_10000ADA8);
    v15 = *(v1 + 16);
    v16 = *(v1 + 24);
    v17 = v21;
    result = sub_100009C78();
    if (v17)
    {
      return result;
    }

    (*(v3 + 16))(v11, v6, v2);
    (*(v3 + 56))(v11, 0, 1, v2);
    swift_beginAccess();
    sub_100007460(v11, v1 + v14);
    swift_endAccess();
  }

  else
  {
    v6 = v13;
  }

  return (*(v3 + 32))(v20, v6, v2);
}

uint64_t sub_100002F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100009C08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009C18();
  v12 = sub_100003168(v11);
  (*(v8 + 8))(v11, v7);
  if (*(v12 + 16))
  {
    sub_10000356C(v12, a2, a3);
  }

  else
  {

    if (qword_100014238 != -1)
    {
      swift_once();
    }

    v13 = sub_100009DE8();
    sub_100006DB0(v13, qword_100014F00);
    v14 = sub_100009DC8();
    v15 = sub_100009EE8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Data is empty", v16, 2u);
    }
  }

  *(v4 + OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock_done) = 1;
  return 1;
}

uint64_t sub_100003168(uint64_t a1)
{
  v40 = sub_100009B58();
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v40);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v33 = &v32 - v6;
  v7 = sub_100009C08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000073AC(&qword_1000145A0, &type metadata accessor for Dataset);
  v12 = sub_100009E58();
  v43 = &_swiftEmptyArrayStorage;
  sub_100005DAC(0, v12 & ~(v12 >> 63), 0);
  v13 = v43;
  (*(v8 + 16))(v11, a1, v7);
  result = sub_100009E48();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v15 = v42;
    if (v12)
    {
      v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v17 = *(v41 + 16);
      v37 = v41;
      v38 = v17;
      v36 = v41 + v16;
      v34 = v2 + 8;
      v35 = v2 + 16;
      v18 = v42;
      while (v38 != v18)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v18 >= *(v37 + 16))
        {
          goto LABEL_22;
        }

        v19 = v39;
        v20 = v40;
        (*(v2 + 16))(v39, v36 + *(v2 + 72) * v18, v40);
        v21 = sub_100009B48();
        result = (*(v2 + 8))(v19, v20);
        v43 = v13;
        v23 = v13[2];
        v22 = v13[3];
        if (v23 >= v22 >> 1)
        {
          result = sub_100005DAC((v22 > 1), v23 + 1, 1);
          v13 = v43;
        }

        v13[2] = v23 + 1;
        v13[v23 + 4] = v21;
        ++v18;
        if (!--v12)
        {
          v42 = v18;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v18 = v42;
LABEL_12:
      v24 = v41;
      v25 = *(v41 + 16);
      if (v18 == v25)
      {
LABEL_13:

        return v13;
      }

      v39 = (v2 + 16);
      while (v18 < v25)
      {
        v26 = v24 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18;
        v42 = v18 + 1;
        v27 = v33;
        v28 = v40;
        (*(v2 + 16))(v33, v26, v40);
        v29 = sub_100009B48();
        result = (*(v2 + 8))(v27, v28);
        v43 = v13;
        v31 = v13[2];
        v30 = v13[3];
        if (v31 >= v30 >> 1)
        {
          result = sub_100005DAC((v30 > 1), v31 + 1, 1);
          v13 = v43;
        }

        v13[2] = v31 + 1;
        v13[v31 + 4] = v29;
        v25 = *(v24 + 16);
        v18 = v42;
        if (v42 == v25)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000356C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v72 = a3;
  ObjectType = a1;
  v5 = sub_100009B98();
  v76 = *(v5 - 8);
  v6 = *(v76 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v58 - v10;
  v12 = sub_100009CF8();
  v77 = *(v12 - 8);
  v13 = *(v77 + 64);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  v16 = v58 - v15;
  result = sub_100002CE0(v58 - v15);
  v78 = v4;
  if (!v4)
  {
    v65 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = v3;
    v67 = v9;
    v68 = v5;
    v69 = v11;
    v70 = v12;
    v18 = *(ObjectType + 16);
    if (v18)
    {
      v19 = (ObjectType + 32);
      v20 = v76;
      v63 = v76 + 16;
      v62 = v76 + 32;
      v60 = v77 + 16;
      v59 = v13 + 7;
      v58[1] = v77 + 32;
      v64 = (v76 + 8);
      v22 = v68;
      v21 = v69;
      v23 = v78;
      v61 = v16;
      while (1)
      {
        v24 = *v19;
        if (!*(*v19 + 16))
        {
          break;
        }

        v25 = *v19;

        v26 = sub_100005D28(0x6D6954746E657665, 0xEE00706D61747365, sub_100005A80);
        if ((v27 & 1) == 0)
        {

          break;
        }

        v28 = v67;
        (*(v20 + 16))(v67, *(v24 + 56) + *(v20 + 72) * v26, v22);
        (*(v20 + 32))(v21, v28, v22);
        sub_100009B88();
        if ((swift_dynamicCast() & 1) == 0)
        {

          swift_getObjectType();
          sub_100009BA8();
          if (qword_100014238 != -1)
          {
            swift_once();
          }

          v51 = sub_100009DE8();
          sub_100006DB0(v51, qword_100014F00);
          v52 = sub_100009DC8();
          v53 = sub_100009EF8();
          v54 = os_log_type_enabled(v52, v53);
          v47 = v70;
          if (v54)
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v52, v53, "Invalid type of the event timestamp", v55, 2u);
          }

          sub_100006E7C();
          v56 = swift_allocError();
          *v57 = xmmword_10000ABF0;
          v78 = v56;
          swift_willThrow();
          (*v64)(v69, v22);
          return (*(v77 + 8))(v16, v47);
        }

        sub_100003F10(v24);

        v29 = sub_100009CD8();
        v78 = v23;
        v30 = v29;
        v32 = v31;
        v73 = v19;
        v74 = v18;

        v33 = v71;
        ObjectType = swift_getObjectType();
        v34 = v77;
        v35 = v65;
        v36 = v70;
        (*(v77 + 16))(v65, v16, v70);
        v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
        v38 = (v59 + v37) & 0xFFFFFFFFFFFFFFF8;
        v39 = swift_allocObject();
        (*(v34 + 32))(v39 + v37, v35, v36);
        v40 = (v39 + v38);
        *v40 = v30;
        v40[1] = v32;
        sub_100006D5C(v30, v32);
        v41 = v72;
        sub_100009BA8();

        v42 = v78;
        sub_1000045E8(v30, v32, v33, v41);
        v23 = v42;
        if (v42)
        {
          v78 = v42;
          sub_100006B14(v30, v32);
          (*v64)(v69, v68);
          v47 = v70;
          v16 = v61;
          return (*(v77 + 8))(v16, v47);
        }

        v22 = v68;
        v21 = v69;
        (*v64)(v69, v68);
        sub_100006B14(v30, v32);
        v19 = v73 + 1;
        v18 = v74 - 1;
        v16 = v61;
        v20 = v76;
        if (v74 == 1)
        {
          return (*(v77 + 8))(v16, v70);
        }
      }

      swift_getObjectType();
      sub_100009BA8();
      if (qword_100014238 != -1)
      {
        swift_once();
      }

      v43 = sub_100009DE8();
      sub_100006DB0(v43, qword_100014F00);
      v44 = sub_100009DC8();
      v45 = sub_100009EF8();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v70;
      if (v46)
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Event timestamp is missing", v48, 2u);
      }

      sub_100006E7C();
      v49 = swift_allocError();
      *v50 = 0;
      v50[1] = 0;
      v78 = v49;
      swift_willThrow();
      return (*(v77 + 8))(v16, v47);
    }

    else
    {
      return (*(v77 + 8))(v16, v70);
    }
  }

  return result;
}

uint64_t sub_100003D00()
{
  sub_100001CBC(&qword_100014568, &qword_10000ADF8);
  v0 = *(sub_100009C58() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10000ABD0;
  sub_100006E7C();
  swift_allocError();
  *v4 = 0;
  v4[1] = 0;
  sub_100009C48();
  return v3;
}

uint64_t sub_100003E04()
{
  sub_100001CBC(&qword_100014568, &qword_10000ADF8);
  v0 = *(sub_100009C58() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10000ABD0;
  sub_100006E7C();
  swift_allocError();
  *v4 = xmmword_10000ABF0;
  sub_100009C48();
  return v3;
}

uint64_t sub_100003F10(uint64_t a1)
{
  v55 = sub_100001CBC(&qword_100014580, &qword_10000AE28);
  v2 = *(*(v55 - 8) + 64);
  v3 = __chkstk_darwin(v55);
  v49 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v3);
  v7 = &v48 - v6;
  __chkstk_darwin(v5);
  v50 = &v48 - v8;
  v53 = &_swiftEmptyDictionarySingleton;
  v61 = &_swiftEmptyDictionarySingleton;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v54 = a1;

  v15 = 0;
  while (v12)
  {
    v16 = v7;
LABEL_11:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = v18 | (v15 << 6);
    v20 = *(v54 + 56);
    v21 = (*(v54 + 48) + 16 * v19);
    v23 = *v21;
    v22 = v21[1];
    v24 = sub_100009B98();
    v25 = v20 + *(*(v24 - 8) + 72) * v19;
    v26 = v55;
    v27 = *(v55 + 48);
    v51 = *(v24 - 8);
    v28 = *(v51 + 16);
    v29 = v50;
    v52 = v24;
    v28(&v50[v27], v25);
    *v29 = v23;
    v29[1] = v22;
    v7 = v16;
    sub_1000072C4(v29, v16);
    v30 = *(v26 + 48);

    sub_100009B88();
    sub_100001CBC(&qword_100014588, &qword_10000AE30);
    if (swift_dynamicCast())
    {
      if (!*(&v57 + 1))
      {
        goto LABEL_18;
      }

      sub_100007394(&v56, v60);
      sub_1000072C4(v16, v49);
      sub_100007394(v60, v59);
      v31 = v53[2];
      if (v53[3] <= v31)
      {
        sub_100005F00(v31 + 1, 1);
      }

      v32 = v61;
      v33 = *v49;
      v34 = v49[1];
      v35 = v61[5];
      sub_100009FF8();
      sub_100009E28();
      result = sub_10000A018();
      v36 = v32 + 8;
      v53 = v32;
      v37 = -1 << *(v32 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~v32[(v38 >> 6) + 8]) == 0)
      {
        v41 = 0;
        v42 = (63 - v37) >> 6;
        while (++v39 != v42 || (v41 & 1) == 0)
        {
          v43 = v39 == v42;
          if (v39 == v42)
          {
            v39 = 0;
          }

          v41 |= v43;
          v44 = v36[v39];
          if (v44 != -1)
          {
            v40 = __clz(__rbit64(~v44)) + (v39 << 6);
            goto LABEL_27;
          }
        }

        goto LABEL_30;
      }

      v40 = __clz(__rbit64((-1 << v38) & ~v32[(v38 >> 6) + 8])) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
      v45 = *(v55 + 48);
      *(v36 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      v46 = v53;
      v47 = (v53[6] + 16 * v40);
      *v47 = v33;
      v47[1] = v34;
      sub_100007394(v59, v46[7] + 40 * v40);
      ++v46[2];
      result = (*(v51 + 8))(v49 + v45, v52);
    }

    else
    {
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
LABEL_18:
      sub_100007334(v16, &qword_100014580, &qword_10000AE28);
      result = sub_100007334(&v56, &qword_100014590, &qword_10000AE38);
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return v53;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v16 = v7;
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1000043A8()
{
  v1 = sub_100009C28();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001CBC(&qword_100014568, &qword_10000ADF8);
  v6 = *(sub_100009C58() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10000ABD0;
  (*(v2 + 104))(v5, enum case for LogEntry.EntryType.json(_:), v1);
  sub_100009CE8();
  if (v0)
  {
    (*(v2 + 8))(v5, v1);
    *(v9 + 16) = 0;
  }

  else
  {
    sub_100009D48();

    sub_100009C38();
  }

  return v9;
}

void sub_1000045E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v39[0] = a3;
  v39[1] = a4;
  v43 = a2;
  v6 = sub_100001CBC(&qword_100014548, &qword_10000ADD0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v39 - v8;
  v42 = (v39 - v8);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = xmmword_10000AC00;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v13 = v4[4];
  v12 = v4[5];
  v14 = v4[3];
  v41 = v4[2];
  v40 = v4;
  v15 = sub_100009EC8();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v17 = v43;
  v16[4] = a1;
  v16[5] = v17;
  v16[6] = v13;
  v16[7] = v12;
  v16[8] = v41;
  v16[9] = v14;
  v16[10] = v10;
  v16[11] = v11;

  v18 = v11;
  v19 = (v10 + 16);
  v20 = v18;
  sub_100006D5C(a1, v17);
  sub_10000518C(0, 0, v42, &unk_10000ADF0, v16);

  sub_100009F08();
  os_unfair_lock_lock((v10 + 16));
  v43 = v10;
  v21 = *(v10 + 32);
  if (v21 == 2)
  {
    if (qword_100014238 != -1)
    {
      swift_once();
    }

    v22 = sub_100009DE8();
    sub_100006DB0(v22, qword_100014F00);
    v23 = sub_100009DC8();
    v24 = sub_100009EE8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Successfully submitted even to the upload", v25, 2u);
    }

    v26 = *(v40 + OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock_bookmarkConfig);
    v27 = *(v40 + OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock_bookmarkConfig + 8);
    swift_getObjectType();
    sub_100009BB8();
    os_unfair_lock_unlock(v19);
  }

  else
  {
    v28 = *(v43 + 24);
    swift_getObjectType();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v21;
    sub_100006E44(v28, v21);
    sub_100006E44(v28, v21);
    sub_100009BA8();

    if (qword_100014238 != -1)
    {
      swift_once();
    }

    v30 = sub_100009DE8();
    sub_100006DB0(v30, qword_100014F00);
    sub_100006E44(v28, v21);
    v31 = sub_100009DC8();
    v32 = sub_100009EF8();
    sub_100006E58(v28, v21);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v21;
      v46 = v42;
      *v33 = 136315138;
      v44 = v28;
      sub_100006E44(v28, v21);
      v34 = sub_100009E08();
      v36 = v19;
      v37 = sub_100008B7C(v34, v35, &v46);

      *(v33 + 4) = v37;
      v19 = v36;
      _os_log_impl(&_mh_execute_header, v31, v32, "Error uploading message: %s", v33, 0xCu);
      sub_100006ED0(v42);
    }

    sub_100006E7C();
    swift_allocError();
    *v38 = v28;
    v38[1] = v21;
    swift_willThrow();
    os_unfair_lock_unlock(v19);
  }
}

uint64_t sub_100004ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v15;
  *(v8 + 216) = v14;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 176) = a4;
  v9 = sub_100001CBC(&qword_100014570, &qword_10000AE18);
  *(v8 + 240) = v9;
  v10 = *(v9 - 8);
  *(v8 + 248) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 256) = swift_task_alloc();

  return (_swift_task_switch)(sub_100004BC4, 0, 0);
}

uint64_t sub_100004BC4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[31];
  v16 = v0[32];
  v4 = v0[30];
  v6 = v1[26];
  v5 = v1[27];
  v7 = v1[24];
  v8 = v1[25];
  v9 = v1[22];
  v10 = v1[23];
  v17 = [objc_opt_self() sharedLogger];
  v1[33] = v17;
  isa = sub_100009AC8().super.isa;
  v1[34] = isa;
  v12 = sub_100009DF8();
  v1[35] = v12;
  v13 = sub_100009DF8();
  v1[36] = v13;
  v1[2] = v1;
  v1[3] = sub_100004DF4;
  swift_continuation_init();
  v1[17] = v4;
  v14 = sub_100001D04(v1 + 14);
  sub_100001CBC(&qword_100014578, &qword_10000AE20);
  sub_100009E78();
  (*(v3 + 32))(v14, v16, v4);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000050FC;
  v1[13] = &unk_100010BE0;
  [v17 reportDataPlatformBatchedEvent:isa forBundleID:v12 ofSchema:v13 completion:?];
  (*(v3 + 8))(v14, v4);

  return _swift_continuation_await(v2);
}

uint64_t sub_100004DF4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_100004F90;
  }

  else
  {
    v3 = sub_100004F04;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_100004F04()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);

  v4 = *(v0 + 256);
  dispatch_group_leave(*(v0 + 232));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100004F90()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 264);
  v6 = *(v0 + 224);
  swift_willThrow();

  os_unfair_lock_lock((v6 + 16));
  sub_100006E58(*(v6 + 24), *(v6 + 32));
  swift_getErrorValue();
  v7 = *(v0 + 144);
  v8 = *(*(v0 + 152) - 8);
  v9 = *(v8 + 64) + 15;
  swift_task_alloc();
  (*(v8 + 16))();
  v10 = sub_100009E08();
  v12 = v11;

  *(v6 + 24) = v10;
  *(v6 + 32) = v12;
  os_unfair_lock_unlock((v6 + 16));

  v13 = *(v0 + 256);
  dispatch_group_leave(*(v0 + 232));

  v14 = *(v0 + 8);

  return v14();
}

void sub_1000050FC(uint64_t a1, void *a2)
{
  sub_10000714C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_100001CBC(&qword_100014570, &qword_10000AE18);
    sub_100009E88();
  }

  else
  {
    sub_100001CBC(&qword_100014570, &qword_10000AE18);
    sub_100009E98();
  }
}

uint64_t sub_10000518C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001CBC(&qword_100014548, &qword_10000ADD0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000073F8(a3, v27 - v11, &qword_100014548, &qword_10000ADD0);
  v13 = sub_100009EC8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100007334(v12, &qword_100014548, &qword_10000ADD0);
  }

  else
  {
    sub_100009EB8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100009E68();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100009E18() + 32;
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

      sub_100007334(a3, &qword_100014548, &qword_10000ADD0);

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

  sub_100007334(a3, &qword_100014548, &qword_10000ADD0);
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

uint64_t sub_10000548C(uint64_t a1, unint64_t a2)
{
  sub_100001CBC(&qword_100014568, &qword_10000ADF8);
  v4 = *(sub_100009C58() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10000ABD0;
  sub_100006E7C();
  swift_allocError();
  *v8 = a1;
  v8[1] = a2;
  sub_100006E44(a1, a2);
  sub_100009C48();
  return v7;
}

uint64_t sub_1000055B0()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock_schemaStore;
  v4 = sub_100009C88();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock_bookmarkConfig];
  swift_unknownObjectRelease();
  sub_100007334(&v0[OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock__messageSchema], &qword_100014520, &qword_10000ADA8);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UploadBlock()
{
  result = qword_100014378;
  if (!qword_100014378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000056E0()
{
  v0 = sub_100009C88();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000057C4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000057C4()
{
  if (!qword_100014388)
  {
    sub_100009CF8();
    v0 = sub_100009F18();
    if (!v1)
    {
      atomic_store(v0, &qword_100014388);
    }
  }
}

void *sub_10000583C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = type metadata accessor for UploadBlock();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  result = sub_1000025BC(v8, v9, v10, v11, a2, a3);
  if (!v4)
  {
    *a4 = v15;
  }

  return result;
}

uint64_t sub_1000058E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  sub_100002F4C(a1, a2, a3);
  return 1;
}

unint64_t sub_100005924()
{
  result = qword_100014490;
  if (!qword_100014490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014490);
  }

  return result;
}

uint64_t sub_100005978(uint64_t a1)
{
  result = sub_1000073AC(&qword_1000144C8, type metadata accessor for UploadBlock);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000059D4()
{
  result = qword_1000144D0;
  if (!qword_1000144D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144D0);
  }

  return result;
}

unint64_t sub_100005A2C()
{
  result = qword_1000144D8;
  if (!qword_1000144D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144D8);
  }

  return result;
}

unint64_t sub_100005A80(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100009FA8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100005B38(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005C30;

  return v7(a1);
}

uint64_t sub_100005C30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100005D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  sub_100009FF8();
  sub_100009E28();
  v7 = sub_10000A018();

  return a3(a1, a2, v7);
}

void *sub_100005DAC(void *a1, int64_t a2, char a3)
{
  result = sub_100005DCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100005DCC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001CBC(&qword_1000145A8, &qword_10000AE48);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100001CBC(&qword_1000145B0, &qword_10000AE50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100005F00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001CBC(&qword_100014598, &qword_10000AE40);
  v36 = a2;
  result = sub_100009F58();
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_100007394(v25, v37);
      }

      else
      {
        sub_100001DB8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_100009FF8();
      sub_100009E28();
      result = sub_10000A018();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100007394(v37, *(v8 + 56) + 40 * v16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000061C4(uint64_t *a1)
{
  v3 = sub_100001CBC(&qword_1000144E0, &qword_10000AD70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10000714C(a1, a1[3]);
  sub_1000063A8();
  sub_10000A028();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_100009F78();
    v11 = 1;
    sub_100009F78();
    (*(v4 + 8))(v7, v3);
  }

  sub_100006ED0(a1);
  return v8;
}

unint64_t sub_1000063A8()
{
  result = qword_1000144E8;
  if (!qword_1000144E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144E8);
  }

  return result;
}

unint64_t sub_1000063FC(uint64_t a1)
{
  v2 = sub_100001CBC(&qword_100014518, &qword_10000ADA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001CBC(&qword_100014540, &qword_10000ADC8);
    v8 = sub_100009F68();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000073F8(v10, v6, &qword_100014518, &qword_10000ADA0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100005D28(*v6, v13, sub_100005A80);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_100009CC8();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1000065FC(uint64_t a1)
{
  v2 = sub_100001CBC(&qword_100014508, &qword_10000AD90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001CBC(&qword_100014538, &qword_10000ADC0);
    v8 = sub_100009F68();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000073F8(v10, v6, &qword_100014508, &qword_10000AD90);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100005D28(*v6, v13, sub_100005A80);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_100009D38();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1000067FC(uint64_t a1)
{
  v2 = sub_100001CBC(&qword_100014528, &qword_10000ADB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001CBC(&qword_100014530, &qword_10000ADB8);
    v8 = sub_100009F68();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000073F8(v10, v6, &qword_100014528, &qword_10000ADB0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100005D28(*v6, v13, sub_100005A80);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_100009C98();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_1000069FC()
{
  v1 = sub_100001CBC(&qword_100014550, &qword_10000ADD8);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = sub_100001CBC(&qword_100014558, &qword_10000ADE0);
  (*(*(v2 - 8) + 8))(v0 + 24, v2);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006AB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100006B14(*(v0 + 32), *(v0 + 40));
  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100006B14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100006B68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100006C68;

  return sub_100004ADC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100006C68()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100006D5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100006DB0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006DE8()
{
  if (*(v0 + 24) >= 2uLL)
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006E44(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_100006E58(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_100006E68(a1, a2);
  }

  return a1;
}

uint64_t sub_100006E68(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_100006E7C()
{
  result = qword_100014560;
  if (!qword_100014560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014560);
  }

  return result;
}

uint64_t sub_100006ED0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006F1C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006F54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000078C8;

  return sub_100005B38(a1, v5);
}

uint64_t sub_10000700C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006C68;

  return sub_100005B38(a1, v5);
}

uint64_t sub_1000070D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000714C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100007190()
{
  v1 = sub_100009CF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100006B14(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100007230()
{
  v1 = *(sub_100009CF8() - 8);
  v2 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = *v2;
  v4 = v2[1];
  return sub_1000043A8();
}

uint64_t sub_1000072C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CBC(&qword_100014580, &qword_10000AE28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007334(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001CBC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007394(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000073AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000073F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001CBC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007460(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CBC(&qword_100014520, &qword_10000ADA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000074D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000074E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000753C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UploadBlock.Config.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UploadBlock.Config.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_100007718(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100007724(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10000776C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000077C0()
{
  result = qword_1000145B8;
  if (!qword_1000145B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145B8);
  }

  return result;
}

unint64_t sub_100007818()
{
  result = qword_1000145C0;
  if (!qword_1000145C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145C0);
  }

  return result;
}

unint64_t sub_100007870()
{
  result = qword_1000145C8;
  if (!qword_1000145C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145C8);
  }

  return result;
}

uint64_t sub_1000078CC()
{
  v0 = sub_100009DE8();
  sub_100009A44(v0, qword_100014F00);
  sub_100006DB0(v0, qword_100014F00);
  return sub_100009DD8();
}

void sub_100007944()
{
  v1 = *v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_100009DF8();
  v5 = sub_100009DF8();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_100009AA8();
  }

  else
  {
    sub_100009F48();
    __break(1u);
  }
}

uint64_t sub_100007AAC(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  v3 = sub_100009EA8();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(sub_100009AE8() - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = *(*(sub_100001CBC(&qword_100014678, &qword_10000B108) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(sub_100001CBC(&qword_100014680, &qword_10000B110) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return (_swift_task_switch)(sub_100007C3C, 0, 0);
}

uint64_t sub_100007C3C()
{
  if (qword_100014238 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_100009DE8();
  v0[14] = sub_100006DB0(v2, qword_100014F00);
  v3 = v1;
  v4 = sub_100009DC8();
  v5 = sub_100009EE8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100007334(v8, &qword_1000146A0, &qword_10000B128);
  }

  v11 = v0[5];
  v10 = v0[6];

  v0[2] = v11;
  v12 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v13 = swift_task_alloc();
  v0[15] = v13;
  v14 = sub_100009AF8();
  v0[16] = v14;
  v16 = sub_100008A64(&qword_100014670, v15, type metadata accessor for VisualIntelligenceCameraAnalytics);
  v17 = sub_100008A64(&qword_100014688, 255, &type metadata accessor for PoirotDefaultTaskParameters);
  v18 = sub_100008A64(&qword_100014690, 255, &type metadata accessor for PoirotDefaultTaskParameters);
  *v13 = v0;
  v13[1] = sub_100007ED8;
  v19 = v0[13];
  v20 = v0[4];

  return MLHostExtension.loadConfig<A>(context:)(v19, v20, v10, v14, v16, v17, v18);
}

uint64_t sub_100007ED8()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return (_swift_task_switch)(sub_100007FD4, 0, 0);
}

uint64_t sub_100007FD4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[4];
  sub_100009134(v1);
  sub_100009DB8();
  sub_100009560(v1, v2);
  v4 = sub_100001CBC(&qword_100014698, &unk_10000B118);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v0[12];
  if (v6 == 1)
  {
    sub_100007334(v0[12], &qword_100014680, &qword_10000B110);
    v8 = 1;
  }

  else
  {
    v9 = v0[11];
    sub_100009DA8();
    (*(v5 + 8))(v7, v4);
    v8 = 0;
  }

  v10 = v0[11];
  v11 = v0[5];
  (*(*(v0[16] - 8) + 56))(v10, v8, 1);
  sub_100009AD8();
  v12 = sub_100009BF8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_100009BE8();
  sub_1000095D0(v10, v15, &protocol witness table for UserDefaultsTimeBookmark);
  v16 = v0[14];
  sub_100007334(v0[11], &qword_100014678, &qword_10000B108);

  v17 = sub_100009DC8();
  v18 = sub_100009EE8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Execution is completed.", v19, 2u);
  }

  v20 = v0[13];

  v21 = objc_allocWithZone(sub_100009D78());
  v22 = sub_100009D68();
  sub_100007334(v20, &qword_100014680, &qword_10000B110);
  v24 = v0[12];
  v23 = v0[13];
  v26 = v0[10];
  v25 = v0[11];
  v27 = v0[9];

  v28 = v0[1];

  return v28(v22);
}

uint64_t sub_10000854C()
{
  objc_allocWithZone(sub_100009D78());
  v1 = sub_100009D68();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000085C0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008658;

  return sub_100007AAC(a1);
}

uint64_t sub_100008658(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100008754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100006C68;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100008838(uint64_t a1, uint64_t a2)
{
  v3 = sub_100008A64(&qword_100014670, a2, type metadata accessor for VisualIntelligenceCameraAnalytics);

  return MLHostExtension.configuration.getter(a1, v3);
}

uint64_t sub_1000088B4@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for VisualIntelligenceCameraAnalytics();
  sub_100008A64(&qword_1000145D0, v3, type metadata accessor for VisualIntelligenceCameraAnalytics);
  sub_100009D58();
  return 0;
}

uint64_t sub_100008A64(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100008AAC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100008B20(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100008B7C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100008B7C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008C48(v11, 0, 0, 1, a1, a2);
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
    sub_1000070D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006ED0(v11);
  return v7;
}

unint64_t sub_100008C48(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100008D54(a5, a6);
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
    result = sub_100009F38();
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

char *sub_100008D54(uint64_t a1, unint64_t a2)
{
  v4 = sub_100008DA0(a1, a2);
  sub_100008ED0(&off_100010948);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100008DA0(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100008FBC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100009F38();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100009E38();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100008FBC(v10, 0);
        result = sub_100009F28();
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

uint64_t sub_100008ED0(uint64_t result)
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

  result = sub_100009030(result, v12, 1, v3);
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

void *sub_100008FBC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100001CBC(&qword_1000146D8, &qword_10000B150);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100009030(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CBC(&qword_1000146D8, &qword_10000B150);
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

_BYTE **sub_100009124(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100009134(uint64_t a1)
{
  v2 = sub_100001CBC(&qword_100014680, &qword_10000B110);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_100001CBC(&qword_100014698, &unk_10000B118);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  sub_100009560(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100007334(v5, &qword_100014680, &qword_10000B110);
    if (qword_100014238 != -1)
    {
      swift_once();
    }

    v14 = sub_100009DE8();
    sub_100006DB0(v14, qword_100014F00);
    v15 = sub_100009DC8();
    v16 = sub_100009EE8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Execution without additional parameters", v17, 2u);
    }
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    if (qword_100014238 != -1)
    {
      swift_once();
    }

    v18 = sub_100009DE8();
    sub_100006DB0(v18, qword_100014F00);
    (*(v7 + 16))(v11, v13, v6);
    v19 = sub_100009DC8();
    v20 = sub_100009EE8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v21 = 136315138;
      sub_1000099FC(&qword_1000146D0, &qword_100014698, &unk_10000B118);
      v22 = sub_100009F98();
      v24 = v23;
      v25 = *(v7 + 8);
      v25(v11, v6);
      v26 = sub_100008B7C(v22, v24, &v29);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Configuration: %s", v21, 0xCu);
      sub_100006ED0(v28);

      v25(v13, v6);
    }

    else
    {

      v27 = *(v7 + 8);
      v27(v11, v6);
      v27(v13, v6);
    }
  }
}

uint64_t sub_100009560(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CBC(&qword_100014680, &qword_10000B110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000095D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[0] = a1;
  v5 = sub_100009B68();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v27 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001CBC(&qword_1000146A8, &qword_10000B130);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v26 - v13;
  v26[1] = v26 - v13;
  v15 = sub_100009AB8();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v26[2] = swift_getObjectType();
  v26[3] = sub_100001CBC(&qword_1000146B0, &qword_10000B138);
  sub_100007944();
  sub_100001CBC(&qword_1000146B8, &qword_10000B140);
  v17 = *(sub_100009B38() - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_10000ABD0;
  v20 = BMVisualIntelligenceCameraLookupEventIdentifier;
  sub_100009B28();
  v21 = sub_100009B78();
  v22 = *(*(v21 - 8) + 56);
  v22(v14, 1, 1, v21);
  v22(v12, 1, 1, v21);
  sub_100001CBC(&qword_1000146C0, &qword_10000B148);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v31 = v23;
  sub_100009BC8();
  sub_1000099FC(&qword_1000146C8, &qword_1000146C0, &qword_10000B148);
  (*(v28 + 104))(v27, enum case for LoggingType.void(_:), v29);
  swift_unknownObjectRetain_n();
  v24 = v30;
  result = sub_100009B18();
  if (!v24)
  {
    sub_100009B08();
  }

  return result;
}

uint64_t sub_1000099B4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000099FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000099B4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100009A44(uint64_t a1, uint64_t *a2)
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