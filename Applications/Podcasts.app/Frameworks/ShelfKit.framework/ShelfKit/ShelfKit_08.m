uint64_t sub_DB014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_DB05C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_DB0A4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t objectdestroyTm_1(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t AMSDialogRequest.shelfUniqueId.getter()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_3ED244();

  return v3;
}

uint64_t sub_DB1F4()
{
  v1 = [*v0 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_3ED244();

  return v3;
}

unint64_t sub_DB25C(uint64_t a1)
{
  result = sub_DB284();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_DB284()
{
  result = qword_4F1380;
  if (!qword_4F1380)
  {
    sub_C0DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1380);
  }

  return result;
}

uint64_t JSONDecoder.init(jsonContext:)(uint64_t a1)
{
  v2 = sub_3EBF94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E5864();
  (*(v3 + 16))(v5, a1, v2);

  v7 = sub_3ED0B4();
  sub_81870(v7);

  sub_3E5854();

  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t JSONEncoder.init(jsonContext:)(uint64_t a1)
{
  v2 = sub_3EBF94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E58B4();
  (*(v3 + 16))(v5, a1, v2);

  v7 = sub_3ED0B4();
  sub_81870(v7);

  sub_3E58A4();

  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t sub_DB534(uint64_t a1)
{
  v2 = sub_3E5994();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = URLComponents.queryItems(named:)(a1, 0xE100000000000000);
  if (!v6[2])
  {

    return 0;
  }

  (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

  v7 = sub_3E5984();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  if (!v9)
  {
    return 0;
  }

  v13 = 0;
  v10 = sub_DB960(v7, v9);

  if (v10)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

void *URLComponents.queryItems(named:)(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = sub_3E5994();
  v25 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v29 = &v21 - v6;
  result = sub_3E59A4();
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = result;
  v24 = result[2];
  if (!v24)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_18:

    return v10;
  }

  v9 = 0;
  v23 = v25 + 16;
  v21 = (v25 + 8);
  v27 = (v25 + 32);
  v10 = _swiftEmptyArrayStorage;
  v22 = v3;
  while (v9 < v8[2])
  {
    v11 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v12 = *(v25 + 72);
    (*(v25 + 16))(v29, v8 + v11 + v12 * v9, v3);
    if (sub_3E5974() == a1 && v13 == v26)
    {

LABEL_11:
      v15 = a1;
      v16 = *v27;
      (*v27)(v28, v29, v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_41B04(0, v10[2] + 1, 1);
        v10 = v30;
      }

      v19 = v10[2];
      v18 = v10[3];
      if (v19 >= v18 >> 1)
      {
        sub_41B04(v18 > 1, v19 + 1, 1);
        v10 = v30;
      }

      v10[2] = v19 + 1;
      v20 = v10 + v11 + v19 * v12;
      v3 = v22;
      result = (v16)(v20, v28, v22);
      a1 = v15;
      goto LABEL_5;
    }

    v14 = sub_3EE804();

    if (v14)
    {
      goto LABEL_11;
    }

    result = (*v21)(v29, v3);
LABEL_5:
    if (v24 == ++v9)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_DB960(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFFFFFFLL));
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_3EE3B4();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

_BYTE *sub_DBA58@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_DBAE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_1F958(a1, v10);
  sub_3EBC54();
  if (!v2)
  {
    return sub_1D4F0(v12, a2);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_3EE9D4();
  sub_3EBF54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D8);
  sub_3ED0C4();

  (*(v6 + 8))(v8, v5);
  sub_FBD0(v12, v10, qword_4EB0E0);
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(v10, v11);
    swift_getMetatypeMetadata();
    sub_3EC854();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    sub_FCF8(v10, qword_4EB0E0);
  }

  swift_willThrow();
  return sub_FCF8(v12, qword_4EB0E0);
}

uint64_t sub_DBD04(uint64_t a1)
{
  sub_1F958(a1, &v3);
  sub_3EBC44();
  v1 = sub_3EBC74();
  sub_3EBC64();
  return (*(*(v1 - 8) + 8))(v4, v1);
}

uint64_t sub_DBDEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v91 = a3;
  v99 = a2;
  v90 = a4;
  v5 = sub_3EBDF4();
  __chkstk_darwin(v5 - 8);
  v89 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_3EC264();
  v88 = *(v95 - 8);
  __chkstk_darwin(v95);
  v85 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1398);
  __chkstk_darwin(v8 - 8);
  v94 = &v81 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F13A0);
  v93 = *(v87 - 8);
  __chkstk_darwin(v87);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v81 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB330);
  v96 = *(v15 - 8);
  v97 = v15;
  __chkstk_darwin(v15);
  v86 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v81 - v18;
  v107 = sub_3EBF94();
  v100 = *(v107 - 8);
  __chkstk_darwin(v107);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v81 - v23;
  __chkstk_darwin(v25);
  *&v101 = &v81 - v26;
  __chkstk_darwin(v27);
  v29 = &v81 - v28;
  v30 = dynamic_cast_existential_2_conditional(a1);
  if (v30)
  {
    v33 = v30;
    v94 = v31;
    v95 = v32;
    v34 = v99;
    __swift_project_boxed_opaque_existential_1(v99, v99[3]);
    sub_3EE9D4();
    sub_3EBF74();
    sub_3EBF44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB338);
    sub_3EBFB4();
    v35 = v97;
    v36 = *(v96 + 1);
    v37 = v36(v19, v97);
    v38 = v107;
    if (!v103)
    {
      v39 = v91(v37);
      v103 = v92;
      v104 = v39;
      v40 = v86;
      sub_3EBF44();
      sub_3EBF04();
      v41 = v40;
      v38 = v107;
      v36(v41, v35);
      v42 = v100;
      (*(v100 + 8))(v29, v38);
      (*(v42 + 32))(v29, v101, v38);
    }

    __swift_project_boxed_opaque_existential_1(v34, v34[3]);
    v43 = v100;
    (*(v100 + 16))(v101, v29, v38);
    sub_3ED0B4();
    sub_3EE9E4();

    *&v105 = v33;
    *(&v105 + 1) = v94;
    v106 = v95;
    __swift_allocate_boxed_opaque_existential_0Tm(&v103);
    v44 = v98;
    sub_3ED7D4();
    if (v44)
    {
      (*(v43 + 8))(v29, v38);
      return __swift_deallocate_boxed_opaque_existential_0Tm(&v103);
    }

    v101 = v105;
    v69 = v105;
    v70 = __swift_project_boxed_opaque_existential_1(&v103, v105);
    v71 = v90;
    *(v90 + 24) = v101;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v71);
    (*(*(v69 - 8) + 16))(boxed_opaque_existential_0Tm, v70, v69);
    (*(v43 + 8))(v29, v38);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v103);
  }

  v46 = v94;
  v96 = v11;
  v86 = v21;
  v47 = v93;
  v97 = v24;
  v48 = v95;
  v49 = v99;
  v50 = dynamic_cast_existential_2_conditional(a1);
  if (v50)
  {
    v82 = v51;
    v83 = v52;
    v84 = v50;
    v53 = v49;
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    sub_3EE9D4();
    v54 = v97;
    sub_3EBF74();
    sub_3EBF24();
    v55 = v48;
    sub_3EBFB4();
    v56 = *(v47 + 8);
    v57 = v14;
    v58 = v87;
    v56(v57, v87);
    v59 = v88;
    v60 = (*(v88 + 48))(v46, 1, v55);
    v61 = sub_FCF8(v46, &qword_4F1398);
    v62 = v107;
    if (v60 == 1)
    {
      v91(v61);
      v63 = v85;
      sub_3EC274();
      v64 = v96;
      sub_3EBF24();
      sub_3EBF04();
      v65 = v64;
      v62 = v107;
      v56(v65, v58);
      v66 = v63;
      v54 = v97;
      (*(v59 + 8))(v66, v55);
      v67 = v100;
      (*(v100 + 8))(v54, v62);
      (*(v67 + 32))(v54, v101, v62);
    }

    sub_1F958(v53, v102);
    v68 = v98;
    sub_3EBD34();
    if (v68)
    {
      return (*(v100 + 8))(v54, v62);
    }

    v76 = v100;
    (*(v100 + 16))(v86, v54, v62);
    *&v105 = v84;
    *(&v105 + 1) = v82;
    v106 = v83;
    __swift_allocate_boxed_opaque_existential_0Tm(&v103);
    sub_3EC554();
    v101 = v105;
    v77 = v105;
    v78 = __swift_project_boxed_opaque_existential_1(&v103, v105);
    v79 = v90;
    *(v90 + 24) = v101;
    v80 = __swift_allocate_boxed_opaque_existential_0Tm(v79);
    (*(*(v77 - 8) + 16))(v80, v78, v77);
    (*(v76 + 8))(v54, v62);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v103);
  }

  v73 = sub_3EE444();
  swift_allocError();
  v75 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F0080);
  *v75 = a1;
  __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  sub_3EE9C4();
  v103 = 0;
  v104 = 0xE000000000000000;
  sub_3EE3C4(21);

  v103 = 60;
  v104 = 0xE100000000000000;
  v108._countAndFlagsBits = sub_3EEB34();
  sub_3ED3D4(v108);

  v109._object = 0x8000000000427090;
  v109._countAndFlagsBits = 0xD000000000000012;
  sub_3ED3D4(v109);
  sub_3EE424();
  (*(*(v73 - 8) + 104))(v75, enum case for DecodingError.typeMismatch(_:), v73);
  return swift_willThrow();
}

unint64_t sub_DC894()
{
  result = sub_61D80(_swiftEmptyArrayStorage);
  qword_4F1388 = result;
  return result;
}

uint64_t sub_DC8BC()
{
  if (qword_4E8968 != -1)
  {
    swift_once();
  }
}

unint64_t sub_DC918()
{
  if (qword_4E8968 != -1)
  {
    swift_once();
  }

  v0 = qword_4F1388;

  v1 = sub_3EC944();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v0;
  sub_DD7E8(v1, sub_DD3B4, 0, isUniquelyReferenced_nonNull_native, &v5);

  v3 = sub_DD18C(v5);

  return v3;
}

unint64_t sub_DCA28()
{
  result = qword_4F1390;
  if (!qword_4F1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1390);
  }

  return result;
}

uint64_t sub_DCA7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-1] - v2;
  sub_3EE6E4();
  sub_3EE634();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_3EE9D4();
  sub_3EBF54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB0D8);
  sub_3ED0C4();

  (*(v1 + 8))(v3, v0);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_DCC00@<X0>(uint64_t a1@<X8>)
{
  sub_3EBC74();
  sub_3EE6E4();
  swift_getWitnessTable();
  sub_3EE6C4();
  if (!v1)
  {
    return sub_1D4F0(v6, a1);
  }

  sub_DCA7C();
  sub_FBD0(v6, v4, qword_4EB0E0);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    swift_getMetatypeMetadata();
    sub_3EC854();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_FCF8(v4, qword_4EB0E0);
  }

  swift_willThrow();
  return sub_FCF8(v6, qword_4EB0E0);
}

double sub_DCD8C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_3EBC74();
  sub_3EE6E4();
  swift_getWitnessTable();
  sub_3EE684();
  if (v6)
  {
    sub_1F958(v5, a1);
    (*(*(v2 - 8) + 8))(v5, v2);
  }

  else
  {
    v4 = sub_3EE0F4();
    (*(*(v4 - 8) + 8))(v5, v4);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_DCFA4(uint64_t a1)
{
  sub_1F958(a1, &v3);
  sub_3EBC44();
  sub_3EE774();
  v1 = sub_3EBC74();
  swift_getWitnessTable();
  sub_3EE764();
  return (*(*(v1 - 8) + 8))(v4, v1);
}

uint64_t sub_DD0B8(uint64_t a1)
{
  sub_FBD0(a1, &v2, &qword_4EDE00);
  if (!v3)
  {
    return sub_FCF8(&v2, &qword_4EDE00);
  }

  sub_1D4F0(&v2, v4);
  sub_DCFA4(v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

unint64_t sub_DD18C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE3F0);
    v2 = sub_3EE5F4();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE3F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE400);
        swift_dynamicCast();
        result = sub_B4118(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          *(v2[7] + 8 * v10) = v21;
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
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
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

uint64_t sub_DD3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = v2;
}

void *sub_DD3D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC3C8);
  v2 = *v0;
  v3 = sub_3EE5D4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

uint64_t sub_DD53C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC3C8);
  v33 = a2;
  result = sub_3EE5E4();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_3EE954();
      sub_3ED394();
      result = sub_3EE9A4();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_DD7E8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v45 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = *(a1 + 56);
    v16 = (*(a1 + 48) + v14);
    v17 = v16[1];
    v43[0] = *v16;
    v43[1] = v17;
    v44 = *(v15 + v14);

    a2(&v40, v43);

    v18 = v40;
    v19 = v41;
    v37 = v42;
    v20 = *v45;
    v22 = sub_B4118(v40, v41);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((v39 & 1) == 0)
      {
        sub_DD3D4();
      }
    }

    else
    {
      sub_DD53C(v25, v39 & 1);
      v27 = sub_B4118(v18, v19);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_27;
      }

      v22 = v27;
    }

    v9 &= v9 - 1;
    v29 = *v45;
    if (v26)
    {
      v38 = *(v29[7] + 16 * v22);

      *(v29[7] + 16 * v22) = v38;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      v30 = (v29[6] + 16 * v22);
      *v30 = v18;
      v30[1] = v19;
      *(v29[7] + 16 * v22) = v37;
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_26;
      }

      v29[2] = v33;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_44824();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_3EE894();
  __break(1u);
  return result;
}

unint64_t sub_DDA78()
{
  result = qword_4F13A8;
  if (!qword_4F13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F13A8);
  }

  return result;
}

uint64_t Models.AlertAction.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v123 = sub_3E8C74();
  v3 = *(v123 - 8);
  __chkstk_darwin(v123);
  v107 = v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v122 = v91 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F13B0);
  __chkstk_darwin(v7 - 8);
  v9 = v91 - v8;
  v10 = sub_3E8CA4();
  v140 = *(v10 - 8);
  __chkstk_darwin(v10);
  v121 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v120 = v91 - v13;
  v119 = sub_3E5FC4();
  v139 = *(v119 - 8);
  __chkstk_darwin(v119);
  v118 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v15 - 8);
  v117 = v91 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F13B8);
  __chkstk_darwin(v17 - 8);
  v19 = v91 - v18;
  v20 = sub_3ECC24();
  v124 = *(v20 - 8);
  __chkstk_darwin(v20);
  v128 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v137 = v91 - v23;
  v24 = sub_3EC194();
  __chkstk_darwin(v24 - 8);
  v26 = v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F13C0);
  __chkstk_darwin(v27 - 8);
  v29 = v91 - v28;
  v116 = sub_3EC1F4();
  v138 = *(v116 - 8);
  __chkstk_darwin(v116);
  v115 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v127 = v91 - v32;
  __chkstk_darwin(v33);
  v35 = v91 - v34;
  v36 = *(sub_3E8CC4() + 16);

  if (v36)
  {
    v135 = v3;
    v37 = v99;
    v97 = v26;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v38 = sub_3ECC34();
    (*(*(v38 - 8) + 56))(v29, 1, 1, v38);
    v96 = sub_3E8CB4();
    v95 = v39;
    v94 = sub_3E8CD4();
    v93 = v40;
    v41 = sub_3E8CC4();
    v42 = *(v41 + 16);
    if (v42)
    {
      v91[2] = v35;
      v91[3] = v29;
      v92 = a1;
      v91[1] = v41;
      v43 = v41 + 32;
      v112 = (v140 + 7);
      v136 = (v124 + 56);
      v106 = v140 + 4;
      v105 = v140 + 2;
      v104 = (v135 + 2);
      v103 = (v135 + 11);
      v102 = enum case for PlaybackErrorBehavior.Role.cancel(_:);
      v98 = enum case for PlaybackErrorBehavior.Role.destructive(_:);
      v101 = (v135 + 1);
      v100 = (v140 + 1);
      v111 = (v138 + 2);
      v110 = (v139 + 8);
      v109 = (v138 + 1);
      v108 = (v138 + 4);
      v140 = (v124 + 32);
      v44 = _swiftEmptyArrayStorage;
      v135 = (v124 + 48);
      v114 = v9;
      v113 = v10;
      v126 = v19;
      v125 = v20;
      while (1)
      {
        sub_1F958(v43, v146);
        sub_1F958(v146, v145);
        sub_1F958(v145, &v142);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F13C8);
        sub_DFA74();
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1F958(v145, &v142);
        v53 = swift_dynamicCast();
        v54 = *v112;
        if (v53)
        {
          v54(v9, 0, 1, v10);
          v55 = v120;
          (*v106)(v120, v9, v10);
          (*v105)(v121, v55, v10);
          sub_3E8C94();
          v56 = v122;
          sub_3E8C84();
          v57 = v107;
          v58 = v123;
          (*v104)(v107, v56, v123);
          v59 = (*v103)(v57, v58);
          v138 = v44;
          v139 = v43;
          if (v59 == v102)
          {
            sub_3ECBC4();
            goto LABEL_20;
          }

          if (v59 == v98)
          {
            sub_3ECBB4();
LABEL_20:
            (*v101)(v122, v123);
          }

          else
          {
            v75 = *v101;
            v76 = v123;
            (*v101)(v122, v123);
            v75(v107, v76);
          }

          _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
          sub_3ECC64();
          v143 = sub_3ECC74();
          v144 = &protocol witness table for Models.FlowBackAction;
          __swift_allocate_boxed_opaque_existential_0Tm(&v142);
          sub_3ECC54();
          v74 = v128;
          sub_3ECBF4();
          v77 = *v100;
          (*v100)(v121, v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v145);
          v77(v120, v10);
LABEL_23:
          v19 = v126;
          v78 = v74;
          v20 = v125;
          (*v140)(v126, v78, v125);
          v60 = 0;
          v44 = v138;
          v43 = v139;
          goto LABEL_24;
        }

        v54(v9, 1, 1, v10);
        __swift_destroy_boxed_opaque_existential_1Tm(v145);
        sub_FCF8(v9, &qword_4F13B0);
        v60 = 1;
LABEL_24:
        (*v136)(v19, v60, 1, v20);
        __swift_destroy_boxed_opaque_existential_1Tm(v146);
        if ((*v135)(v19, 1, v20) == 1)
        {
          sub_FCF8(v19, &qword_4F13B8);
        }

        else
        {
          v79 = *v140;
          (*v140)(v137, v19, v20);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = sub_E0E54(0, v44[2] + 1, 1, v44, &qword_4EB288, &unk_3F7668, &type metadata accessor for Models.AlertAction.Button);
          }

          v81 = v44[2];
          v80 = v44[3];
          if (v81 >= v80 >> 1)
          {
            v44 = sub_E0E54(v80 > 1, v81 + 1, 1, v44, &qword_4EB288, &unk_3F7668, &type metadata accessor for Models.AlertAction.Button);
          }

          v44[2] = v81 + 1;
          v79(v44 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v81, v137, v20);
        }

        v43 += 40;
        if (!--v42)
        {

          v82 = v99;
          a1 = v92;
          goto LABEL_35;
        }
      }

      v45 = v141;
      v46 = [v141 localizedTitle];
      v47 = sub_3ED244();
      v49 = v48;

      v50 = [v45 type];
      v134 = v42;
      v138 = v44;
      v139 = v43;
      v133 = v47;
      v132 = v49;
      if (v50 == &dword_0 + 2)
      {
        v51 = sub_3ECBB4();
      }

      else
      {
        if (v50 != &dword_0 + 1)
        {
          v131 = 0;
          v130 = 0;
          goto LABEL_17;
        }

        v51 = sub_3ECBC4();
      }

      v131 = v51;
      v130 = v52;
LABEL_17:
      v61 = swift_allocObject();
      *(v61 + 16) = v45;
      v129 = v45;
      v62 = v127;
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      v63 = type metadata accessor for ClosureAction();
      v64 = swift_allocObject();
      v65 = (v64 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
      *v65 = sub_DFD3C;
      v65[1] = v61;
      v66 = v115;
      v67 = v116;
      (*v111)(v115, v62, v116);
      v68 = sub_3EC634();
      v69 = v117;
      (*(*(v68 - 8) + 56))(v117, 1, 1, v68);

      v70 = v118;
      sub_3E5FB4();
      v71 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v73 = v72;

      (*v110)(v70, v119);
      (*v109)(v62, v67);
      *(v64 + 16) = v71;
      *(v64 + 24) = v73;
      *(v64 + 32) = 0;
      *(v64 + 40) = 0;
      *(v64 + 48) = 32;
      (*v108)(v64 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v66, v67);
      sub_14A10(v69, v64 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
      v143 = v63;
      v144 = sub_DFD44();
      v142 = v64;
      v74 = v128;
      sub_3ECBF4();

      __swift_destroy_boxed_opaque_existential_1Tm(v145);
      v9 = v114;
      v10 = v113;
      v42 = v134;
      goto LABEL_23;
    }

    v82 = v37;
LABEL_35:
    sub_3EC184();
    sub_3ECBD4();
    v89 = sub_3E8CE4();
    (*(*(v89 - 8) + 8))(a1, v89);
    v90 = sub_3ECC44();
    return (*(*(v90 - 8) + 56))(v82, 0, 1, v90);
  }

  else
  {
    v83 = sub_3E8CE4();
    (*(*(v83 - 8) + 8))(a1, v83);
    v84 = sub_3ECC44();
    v85 = *(*(v84 - 8) + 56);
    v86 = v84;
    v87 = v99;

    return v85(v87, 1, 1, v86);
  }
}

uint64_t Models.AlertAction.Button.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_3E5FC4();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v63 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v5 - 8);
  v64 = &v54 - v6;
  v62 = sub_3EC1F4();
  v7 = *(v62 - 8);
  __chkstk_darwin(v62);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F13B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - v14;
  v16 = sub_3E8CA4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  v23 = sub_3ECC24();
  v68 = *(v23 - 8);
  v69 = v23;
  __chkstk_darwin(v23);
  v67 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1F958(a1, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F13C8);
  sub_DFA74();
  if (swift_dynamicCast())
  {
    v61 = a1;
    v25 = v71;
    v26 = [v71 localizedTitle];
    v27 = sub_3ED244();
    v29 = v28;

    v30 = [v25 type];
    v59 = v29;
    v60 = v27;
    if (v30 == &dword_0 + 2)
    {
      v31 = sub_3ECBB4();
    }

    else
    {
      if (v30 != &dword_0 + 1)
      {
        v57 = 0;
        v58 = 0;
        goto LABEL_11;
      }

      v31 = sub_3ECBC4();
    }

    v57 = v32;
    v58 = v31;
LABEL_11:
    v40 = swift_allocObject();
    *(v40 + 16) = v25;
    v56 = v25;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v41 = type metadata accessor for ClosureAction();
    v42 = swift_allocObject();
    v43 = (v42 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v43 = sub_E1530;
    v43[1] = v40;
    v44 = *(v7 + 16);
    v55 = v9;
    v45 = v9;
    v46 = v62;
    v44(v45, v12, v62);
    v47 = sub_3EC634();
    v48 = v64;
    (*(*(v47 - 8) + 56))(v64, 1, 1, v47);

    v49 = v63;
    sub_3E5FB4();
    v50 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v52 = v51;

    (*(v65 + 8))(v49, v66);
    (*(v7 + 8))(v12, v46);
    *(v42 + 16) = v50;
    *(v42 + 24) = v52;
    *(v42 + 32) = 0;
    *(v42 + 40) = 0;
    *(v42 + 48) = 32;
    (*(v7 + 32))(v42 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v55, v46);
    sub_14A10(v48, v42 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
    v72[3] = v41;
    v72[4] = sub_DFD44();
    v72[0] = v42;
    v35 = v67;
    sub_3ECBF4();

    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    goto LABEL_12;
  }

  sub_1F958(a1, v72);
  v33 = swift_dynamicCast();
  v34 = *(v17 + 56);
  if (v33)
  {
    v34(v15, 0, 1, v16);
    (*(v17 + 32))(v22, v15, v16);
    (*(v17 + 16))(v19, v22, v16);
    v35 = v67;
    Models.AlertAction.Button.init(from:)(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v17 + 8))(v22, v16);
LABEL_12:
    v39 = v68;
    v38 = v69;
    v37 = v70;
    (*(v68 + 32))(v70, v35, v69);
    v36 = 0;
    return (*(v39 + 56))(v37, v36, 1, v38);
  }

  v34(v15, 1, 1, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_FCF8(v15, &qword_4F13B0);
  v36 = 1;
  v38 = v69;
  v37 = v70;
  v39 = v68;
  return (*(v39 + 56))(v37, v36, 1, v38);
}

void Models.AlertAction.Button.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_3E5FC4();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_3EC1F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v33 - v15;
  v17 = [a1 localizedTitle];
  v18 = sub_3ED244();
  v37 = v19;
  v38 = v18;

  v20 = [a1 type];
  if (v20 == &dword_0 + 2)
  {
    v23 = sub_3ECBB4();
    goto LABEL_5;
  }

  v21 = 0;
  v22 = 0;
  if (v20 == &dword_0 + 1)
  {
    v23 = sub_3ECBC4();
LABEL_5:
    v21 = v23;
  }

  v35 = v22;
  v36 = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  v34 = a1;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v25 = type metadata accessor for ClosureAction();
  v26 = swift_allocObject();
  v27 = (v26 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v27 = sub_E1530;
  v27[1] = v24;
  (*(v10 + 16))(v12, v16, v9);
  v28 = sub_3EC634();
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);

  sub_3E5FB4();
  v29 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v33 = v8;
  v30 = v29;
  v32 = v31;

  (*(v39 + 8))(v5, v40);
  (*(v10 + 8))(v16, v9);
  *(v26 + 16) = v30;
  *(v26 + 24) = v32;
  *(v26 + 32) = 0;
  *(v26 + 40) = 0;
  *(v26 + 48) = 32;
  (*(v10 + 32))(v26 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v12, v9);
  sub_14A10(v33, v26 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v43 = v25;
  v44 = sub_DFD44();
  v42 = v26;
  sub_3ECBF4();
}

uint64_t Models.AlertAction.Button.init(from:)(uint64_t a1)
{
  v2 = sub_3EC1F4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_3E8C74();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v15[-1] - v8;
  sub_3E8C94();
  sub_3E8C84();
  (*(v4 + 16))(v6, v9, v3);
  v10 = (*(v4 + 88))(v6, v3);
  if (v10 == enum case for PlaybackErrorBehavior.Role.cancel(_:))
  {
    sub_3ECBC4();
  }

  else
  {
    if (v10 != enum case for PlaybackErrorBehavior.Role.destructive(_:))
    {
      v11 = *(v4 + 8);
      v11(v9, v3);
      v11(v6, v3);
      goto LABEL_7;
    }

    sub_3ECBB4();
  }

  (*(v4 + 8))(v9, v3);
LABEL_7:
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3ECC64();
  v15[3] = sub_3ECC74();
  v15[4] = &protocol witness table for Models.FlowBackAction;
  __swift_allocate_boxed_opaque_existential_0Tm(v15);
  sub_3ECC54();
  sub_3ECBF4();
  v12 = sub_3E8CA4();
  return (*(*(v12 - 8) + 8))(a1, v12);
}

uint64_t Models.AlertAction.ButtonRole.init(from:)(uint64_t a1)
{
  if (a1 == 2)
  {
    return sub_3ECBB4();
  }

  if (a1 == 1)
  {
    return sub_3ECBC4();
  }

  return 0;
}

{
  v2 = sub_3E8C74();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for PlaybackErrorBehavior.Role.cancel(_:))
  {
    v8 = sub_3ECBC4();
  }

  else
  {
    if (v7 != enum case for PlaybackErrorBehavior.Role.destructive(_:))
    {
      v10 = *(v3 + 8);
      v10(a1, v2);
      v10(v6, v2);
      return 0;
    }

    v8 = sub_3ECBB4();
  }

  v9 = v8;
  (*(v3 + 8))(a1, v2);
  return v9;
}

void sub_DF878(void *a1)
{
  v2 = objc_opt_self();
  v3 = [a1 commandRequest];
  [v2 performRequest:v3 completion:0];
}

unint64_t sub_DFA74()
{
  result = qword_4F13D0;
  if (!qword_4F13D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F13D0);
  }

  return result;
}

char *sub_DFAE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F87C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_DFBF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_DFD04()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_DFD44()
{
  result = qword_4F13D8;
  if (!qword_4F13D8)
  {
    type metadata accessor for ClosureAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F13D8);
  }

  return result;
}

void *sub_DFD9C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1508);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_DFED0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F13E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_E0018(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_E0168(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_E02FC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_E0474(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_E0704(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_E0924(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_E0A60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_E0BA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_E0CD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1510);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_E0E54(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

size_t sub_E1078(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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

void *sub_E1284(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_E13DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t static Models.AlertAction.Button.cancel.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v3._countAndFlagsBits = 0xE000000000000000;
  v4._countAndFlagsBits = 0x435F4E4F49544341;
  v4._object = 0xED00004C45434E41;
  v5.value._countAndFlagsBits = 0;
  v5.value._object = 0;
  v1.super.isa = v0;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_3E5A74(v4, v5, v1, v6, v3);

  sub_3ECBC4();
  return sub_3ECBF4();
}

uint64_t ExpressibleByJSON.init(tryMeasuredDeserializing:using:performanceLog:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a5;
  v25 = a3;
  v26 = a6;
  v28 = a2;
  v27 = sub_3EBF94();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EBDF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 - 8);
  __chkstk_darwin(v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_3EBDA4())
  {

    (*(v8 + 8))(v28, v27);
    (*(v12 + 8))(a1, v11);
    v19 = 1;
    v20 = v26;
  }

  else
  {
    (*(v12 + 16))(v14, a1, v11);
    (*(v8 + 16))(v10, v28, v27);
    ExpressibleByJSON.init(measuredDeserializing:using:performanceLog:)(v14, v10, v25, a4, v24, v18);
    (*(v8 + 8))(v28, v27);
    (*(v12 + 8))(a1, v11);
    v22 = v26;
    (*(v15 + 32))(v26, v18, a4);
    v20 = v22;
    v19 = 0;
  }

  return (*(v15 + 56))(v20, v19, 1, a4);
}

uint64_t ExpressibleByJSON.init(measuredDeserializing:using:performanceLog:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a5;
  v48 = a2;
  v40 = a1;
  v35 = a6;
  v49 = sub_3EBF94();
  v41 = *(v49 - 8);
  __chkstk_darwin(v49);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3EBDF4();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a4 - 8);
  __chkstk_darwin(v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3E97B4();
  v44 = *(v15 - 8);
  v45 = v15;
  __chkstk_darwin(v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3;
  sub_3E9784();
  sub_3EDC84();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240);
  v19 = swift_allocObject();
  v36 = xmmword_3F5630;
  *(v19 + 16) = xmmword_3F5630;
  v50 = a4;
  swift_getMetatypeMetadata();
  v20 = sub_3ED2B4();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  v37 = sub_4F39C();
  *(v19 + 64) = v37;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v23 = v40;
  v24 = v18;
  v25 = v17;
  v26 = v14;
  sub_3E9764();

  (*(v46 + 16))(v11, v23, v47);
  v27 = v41;
  (*(v41 + 16))(v39, v48, v49);
  v28 = v42;
  sub_3EC554();
  if (v28)
  {
    sub_3EDC74();
    v29 = swift_allocObject();
    *(v29 + 16) = v36;
    v50 = v28;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8);
    v30 = sub_3ED2B4();
    v31 = v37;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = v31;
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    sub_3E9764();

    swift_willThrow();
  }

  else
  {
    (*(v34 + 32))(v35, v26, a4);
    sub_3EDC74();
    sub_3E9774();
  }

  (*(v27 + 8))(v48, v49);
  (*(v46 + 8))(v23, v47);
  return (*(v44 + 8))(v25, v45);
}

uint64_t JSONContext.withActionKinds()@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F13A0);
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v2 = &v18 - v1;
  v3 = sub_3EC264();
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB330);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = sub_3EBF94();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_DDA78();
  v24 = &type metadata for ActionKinds;
  v25 = v15;
  sub_3EBF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB338);
  sub_3EBF04();
  (*(v8 + 8))(v10, v7);
  sub_3EC274();
  sub_3EBF24();
  v16 = v19;
  sub_3EBF04();
  (*(v21 + 8))(v2, v23);
  (*(v20 + 8))(v6, v16);
  return (*(v12 + 8))(v14, v11);
}

uint64_t JSONContext.withIntentKinds()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_3EC284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_93FF8();
  sub_3EC294();
  sub_3EBF34();
  sub_3EBF04();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_E2294()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1538);
  __swift_allocate_value_buffer(v0, qword_539620);
  __swift_project_value_buffer(v0, qword_539620);
  return sub_3EBF64();
}

uint64_t sub_E230C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1528);
  __swift_allocate_value_buffer(v0, qword_539638);
  __swift_project_value_buffer(v0, qword_539638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1530);
  return sub_3EBF64();
}

uint64_t JSONObject.adamId.getter()
{
  sub_3EBDC4();
  if (!v0)
  {
    return 0;
  }

  v1 = sub_3E9494();

  return v1;
}

uint64_t JSONObject.init(fromFile:)@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_3EBDF4();
  v18 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = [objc_opt_self() sharedDocumentsDirectory];
  sub_3E5D44();

  sub_3E5D24();

  v12 = *(v5 + 8);
  v12(v7, v4);
  v13 = v20;
  sub_3E5DD4();
  if (v13)
  {
    return (v12)(v10, v4);
  }

  v14 = v1;
  v16 = v18;
  v15 = v19;
  sub_3EBCE4();
  v12(v10, v4);
  (*(v16 + 32))(v15, v3, v14);
  return (*(v16 + 56))(v15, 0, 1, v14);
}

uint64_t sub_E2698@<X0>(uint64_t *a1@<X8>)
{
  result = sub_4CE50();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_E26C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1570);
  __swift_allocate_value_buffer(v0, qword_4F1540);
  __swift_project_value_buffer(v0, qword_4F1540);
  return sub_3EC764();
}

uint64_t static MetricsFieldsContext.Property<A>.participatingInCrossfireReferral.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_4E8980 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1570);
  v3 = __swift_project_value_buffer(v2, qword_4F1540);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_E27F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1578);
  __swift_allocate_value_buffer(v0, qword_4F1558);
  __swift_project_value_buffer(v0, qword_4F1558);
  return sub_3EC764();
}

uint64_t static MetricsFieldsContext.Property<A>.locationFields.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_4E8988 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1578);
  v3 = __swift_project_value_buffer(v2, qword_4F1558);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_E291C()
{
  v0 = sub_3EC9A4();
  __swift_allocate_value_buffer(v0, qword_4F1580);
  __swift_project_value_buffer(v0, qword_4F1580);
  return sub_3EC994();
}

uint64_t static MetricsFieldExclusionRequest.pageContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_4E8990 != -1)
  {
    swift_once();
  }

  v2 = sub_3EC9A4();
  v3 = __swift_project_value_buffer(v2, qword_4F1580);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t PageMetrics.init(pageFields:custom:clickLocationFields:configuration:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X8>)
{
  v11[0] = a4;
  v11[1] = a2;
  v6 = sub_3EC544();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70);
  sub_3EC0B4();
  *(swift_allocObject() + 16) = xmmword_3F5310;
  sub_3EC084();
  sub_3EC074();
  MetricsPageFields.metricsFields.getter();
  (*(v7 + 16))(v9, a1, v6);
  sub_3EC0C4();
  v14 = *a3;
  sub_FCF8(&v14, &unk_4F8A10);
  v13 = *(a3 + 2);
  sub_FCF8(&v13, &qword_4E94E0);
  v12 = *(a3 + 3);
  sub_FCF8(&v12, &unk_4F8A20);
  sub_16AC0(*(a3 + 4));
  (*(v7 + 8))(a1, v6);
}

uint64_t ViewModel.getImpressionMetrics(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v10 - 8);
  v12 = v18 - v11;
  sub_3ECF04();
  v13 = sub_3EC634();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_FCF8(v12, &unk_4E9170);
    (*(v7 + 16))(v9, v3, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1598);
    if (swift_dynamicCast())
    {
      sub_1D4F0(v18, v20);
      v15 = v21;
      v16 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      (*(v16 + 16))(a1, v15, v16);
      return __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }

    else
    {
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      sub_FCF8(v18, &qword_4F15A0);
      return (*(v14 + 56))(a3, 1, 1, v13);
    }
  }

  else
  {
    (*(v14 + 32))(a3, v12, v13);
    return (*(v14 + 56))(a3, 0, 1, v13);
  }
}

uint64_t sub_E2F38()
{
  v0 = sub_3EC904();
  __swift_allocate_value_buffer(v0, qword_4F15A8);
  __swift_project_value_buffer(v0, qword_4F15A8);
  return sub_3EC8F4();
}

uint64_t static ViewWillDisappearReason.pageMetricsUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_4E8998 != -1)
  {
    swift_once();
  }

  v2 = sub_3EC904();
  v3 = __swift_project_value_buffer(v2, qword_4F15A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t LegacyEpisodeLockup.titleText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8ShelfKit12LegacyLockup_title) & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_68DC4();

  return sub_3EB394();
}

uint64_t LegacyEpisodeLockup.summaryText.getter()
{
  v1 = sub_3E5A54();
  __chkstk_darwin(v1 - 8);
  v2 = *(v0 + OBJC_IVAR____TtC8ShelfKit19LegacyEpisodeLockup_summary);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (sub_3E9A54())
  {

    return 0;
  }

  sub_3E9A14();
  sub_3E5A64();
  v5 = sub_3EB384();

  return v5;
}

uint64_t PodcastsMediaLibrary.MediaItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15C0);
  __chkstk_darwin(v3 - 8);
  v77 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15C8);
  __chkstk_darwin(v5 - 8);
  v95 = &v69 - v6;
  v7 = sub_3E9604();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v70 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15D0);
  __chkstk_darwin(v10 - 8);
  v96 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15D8);
  __chkstk_darwin(v12 - 8);
  v94 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EF460);
  __chkstk_darwin(v14 - 8);
  v93 = &v69 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v16 - 8);
  v86 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v92 = &v69 - v19;
  __chkstk_darwin(v20);
  v22 = &v69 - v21;
  v23 = type metadata accessor for EpisodeOffer();
  v24 = (a1 + v23[10]);
  v25 = v24[1];
  v89 = *v24;
  v90 = v25;

  v26 = sub_3E5CD4();
  v87 = v27;
  v88 = v26;
  v28 = (a1 + v23[6]);
  v29 = type metadata accessor for ShowOffer();
  sub_FBD0(v28 + v29[13], v22, &unk_4E9EE0);
  v30 = sub_3E5DC4();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v22, 1, v30) == 1)
  {
    sub_FCF8(v22, &unk_4E9EE0);
    v84 = 0;
    v85 = 0;
  }

  else
  {
    v32 = sub_3E5CD4();
    v84 = v33;
    v85 = v32;
    (*(v31 + 8))(v22, v30);
  }

  v34 = *a1;
  v82 = *v28;
  v83 = v34;
  v35 = (v28 + v29[8]);
  v36 = v35[1];
  v79 = *v35;
  v73 = *(a1 + v23[15] + 8);
  v74 = *(v31 + 56);
  v74(v92, 1, 1, v30);
  v76 = *(v28 + v29[18]);
  v37 = sub_3E5F84();
  (*(*(v37 - 8) + 56))(v93, 1, 1, v37);
  v75 = *(a1 + v23[21]);
  v38 = *(a1 + v23[14]);
  v80 = v31 + 56;
  v81 = v30;
  v78 = v36;
  if (v38 == 2)
  {

    v71 = 0;
    v39 = 0;
    goto LABEL_16;
  }

  v40 = sub_3E79D4();
  v42 = v41;
  v39 = 1;
  if (v40 != sub_3E79D4() || v42 != v43)
  {
    v39 = sub_3EE804();
  }

  v44 = sub_3E79D4();
  v46 = v45;
  if (v44 == sub_3E79D4() && v46 == v47)
  {
  }

  else
  {
    v48 = sub_3EE804();

    if ((v48 & 1) == 0)
    {
      v49 = 0;
      goto LABEL_15;
    }
  }

  sub_3E8E04();
  v49 = sub_3E8DE4() ^ 1;
LABEL_15:
  v71 = v49;
LABEL_16:
  v72 = v39;
  v50 = enum case for PodcastsMediaLibrary.MediaItem.ItemType.stream(_:);
  v51 = sub_3E7434();
  v52 = *(v51 - 8);
  v53 = v94;
  (*(v52 + 104))(v94, v50, v51);
  v54 = 1;
  (*(v52 + 56))(v53, 0, 1, v51);
  v55 = *(a1 + v23[9]) - 1;
  if (v55 < 4)
  {
    v56 = v70;
    (*(v8 + 104))(v70, **(&off_4B7960 + v55), v7);
    (*(v8 + 32))(v96, v56, v7);
    v54 = 0;
  }

  (*(v8 + 56))(v96, v54, 1, v7);
  v57 = **(&off_4B7980 + *(a1 + v23[13]));
  v58 = sub_3E90A4();
  v59 = *(v58 - 8);
  v60 = v95;
  (*(v59 + 104))(v95, v57, v58);
  (*(v59 + 56))(v60, 0, 1, v58);
  v70 = *(a1 + v23[19]);
  v61 = sub_3E9574();
  v63 = v62;
  if (v61 != sub_3E9574() || v63 != v64)
  {
    sub_3EE804();
  }

  v65 = v77;
  sub_FBD0(a1 + v23[22], v77, &qword_4F15C0);
  v66 = sub_3E9354();
  v67 = *(v66 - 8);
  if ((*(v67 + 48))(v65, 1, v66) == 1)
  {
    sub_FCF8(v65, &qword_4F15C0);
  }

  else
  {
    sub_3E9344();
    (*(v67 + 8))(v65, v66);
  }

  v74(v86, 1, 1, v81);
  sub_E3C54(_swiftEmptyArrayStorage);
  v97 = 1;
  sub_3E7444();
  return sub_3D91C(a1);
}

unint64_t sub_E3C54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15E0);
    v3 = sub_3EE5F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_E3D6C(v7, v8);
      result = sub_B4118(v5, v6);
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

uint64_t sub_E3D6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t ContentReferenceAnnotation.reference.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = v0[24];
  v4 = *v0;
  sub_3DE90(v1, v2, v3);
  return v4;
}

uint64_t ContentReferenceAnnotation.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v100 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15E8);
  __chkstk_darwin(v97);
  v98 = &v87 - v3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15F0);
  __chkstk_darwin(v89);
  v93 = &v87 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F15F8);
  __chkstk_darwin(v95);
  v92 = &v87 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1600);
  __chkstk_darwin(v90);
  v91 = &v87 - v6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1608);
  __chkstk_darwin(v96);
  v94 = &v87 - v7;
  v8 = sub_3E5DC4();
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F09A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v87 - v15;
  __chkstk_darwin(v17);
  v19 = &v87 - v18;
  __chkstk_darwin(v20);
  v22 = &v87 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1610);
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  v27 = &v87 - v26;
  v33 = __chkstk_darwin(v28);
  v35 = &v87 - v34;
  v36 = *v2;
  v37 = *(v2 + 1);
  v38 = *(v2 + 2);
  v39 = v2[24];
  if (v36 > 2)
  {
    if (v36 == 3)
    {
      v51 = v32;
      v52 = v30;
      v53 = v29;
      if (v2[24])
      {
        v54 = v92;
        if (v39 == 1)
        {
          v55 = [*(v2 + 1) URIRepresentation];
          sub_3E5D44();

          v37 = sub_3E5CD4();
          v38 = v56;
          (*(v87 + 8))(v10, v88);
        }

        else
        {
        }
      }

      else
      {
        v101 = *(v2 + 1);
        sub_17A28();
        v37 = sub_3EE1F4();
        v38 = v62;
        v54 = v92;
      }

      sub_3E6D44();
      v101 = v37;
      v102 = v38;
      sub_E5080(&qword_4E9B80, &type metadata accessor for ShowEntity);
      sub_3E5754();
      v66 = sub_3E5764();
      (*(*(v66 - 8) + 56))(v16, 0, 1, v66);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1618);
      v68 = sub_E501C();
      sub_3EB3D4();
      sub_FCF8(v16, &qword_4F09A0);
      (*(v52 + 16))(v54, v51, v53);
      swift_storeEnumTagMultiPayload();
      v101 = v67;
      v102 = v68;
      swift_getOpaqueTypeConformance2();
      v69 = v91;
      sub_3EADE4();
      sub_FBD0(v69, v93, &qword_4F1600);
      swift_storeEnumTagMultiPayload();
      sub_E4F5C();
      v70 = v94;
      sub_3EADE4();
      sub_FCF8(v69, &qword_4F1600);
      sub_FBD0(v70, v98, &qword_4F1608);
      swift_storeEnumTagMultiPayload();
      sub_E4ED8();
      sub_3EADE4();
      sub_FCF8(v70, &qword_4F1608);
      return (*(v52 + 8))(v51, v53);
    }

    if (v36 == 4)
    {
      v35 = v31;
      v44 = v30;
      v45 = v29;
      if (v2[24])
      {
        v46 = v94;
        if (v39 == 1)
        {
          v47 = [*(v2 + 1) URIRepresentation];
          sub_3E5D44();

          v37 = sub_3E5CD4();
          v38 = v48;
          (*(v87 + 8))(v10, v88);
        }

        else
        {
        }
      }

      else
      {
        v101 = *(v2 + 1);
        sub_17A28();
        v37 = sub_3EE1F4();
        v38 = v64;
        v46 = v94;
      }

      sub_3E6F24();
      v101 = v37;
      v102 = v38;
      sub_E5080(&qword_4F1638, &type metadata accessor for StationEntity);
      sub_3E5754();
      v78 = sub_3E5764();
      (*(*(v78 - 8) + 56))(v13, 0, 1, v78);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1618);
      v80 = sub_E501C();
      sub_3EB3D4();
      sub_FCF8(v13, &qword_4F09A0);
      v74 = v44;
      v41 = v45;
      (*(v44 + 16))(v92, v35, v45);
      swift_storeEnumTagMultiPayload();
      v101 = v79;
      v102 = v80;
      swift_getOpaqueTypeConformance2();
      v81 = v91;
      sub_3EADE4();
      sub_FBD0(v81, v93, &qword_4F1600);
      swift_storeEnumTagMultiPayload();
      sub_E4F5C();
      sub_3EADE4();
      sub_FCF8(v81, &qword_4F1600);
      sub_FBD0(v46, v98, &qword_4F1608);
      swift_storeEnumTagMultiPayload();
      sub_E4ED8();
      sub_3EADE4();
      v77 = v46;
      goto LABEL_29;
    }

LABEL_12:
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1618);
    (*(*(v49 - 8) + 16))(v98, v100, v49);
    swift_storeEnumTagMultiPayload();
    sub_E4ED8();
    sub_E501C();
    return sub_3EADE4();
  }

  if (!*v2)
  {
    goto LABEL_12;
  }

  if (v36 == 1)
  {
    v40 = v30;
    v41 = v29;
    if (v2[24])
    {
      if (v39 == 1)
      {
        v42 = [*(v2 + 1) URIRepresentation];
        sub_3E5D44();

        v37 = sub_3E5CD4();
        v38 = v43;
        (*(v87 + 8))(v10, v88);
      }

      else
      {
      }
    }

    else
    {
      v101 = *(v2 + 1);
      sub_17A28();
      v37 = sub_3EE1F4();
      v38 = v63;
    }

    sub_3E6E44();
    v101 = v37;
    v102 = v38;
    sub_E5080(&qword_4E9B88, &type metadata accessor for ChannelEntity);
    sub_3E5754();
    v71 = sub_3E5764();
    (*(*(v71 - 8) + 56))(v22, 0, 1, v71);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1618);
    v73 = sub_E501C();
    sub_3EB3D4();
    sub_FCF8(v22, &qword_4F09A0);
    v74 = v40;
    (*(v40 + 16))(v92, v35, v41);
    swift_storeEnumTagMultiPayload();
    v101 = v72;
    v102 = v73;
    swift_getOpaqueTypeConformance2();
    v75 = v91;
    sub_3EADE4();
    sub_FBD0(v75, v93, &qword_4F1600);
    swift_storeEnumTagMultiPayload();
    sub_E4F5C();
    v76 = v94;
    sub_3EADE4();
    sub_FCF8(v75, &qword_4F1600);
    sub_FBD0(v76, v98, &qword_4F1608);
    swift_storeEnumTagMultiPayload();
    sub_E4ED8();
    sub_3EADE4();
    v77 = v76;
LABEL_29:
    sub_FCF8(v77, &qword_4F1608);
    return (*(v74 + 8))(v35, v41);
  }

  v57 = v30;
  v58 = v29;
  if (v2[24])
  {
    v59 = v93;
    if (v39 == 1)
    {
      v60 = [*(v2 + 1) URIRepresentation];
      sub_3E5D44();

      v37 = sub_3E5CD4();
      v38 = v61;
      (*(v87 + 8))(v10, v88);
    }

    else
    {
    }
  }

  else
  {
    v101 = *(v2 + 1);
    sub_17A28();
    v37 = sub_3EE1F4();
    v38 = v65;
    v59 = v93;
  }

  sub_3E6EC4();
  v101 = v37;
  v102 = v38;
  sub_E5080(&qword_4EF478, &type metadata accessor for EpisodeEntity);
  sub_3E5754();
  v82 = sub_3E5764();
  (*(*(v82 - 8) + 56))(v19, 0, 1, v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1618);
  v84 = sub_E501C();
  sub_3EB3D4();
  sub_FCF8(v19, &qword_4F09A0);
  (*(v57 + 16))(v92, v27, v58);
  swift_storeEnumTagMultiPayload();
  v101 = v83;
  v102 = v84;
  swift_getOpaqueTypeConformance2();
  v85 = v91;
  sub_3EADE4();
  sub_FBD0(v85, v59, &qword_4F1600);
  swift_storeEnumTagMultiPayload();
  sub_E4F5C();
  v86 = v94;
  sub_3EADE4();
  sub_FCF8(v85, &qword_4F1600);
  sub_FBD0(v86, v98, &qword_4F1608);
  swift_storeEnumTagMultiPayload();
  sub_E4ED8();
  sub_3EADE4();
  sub_FCF8(v86, &qword_4F1608);
  return (*(v57 + 8))(v27, v58);
}

unint64_t sub_E4ED8()
{
  result = qword_4F1620;
  if (!qword_4F1620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1608);
    sub_E4F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1620);
  }

  return result;
}

unint64_t sub_E4F5C()
{
  result = qword_4F1628;
  if (!qword_4F1628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1618);
    sub_E501C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1628);
  }

  return result;
}

unint64_t sub_E501C()
{
  result = qword_4F1630;
  if (!qword_4F1630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1630);
  }

  return result;
}

uint64_t sub_E5080(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E50C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EADD4();
  v5 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_3EADE4();
}

uint64_t sub_E51C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_3EADD4();
  v6 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_3EADE4();
}

uint64_t View.viewAnnotation(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a3;
  v53 = a1;
  v54 = a6;
  v52 = a7;
  v46 = *(a5 - 8);
  v10 = ~a4;
  __chkstk_darwin(a1);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  v16 = sub_3EA744();
  v47 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v44 - v20;
  v22 = a5;
  v23 = sub_3EADF4();
  v51 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v50 = &v44 - v25;
  if (v10)
  {
    v57 = v53;
    v58 = a2;
    v26 = a2;
    v45 = a2;
    v27 = v48;
    v59 = v48;
    v60 = a4;
    sub_A67D0(v53, v26, v48, a4);
    sub_3DE90(v26, v27, a4);
    v44 = v22;
    v46 = v23;
    v28 = v54;
    sub_3EB6E4();
    sub_3DEF8(v58, v59, v60);
    v29 = sub_E57AC();
    v55 = v28;
    v56 = v29;
    WitnessTable = swift_getWitnessTable();
    v30 = v47;
    v31 = *(v47 + 16);
    v31(v21, v18, v16);
    v32 = *(v30 + 8);
    v32(v18, v16);
    v31(v18, v21, v16);
    v33 = v50;
    v23 = v46;
    sub_E50C8(v18, v16);
    sub_A67F0(v53, v45, v27, a4);
    v32(v18, v16);
    v32(v21, v16);
  }

  else
  {
    v34 = v46;
    v35 = *(v46 + 16);
    v35(v15, WitnessTable, v22, v24);
    (v35)(v12, v15, v22);
    v36 = sub_E57AC();
    v65 = v54;
    v66 = v36;
    swift_getWitnessTable();
    v37 = v50;
    sub_E51C0(v12, v16, v22);
    v38 = *(v34 + 8);
    v38(v12, v22);
    v39 = v15;
    v33 = v37;
    v38(v39, v22);
  }

  v40 = sub_E57AC();
  v41 = v54;
  v63 = v54;
  v64 = v40;
  v61 = swift_getWitnessTable();
  v62 = v41;
  swift_getWitnessTable();
  v42 = v51;
  (*(v51 + 16))(v52, v33, v23);
  return (*(v42 + 8))(v33, v23);
}

unint64_t sub_E57AC()
{
  result = qword_4F1640;
  if (!qword_4F1640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1640);
  }

  return result;
}

uint64_t View.viewAnnotation(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a4;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v73 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v66[-v10];
  v84 = sub_3EA744();
  v12 = sub_3EADF4();
  v13 = sub_3EADF4();
  v74 = *(v13 - 8);
  __chkstk_darwin(v13);
  v75 = &v66[-v14];
  v79 = v12;
  v77 = *(v12 - 8);
  __chkstk_darwin(v15);
  v17 = &v66[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v76 = &v66[-v19];
  v20 = sub_3EADF4();
  v82 = *(v20 - 8);
  v83 = v20;
  __chkstk_darwin(v20);
  v81 = &v66[-v21];
  sub_1F958(a1, v114);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8);
  type metadata accessor for LegacyLockup();
  if (swift_dynamicCast())
  {
    v22 = &v113[OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent];
    v23 = v113[OBJC_IVAR____TtC8ShelfKit12LegacyLockup_referencedContent + 24];
    if (v23 != 255)
    {
      v25 = v22[1];
      v24 = v22[2];
      v69 = v25;
      v70 = v24;
      v68 = *v22;
      v26 = v68;
      v71 = v113;
      v67 = v23;
      sub_3DE90(v25, v24, v23);
      View.viewAnnotation(from:)(v26, v25, v24, v23, a2, a3, v17);
      v27 = sub_E57AC();
      v89 = a3;
      v90 = v27;
      WitnessTable = swift_getWitnessTable();
      v88 = a3;
      v28 = v79;
      v29 = swift_getWitnessTable();
      v72 = a2;
      v73 = v13;
      v31 = v76;
      v30 = v77;
      v32 = *(v77 + 16);
      v32(v76, v17, v28);
      v78 = *(v30 + 8);
      v78(v17, v28);
      v32(v17, v31, v28);
      v33 = v73;
      v34 = v75;
      sub_E50C8(v17, v28);
      v85 = v29;
      v86 = v29;
      swift_getWitnessTable();
      v35 = v81;
      sub_E50C8(v34, v33);

      sub_A67F0(v68, v69, v70, v67);
      (*(v74 + 8))(v34, v33);
      v36 = v17;
      v37 = v35;
      v38 = v78;
      v78(v36, v28);
      v38(v31, v28);
      goto LABEL_8;
    }
  }

  sub_1F958(a1, &v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1648);
  if (swift_dynamicCast())
  {
    sub_1D4F0(v111, v114);
    v39 = a2;
    v72 = a2;
    __swift_project_boxed_opaque_existential_1(v114, v114[3]);
    v40 = sub_3E6354();
    v42 = v41;
    v44 = v43;
    v73 = v13;
    v46 = v45;
    v47 = v17;
    View.viewAnnotation(from:)(v40, v41, v43, v45, v39, a3, v17);
    sub_3DEF8(v42, v44, v46);
    v48 = sub_E57AC();
    v95 = a3;
    v96 = v48;
    v93 = swift_getWitnessTable();
    v94 = a3;
    v71 = &protocol conformance descriptor for <> _ConditionalContent<A, B>;
    v49 = v79;
    v50 = swift_getWitnessTable();
    v52 = v75;
    v51 = v76;
    v53 = v77;
    v78 = a3;
    v54 = *(v77 + 16);
    v54(v76, v47, v49);
    v55 = *(v53 + 8);
    v55(v47, v49);
    v54(v47, v51, v49);
    a3 = v78;
    v56 = v73;
    sub_E51C0(v47, v49, v49);
    v91 = v50;
    v92 = v50;
    swift_getWitnessTable();
    v57 = v81;
    sub_E50C8(v52, v56);
    (*(v74 + 8))(v52, v56);
    v37 = v57;
    v55(v47, v49);
    v55(v51, v49);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
  }

  else
  {
    v112 = 0;
    memset(v111, 0, sizeof(v111));
    sub_FCF8(v111, &qword_4F1650);
    v58 = *(v7 + 16);
    v58(v11, v78, a2);
    v59 = v73;
    v58(v73, v11, a2);
    v60 = sub_E57AC();
    v109 = a3;
    v110 = v60;
    v107 = swift_getWitnessTable();
    v108 = a3;
    v105 = swift_getWitnessTable();
    v106 = v105;
    swift_getWitnessTable();
    v37 = v81;
    sub_E51C0(v59, v13, a2);
    v61 = *(v7 + 8);
    v61(v59, a2);
    v61(v11, a2);
  }

LABEL_8:
  v62 = sub_E57AC();
  v103 = a3;
  v104 = v62;
  v101 = swift_getWitnessTable();
  v102 = a3;
  v99 = swift_getWitnessTable();
  v100 = v99;
  v97 = swift_getWitnessTable();
  v98 = a3;
  v63 = v83;
  swift_getWitnessTable();
  v64 = v82;
  (*(v82 + 16))(v80, v37, v63);
  return (*(v64 + 8))(v37, v63);
}

uint64_t sub_E60E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_E6128(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_E6184()
{
  result = qword_4F1658;
  if (!qword_4F1658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1660);
    sub_E4ED8();
    sub_E501C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1658);
  }

  return result;
}

uint64_t sub_E6210()
{
  sub_3EA744();
  sub_3EADF4();
  sub_E57AC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_E62B8()
{
  sub_3EA744();
  sub_3EADF4();
  sub_3EADF4();
  sub_3EADF4();
  sub_E57AC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t DependencyBindableView.perform(_:from:in:)(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v33 = a1;
  v4 = sub_3EC204();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EBE74();
  __chkstk_darwin(v7 - 8);
  v8 = sub_3ECE84();
  v29 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - v15;
  if (sub_3E6664())
  {
    type metadata accessor for ActionRunnerOptions();

    sub_3EC464();
    v17 = sub_3E6434();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v18 = ActionRunnerOptions.withActionOrigin(context:sender:view:)(v16, a2, v32);

    sub_FCF8(v16, &qword_5005B0);
    sub_1F958(v33, v35);
    v35[5] = v18;
    sub_E69A0(v35, v34);
    v19 = swift_allocObject();
    v20 = v34[1];
    v19[1] = v34[0];
    v19[2] = v20;
    v19[3] = v34[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
    v21 = sub_3ECE04();
    v22 = sub_3ED6F4();
    (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = &unk_4072F0;
    v23[5] = v19;
    v23[6] = v21;

    sub_E8ECC(0, 0, v13, &unk_407300, v23);

    sub_E91B8(v35);
    return v21;
  }

  else
  {
    sub_3ECE34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5C8);
    sub_3EBE94();
    *(swift_allocObject() + 16) = xmmword_3F5630;
    sub_3EBE64();
    v36._object = 0x8000000000427600;
    v36._countAndFlagsBits = 0xD000000000000012;
    sub_3EBE54(v36);
    v25 = v33[3];
    v26 = __swift_project_boxed_opaque_existential_1(v33, v25);
    v35[3] = v25;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v35);
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_0Tm, v26, v25);
    sub_3EBE44();
    sub_FCF8(v35, &unk_501090);
    v37._countAndFlagsBits = 0xD000000000000019;
    v37._object = 0x8000000000427620;
    sub_3EBE54(v37);
    sub_3EBE84();
    sub_3ECB94();

    (*(v29 + 8))(v10, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
    (*(v30 + 104))(v6, enum case for ActionOutcome.unsupported(_:), v31);
    return sub_3ECDB4();
  }
}

uint64_t sub_E69FC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_E6A3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2368C;

  return sub_14E9AC(a1);
}

uint64_t sub_E6AD8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_3EC204();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_E6C38;

  return v12(v9);
}

uint64_t sub_E6C38()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_E6DDC;
  }

  else
  {
    v2 = sub_E6D4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E6D4C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_3ECDE4();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_E6DDC()
{
  sub_3ECDD4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E6E54()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_E6E9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2368C;

  return sub_E6AD8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_E6F78(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_E706C;

  return v9(v6 + 16);
}

uint64_t sub_E706C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_E9370;
  }

  else
  {
    v2 = sub_E9364;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E7180(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_E7274;

  return v9(v6 + 16);
}

uint64_t sub_E7274()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_E73F4;
  }

  else
  {
    v2 = sub_E7388;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E7388()
{
  sub_3ECDE4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E73F4()
{
  sub_3ECDD4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E7464(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_E7558;

  return v9(v6 + 16);
}

uint64_t sub_E7558()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_E9370;
  }

  else
  {
    v2 = sub_E9368;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E766C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_E7760;

  return v9(v6 + 16);
}

uint64_t sub_E7760()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_E9370;
  }

  else
  {
    v2 = sub_E7874;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E7874()
{
  sub_3ECDE4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E78E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1668);
  v8 = swift_task_alloc();
  v6[3] = v8;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_E7A1C;

  return v11(v8);
}

uint64_t sub_E7A1C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_E935C;
  }

  else
  {
    v2 = sub_E7B30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E7B30()
{
  v1 = *(v0 + 24);
  sub_3ECDE4();
  sub_FCF8(v1, &qword_4F1668);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_E7BB4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_E7CA8;

  return v9(v6 + 16);
}

uint64_t sub_E7CA8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_E9370;
  }

  else
  {
    v2 = sub_E7DBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E7DBC()
{
  sub_3ECDE4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E7E28(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  type metadata accessor for PaginationResult();
  v8 = swift_task_alloc();
  v6[3] = v8;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_E7F58;

  return v11(v8);
}

uint64_t sub_E7F58()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_E935C;
  }

  else
  {
    v2 = sub_E806C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E806C()
{
  v1 = *(v0 + 24);
  sub_3ECDE4();
  sub_E920C(v1, type metadata accessor for PaginationResult);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_E80F4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  type metadata accessor for SearchHintsPage();
  v8 = swift_task_alloc();
  v6[3] = v8;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_E8224;

  return v11(v8);
}

uint64_t sub_E8224()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_E83C0;
  }

  else
  {
    v2 = sub_E8338;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E8338()
{
  v1 = *(v0 + 24);
  sub_3ECDE4();
  sub_E920C(v1, type metadata accessor for SearchHintsPage);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_E83C0()
{
  sub_3ECDD4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E8438(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  type metadata accessor for GroupedSearchResultsPage();
  v8 = swift_task_alloc();
  v6[3] = v8;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_E8568;

  return v11(v8);
}

uint64_t sub_E8568()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_E935C;
  }

  else
  {
    v2 = sub_E867C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E867C()
{
  v1 = *(v0 + 24);
  sub_3ECDE4();
  sub_E920C(v1, type metadata accessor for GroupedSearchResultsPage);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_E8704(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 32) = v7;
  *v7 = v6;
  v7[1] = sub_E87F8;

  return v9(v6 + 16);
}

uint64_t sub_E87F8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_E9370;
  }

  else
  {
    v2 = sub_E936C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E890C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 64) = v7;
  *v7 = v6;
  v7[1] = sub_E8A00;

  return v9(v6 + 16);
}

uint64_t sub_E8A00()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_E8B90;
  }

  else
  {
    v2 = sub_E8B14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E8B14()
{
  sub_3ECDE4();
  sub_FCF8(v0 + 16, &qword_4F0878);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E8B90()
{
  sub_3ECDD4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_E8C00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  type metadata accessor for HighlightResource();
  v8 = swift_task_alloc();
  v6[3] = v8;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_E8D30;

  return v11(v8);
}

uint64_t sub_E8D30()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_E935C;
  }

  else
  {
    v2 = sub_E8E44;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_E8E44()
{
  v1 = *(v0 + 24);
  sub_3ECDE4();
  sub_E920C(v1, type metadata accessor for HighlightResource);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_E8ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_915C4(a3, v23 - v10);
  v12 = sub_3ED6F4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_FCF8(v11, &qword_4F10D0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_3ED6E4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_3ED684();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_3ED2D4() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_FCF8(a3, &qword_4F10D0);

    return v21;
  }

LABEL_8:
  sub_FCF8(a3, &qword_4F10D0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_E920C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_E926C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E92A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2400C;

  return sub_D7218(a1, v4);
}

uint64_t PlaybackController.isPlayingItem(for:)()
{
  v0 = sub_3E7FE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3E73D4();
  if (v4)
  {
    v5 = v4;
    sub_3E7D94();
    v6 = v5;
    v7 = sub_3E7FD4();

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t StoreLibraryMultiplexingImageProvider.init(asPartOf:)()
{
  v0 = sub_E94F0();

  return v0;
}

uint64_t sub_E94B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E94F0();

  *a1 = v2;
  return result;
}

uint64_t sub_E94F0()
{
  v0 = sub_3E61F4();
  __chkstk_darwin(v0);
  v4[3] = type metadata accessor for StoreImageProvider();
  v4[4] = sub_E9784(&qword_4F1670, type metadata accessor for StoreImageProvider);
  __swift_allocate_boxed_opaque_existential_0Tm(v4);
  sub_E9784(&qword_4F1678, type metadata accessor for StoreImageProvider);
  sub_3EC374();
  v3[3] = sub_3E65D4();
  v3[4] = &protocol witness table for LibraryImageProvider;
  __swift_allocate_boxed_opaque_existential_0Tm(v3);
  sub_E9784(&qword_4EE768, &type metadata accessor for LibraryImageProvider);
  sub_3EC374();
  v2[8] = type metadata accessor for LegacyArtworkLoader();
  v2[9] = sub_E9784(&qword_4F1680, type metadata accessor for LegacyArtworkLoader);
  sub_3EC394();
  v2[3] = type metadata accessor for CompositeImageProvider();
  v2[4] = sub_E9784(&qword_4F1688, type metadata accessor for CompositeImageProvider);
  __swift_allocate_boxed_opaque_existential_0Tm(v2);
  sub_3EC394();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBD8);
  sub_3EC394();
  sub_3EC394();
  return sub_3E6954();
}

uint64_t sub_E9784(unint64_t *a1, void (*a2)(uint64_t))
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

double HSpacer.body.getter@<D0>(uint64_t a1@<X8>)
{
  sub_3EBA74();
  sub_3EA434();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for DarkModeOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DarkModeOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_E98E4()
{
  result = qword_4F1690;
  if (!qword_4F1690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1690);
  }

  return result;
}

double VSpacer.body.getter@<D0>(uint64_t a1@<X8>)
{
  sub_3EBA74();
  sub_3EA434();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = *&v7;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_E9A30@<X0>(uint64_t *a1@<X8>)
{
  sub_3EC444();
  result = sub_3EC3F4();
  *a1 = result;
  return result;
}

uint64_t EnvironmentValues.objectGraph.getter()
{
  sub_E9ABC();
  sub_3EAB04();
  return v1;
}

unint64_t sub_E9ABC()
{
  result = qword_4F16A0;
  if (!qword_4F16A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F16A0);
  }

  return result;
}

uint64_t sub_E9B10@<X0>(void *a1@<X8>)
{
  sub_E9ABC();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t sub_E9B60()
{
  sub_E9ABC();

  return sub_3EAB14();
}

uint64_t (*EnvironmentValues.objectGraph.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_E9ABC();
  sub_3EAB04();
  return sub_E9C5C;
}

uint64_t sub_E9C5C(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_3EAB14();
  }

  sub_3EAB14();
}

uint64_t sub_E9CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_EB090();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.referenceLinkViewStyle.getter()
{
  sub_E9D9C();

  return sub_3EAB04();
}

unint64_t sub_E9D9C()
{
  result = qword_4F16A8;
  if (!qword_4F16A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F16A8);
  }

  return result;
}

uint64_t sub_E9DF0@<X0>(_BYTE *a1@<X8>)
{
  sub_E9D9C();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.referenceLinkViewStyle.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_E9D9C();
  sub_3EAB04();
  return sub_E9F2C;
}

uint64_t sub_E9F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_EB0E4();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.shelfItemCount.getter()
{
  sub_EA018();
  sub_3EAB04();
  return v1;
}

unint64_t sub_EA018()
{
  result = qword_4F16B0;
  if (!qword_4F16B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F16B0);
  }

  return result;
}

uint64_t sub_EA06C@<X0>(uint64_t a1@<X8>)
{
  sub_EA018();
  result = sub_3EAB04();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void (*EnvironmentValues.shelfItemCount.modify(uint64_t *a1))(void **a1)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_EA018();
  sub_3EAB04();
  v5 = *(v4 + 24);
  *v4 = *(v4 + 16);
  *(v4 + 8) = v5;
  return sub_EA1FC;
}

void sub_EA1FC(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_3EAB14();

  free(v1);
}

uint64_t EnvironmentValues.parentImpressionMetrics.getter()
{
  sub_EA2A0();

  return sub_3EAB04();
}

unint64_t sub_EA2A0()
{
  result = qword_4F16B8;
  if (!qword_4F16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F16B8);
  }

  return result;
}

void (*EnvironmentValues.parentImpressionMetrics.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_EA2A0();
  sub_3EAB04();
  return sub_EA42C;
}

uint64_t sub_EA43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_EB160();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.childImpressionMetrics.getter()
{
  sub_EA4E8();

  return sub_3EAB04();
}

unint64_t sub_EA4E8()
{
  result = qword_4F16C0;
  if (!qword_4F16C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F16C0);
  }

  return result;
}

uint64_t sub_EA55C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v4 - 8);
  v6 = sub_7EA24(a1, &v8 - v5);
  a2(v6);
  sub_3EAB14();
  return sub_3D9DC(a1);
}

void (*EnvironmentValues.childImpressionMetrics.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[3] = v6;
  v4[4] = sub_EA4E8();
  sub_3EAB04();
  return sub_EA72C;
}

void sub_EA738(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_7EA24((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_7EA24(v3[2], v3[1]);
    sub_3EAB14();
    sub_3D9DC(v6);
  }

  else
  {
    sub_3EAB14();
  }

  sub_3D9DC(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

void sub_EA800(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t EnvironmentValues.followShowButtonStyle.getter()
{
  sub_EA854();

  return sub_3EAB04();
}

unint64_t sub_EA854()
{
  result = qword_4F16C8;
  if (!qword_4F16C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F16C8);
  }

  return result;
}

double sub_EA8A8@<D0>(uint64_t a1@<X8>)
{
  sub_EA854();
  sub_3EAB04();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void (*EnvironmentValues.followShowButtonStyle.modify(uint64_t *a1))(_OWORD **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = sub_EA854();
  sub_3EAB04();
  return sub_EAA2C;
}

void sub_EAA2C(_OWORD **a1)
{
  v2 = *(*a1 + 16);
  v1 = *a1;
  *(v1 + 24) = **a1;
  v1[40] = v2;
  sub_3EAB14();

  free(v1);
}

uint64_t View.objectGraph(_:)()
{
  swift_getKeyPath();
  sub_3EB4B4();
}

uint64_t sub_EAAFC@<X0>(void *a1@<X8>)
{
  sub_E9ABC();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t View.referenceLinkViewStyle(_:)()
{
  swift_getKeyPath();
  sub_3EB4B4();
}

uint64_t sub_EABC4@<X0>(_BYTE *a1@<X8>)
{
  sub_E9D9C();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t View.shelfItemCount(_:)()
{
  swift_getKeyPath();
  sub_3EB4B4();
}

uint64_t sub_EACE8@<X0>(uint64_t a1@<X8>)
{
  sub_EA018();
  result = sub_3EAB04();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t View.followShowButtonStyle(_:)()
{
  swift_getKeyPath();
  sub_3EB4B4();
}

double sub_EAE18@<D0>(uint64_t a1@<X8>)
{
  sub_EA854();
  sub_3EAB04();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy9JetEngine15BaseObjectGraphCGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_3EA744();
  sub_EAFDC(a4, a2);
  return swift_getWitnessTable();
}

uint64_t sub_EAFDC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_EB090()
{
  result = qword_4F1710;
  if (!qword_4F1710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1710);
  }

  return result;
}

unint64_t sub_EB0E4()
{
  result = qword_4F1718;
  if (!qword_4F1718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1718);
  }

  return result;
}

unint64_t sub_EB160()
{
  result = qword_4F1728;
  if (!qword_4F1728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_4E9170);
    sub_EB1E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1728);
  }

  return result;
}

unint64_t sub_EB1E4()
{
  result = qword_4F1730;
  if (!qword_4F1730)
  {
    sub_3EC634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1730);
  }

  return result;
}

uint64_t View.frame(widthMultiplier:heightMultiplier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  v13[2] = a1;
  v13[3] = a2;
  v14 = v5;
  sub_EBC30(sub_EB490, v13, a3);
}

uint64_t sub_EB3B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E63BC(v4);
  sub_E63BC(v6);
  return (*(v3 + 8))(v6, a2);
}

uint64_t sub_EB49C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1738);
  sub_EB560(&qword_4F1740);
  sub_3EA534();
  sub_EB560(&qword_4F1748);
  return swift_getWitnessTable();
}

uint64_t sub_EB560(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1738);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_EB5C4()
{
  result = qword_4F1750;
  if (!qword_4F1750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1750);
  }

  return result;
}

uint64_t sub_EB628(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1760);
  __chkstk_darwin(v6 - 8);
  v8 = &v14[-v7];
  v9 = sub_3EA4C4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_EDA28(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_EBBB8(v8);
  }

  (*(v10 + 32))(v12, v8, v9);
  v14[8] = a2 & 1;
  v14[0] = a4 & 1;
  sub_3EA4A4();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_EB80C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1760);
  __chkstk_darwin(v0 - 8);
  v2 = &v8[-v1];
  v3 = sub_3EA4C4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_EDA28(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_EBBB8(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  sub_3EBB24();
  v8[8] = 0;
  v8[0] = 0;
  sub_3EA4B4();
  return (*(v4 + 8))(v6, v3);
}

void (*sub_EBA8C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_3EA1E4();
  return sub_EBB14;
}

void sub_EBB14(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_EBB64()
{
  result = qword_4F1758;
  if (!qword_4F1758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1758);
  }

  return result;
}

uint64_t sub_EBBB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EBC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_EBCA8();
  return sub_251AFC(a1, a2, &type metadata for FrameMultiplierLayout, v7, v9, v8, a3);
}

unint64_t sub_EBCA8()
{
  result = qword_4F1768;
  if (!qword_4F1768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1768);
  }

  return result;
}

uint64_t View.insertBetweenSubviews<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v13 = __chkstk_darwin(v12);
  (*(v15 + 16))(v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16, a2, v13);
  (*(v10 + 16))(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v17 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = a3;
  *(v18 + 4) = a4;
  *(v18 + 5) = a5;
  (*(v10 + 32))(&v18[v17], v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1770);
  v19 = sub_3EAF44();
  v20 = sub_3EB9F4();
  sub_3EBA04();
  swift_getTupleTypeMetadata2();
  v21 = sub_3EBB04();
  v22 = sub_ECEEC(&qword_4F1778, &type metadata accessor for SubviewsCollectionSlice);
  v23 = sub_ECEEC(&qword_4F1780, &type metadata accessor for Subview.ID);
  v25[1] = v19;
  v25[2] = v20;
  v25[3] = v21;
  v25[4] = v22;
  v25[5] = v23;
  sub_3EB9E4();
  swift_getTupleTypeMetadata2();
  sub_3EBB04();
  swift_getWitnessTable();
  return sub_3EB7F4();
}

uint64_t sub_EC014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v68 = a5;
  v69 = a6;
  v61 = a2;
  v71 = a7;
  v9 = *(a4 - 8);
  v66 = a3;
  v67 = v9;
  __chkstk_darwin(a1);
  v60 = v10;
  v64 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_3EABF4();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3EAF44();
  __chkstk_darwin(v12);
  v63 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3EB9F4();
  v15 = sub_3EBA04();
  v70 = a4;
  swift_getTupleTypeMetadata2();
  v16 = sub_3EBB04();
  v17 = sub_ECEEC(&qword_4F1778, &type metadata accessor for SubviewsCollectionSlice);
  v18 = sub_ECEEC(&qword_4F1780, &type metadata accessor for Subview.ID);
  v65 = v12;
  v75 = v12;
  v76 = v14;
  v62 = v14;
  v58 = v16;
  v77 = v16;
  v78 = v17;
  v54 = v17;
  v79 = v18;
  v19 = sub_3EB9E4();
  v57 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v59 = &v51 - v23;
  v24 = *(v15 - 8);
  __chkstk_darwin(v25);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1770);
  __chkstk_darwin(v51);
  v52 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v51 - v30;
  __chkstk_darwin(v32);
  v34 = &v51 - v33;
  sub_EDBC0(v31);
  if ((*(v24 + 48))(v31, 1, v15) == 1)
  {
    sub_EC944(v31);
    v35 = 1;
  }

  else
  {
    v36 = *(v24 + 32);
    v36(v27, v31, v15);
    v36(v34, v27, v15);
    v35 = 0;
  }

  (*(v24 + 56))(v34, v35, 1, v15);
  (*(v55 + 16))(v53, a1, v56);
  v37 = v34;
  sub_EC9AC(1);
  v38 = v67;
  v39 = v64;
  v40 = v70;
  (*(v67 + 16))(v64, v61, v70);
  v41 = (*(v38 + 80) + 48) & ~*(v38 + 80);
  v42 = swift_allocObject();
  *(v42 + 2) = v66;
  *(v42 + 3) = v40;
  v43 = v69;
  *(v42 + 4) = v68;
  *(v42 + 5) = v43;
  (*(v38 + 32))(&v42[v41], v39, v40);
  WitnessTable = swift_getWitnessTable();
  sub_ECEEC(&qword_4F1788, &type metadata accessor for Subview);
  sub_3EB9D4();
  v74[2] = WitnessTable;
  v45 = swift_getWitnessTable();
  v46 = v59;
  sub_E63BC(v21);
  v47 = v57;
  v48 = *(v57 + 8);
  v48(v21, v19);
  v49 = v52;
  sub_ECE00(v37, v52);
  v75 = v49;
  (*(v47 + 16))(v21, v46, v19);
  v76 = v21;
  v74[0] = v51;
  v74[1] = v19;
  v72 = sub_ECE70();
  v73 = v45;
  sub_25192C(&v75, 2uLL, v74);
  v48(v46, v19);
  sub_EC944(v37);
  v48(v21, v19);
  return sub_EC944(v49);
}

uint64_t sub_EC770()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1770);
  sub_3EAF44();
  sub_3EB9F4();
  sub_3EBA04();
  swift_getTupleTypeMetadata2();
  sub_3EBB04();
  sub_ECEEC(&qword_4F1778, &type metadata accessor for SubviewsCollectionSlice);
  sub_ECEEC(&qword_4F1780, &type metadata accessor for Subview.ID);
  sub_3EB9E4();
  swift_getTupleTypeMetadata2();
  sub_3EBB04();
  swift_getWitnessTable();
  sub_3EAEB4();
  sub_3EB804();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_EC944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EC9AC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = sub_3EABF4();
    sub_ECEEC(&qword_4F1798, &type metadata accessor for SubviewsCollection);
    sub_3ED874();
    sub_3ED8D4();
    sub_3ED8B4();
    if (v4)
    {
      sub_3ED8D4();
    }

    else
    {
      v6 = v3;
    }

    result = sub_3ED8D4();
    if (v5 >= v6)
    {
      sub_3ED8F4();
      return (*(*(v2 - 8) + 8))(v1, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_ECAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v22[1] = a5;
  v9 = sub_3EBA04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  __chkstk_darwin(v14);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v22 - v18;
  sub_E63BC(a2);
  (*(v13 + 16))(v16, v19, a3);
  v24[0] = v16;
  (*(v10 + 16))(v12, a1, v9);
  v24[1] = v12;
  v23[0] = a3;
  v23[1] = v9;
  v22[2] = a4;
  v22[3] = &protocol witness table for Subview;
  sub_25192C(v24, 2uLL, v23);
  v20 = *(v13 + 8);
  v20(v19, a3);
  (*(v10 + 8))(v12, v9);
  return (v20)(v16, a3);
}

uint64_t objectdestroyTm_2()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_ECE00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_ECE70()
{
  result = qword_4F1790;
  if (!qword_4F1790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1790);
  }

  return result;
}

uint64_t sub_ECEEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_ECF74()
{
  sub_3EA744();
  sub_ECFD8();
  return swift_getWitnessTable();
}

unint64_t sub_ECFD8()
{
  result = qword_4F17A0;
  if (!qword_4F17A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F17A0);
  }

  return result;
}

uint64_t sub_ED02C(uint64_t a1, int a2)
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

uint64_t sub_ED074(uint64_t result, int a2, int a3)
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

uint64_t sub_ED0E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F17A8);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F17B0);
  v12 = *(v34 - 8);
  __chkstk_darwin(v34);
  v15 = &v30 - v14;
  if (a2)
  {
    v33 = &v30;
    __chkstk_darwin(v13);
    v32 = &v30 - 6;
    *(&v30 - 32) = 1;
    *(&v30 - 3) = a3;
    *(&v30 - 2) = a4;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F17B8);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F17C0);
    v17 = sub_886BC(&qword_4F17C8, &qword_4F17B8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F17D0);
    v19 = sub_886BC(&qword_4F17D8, &qword_4F17D0);
    v36 = v18;
    v37 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v21 = v31;
    sub_3EB6D4();
    v22 = v34;
    (*(v12 + 16))(v11, v15, v34);
    swift_storeEnumTagMultiPayload();
    v36 = v16;
    v37 = v21;
    v38 = v17;
    v39 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_3EADE4();
    return (*(v12 + 8))(v15, v22);
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F17B8);
    (*(*(v24 - 8) + 16))(v11, a1, v24);
    swift_storeEnumTagMultiPayload();
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F17C0);
    v26 = sub_886BC(&qword_4F17C8, &qword_4F17B8);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F17D0);
    v28 = sub_886BC(&qword_4F17D8, &qword_4F17D0);
    v36 = v27;
    v37 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v39 = v29;
    swift_getOpaqueTypeConformance2();
    return sub_3EADE4();
  }
}

uint64_t sub_ED540(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3EAE34();
  __chkstk_darwin(v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F17D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12[-v9];
  sub_3EAE24();
  v12[16] = a1;
  v13 = a2;
  v14 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F17E0);
  sub_886BC(&qword_4F17E8, &qword_4F17E0);
  sub_3EA364();
  sub_886BC(&qword_4F17D8, &qword_4F17D0);
  sub_3EAE84();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_ED738(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3EA244();
  __chkstk_darwin(v6 - 8);
  sub_3EA224();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;

  return sub_3EB914();
}

uint64_t sub_ED834()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_ED898()
{
  result = qword_4F17F0;
  if (!qword_4F17F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F17F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F17B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F17C0);
    sub_886BC(&qword_4F17C8, &qword_4F17B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F17D0);
    sub_886BC(&qword_4F17D8, &qword_4F17D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F17F0);
  }

  return result;
}

uint64_t sub_EDA28@<X0>(uint64_t a1@<X8>)
{
  sub_3EA584();
  sub_EE720(&qword_4F1828, &type metadata accessor for LayoutSubviews);
  sub_3ED874();
  sub_3ED8D4();
  if (v9[4] == v9[0])
  {
    v2 = sub_3EA4C4();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_3ED904();
    v6 = v5;
    v7 = sub_3EA4C4();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_EDBC0@<X0>(uint64_t a1@<X8>)
{
  sub_3EABF4();
  sub_EE720(&qword_4F1798, &type metadata accessor for SubviewsCollection);
  sub_3ED874();
  sub_3ED8D4();
  if (v9[4] == v9[0])
  {
    v2 = sub_3EBA04();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_3ED904();
    v6 = v5;
    v7 = sub_3EBA04();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t OffsetMultiplier.init(source:xMultiplier:yMultiplier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = result & 1;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  return result;
}

uint64_t View.offset(multiplier:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = *(a1 + 2);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = v10;
  v13[2] = a2;
  v13[3] = a3;
  v14 = v4;
  sub_EE64C(sub_EDEFC, v13, a4);
}

uint64_t sub_EDE20(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E63BC(v4);
  sub_E63BC(v6);
  return (*(v3 + 8))(v6, a2);
}

unint64_t sub_EDF0C()
{
  result = qword_4F1800;
  if (!qword_4F1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1800);
  }

  return result;
}

uint64_t sub_EDF88()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1808);
  sub_EE04C(&qword_4F1810);
  sub_3EA534();
  sub_EE04C(&qword_4F1818);
  return swift_getWitnessTable();
}

uint64_t sub_EE04C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1808);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_EE09C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_EE0E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_EE134(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v12[3] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1760);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  v7 = sub_3EA4C4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EDA28(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_EBBB8(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_3EBB24();
  v14 = 0;
  v13 = 0;
  sub_3EA4B4();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_EE370(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1760);
  __chkstk_darwin(v6 - 8);
  v8 = &v14[-v7];
  v9 = sub_3EA4C4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_EDA28(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_EBBB8(v8);
  }

  (*(v10 + 32))(v12, v8, v9);
  v14[8] = a2 & 1;
  v14[0] = a4 & 1;
  sub_3EA4A4();
  return (*(v10 + 8))(v12, v9);
}

void (*sub_EE55C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_3EA1E4();
  return sub_EBB14;
}

unint64_t sub_EE5E8()
{
  result = qword_4F1820;
  if (!qword_4F1820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1820);
  }

  return result;
}

uint64_t sub_EE64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_EE6CC();
  return sub_251AFC(a1, a2, &type metadata for OffsetMultiplierLayout, v7, v9, v8, a3);
}

unint64_t sub_EE6CC()
{
  result = qword_4F1830;
  if (!qword_4F1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1830);
  }

  return result;
}

uint64_t sub_EE720(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t UIAction.init(wrapping:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_EEF44(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t sub_EE864(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v28 = a3;
  v26 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EE358);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for ActionOrigin();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3EC364();
  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    if ([v26 sender])
    {
      sub_3EE204();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v30, 0, sizeof(v30));
    }

    sub_EEC7C(v30, v16);
    sub_FCF8(v30, &unk_501090);
    if (v17(v12, 1, v13) != 1)
    {
      sub_FCF8(v12, &qword_4EE358);
    }
  }

  else
  {
    sub_80DE8(v12, v16);
  }

  type metadata accessor for ActionRunnerOptions();

  sub_3EC464();
  sub_7F4A0(v16, v9);
  (*(v14 + 56))(v9, 0, 1, v13);
  v18 = _s8ShelfKit19ActionRunnerOptionsC04withC6OriginyACXDAA0cG0VSgF_0(v9);

  sub_FCF8(v9, &qword_4EE358);
  sub_1F958(v28, v30);
  v31 = v18;
  sub_E69A0(v30, v29);
  v19 = swift_allocObject();
  v20 = v29[1];
  v19[1] = v29[0];
  v19[2] = v20;
  v19[3] = v29[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);
  v21 = sub_3ECE04();
  v22 = sub_3ED6F4();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_4072F0;
  v23[5] = v19;
  v23[6] = v21;

  sub_E8ECC(0, 0, v6, &unk_407300, v23);

  sub_E91B8(v30);
  return sub_7F504(v16);
}

void sub_EEC7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - v5;
  v7 = sub_3E6434();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7F06C(a1, v17);
  if (!v18)
  {
    sub_FCF8(v17, &unk_501090);
    goto LABEL_6;
  }

  v11 = sub_EF15C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    sub_3E63F4();
    v14 = (a2 + *(type metadata accessor for ActionOrigin() + 20));
    *v14 = 0u;
    v14[1] = 0u;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    return;
  }

  v12 = v16[1];
  v13 = sub_3ED954();
  if (v13)
  {
    sub_3EDE34();
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_3E63F4();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_FCF8(v6, &qword_5005B0);
    }
  }

  v15 = (a2 + *(type metadata accessor for ActionOrigin() + 20));
  v15[3] = v11;
  *v15 = v12;
  swift_unknownObjectWeakInit();
  (*(v8 + 32))(a2, v10, v7);
  swift_unknownObjectWeakAssign();
}

uint64_t sub_EEF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[3] = a4;
  v14[4] = a5;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v14);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0Tm, a1, a4);
  sub_1F958(v14, v13);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  sub_1D4F0(v13, v10 + 24);
  *(v10 + 64) = a3;
  v11 = sub_3EDEF4();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_EF094()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_EF0D4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_EF114()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_EF15C()
{
  result = qword_4F1838;
  if (!qword_4F1838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F1838);
  }

  return result;
}

id UIAlertAction.init(asPartOf:for:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_EF4CC(a1, a2);

  return v2;
}

uint64_t UIAlertActionStyle.init(for:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return sub_EF3E0(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_EF1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  sub_3ECC14();
  if (!v16)
  {
    return sub_EF85C(&v15);
  }

  sub_1D4F0(&v15, v18);
  sub_1F958(v18, &v15);
  v17 = a3;
  sub_E69A0(&v15, v14);
  v7 = swift_allocObject();
  v8 = v14[1];
  v7[1] = v14[0];
  v7[2] = v8;
  v7[3] = v14[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00);

  v9 = sub_3ECE04();
  v10 = sub_3ED6F4();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_4072F0;
  v11[5] = v7;
  v11[6] = v9;

  sub_E8ECC(0, 0, v6, &unk_407300, v11);

  sub_E91B8(&v15);
  return __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

uint64_t sub_EF3E0(uint64_t a1, uint64_t a2)
{
  if (sub_3ECBC4() == a1 && v4 == a2)
  {

LABEL_5:

    return 1;
  }

  v5 = sub_3EE804();

  if (v5)
  {
    goto LABEL_5;
  }

  if (sub_3ECBB4() == a1 && v7 == a2)
  {

    return 2;
  }

  else
  {
    v8 = sub_3EE804();

    if (v8)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

id sub_EF4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3ECC24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3ECC04();
  v8 = sub_3ED204();

  v9 = sub_3ECBE4();
  if (v10)
  {
    v19 = sub_EF3E0(v9, v10);
  }

  else
  {
    v19 = 0;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  (*(v5 + 16))(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v12, v7, v4);
  *(v14 + v13) = a1;
  aBlock[4] = sub_EF7A8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_38C018;
  aBlock[3] = &block_descriptor_5;
  v15 = _Block_copy(aBlock);

  v16 = [ObjCClassFromMetadata actionWithTitle:v8 style:v19 handler:v15];
  _Block_release(v15);

  (*(v5 + 8))(a2, v4);
  return v16;
}

uint64_t sub_EF70C()
{
  v1 = sub_3ECC24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_EF7A8(uint64_t a1)
{
  v3 = *(sub_3ECC24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_EF1EC(a1, v1 + v4, v5);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_EF85C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EDE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EF8C4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_EF904()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

void UIAlertController.addAction(asPartOf:for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_3ECC24();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EFA68();
  (*(v6 + 16))(v8, a2, v5);

  v10 = sub_EF4CC(v9, v8);

  [v3 addAction:v10];
}

unint64_t sub_EFA68()
{
  result = qword_4F1840;
  if (!qword_4F1840)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F1840);
  }

  return result;
}

id UIButton.init(menu:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for ActionMenu(0);
  __chkstk_darwin(v6);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v10 = sub_3ED204();
  [v9 setTitle:v10 forState:0];

  v33 = v9;
  v11 = [v9 titleLabel];
  if (v11)
  {
    v12 = v11;
    v13 = objc_opt_self();
    sub_3E6974();
    v14 = [v13 boldSystemFontOfSize:?];
    [v12 setFont:v14];
  }

  v31 = sub_625AC(_swiftEmptyArrayStorage);
  v15 = sub_3E7784();
  v16 = *(*(v15 - 8) + 56);
  v16(v5, 1, 1, v15);
  v17 = v5;
  v18 = *(a1 + *(v6 + 32));

  v19 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v32 = a1;
  v21 = v20;
  v22 = *(v6 + 28);
  v16(v8 + v22, 1, 1, v15);
  *v8 = v19;
  v8[1] = v21;
  v8[2] = 0;
  v8[3] = 0xE000000000000000;
  v8[4] = 0;
  v8[5] = 0;
  sub_F0030(v17, v8 + v22);
  *(v8 + *(v6 + 32)) = v18;
  sub_F00A0();
  v23 = _s8ShelfKit11SystemGlyphC4load7artworkSo7UIImageCSg18PodcastsFoundation12ArtworkModelVSg_tFZ_0(v8 + v22);
  LOBYTE(v21) = sub_3ED204();
  v35 = v31;
  v28 = ActionMenuBuilder.buildMenuElements(for:asPartOf:)(v18, v34);
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v38.value._countAndFlagsBits = 0;
  v38.value._object = 0;
  v36.value.super.isa = v23;
  v36.is_nil = v21;
  v24.value = 0;
  isa = sub_3EDE14(v37, v38, v36, v24, 0xFFFFFFFFFFFFFFFFLL, v28, v29).super.super.isa;

  sub_F00EC(v8);
  v26 = v33;
  [v33 setMenu:isa];

  [v26 setShowsMenuAsPrimaryAction:1];

  sub_F00EC(v32);
  return v26;
}

id UIButton.setMenu(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for ActionMenu(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_625AC(_swiftEmptyArrayStorage);
  v10 = sub_3E7784();
  v11 = *(*(v10 - 8) + 56);
  v11(v5, 1, 1, v10);
  v12 = *(a1 + *(v7 + 40));

  v13 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v15 = v14;
  v16 = *(v7 + 36);
  v11(v9 + v16, 1, 1, v10);
  *v9 = v13;
  v9[1] = v15;
  v9[2] = 0;
  v9[3] = 0xE000000000000000;
  v9[4] = 0;
  v9[5] = 0;
  sub_F0030(v5, v9 + v16);
  *(v9 + *(v7 + 40)) = v12;
  sub_F00A0();
  v17 = _s8ShelfKit11SystemGlyphC4load7artworkSo7UIImageCSg18PodcastsFoundation12ArtworkModelVSg_tFZ_0(v9 + v16);
  LOBYTE(v13) = sub_3ED204();
  v27 = v24;
  v22 = ActionMenuBuilder.buildMenuElements(for:asPartOf:)(v12, v25);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v30.value._countAndFlagsBits = 0;
  v30.value._object = 0;
  v28.value.super.isa = v17;
  v28.is_nil = v13;
  v18.value = 0;
  isa = sub_3EDE14(v29, v30, v28, v18, 0xFFFFFFFFFFFFFFFFLL, v22, v23).super.super.isa;

  sub_F00EC(v9);
  v20 = v26;
  [v26 setMenu:isa];

  return [v20 setShowsMenuAsPrimaryAction:1];
}

uint64_t sub_F0030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_F00A0()
{
  result = qword_4EB5D0;
  if (!qword_4EB5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4EB5D0);
  }

  return result;
}

uint64_t sub_F00EC(uint64_t a1)
{
  v2 = type metadata accessor for ActionMenu(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UIColor.swiftUIColor.getter()
{
  v1 = v0;

  return sub_3EB734();
}

uint64_t UIControl.setAction(_:for:asPartOf:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_F0330(v8, a2, a3, v3, v6, v7);
}

void UIControl.addAction(_:for:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_F04CC();
  sub_1F958(a1, v17);
  v8 = v18;
  v9 = v19;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v11 = __chkstk_darwin(v10);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v14 + 16))(v13, v11);

  v15 = sub_EEF44(v13, a3, v7, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  [v3 addAction:v15 forControlEvents:a2];
}

uint64_t sub_F0330(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v21 - v15;
  v17 = *(v10 + 16);
  v17(&v21 - v15, v14);
  [a4 removeTarget:0 action:0 forControlEvents:a2];
  v18 = sub_F04CC();
  (v17)(v12, v16, a5);

  v19 = sub_EEF44(v12, a3, v18, a5, v22);
  [a4 addAction:v19 forControlEvents:a2];

  return (*(v10 + 8))(v16, a5);
}

unint64_t sub_F04CC()
{
  result = qword_4EA880;
  if (!qword_4EA880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4EA880);
  }

  return result;
}

BOOL static UITraitCollection.interfaceMode.getter()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 horizontalSizeClass];

  return v1 == &dword_0 + 2;
}

uint64_t sub_F066C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  sub_FBD0(a1, &v15 - v11, &unk_4E9170);
  v13 = sub_FBD0(v12, v9, &unk_4E9170);
  a5(v13);
  sub_3EAB14();
  return sub_FCF8(v12, &unk_4E9170);
}

uint64_t FollowShowButton.init(asPartOf:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FollowButtonPresenter.Data(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FollowShowButton();
  v11 = a3 + v10[5];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v12 = a3 + v10[6];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v10[7];
  *(a3 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1848);
  swift_storeEnumTagMultiPayload();
  v14 = v10[8];
  *(a3 + v14) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v15 = (a3 + v10[9]);
  sub_3E8A44();
  sub_F3B3C(&qword_4F1850, &type metadata accessor for PodcastStateMachine);
  *v15 = sub_3EA894();
  v15[1] = v16;
  sub_F236C(a2, a3, type metadata accessor for FollowButtonPresenter.Data);
  sub_F236C(a2, v9, type metadata accessor for FollowButtonPresenter.Data);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_F23E4(v9, v19 + v17, type metadata accessor for FollowButtonPresenter.Data);
  *(v19 + v18) = a1;
  type metadata accessor for FollowButtonPresenter(0);
  sub_3EA274();
  return sub_F2310(a2);
}

uint64_t type metadata accessor for FollowShowButton()
{
  result = qword_4F1948;
  if (!qword_4F1948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F0A40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for FollowButtonPresenter.Data(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F236C(a1, v6, type metadata accessor for FollowButtonPresenter.Data);
  type metadata accessor for FollowButtonPresenter(0);
  swift_allocObject();

  v7 = sub_172674(v6, 0);

  *a2 = v7;
  return result;
}

uint64_t FollowShowButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v73 = sub_3EAC24();
  v70 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_3EAAF4();
  v61 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FollowShowButton();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1858);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1860);
  __chkstk_darwin(v11);
  v13 = &v56 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1868);
  __chkstk_darwin(v68);
  v64 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v56 - v16;
  sub_F236C(v2, &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FollowShowButton);
  v17 = *(v7 + 80);
  v18 = (v17 + 16) & ~v17;
  v71 = v8;
  v65 = v17;
  v19 = swift_allocObject();
  v66 = v18;
  v72 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F23E4(v72, v19 + v18, type metadata accessor for FollowShowButton);
  v76 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1880);
  sub_F2454();
  v60 = v10;
  sub_3EB904();
  v20 = *(v6 + 28);
  v74 = v2;
  v21 = v2 + v20;
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  if (*(v21 + 17) != 1)
  {
    v57 = v11;

    sub_3ED9E4();
    v25 = sub_3EB034();
    sub_3E9754();

    v26 = v58;
    sub_3EAAE4();
    swift_getAtKeyPath();
    sub_F23D8(v22, v23, v24, 0);
    v27 = v61 + 8;
    v28 = *(v61 + 8);
    v28(v26, v59);
    v29 = *(v21 + 8);
    v30 = *(v21 + 16);
    if ((*(v21 + 17) & 1) == 0)
    {
      v31 = *v21;

      sub_3ED9E4();
      v32 = sub_3EB034();
      v61 = v27;
      v33 = v32;
      sub_3E9754();

      sub_3EAAE4();
      swift_getAtKeyPath();
      sub_F23D8(v31, v29, v30, 0);
      v28(v26, v59);
    }

    v11 = v57;
  }

  sub_3EBA74();
  sub_3EA434();
  (*(v62 + 32))(v13, v60, v63);
  v34 = &v13[*(v11 + 36)];
  v35 = v80;
  *v34 = v79;
  *(v34 + 1) = v35;
  *(v34 + 2) = v81;
  v36 = objc_opt_self();
  v37 = [v36 mainBundle];
  v54._countAndFlagsBits = 0xE000000000000000;
  v82._object = 0x8000000000427660;
  v82._countAndFlagsBits = 0xD000000000000016;
  v84.value._countAndFlagsBits = 0;
  v84.value._object = 0;
  v38.super.isa = v37;
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  v39 = sub_3E5A74(v82, v84, v38, v86, v54);
  v41 = v40;

  v77 = v39;
  v78 = v41;
  sub_F2648();
  sub_68DC4();
  v42 = v64;
  sub_3EB5B4();

  sub_FCF8(v13, &qword_4F1860);
  v43 = v69;
  sub_3EAC14();
  v44 = v67;
  sub_3EA724();
  (*(v70 + 8))(v43, v73);
  sub_FCF8(v42, &qword_4F1868);
  v45 = [v36 mainBundle];
  v55._countAndFlagsBits = 0xE000000000000000;
  v83._object = 0x8000000000427660;
  v83._countAndFlagsBits = 0xD000000000000016;
  v85.value._countAndFlagsBits = 0;
  v85.value._object = 0;
  v46.super.isa = v45;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v47 = sub_3E5A74(v83, v85, v46, v87, v55);
  v49 = v48;

  v77 = v47;
  v78 = v49;
  v50 = v72;
  sub_F236C(v74, v72, type metadata accessor for FollowShowButton);
  v51 = v66;
  v52 = swift_allocObject();
  sub_F23E4(v50, v52 + v51, type metadata accessor for FollowShowButton);
  sub_3EA734();

  return sub_FCF8(v44, &qword_4F1868);
}

uint64_t sub_F136C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EB5B8);
  __chkstk_darwin(v1 - 8);
  v3 = v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_5005B0);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  if (*(v0 + *(type metadata accessor for FollowShowButton() + 36)))
  {

    sub_3E8A34();

    v16 = 0;
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 1;
    v7 = sub_3E7994();
    result = sub_F3B84(v14);
    if ((v7 & 1) == 0)
    {

      sub_3E8A34();

      v9 = sub_3E7984();
      result = sub_F3B84(v15);
      if ((v9 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F18E8);
        sub_3EA284();
        v10 = sub_F1B88();
        (*(v10 + 16))();

        v11 = sub_3E64E4();
        (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
        sub_F2EE0(v12);
        sub_16C900(v6, v3, v12);

        v13[6] = v12[6];
        v13[7] = v12[7];
        v13[8] = v12[8];
        v13[2] = v12[2];
        v13[3] = v12[3];
        v13[4] = v12[4];
        v13[5] = v12[5];
        v13[0] = v12[0];
        v13[1] = v12[1];
        sub_FCF8(v13, &qword_4F19D0);
        sub_FCF8(v3, &qword_4EB5B8);
        return sub_FCF8(v6, &qword_5005B0);
      }
    }
  }

  else
  {
    sub_3E8A44();
    sub_F3B3C(&qword_4F1850, &type metadata accessor for PodcastStateMachine);
    result = sub_3EA884();
    __break(1u);
  }

  return result;
}

uint64_t sub_F1658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v32 = sub_3EA6C4();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F19E0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F19E8);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1898);
  __chkstk_darwin(v34);
  v13 = (&v32 - v12);
  if (*(a1 + *(type metadata accessor for FollowShowButton() + 36)))
  {

    sub_3E8A34();

    sub_3E7984();
    sub_F3B84(v36);
    v33 = sub_3EB834();

    sub_3E8A34();

    v40 = 0;
    v41 = 0;
    v14 = 1;
    v43 = 0;
    v44 = 0;
    v42 = 1;
    v15 = sub_3E7994();
    sub_F3B84(v37);

    sub_3E8A34();

    v16 = sub_3E7994();
    sub_F3B84(v38);
    if (v16)
    {
      sub_3EA3C4();
      sub_3EBB54();
      v17 = &v8[*(v6 + 36)];
      *v17 = vdupq_n_s64(0x3FE999999999999AuLL);
      v17[1].i64[0] = v18;
      v17[1].i64[1] = v19;
      v20 = v32;
      (*(v3 + 104))(v5, enum case for DynamicTypeSize.medium(_:), v32);
      sub_F3BF4();
      sub_3EB554();
      (*(v3 + 8))(v5, v20);
      sub_FCF8(v8, &qword_4F19E0);
      v14 = 0;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F19F0);
    (*(*(v21 - 8) + 56))(v11, v14, 1, v21);
    if (v15)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = 1.0;
    }

    v23 = sub_3EBA74();
    v25 = v24;
    v26 = v13 + *(v34 + 36);
    sub_FACC(v11, v26, &qword_4F19E8);
    v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F18B8) + 36));
    *v27 = v23;
    v27[1] = v25;
    *v13 = v33;
    v13[1] = v22;
    sub_3EBAE4();
    v28 = sub_3EBAC4();

    sub_3E8A34();

    LOBYTE(v23) = sub_3E7994();
    sub_F3B84(v39);
    v29 = v35;
    sub_FACC(v13, v35, &qword_4F1898);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1880);
    v31 = v29 + *(result + 36);
    *v31 = v28;
    *(v31 + 8) = v23 & 1;
  }

  else
  {
    sub_3E8A44();
    sub_F3B3C(&qword_4F1850, &type metadata accessor for PodcastStateMachine);
    result = sub_3EA884();
    __break(1u);
  }

  return result;
}

uint64_t sub_F1B88()
{
  v1 = sub_3EAAF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for FollowShowButton() + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_3ED9E4();
    v8 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_F1CD8@<X0>(void *a1@<X8>)
{
  sub_F3CAC();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t sub_F1D28@<X0>(void *a1@<X8>)
{
  sub_F3CAC();
  result = sub_3EAB04();
  *a1 = v3;
  return result;
}

uint64_t sub_F1D78()
{
  sub_F3CAC();

  return sub_3EAB14();
}

uint64_t sub_F1EC4()
{
  v1 = *(type metadata accessor for FollowButtonPresenter.Data(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v25 = v4;

    v7 = type metadata accessor for ShowOffer();
    v8 = v5 + v7[7];
    v9 = sub_3E7784();
    if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
    {

      v10 = *(v8 + 32);
      if (v10 != 255)
      {
        sub_F2248(*(v8 + 16), *(v8 + 24), v10);
      }

      v11 = *(v8 + 64);
      if (v11 != 255)
      {
        sub_F2260(*(v8 + 56), v11);
      }

      v12 = *(v8 + 80);
      if (v12 != 255)
      {
        sub_F2260(*(v8 + 72), v12);
      }

      v13 = *(v8 + 96);
      if (v13 != 255)
      {
        sub_F2260(*(v8 + 88), v13);
      }

      v14 = *(v8 + 112);
      if (v14 != 255)
      {
        sub_F2260(*(v8 + 104), v14);
      }

      v15 = *(v8 + 128);
      if (v15 != 255)
      {
        sub_F2260(*(v8 + 120), v15);
      }

      v16 = *(v9 + 44);
      v17 = sub_3E7624();
      (*(*(v17 - 8) + 8))(v8 + v16, v17);
    }

    v18 = v7[13];
    v19 = sub_3E5DC4();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (!v21(v5 + v18, 1, v19))
    {
      (*(v20 + 8))(v5 + v18, v19);
    }

    v22 = v7[16];
    if (!v21(v5 + v22, 1, v19))
    {
      (*(v20 + 8))(v5 + v22, v19);
    }

    v23 = v7[17];
    v4 = v25;
    if (!v21(v5 + v23, 1, v19))
    {
      (*(v20 + 8))(v5 + v23, v19);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_F2248(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_F2260(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_F2274@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for FollowButtonPresenter.Data(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_F0A40(v4, a1);
}

uint64_t sub_F2310(uint64_t a1)
{
  v2 = type metadata accessor for FollowButtonPresenter.Data(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F236C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_F23D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_F23E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_F2454()
{
  result = qword_4F1888;
  if (!qword_4F1888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1880);
    sub_F250C();
    sub_886BC(&qword_4F18C0, &qword_4F18C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1888);
  }

  return result;
}

unint64_t sub_F250C()
{
  result = qword_4F1890;
  if (!qword_4F1890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1898);
    sub_F25C4();
    sub_886BC(&qword_4F18B0, &qword_4F18B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1890);
  }

  return result;
}

unint64_t sub_F25C4()
{
  result = qword_4F18A0;
  if (!qword_4F18A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F18A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F18A0);
  }

  return result;
}

unint64_t sub_F2648()
{
  result = qword_4F18D0;
  if (!qword_4F18D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1860);
    sub_886BC(&qword_4F18D8, &qword_4F1858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F18D0);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = v0;
  v2 = type metadata accessor for FollowShowButton();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  type metadata accessor for FollowButtonPresenter.Data(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v8 = type metadata accessor for ShowOffer();
    v9 = v6 + v8[7];
    v10 = sub_3E7784();
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v9 + 32);
      if (v11 != 255)
      {
        sub_F2248(*(v9 + 16), *(v9 + 24), v11);
      }

      v12 = *(v9 + 64);
      if (v12 != 255)
      {
        sub_F2260(*(v9 + 56), v12);
      }

      v13 = *(v9 + 80);
      if (v13 != 255)
      {
        sub_F2260(*(v9 + 72), v13);
      }

      v14 = *(v9 + 96);
      if (v14 != 255)
      {
        sub_F2260(*(v9 + 88), v14);
      }

      v15 = *(v9 + 112);
      if (v15 != 255)
      {
        sub_F2260(*(v9 + 104), v15);
      }

      v16 = *(v9 + 128);
      if (v16 != 255)
      {
        sub_F2260(*(v9 + 120), v16);
      }

      v17 = *(v10 + 44);
      v18 = sub_3E7624();
      (*(*(v18 - 8) + 8))(v9 + v17, v18);
    }

    v35 = v1;

    v19 = v8[13];
    v20 = sub_3E5DC4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (!v22(v6 + v19, 1, v20))
    {
      (*(v21 + 8))(v6 + v19, v20);
    }

    v23 = v8[16];
    if (!v22(v6 + v23, 1, v20))
    {
      (*(v21 + 8))(v6 + v23, v20);
    }

    v24 = v8[17];
    v25 = v22(v6 + v24, 1, v20);
    v1 = v35;
    if (!v25)
    {
      (*(v21 + 8))(v6 + v24, v20);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  sub_F23D8(*(v6 + v2[5]), *(v6 + v2[5] + 8), *(v6 + v2[5] + 16), *(v6 + v2[5] + 17));

  v26 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1848);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_3EC634();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v6 + v26, 1, v27))
    {
      (*(v28 + 8))(v6 + v26, v27);
    }
  }

  else
  {
  }

  v29 = v2[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_3EC634();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(v6 + v29, 1, v30))
    {
      (*(v31 + 8))(v6 + v29, v30);
    }
  }

  else
  {
  }

  v32 = v6 + v2[10];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1870);
  (*(*(v33 - 8) + 8))(v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1878);

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_F2D08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3EAAF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1848);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for FollowShowButton();
  sub_FBD0(v1 + *(v10 + 32), v9, &qword_4F1848);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_14A10(v9, a1);
  }

  sub_3ED9E4();
  v12 = sub_3EB034();
  sub_3E9754();

  sub_3EAAE4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

__n128 sub_F2EE0@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_3EAAF4();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1848);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v9 - 8);
  v45 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v41 - v12);
  v14 = sub_3EC634();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  __chkstk_darwin(v20);
  v46 = &v41 - v21;
  v22 = type metadata accessor for FollowShowButton();
  sub_FBD0(v1 + *(v22 + 28), v8, &qword_4F1848);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v42 = v19;
  if (EnumCaseMultiPayload == 1)
  {
    sub_14A10(v8, v13);
  }

  else
  {
    sub_3ED9E4();
    v24 = sub_3EB034();
    sub_3E9754();

    sub_3EAAE4();
    swift_getAtKeyPath();

    (*(v43 + 8))(v5, v44);
  }

  v25 = *(v15 + 48);
  if (v25(v13, 1, v14) == 1)
  {
    goto LABEL_7;
  }

  v26 = v15;
  v27 = *(v15 + 32);
  v27(v46, v13, v14);
  v13 = v45;
  sub_F2D08(v45);
  if (v25(v13, 1, v14) == 1)
  {
    (*(v26 + 8))(v46, v14);
LABEL_7:
    v28 = &unk_4E9170;
    v29 = v13;
    goto LABEL_8;
  }

  v34 = v42;
  v27(v42, v13, v14);
  v35 = *(v26 + 16);
  v36 = v41;
  v37 = v46;
  v35(v41, v46, v14);
  LocationFields.init(from:)(v36, &v53);
  v59 = v55;
  v60 = v56;
  v61 = v57;
  v62 = v58;
  if (!v54)
  {
    v40 = *(v26 + 8);
    v40(v34, v14);
    v40(v37, v14);
    goto LABEL_9;
  }

  v44 = v54;
  v45 = v53;
  v35(v36, v34, v14);
  v38 = LocationFields.init(from:)(v36, &v47);
  v39 = *(v26 + 8);
  v39(v34, v14, v38);
  (v39)(v37, v14);
  if (v48)
  {
    v64 = v59;
    v65 = v60;
    v66 = v61;
    *&v68[8] = v49;
    *&v68[24] = v50;
    *&v68[40] = v51;
    *&v63 = v45;
    *(&v63 + 1) = v44;
    *&v67 = v62;
    *(&v67 + 1) = v47;
    *&v68[56] = v52;
    *v68 = v48;
    FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.init()();
    goto LABEL_10;
  }

  v28 = &unk_4F19D8;
  v29 = &v53;
LABEL_8:
  sub_FCF8(v29, v28);
LABEL_9:
  sub_F3BD8(&v63);
LABEL_10:
  v30 = *&v68[32];
  *(a1 + 96) = *&v68[16];
  *(a1 + 112) = v30;
  *(a1 + 128) = *&v68[48];
  v31 = v66;
  *(a1 + 32) = v65;
  *(a1 + 48) = v31;
  v32 = *v68;
  *(a1 + 64) = v67;
  *(a1 + 80) = v32;
  result = v64;
  *a1 = v63;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_F3454(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for FollowButtonPresenter.Data(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F18E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[7];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[9]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F18E8);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_F3600(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for FollowButtonPresenter.Data(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F18E0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9]) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F18E8);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_F378C()
{
  type metadata accessor for FollowButtonPresenter.Data(319);
  if (v0 <= 0x3F)
  {
    sub_F38D0();
    if (v1 <= 0x3F)
    {
      sub_F3A18(319, &qword_4F1960, type metadata accessor for InteractionContextAction, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_F3920();
        if (v3 <= 0x3F)
        {
          sub_F3984();
          if (v4 <= 0x3F)
          {
            sub_F3A18(319, &unk_4F1978, type metadata accessor for FollowButtonPresenter, &type metadata accessor for LazyState2);
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

void sub_F38D0()
{
  if (!qword_4F1958)
  {
    v0 = sub_3EA324();
    if (!v1)
    {
      atomic_store(v0, &qword_4F1958);
    }
  }
}

void sub_F3920()
{
  if (!qword_4F1968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_4E9170);
    v0 = sub_3EA324();
    if (!v1)
    {
      atomic_store(v0, &qword_4F1968);
    }
  }
}

void sub_F3984()
{
  if (!qword_4F1970)
  {
    sub_3E8A44();
    sub_F3B3C(&qword_4F1850, &type metadata accessor for PodcastStateMachine);
    v0 = sub_3EA8A4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F1970);
    }
  }
}

void sub_F3A18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_F3A80()
{
  result = qword_4F19C0;
  if (!qword_4F19C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F1868);
    sub_F2648();
    sub_F3B3C(&qword_4F19C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F19C0);
  }

  return result;
}

uint64_t sub_F3B3C(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_F3BD8(_OWORD *a1)
{
  result = 0.0;
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

unint64_t sub_F3BF4()
{
  result = qword_4F19F8;
  if (!qword_4F19F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F19E0);
    sub_886BC(&qword_4F1A00, &qword_4F1A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F19F8);
  }

  return result;
}

unint64_t sub_F3CAC()
{
  result = qword_4F1A10;
  if (!qword_4F1A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1A10);
  }

  return result;
}

__n128 static FollowShowButtonStyle.referenceLink.getter@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #28.0 }

  *a1 = result;
  a1[1].n128_u8[0] = 0;
  return result;
}

void static FollowShowButtonStyle.searchResult.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FollowShowButtonStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FollowShowButtonStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t BookmarkEpisodeIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_3EDD94();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = sub_3E7234();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v5 = sub_3ED6F4();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
  v7 = swift_task_alloc();
  v2[30] = v7;
  *v7 = v2;
  v7[1] = sub_F3F74;

  return BaseObjectGraph.inject<A>(_:)(v2 + 17, v6, v6);
}

uint64_t sub_F3F74()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_F4A90;
  }

  else
  {
    v2 = sub_F4088;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_F4088()
{
  v1 = v0[31];
  swift_getObjectType();
  sub_3ED764();
  v0[32] = sub_3EDDF4();
  if (v1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
    swift_unknownObjectRelease();

    v2 = v0[1];

    return v2();
  }

  else
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
    swift_unknownObjectRelease();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1DE0);
    v5 = swift_task_alloc();
    v0[33] = v5;
    *v5 = v0;
    v5[1] = sub_F4228;

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v4, v4);
  }
}

uint64_t sub_F4228()
{
  v2 = *v1;
  *(v2 + 272) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_F4B14, 0, 0);
  }

  else
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEBC0);
    v4 = swift_task_alloc();
    *(v2 + 280) = v4;
    *v4 = v2;
    v4[1] = sub_F43CC;

    return BaseObjectGraph.inject<A>(_:)(v2 + 56, v3, v3);
  }
}

uint64_t sub_F43CC()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_F4BA0;
  }

  else
  {
    v2 = sub_F44E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_F44E0()
{
  sub_3E7034();
  sub_3E7214();
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[37] = v3;
  v4 = sub_F4EC8(&qword_4F1A28, &type metadata accessor for FindOrCreateLocalEpisodeContentIDsIntent);
  *v3 = v0;
  v3[1] = sub_F45F4;
  v5 = v0[26];
  v6 = v0[24];
  v7 = v0[20];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 18, v5, v7, v6, v4, v1, v2);
}

uint64_t sub_F45F4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_F4C34;
  }

  else
  {
    v2 = sub_F4708;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_F4708()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  sub_1F958(v0 + 16, v0 + 96);
  v6 = swift_allocObject();
  *(v0 + 312) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  sub_1D4F0((v0 + 96), v6 + 32);
  (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
  v7 = v1;
  v8 = swift_task_alloc();
  *(v0 + 320) = v8;
  *v8 = v0;
  v8[1] = sub_F4848;
  v9 = *(v0 + 184);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_F4E60, v6, &type metadata for () + 8);
}

uint64_t sub_F4848()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  (*(v2[22] + 8))(v2[23], v2[21]);

  if (v0)
  {
    v3 = sub_F4CF0;
  }

  else
  {
    v3 = sub_F49CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_F49CC()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_F4A90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_F4B14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_F4BA0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_F4C34()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_F4CF0()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_F4DAC(void *a1, uint64_t a2, void *a3)
{
  result = sub_3EDD74();
  if (!v3)
  {
    sub_F4F10(result, a3, a1);
  }

  return result;
}

uint64_t sub_F4E18()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_F4EC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_F4F10(unint64_t a1, void *a2, void *a3)
{
  v6 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v17 = [v6 BOOLForKey:kMTDownloadEpisodesWhenSaving];

  v7 = a1;
  if (a1 >> 62)
  {
    v15 = sub_3EE5A4();
    v7 = a1;
    v8 = v15;
    if (!v15)
    {
      return;
    }
  }

  else
  {
    v8 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v16 = v7 & 0xC000000000000001;
    v11 = v7;
    do
    {
      if (v16)
      {
        v12 = sub_3EE3F4();
      }

      else
      {
        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 isBookmarked];
      if (v17)
      {
        [v13 isDownloadable];
      }

      ++v10;
      v9 |= v14 ^ 1;
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      sub_3E74F4();

      v7 = v11;
    }

    while (v8 != v10);
    if (v9)
    {

      [a3 saveInCurrentBlock];
    }
  }
}

uint64_t sub_F50E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_F5184;

  return BookmarkEpisodeIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_F5184(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_F52A8(uint64_t a1, void **a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_3EE294();
    sub_3E75E4();
    sub_F7D30();
    result = sub_3ED844();
    v3 = v20;
    v5 = v21;
    v7 = v22;
    v6 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v6 = 0;
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v8;
    v14 = v6;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      return sub_44824();
    }

    while (1)
    {
      v17 = *a2;

      v18 = sub_3E7574();
      sub_131BA4(v18, v17);
      *a2 = v19;

      v6 = v14;
      v8 = v15;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_3EE304())
      {
        sub_3E75E4();
        swift_dynamicCast();
        v16 = v25;
        v14 = v6;
        v15 = v8;
        if (v25)
        {
          continue;
        }
      }

      return sub_44824();
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v7 + 64) >> 6))
    {
      return sub_44824();
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_F5498(uint64_t a1)
{
  v3 = sub_3E5DC4();
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_3EE2D4();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v52 = _swiftEmptyArrayStorage;
    sub_41BC8(0, v7 & ~(v7 >> 63), 0);
    v47 = v52;
    if (v46)
    {
      result = sub_3EE284();
    }

    else
    {
      result = sub_3EE254();
      v9 = *(a1 + 36);
    }

    v49 = result;
    v50 = v9;
    v51 = v46 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v43 = v6;
      v10 = 0;
      v41 = v7;
      v42 = v45 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v39 = a1 + 56;
      v40 = v11;
      v37 = v1;
      v38 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v49;
        v15 = v50;
        v16 = v51;
        v17 = a1;
        sub_F798C(v49, v50, v51, a1);
        v19 = v18;
        v20 = [v18 objectID];
        v21 = [v20 URIRepresentation];

        v22 = v43;
        sub_3E5D44();

        v23 = v47;
        v52 = v47;
        v25 = v47[2];
        v24 = v47[3];
        if (v25 >= v24 >> 1)
        {
          sub_41BC8(v24 > 1, v25 + 1, 1);
          v23 = v52;
        }

        v23[2] = v25 + 1;
        v26 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v47 = v23;
        result = (*(v45 + 32))(v23 + v26 + *(v45 + 72) * v25, v22, v44);
        if (v46)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_3EE2A4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AD0);
          v12 = sub_3ED834();
          sub_3EE314();
          result = v12(v48, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_69A4C(v49, v50, v51);
            return v47;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v27 = 1 << *(v17 + 32);
          if (v14 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v14 >> 6;
          v29 = *(v39 + 8 * (v14 >> 6));
          if (((v29 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v14 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_69A4C(v14, v15, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_69A4C(v14, v15, 0);
          }

LABEL_33:
          v36 = *(v17 + 36);
          v49 = v27;
          v50 = v36;
          v51 = 0;
          v7 = v41;
          if (v10 == v41)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_F58CC()
{
  sub_3E62F4();
  v0 = sub_3E62E4();
  v2 = v1;

  qword_4F1A40 = v0;
  *algn_4F1A48 = v2;
  return result;
}

uint64_t sub_F5938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v68 - v7;
  v9 = type metadata accessor for Header(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50);
  __chkstk_darwin(v13 - 8);
  v86 = &v68 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0);
  __chkstk_darwin(v15 - 8);
  v17 = (&v68 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8);
  __chkstk_darwin(v18 - 8);
  v85 = &v68 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0);
  __chkstk_darwin(v20 - 8);
  v87 = &v68 - v21;
  v22 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v22);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v76 = v10;
    v81 = a3;
    v82 = v9;
    v84 = v8;
    v80 = a2;
    v74 = EpisodeListType.title.getter();
    v73 = v25;
    v26 = *(a1 + 48);
    *(v24 + 2) = *(a1 + 32);
    *(v24 + 3) = v26;
    v24[64] = *(a1 + 64);
    v27 = *(a1 + 16);
    *v24 = *a1;
    *(v24 + 1) = v27;
    swift_storeEnumTagMultiPayload();
    v79 = a1;
    sub_DAD10(a1, v88);
    v28 = _s8ShelfKit10FlowActionC6seeAllyAcA0C11DestinationOFZ_0(v24);
    sub_F7B8C(v24, type metadata accessor for FlowDestination);
    if (qword_4E89A0 != -1)
    {
      swift_once();
    }

    v78 = qword_4F1A40;
    v83 = *algn_4F1A48;
    v72 = type metadata accessor for ActionMenu(0);
    v29 = *(v72 - 8);
    v71 = *(v29 + 56);
    v77 = v29 + 56;
    v71(v85, 1, 1, v72);
    *v17 = v28;
    v30 = type metadata accessor for Header.PrimaryAction(0);
    swift_storeEnumTagMultiPayload();
    v69 = *(v30 - 8);
    v31 = *(v69 + 56);
    v31(v17, 0, 1, v30);
    v32 = sub_3E7784();
    v33 = *(v32 - 8);
    v75 = v17;
    v34 = *(v33 + 56);
    v34(v86, 1, 1, v32);
    *(v12 + 1) = 0u;
    v35 = v12 + 16;
    v12[32] = 0;
    *v12 = 0u;
    v36 = v12;
    v37 = v82;
    v70 = *(v82 + 28);
    v71(v36 + v70, 1, 1, v72);
    v72 = *(v37 + 32);
    v31((v36 + v72), 1, 1, v30);
    v38 = *(v37 + 36);
    v34(v36 + v38, 1, 1, v32);
    v39 = v75;

    v77 = v28;

    v40 = v74;
    v41 = v73;
    if ((sub_3EE0E4() & 1) != 0 || (*(v69 + 48))(v39, 1, v30) != 1)
    {
      *v36 = v40;
      v36[1] = v41;
      *v35 = 0;
      *(v35 + 1) = 0;
      v35[16] = 0;

      sub_51F9C(v85, v36 + v70, &qword_4F1AB8);
      sub_F7C5C(v39, v36 + v72);
      sub_51F9C(v86, v36 + v38, &qword_4F1D50);
      v42 = v87;
      sub_F7CCC(v36, v87);
      (*(v76 + 56))(v42, 0, 1, v82);
      sub_FCF8(v39, &qword_4F1AB0);
      sub_F7B8C(v36, type metadata accessor for Header);
    }

    else
    {
      sub_FCF8(v86, &qword_4F1D50);
      sub_FCF8(v85, &qword_4F1AB8);
      sub_FCF8(v39, &qword_4F1AB0);
      sub_F7B8C(v36, type metadata accessor for Header);
      (*(v76 + 56))(v87, 1, 1, v82);
    }

    v43 = v79[64];
    if (v43 <= 0xA)
    {
      if (((1 << v43) & 0x3BC) != 0)
      {
        v44 = 10;
LABEL_23:
        LODWORD(v86) = v44;
        v56 = sub_3E5DC4();
        v57 = *(*(v56 - 8) + 56);
        v57(v84, 1, 1, v56);
        v58 = type metadata accessor for ModernShelf();
        v59 = v81;
        v60 = &v81[v58[12]];
        *(v60 + 4) = 0;
        *v60 = 0u;
        *(v60 + 1) = 0u;
        v61 = v58[13];
        sub_3E85C4();
        v62 = v78;
        v63 = v83;
        sub_3EC584();

        v64 = sub_3EC634();
        (*(*(v64 - 8) + 56))(&v59[v61], 0, 1, v64);
        v65 = v58[9];
        v66 = &v59[v58[8]];
        v57(&v59[v65], 1, 1, v56);
        *v59 = v62;
        *(v59 + 1) = v63;
        sub_F7BEC(v87, &v59[v58[5]]);
        v67 = &v59[v58[6]];
        *v67 = v86;
        v67[1] = 1;
        *(v67 + 3) = 256;
        *(v67 + 2) = 0;
        *(v67 + 1) = 1;
        *&v59[v58[7]] = v80;

        sub_51F9C(v84, &v59[v65], &unk_4E9EE0);
        v59[v58[10]] = 1;
        v59[v58[11]] = 0;
        *v66 = 0;
        *(v66 + 1) = 0;
        return (*(*(v58 - 1) + 56))(v59, 0, 1, v58);
      }

      v48 = v79[1];
      if (v43 == 6)
      {
        if (v48)
        {
          v44 = 5;
        }

        else
        {
          v44 = 9;
        }

        goto LABEL_23;
      }

      if (v43 == 10)
      {
        v49 = *v79 | (v48 << 8) | (*(v79 + 2) << 16) | (*(v79 + 3) << 48);
        v50 = *(v79 + 4);
        v52 = *(v79 + 2);
        v51 = *(v79 + 3);
        v53 = *(v79 + 1);
        v54 = *(v79 + 6) | *(v79 + 7) | *(v79 + 5);
        if (v54 | v50 | v51 | v49 | v52 | v53)
        {
          v55 = v54 | v50 | v51 | v52 | v53;
          if ((v49 != 1 || v55) && v49 == 2 && !v55)
          {
            v44 = 4;
            goto LABEL_23;
          }
        }
      }
    }

    v44 = 5;
    goto LABEL_23;
  }

  v45 = type metadata accessor for ModernShelf();
  v46 = *(*(v45 - 8) + 56);

  return v46(a3, 1, 1, v45);
}

uint64_t CategoryPageFromYourShowsShelfIntentImplementation.init(asPartOf:performing:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = *a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20);
  v5 = swift_task_alloc();
  v3[8] = v5;
  *v5 = v3;
  v5[1] = sub_F6430;

  return BaseObjectGraph.inject<A>(_:)(v3 + 4, v4, v4);
}