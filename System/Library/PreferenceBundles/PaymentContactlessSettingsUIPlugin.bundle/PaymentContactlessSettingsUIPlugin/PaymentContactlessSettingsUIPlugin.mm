unint64_t sub_1638()
{
  result = qword_102D0;
  if (!qword_102D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102D0);
  }

  return result;
}

uint64_t sub_16A8@<X0>(void *a1@<X8>)
{
  sub_7A00();
  sub_79F0();
  sub_79E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for PaymentContactlessSettingsController();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_5264();
  sub_78A0();

  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t sub_1778(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(*(sub_7A70() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = sub_7920();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = sub_77E0();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();
  v10 = sub_7750();
  v2[15] = v10;
  v11 = *(v10 - 8);
  v2[16] = v11;
  v12 = *(v11 + 64) + 15;
  v2[17] = swift_task_alloc();
  v13 = *(*(sub_1FE0(&qword_102F0, &qword_82C8) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v14 = sub_7730();
  v2[19] = v14;
  v15 = *(v14 - 8);
  v2[20] = v15;
  v16 = *(v15 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = sub_7A00();
  v2[23] = sub_79F0();
  v18 = sub_79E0();

  return _swift_task_switch(sub_19E8, v18, v17);
}

uint64_t sub_19E8()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[7];

  sub_7950();
  sub_7710();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) != 1)
  {
    (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
    v0[2] = sub_7720();
    v0[3] = v14;
    v0[4] = 47;
    v0[5] = 0xE100000000000000;
    sub_2190();
    v15 = sub_7A90();

    v17 = *(v15 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = -v17;
      v20 = v15 + 40;
      v21 = &_swiftEmptyArrayStorage;
      do
      {
        v60 = v21;
        v22 = (v20 + 16 * v18++);
        while (1)
        {
          if ((v18 - 1) >= *(v15 + 16))
          {
            __break(1u);
            return result;
          }

          v23 = v0[22];
          v24 = *(v22 - 1);
          v25 = *v22;

          sub_79F0();
          sub_79E0();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v26 = HIBYTE(v25) & 0xF;
          if ((v25 & 0x2000000000000000) == 0)
          {
            v26 = v24 & 0xFFFFFFFFFFFFLL;
          }

          if (v26)
          {
            break;
          }

          ++v18;
          v22 += 2;
          if (v19 + v18 == 1)
          {
            v21 = v60;
            goto LABEL_21;
          }
        }

        v27 = v60;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_21E4(0, v60[2] + 1, 1);
          v27 = v60;
        }

        v29 = v27[2];
        v28 = v27[3];
        if (v29 >= v28 >> 1)
        {
          result = sub_21E4((v28 > 1), v29 + 1, 1);
          v27 = v60;
        }

        v27[2] = v29 + 1;
        v30 = &v27[2 * v29];
        v30[4] = v24;
        v30[5] = v25;
        v21 = v27;
        v20 = v15 + 40;
      }

      while (v19 + v18);
    }

    else
    {
      v21 = &_swiftEmptyArrayStorage;
    }

LABEL_21:

    if (v21[2])
    {
      v31 = v21[4];
      v32 = v21[5];

      if (v31 == 0xD000000000000012 && 0x8000000000007F80 == v32)
      {

LABEL_27:
        v34 = v0[20];
        v59 = v0[19];
        v61 = v0[21];
        v35 = v0[13];
        v36 = v0[14];
        v37 = v0[11];
        v38 = v0[10];
        v57 = v0[12];
        v58 = v0[9];
        v39 = v0[7];
        v40 = v0[8];
        v41 = v0[6];
        sub_7A60();
        sub_7910();
        sub_7940();
        sub_7960();
        (*(v35 + 8))(v36, v57);
        (*(v38 + 8))(v37, v58);
        (*(v34 + 8))(v61, v59);
        goto LABEL_29;
      }

      v33 = sub_7B20();

      if (v33)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    v43 = v0[20];
    v42 = v0[21];
    v44 = v0[19];
    v46 = v0[13];
    v45 = v0[14];
    v47 = v0[12];
    v49 = v0[6];
    v48 = v0[7];
    sub_7940();
    sub_7970();
    (*(v46 + 8))(v45, v47);
    (*(v43 + 8))(v42, v44);
    goto LABEL_29;
  }

  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v13 = v0[6];
  v12 = v0[7];
  sub_2128(v0[18]);
  sub_7940();
  sub_7970();
  (*(v10 + 8))(v9, v11);
LABEL_29:
  v50 = v0[21];
  v51 = v0[17];
  v52 = v0[18];
  v53 = v0[14];
  v54 = v0[11];
  v55 = v0[8];

  v56 = v0[1];

  return v56();
}

uint64_t sub_1EBC()
{
  v0 = sub_1FE0(&qword_102D8, &qword_82B8);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v6 - v3;
  sub_2028();
  sub_7980();
  sub_207C();
  sub_7930();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1FE0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2028()
{
  result = qword_102E0;
  if (!qword_102E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102E0);
  }

  return result;
}

unint64_t sub_207C()
{
  result = qword_102E8;
  if (!qword_102E8)
  {
    sub_20E0(&qword_102D8, &qword_82B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102E8);
  }

  return result;
}

uint64_t sub_20E0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2128(uint64_t a1)
{
  v2 = sub_1FE0(&qword_102F0, &qword_82C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2190()
{
  result = qword_102F8;
  if (!qword_102F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102F8);
  }

  return result;
}

char *sub_21E4(char *a1, int64_t a2, char a3)
{
  result = sub_2204(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2204(char *result, int64_t a2, char a3, char *a4)
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
    sub_1FE0(&qword_10300, &unk_82D0);
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

uint64_t sub_2324()
{
  sub_20E0(&qword_102D8, &qword_82B8);
  sub_207C();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_2388(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2394(uint64_t *a1, int a2)
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

uint64_t sub_23DC(uint64_t result, int a2, int a3)
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

uint64_t sub_2444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v38 = sub_1FE0(&qword_10308, &qword_83A0);
  v36 = *(v38 - 8);
  v5 = *(v36 + 64);
  __chkstk_darwin(v38);
  v35 = &v31 - v6;
  v7 = sub_1FE0(&qword_10310, &qword_83A8);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = sub_1FE0(&qword_10318, &qword_83B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v39 = a1;
  v40 = a2;
  sub_1FE0(&qword_10320, &qword_83B8);
  sub_40E4();
  sub_7810();
  v16 = sub_77C0();
  v17 = sub_45C4(&qword_10380, &qword_10318, &qword_83B0);
  v18 = sub_43E4();
  v19 = sub_4A84(&qword_10390, &type metadata accessor for ApplicationSettingsView);
  v32 = v16;
  sub_7870();
  (*(v12 + 8))(v15, v11);
  sub_77F0();
  sub_4438();
  if (!sub_7A50())
  {
    v20 = [objc_opt_self() mainBundle];
  }

  v21 = sub_7820();
  v23 = v22;
  v25 = v24;
  v41 = v11;
  v42 = &type metadata for DefaultNFCApp;
  v43 = v32;
  v44 = v17;
  v45 = v18;
  v46 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v34;
  v27 = v35;
  sub_7860();
  sub_4484(v21, v23, v25 & 1);

  (*(v33 + 8))(v10, v28);
  v41 = v28;
  v42 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v29 = v38;
  sub_7880();
  return (*(v36 + 8))(v27, v29);
}

uint64_t sub_2904()
{
  sub_7A00();
  sub_79F0();
  sub_79E0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_1FE0(&qword_10338, &qword_83C0);
  sub_4174();
  sub_78D0();
}

uint64_t sub_2A08(uint64_t a1, uint64_t a2)
{
  sub_7A00();
  sub_79F0();
  sub_79E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1FE0(&qword_103A0, &qword_83E8);
  sub_78B0();
  swift_getKeyPath();
  sub_4A84(&qword_103A8, type metadata accessor for PaymentContactlessSettingsController);
  sub_7770();

  v4 = *(v7 + 16);

  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  sub_1FE0(&qword_103B0, &qword_8450);
  sub_1FE0(&qword_10348, &qword_83C8);
  sub_45C4(&qword_103B8, &qword_103B0, &qword_8450);
  sub_44FC();
  sub_41F8();
  sub_78C0();
}

void sub_2C48(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 bundleId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_79A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

id sub_2CB0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_7A70();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1FE0(&qword_103D0, &qword_8460);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v69 - v12;
  v14 = *a1;
  sub_7A00();
  v15 = sub_79F0();
  sub_79E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = sub_1FE0(&qword_10348, &qword_83C8);
  v77 = &v69;
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16 - 8);
  v76 = &v69 - v18;
  v19 = SESDefaultNFCApplication.isPassbook.getter();
  v78 = v15;
  v79 = a4;
  if (v19)
  {
    v72 = v13;
    v74 = sub_1FE0(&qword_10358, &qword_83D0);
    v75 = &v69;
    v20 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v74);
    v73 = &v69 - v21;
    v81 = a2;
    v82 = a3;
    sub_1FE0(&qword_103A0, &qword_83E8);
    sub_78B0();
    v22 = v80;
    swift_getKeyPath();
    v23 = a2;
    v81 = v22;
    sub_4A84(&qword_103A8, type metadata accessor for PaymentContactlessSettingsController);
    sub_7770();

    v24 = *(v22 + 24);

    if (v24 == 1)
    {
      v25 = sub_1FE0(&qword_10378, &qword_83E0);
      v71 = &v69;
      v70 = *(v25 - 8);
      v26 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v25);
      v28 = &v69 - v27;
      sub_7A60();
      v29 = v72;
      sub_7910();
      v30 = sub_7920();
      v31 = (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
      v69 = &v69;
      __chkstk_darwin(v31);
      *(&v69 - 4) = a2;
      *(&v69 - 3) = a3;
      *(&v69 - 2) = v14;
      sub_1FE0(&qword_103D8, &qword_8468);
      sub_45C4(&qword_103E0, &qword_103D8, &qword_8468);
      sub_4A84(&qword_103F0, &type metadata accessor for SettingsPaneRecipe);
      sub_77D0();
      v32 = sub_1FE0(&qword_103F8, &qword_84A0);
      v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v32);
      v34 = v70;
      (*(v70 + 16))(&v69 - v35, v28, v25);
    }

    else
    {
      v81 = a2;
      v82 = a3;
      v44 = a3;
      sub_78B0();
      v45 = v80;
      swift_getKeyPath();
      v81 = v45;
      sub_7770();

      v46 = *(v45 + 24);

      if (v46 != 2)
      {
        v65 = sub_1FE0(&qword_10368, &qword_83D8);
        v56 = v73;
        (*(*(v65 - 8) + 56))(v73, 1, 1, v65);
        goto LABEL_15;
      }

      v47 = v23;
      v25 = sub_1FE0(&qword_10378, &qword_83E0);
      v71 = &v69;
      v70 = *(v25 - 8);
      v48 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v25);
      v28 = &v69 - v49;
      sub_7A60();
      v50 = v72;
      sub_7910();
      v51 = sub_7920();
      v52 = (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
      __chkstk_darwin(v52);
      *(&v69 - 4) = v47;
      *(&v69 - 3) = v44;
      *(&v69 - 2) = v14;
      sub_1FE0(&qword_103D8, &qword_8468);
      sub_45C4(&qword_103E0, &qword_103D8, &qword_8468);
      sub_4A84(&qword_103F0, &type metadata accessor for SettingsPaneRecipe);
      sub_77D0();
      v53 = sub_1FE0(&qword_103F8, &qword_84A0);
      v54 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v53);
      v34 = v70;
      (*(v70 + 16))(&v69 - v55, v28, v25);
    }

    swift_storeEnumTagMultiPayload();
    sub_45C4(&qword_10370, &qword_10378, &qword_83E0);
    v56 = v73;
    sub_7800();
    (*(v34 + 8))(v28, v25);
    v57 = sub_1FE0(&qword_10368, &qword_83D8);
    (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
LABEL_15:
    v64 = v76;
    v66 = sub_1FE0(&qword_103E8, &qword_8470);
    v67 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v66);
    sub_4684(v56, &v69 - v68);
    swift_storeEnumTagMultiPayload();
    sub_1FE0(&qword_10378, &qword_83E0);
    sub_42B0();
    sub_45C4(&qword_10370, &qword_10378, &qword_83E0);
    sub_7800();
    sub_46F4(v56);
    goto LABEL_16;
  }

  v36 = sub_1FE0(&qword_10378, &qword_83E0);
  v75 = &v69;
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v69 - v39;
  v41 = SESDefaultNFCApplication.isPassbook.getter();
  if (v41)
  {
    v42 = 0;
    v43 = 0;
LABEL_13:
    v81 = v42;
    v82 = v43;
    __chkstk_darwin(v41);
    *(&v69 - 4) = a2;
    *(&v69 - 3) = a3;
    *(&v69 - 2) = v14;
    sub_1FE0(&qword_103D8, &qword_8468);
    sub_45C4(&qword_103E0, &qword_103D8, &qword_8468);
    sub_43E4();
    sub_77D0();
    v61 = sub_1FE0(&qword_103E8, &qword_8470);
    v62 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v61);
    (*(v37 + 16))(&v69 - v63, v40, v36);
    swift_storeEnumTagMultiPayload();
    sub_1FE0(&qword_10358, &qword_83D0);
    sub_42B0();
    sub_45C4(&qword_10370, &qword_10378, &qword_83E0);
    v64 = v76;
    sub_7800();
    (*(v37 + 8))(v40, v36);
LABEL_16:
    sub_460C(v64, v79);
  }

  v74 = a2;
  result = [v14 bundleId];
  if (result)
  {
    v59 = result;
    v42 = sub_79A0();
    v43 = v60;

    a2 = v74;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_399C()
{
  sub_7A00();
  sub_79F0();
  sub_79E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_77F0();
  sub_4438();
  if (!sub_7A50())
  {
    v0 = [objc_opt_self() mainBundle];
  }

  v1 = sub_7820();
  v3 = v2;
  v5 = v4 & 1;
  v7 = __chkstk_darwin(v1);
  __chkstk_darwin(v7);
  sub_1FE0(&qword_10400, &qword_84A8);
  sub_1FE0(&qword_10408, &qword_84B0);
  sub_47C0();
  sub_483C();
  sub_7890();
  sub_4484(v1, v3, v5);
}

uint64_t sub_3BFC()
{
  sub_7A00();
  sub_79F0();
  sub_79E0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v1 = __chkstk_darwin(isCurrentExecutor);
  __chkstk_darwin(v1);
  sub_1FE0(&qword_10400, &qword_84A8);
  sub_1FE0(&qword_10408, &qword_84B0);
  sub_47C0();
  sub_483C();
  sub_7890();
}

uint64_t sub_3D64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_7A00();
  sub_79F0();
  sub_79E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_77B0();
}

id sub_3E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  sub_7A00();
  sub_79F0();
  sub_79E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    sub_4894(a1, a2, a3 & 1);

LABEL_7:
    sub_7800();

    *a6 = v14;
    *(a6 + 16) = v15;
    *(a6 + 32) = v16;
    return result;
  }

  result = [a5 localizedDisplayName];
  if (result)
  {
    v13 = result;
    sub_79A0();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_3F88(void *a1)
{
  sub_7A00();
  sub_79F0();
  sub_79E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = [a1 bundleId];
  if (result)
  {
    v3 = result;
    [objc_allocWithZone(ISIcon) initWithBundleIdentifier:result];

    v4 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorTableUIName];
    sub_77A0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_40DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2904();
}

unint64_t sub_40E4()
{
  result = qword_10328;
  if (!qword_10328)
  {
    sub_20E0(&qword_10320, &qword_83B8);
    sub_4174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10328);
  }

  return result;
}

unint64_t sub_4174()
{
  result = qword_10330;
  if (!qword_10330)
  {
    sub_20E0(&qword_10338, &qword_83C0);
    sub_41F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10330);
  }

  return result;
}

unint64_t sub_41F8()
{
  result = qword_10340;
  if (!qword_10340)
  {
    sub_20E0(&qword_10348, &qword_83C8);
    sub_42B0();
    sub_45C4(&qword_10370, &qword_10378, &qword_83E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10340);
  }

  return result;
}

unint64_t sub_42B0()
{
  result = qword_10350;
  if (!qword_10350)
  {
    sub_20E0(&qword_10358, &qword_83D0);
    sub_4334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10350);
  }

  return result;
}

unint64_t sub_4334()
{
  result = qword_10360;
  if (!qword_10360)
  {
    sub_20E0(&qword_10368, &qword_83D8);
    sub_45C4(&qword_10370, &qword_10378, &qword_83E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10360);
  }

  return result;
}

unint64_t sub_43E4()
{
  result = qword_10388;
  if (!qword_10388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10388);
  }

  return result;
}

unint64_t sub_4438()
{
  result = qword_10398;
  if (!qword_10398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10398);
  }

  return result;
}

uint64_t sub_4484(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_44B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_44FC()
{
  result = qword_103C0;
  if (!qword_103C0)
  {
    sub_20E0(&qword_103C8, &qword_8458);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_103C0);
  }

  return result;
}

uint64_t sub_4578()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_3BFC();
}

uint64_t sub_45C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_20E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_460C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1FE0(&qword_10348, &qword_83C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_4684(uint64_t a1, uint64_t a2)
{
  v4 = sub_1FE0(&qword_10358, &qword_83D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_46F4(uint64_t a1)
{
  v2 = sub_1FE0(&qword_10358, &qword_83D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_475C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_399C();
}

uint64_t sub_4768()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_3BFC();
}

unint64_t sub_47C0()
{
  result = qword_10410;
  if (!qword_10410)
  {
    sub_20E0(&qword_10400, &qword_84A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10410);
  }

  return result;
}

unint64_t sub_483C()
{
  result = qword_10418;
  if (!qword_10418)
  {
    sub_20E0(&qword_10408, &qword_84B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10418);
  }

  return result;
}

uint64_t sub_4894(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_48B8()
{
  result = qword_10420;
  if (!qword_10420)
  {
    sub_20E0(&qword_10428, qword_84B8);
    sub_20E0(&qword_10310, &qword_83A8);
    sub_20E0(&qword_10318, &qword_83B0);
    sub_77C0();
    sub_45C4(&qword_10380, &qword_10318, &qword_83B0);
    sub_43E4();
    sub_4A84(&qword_10390, &type metadata accessor for ApplicationSettingsView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_4A84(&qword_10430, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10420);
  }

  return result;
}

uint64_t sub_4A84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SESDefaultNFCApplication.isPassbook.getter()
{
  v1 = [v0 bundleId];
  if (v1)
  {
    v2 = v1;
    v3 = sub_79A0();
    v5 = v4;

    if (v3 == 0xD000000000000012 && 0x8000000000007F80 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_7B20();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id SESDefaultNFCApplication.id.getter()
{
  result = [v0 bundleId];
  if (result)
  {
    v2 = result;
    v3 = sub_79A0();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_4BF0(uint64_t *a1@<X8>)
{
  v3 = [*v1 bundleId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_79A0();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4C50()
{
  swift_getKeyPath();
  sub_67EC(&qword_103A8, type metadata accessor for PaymentContactlessSettingsController);
  sub_7770();

  v1 = *(v0 + 16);
}

uint64_t sub_4CF4()
{
  swift_getKeyPath();
  sub_67EC(&qword_103A8, type metadata accessor for PaymentContactlessSettingsController);
  sub_7770();

  return *(v0 + 24);
}

Swift::Int sub_4DA8()
{
  v1 = *v0;
  sub_7B30();
  sub_7B40(v1);
  return sub_7B50();
}

Swift::Int sub_4E1C()
{
  v1 = *v0;
  sub_7B30();
  sub_7B40(v1);
  return sub_7B50();
}

uint64_t sub_4E60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_67EC(&qword_103A8, type metadata accessor for PaymentContactlessSettingsController);
  sub_7770();

  *a2 = *(v3 + 16);
}

uint64_t sub_4F0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_4F38(v4);
}

uint64_t sub_4F38(uint64_t a1)
{
  v3 = *(v1 + 16);

  v5 = sub_6C2C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_67EC(&qword_103A8, type metadata accessor for PaymentContactlessSettingsController);
    sub_7760();
  }
}

uint64_t sub_508C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_67EC(&qword_103A8, type metadata accessor for PaymentContactlessSettingsController);
  sub_7770();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_515C(uint64_t result)
{
  if (*(v1 + 24) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_67EC(&qword_103A8, type metadata accessor for PaymentContactlessSettingsController);
    sub_7760();
  }

  return result;
}

uint64_t sub_5264()
{
  *(v0 + 16) = &_swiftEmptyArrayStorage;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_7780();
  v1 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_60E0;
  v7[5] = v1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_7548;
  v7[3] = &unk_C998;
  v2 = _Block_copy(v7);
  v3 = objc_opt_self();

  v4 = [v3 contextWithBundleId:0 onChange:v2];
  _Block_release(v2);

  v5 = *(v0 + 32);
  *(v0 + 32) = v4;

  sub_5678();
  sub_5B18();
  return v0;
}

uint64_t sub_53AC(uint64_t a1)
{
  v2 = (*(*(sub_1FE0(&qword_10540, &qword_86B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v9 - v3;
  sub_7A00();
  sub_79F0();
  sub_79E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_7A20();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

  v6 = sub_79F0();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_5840(0, 0, v4, &unk_86C8, v7);
}

uint64_t sub_5540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_7A00();
  v4[7] = sub_79F0();
  v6 = sub_79E0();

  return _swift_task_switch(sub_55D8, v6, v5);
}

uint64_t sub_55D8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_5678();
  }

  **(v0 + 40) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_5678()
{
  v1 = *(v0 + 32);
  v2 = &_swiftEmptyArrayStorage;
  if (!v1)
  {
LABEL_17:

    return sub_4F38(v2);
  }

  v3 = [v1 defaultAppCandidates];
  sub_6834(0, &qword_10538, SESDefaultNFCApplication_ptr);
  v4 = sub_79D0();

  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
LABEL_16:

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v2;
    sub_7AE0();
    if (v5 < 0)
    {
      break;
    }

    v6 = 0;
    v2 = 0;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_7AB0();
      }

      else
      {
        if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v12 = v8;
      sub_687C(&v12, &v13);

      sub_7AC0();
      v10 = v14[2];
      sub_7AF0();
      sub_7B00();
      sub_7AD0();
      ++v6;
      if (v7 == v5)
      {

        v2 = v14;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v5 = sub_7B10();
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_5840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1FE0(&qword_10540, &qword_86B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_70D0(a3, v26 - v10);
  v12 = sub_7A20();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_7140(v11);
  }

  else
  {
    sub_7A10();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_79E0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_79B0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_1FE0(&qword_10548, &qword_86E0);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_7140(a3);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_7140(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_1FE0(&qword_10548, &qword_86E0);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_5B18()
{
  if ([objc_opt_self() isPassLibraryAvailable])
  {
    v1 = [objc_allocWithZone(PKPassLibrary) init];
    v2 = [v1 passesOfType:1];

    sub_6834(0, &qword_10510, PKPass_ptr);
    v3 = sub_79D0();

    if (v3 >> 62)
    {
      v4 = sub_7B10();
    }

    else
    {
      v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    }

    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  v7 = [objc_opt_self() sharedService];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v5;
  v10[4] = sub_6444;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_6678;
  v10[3] = &unk_C9E8;
  v9 = _Block_copy(v10);

  [v6 shouldShowWalletInSettingsWithApplePaySupportInformation:v7 completion:v9];
  _Block_release(v9);
}

uint64_t sub_5D04()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 32);
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 32) = 0;

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC34PaymentContactlessSettingsUIPlugin36PaymentContactlessSettingsController___observationRegistrar;
  v5 = sub_7790();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for PaymentContactlessSettingsController()
{
  result = qword_10468;
  if (!qword_10468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5E2C()
{
  result = sub_7790();
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

uint64_t getEnumTagSinglePayload for PaymentContactlessSettingsController.WalletVisibilityStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PaymentContactlessSettingsController.WalletVisibilityStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_6054()
{
  result = qword_10508;
  if (!qword_10508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10508);
  }

  return result;
}

uint64_t sub_60A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_60E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6100(char a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a2;
  v23 = a5;
  v6 = sub_78E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_7900();
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6834(0, &qword_10518, OS_dispatch_queue_ptr);
  v15 = sub_7A30();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v18 = v22;
  *(v17 + 17) = v23;
  *(v17 + 18) = v18;
  *(v17 + 24) = v16;
  aBlock[4] = sub_6738;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_7548;
  aBlock[3] = &unk_CA38;
  v19 = _Block_copy(aBlock);

  sub_78F0();
  v25 = &_swiftEmptyArrayStorage;
  sub_67EC(&qword_10520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1FE0(&qword_10528, &qword_8660);
  sub_674C();
  sub_7AA0();
  sub_7A40();
  _Block_release(v19);

  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v24);
}

uint64_t sub_640C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_6450(unsigned __int8 a1, unsigned __int8 a2, char a3)
{
  sub_7A00();
  sub_79F0();
  sub_79E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if ((a1 | a2))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  if (*(Strong + 24) != v7)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_67EC(&qword_103A8, type metadata accessor for PaymentContactlessSettingsController);
    sub_7760();
  }
}

uint64_t sub_6634(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_6678(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_6700()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_674C()
{
  result = qword_10530;
  if (!qword_10530)
  {
    sub_20E0(&qword_10528, &qword_8660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10530);
  }

  return result;
}

uint64_t sub_67EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6834(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_687C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_7A00();
  sub_79F0();
  sub_79E0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = [v4 bundleId];
  if (v5)
  {
    v6 = v5;
    v7 = sub_79A0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  result = [v4 bundleId];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  v12 = sub_79A0();
  v14 = v13;

  v15 = objc_allocWithZone(LSApplicationRecord);
  v16 = sub_6B50(v12, v14, 1);
  if (!v2)
  {
    v19 = v16;
    v18 = [v16 localizedName];

    goto LABEL_11;
  }

  v17 = [v4 localizedDisplayName];
  if (v17)
  {
    v18 = v17;
LABEL_11:
    v20 = sub_79A0();
    v22 = v21;

    goto LABEL_13;
  }

  v20 = 0;
  v22 = 0;
LABEL_13:
  sub_6834(0, &qword_10538, SESDefaultNFCApplication_ptr);
  result = sub_6A98(v7, v9, v20, v22, [v4 domain]);
  if (result)
  {
    v23 = result;

    *a2 = v23;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_6A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_7990();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_7990();

LABEL_6:
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBundleId:v7 displayName:v8 rawDomain:a5];

  return v9;
}

id sub_6B50(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_7990();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_7740();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_6C2C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_6834(0, &qword_10538, SESDefaultNFCApplication_ptr);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_7AB0();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_7AB0();
LABEL_26:
        v17 = v16;
        v18 = sub_7A80();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_7A80();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_7B10();
  }

  result = sub_7B10();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_6E80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_4F38(v4);
}

uint64_t sub_6EAC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_6EE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6F28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_6FDC;

  return sub_5540(a1, v4, v5, v6);
}

uint64_t sub_6FDC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_70D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1FE0(&qword_10540, &qword_86B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7140(uint64_t a1)
{
  v2 = sub_1FE0(&qword_10540, &qword_86B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_71A8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_729C;

  return v6(v2 + 32);
}

uint64_t sub_729C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_73B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_754C;

  return sub_71A8(a1, v5);
}

uint64_t sub_7468(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_6FDC;

  return sub_71A8(a1, v5);
}

uint64_t sub_7558(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_75A0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

Swift::Int sub_75EC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_7B30();
  sub_79C0();
  return sub_7B50();
}

uint64_t sub_7638()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_79C0();
}

Swift::Int sub_7640()
{
  v1 = *v0;
  v2 = v0[1];
  sub_7B30();
  sub_79C0();
  return sub_7B50();
}

uint64_t sub_7688(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_7B20();
  }
}

unint64_t sub_76BC()
{
  result = qword_10550;
  if (!qword_10550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10550);
  }

  return result;
}