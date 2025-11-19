_DWORD *sub_16B70(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
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

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_16D28()
{
  result = qword_316538;
  if (!qword_316538)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_316538);
  }

  return result;
}

uint64_t sub_16DBC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_263260();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v15[-v10];
  v16 = v3;
  v17 = v2;
  v18 = v1;
  sub_261D30();
  sub_263250();
  WitnessTable = swift_getWitnessTable();
  sub_1609C(v9, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v9, v4);
  sub_1609C(v11, v4, WitnessTable);
  return (v13)(v11, v4);
}

uint64_t sub_16FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(AssociatedTypeWitness);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  v14 = type metadata accessor for ListItemAccessoryView();
  (*(a3 + 24))(*(a1 + *(v14 + 36)), *(a1 + *(v14 + 36) + 8), a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1609C(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  v16 = *(v7 + 8);
  v16(v11, AssociatedTypeWitness);
  sub_1609C(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v16)(v13, AssociatedTypeWitness);
}

uint64_t sub_17164(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_263260();

  return swift_getWitnessTable();
}

uint64_t CardInfo.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CardInfo() + 20);
  v4 = sub_2601E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CardInfo()
{
  result = qword_3165A8;
  if (!qword_3165A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CardInfo.init(options:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for CardInfo() + 20);
  result = sub_2601D0();
  *a2 = a1;
  return result;
}

uint64_t CardInfo.options.getter()
{
  v1 = *v0;
  v2 = *(type metadata accessor for CardInfo() + 20);

  v17 = &type metadata for String;
  *&v16 = sub_2601C0();
  *(&v16 + 1) = v3;
  sub_FBD8(&v16, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v1;
  v5 = v15;
  v6 = sub_17450(v14, v15);
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  sub_17CD8(*v9, v9[1], 0x65636E6174736E69, 0xEA00000000006449, isUniquelyReferenced_nonNull_native, &v13);
  sub_3080(v14);
  return v13;
}

uint64_t sub_17450(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t CardInfo.init(with:alwaysPresentNewCardSet:)@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v67 = a3;
  v4 = sub_2607B0();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  __chkstk_darwin(v4);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_322C70, &qword_272AD0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v58 - v9;
  v11 = sub_260060();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CardInfo();
  v65 = *(v16 - 8);
  v66 = v16;
  v17 = *(v65 + 64);
  __chkstk_darwin(v16);
  v63 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[4];
  sub_2E18(a1, a1[3]);
  sub_2608C0();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v61 = v4;
    sub_17EBC(v10);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v20 = a1[4];
    sub_2E18(a1, a1[3]);
    v21 = sub_2608B0();
    if (v21)
    {
      v22 = v21;
      sub_2EF0(&qword_316540, &qword_268400);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2683F0;
      *(inited + 32) = 25705;
      *(inited + 40) = 0xE200000000000000;
      v24 = a1[4];
      sub_2E18(a1, a1[3]);
      v25 = *(v24 + 8);
      *(inited + 48) = sub_2606E0();
      *(inited + 56) = v26;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 7107189;
      *(inited + 88) = 0xE300000000000000;
      *(inited + 96) = sub_260020();
      *(inited + 104) = v27;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 0x656372756F736572;
      *(inited + 136) = 0xE800000000000000;
      v28 = sub_2EF0(&qword_316548, &qword_268408);
      *(inited + 144) = v22;
      *(inited + 168) = v28;
      *(inited + 176) = 0xD000000000000017;
      *(inited + 184) = 0x8000000000290310;
      *(inited + 216) = &type metadata for Bool;
      *(inited + 192) = v64 & 1;
      v29 = sub_EAA0(inited);
      swift_setDeallocating();
      sub_2EF0(&qword_3161C0, &qword_267FA0);
      swift_arrayDestroy();
      v30 = v66;
      v31 = v63;
      v32 = v63 + *(v66 + 20);
      sub_2601D0();
      (*(v12 + 8))(v15, v11);
      goto LABEL_14;
    }

    v61 = v4;
    (*(v12 + 8))(v15, v11);
  }

  v33 = a1[4];
  sub_2E18(a1, a1[3]);
  v58 = v33;
  v34 = *(v33 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = sub_264A60();
  v62 = &v58;
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v58 - v39;
  sub_2606D0();
  v41 = *(AssociatedTypeWitness - 8);
  if ((*(v41 + 48))(v40, 1, AssociatedTypeWitness) != 1)
  {
    v68[3] = AssociatedTypeWitness;
    v68[4] = swift_getAssociatedConformanceWitness();
    sub_10934(v68);
    (*(v41 + 32))();
    swift_getAssociatedConformanceWitness();
    v42 = sub_260800();
    v44 = v43;
    sub_3080(v68);
    if (!v44)
    {
      goto LABEL_16;
    }

    v45 = a1[4];
    sub_2E18(a1, a1[3]);
    v46 = sub_260860();
    if (v46)
    {
      v47 = v61;
      if (v46 != 1)
      {

        goto LABEL_16;
      }

      v48 = &enum case for MResourceType.books(_:);
    }

    else
    {
      v48 = &enum case for MResourceType.audiobooks(_:);
      v47 = v61;
    }

    v49 = *v48;
    v50 = v59;
    v51 = v60;
    v52 = *(v60 + 104);
    v61 = v47;
    v52(v59, v49, v47);
    sub_2EF0(&qword_316540, &qword_268400);
    v53 = swift_initStackObject();
    *(v53 + 32) = 0x644965726F7473;
    *(v53 + 16) = xmmword_2683F0;
    *(v53 + 40) = 0xE700000000000000;
    *(v53 + 48) = v42;
    *(v53 + 56) = v44;
    *(v53 + 72) = &type metadata for String;
    *(v53 + 80) = 1701869940;
    *(v53 + 88) = 0xE400000000000000;
    *(v53 + 96) = sub_2607A0();
    *(v53 + 104) = v54;
    *(v53 + 120) = &type metadata for String;
    *(v53 + 128) = 0x446B6E694C736168;
    *(v53 + 136) = 0xEB00000000617461;
    *(v53 + 144) = 1;
    *(v53 + 168) = &type metadata for Bool;
    *(v53 + 176) = 0xD000000000000017;
    *(v53 + 184) = 0x8000000000290310;
    *(v53 + 216) = &type metadata for Bool;
    *(v53 + 192) = v64 & 1;
    v29 = sub_EAA0(v53);
    swift_setDeallocating();
    sub_2EF0(&qword_3161C0, &qword_267FA0);
    swift_arrayDestroy();
    v30 = v66;
    v31 = v63;
    v55 = v63 + *(v66 + 20);
    sub_2601D0();
    (*(v51 + 8))(v50, v61);
LABEL_14:
    *v31 = v29;
    v56 = v67;
    sub_17FA8(v31, v67);
    (*(v65 + 56))(v56, 0, 1, v30);
    return sub_3080(a1);
  }

  (*(v37 + 8))(v40, v36);
LABEL_16:
  sub_3080(a1);
  return (*(v65 + 56))(v67, 1, 1, v66);
}

_OWORD *sub_17CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v30 = &type metadata for String;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v10 = *a6;
  v12 = sub_D410(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a5 & 1) != 0)
  {
LABEL_7:
    v18 = *a6;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 32 * v12);
      sub_3080(v19);
      return sub_FBD8(&v29, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a5 & 1) == 0)
  {
    sub_14EC2C();
    goto LABEL_7;
  }

  sub_14D5DC(v15, a5 & 1);
  v21 = *a6;
  v22 = sub_D410(a3, a4);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_264FB0();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *a6;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = sub_17450(&v29, &type metadata for String);
  v25 = *(*(&type metadata for String - 1) + 64);
  __chkstk_darwin(v24);
  v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  sub_17F24(v12, a3, a4, *v27, v27[1], v18);

  return sub_3080(&v29);
}

uint64_t sub_17EBC(uint64_t a1)
{
  v2 = sub_2EF0(&qword_322C70, &qword_272AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_17F24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_FBD8(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_17FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18020(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2601E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_180E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2601E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_18184()
{
  sub_18208();
  if (v0 <= 0x3F)
  {
    sub_2601E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18208()
{
  if (!qword_3165B8)
  {
    sub_2F9C(&unk_3165C0, &qword_28B080);
    v0 = sub_2642E0();
    if (!v1)
    {
      atomic_store(v0, &qword_3165B8);
    }
  }
}

double ShelfGridBlurEdgeMaskView.insets.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  return result;
}

void GenericGeometryReference.init(frame:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

__n128 GenericGeometryReferenceBuilder.makeReference(context:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t GeometryCache.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_EBD0(&_swiftEmptyArrayStorage);
  sub_2EF0(&qword_316608, &unk_268430);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t GeometryCache.init()()
{
  v1 = sub_EBD0(&_swiftEmptyArrayStorage);
  sub_2EF0(&qword_316608, &unk_268430);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

void sub_18394(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1AFF0((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

double sub_183F0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v5 = sub_D488(a2);
    if (v6)
    {
      sub_30CC(*(v4 + 56) + 40 * v5, a3);
    }

    else
    {
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1846C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_F7E4(a2, v6);
  sub_30CC(a3, v5);
  return sub_D180(v5, v6);
}

uint64_t GeometryCache.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t GeometryCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t GeometryCache.size(for:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1C680((v1 + 16), v7);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    sub_2E18(v7, v8);
    (*(v3 + 8))(v2, v3);
    v5 = v4;
    sub_3080(v7);
  }

  else
  {
    sub_8E80(v7, &qword_316110, &qword_267F00);
    return 0;
  }

  return v5;
}

uint64_t sub_18634()
{
  sub_1C238();
  sub_261CB0();
  return v1;
}

uint64_t View.geometryCache(_:)()
{
  swift_getKeyPath();

  sub_262A90();
}

uint64_t sub_186F8@<X0>(void *a1@<X8>)
{
  sub_1C238();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_18748(uint64_t *a1)
{
  v2 = *a1;
  sub_1C238();

  return sub_261CC0();
}

uint64_t View.geometryCache(from:)()
{
  swift_getKeyPath();
  type metadata accessor for GeometryCache();
  sub_263C70();
  sub_264190();
  sub_262A90();
}

uint64_t View.cacheGeometry<A>(for:referenceBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = a5;
  v18[0] = a3;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CacheGeometryViewModifier();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v18 - v15;
  sub_1B09C(a1, v19);
  (*(v8 + 16))(v11, a2, a4);
  sub_18A14(v19, v11, a4, v16);
  sub_262E30();
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_18A14@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 40) = 0;
  *(a4 + 48) = swift_getKeyPath();
  *(a4 + 56) = 0;
  *(a4 + 64) = swift_getKeyPath();
  *(a4 + 72) = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 1;
  sub_18CA0(v16, v15);
  v8 = v15[1];
  *(a4 + 80) = v15[0];
  *(a4 + 96) = v8;
  v9 = *a1;
  v10 = a1[1];
  *(a4 + 112) = v15[2];
  *(a4 + 128) = v9;
  *(a4 + 144) = v10;
  *(a4 + 160) = *(a1 + 4);
  v11 = type metadata accessor for CacheGeometryViewModifier();
  v12 = *(*(a3 - 8) + 32);
  v13 = a4 + *(v11 + 52);

  return v12(v13, a2, a3);
}

BOOL sub_18B88(uint64_t a1, uint64_t a2)
{
  sub_1B09C(a1, v9);
  sub_1B09C(a2, &v11);
  if (v10)
  {
    sub_1B09C(v9, v8);
    if (*(&v12 + 1))
    {
      v6[0] = v11;
      v6[1] = v12;
      v7 = v13;
      v4 = sub_264B50();
      sub_F778(v6);
      sub_F778(v8);
      sub_8E80(v9, &qword_316610, &qword_268BA0);
      if ((v4 & 1) == 0)
      {
        return 0;
      }

      return CGRectEqualToRect(*(a1 + 40), *(a2 + 40));
    }

    sub_F778(v8);
  }

  else if (!*(&v12 + 1))
  {
    sub_8E80(v9, &qword_316610, &qword_268BA0);
    return CGRectEqualToRect(*(a1 + 40), *(a2 + 40));
  }

  sub_8E80(v9, &qword_316880, &qword_2688B8);
  return 0;
}

double sub_18CA0@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 32);
  sub_2EF0(&qword_3167E0, qword_268710);
  sub_2631D0();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

BOOL sub_18D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_18B88(a1, a2);
}

uint64_t sub_18D20@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a1;
  v114 = a3;
  swift_getWitnessTable();
  v4 = sub_2620B0();
  v88 = *(v4 - 8);
  v5 = *(v88 + 64);
  v6 = __chkstk_darwin(v4);
  v87 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v86 = &v85 - v9;
  v103 = a2;
  v10 = *(a2 - 8);
  a2 -= 8;
  v104 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v100 = v12;
  v102 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  type metadata accessor for CacheGeometryViewModifier.KeyFramePair();
  swift_getWitnessTable();
  sub_262280();
  v15 = sub_261730();
  WitnessTable = swift_getWitnessTable();
  v134 = &protocol witness table for EmptyView;
  v135 = WitnessTable;
  v17 = swift_getWitnessTable();
  v105 = v15;
  v93 = v17;
  sub_261F60();
  v18 = sub_261730();
  v94 = *(v18 - 8);
  v19 = *(v94 + 64);
  __chkstk_darwin(v18);
  v115 = &v85 - v20;
  v21 = sub_261730();
  v98 = *(v21 - 8);
  v22 = *(v98 + 64);
  __chkstk_darwin(v21);
  v97 = &v85 - v23;
  v24 = sub_261730();
  v101 = *(v24 - 8);
  v25 = *(v101 + 64);
  __chkstk_darwin(v24);
  v116 = &v85 - v26;
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v120 = v27;
  v132 = v27;
  v133 = v28;
  v95 = v18;
  v90 = swift_getWitnessTable();
  v130 = v90;
  v131 = &protocol witness table for _AppearanceActionModifier;
  v99 = v21;
  v91 = swift_getWitnessTable();
  v128 = v91;
  v129 = &protocol witness table for _AppearanceActionModifier;
  v29 = swift_getWitnessTable();
  v118 = v14;
  v30 = *(v14 + 8);
  v113 = v24;
  v124 = v24;
  v125 = v13;
  v121 = v13;
  v126 = v29;
  v127 = v30;
  v111 = v30;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  v32 = *(v92 + 64);
  v33 = __chkstk_darwin(OpaqueTypeMetadata2);
  v89 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v96 = &v85 - v35;
  v36 = sub_261C90();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v85 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = OpaqueTypeMetadata2;
  v109 = sub_261F90();
  v108 = *(v109 - 8);
  v41 = *(v108 + 64);
  __chkstk_darwin(v109);
  v106 = &v85 - v42;
  v43 = *(v119 + 48);
  v44 = v119;
  LOBYTE(OpaqueTypeMetadata2) = *(v119 + 56);

  v112 = v29;
  if ((OpaqueTypeMetadata2 & 1) == 0)
  {
    sub_264900();
    v46 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    j__swift_release();
    v45 = (*(v37 + 8))(v40, v36);
    v43 = v124;
  }

  if (v43)
  {
    __chkstk_darwin(v45);
    v47 = v118;
    *(&v85 - 4) = v121;
    *(&v85 - 3) = v47;
    v48 = v47;
    *(&v85 - 2) = v44;
    *(&v85 - 1) = v43;
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    sub_2629F0();
    v93 = v4;
    v49 = v104;
    v50 = v44;
    v110 = *(v104 + 16);
    v51 = v102;
    v52 = v103;
    v110(v102, v50, v103);
    v53 = *(v49 + 80);
    v105 = (v53 + 32) & ~v53;
    v54 = (v100 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    *(v55 + 16) = v121;
    *(v55 + 24) = v48;
    v104 = *(v49 + 32);
    (v104)(v55 + ((v53 + 32) & ~v53), v51, v52);
    v117 = v43;
    *(v55 + v54) = v43;

    v56 = v97;
    v57 = v95;
    v58 = v115;
    sub_262AB0();

    (*(v94 + 8))(v58, v57);
    v110(v51, v119, v52);
    v59 = swift_allocObject();
    v60 = v118;
    *(v59 + 16) = v121;
    *(v59 + 24) = v60;
    (v104)(v59 + v105, v51, v52);
    *(v59 + v54) = v117;

    v61 = v99;
    sub_262E40();

    (*(v98 + 8))(v56, v61);
    v62 = *(v52 + 52);
    v110(v51, v119, v52);
    v63 = v121;
    v64 = swift_allocObject();
    v65 = v118;
    *(v64 + 16) = v63;
    *(v64 + 24) = v65;
    (v104)(v64 + v105, v51, v52);
    *(v64 + v54) = v117;

    v66 = v89;
    v67 = v113;
    v68 = v112;
    v69 = v111;
    v70 = v116;
    sub_262E50();

    (*(v101 + 8))(v70, v67);
    v124 = v67;
    v125 = v63;
    v126 = v68;
    v127 = v69;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v72 = v96;
    v73 = v107;
    sub_1609C(v66, v107, OpaqueTypeConformance2);
    v74 = *(v92 + 8);
    v74(v66, v73);
    sub_1609C(v72, v73, OpaqueTypeConformance2);
    v75 = v106;
    sub_1D738(v66, v73);

    v74(v66, v73);
    v74(v72, v73);
  }

  else
  {
    v76 = v86;
    v77 = v120;
    sub_1609C(v110, v4, v120);
    v78 = v87;
    sub_1609C(v76, v4, v77);
    v67 = v113;
    v124 = v113;
    v125 = v121;
    v68 = v112;
    v69 = v111;
    v126 = v112;
    v127 = v111;
    swift_getOpaqueTypeConformance2();
    v79 = v106;
    sub_1D830(v78, v107, v4);
    v80 = *(v88 + 8);
    v80(v78, v4);
    v81 = v4;
    v75 = v79;
    v80(v76, v81);
  }

  v124 = v67;
  v125 = v121;
  v126 = v68;
  v127 = v69;
  v122 = swift_getOpaqueTypeConformance2();
  v123 = v120;
  v82 = v109;
  v83 = swift_getWitnessTable();
  sub_1609C(v75, v82, v83);
  return (*(v108 + 8))(v75, v82);
}

uint64_t sub_19A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  *&v27 = a4;
  v24 = a1;
  v25 = a2;
  v7 = type metadata accessor for CacheGeometryViewModifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v23 = *(v8 + 16);
  v23(&v21 - v10, a1, v7);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v14 = v27;
  *(v13 + 16) = a3;
  *(v13 + 24) = v14;
  v22 = *(v8 + 32);
  v22(v13 + v12, v11, v7);
  v23(v11, v24, v7);
  v15 = swift_allocObject();
  v16 = v27;
  *(v15 + 16) = a3;
  *(v15 + 24) = v16;
  v22(v15 + v12, v11, v7);
  *(v15 + ((v12 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  type metadata accessor for CacheGeometryViewModifier.KeyFramePair();

  swift_getWitnessTable();
  sub_262B90();

  v30 = v33;
  v27 = v34;
  v31 = v34;
  v32 = v35;
  sub_262280();
  v17 = sub_261730();
  WitnessTable = swift_getWitnessTable();
  v28 = &protocol witness table for EmptyView;
  v29 = WitnessTable;
  v19 = swift_getWitnessTable();
  sub_1609C(&v30, v17, v19);

  v33 = v36;
  v27 = v37;
  v34 = v37;
  v35 = v38;
  sub_1609C(&v33, v17, v19);
}

uint64_t sub_19DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B09C(a2 + 128, v12);
  v5 = type metadata accessor for CacheGeometryViewModifier();
  result = sub_19E3C(a1, v5);
  v7 = v12[1];
  *a3 = v12[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v13;
  *(a3 + 40) = v8;
  *(a3 + 48) = v9;
  *(a3 + 56) = v10;
  *(a3 + 64) = v11;
  return result;
}

uint64_t sub_19E3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_262070();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261C90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v16 = *(*(a2 + 24) + 32);
  v17 = v3 + *(a2 + 52);
  v16(&v39, v15);
  if (v39)
  {
    return sub_261420();
  }

  v19 = *(v3 + 64);
  if (*(v3 + 72) == 1)
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v20 = *(v3 + 64);

    sub_264900();
    v33 = v9;
    v21 = sub_2624B0();
    v9 = v33;
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v19, 0);
    (*(v11 + 8))(v14, v10);
    if (LOBYTE(v36[0]) != 1)
    {
      goto LABEL_10;
    }
  }

  sub_4081C(&v34);
  if (v35)
  {
    sub_F7CC(&v34, v36);
    v22 = v37;
    v23 = v38;
    sub_2E18(v36, v37);
    sub_2621C0();
    sub_261440();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    (*(v6 + 8))(v9, v5);
    (*(v23 + 8))(v22, v23, v25, v27, v29, v31);
    return sub_3080(v36);
  }

  sub_8E80(&v34, &qword_3167B8, &qword_268700);
LABEL_10:
  if (qword_315890 != -1)
  {
    swift_once();
  }

  v32 = sub_261620();
  sub_B080(v32, qword_3165F0);
  return sub_261430();
}

uint64_t sub_1A1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v29 - v13;
  v15 = sub_261C90();
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  __chkstk_darwin(v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B09C(a1, &v37);
  if (!*(&v38 + 1))
  {
    return sub_8E80(&v37, &qword_316610, &qword_268BA0);
  }

  v40[0] = v37;
  v40[1] = v38;
  v41 = v39;
  v19 = *(a1 + 40);
  v33 = *(a1 + 56);
  v34 = v19;
  v20 = type metadata accessor for CacheGeometryViewModifier();
  v21 = *(a5 + 32);
  v32 = *(v20 + 52);
  v21(&v37, a4, a5);
  v22 = v37;
  v23 = *(a2 + 64);
  if (*(a2 + 72) != 1)
  {
    v24 = *(a2 + 64);
    v30 = v37;

    sub_264900();
    v29 = v15;
    v25 = sub_2624B0();
    v31 = a3;
    v26 = v25;
    sub_260D10();

    a3 = v31;
    sub_261C80();
    swift_getAtKeyPath();
    sub_4054(v23, 0);
    (*(v35 + 8))(v18, v29);
    v22 = v30;
    LOBYTE(v23) = v36;
  }

  v38 = v33;
  v37 = v34;
  LOBYTE(v39) = v22;
  BYTE1(v39) = v23 & 1;
  (*(a5 + 40))(&v37, a4, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1AF3C(v14, v40, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  return sub_F778(v40);
}

uint64_t sub_1A51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B09C(a1 + 128, &v13);
  if (!*(&v14 + 1))
  {
    return sub_8E80(&v13, &qword_316610, &qword_268BA0);
  }

  v17[0] = v13;
  v17[1] = v14;
  v18 = v15;
  v5 = *(a2 + 16);
  __chkstk_darwin(v4);
  os_unfair_lock_lock((v5 + 24));
  sub_1C680((v5 + 16), &v13);
  os_unfair_lock_unlock((v5 + 24));
  v6 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    v7 = v15;
    sub_2E18(&v13, *(&v14 + 1));
    (*(v7 + 8))(v6, v7);
    sub_3080(&v13);
  }

  else
  {
    sub_8E80(&v13, &qword_316110, &qword_267F00);
  }

  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  v11 = *(a1 + 96);
  v13 = *(a1 + 80);
  v14 = v11;
  LOBYTE(v15) = v9;
  v16 = v10;
  sub_2EF0(&qword_3167F0, &qword_268778);
  v12 = sub_2631F0();
  __chkstk_darwin(v12);
  os_unfair_lock_lock((v5 + 24));
  sub_1BDE0();
  os_unfair_lock_unlock((v5 + 24));
  return sub_F778(v17);
}

uint64_t sub_1A704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v12 = &v30[-v11];
  v13 = sub_261C90();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B09C(a1 + 128, &v41);
  if (!*(&v42 + 1))
  {
    return sub_8E80(&v41, &qword_316610, &qword_268BA0);
  }

  v37 = v14;
  v45[0] = v41;
  v45[1] = v42;
  v46 = v43;
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  v20 = *(a1 + 96);
  v41 = *(a1 + 80);
  v42 = v20;
  LOBYTE(v43) = v18;
  v44 = v19;
  sub_2EF0(&qword_3167F0, &qword_268778);
  sub_2631E0();
  if ((v40 & 1) == 0)
  {
    v36 = v38;
    v35 = v39;
    v21 = type metadata accessor for CacheGeometryViewModifier();
    v22 = *(a4 + 32);
    v34 = *(v21 + 52);
    v22(&v41, a3, a4);
    v23 = v41;
    v24 = *(a1 + 64);
    if ((*(a1 + 72) & 1) == 0)
    {
      v25 = *(a1 + 64);
      v31 = v41;

      sub_264900();
      v32 = v9;
      v26 = sub_2624B0();
      v33 = a2;
      v27 = v26;
      v9 = v32;
      sub_260D10();

      a2 = v33;
      sub_261C80();
      swift_getAtKeyPath();
      sub_4054(v24, 0);
      (*(v37 + 8))(v17, v13);
      v23 = v31;
      LOBYTE(v24) = v38;
    }

    v41 = v36;
    v42 = v35;
    LOBYTE(v43) = v23;
    BYTE1(v43) = v24 & 1;
    (*(a4 + 40))(&v41, a3, a4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1AF3C(v12, v45, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v12, AssociatedTypeWitness);
  }

  return sub_F778(v45);
}

uint64_t sub_1AA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v15 = v39 - v14;
  v16 = sub_261C90();
  v42 = *(v16 - 8);
  v17 = *(v42 + 64);
  __chkstk_darwin(v16);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B09C(a3 + 128, &v44);
  if (!*(&v45 + 1))
  {
    return sub_8E80(&v44, &qword_316610, &qword_268BA0);
  }

  v39[0] = v16;
  v39[1] = a2;
  v40 = v12;
  v41 = a4;
  v47[0] = v44;
  v47[1] = v45;
  v48 = v46;
  v21 = *(a4 + 16);
  __chkstk_darwin(v20);
  v39[-2] = v47;
  os_unfair_lock_lock((v21 + 24));
  sub_1C680((v21 + 16), &v44);
  os_unfair_lock_unlock((v21 + 24));
  v22 = *(&v45 + 1);
  if (*(&v45 + 1))
  {
    v23 = v46;
    sub_2E18(&v44, *(&v45 + 1));
    v24 = (*(v23 + 8))(v22, v23);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_3080(&v44);
    (*(a6 + 32))(&v44, a5, a6);
    v31 = v44;
    v32 = *(a3 + 64);
    if (*(a3 + 72) != 1)
    {
      v33 = *(a3 + 64);
      v34 = v44;

      sub_264900();
      v35 = sub_2624B0();
      sub_260D10();

      sub_261C80();
      swift_getAtKeyPath();
      sub_4054(v32, 0);
      (*(v42 + 8))(v19, v39[0]);
      v31 = v34;
      LOBYTE(v32) = v43;
    }

    v36 = v40;
    *&v44 = v24;
    *(&v44 + 1) = v26;
    *&v45 = v28;
    *(&v45 + 1) = v30;
    LOBYTE(v46) = v31;
    BYTE1(v46) = v32 & 1;
    (*(a6 + 40))(&v44, a5, a6);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1AF3C(v15, v47, v41, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v36 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    sub_8E80(&v44, &qword_316110, &qword_267F00);
  }

  return sub_F778(v47);
}

uint64_t sub_1AE78()
{
  v0 = sub_261620();
  sub_B600(v0, qword_3165F0);
  v1 = sub_B080(v0, qword_3165F0);
  sub_264B70();
  return (*(*(v0 - 8) + 104))(v1, enum case for CoordinateSpace.named(_:), v0);
}

uint64_t sub_1AF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[3] = a4;
  v11[4] = a5;
  v8 = sub_10934(v11);
  (*(*(a4 - 8) + 16))(v8, a1, a4);
  v9 = *(a3 + 16);
  os_unfair_lock_lock(v9 + 6);
  sub_1BDC4(&v9[4]);
  os_unfair_lock_unlock(v9 + 6);
  return sub_3080(v11);
}

uint64_t sub_1B00C@<X0>(void *a1@<X8>)
{
  sub_1C238();
  result = sub_261CB0();
  *a1 = v3;
  return result;
}

uint64_t sub_1B09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316610, &qword_268BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B110()
{
  result = qword_316618;
  if (!qword_316618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316618);
  }

  return result;
}

unint64_t sub_1B180(uint64_t a1)
{
  result = sub_1B1A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B1A8()
{
  result = qword_316650;
  if (!qword_316650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316650);
  }

  return result;
}

__n128 sub_1B248(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B25C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B2A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B3A4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  type metadata accessor for CacheGeometryViewModifier();
  sub_261730();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B468(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  sub_2F9C(a2, a3);
  sub_261730();
  sub_8E38(a4, a2, a3);
  return swift_getWitnessTable();
}

void sub_1B510(uint64_t a1)
{
  sub_1BAE4(319, &qword_3167B0, &qword_3167B8, &qword_268700, &type metadata accessor for Environment);
  if (v2 <= 0x3F)
  {
    sub_1BAE4(319, &qword_3167C0, &qword_3167C8, &qword_268708, &type metadata accessor for Environment);
    if (v3 <= 0x3F)
    {
      sub_1BB48(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
      if (v4 <= 0x3F)
      {
        sub_1BAE4(319, &qword_3167D8, &qword_3167E0, qword_268710, &type metadata accessor for State);
        if (v5 <= 0x3F)
        {
          sub_1BB48(319, &qword_3167E8, &type metadata for AnyHashable, &type metadata accessor for Optional);
          if (v6 <= 0x3F)
          {
            v7 = *(a1 + 16);
            swift_checkMetadataState();
            if (v8 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B6C4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v10 = ((v6 + 168) & ~v6) + v7;
  v11 = 8 * (((v6 - 88) & ~v6) + v7);
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = a1 & 0xFFFFFFFFFFFFFFF8;
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((((v16 + 135) & 0xFFFFFFFFFFFFFFF8) + v6 + 40) & ~v6);
      }

      v17 = *(v16 + 120);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      v18 = v17 - 1;
      if (v18 < 0)
      {
        v18 = -1;
      }

      return (v18 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1B868(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 168) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * (((v9 - 88) & ~v9) + *(*(*(a4 + 16) - 8) + 64)))) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * (((v9 - 88) & ~v9) + *(*(*(a4 + 16) - 8) + 64))));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = a1 & 0xFFFFFFFFFFFFFFF8;
  if (v7 > 0x7FFFFFFE)
  {
    v20 = *(v6 + 56);

    v20((((v19 + 135) & 0xFFFFFFFFFFFFFFF8) + v9 + 40) & ~v9);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(v19 + 120) = 0;
    *(v19 + 104) = 0u;
    *(v19 + 88) = 0u;
    *(v19 + 80) = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(v19 + 120) = a2;
  }
}

void sub_1BAE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2F9C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BB48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BC38(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for CacheGeometryViewModifier() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v5, v6, v2, v3);
}

uint64_t sub_1BCFC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for CacheGeometryViewModifier() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1AA9C(a1, a2, v2 + v8, v9, v5, v6);
}

uint64_t sub_1BDE0()
{
  sub_F7E4(*(v0 + 16), v4);
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  return sub_D180(v2, v4);
}

uint64_t sub_1BE40()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for CacheGeometryViewModifier();
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = (v0 + v4);
  if (*(v0 + v4 + 40))
  {
    if (v6[3])
    {
      sub_3080((v0 + v4));
    }
  }

  else
  {
    v7 = *v6;
  }

  v8 = v6[6];
  v9 = *(v6 + 56);
  j__swift_release();
  sub_4054(v6[8], *(v6 + 72));
  v10 = v6[15];

  if (v6[19])
  {
    sub_3080(v6 + 16);
  }

  (*(*(v2 - 8) + 8))(v6 + *(v3 + 52), v2);

  return swift_deallocObject();
}

uint64_t sub_1BF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for CacheGeometryViewModifier() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_19DAC(a1, v8, a2);
}

uint64_t sub_1C01C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for CacheGeometryViewModifier();
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = (v0 + v4);
  if (*(v0 + v4 + 40))
  {
    if (v6[3])
    {
      sub_3080((v0 + v4));
    }
  }

  else
  {
    v7 = *v6;
  }

  v8 = v6[6];
  v9 = *(v6 + 56);
  j__swift_release();
  sub_4054(v6[8], *(v6 + 72));
  v10 = v6[15];

  if (v6[19])
  {
    sub_3080(v6 + 16);
  }

  (*(*(v2 - 8) + 8))(v6 + *(v3 + 52), v2);
  v11 = *(v0 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1C170(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for CacheGeometryViewModifier() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A1DC(a1, v1 + v6, v7, v3, v4);
}

unint64_t sub_1C238()
{
  result = qword_3167F8[0];
  if (!qword_3167F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3167F8);
  }

  return result;
}

uint64_t sub_1C29C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C2D8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1C2FC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C320(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C37C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1C3E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for CacheGeometryViewModifier();
  swift_getWitnessTable();
  sub_2620B0();
  type metadata accessor for CacheGeometryViewModifier.KeyFramePair();
  swift_getWitnessTable();
  sub_262280();
  sub_261730();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_261F60();
  sub_261730();
  sub_261730();
  sub_261730();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v3 = *(v2 + 8);
  swift_getOpaqueTypeMetadata2();
  sub_261F90();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

Swift::Int sub_1C698(uint64_t a1)
{
  sub_265050();
  sub_262730();
  sub_1D6F0(&qword_316188, &type metadata accessor for Font.TextStyle);
  sub_264330();
  v2 = *(a1 + 20);
  sub_261690();
  sub_1D6F0(&qword_316190, &type metadata accessor for DynamicTypeSize);
  sub_264330();
  return sub_265080();
}

uint64_t sub_1C784(uint64_t a1, uint64_t a2)
{
  sub_262730();
  sub_1D6F0(&qword_316188, &type metadata accessor for Font.TextStyle);
  sub_264330();
  v3 = *(a2 + 20);
  sub_261690();
  sub_1D6F0(&qword_316190, &type metadata accessor for DynamicTypeSize);
  return sub_264330();
}

Swift::Int sub_1C858(uint64_t a1, uint64_t a2)
{
  sub_265050();
  sub_262730();
  sub_1D6F0(&qword_316188, &type metadata accessor for Font.TextStyle);
  sub_264330();
  v3 = *(a2 + 20);
  sub_261690();
  sub_1D6F0(&qword_316190, &type metadata accessor for DynamicTypeSize);
  sub_264330();
  return sub_265080();
}

uint64_t sub_1C940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_262720() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return sub_261680();
}

int *sub_1C9A8()
{
  result = sub_ED04(&_swiftEmptyArrayStorage);
  off_316888[0] = result;
  return result;
}

id sub_1C9D0()
{
  v1 = v0;
  v2 = sub_262730();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Font.TextStyle.largeTitle(_:))
  {
    v8 = &kCTUIFontTextStyleTitle0;
  }

  else if (v7 == enum case for Font.TextStyle.title(_:))
  {
    v8 = &kCTUIFontTextStyleTitle1;
  }

  else if (v7 == enum case for Font.TextStyle.title2(_:))
  {
    v8 = &kCTUIFontTextStyleTitle2;
  }

  else if (v7 == enum case for Font.TextStyle.title3(_:))
  {
    v8 = &kCTUIFontTextStyleTitle3;
  }

  else if (v7 == enum case for Font.TextStyle.headline(_:))
  {
    v8 = &kCTUIFontTextStyleHeadline;
  }

  else if (v7 == enum case for Font.TextStyle.subheadline(_:))
  {
    v8 = &kCTUIFontTextStyleSubhead;
  }

  else if (v7 == enum case for Font.TextStyle.body(_:))
  {
    v8 = &kCTUIFontTextStyleBody;
  }

  else if (v7 == enum case for Font.TextStyle.callout(_:))
  {
    v8 = &kCTUIFontTextStyleCallout;
  }

  else if (v7 == enum case for Font.TextStyle.footnote(_:))
  {
    v8 = &kCTUIFontTextStyleFootnote;
  }

  else if (v7 == enum case for Font.TextStyle.caption(_:))
  {
    v8 = &kCTUIFontTextStyleCaption1;
  }

  else
  {
    if (v7 != enum case for Font.TextStyle.caption2(_:))
    {
      v11 = *(v3 + 8);
      v12 = kCTUIFontTextStyleBody;
      v11(v6, v2);
      return v12;
    }

    v8 = &kCTUIFontTextStyleCaption2;
  }

  v9 = *v8;

  return v9;
}

id sub_1CC70()
{
  v1 = v0;
  v2 = sub_261690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DynamicTypeSize.xSmall(_:))
  {
    v8 = &kCTFontContentSizeCategoryXS;
  }

  else if (v7 == enum case for DynamicTypeSize.small(_:))
  {
    v8 = &kCTFontContentSizeCategoryS;
  }

  else if (v7 == enum case for DynamicTypeSize.medium(_:))
  {
    v8 = &kCTFontContentSizeCategoryM;
  }

  else if (v7 == enum case for DynamicTypeSize.large(_:))
  {
    v8 = &kCTFontContentSizeCategoryL;
  }

  else if (v7 == enum case for DynamicTypeSize.xLarge(_:))
  {
    v8 = &kCTFontContentSizeCategoryXL;
  }

  else if (v7 == enum case for DynamicTypeSize.xxLarge(_:))
  {
    v8 = &kCTFontContentSizeCategoryXXL;
  }

  else if (v7 == enum case for DynamicTypeSize.xxxLarge(_:))
  {
    v8 = &kCTFontContentSizeCategoryXXXL;
  }

  else if (v7 == enum case for DynamicTypeSize.accessibility1(_:))
  {
    v8 = &kCTFontContentSizeCategoryAccessibilityM;
  }

  else if (v7 == enum case for DynamicTypeSize.accessibility2(_:))
  {
    v8 = &kCTFontContentSizeCategoryAccessibilityL;
  }

  else if (v7 == enum case for DynamicTypeSize.accessibility3(_:))
  {
    v8 = &kCTFontContentSizeCategoryAccessibilityXL;
  }

  else if (v7 == enum case for DynamicTypeSize.accessibility4(_:))
  {
    v8 = &kCTFontContentSizeCategoryAccessibilityXXL;
  }

  else
  {
    if (v7 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      v11 = *(v3 + 8);
      v12 = kCTFontContentSizeCategoryL;
      v11(v6, v2);
      return v12;
    }

    v8 = &kCTFontContentSizeCategoryAccessibilityXXXL;
  }

  v9 = *v8;

  return v9;
}

double sub_1CF30(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316890, &qword_2725A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_261690();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s8RatioKeyVMa();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_262730();
  (*(*(v18 - 8) + 16))(v17, a1, v18);
  (*(v9 + 16))(&v17[*(v14 + 28)], a2, v8);
  if (qword_315898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v19 = off_316888[0];
  if (*(off_316888[0] + &dword_10) && (v20 = sub_D4CC(v17), (v21 & 1) != 0))
  {
    v22 = *(*&stru_20.segname[v19 + 16] + 8 * v20);
  }

  else
  {
    swift_endAccess();
    v33 = 0.0;
    v34 = 0.0;
    v23 = sub_1C9D0();
    v24 = sub_1CC70();
    CTFontDescriptorGetTextStyleSize();

    v25 = sub_1C9D0();
    if (![objc_opt_self() _defaultContentSizeCategory])
    {
      v26 = UIContentSizeCategoryLarge;
    }

    sub_2616A0();
    v27 = *(v9 + 48);
    if (v27(v7, 1, v8) == 1)
    {
      (*(v9 + 104))(v12, enum case for DynamicTypeSize.large(_:), v8);
      if (v27(v7, 1, v8) != 1)
      {
        sub_1D3A8(v7);
      }
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
    }

    v28 = sub_1CC70();
    (*(v9 + 8))(v12, v8);
    CTFontDescriptorGetTextStyleSize();

    v22 = v34 / v33;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = off_316888[0];
    off_316888[0] = 0x8000000000000000;
    sub_DF94(v17, isUniquelyReferenced_nonNull_native, v22);
    off_316888[0] = v32;
  }

  swift_endAccess();
  sub_FABC(v17);
  return v22;
}

uint64_t _s8RatioKeyVMa()
{
  result = qword_3168F0;
  if (!qword_3168F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D3A8(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316890, &qword_2725A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262730();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_261690();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D528(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_262730();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_261690();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D624()
{
  result = sub_262730();
  if (v1 <= 0x3F)
  {
    result = sub_261690();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D738(uint64_t a1, uint64_t a2)
{
  v4 = sub_261F70();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_261F80();
}

uint64_t sub_1D830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_261F70();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_261F80();
}

void *sub_1D928(uint64_t a1)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 36);
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
    v10 = v9;
  }

  else
  {

    sub_264900();
    v11 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_1FED0(v9, 0);
    (*(v4 + 8))(v7, v3);
    return v13[1];
  }

  return v9;
}

uint64_t sub_1DA84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2EF0(&qword_316930, &qword_2689A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v18 - v12);
  sub_8198(v2 + *(a1 + 40), &v18 - v12, &qword_316930, &qword_2689A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_260640();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_264900();
    v17 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1DC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_261C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_8198(v2 + *(a1 + 44), v13, &qword_316BB0, &qword_268BA8);
  if (v15 == 1)
  {
    v11 = v13[1];
    *a2 = v13[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v14;
  }

  else
  {
    sub_264900();
    v12 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

__n128 BooksActionButton.init(role:action:label:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_2604E0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  sub_2604C0();
  sub_260420();
  v12 = type metadata accessor for BooksActionButton();
  v13 = a5 + v12[9];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v12[10];
  *(a5 + v14) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v15 = a5 + v12[11];
  *v15 = swift_getKeyPath();
  *(v15 + 40) = 0;
  v16 = (a5 + v12[12]);
  v17 = type metadata accessor for CustomLabelButtonContent();
  v16[3] = v17;
  v16[4] = swift_getWitnessTable();
  v18 = sub_10934(v16);
  sub_1FEDC(a1, v18);
  v19 = (v18 + *(v17 + 36));
  *v19 = a3;
  v19[1] = a4;
  v20 = a5 + v12[13];
  result = *a2;
  v22 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v22;
  *(v20 + 32) = *(a2 + 32);
  return result;
}

__n128 BooksActionButton.init<>(role:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2604E0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_2604C0();
  sub_260420();
  v8 = sub_2EF0(&qword_316938, &qword_274150);
  v9 = a3 + v8[9];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = v8[10];
  *(a3 + v10) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v11 = a3 + v8[11];
  *v11 = swift_getKeyPath();
  *(v11 + 40) = 0;
  v12 = (a3 + v8[12]);
  v12[3] = type metadata accessor for DefaultLabelButtonContent();
  v12[4] = sub_1FE80(&qword_316940, type metadata accessor for DefaultLabelButtonContent);
  v13 = sub_10934(v12);
  v14 = sub_2610B0();
  (*(*(v14 - 8) + 32))(v13, a1, v14);
  v15 = a3 + v8[13];
  result = *a2;
  v17 = *(a2 + 16);
  *v15 = *a2;
  *(v15 + 16) = v17;
  *(v15 + 32) = *(a2 + 32);
  return result;
}

uint64_t BooksActionButton.init<A>(_:role:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a5;
  v29 = a4;
  v30 = a3;
  v32 = a1;
  v33 = a2;
  v9 = sub_2604E0();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2EF0(&qword_316948, &qword_2689E0);
  v16 = (a6 + v15[12]);
  v34 = sub_2EF0(&qword_316950, &qword_2689E8);
  v16[3] = v34;
  v16[4] = sub_8E38(&qword_316958, &qword_316950, &qword_2689E8);
  v31 = sub_10934(v16);
  sub_8198(a2, v31, &qword_316960, &unk_2689F0);
  v17 = v30;
  sub_8198(v30, a6 + v15[13], &qword_315D38, &unk_266E30);
  v18 = v32;
  v19 = v29;
  (*(v12 + 16))(v14, v32, v29);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = swift_allocObject();
  v22 = v35;
  *(v21 + 16) = v19;
  *(v21 + 24) = v22;
  (*(v12 + 32))(v21 + v20, v14, v19);
  sub_2604C0();
  sub_260420();
  v23 = a6 + v15[9];
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  v24 = v15[10];
  *(a6 + v24) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v25 = a6 + v15[11];
  *v25 = swift_getKeyPath();
  *(v25 + 40) = 0;
  v26 = (v31 + *(v34 + 36));
  *v26 = sub_1F3E4;
  v26[1] = v21;
  sub_8E80(v17, &qword_315D38, &unk_266E30);
  sub_8E80(v33, &qword_316960, &unk_2689F0);
  return (*(v12 + 8))(v18, v19);
}

uint64_t sub_1E4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_2628F0();
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v10;
  return result;
}

uint64_t sub_1E598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_260640();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v32 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316B98, &unk_275840);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = sub_260620();
  v33 = *(v13 - 8);
  v14 = *(v33 + 64);
  __chkstk_darwin(v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D928(a1);
  if (v17)
  {
    v18 = v17;
    v31 = v6;
    v19 = *(a1 + 52);
    sub_8198(v2 + v19, v34, &qword_315D38, &unk_266E30);
    if (v35)
    {
      sub_2EF0(&qword_316A30, &qword_2697B0);
      sub_2EF0(&qword_316BA8, &unk_275850);
      if (swift_dynamicCast())
      {
        if (*(&v37 + 1))
        {
          v29 = v5;
          v30 = a2;
          sub_F7CC(&v36, v39);
          v20 = v40;
          v21 = v41;
          sub_2E18(v39, v40);
          (*(v21 + 16))(v20, v21);
          v22 = v33;
          if ((*(v33 + 48))(v12, 1, v13) != 1)
          {
            (*(v22 + 32))(v16, v12, v13);
            v28[0] = v41;
            v28[1] = sub_2E18(v39, v40);
            v38 = 0;
            v36 = 0u;
            v37 = 0u;
            v25 = v18;
            v26 = v32;
            sub_1DA84(a1, v32);
            sub_1DC88(a1, v34);
            sub_260400();
            v27 = *(v28[0] + 8);
            sub_263860();

            sub_8E80(v34, &qword_316A20, &qword_268A90);
            (*(v31 + 8))(v26, v29);
            sub_8E80(&v36, &qword_316610, &qword_268BA0);
            (*(v22 + 8))(v16, v13);
            return sub_3080(v39);
          }

          sub_8E80(v12, &qword_316B98, &unk_275840);
          sub_3080(v39);
          a2 = v30;
          goto LABEL_12;
        }
      }

      else
      {
        v38 = 0;
        v36 = 0u;
        v37 = 0u;
      }
    }

    else
    {

      sub_8E80(v34, &qword_315D38, &unk_266E30);
      v36 = 0u;
      v37 = 0u;
      v38 = 0;
    }

    sub_8E80(&v36, &qword_316BA0, &unk_268B90);
LABEL_12:
    v23 = v2 + v19;
    return sub_8198(v23, a2, &qword_315D38, &unk_266E30);
  }

  v23 = v2 + *(a1 + 52);
  return sub_8198(v23, a2, &qword_315D38, &unk_266E30);
}

uint64_t BooksActionButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_260AC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = sub_2F9C(&qword_316968, &qword_268A00);
  v15 = sub_261F90();
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  __chkstk_darwin(v15);
  v18 = &v32 - v17;
  if (sub_260770())
  {
    v19 = sub_1D928(a1);
    if (!v19)
    {
      v31 = swift_allocObject();
      *(v31 + 16) = 0xD00000000000002ALL;
      *(v31 + 24) = 0x8000000000290390;
      v39[0] = sub_1F458;
      v39[1] = v31;
      sub_8E38(&qword_316970, &qword_316968, &qword_268A00);
      swift_getWitnessTable();
      sub_1D738(v39, v14);

      goto LABEL_5;
    }
  }

  v20 = (v2 + *(a1 + 48));
  v33 = v13;
  v21 = a1;
  v23 = v20[3];
  v22 = v20[4];
  sub_2E18(v20, v23);
  v34 = v14;
  sub_1E598(v21, v39);
  (*(v22 + 24))(v39, v23, v22);
  sub_8E80(v39, &qword_315D38, &unk_266E30);
  WitnessTable = swift_getWitnessTable();
  v25 = v33;
  sub_1609C(v11, v6, WitnessTable);
  v26 = *(v7 + 8);
  v26(v11, v6);
  sub_1609C(v25, v6, WitnessTable);
  sub_8E38(&qword_316970, &qword_316968, &qword_268A00);
  sub_1D830(v11, v34, v6);
  v26(v11, v6);
  v26(v25, v6);
LABEL_5:
  v27 = sub_8E38(&qword_316970, &qword_316968, &qword_268A00);
  v28 = swift_getWitnessTable();
  v37 = v27;
  v38 = v28;
  v29 = swift_getWitnessTable();
  sub_1609C(v18, v15, v29);
  return (*(v35 + 8))(v18, v15);
}

uint64_t sub_1EE64(uint64_t a1, uint64_t a2)
{
  v5 = sub_2EF0(&qword_316960, &unk_2689F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_8198(v2, &v15[-v7 - 8], &qword_316960, &unk_2689F0);
  sub_8198(a1, v15, &qword_315D38, &unk_266E30);
  v8 = (v2 + *(a2 + 36));
  v9 = *v8;
  v10 = v8[1];
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);

  return sub_260AA0();
}

uint64_t sub_1EF6C(uint64_t a1)
{
  v3 = sub_2610B0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  (*(v6 + 16))(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v1);
  sub_8198(a1, v9, &qword_315D38, &unk_266E30);
  return sub_260AB0();
}

uint64_t sub_1F05C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261A40();
  *a1 = result;
  return result;
}

uint64_t sub_1F088@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261A40();
  *a1 = result;
  return result;
}

uint64_t sub_1F15C(uint64_t a1)
{
  v2 = sub_260640();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_261A10();
}

uint64_t type metadata accessor for DefaultLabelButtonContent()
{
  result = qword_316A90;
  if (!qword_316A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1F364()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1F420()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1F458@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_841EC(a1);
}

void sub_1F4A4(uint64_t a1)
{
  sub_260410();
  if (v2 <= 0x3F)
  {
    sub_1F8AC(319, &qword_316A00, &qword_316A08, &unk_277860, &type metadata accessor for Environment);
    if (v3 <= 0x3F)
    {
      sub_1FDD4(319, &qword_316A10, &type metadata accessor for DataStack, &type metadata accessor for Environment);
      if (v4 <= 0x3F)
      {
        sub_1F8AC(319, &qword_316A18, &qword_316A20, &qword_268A90, &type metadata accessor for Environment);
        if (v5 <= 0x3F)
        {
          v7 = *(a1 + 16);
          swift_getExtendedExistentialTypeMetadata_unique();
          sub_1F8AC(319, &qword_316A28, &qword_316A30, &qword_2697B0, &type metadata accessor for Optional);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1F664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260410();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(qword_316978, &unk_268A60);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 40);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 48) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1F794(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_260410();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2EF0(qword_316978, &unk_268A60);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 48) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 40);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1F8AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2F9C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1F910(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2F9C(&qword_316968, &qword_268A00);
  sub_260AC0();
  sub_261F90();
  sub_8E38(&qword_316970, &qword_316968, &qword_268A00);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1FA10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2610B0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1FA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2610B0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1FB00()
{
  result = sub_2610B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1FB6C()
{
  sub_1FDD4(319, &qword_316B48, &type metadata accessor for ButtonRole, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_16D28();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1FC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316960, &unk_2689F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1FD10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2EF0(&qword_316960, &unk_2689F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_1FDD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1FE80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1FED0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1FEDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316960, &unk_2689F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static GridItemMetadata.titleAndAuthor(assetInfo:showOrdinal:titleLines:subtitleLines:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a1[4];
  sub_2E18(a1, a1[3]);
  v11 = sub_2609A0();
  v13 = v12;
  v14 = a1[4];
  sub_2E18(a1, a1[3]);
  v15 = sub_2609B0();
  v17 = v16;
  v20[3] = &type metadata for GridItemMetadataTitleWithSubtitle;
  v20[4] = sub_2004C();
  v18 = swift_allocObject();
  v20[0] = v18;
  v18[2] = v11;
  v18[3] = v13;
  v18[4] = v15;
  v18[5] = v17;
  v18[6] = a3;
  v18[7] = a4;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0;
  result = sub_200E0(v20, a5);
  *(a5 + 40) = a2;
  return result;
}

unint64_t sub_2004C()
{
  result = qword_316BB8;
  if (!qword_316BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316BB8);
  }

  return result;
}

uint64_t sub_200A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_200E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_316BC0, &qword_2707C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double ShelfHeaderTitleComponentModel.segue.getter@<D0>(uint64_t a1@<X8>)
{
  sub_8198(v1 + 112, v5, &qword_315D30, &qword_266E28);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t ShelfHeaderTitleComponentModel.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_315D40, &qword_288230);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for ShelfHeaderTitleComponentModel();
  sub_8198(v1 + *(v7 + 48), v6, &qword_315D40, &qword_288230);
  return sub_22148(v6, a1, &qword_315D48, &qword_266E40);
}

uint64_t type metadata accessor for ShelfHeaderTitleComponentModel()
{
  result = qword_316CA8;
  if (!qword_316CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2EF0(&qword_315D40, &qword_288230);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for ShelfHeaderTitleComponentModel();
  sub_8198(a1 + *(v8 + 48), v7, &qword_315D40, &qword_288230);
  return sub_22148(v7, a2, &qword_315D48, &qword_266E40);
}

uint64_t ShelfHeaderTitleComponentModel.init(id:title:subtitle:preheader:showTitleBelowSubtitle:thumbnailAssetResource:useSmallHeader:segue:impressionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  *(a9 + 88) = 0;
  *(a9 + 96) = 0;
  *(a9 + 104) = 0;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0;
  *(a9 + 112) = 0u;
  sub_34A0(v26, a9 + 112, &qword_315D38, &unk_266E30);
  v18 = *(type metadata accessor for ShelfHeaderTitleComponentModel() + 48);
  v19 = sub_263E50();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v20;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  *(a9 + 104) = a11;
  sub_34A0(a12, a9 + 112, &qword_315D38, &unk_266E30);
  return sub_34A0(a13, a9 + v18, &qword_315D48, &qword_266E40);
}

__n128 sub_205D0@<Q0>(__n128 *a1@<X8>)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    v4 = v3;
    v5 = sub_260830();
    sub_260810();
    if (v41)
    {
      sub_F7CC(&v40, v42);
      sub_2E18(v42, v42[3]);
      sub_260950();
      sub_30CC(v42, &v43);
      CoverViewModel.CoverImageInfo.init(assetInfo:)(&v43, v30);

      v36 = v30[4];
      v37 = v30[5];
      v38 = v30[6];
      v32 = v30[0];
      v33 = v30[1];
      v34 = v30[2];
      v35 = v30[3];
      v39.n128_u64[0] = v31;
      v39.n128_u64[1] = 0x4044000000000000;
      sub_230A8(&v32);
      v47 = v36;
      v48 = v37;
      v49 = v38;
      v50 = v39;
      v43 = v32;
      v44 = v33;
      v45 = v34;
      v46 = v35;
      v51 = v5 & 1;
      KeyedEncodingContainer.encode<A>(_:forKey:)(&v43);
      v6 = v50;
      a1[6] = v49;
      a1[7] = v6;
      a1[8].n128_u8[0] = v51;
      v7 = v46;
      a1[2] = v45;
      a1[3] = v7;
      v8 = v48;
      a1[4] = v47;
      a1[5] = v8;
      v9 = v44;
      *a1 = v43;
      a1[1] = v9;
      sub_3080(v42);
      return result;
    }

    sub_8E80(&v40, &qword_316D40, &unk_268FC0);
    if (qword_315850 != -1)
    {
      swift_once();
    }

    v11 = sub_260D50();
    sub_B080(v11, qword_315FA0);
    v12 = v4;
    v13 = sub_260D30();
    v14 = sub_2648F0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      *(v15 + 4) = v12;
      *v16 = v3;
      v17 = v12;
      _os_log_impl(&dword_0, v13, v14, "Failed to convert store asset to assetInfo: %{public}@", v15, 0xCu);
      sub_8E80(v16, &qword_316450, &qword_2681E0);
    }

    *&v30[0] = 0x4044000000000000;
    sub_23050(v30);
    v18 = [v12 pagesAreRTL];

    v32.n128_u64[0] = 0x4044000000000000;
    v32.n128_u8[8] = v18;
    sub_2307C(&v32);
    if (v5)
    {
      v19 = v30;
    }

    else
    {
      v19 = &v32;
    }

    v20 = v19[6];
    v29 = v19[7];
    v28 = v19[5];
    v21 = *v19;
    v26 = v19[1];
    v22 = v19[2];
    v27 = v19[3];
    v47 = v19[4];
    v48 = v28;
    v49 = v20;
    v50 = v29;
    v43 = v21;
    v44 = v26;
    v45 = v22;
    v46 = v27;
    v51 = v5 & 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v43);
  }

  else
  {
    sub_222DC(&v43);
  }

  v23 = v50;
  a1[6] = v49;
  a1[7] = v23;
  a1[8].n128_u8[0] = v51;
  v24 = v46;
  a1[2] = v45;
  a1[3] = v24;
  v25 = v48;
  a1[4] = v47;
  a1[5] = v25;
  result = v44;
  *a1 = v43;
  a1[1] = result;
  return result;
}

unint64_t sub_20908(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 25705;
    v5 = 0x656C746974627573;
    if (a1 != 2)
    {
      v5 = 0x6564616568657270;
    }

    if (a1)
    {
      v4 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6C6C616D53657375;
    v2 = 0x6575676573;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 <= 5u)
    {
      return 0xD000000000000016;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_20A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22D64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20A6C(uint64_t a1)
{
  v2 = sub_21E30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_20AA8(uint64_t a1)
{
  v2 = sub_21E30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShelfHeaderTitleComponentModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_2EF0(&qword_315D40, &qword_288230);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v36 - v6;
  v8 = sub_2EF0(&qword_316BC8, &qword_268BB8);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v36 - v11;
  v13 = type metadata accessor for ShelfHeaderTitleComponentModel();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[88] = 0;
  *(v17 + 7) = 0u;
  v17[104] = 0;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *(v17 + 8) = 0u;
  *(v17 + 18) = 0;
  v40 = v17 + 112;
  sub_34A0(&v43, (v17 + 112), &qword_315D38, &unk_266E30);
  v18 = *(v14 + 56);
  v19 = sub_263E50();
  v20 = *(*(v19 - 8) + 56);
  v42 = v18;
  v20(&v17[v18], 1, 1, v19);
  v22 = a1[3];
  v21 = a1[4];
  v41 = a1;
  sub_2E18(a1, v22);
  sub_21E30();
  sub_265120();
  if (v2)
  {
    v25 = v40;
    sub_3080(v41);

    sub_8E80(v25, &qword_315D30, &qword_266E28);
    return sub_8E80(&v17[v42], &qword_315D40, &qword_288230);
  }

  else
  {
    v36[3] = v4;
    v23 = v7;
    sub_2EF0(&qword_315D28, &qword_266E20);
    v46 = 0;
    sub_8E38(&qword_315D60, &qword_315D28, &qword_266E20);
    v24 = v38;
    sub_264DF0();
    v26 = v44;
    *v17 = v43;
    *(v17 + 1) = v26;
    *(v17 + 4) = v45;
    LOBYTE(v43) = 1;
    v27 = sub_264DC0();
    v28 = v40;
    *(v17 + 5) = v27;
    *(v17 + 6) = v29;
    LOBYTE(v43) = 2;
    *(v17 + 7) = sub_264D70();
    *(v17 + 8) = v30;
    LOBYTE(v43) = 3;
    v31 = sub_264D70();
    v36[2] = 0;
    *(v17 + 9) = v31;
    *(v17 + 10) = v32;
    LOBYTE(v43) = 4;
    v33 = sub_2EF0(&qword_316BD8, &qword_268BC0);
    v34 = sub_8E38(&qword_316BE0, &qword_316BD8, &qword_268BC0);
    sub_264DB0();
    v36[0] = v34;
    v36[1] = v33;
    v17[88] = v46 & 1;
    sub_2EF0(&qword_316BE8, &qword_268BC8);
    v46 = 5;
    sub_8E38(&qword_316BF0, &qword_316BE8, &qword_268BC8);
    sub_264DF0();
    *(v17 + 12) = v43;
    LOBYTE(v43) = 6;
    sub_264DB0();
    v17[104] = v46 & 1;
    sub_2EF0(&qword_315D30, &qword_266E28);
    v46 = 7;
    sub_8E38(&qword_315D68, &qword_315D30, &qword_266E28);
    sub_264DF0();
    sub_34A0(&v43, v28, &qword_315D30, &qword_266E28);
    LOBYTE(v43) = 8;
    sub_8EE0();
    sub_264DF0();
    (*(v39 + 8))(v12, v24);
    sub_34A0(v23, &v17[v42], &qword_315D40, &qword_288230);
    sub_22214(v17, v37, type metadata accessor for ShelfHeaderTitleComponentModel);
    sub_3080(v41);
    return sub_2227C(v17, type metadata accessor for ShelfHeaderTitleComponentModel);
  }
}

uint64_t sub_21290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2EF0(&qword_315D40, &qword_288230);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - v7;
  sub_8198(v2 + *(a1 + 48), &v10 - v7, &qword_315D40, &qword_288230);
  return sub_22148(v8, a2, &qword_315D48, &qword_266E40);
}

uint64_t ShelfHeaderTitleComponent.content(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_2EF0(&qword_316208, &qword_268BD0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v77 = &v70 - v8;
  v9 = sub_260BD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_316BF8, &qword_268BD8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v70 - v16;
  v18 = type metadata accessor for ShelfHeaderView();
  v19 = *(*(v18 - 1) + 64);
  v20 = __chkstk_darwin(v18);
  v22 = (&v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v20);
  __chkstk_darwin(v23);
  v26 = (&v70 - v25);
  if (*(a1 + 104) == 1)
  {
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    v29 = v26 + v18[10];
    sub_260BC0();
    sub_8198(a1 + 112, &v81, &qword_315D30, &qword_266E28);
    v30 = v26 + v18[14];
    v31 = v82;
    *v30 = v81;
    *(v30 + 1) = v31;
    *(v30 + 4) = v83;
    *v26 = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v32 = v18[5];
    *(v26 + v32) = swift_getKeyPath();
    sub_2EF0(&qword_316C08, &unk_26AEF0);
    swift_storeEnumTagMultiPayload();
    v33 = v18[6];
    *(v26 + v33) = swift_getKeyPath();
    sub_2EF0(&qword_316C10, &unk_26AF10);
    swift_storeEnumTagMultiPayload();
    v34 = v26 + v18[7];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    v35 = v18[8];
    *(v26 + v35) = swift_getKeyPath();
    sub_2EF0(&qword_316C18, &unk_26F830);
    swift_storeEnumTagMultiPayload();
    v36 = *(v10 + 56);
    v36(v26 + v18[11], 1, 1, v9);
    v36(v26 + v18[9], 1, 1, v9);
    *(v26 + v18[12]) = 0;
    sub_222DC(&v81);
    v37 = v26 + v18[13];
    v38 = v88;
    *(v37 + 6) = v87;
    *(v37 + 7) = v38;
    v37[128] = v89;
    v39 = v84;
    *(v37 + 2) = v83;
    *(v37 + 3) = v39;
    v40 = v86;
    *(v37 + 4) = v85;
    *(v37 + 5) = v40;
    v41 = v82;
    *v37 = v81;
    *(v37 + 1) = v41;
    *(v26 + v18[15]) = 1;
    sub_22214(v26, v17, type metadata accessor for ShelfHeaderView);
    swift_storeEnumTagMultiPayload();
    sub_224A8(&qword_316C20, type metadata accessor for ShelfHeaderView);
    sub_261F80();
    v42 = v26;
  }

  else
  {
    v76 = v10;
    v73 = v24;
    v71 = v7;
    v43 = v9;
    v44 = *(a1 + 40);
    v45 = *(a1 + 48);
    v72 = v13;
    sub_260BC0();
    v46 = *(a1 + 64);
    v75 = v17;
    v74 = v14;
    if (v46)
    {
      v47 = *(a1 + 56);

      v48 = v77;
      sub_260BC0();

      v49 = 0;
    }

    else
    {
      v49 = 1;
      v48 = v77;
    }

    v50 = *(v76 + 56);
    v51 = 1;
    v50(v48, v49, 1, v43);
    if (*(a1 + 80))
    {
      v52 = *(a1 + 72);
      v53 = *(a1 + 80);

      v54 = v71;
      sub_260BC0();

      v51 = 0;
    }

    else
    {
      v54 = v71;
    }

    v55 = v72;
    v50(v54, v51, 1, v43);
    v56 = *(a1 + 88);
    sub_205D0(&v81);
    sub_8198(a1 + 112, v79, &qword_315D30, &qword_266E28);
    v57 = v22 + v18[14];
    v58 = v79[1];
    *v57 = v79[0];
    *(v57 + 1) = v58;
    *(v57 + 4) = v80;
    *v22 = swift_getKeyPath();
    sub_2EF0(&qword_316C00, &qword_26A520);
    swift_storeEnumTagMultiPayload();
    v59 = v18[5];
    *(v22 + v59) = swift_getKeyPath();
    sub_2EF0(&qword_316C08, &unk_26AEF0);
    swift_storeEnumTagMultiPayload();
    v60 = v18[6];
    *(v22 + v60) = swift_getKeyPath();
    sub_2EF0(&qword_316C10, &unk_26AF10);
    swift_storeEnumTagMultiPayload();
    v61 = v22 + v18[7];
    *v61 = swift_getKeyPath();
    v61[8] = 0;
    v62 = v18[8];
    *(v22 + v62) = swift_getKeyPath();
    sub_2EF0(&qword_316C18, &unk_26F830);
    swift_storeEnumTagMultiPayload();
    (*(v76 + 32))(v22 + v18[10], v55, v43);
    sub_22148(v77, v22 + v18[11], &qword_316208, &qword_268BD0);
    sub_22148(v54, v22 + v18[9], &qword_316208, &qword_268BD0);
    *(v22 + v18[12]) = v56;
    v63 = v22 + v18[13];
    v64 = v88;
    *(v63 + 6) = v87;
    *(v63 + 7) = v64;
    v63[128] = v89;
    v65 = v84;
    *(v63 + 2) = v83;
    *(v63 + 3) = v65;
    v66 = v86;
    *(v63 + 4) = v85;
    *(v63 + 5) = v66;
    v67 = v82;
    *v63 = v81;
    *(v63 + 1) = v67;
    *(v22 + v18[15]) = 0;
    v68 = v73;
    sub_221B0(v22, v73);
    sub_22214(v68, v75, type metadata accessor for ShelfHeaderView);
    swift_storeEnumTagMultiPayload();
    sub_224A8(&qword_316C20, type metadata accessor for ShelfHeaderView);
    sub_261F80();
    v42 = v68;
  }

  return sub_2227C(v42, type metadata accessor for ShelfHeaderView);
}

uint64_t sub_21BB4()
{
  sub_22540();

  return sub_260B30();
}

uint64_t sub_21BF8(char *a1)
{
  v2 = sub_261C90();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = v3[2];
  v10(&v13 - v8, a1, v2);
  v10(v7, v9, v2);
  sub_261990();
  v11 = v3[1];
  v11(v7, v2);
  return (v11)(v9, v2);
}

uint64_t sub_21D40@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_261C90();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return sub_21F65C(v7, a2);
}

unint64_t sub_21E30()
{
  result = qword_316BD0;
  if (!qword_316BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316BD0);
  }

  return result;
}

uint64_t sub_21F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_22084@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261660();
  *a1 = result & 1;
  return result;
}

uint64_t sub_220B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261660();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22148(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2EF0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_221B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2227C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_222DC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x7FFFFFCFELL;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

uint64_t sub_22304(uint64_t a1)
{
  result = sub_224A8(&qword_316C28, type metadata accessor for ShelfHeaderTitleComponentModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_223A8()
{
  result = qword_316C38;
  if (!qword_316C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316C38);
  }

  return result;
}

uint64_t sub_224A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22540()
{
  result = qword_316C48;
  if (!qword_316C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316C48);
  }

  return result;
}

double sub_22594@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1, v5, &qword_315D28, &qword_266E20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

double sub_225EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_8198(a1 + 112, v5, &qword_315D30, &qword_266E28);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_226D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2EF0(&qword_315D40, &qword_288230);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2EF0(&qword_315D40, &qword_288230);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_22854()
{
  sub_9CAC();
  if (v0 <= 0x3F)
  {
    sub_22944();
    if (v1 <= 0x3F)
    {
      sub_22994();
      if (v2 <= 0x3F)
      {
        sub_229EC();
        if (v3 <= 0x3F)
        {
          sub_9D28();
          if (v4 <= 0x3F)
          {
            sub_9DD8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22944()
{
  if (!qword_316CB8)
  {
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_316CB8);
    }
  }
}

void sub_22994()
{
  if (!qword_316CC0)
  {
    v0 = type metadata accessor for _DecodeDefault_Wrapper();
    if (!v1)
    {
      atomic_store(v0, &qword_316CC0);
    }
  }
}

void sub_229EC()
{
  if (!qword_316CC8)
  {
    sub_260840();
    v0 = type metadata accessor for _MResourceDecoder_OrNil();
    if (!v1)
    {
      atomic_store(v0, &qword_316CC8);
    }
  }
}

unint64_t sub_22A58()
{
  result = qword_316D18;
  if (!qword_316D18)
  {
    sub_2F9C(&qword_316D20, &qword_268EA0);
    sub_224A8(&qword_316C20, type metadata accessor for ShelfHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShelfHeaderTitleComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShelfHeaderTitleComponentModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22C60()
{
  result = qword_316D28;
  if (!qword_316D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D28);
  }

  return result;
}

unint64_t sub_22CB8()
{
  result = qword_316D30;
  if (!qword_316D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D30);
  }

  return result;
}

unint64_t sub_22D10()
{
  result = qword_316D38;
  if (!qword_316D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D38);
  }

  return result;
}

uint64_t sub_22D64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_264F10() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6564616568657270 && a2 == 0xE900000000000072 || (sub_264F10() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000002903C0 == a2 || (sub_264F10() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000002903E0 == a2 || (sub_264F10() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6C616D53657375 && a2 == 0xEE00726564616548 || (sub_264F10() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_264F10() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000000028FFC0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_23050(uint64_t result)
{
  v1 = *(result + 48) & 1;
  v2 = *(result + 112) | 0x4000000000000000;
  *(result + 24) &= 0x301uLL;
  *(result + 48) = v1;
  *(result + 112) = v2;
  return result;
}

uint64_t sub_2307C(uint64_t result)
{
  v1 = *(result + 48) & 1;
  v2 = *(result + 112) | 0x8000000000000000;
  *(result + 24) &= 0x301uLL;
  *(result + 48) = v1;
  *(result + 112) = v2;
  return result;
}

uint64_t sub_230A8(uint64_t result)
{
  v1 = *(result + 112);
  v2 = *(result + 48) & 1;
  *(result + 24) &= 0x301uLL;
  *(result + 48) = v2;
  *(result + 112) = v1;
  return result;
}

uint64_t static GridItemViewModel.storeSwoosh(assetInfo:showAuthorName:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = a1[4];
    sub_2E18(a1, a1[3]);
    v6 = sub_2609B0();
    v8 = v7;
    *(&v19 + 1) = &type metadata for GridItemMetadataTitleWithSubtitle;
    v20 = sub_2004C();
    v9 = swift_allocObject();
    *&v18 = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v8;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0;
    *(v9 + 48) = xmmword_268FD0;
    v10 = 0uLL;
  }

  else
  {
    v20 = 0;
    v10 = 0uLL;
    v18 = 0u;
    v19 = 0u;
  }

  v21[0] = v10;
  v21[1] = v10;
  v22 = 0;
  sub_34A0(&v18, v21, &qword_316BC0, &qword_2707C0);
  v23 = 0;
  sub_232D0(v21, a3);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_30CC(a1, a3 + 96);
  sub_30CC(a1, v17);
  v11 = type metadata accessor for GridItemViewModel();
  CardInfo.init(with:alwaysPresentNewCardSet:)(v17, 1, a3 + v11[8]);
  v12 = v11[12];
  v13 = sub_260570();
  (*(*(v13 - 8) + 56))(a3 + v12, 1, 1, v13);
  v14 = v11[11];
  v15 = sub_2605C0();
  (*(*(v15 - 8) + 56))(a3 + v14, 1, 1, v15);
  *(a3 + 80) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 48) = 0u;
  sub_34A0(&v18, a3 + 48, &qword_316D48, &unk_28CD20);
  *(a3 + 88) = 0;
  *(a3 + v11[9]) = 0;
  *(a3 + v11[10]) = 0;
  return sub_2332C(v21);
}

uint64_t sub_23380()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

CGFloat sub_233DC@<D0>(uint64_t a1@<X8>)
{
  CGAffineTransformMakeTranslation(&v6, *v1, v1[1]);
  result = v6.a;
  v4 = *&v6.c;
  v5 = *&v6.tx;
  *a1 = *&v6.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = v5;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

__n128 sub_23438@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_23444(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 (*sub_23450(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_2347C;
}

__n128 sub_2347C(__n128 *a1)
{
  result = *a1;
  *a1[1].n128_u64[0] = *a1;
  return result;
}

uint64_t sub_23490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23710();

  return static GeometryEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t sub_2350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_23710();

  return static GeometryEffect._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

unint64_t sub_235FC()
{
  result = qword_316D50;
  if (!qword_316D50)
  {
    sub_2F9C(&qword_316D58, &qword_269068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D50);
  }

  return result;
}

unint64_t sub_23664()
{
  result = qword_316D60;
  if (!qword_316D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D60);
  }

  return result;
}

unint64_t sub_236BC()
{
  result = qword_316D68;
  if (!qword_316D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D68);
  }

  return result;
}

unint64_t sub_23710()
{
  result = qword_316D70;
  if (!qword_316D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316D70);
  }

  return result;
}

uint64_t PageBackground.resolvedColorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v40 = sub_261180();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v40);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = sub_261C90();
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_316D98, &unk_269120);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  v21 = type metadata accessor for PageBackground(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2C224(v2, v24, type metadata accessor for PageBackground);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_30304(v24, type metadata accessor for PageBackground);
      return (*(v3 + 104))(v41, enum case for ColorScheme.dark(_:), v40);
    }

    else
    {
      v30 = *(v24 + 1);

      v31 = sub_2EF0(&qword_316DA0, &unk_277640);
      v32 = *(v31 + 48);
      v33 = *&v24[*(v31 + 64)];

      return (*(v3 + 32))(v41, &v24[v32], v40);
    }
  }

  else
  {
    v38 = v7;
    v27 = *v24;
    v28 = sub_2EF0(&qword_316DA8, &qword_269130);
    sub_22148(&v24[*(v28 + 48)], v20, &qword_316D98, &unk_269120);
    sub_261C80();
    sub_8198(v20, v18, &qword_316D98, &unk_269120);
    v29 = v40;
    if ((*(v3 + 48))(v18, 1, v40) == 1)
    {
      sub_8E80(v18, &qword_316D98, &unk_269120);
    }

    else
    {
      (*(v3 + 32))(v9, v18, v29);
      (*(v3 + 16))(v38, v9, v29);
      sub_2619A0();
      (*(v3 + 8))(v9, v29);
    }

    v34 = v39;
    sub_263020();
    v35 = sub_263030();
    v36 = [objc_allocWithZone(UIColor) initWithCGColor:v35];

    v42 = 0.0;
    [v36 getWhite:&v42 alpha:0];

    (*(v34 + 8))(v13, v10);
    sub_8E80(v20, &qword_316D98, &unk_269120);
    if (v42 >= 0.7)
    {
      v37 = &enum case for ColorScheme.light(_:);
    }

    else
    {
      v37 = &enum case for ColorScheme.dark(_:);
    }

    return (*(v3 + 104))(v41, *v37, v29);
  }
}

uint64_t PagedFrame.id.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_2644B0();
}

uint64_t sub_23CD0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2E18(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_23D24()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2E18(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_23D80()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2E18(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_23DD4()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2E18(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_23E28()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2E18(v0, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_23E84()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2E18(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_23ED8@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_2E18(v1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_23F34@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  v5 = v2[4];
  v6 = sub_2E18(v2, v4);
  v7 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v6);
  (*(v9 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v5 + 8);
  result = sub_263310();
  *a1 = result;
  return result;
}

uint64_t sub_24010()
{
  v1 = v0;
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
  sub_260380();

  if (*(v0 + 32) <= 0.0)
  {
    return result;
  }

  swift_getKeyPath();
  sub_260380();

  v3 = *(v0 + 16);
  swift_getKeyPath();
  sub_260380();

  v4 = v3 + *(v0 + 40) * 0.5;
  swift_getKeyPath();
  sub_260380();

  v5 = v4 / *(v0 + 32);
  if (COERCE__INT64(fabs(v5)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v0 + 48);
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v7 = v5;
  if (v6 > v5)
  {
    result = swift_beginAccess();
    if (*(v1 + 24) != v7)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_260370();
    }
  }

  return result;
}

double sub_24274()
{
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
  sub_260380();

  return *(v0 + 16);
}

double sub_24314@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
  sub_260380();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_243BC(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;

    return sub_24010();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
    sub_260370();
  }
}

uint64_t PagedScrollViewModel.currentPageIndex.getter()
{
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
  sub_260380();

  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_245B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
  sub_260380();

  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t PagedScrollViewModel.currentPageIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(v1 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
    sub_260370();
  }

  return result;
}

uint64_t sub_247F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 24) = v1;
  return result;
}

void (*PagedScrollViewModel.currentPageIndex.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC7BooksUI20PagedScrollViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
  sub_260380();

  *v4 = v1;
  swift_getKeyPath();
  sub_2603A0();

  swift_beginAccess();
  return sub_24988;
}

void sub_24988(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_260390();

  free(v1);
}

double sub_24A0C()
{
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
  sub_260380();

  return *(v0 + 32);
}

double sub_24AAC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
  sub_260380();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

void sub_24B54(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
    sub_260370();
  }
}

double sub_24C6C()
{
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
  sub_260380();

  return *(v0 + 40);
}

double sub_24D0C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
  sub_260380();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void sub_24DB4(double a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
    sub_260370();
  }
}

uint64_t PagedScrollViewModel.__allocating_init(totalPages:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  sub_2603B0();
  *(v5 + 48) = a1;
  return v5;
}

uint64_t PagedScrollViewModel.init(totalPages:)(uint64_t a1)
{
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  sub_2603B0();
  *(v1 + 48) = a1;
  return v1;
}

uint64_t PagedScrollViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC7BooksUI20PagedScrollViewModel___observationRegistrar;
  v2 = sub_2603C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PagedScrollViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7BooksUI20PagedScrollViewModel___observationRegistrar;
  v2 = sub_2603C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2505C()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v22[-v6];
  v8 = sub_264410();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v22[-v14];
  sub_2643A0();
  sub_260260();
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v5, v7, v0);
  v18 = sub_264490();
  v20 = v19;
  (*(v1 + 8))(v7, v0);
  result = (*(v9 + 8))(v15, v8);
  qword_316D78 = v18;
  unk_316D80 = v20;
  return result;
}

uint64_t sub_252D8()
{
  v0 = sub_260290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v22[-v6];
  v8 = sub_264410();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v22[-v14];
  sub_2643A0();
  sub_260260();
  (*(v9 + 16))(v13, v15, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v5, v7, v0);
  v18 = sub_264490();
  v20 = v19;
  (*(v1 + 8))(v7, v0);
  result = (*(v9 + 8))(v15, v8);
  qword_316D88 = v18;
  unk_316D90 = v20;
  return result;
}

double sub_25558@<D0>(double *a1@<X8>)
{
  v2 = sub_261FC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2621A0();
  sub_261440();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  result = -v8;
  *a1 = -v8;
  return result;
}

uint64_t sub_25650(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for PagedScrollViewPositionObserverModifier(0) + 24));
  sub_261420();
  v5 = v4;
  sub_261410();
  v7 = v5 + v6;
  sub_261410();
  v9 = v7 + v8;
  if (v3[4] == v9)
  {
    v3[4] = v9;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
    sub_260370();
  }

  sub_261410();
  if (v3[5] == v11)
  {
    v3[5] = v11;
  }

  else
  {
    v12 = swift_getKeyPath();
    __chkstk_darwin(v12);
    sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
    sub_260370();
  }

  if (v3[2] == v2)
  {
    v3[2] = v2;
    return sub_24010();
  }

  else
  {
    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    sub_2F3EC(&qword_316DB8, type metadata accessor for PagedScrollViewModel);
    sub_260370();
  }
}

uint64_t sub_2595C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  sub_2C224(v7, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PagedScrollViewPositionObserverModifier);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2E9A8(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PagedScrollViewPositionObserverModifier);
  v10 = sub_2EF0(&qword_3171B0, &qword_269660);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = sub_2EF0(&qword_3171B8, &qword_269668);
  v12 = (a3 + *(result + 36));
  *v12 = sub_25558;
  v12[1] = 0;
  v12[2] = sub_2EA10;
  v12[3] = v9;
  return result;
}

uint64_t sub_25AF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_316C00, &qword_26A520);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_8198(v2, &v16 - v11, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2E9A8(v12, a1, type metadata accessor for ColorConstants);
  }

  v14 = *v12;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25CD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316DC0, &qword_2691C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for PagedScrollView(0);
  sub_8198(v1 + *(v12 + 20), v11, &qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_261180();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_264900();
    v16 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_25EDC()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for PagedScrollView(0) + 24));
  v7 = *v6;
  if (v6[8] == 1)
  {
    return *v6;
  }

  sub_264900();
  v9 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v7, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_26038@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PagedScrollView(0);
  sub_8198(v1 + *(v8 + 28), v11, &qword_3173E0, &qword_26B890);
  if (v12 == 1)
  {
    return sub_F7CC(v11, a1);
  }

  sub_264900();
  v10 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_261B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316DC8, &qword_276F60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for PagedScrollView(0);
  sub_8198(v1 + *(v12 + 32), v11, &qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2E9A8(v11, a1, type metadata accessor for SizeConstants.Spacing);
  }

  v14 = *v11;
  sub_264900();
  v15 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

BOOL sub_2639C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for PagedScrollView(0);
  v7 = v0 + *(v6 + 36);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if (v8)
    {
      return 0;
    }
  }

  else
  {

    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v8, 0);
    (*(v2 + 8))(v5, v1);
    if (v14[15])
    {
      return 0;
    }
  }

  v10 = v0 + *(v6 + 40);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    if (v11)
    {
      return 0;
    }
  }

  else
  {

    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v11, 0);
    (*(v2 + 8))(v5, v1);
    if (v14[14])
    {
      return 0;
    }
  }

  return !UIAccessibilityIsReduceMotionEnabled();
}

uint64_t PagedScrollView.init(frames:viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for PagedScrollView(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[6];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = a3 + v6[7];
  *v9 = swift_getKeyPath();
  v9[40] = 0;
  v10 = v6[8];
  *(a3 + v10) = swift_getKeyPath();
  sub_2EF0(&qword_316DC8, &qword_276F60);
  swift_storeEnumTagMultiPayload();
  v11 = a3 + v6[9];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = a3 + v6[10];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = a3 + v6[11];
  v35[0] = 0;
  v35[1] = 0;
  sub_2EF0(&qword_316DD0, &qword_2692C0);
  sub_2631D0();
  v14 = *v38;
  *v13 = v37;
  *(v13 + 2) = v14;
  v15 = *(a1 + 16);
  if (v15)
  {
    v33 = a2;
    v39 = &_swiftEmptyArrayStorage;
    sub_2C204(0, v15, 0);
    v16 = &_swiftEmptyArrayStorage;
    v32 = a1;
    v17 = a1 + 32;
    do
    {
      sub_30CC(v17, v35);
      v34 = v36;
      v18 = v36;
      v19 = sub_2E18(v35, v36);
      v20 = *(v18 - 8);
      v21 = *(v20 + 64);
      __chkstk_darwin(v19);
      v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23);
      *&v38[8] = v34;
      v24 = sub_10934(&v37);
      (*(v20 + 32))(v24, v23, v18);
      sub_3080(v35);
      v39 = v16;
      v26 = v16[2];
      v25 = v16[3];
      if (v26 >= v25 >> 1)
      {
        sub_2C204((v25 > 1), v26 + 1, 1);
        v16 = v39;
      }

      v16[2] = v26 + 1;
      v27 = &v16[5 * v26];
      v28 = v37;
      v29 = *v38;
      v27[8] = *&v38[16];
      *(v27 + 2) = v28;
      *(v27 + 3) = v29;
      v17 += 40;
      --v15;
    }

    while (v15);

    a2 = v33;
  }

  else
  {

    v16 = &_swiftEmptyArrayStorage;
  }

  *(a3 + v6[12]) = v16;
  *(a3 + v6[13]) = a2;
  v30 = a3 + v6[14];
  return sub_2601D0();
}

uint64_t PagedScrollView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for PagedScrollView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_2C224(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PagedScrollView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2E9A8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PagedScrollView);
  *a1 = sub_2C290;
  a1[1] = v7;
  return result;
}

uint64_t sub_26A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a3;
  v5 = type metadata accessor for PagedScrollView(0);
  v81 = *(v5 - 8);
  v6 = *(v81 + 64);
  __chkstk_darwin(v5);
  v82 = v7;
  v84 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_262320();
  v78 = *(v79 - 8);
  v8 = *(v78 + 64);
  __chkstk_darwin(v79);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_262390();
  v68 = *(v67 - 8);
  v10 = *(v68 + 64);
  __chkstk_darwin(v67);
  v65 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_2EF0(&qword_3172A8, &qword_269800);
  v63 = *(v62 - 8);
  v12 = *(v63 + 64);
  __chkstk_darwin(v62);
  v14 = &v60 - v13;
  v61 = sub_2EF0(&qword_3172B0, &qword_269808);
  v64 = *(v61 - 8);
  v15 = *(v64 + 64);
  __chkstk_darwin(v61);
  v17 = &v60 - v16;
  v71 = sub_2EF0(&qword_3172B8, &qword_269810);
  v70 = *(v71 - 8);
  v18 = *(v70 + 64);
  __chkstk_darwin(v71);
  v60 = &v60 - v19;
  v76 = sub_2EF0(&qword_3172C0, &qword_269818);
  v75 = *(v76 - 8);
  v20 = *(v75 + 64);
  __chkstk_darwin(v76);
  v74 = &v60 - v21;
  v69 = sub_2EF0(&qword_3172C8, &qword_269820);
  v22 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v73 = &v60 - v23;
  v72 = sub_2EF0(&qword_3172D0, &qword_269828);
  v24 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v77 = &v60 - v25;
  sub_2624E0();
  v86 = a2;
  v87 = a1;
  sub_2EF0(&qword_3172D8, &qword_269830);
  sub_2F2C0();
  sub_261130();
  v80 = v5;
  v26 = *(v5 + 44);
  v83 = a2;
  v27 = (a2 + v26);
  v28 = *(v27 + 2);
  v92 = *v27;
  v93 = v28;
  sub_2EF0(&qword_317300, &unk_269840);
  sub_263200();
  sub_263720();
  v29 = sub_8E38(&qword_317308, &qword_3172A8, &qword_269800);
  v30 = v62;
  sub_262B40();
  v31 = v60;

  v32 = v66;

  v33 = v61;

  (*(v63 + 8))(v14, v30);
  v34 = v65;
  sub_262380();
  v88 = v30;
  v89 = &type metadata for String;
  v90 = v29;
  v91 = &protocol witness table for String;
  v35 = v67;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_262C90();
  (*(v68 + 8))(v34, v35);
  (*(v64 + 8))(v17, v33);
  sub_262300();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(v14) = sub_2624E0();
  *(inited + 32) = v14;
  v38 = sub_2624C0();
  *(inited + 33) = v38;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v14)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v38)
  {
    sub_2624D0();
  }

  v88 = v33;
  v89 = v35;
  v90 = OpaqueTypeConformance2;
  v91 = &protocol witness table for PagingScrollTargetBehavior;
  swift_getOpaqueTypeConformance2();
  v39 = v74;
  v40 = v71;
  sub_262BA0();
  (*(v78 + 8))(v32, v79);
  (*(v70 + 8))(v31, v40);
  v41 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  v43 = v42;
  v44 = v73;
  v45 = &v73[*(v69 + 36)];
  v46 = v83;
  v47 = *(v83 + *(v80 + 48));
  __chkstk_darwin(v41);
  *(&v60 - 2) = v46;
  sub_2A954(sub_2F434, v48, &v88);
  sub_2869C(&v88, v45);
  sub_8E80(&v88, &qword_317318, &qword_269850);
  v49 = (v45 + *(sub_2EF0(&qword_317320, &qword_269858) + 36));
  *v49 = v41;
  v49[1] = v43;
  (*(v75 + 32))(v44, v39, v76);
  v50 = sub_261740();
  v51 = sub_262500();
  v52 = v77;
  sub_22148(v44, v77, &qword_3172C8, &qword_269820);
  v53 = v52 + *(v72 + 36);
  *v53 = v50;
  *(v53 + 8) = v51;
  v54 = v84;
  sub_2C224(v46, v84, type metadata accessor for PagedScrollView);
  v55 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v56 = swift_allocObject();
  sub_2E9A8(v54, v56 + v55, type metadata accessor for PagedScrollView);
  v57 = v85;
  sub_22148(v52, v85, &qword_3172D0, &qword_269828);
  result = sub_2EF0(&qword_317328, &qword_269860);
  v59 = (v57 + *(result + 36));
  *v59 = sub_2F454;
  v59[1] = v56;
  v59[2] = 0;
  v59[3] = 0;
  return result;
}

uint64_t sub_274B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_262080();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = sub_2EF0(&qword_3172E8, &qword_269838);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22[-v11];
  v23 = a1;
  v24 = a2;
  sub_261E50();
  LODWORD(v25) = 0;
  sub_2F3EC(&qword_317430, &type metadata accessor for PinnedScrollableViews);
  sub_265250();
  sub_2EF0(&qword_317438, &qword_269910);
  v13 = sub_2F9C(&qword_317440, &qword_269918);
  v14 = sub_2FAE0();
  v25 = v13;
  v26 = v14;
  swift_getOpaqueTypeConformance2();
  sub_261100();
  sub_8E38(&qword_3172F0, &qword_3172E8, &qword_269838);
  sub_262C50();
  (*(v9 + 8))(v12, v8);
  v15 = type metadata accessor for PagedScrollView(0);
  v16 = *(*(a1 + *(v15 + 48)) + 16);
  v17 = *(a1 + *(v15 + 52));
  v18 = a3 + *(sub_2EF0(&qword_3172D8, &qword_269830) + 36);
  v19 = sub_261460();
  (*(*(v19 - 8) + 16))(v18, a2, v19);
  v20 = type metadata accessor for PagedScrollViewPositionObserverModifier(0);
  *(v18 + *(v20 + 20)) = v16;
  *(v18 + *(v20 + 24)) = v17;
}

uint64_t sub_277A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = type metadata accessor for PagedScrollView(0);
  v6 = v5 - 8;
  v26 = *(v5 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261460();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_317440, &qword_269918);
  v27 = *(v13 - 8);
  v28 = v13;
  v14 = *(v27 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v32 = *(a1 + *(v6 + 56));
  (*(v10 + 16))(v12, a2, v9);
  sub_2C224(a1, v8, type metadata accessor for PagedScrollView);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = (v11 + *(v26 + 80) + v17) & ~*(v26 + 80);
  v19 = swift_allocObject();
  (*(v10 + 32))(v19 + v17, v12, v9);
  sub_2E9A8(v8, v19 + v18, type metadata accessor for PagedScrollView);

  sub_2EF0(&qword_3174B0, &qword_269948);
  sub_2EF0(&qword_3174B8, &qword_269950);
  sub_8E38(&qword_3174C0, &qword_3174B0, &qword_269948);
  v20 = sub_2F9C(&qword_317450, &qword_269920);
  v21 = sub_2FBA0();
  v30 = v20;
  v31 = v21;
  swift_getOpaqueTypeConformance2();
  sub_302B0();
  sub_2633C0();
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  LOBYTE(v19) = sub_2624C0();
  *(inited + 32) = v19;
  v23 = sub_2624E0();
  *(inited + 33) = v23;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v19)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v23)
  {
    sub_2624D0();
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2FAE0();
  v24 = v28;
  sub_262D00();
  return (*(v27 + 8))(v16, v24);
}

uint64_t sub_27C0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a4;
  v90 = sub_2EF0(&qword_317450, &qword_269920);
  v7 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v89 = &v77 - v8;
  v88 = sub_2604E0();
  v87 = *(v88 - 8);
  v9 = *(v87 + 64);
  __chkstk_darwin(v88);
  v86 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PageBackground(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v85 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for PagedScrollView(0);
  v14 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  *&v83 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SizeConstants.Spacing(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_261460();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2EF0(&qword_317488, &qword_269938);
  v26 = *(*(v25 - 1) + 64);
  __chkstk_darwin(v25);
  v28 = &v77 - v27;
  v82 = sub_2EF0(&qword_317478, &qword_269930);
  v29 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v84 = &v77 - v30;
  v92 = sub_2EF0(&qword_317460, &qword_269928);
  v31 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v93 = &v77 - v32;
  v80 = v21;
  v33 = *(v21 + 16);
  v79 = v24;
  v81 = v20;
  v33(v24, a2, v20);
  v35 = a1[3];
  v34 = a1[4];
  sub_2E18(a1, v35);
  v36 = (*(v34 + 32))(v35, v34);
  v37 = 0.0;
  if ((sub_2853C() & 1) == 0)
  {
    sub_261B0(v19);
    sub_30304(v19, type metadata accessor for SizeConstants.Spacing);
    v37 = 12.0;
  }

  v38 = a1[3];
  v39 = a1[4];
  sub_2E18(a1, v38);
  v40 = (*(v39 + 40))(v38, v39);
  v42 = v41;
  sub_2F4B4(a1, &v98);
  v43 = v83;
  sub_2C224(a3, v83, type metadata accessor for PagedScrollView);
  sub_2F4B4(a1, &v96);
  *&v28[v25[13]] = v36;
  v44 = &v28[v25[15]];
  *v44 = v40;
  v44[1] = v42;
  v45 = v79;
  v46 = v81;
  v33(v28, v79, v81);
  sub_2F4B4(&v98, &v28[v25[16]]);
  v47 = v25[17];
  sub_2F4B4(&v96, v95);
  sub_2869C(v95, &v28[v47]);
  sub_8E80(v95, &qword_317318, &qword_269850);
  sub_2F4EC(&v96);
  sub_30304(v43, type metadata accessor for PagedScrollView);
  sub_2F4EC(&v98);
  (*(v80 + 8))(v45, v46);
  *&v28[v25[14]] = v37;
  v48 = a1[3];
  v49 = a1[4];
  sub_2E18(a1, v48);
  v50 = (*(v49 + 16))(v48, v49);
  v52 = v51;
  v53 = a3 + *(v94 + 44);
  v78 = a3;
  v54 = *(v53 + 16);
  v96 = *v53;
  v97 = v54;
  sub_2EF0(&qword_317300, &unk_269840);
  sub_263200();
  v83 = v98;
  v55 = v99;
  v56 = v100;
  v57 = v84;
  sub_22148(v28, v84, &qword_317488, &qword_269938);
  v58 = v57 + *(v82 + 36);
  *v58 = v50;
  *(v58 + 8) = v52;
  *(v58 + 16) = v83;
  *(v58 + 32) = v55;
  *(v58 + 40) = v56;
  v59 = sub_263560();
  v61 = v60;
  v62 = v93 + *(v92 + 36);
  sub_2F4B4(a1, &v98);
  sub_2964C(&v98, v62);
  sub_8E80(&v98, &qword_317318, &qword_269850);
  KeyPath = swift_getKeyPath();
  v64 = a1[3];
  v65 = a1[4];
  sub_2E18(a1, v64);
  v66 = v85;
  (*(v65 + 24))(v64, v65);
  v67 = (v62 + *(sub_2EF0(&qword_3174D0, &qword_269958) + 36));
  v68 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
  PageBackground.resolvedColorScheme.getter(v67 + *(v68 + 28));
  sub_30304(v66, type metadata accessor for PageBackground);
  *v67 = KeyPath;
  v69 = (v62 + *(sub_2EF0(&qword_3174A0, &qword_269940) + 36));
  *v69 = v59;
  v69[1] = v61;
  v70 = v93;
  sub_22148(v57, v93, &qword_317478, &qword_269930);
  sub_2605D0();
  sub_2EF0(&qword_3174D8, &unk_269960);
  *(swift_allocObject() + 16) = xmmword_267D30;
  v71 = a1[3];
  v72 = a1[4];
  sub_2E18(a1, v71);
  (*(v72 + 48))(v71, v72);
  v73 = v78 + *(v94 + 56);
  sub_2601C0();
  v74 = v86;
  sub_2604D0();
  sub_2FCB0();
  sub_2F3EC(&qword_3174A8, &type metadata accessor for YearInReviewExposureEvent);
  v75 = v89;
  sub_262980();
  sub_2FBA0();
  sub_262970();

  sub_8E80(v75, &qword_317450, &qword_269920);
  (*(v87 + 8))(v74, v88);
  return sub_8E80(v70, &qword_317460, &qword_269928);
}

uint64_t sub_2853C()
{
  v1 = type metadata accessor for PagedScrollView(0);
  v2 = (v0 + *(v1 + 44));
  v3 = *(v2 + 2);
  v16 = *v2;
  v17 = v3;
  sub_2EF0(&qword_317300, &unk_269840);
  sub_2631E0();
  v4 = v21;
  v5 = *(v0 + *(v1 + 48));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v20;
    sub_2F4B4(v5 + 40 * v6 - 8, &v16);
    v8 = v18;
    v9 = v19;
    sub_2E18(&v16, v18);
    v10 = (*(v9 + 16))(v8, v9);
    v12 = v11;
    sub_2F4EC(&v16);
    if (v4)
    {
      if (v12)
      {
        if (v7 == v10 && v4 == v12)
        {

          v14 = 1;
        }

        else
        {
          v14 = sub_264F10();
        }

        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (v12)
    {
      v14 = 0;
      goto LABEL_15;
    }
  }

  else if (v21)
  {
LABEL_10:
    v14 = 0;
LABEL_15:

    return v14 & 1;
  }

  v14 = 1;
  return v14 & 1;
}

uint64_t sub_2869C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v126 = sub_2EF0(&qword_317330, &qword_269868);
  v3 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v127 = &v104 - v4;
  v129 = sub_2EF0(&qword_317338, &qword_269870);
  v5 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v7 = &v104 - v6;
  v125 = sub_2EF0(&qword_317340, &qword_269878);
  v8 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v110 = (&v104 - v9);
  v111 = sub_2EF0(&qword_317348, &qword_269880);
  v10 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v113 = (&v104 - v11);
  v112 = sub_2EF0(&qword_317350, &qword_269888);
  v12 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v106 = &v104 - v13;
  v123 = sub_2EF0(&qword_317358, &qword_269890);
  v14 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v114 = &v104 - v15;
  v16 = sub_2EF0(&qword_317360, &qword_269898);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v104 - v18;
  v121 = sub_2EF0(&qword_317368, &qword_2698A0);
  v20 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v122 = &v104 - v21;
  v22 = sub_2EF0(&qword_317370, &qword_2698A8);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v124 = &v104 - v24;
  v128 = sub_261180();
  v119 = *(v128 - 8);
  v25 = *(v119 + 64);
  v26 = __chkstk_darwin(v128);
  v108 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v107 = &v104 - v28;
  v120 = sub_2EF0(&qword_317378, &unk_2698B0);
  v29 = *(*(v120 - 8) + 64);
  v30 = __chkstk_darwin(v120);
  v32 = (&v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v30);
  v109 = &v104 - v33;
  v34 = sub_2EF0(&qword_316D98, &unk_269120);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v38 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v118 = &v104 - v39;
  v40 = type metadata accessor for PageBackground(0);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v43 = &v104 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(a1, &v161, &qword_317318, &qword_269850);
  v44 = *(&v162 + 1);
  if (!*(&v162 + 1))
  {
    sub_8E80(&v161, &qword_317318, &qword_269850);
    swift_storeEnumTagMultiPayload();
    sub_8E38(&qword_317380, &qword_317340, &qword_269878);
    sub_261F80();
    sub_8198(v7, v19, &qword_317338, &qword_269870);
    swift_storeEnumTagMultiPayload();
    sub_2F51C();
    sub_2F800();
    sub_261F80();
    return sub_8E80(v7, &qword_317338, &qword_269870);
  }

  v105 = v7;
  v115 = v16;
  v116 = v22;
  v117 = v19;
  v45 = v163;
  sub_2E18(&v161, *(&v162 + 1));
  (*(v45 + 24))(v44, v45);
  sub_2F4EC(&v161);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v47 = v128;
    if (EnumCaseMultiPayload != 1)
    {
      v68 = *v43;
      v69 = *(v43 + 1);
      v70 = sub_2EF0(&qword_316DA0, &unk_277640);
      v71 = *(v70 + 48);
      v124 = *&v43[*(v70 + 64)];
      v72 = v124;
      v73 = v119;
      v74 = &v43[v71];
      v75 = v108;
      (*(v119 + 32))(v108, v74, v47);
      v76 = _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
      v77 = v110;
      *v110 = v76;
      *(v77 + 8) = v78;
      v79 = sub_2EF0(&qword_3173D8, &unk_2698D0);
      sub_2AE78(v72, v75, v68, v69, v77 + *(v79 + 44));

      sub_8198(v77, v127, &qword_317340, &qword_269878);
      swift_storeEnumTagMultiPayload();
      sub_8E38(&qword_317380, &qword_317340, &qword_269878);
      v80 = v105;
      sub_261F80();
      sub_8198(v80, v117, &qword_317338, &qword_269870);
      swift_storeEnumTagMultiPayload();
      sub_2F51C();
      sub_2F800();
      sub_261F80();

      sub_8E80(v80, &qword_317338, &qword_269870);
      sub_8E80(v77, &qword_317340, &qword_269878);
      return (*(v73 + 8))(v75, v47);
    }

    v48 = *(v43 + 5);
    v157 = *(v43 + 4);
    v158 = v48;
    v49 = *(v43 + 7);
    v159 = *(v43 + 6);
    v160 = v49;
    v50 = *(v43 + 1);
    v153 = *v43;
    v154 = v50;
    v51 = *(v43 + 3);
    v155 = *(v43 + 2);
    v156 = v51;
    v167 = v159;
    v168 = v49;
    v165 = v157;
    v166 = v48;
    v163 = v155;
    v164 = v51;
    v161 = v153;
    v162 = v50;
    if (sub_2F8B8(&v161))
    {
      sub_2F8C4(&v153);
      v52 = swift_allocObject();
      *(v52 + 16) = 0xD00000000000002FLL;
      *(v52 + 24) = 0x80000000002904D0;
      v53 = v113;
      *v113 = sub_1F458;
      v53[1] = v52;
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_316968, &qword_268A00);
      sub_2F718();
      sub_8E38(&qword_316970, &qword_316968, &qword_268A00);
      v54 = v114;
      sub_261F80();
    }

    else
    {
      v88 = sub_2F950(&v161);
      v89 = v88[5];
      if (v89)
      {
        v90 = v88[4];
        v91 = v88[5];
      }

      else
      {
        v90 = *v88;
        v91 = v88[1];
      }

      sub_26038(&v146);
      v92 = *(&v147 + 1);
      v93 = v148;
      sub_2E18(&v146, *(&v147 + 1));
      sub_2F8C4(&v153);
      *&v139 = v90;
      *(&v139 + 1) = v91;
      LOBYTE(v140) = v89 != 0;
      v138[4] = v157;
      v138[5] = v158;
      v138[6] = v159;
      v138[7] = v160;
      v138[0] = v153;
      v138[1] = v154;
      v138[2] = v155;
      v138[3] = v156;
      v94 = sub_2F950(v138);
      v95 = *(v94 + 120);
      v96 = v95 * *(v94 + 16);
      v97 = sub_25EDC();
      BYTE2(v131) = -2;
      LOWORD(v131) = -772;
      v98 = (*(v93 + 16))(&v139, &v131, v92, v93, v96, v95, v97);
      sub_6204();
      v99 = [objc_opt_self() systemGrayColor];
      v100 = sub_262EE0();
      sub_7D47C(v98, v100, 0, &v139);
      sub_3080(&v146);
      v135 = v143;
      v136 = v144;
      v137 = v145;
      v131 = v139;
      v132 = v140;
      v133 = v141;
      v134 = v142;
      sub_2EF0(&qword_3173C0, &unk_2698C0);
      sub_8E38(&qword_3173B8, &qword_3173C0, &unk_2698C0);
      v101 = v106;
      sub_262C60();
      v150 = v135;
      v151 = v136;
      v152 = v137;
      v146 = v131;
      v147 = v132;
      v148 = v133;
      v149 = v134;
      sub_8E80(&v146, &qword_3173C0, &unk_2698C0);
      sub_8198(v101, v113, &qword_317350, &qword_269888);
      swift_storeEnumTagMultiPayload();
      sub_2EF0(&qword_316968, &qword_268A00);
      sub_2F718();
      sub_8E38(&qword_316970, &qword_316968, &qword_268A00);
      v54 = v114;
      sub_261F80();
      sub_8E80(v101, &qword_317350, &qword_269888);
    }

    sub_8198(v54, v122, &qword_317358, &qword_269890);
    swift_storeEnumTagMultiPayload();
    sub_2F5A8();
    sub_2F660();
    v102 = v54;
    v103 = v124;
    sub_261F80();
    sub_8198(v103, v117, &qword_317370, &qword_2698A8);
    swift_storeEnumTagMultiPayload();
    sub_2F51C();
    sub_2F800();
    sub_261F80();
    sub_8E80(v103, &qword_317370, &qword_2698A8);
    v87 = v102;
    v85 = &qword_317358;
    v86 = &qword_269890;
  }

  else
  {
    v56 = *v43;
    v57 = sub_2EF0(&qword_316DA8, &qword_269130);
    v58 = v118;
    sub_22148(&v43[*(v57 + 48)], v118, &qword_316D98, &unk_269120);
    KeyPath = swift_getKeyPath();
    sub_8198(v58, v38, &qword_316D98, &unk_269120);
    v60 = v119;
    v61 = *(v119 + 48);
    v62 = v128;
    if (v61(v38, 1, v128) == 1)
    {
      v127 = v56;
      v63 = KeyPath;
      v64 = v107;
      sub_25CD4(v107);
      v65 = v61(v38, 1, v62);
      v66 = v64;
      KeyPath = v63;
      v56 = v127;
      v67 = v60;
      if (v65 != 1)
      {
        sub_8E80(v38, &qword_316D98, &unk_269120);
      }
    }

    else
    {
      v66 = v107;
      (*(v60 + 32))(v107, v38, v62);
      v67 = v60;
    }

    v81 = (v32 + *(v120 + 36));
    v82 = sub_2EF0(&qword_3173A0, &qword_26D0C0);
    (*(v67 + 32))(v81 + *(v82 + 28), v66, v62);
    *v81 = KeyPath;
    *v32 = v56;
    v83 = v109;
    sub_22148(v32, v109, &qword_317378, &unk_2698B0);
    sub_8198(v83, v122, &qword_317378, &unk_2698B0);
    swift_storeEnumTagMultiPayload();
    sub_2F5A8();
    sub_2F660();

    v84 = v124;
    sub_261F80();
    sub_8198(v84, v117, &qword_317370, &qword_2698A8);
    swift_storeEnumTagMultiPayload();
    sub_2F51C();
    sub_2F800();
    sub_261F80();

    sub_8E80(v84, &qword_317370, &qword_2698A8);
    sub_8E80(v83, &qword_317378, &unk_2698B0);
    v85 = &qword_316D98;
    v86 = &unk_269120;
    v87 = v118;
  }

  return sub_8E80(v87, v85, v86);
}

uint64_t sub_2964C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a1;
  v160 = a2;
  v3 = sub_2EF0(&qword_3174E0, &qword_26B310);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v125 - v8;
  v10 = sub_261690();
  v155 = *(v10 - 8);
  v11 = *(v155 + 64);
  v12 = __chkstk_darwin(v10);
  v154 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v153 = &v125 - v14;
  v15 = sub_2EF0(&qword_3174E8, &qword_269970);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v156 = &v125 - v17;
  v18 = type metadata accessor for SizeConstants.Spacing(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v152 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2EF0(&qword_316D98, &unk_269120);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v143 = &v125 - v23;
  v24 = sub_261180();
  v140 = *(v24 - 8);
  v25 = *(v140 + 64);
  v26 = __chkstk_darwin(v24);
  v147 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v146 = &v125 - v28;
  v150 = sub_263640();
  v149 = *(v150 - 8);
  v29 = *(v149 + 64);
  __chkstk_darwin(v150);
  v144 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ColorConstants(0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2EF0(&qword_3174F0, &qword_269978);
  v35 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v37 = (&v125 - v36);
  v139 = sub_2EF0(&qword_3174F8, &qword_269980);
  v38 = *(*(v139 - 8) + 64);
  __chkstk_darwin(v139);
  v142 = &v125 - v39;
  v141 = sub_2EF0(&qword_317500, &qword_269988);
  v40 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v148 = &v125 - v41;
  v145 = sub_2EF0(&qword_317508, &qword_269990);
  v42 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v151 = &v125 - v43;
  v158 = sub_2EF0(&qword_317510, &qword_269998);
  v44 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158);
  v157 = &v125 - v45;
  v137 = sub_2EF0(&qword_317518, &qword_2699A0);
  v134 = *(v137 - 8);
  v46 = *(v134 + 64);
  __chkstk_darwin(v137);
  v133 = &v125 - v47;
  v48 = sub_2EF0(&qword_317520, &qword_2699A8);
  v159 = *(v48 - 8);
  v49 = *(v159 + 64);
  v50 = __chkstk_darwin(v48);
  v136 = &v125 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v135 = &v125 - v52;
  if (sub_2853C())
  {
    v53 = v160;
    v54 = *(v159 + 56);

    return v54(v53, 1, 1, v48);
  }

  v126 = v48;
  v127 = v9;
  v130 = v10;
  v128 = v7;
  v129 = v3;
  v131 = v15;
  v56 = sub_2630B0();
  sub_2626A0();
  v57 = sub_2625A0();

  KeyPath = swift_getKeyPath();
  v59 = (v37 + *(sub_2EF0(&qword_317528, &unk_2699E0) + 36));
  v60 = *(sub_2EF0(&qword_317530, &qword_26FCC0) + 28);
  v61 = enum case for Image.Scale.large(_:);
  v62 = sub_2630F0();
  (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
  *v59 = swift_getKeyPath();
  *v37 = v56;
  v37[1] = KeyPath;
  v37[2] = v57;
  sub_25AF0(v34);
  _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  v63 = sub_263000();

  sub_30304(v34, type metadata accessor for ColorConstants);
  *(v37 + *(v138 + 36)) = v63;
  v64 = v143;
  sub_2AB6C(v143);
  v65 = v140;
  v66 = *(v140 + 48);
  if (v66(v64, 1, v24) == 1)
  {
    v67 = v146;
    sub_25CD4(v146);
    v68 = v66(v64, 1, v24);
    v69 = v153;
    v70 = v151;
    if (v68 != 1)
    {
      sub_8E80(v64, &qword_316D98, &unk_269120);
    }
  }

  else
  {
    v67 = v146;
    (*(v65 + 32))(v146, v64, v24);
    v69 = v153;
    v70 = v151;
  }

  v71 = v147;
  (*(v65 + 104))(v147, enum case for ColorScheme.light(_:), v24);
  v72 = sub_261170();
  v73 = *(v65 + 8);
  v73(v71, v24);
  v73(v67, v24);
  v74 = v149;
  v75 = &enum case for BlendMode.plusDarker(_:);
  if ((v72 & 1) == 0)
  {
    v75 = &enum case for BlendMode.plusLighter(_:);
  }

  v76 = v144;
  v77 = v150;
  (*(v149 + 104))(v144, *v75, v150);
  v78 = v142;
  (*(v74 + 32))(&v142[*(v139 + 36)], v76, v77);
  sub_22148(v37, v78, &qword_3174F0, &qword_269978);
  LOBYTE(v77) = sub_262520();
  v79 = v152;
  sub_261B0(v152);
  sub_30304(v79, type metadata accessor for SizeConstants.Spacing);
  sub_2610C0();
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v88 = v148;
  sub_22148(v78, v148, &qword_3174F8, &qword_269980);
  v89 = v88 + *(v141 + 36);
  *v89 = v77;
  *(v89 + 8) = v81;
  *(v89 + 16) = v83;
  *(v89 + 24) = v85;
  *(v89 + 32) = v87;
  *(v89 + 40) = 0;
  v90 = sub_2AA14();
  v91 = v131;
  v92 = v130;
  if ((v90 & 1) == 0 || (v93 = 15.0, (sub_2AD18(v132) & 1) == 0))
  {
    v93 = 0.0;
  }

  sub_22148(v88, v70, &qword_317500, &qword_269988);
  v94 = (v70 + *(v145 + 36));
  *v94 = 0.0;
  v94[1] = v93;
  v95 = sub_2639C();
  v97 = v157;
  v96 = v158;
  v98 = v154;
  if (v95 && (sub_2AA14() & 1) != 0)
  {
    sub_263610();
    sub_2635B0();

    v99 = sub_2635A0();
  }

  else
  {
    v99 = 0;
  }

  v100 = v2 + *(type metadata accessor for PagedScrollView(0) + 44);
  v101 = *(v100 + 16);
  v161 = *v100;
  v162 = v101;
  sub_2EF0(&qword_317300, &unk_269840);
  sub_2631E0();
  v102 = v164;
  v103 = v165;
  sub_22148(v70, v97, &qword_317508, &qword_269990);
  v104 = (v97 + *(v96 + 36));
  *v104 = v99;
  v104[1] = v102;
  v104[2] = v103;
  v105 = v155;
  v106 = v155 + 104;
  v107 = *(v155 + 104);
  v107(v69, enum case for DynamicTypeSize.small(_:), v92);
  v107(v98, enum case for DynamicTypeSize.xxxLarge(_:), v92);
  sub_2F3EC(&qword_317538, &type metadata accessor for DynamicTypeSize);
  if ((sub_264380() & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v108 = *(v105 + 32);
  v109 = v127;
  v108(v127, v69, v92);
  v110 = v129;
  v108((v109 + *(v129 + 48)), v98, v92);
  v111 = v91;
  v112 = v128;
  sub_8198(v109, v128, &qword_3174E0, &qword_26B310);
  v113 = *(v110 + 48);
  v108(v156, v112, v92);
  v114 = *(v105 + 8);
  v114(v112 + v113, v92);
  sub_22148(v109, v112, &qword_3174E0, &qword_26B310);
  v115 = *(v110 + 48);
  v98 = v158;
  v116 = v156;
  v108(&v156[*(v111 + 36)], (v112 + v115), v92);
  v117 = v112;
  v91 = v111;
  v114(v117, v92);
  v106 = sub_30374();
  v103 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970);
  v69 = v133;
  v118 = v157;
  sub_262B70();
  sub_8E80(v116, &qword_3174E8, &qword_269970);
  sub_8E80(v118, &qword_317510, &qword_269998);
  if (qword_3158A0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v164 = qword_316D78;
  v165 = unk_316D80;
  *&v161 = v98;
  *(&v161 + 1) = v91;
  v162 = v106;
  v163 = v103;
  swift_getOpaqueTypeConformance2();
  sub_10A84();
  v119 = v136;
  v120 = v137;
  sub_262C00();
  (*(v134 + 8))(v69, v120);
  v121 = v126;
  if (qword_3158A8 != -1)
  {
    swift_once();
  }

  v161 = xmmword_316D88;
  v122 = v135;
  sub_2616F0();
  sub_8E80(v119, &qword_317520, &qword_2699A8);
  v123 = v122;
  v124 = v160;
  sub_22148(v123, v160, &qword_317520, &qword_2699A8);
  return (*(v159 + 56))(v124, 0, 1, v121);
}

uint64_t sub_2A680(uint64_t a1)
{
  v2 = sub_261180();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2619A0();
}

uint64_t sub_2A748(uint64_t a1)
{
  v2 = type metadata accessor for PagedScrollView(0);
  v3 = *(a1 + *(v2 + 48));
  if (*(v3 + 16))
  {
    sub_2F4B4(v3 + 32, &v9);
    v4 = v11;
    v5 = v12;
    sub_2E18(&v9, v11);
    (*(v5 + 16))(v4, v5);
    sub_2F4EC(&v9);
  }

  v6 = (a1 + *(v2 + 44));
  v7 = *(v6 + 2);
  v9 = *v6;
  v10 = v7;
  sub_2EF0(&qword_317300, &unk_269840);
  return sub_2631F0();
}

uint64_t sub_2A834(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_2E18(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = (a2 + *(type metadata accessor for PagedScrollView(0) + 44));
  v14 = *v8;
  v15 = *(v8 + 2);
  sub_2EF0(&qword_317300, &unk_269840);
  sub_2631E0();
  if (v13)
  {
    if (v5 == v12 && v13 == v7)
    {

      v10 = 1;
    }

    else
    {
      v10 = sub_264F10();
    }
  }

  else
  {

    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_2A954@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_2F4B4(v7, v9);
      result = v6(v9);
      if (v3)
      {
        return sub_2F4EC(v9);
      }

      if (result)
      {
        break;
      }

      result = sub_2F4EC(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v8 = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = v8;
    *(a3 + 32) = v10;
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2AA14()
{
  v1 = type metadata accessor for PagedScrollView(0);
  v2 = (v0 + *(v1 + 44));
  v3 = *(v2 + 2);
  v15 = *v2;
  v16 = v3;
  sub_2EF0(&qword_317300, &unk_269840);
  sub_2631E0();
  v4 = v20;
  v5 = *(v0 + *(v1 + 48));
  if (*(v5 + 16))
  {
    v6 = v19;
    sub_2F4B4(v5 + 32, &v15);
    v7 = v17;
    v8 = v18;
    sub_2E18(&v15, v17);
    v9 = (*(v8 + 16))(v7, v8);
    v11 = v10;
    sub_2F4EC(&v15);
    if (v4)
    {
      if (v11)
      {
        if (v6 == v9 && v4 == v11)
        {

          v13 = 1;
        }

        else
        {
          v13 = sub_264F10();
        }

        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (v11)
    {
      v13 = 0;
      goto LABEL_15;
    }
  }

  else if (v20)
  {
LABEL_10:
    v13 = 0;
LABEL_15:

    return v13 & 1;
  }

  v13 = 1;
  return v13 & 1;
}

uint64_t sub_2AB6C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PageBackground(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + *(type metadata accessor for PagedScrollView(0) + 48));
  v14 = v1;
  sub_2A954(sub_30B94, v7, v15);
  v8 = v16;
  if (v16)
  {
    v9 = v17;
    sub_2E18(v15, v16);
    (*(v9 + 24))(v8, v9);
    sub_2F4EC(v15);
    PageBackground.resolvedColorScheme.getter(a1);
    sub_30304(v6, type metadata accessor for PageBackground);
    v10 = sub_261180();
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  else
  {
    sub_8E80(v15, &qword_317318, &qword_269850);
    v12 = sub_261180();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_2AD18(uint64_t a1)
{
  sub_8198(a1, &v14, &qword_317318, &qword_269850);
  if (!*(&v15 + 1))
  {
    sub_8E80(&v14, &qword_317318, &qword_269850);
LABEL_10:
    v10 = 0;
    return v10 & 1;
  }

  v17[0] = v14;
  v17[1] = v15;
  v2 = v16;
  v18 = v16;
  v3 = *(&v15 + 1);
  sub_2E18(v17, *(&v15 + 1));
  v4 = (*(v2 + 16))(v3, v2);
  v6 = v5;
  v7 = (v1 + *(type metadata accessor for PagedScrollView(0) + 44));
  v8 = *(v7 + 2);
  v14 = *v7;
  *&v15 = v8;
  sub_2EF0(&qword_317300, &unk_269840);
  sub_2631E0();
  if (!v13)
  {

    sub_2F4EC(v17);
    goto LABEL_10;
  }

  if (v4 == v12 && v13 == v6)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_264F10();
  }

  sub_2F4EC(v17);
  return v10 & 1;
}

uint64_t sub_2AE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49[1] = a4;
  v49[2] = a3;
  v49[0] = a2;
  v57 = a5;
  v6 = sub_2630C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_260D00();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_2EF0(&qword_3173E8, &qword_2698E0);
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  __chkstk_darwin(v13);
  v50 = v49 - v15;
  v51 = sub_2EF0(&qword_3173F0, &qword_2698E8);
  v16 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v18 = v49 - v17;
  v19 = sub_2EF0(&qword_3173F8, &qword_2698F0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v56 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v55 = v49 - v23;
  v24 = sub_2EF0(&qword_317378, &unk_2698B0);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  v27 = __chkstk_darwin(v24);
  v54 = v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = (v49 - v29);
  KeyPath = swift_getKeyPath();
  v32 = (v30 + *(v25 + 44));
  v33 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v34 = sub_261180();
  (*(*(v34 - 8) + 16))(v32 + v33, v49[0], v34);
  *v32 = KeyPath;
  *v30 = a1;
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v36 = objc_opt_self();

  v37 = [v36 bundleForClass:ObjCClassFromMetadata];
  sub_260CF0();
  sub_263120();
  (*(v7 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v6);
  v38 = sub_263100();

  (*(v7 + 8))(v10, v6);
  v58 = v38;
  v59 = 0;
  v60 = 257;
  sub_2EF0(&qword_317310, &qword_2721D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269100;
  v40 = sub_2624C0();
  *(inited + 32) = v40;
  v41 = sub_2624E0();
  *(inited + 33) = v41;
  sub_2624D0();
  sub_2624D0();
  if (sub_2624D0() != v40)
  {
    sub_2624D0();
  }

  sub_2624D0();
  if (sub_2624D0() != v41)
  {
    sub_2624D0();
  }

  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2EF0(&qword_317400, &qword_2698F8);
  sub_2F960();
  v42 = v50;
  sub_262D00();

  (*(v52 + 32))(v18, v42, v53);
  *&v18[*(v51 + 36)] = 0;
  sub_2F9E4();
  v43 = v55;
  sub_262C60();
  sub_8E80(v18, &qword_3173F0, &qword_2698E8);
  v44 = v54;
  sub_8198(v30, v54, &qword_317378, &unk_2698B0);
  v45 = v56;
  sub_8198(v43, v56, &qword_3173F8, &qword_2698F0);
  v46 = v57;
  sub_8198(v44, v57, &qword_317378, &unk_2698B0);
  v47 = sub_2EF0(&qword_317428, &qword_269908);
  sub_8198(v45, v46 + *(v47 + 48), &qword_3173F8, &qword_2698F0);
  sub_8E80(v43, &qword_3173F8, &qword_2698F0);
  sub_8E80(v30, &qword_317378, &unk_2698B0);
  sub_8E80(v45, &qword_3173F8, &qword_2698F0);
  return sub_8E80(v44, &qword_317378, &unk_2698B0);
}

uint64_t sub_2B4D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_2C224(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PagedScrollView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2E9A8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for PagedScrollView);
  *a2 = sub_30BF4;
  a2[1] = v7;
  return result;
}

uint64_t sub_2B5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v4 = *(a1 + 24);
  sub_261730();
  v5 = *(a1 + 16);
  sub_261730();
  sub_2F9C(&qword_3171D8, &qword_26B730);
  sub_261730();
  swift_getTupleTypeMetadata2();
  sub_2636B0();
  swift_getWitnessTable();
  v6 = sub_263300();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  v17[4] = v5;
  v17[5] = v4;
  v18 = *(a1 + 32);
  v19 = v2;
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2632F0();
  WitnessTable = swift_getWitnessTable();
  sub_1609C(v11, v6, WitnessTable);
  v15 = *(v7 + 8);
  v15(v11, v6);
  sub_1609C(v13, v6, WitnessTable);
  return (v15)(v13, v6);
}

uint64_t sub_2B824@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a6;
  v59 = a4;
  v46[1] = a2;
  v54 = sub_261730();
  v56 = *(v54 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v54);
  v53 = v46 - v11;
  sub_2F9C(&qword_3171D8, &qword_26B730);
  v12 = sub_261730();
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  v14 = __chkstk_darwin(v12);
  v52 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v55 = v46 - v16;
  v17 = sub_261730();
  v47 = *(v17 - 8);
  v18 = v47;
  v19 = *(v47 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v48 = v46 - v23;
  v63 = a2;
  v64 = a3;
  v65 = v59;
  v66 = a5;
  v24 = type metadata accessor for FrameView();
  v25 = v24[17];
  sub_262500();
  sub_262CB0();
  v62[6] = a5;
  v62[7] = &protocol witness table for _SafeAreaIgnoringLayout;
  WitnessTable = swift_getWitnessTable();
  sub_1609C(v22, v17, WitnessTable);
  v50 = *(v18 + 8);
  v51 = v18 + 8;
  v50(v22, v17);
  v26 = v24[16];
  sub_261420();
  v28 = v27 - (*(a1 + v24[13]) + *(a1 + v24[13]));
  sub_261420();
  v29 = (a1 + v24[15]);
  v30 = *v29;
  v31 = v29[1];
  v32 = v53;
  v33 = v59;
  sub_262DA0();
  v62[4] = v33;
  v62[5] = &protocol witness table for _FrameLayout;
  v34 = v54;
  v35 = swift_getWitnessTable();
  v36 = v52;
  View.animateIn()();
  (*(v56 + 8))(v32, v34);
  v37 = sub_8E38(&qword_3171E0, &qword_3171D8, &qword_26B730);
  v62[2] = v35;
  v62[3] = v37;
  v38 = v12;
  v39 = swift_getWitnessTable();
  v40 = v55;
  sub_1609C(v36, v12, v39);
  v41 = v57;
  v42 = *(v57 + 8);
  v42(v36, v12);
  v43 = v48;
  (*(v47 + 16))(v22, v48, v17);
  v63 = v22;
  (*(v41 + 16))(v36, v40, v38);
  v64 = v36;
  v62[0] = v17;
  v62[1] = v38;
  v60 = WitnessTable;
  v61 = v39;
  sub_10E998(&v63, 2uLL, v62);
  v42(v40, v38);
  v44 = v50;
  v50(v43, v17);
  v42(v36, v38);
  return v44(v22, v17);
}

uint64_t sub_2BD54()
{
  sub_2F264();
  sub_261CB0();
  return v1;
}

uint64_t sub_2BD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = *(v2 + 16);
  v14 = *(v2 + 32);
  sub_2EF0(&qword_3171C0, &qword_269710);
  sub_263320();
  if (v12)
  {
    if (v11 == *v2 && v12 == *(v2 + 8))
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_264F10();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2EF0(&qword_3171C8, &qword_269718);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_2EF0(&qword_3171D0, &unk_269720);
  v10 = a2 + *(result + 36);
  *v10 = KeyPath;
  *(v10 + 8) = v7 & 1;
  return result;
}

uint64_t sub_2BEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  return sub_2BD90(a1, a2);
}

uint64_t sub_2BF4C(uint64_t a1)
{
  sub_30CC(a1, v3);
  sub_30CC(v3, &v2);
  sub_30824();
  sub_261CC0();
  return sub_3080(v3);
}

uint64_t sub_2C144@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261BE0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2C174@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261BE0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2C1A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261BF0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2C1D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261BF0();
  *a1 = result & 1;
  return result;
}

char *sub_2C204(char *a1, int64_t a2, char a3)
{
  result = sub_2DED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2C224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2C300()
{
  sub_2C37C();
  if (v0 <= 0x3F)
  {
    sub_2C3F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2C37C()
{
  if (!qword_316E58)
  {
    sub_2F9C(&qword_316D98, &unk_269120);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_316E58);
    }
  }
}

void sub_2C3F4()
{
  if (!qword_316E60)
  {
    sub_261180();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_316E60);
    }
  }
}

uint64_t sub_2C4E8()
{
  result = sub_2603C0();
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

uint64_t sub_2C5D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_2EF0(&qword_316F78, &unk_269C60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[12]);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_2601E0();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[14];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_2C7C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2EF0(&qword_316F70, &unk_2693C0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = sub_2EF0(&qword_316F78, &unk_269C60);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[12]) = (a2 - 1);
  }

  else
  {
    v17 = sub_2601E0();
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[14];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

void sub_2C9A4()
{
  sub_2CC00(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v0 <= 0x3F)
  {
    sub_2CC00(319, &qword_316FF0, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_2CCB8(319, &qword_316308, &type metadata for CGFloat, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_2CC54(319, &qword_316FF8, &qword_317000, &qword_2693E0, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_2CC00(319, &qword_317008, type metadata accessor for SizeConstants.Spacing);
          if (v4 <= 0x3F)
          {
            sub_2CCB8(319, &qword_3167D0, &type metadata for Bool, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_2CC54(319, &qword_317010, &qword_316DD0, &qword_2692C0, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_2CCB8(319, &unk_317018, &type metadata for AnyPagedFrame, &type metadata accessor for Array);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for PagedScrollViewModel(319);
                  if (v8 <= 0x3F)
                  {
                    sub_2601E0();
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2CC00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2CC54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2F9C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2CCB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2CD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261460();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2CE30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_261460();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2CF08(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2CF40()
{
  result = sub_261460();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PagedScrollViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_2CFCC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2CFE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2D028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2D08C(uint64_t a1)
{
  result = sub_261460();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2D144(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_261460();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 24);
  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(*(v6 - 8) + 64);
  v15 = *(v10 + 80);
  v16 = *(v13 + 80);
  if (*(v13 + 84) <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v15 + 16;
  v19 = *(*(*(a3 + 16) - 8) + 64) + v16;
  if (a2 > v17)
  {
    v20 = ((v19 + ((v18 + ((((((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & ~v16) + *(*(v9 - 8) + 64);
    v21 = 8 * v20;
    if (v20 <= 3)
    {
      v23 = ((a2 - v17 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v23))
      {
        v22 = *(a1 + v20);
        if (!v22)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v23 > 0xFF)
      {
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v23 < 2)
      {
LABEL_30:
        if (v17)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v22 = *(a1 + v20);
    if (!*(a1 + v20))
    {
      goto LABEL_30;
    }

LABEL_17:
    v24 = (v22 - 1) << v21;
    if (v20 > 3)
    {
      v24 = 0;
    }

    if (v20)
    {
      if (v20 <= 3)
      {
        v25 = v20;
      }

      else
      {
        v25 = 4;
      }

      if (v25 > 2)
      {
        if (v25 == 3)
        {
          v26 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v26 = *a1;
        }
      }

      else if (v25 == 1)
      {
        v26 = *a1;
      }

      else
      {
        v26 = *a1;
      }
    }

    else
    {
      v26 = 0;
    }

    return v17 + (v26 | v24) + 1;
  }

LABEL_31:
  if (v8 == v17)
  {
    v27 = *(v7 + 48);
    v28 = v6;
    v29 = a1;
    v30 = *(v7 + 84);

    return v27(v29, v30, v28);
  }

  v32 = (v18 + ((((((a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
  if (v11 != v17)
  {
    v27 = *(v13 + 48);
    v29 = ((v19 + v32) & ~v16);
    v30 = *(v13 + 84);
    v28 = *(a3 + 24);

    return v27(v29, v30, v28);
  }

  v33 = *(v10 + 48);

  return v33(v32);
}

void sub_2D464(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_261460();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = *(v11 - 8);
  if (v14 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = *(v11 - 8);
  v18 = *(v15 + 84);
  v19 = *(*(v8 - 8) + 64);
  v20 = *(v12 + 80);
  v21 = *(v12 + 64);
  v22 = *(v15 + 80);
  v23 = *(v15 + 64);
  if (v18 <= v16)
  {
    v24 = v16;
  }

  else
  {
    v24 = *(v15 + 84);
  }

  v25 = v21 + v22;
  v26 = ((v21 + v22 + ((v20 + 16 + ((((((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v22) + v23;
  if (a3 <= v24)
  {
    v27 = 0;
  }

  else if (v26 <= 3)
  {
    v30 = ((a3 - v24 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
    if (HIWORD(v30))
    {
      v27 = 4;
    }

    else
    {
      if (v30 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v30 >= 2)
      {
        v27 = v31;
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v27 = 1;
  }

  if (v24 < a2)
  {
    v28 = ~v24 + a2;
    if (v26 < 4)
    {
      v29 = (v28 >> (8 * v26)) + 1;
      if (v26)
      {
        v32 = v28 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v32;
            if (v27 > 1)
            {
LABEL_53:
              if (v27 == 2)
              {
                *&a1[v26] = v29;
              }

              else
              {
                *&a1[v26] = v29;
              }

              return;
            }
          }

          else
          {
            *a1 = v28;
            if (v27 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v26);
      *a1 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v27)
    {
      a1[v26] = v29;
    }

    return;
  }

  if (v27 <= 1)
  {
    if (v27)
    {
      a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v27 == 2)
  {
    *&a1[v26] = 0;
    goto LABEL_33;
  }

  *&a1[v26] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v24)
  {
    v33 = *(v9 + 56);
    v34 = v8;
    v35 = a1;
    v36 = a2;
    v37 = v10;

LABEL_37:
    v33(v35, v36, v37, v34);
    return;
  }

  v38 = (v20 + 16 + (((((&a1[v19 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20;
  if (v14 != v24)
  {
    v33 = *(v17 + 56);
    v35 = ((v25 + v38) & ~v22);
    v36 = a2;
    v37 = v18;
    v34 = v11;

    goto LABEL_37;
  }

  v39 = *(v13 + 56);

  v39(v38, a2);
}

__n128 sub_2D830(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2D844(uint64_t a1, int a2)
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

uint64_t sub_2D88C(uint64_t result, int a2, int a3)
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

unint64_t sub_2D90C(uint64_t a1)
{
  result = sub_2D934();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2D934()
{
  result = qword_317198;
  if (!qword_317198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317198);
  }

  return result;
}

uint64_t sub_2D988(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void *sub_2DA04(void *a1, int64_t a2, char a3)
{
  result = sub_2DFF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DA24(void *a1, int64_t a2, char a3)
{
  result = sub_2EEC8(a1, a2, a3, *v3, &qword_317258, &unk_27A660, &qword_316A30, &qword_2697B0);
  *v3 = result;
  return result;
}

void *sub_2DA64(void *a1, int64_t a2, char a3)
{
  result = sub_2EEC8(a1, a2, a3, *v3, &qword_317248, &qword_269798, &qword_317250, &unk_2697A0);
  *v3 = result;
  return result;
}

char *sub_2DAA4(char *a1, int64_t a2, char a3)
{
  result = sub_2E12C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2DAC4(char *a1, int64_t a2, char a3)
{
  result = sub_2E238(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2DAE4(char *a1, int64_t a2, char a3)
{
  result = sub_2E344(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2DB04(size_t a1, int64_t a2, char a3)
{
  result = sub_2E448(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DB24(void *a1, int64_t a2, char a3)
{
  result = sub_2E620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DB44(void *a1, int64_t a2, char a3)
{
  result = sub_2E76C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DB64(void *a1, int64_t a2, char a3)
{
  result = sub_2EEC8(a1, a2, a3, *v3, &qword_317228, &qword_269778, &qword_317230, &qword_269780);
  *v3 = result;
  return result;
}

char *sub_2DBA4(char *a1, int64_t a2, char a3)
{
  result = sub_2F010(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2DBC4(void *a1, int64_t a2, char a3)
{
  result = sub_2F130(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2DBE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_317288, &qword_2697E8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_2DCE8(size_t result, int64_t a2, char a3, void *a4)
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

  sub_2EF0(&qword_317278, &unk_278FE0);
  v10 = *(sub_2EF0(&qword_317280, &qword_2697E0) - 8);
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
  v15 = *(sub_2EF0(&qword_317280, &qword_2697E0) - 8);
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

char *sub_2DED8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_3175D0, &qword_269A48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_2DFF8(void *result, int64_t a2, char a3, void *a4)
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
    sub_2EF0(&qword_317268, &qword_2697C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(&qword_317270, &unk_2697D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2E12C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_317240, &qword_269790);
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

char *sub_2E238(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_317290, &qword_2697F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2E344(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_317220, &qword_269770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_2E448(size_t result, int64_t a2, char a3, void *a4)
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

  sub_2EF0(&qword_317298, &qword_2697F8);
  v10 = *(sub_262430() - 8);
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
  v15 = *(sub_262430() - 8);
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

void *sub_2E620(void *result, int64_t a2, char a3, void *a4)
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
    sub_2EF0(&qword_317260, &qword_2697B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(&qword_3160F8, &qword_2697C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2E76C(void *result, int64_t a2, char a3, void *a4)
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
    sub_2EF0(&qword_3171A0, &unk_269650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(&qword_3171A8, &unk_282E00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2E8C0()
{
  v1 = (type metadata accessor for PagedScrollViewPositionObserverModifier(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_261460();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(v3 + v1[8]);

  return swift_deallocObject();
}

uint64_t sub_2E9A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2EA10(double *a1)
{
  v3 = *(type metadata accessor for PagedScrollViewPositionObserverModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25650(a1, v4);
}

double sub_2EAAC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

double sub_2EAE8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

uint64_t sub_2EB74()
{
  v1 = type metadata accessor for PagedScrollView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_261180();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  sub_2EF0(&qword_316DC0, &qword_2691C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_261180();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  sub_3074(*&v4[v1[6]], v4[v1[6] + 8]);
  v10 = &v4[v1[7]];
  if (v10[5])
  {
    sub_3080(v10);
  }

  else
  {
    v11 = *v10;
  }

  v12 = &v4[v1[8]];
  sub_2EF0(&qword_316DC8, &qword_276F60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
    v14 = sub_261690();
    (*(*(v14 - 8) + 8))(&v12[v13], v14);
  }

  else
  {
    v15 = *v12;
  }

  sub_3074(*&v4[v1[9]], v4[v1[9] + 8]);
  sub_3074(*&v4[v1[10]], v4[v1[10] + 8]);
  v16 = &v4[v1[11]];
  v17 = *(v16 + 1);

  v18 = *(v16 + 2);

  v19 = *&v4[v1[12]];

  v20 = *&v4[v1[13]];

  v21 = v1[14];
  v22 = sub_2601E0();
  (*(*(v22 - 8) + 8))(&v4[v21], v22);

  return swift_deallocObject();
}

uint64_t sub_2EE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PagedScrollView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26A4C(a1, v6, a2);
}

void *sub_2EEC8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_2EF0(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2EF0(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2F010(char *result, int64_t a2, char a3, char *a4)
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
    sub_2EF0(&qword_317238, &qword_269788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2F130(void *result, int64_t a2, char a3, void *a4)
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
    sub_2EF0(&qword_317218, &unk_269760);
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
    sub_2EF0(&qword_3160D0, &unk_270CF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2F264()
{
  result = qword_3172A0;
  if (!qword_3172A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3172A0);
  }

  return result;
}

unint64_t sub_2F2C0()
{
  result = qword_3172E0;
  if (!qword_3172E0)
  {
    sub_2F9C(&qword_3172D8, &qword_269830);
    sub_2F9C(&qword_3172E8, &qword_269838);
    sub_8E38(&qword_3172F0, &qword_3172E8, &qword_269838);
    swift_getOpaqueTypeConformance2();
    sub_2F3EC(&qword_3172F8, type metadata accessor for PagedScrollViewPositionObserverModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3172E0);
  }

  return result;
}

uint64_t sub_2F3EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2F454()
{
  v1 = *(type metadata accessor for PagedScrollView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2A748(v2);
}

unint64_t sub_2F51C()
{
  result = qword_317388;
  if (!qword_317388)
  {
    sub_2F9C(&qword_317370, &qword_2698A8);
    sub_2F5A8();
    sub_2F660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317388);
  }

  return result;
}

unint64_t sub_2F5A8()
{
  result = qword_317390;
  if (!qword_317390)
  {
    sub_2F9C(&qword_317378, &unk_2698B0);
    sub_8E38(&qword_317398, &qword_3173A0, &qword_26D0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317390);
  }

  return result;
}

unint64_t sub_2F660()
{
  result = qword_3173A8;
  if (!qword_3173A8)
  {
    sub_2F9C(&qword_317358, &qword_269890);
    sub_2F718();
    sub_8E38(&qword_316970, &qword_316968, &qword_268A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3173A8);
  }

  return result;
}

unint64_t sub_2F718()
{
  result = qword_3173B0;
  if (!qword_3173B0)
  {
    sub_2F9C(&qword_317350, &qword_269888);
    sub_8E38(&qword_3173B8, &qword_3173C0, &unk_2698C0);
    sub_2F3EC(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3173B0);
  }

  return result;
}

unint64_t sub_2F800()
{
  result = qword_3173D0;
  if (!qword_3173D0)
  {
    sub_2F9C(&qword_317338, &qword_269870);
    sub_8E38(&qword_317380, &qword_317340, &qword_269878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3173D0);
  }

  return result;
}

uint64_t sub_2F918()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_2F960()
{
  result = qword_317408;
  if (!qword_317408)
  {
    sub_2F9C(&qword_317400, &qword_2698F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317408);
  }

  return result;
}

unint64_t sub_2F9E4()
{
  result = qword_317410;
  if (!qword_317410)
  {
    sub_2F9C(&qword_3173F0, &qword_2698E8);
    sub_2F9C(&qword_317400, &qword_2698F8);
    sub_2F960();
    swift_getOpaqueTypeConformance2();
    sub_8E38(&qword_317418, &qword_317420, &qword_269900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317410);
  }

  return result;
}

unint64_t sub_2FAE0()
{
  result = qword_317448;
  if (!qword_317448)
  {
    sub_2F9C(&qword_317440, &qword_269918);
    sub_2F9C(&qword_317450, &qword_269920);
    sub_2FBA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317448);
  }

  return result;
}

unint64_t sub_2FBA0()
{
  result = qword_317458;
  if (!qword_317458)
  {
    sub_2F9C(&qword_317450, &qword_269920);
    sub_2F9C(&qword_317460, &qword_269928);
    sub_2605D0();
    sub_2FCB0();
    sub_2F3EC(&qword_3174A8, &type metadata accessor for YearInReviewExposureEvent);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317458);
  }

  return result;
}