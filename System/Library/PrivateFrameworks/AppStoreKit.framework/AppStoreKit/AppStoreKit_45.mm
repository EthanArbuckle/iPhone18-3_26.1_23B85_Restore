uint64_t TrailersLockup.init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:trailers:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v30 = v29;
  v78 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v72 = a4;
  v70 = a3;
  v68 = a2;
  v83 = a27;
  v86 = a25;
  v87 = a26;
  v85 = a24;
  v84 = a23;
  v82 = a22;
  v80 = a21;
  v65 = a20;
  v64 = a19;
  v81 = a18;
  v74 = a17;
  v73 = a16;
  v71 = a15;
  v69 = a14;
  v79 = a13;
  v67 = a12;
  v66 = a11;
  v63 = a10;
  v62 = a9;
  v32 = sub_1E1AEFEAC();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v59 - v37;
  v39 = a1[1];
  v61 = *a1;
  v60 = v39;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit14TrailersLockup_trailers) = a29;
  v97 = 0;
  memset(v96, 0, sizeof(v96));
  sub_1E134FD1C(a28, v38, &unk_1ECEB1770);
  *(v30 + 424) = 4;
  sub_1E134FD1C(v96, &v90, &unk_1ECEB5670);
  if (*(&v91 + 1))
  {
    v93 = v90;
    v94 = v91;
    v95 = v92;
  }

  else
  {

    sub_1E1AEFE9C();
    v40 = sub_1E1AEFE7C();
    v42 = v41;
    (*(v33 + 8))(v35, v32);
    v88 = v40;
    v89 = v42;
    sub_1E1AF6F6C();
    sub_1E1308058(&v90, &unk_1ECEB5670);
  }

  v43 = v94;
  *(v30 + 448) = v93;
  *(v30 + 464) = v43;
  *(v30 + 480) = v95;
  sub_1E134FD1C(v38, v30 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);
  v44 = v60;
  *(v30 + 16) = v61;
  *(v30 + 24) = v44;
  v45 = v70;
  *(v30 + 32) = v68;
  *(v30 + 40) = v45;
  *(v30 + 48) = v72;
  *(v30 + 56) = 0;
  v46 = v65;
  *(v30 + 64) = v64;
  *(v30 + 72) = v46;
  v47 = v76;
  *(v30 + 80) = v75;
  *(v30 + 88) = v47;
  v48 = v78;
  *(v30 + 96) = v77;
  *(v30 + 104) = v48;
  v49 = v63;
  *(v30 + 112) = v62;
  *(v30 + 120) = v49;
  *(v30 + 128) = 0;
  *(v30 + 136) = 2;
  v50 = v67;
  *(v30 + 144) = v66;
  *(v30 + 152) = v50;
  v51 = v71;
  *(v30 + 192) = v69;
  *(v30 + 200) = v51;
  v52 = v74;
  *(v30 + 208) = v73;
  *(v30 + 216) = v52;
  *(v30 + 376) = 0u;
  *(v30 + 392) = 0u;
  *(v30 + 408) = 0x8000;
  *(v30 + 360) = v83;
  *(v30 + 416) = 0;
  *(v30 + 432) = MEMORY[0x1E69E7CD0];
  v53 = v82;
  *(v30 + 160) = v80;
  *(v30 + 168) = v53;
  v54 = v79;
  *(v30 + 176) = v84;
  *(v30 + 184) = v54;
  v56 = v85;
  v55 = v86;
  *(v30 + 224) = v81;
  *(v30 + 232) = v56;
  *(v30 + 240) = v55;
  *(v30 + 248) = 0;
  v57 = v87;
  *(v30 + 256) = 0;
  *(v30 + 264) = v57;
  *(v30 + 272) = 0u;
  *(v30 + 288) = 0u;
  *(v30 + 304) = 0u;
  *(v30 + 320) = 0u;
  *(v30 + 336) = 0;

  sub_1E1308058(a28, &unk_1ECEB1770);
  sub_1E1308058(v38, &unk_1ECEB1770);
  sub_1E1308058(v96, &unk_1ECEB5670);
  *(v30 + 344) = MEMORY[0x1E69E7CC0];
  *(v30 + 352) = 0;
  *(v30 + 440) = 0;
  *(v30 + 368) = 0;
  return v30;
}

uint64_t TrailersLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t TrailersLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t ShelfBasedPage.shelves.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  v5 = v4;
  v6 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v4 + 32;
    v14 = v4 + 32;
    do
    {
      v10 = v8;
      v11 = v9 + 40 * v8;
      while (1)
      {
        if (v10 >= *(v5 + 16))
        {
          __break(1u);

          sub_1E134B88C(v16);

          __break(1u);
          return result;
        }

        sub_1E134E724(v11, v16);
        sub_1E175F2E8(v16, a1, a2, &v15);
        v12 = sub_1E134B88C(v16);
        if (v15)
        {
          break;
        }

        ++v10;
        v11 += 40;
        if (v7 == v10)
        {
          goto LABEL_11;
        }
      }

      MEMORY[0x1E68FEF20](v12);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v8 = v10 + 1;
      sub_1E1AF62AC();
      v6 = v17;
      v9 = v14;
    }

    while (v7 - 1 != v10);
  }

LABEL_11:

  return v6;
}

unint64_t sub_1E175EB34(uint64_t a1, uint64_t a2)
{
  v8 = MEMORY[0x1E69E7CD0];
  result = ShelfBasedPage.shelves.getter(a1, a2);
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x1E69E7CD0];
  }

  result = sub_1E1AF71CC();
  v4 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E68FFD80](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      sub_1E1894228(&v7, *(v6 + 16));
    }

    return v8;
  }

  return result;
}

uint64_t sub_1E175EC2C(unint64_t a1)
{
  v2 = sub_1E159D6F0(MEMORY[0x1E69E7CC0]);
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E68FFD80](v4, a1);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_26;
      }

LABEL_10:
      v8 = OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
      sub_1E134E724(v6 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, v28);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = sub_1E135FCF4(v28);
      v12 = v2[2];
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_27;
      }

      v16 = v11;
      if (v2[3] < v15)
      {
        sub_1E16889E4(v15, isUniquelyReferenced_nonNull_native);
        v10 = sub_1E135FCF4(v28);
        if ((v16 & 1) != (v17 & 1))
        {
          result = sub_1E1AF757C();
          __break(1u);
          return result;
        }

LABEL_15:
        if (v16)
        {
          goto LABEL_16;
        }

        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v18 = v10;
      sub_1E1415C9C();
      v10 = v18;
      if (v16)
      {
LABEL_16:
        *(v2[7] + 8 * v10) = v6;

        sub_1E134B88C(v28);
        goto LABEL_20;
      }

LABEL_18:
      v2[(v10 >> 6) + 8] |= 1 << v10;
      v19 = v10;
      sub_1E134E724(v28, v2[6] + 40 * v10);
      *(v2[7] + 8 * v19) = v6;
      sub_1E134B88C(v28);
      v20 = v2[2];
      v14 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v14)
      {
        goto LABEL_28;
      }

      v2[2] = v21;
LABEL_20:
      sub_1E134E724(v6 + v8, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1E172DE90(0, *(v5 + 2) + 1, 1, v5);
      }

      v23 = *(v5 + 2);
      v22 = *(v5 + 3);
      if (v23 >= v22 >> 1)
      {
        v5 = sub_1E172DE90((v22 > 1), v23 + 1, 1, v5);
      }

      *(v5 + 2) = v23 + 1;
      v24 = &v5[40 * v23];
      v25 = v28[0];
      v26 = v28[1];
      *(v24 + 8) = v29;
      *(v24 + 2) = v25;
      *(v24 + 3) = v26;
      ++v4;
      if (v7 == i)
      {
        return v5;
      }
    }

    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

    v6 = *(a1 + 8 * v4 + 32);

    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E175EF08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a5 + 8))(a4, a5);
  v10 = (*(a5 + 16))(a4, a5);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v9;
  }

  v12 = a1 + 32;
  v43 = a2;
  while (1)
  {
    sub_1E134E724(v12, v47);
    if (*(a2 + 16))
    {
      v13 = sub_1E135FCF4(v47);
      if (v14)
      {
        break;
      }
    }

    sub_1E134B88C(v47);
LABEL_4:
    v12 += 40;
    if (!--v11)
    {
      return v9;
    }
  }

  v15 = *(*(a2 + 56) + 8 * v13);
  if (a3)
  {
    v16 = v10[2];

    if (v16)
    {
      v17 = sub_1E135FCF4(v47);
      if ((v18 & 1) != 0 && v15[OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched] == 1)
      {
        v19 = v9;
        v20 = *(v10[7] + 8 * v17);

        v35 = Shelf.mergingWith(_:)(v15);
        sub_1E134E724(v47, v45);
        v36 = v35;
        if (!v35)
        {

          v36 = v20;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1E1598874(v36, v45, isUniquelyReferenced_nonNull_native);
        sub_1E134B88C(v45);

        goto LABEL_24;
      }
    }
  }

  else
  {
  }

  sub_1E134E724(v47, v45);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1E172DE90(0, *(v9 + 2) + 1, 1, v9);
  }

  v22 = *(v9 + 2);
  v21 = *(v9 + 3);
  if (v22 >= v21 >> 1)
  {
    v9 = sub_1E172DE90((v21 > 1), v22 + 1, 1, v9);
  }

  *(v9 + 2) = v22 + 1;
  v19 = v9;
  v23 = &v9[40 * v22];
  v24 = v45[0];
  v25 = v45[1];
  *(v23 + 8) = v46;
  *(v23 + 2) = v24;
  *(v23 + 3) = v25;
  sub_1E134E724(v47, v45);

  v26 = swift_isUniquelyReferenced_nonNull_native();
  v27 = sub_1E135FCF4(v45);
  v29 = v10[2];
  v30 = (v28 & 1) == 0;
  v31 = __OFADD__(v29, v30);
  v32 = v29 + v30;
  if (!v31)
  {
    v33 = v28;
    if (v10[3] >= v32)
    {
      if ((v26 & 1) == 0)
      {
        v38 = v27;
        sub_1E1415C9C();
        v27 = v38;
        if (v33)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      }
    }

    else
    {
      sub_1E16889E4(v32, v26);
      v27 = sub_1E135FCF4(v45);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_35;
      }
    }

    if (v33)
    {
LABEL_23:
      *(v10[7] + 8 * v27) = v15;

      sub_1E134B88C(v45);
LABEL_24:
      sub_1E134B88C(v47);
LABEL_31:
      v9 = v19;
      a2 = v43;
      goto LABEL_4;
    }

LABEL_29:
    v10[(v27 >> 6) + 8] |= 1 << v27;
    v39 = v27;
    sub_1E134E724(v45, v10[6] + 40 * v27);
    *(v10[7] + 8 * v39) = v15;

    sub_1E134B88C(v45);
    sub_1E134B88C(v47);
    v40 = v10[2];
    v31 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v31)
    {
      goto LABEL_34;
    }

    v10[2] = v41;
    goto LABEL_31;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E175F2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = (*(a3 + 16))(a2, a3);
  if (*(v6 + 16) && (v7 = sub_1E135FCF4(a1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for ContentModeViewModifier(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t sub_1E175F494(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8CB0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8CB8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8CC0);
  MEMORY[0x1EEE9AC00](v9);
  v23 = &v22 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8CC8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (v3 == 2)
  {
    goto LABEL_3;
  }

  v16 = sub_1E1AF20AC();
  if ((v16 & 1) == 0)
  {
    if (sub_1E1AF20AC())
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8CD0);
      (*(*(v19 - 8) + 16))(v13, a1, v19);
      v20 = &v13[*(v11 + 36)];
      *v20 = 0;
      *(v20 + 4) = 257;
      sub_1E134FD1C(v13, v8, &qword_1ECEB8CC8);
      goto LABEL_8;
    }

LABEL_3:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8CD0);
    (*(*(v14 - 8) + 16))(v6, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_1E175F8B8();
    sub_1E175F9C8();
    return sub_1E1AF259C();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8CD0);
  (*(*(v17 - 8) + 16))(v13, a1, v17);
  v18 = &v13[*(v11 + 36)];
  *v18 = 0;
  *(v18 + 4) = 1;
  sub_1E134FD1C(v13, v8, &qword_1ECEB8CC8);
LABEL_8:
  swift_storeEnumTagMultiPayload();
  sub_1E175F93C();
  v21 = v23;
  sub_1E1AF259C();
  sub_1E134FD1C(v21, v6, &qword_1ECEB8CC0);
  swift_storeEnumTagMultiPayload();
  sub_1E175F8B8();
  sub_1E175F9C8();
  sub_1E1AF259C();
  sub_1E1308058(v21, &qword_1ECEB8CC0);
  return sub_1E1308058(v13, &qword_1ECEB8CC8);
}

unint64_t sub_1E175F8B8()
{
  result = qword_1ECEB8CD8;
  if (!qword_1ECEB8CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8CC0);
    sub_1E175F93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8CD8);
  }

  return result;
}

unint64_t sub_1E175F93C()
{
  result = qword_1ECEB8CE0;
  if (!qword_1ECEB8CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8CC8);
    sub_1E175F9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8CE0);
  }

  return result;
}

unint64_t sub_1E175F9C8()
{
  result = qword_1ECEB8CE8;
  if (!qword_1ECEB8CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8CE8);
  }

  return result;
}

unint64_t sub_1E175FA2C()
{
  result = qword_1ECEB8CF0;
  if (!qword_1ECEB8CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8CF8);
    sub_1E175F8B8();
    sub_1E175F9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8CF0);
  }

  return result;
}

uint64_t AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E1300B24(a1, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1E1308058(&v39, &qword_1ECEB8C78);
    return (*(a4 + 40))(0, a3, a4);
  }

  sub_1E1308EC0(&v39, v42);
  sub_1E1300B24(a1, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8D00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    sub_1E1308058(v37, &qword_1ECEB8D08);
    goto LABEL_12;
  }

  v32 = a2;
  sub_1E1308EC0(v37, &v39);
  v8 = *(&v40 + 1);
  v9 = v41;
  __swift_project_boxed_opaque_existential_1Tm(&v39, *(&v40 + 1));
  v10 = (*(v9 + 8))(v8, v9);
  if (!*(v10 + 16) || (sub_1E1AF762C(), sub_1E1AF5F0C(), v11 = sub_1E1AF767C(), v12 = -1 << *(v10 + 32), v13 = v11 & ~v12, ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0))
  {
LABEL_9:

    __swift_destroy_boxed_opaque_existential_1(&v39);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v42);
    return (*(a4 + 40))(0, a3, a4);
  }

  v14 = ~v12;
  while (*(*(v10 + 48) + v13) != 1)
  {
    v15 = sub_1E1AF74AC();

    if (v15)
    {
      goto LABEL_16;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_16:
  v17 = v32;

  v18 = (*(a4 + 32))(a3, a4);
  if (v18)
  {
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v20 = (*(a4 + 56))(a3, a4);
    (*(a4 + 64))(&v34, a3, a4);
    v37[0] = v34;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v22 = (*(AssociatedConformanceWitness + 8))(v20, v37, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(a4 + 40))(v22, a3, a4);
  }

  type metadata accessor for GameCenter();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v23 = v34;
  v33 = v34;
  v24 = v43;
  v25 = v44;
  __swift_project_boxed_opaque_existential_1Tm(v42, v43);
  (*(v25 + 8))(v37, v24, v25);
  v26 = v37[0];
  v27 = sub_1E1361A80();
  v28 = sub_1E1AF68EC();
  v35 = v27;
  v36 = MEMORY[0x1E69AB720];
  *&v34 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49F0);
  sub_1E1AF588C();
  sub_1E1760AE4(v26, *(&v26 + 1), v28, *(v23 + OBJC_IVAR____TtC11AppStoreKit10GameCenter_cache));
  swift_retain_n();
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(&v34);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v30[2] = a3;
  v30[3] = a4;
  v30[4] = v17;
  v30[5] = v29;

  v31 = sub_1E1AF68EC();
  v35 = v27;
  v36 = MEMORY[0x1E69AB720];
  *&v34 = v31;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(&v34);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_1E1760094(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  type metadata accessor for ArtworkLoader();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v24 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_23:
    v6 = sub_1E1AF71CC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1E68FFD80](v7, v5);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v9 = *(v5 + 8 * v7 + 32);

      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    swift_beginAccess();
    v11 = *(v9 + 72);

    ++v7;
    if (v11)
    {
      MEMORY[0x1E68FEF20](v12);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();
      v8 = v24;
      v7 = v10;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = (*(a5 + 32))(a4);

    if (v15)
    {
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v17 = *(AssociatedConformanceWitness + 16);
      v18 = swift_checkMetadataState();
      v17(v8, v25, v18, AssociatedConformanceWitness);
    }
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    (*(*(a5 + 8) + 24))(a4);
  }
}

uint64_t sub_1E176036C()
{
  if (qword_1EE1D27B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1EE215450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v4[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0);
  sub_1E1AF38DC();
  sub_1E1308058(v4, &qword_1ECEB2DF0);
  sub_1E1AF54AC();
}

Swift::Void __swiftcall AvatarShowcaseDisplaying.unapply()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 32))();
  if (v4)
  {
    v5 = v4;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = *(AssociatedConformanceWitness + 24);
    v8 = swift_checkMetadataState();
    v7(v8, AssociatedConformanceWitness);
  }

  v9 = *(v2 + 40);

  v9(0, v3, v2);
}

Swift::Void __swiftcall AvatarShowcaseDisplaying.placeAvatarShowcase()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = *(v1 + 32);
  v7 = v6();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  [v7 measurementsWithFitting:v3 in:{1.79769313e308, 1.79769313e308}];
  v10 = v9;
  v12 = v11;

  (*(v4 + 80))(v5, v4);
  (*(v4 + 72))(v5, v4);
  sub_1E1AF6B0C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = (*(v4 + 96))(v5, v4);
  v22 = [v3 traitCollection];
  v23 = sub_1E1AF697C();

  if (v23)
  {
    if (v21 <= 3)
    {
      if (v21 != 1)
      {
        if (v21 != 2)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }

      goto LABEL_10;
    }

    if (v21 != 4)
    {
      if (v21 != 8)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v21 > 3)
  {
    if (v21 == 4)
    {
LABEL_21:
      v34.origin.x = v14;
      v34.origin.y = v16;
      v34.size.width = v18;
      v34.size.height = v20;
      MinX = CGRectGetMinX(v34);
      goto LABEL_22;
    }

    if (v21 == 8)
    {
LABEL_16:
      v31.origin.x = v14;
      v31.origin.y = v16;
      v31.size.width = v18;
      v31.size.height = v20;
      MinX = CGRectGetMaxX(v31) - v10;
LABEL_22:
      v35.origin.x = v14;
      v35.origin.y = v16;
      v35.size.width = v18;
      v35.size.height = v20;
      MinY = CGRectGetMaxY(v35) - v12;
      goto LABEL_23;
    }
  }

  else
  {
    if (v21 == 1)
    {
LABEL_19:
      v32.origin.x = v14;
      v32.origin.y = v16;
      v32.size.width = v18;
      v32.size.height = v20;
      MinX = CGRectGetMinX(v32);
      goto LABEL_20;
    }

    if (v21 == 2)
    {
LABEL_10:
      v30.origin.x = v14;
      v30.origin.y = v16;
      v30.size.width = v18;
      v30.size.height = v20;
      MinX = CGRectGetMaxX(v30) - v10;
LABEL_20:
      v33.origin.x = v14;
      v33.origin.y = v16;
      v33.size.width = v18;
      v33.size.height = v20;
      MinY = CGRectGetMinY(v33);
LABEL_23:
      v27 = (v6)(v5, v4);
      if (!v27)
      {
        return;
      }

      v28 = v27;
      [v27 setFrame_];
      goto LABEL_25;
    }
  }

LABEL_17:
  v25 = (v6)(v5, v4);
  if (!v25)
  {
    return;
  }

  v28 = v25;
  [v25 setHidden_];
LABEL_25:
}

uint64_t sub_1E1760930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v15[3] = sub_1E1AF490C();
  v15[4] = MEMORY[0x1E69AB298];
  v15[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49F0);

  v9 = sub_1E1AF588C();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = v9;
  v11[6] = v8;
  sub_1E1300B24(v15, v14);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = sub_1E1760DE4;
  v12[4] = v11;
  sub_1E1308EC0(v14, (v12 + 5));
  v12[10] = v8;

  sub_1E1AA28CC(a3, sub_1E1760DE8, v12);

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v9;
}

uint64_t sub_1E1760AE4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = *a4;
  v16[3] = sub_1E1361A80();
  v16[4] = MEMORY[0x1E69AB720];
  v16[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49F0);
  v9 = a3;
  v10 = sub_1E1AF588C();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = v10;
  v12[6] = v8;
  sub_1E1300B24(v16, v15);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = sub_1E1760EA0;
  v13[4] = v12;
  sub_1E1308EC0(v15, (v13 + 5));
  v13[10] = v8;

  sub_1E1AA2CA8(v9, sub_1E1760EA4, v13);

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v10;
}

uint64_t objectdestroy_12Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_15Tm_0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocObject();
}

AppStoreKit::BadgeLeadingValue_optional __swiftcall BadgeLeadingValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BadgeLeadingValue.rawValue.getter()
{
  v1 = 2003134838;
  if (*v0 != 1)
  {
    v1 = 1954047348;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265666E69;
  }
}

uint64_t sub_1E1760F4C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 2003134838;
  if (v2 != 1)
  {
    v3 = 1954047348;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7265666E69;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 2003134838;
  if (*a2 != 1)
  {
    v6 = 1954047348;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7265666E69;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1AF74AC();
  }

  return v9 & 1;
}

void sub_1E1761038(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 2003134838;
  if (v2 != 1)
  {
    v4 = 1954047348;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7265666E69;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1E1761084()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1761114()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1761190()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

AppStoreKit::BadgeStyle_optional __swiftcall BadgeStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t BadgeStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x697461746F6E6E61;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_1E17612C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x697461746F6E6E61;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v5 = 0x697461746F6E6E61;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006E6FLL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E176136C@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1E17613CC(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x697461746F6E6E61;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1E1761410()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1761498()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E176150C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

AppStoreKit::BadgeType_optional __swiftcall BadgeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BadgeType.rawValue.getter()
{
  result = 0x676E69746172;
  switch(*v0)
  {
    case 1:
      result = 0x52746E65746E6F63;
      break;
    case 2:
      result = 0x736F507472616863;
      break;
    case 3:
      result = 0x4373726F74696465;
      break;
    case 4:
      result = 0x6B726F77747261;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x69746F4D68676968;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xB:
      result = 0x7061726761726170;
      break;
    case 0xC:
      result = 0x5073646E65697266;
      break;
    case 0xD:
      result = 0x6D6F74737563;
      break;
    case 0xE:
      result = 0x726564726F657270;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E1761804@<X0>(unint64_t *a1@<X8>)
{
  result = BadgeType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

AppStoreKit::BadgeKey_optional __swiftcall BadgeKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF750C();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BadgeKey.rawValue.getter()
{
  result = 0x79726F6765746163;
  switch(*v0)
  {
    case 1:
      result = 0x736F507472616863;
      break;
    case 2:
      result = 0x52746E65746E6F63;
      break;
    case 3:
      result = 0x6C6C6F72746E6F63;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x65706F6C65766564;
      break;
    case 7:
      result = 0x4373726F74696465;
      break;
    case 8:
      result = 0x5073646E65697266;
      break;
    case 9:
      result = 0x69746F4D68676968;
      break;
    case 0xA:
      result = 0x65676175676E616CLL;
      break;
    case 0xB:
      result = 0x616C7069746C756DLL;
      break;
    case 0xC:
      result = 0x726564726F657270;
      break;
    case 0xD:
      result = 0x676E69746172;
      break;
    case 0xE:
      result = 0xD00000000000001ELL;
      break;
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0x10:
      result = 1702521203;
      break;
    case 0x11:
      result = 0xD000000000000011;
      break;
    case 0x12:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E1761B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

unint64_t sub_1E1761BE4@<X0>(unint64_t *a1@<X8>)
{
  result = BadgeKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E1761C24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1E1AF762C();
  a3(v4);
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E1761CAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  sub_1E1AF5F0C();
}

uint64_t sub_1E1761D2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1E1AF762C();
  a4(v5);
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t Badge.caption.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Badge.heading.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Badge.longCaption.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t Badge.accessibilityTitle.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t Badge.accessibilityCaption.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_1E1762054(uint64_t a1, uint64_t *a2)
{
  sub_1E134FD1C(a1, v5, &qword_1ECEB2DF0);
  v3 = *a2;
  swift_beginAccess();
  sub_1E137F818(v5, v3 + 152);
  return swift_endAccess();
}

uint64_t sub_1E1762118(uint64_t a1)
{
  swift_beginAccess();
  sub_1E137F818(a1, v1 + 152);
  return swift_endAccess();
}

uint64_t Badge.__allocating_init(id:type:key:heading:caption:longCaption:content:leadingValue:style:accessibilityTitle:accessibilityCaption:clickAction:artwork:trailingArtwork:isMonochrome:impressionMetrics:)(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21)
{
  v65 = a20;
  v63 = a19;
  v64 = a8;
  v61 = a18;
  v62 = a7;
  v59 = a17;
  v60 = a6;
  v57 = a16;
  v58 = a5;
  v55 = a15;
  v56 = a4;
  v54 = a14;
  v52 = a21;
  v53 = a13;
  v50 = a10;
  v51 = a9;
  v24 = sub_1E1AEFEAC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_allocObject();
  v29 = *a2;
  v30 = *a3;
  v31 = *a11;
  v32 = *a12;
  *(v28 + 152) = 0u;
  *(v28 + 168) = 0u;
  sub_1E134FD1C(a1, &v68, &unk_1ECEB5670);
  if (*(&v69 + 1))
  {
    v33 = v69;
    *(v28 + 184) = v68;
    *(v28 + 200) = v33;
    *(v28 + 216) = v70;
  }

  else
  {
    sub_1E1AEFE9C();
    v34 = v31;
    v35 = sub_1E1AEFE7C();
    v49 = a1;
    v36 = v30;
    v37 = v32;
    v38 = v29;
    v40 = v39;
    (*(v25 + 8))(v27, v24);
    v66 = v35;
    v67 = v40;
    v31 = v34;
    v29 = v38;
    v32 = v37;
    v30 = v36;
    a1 = v49;
    sub_1E1AF6F6C();
    sub_1E1308058(&v68, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E134B7C8(v52, v28 + OBJC_IVAR____TtC11AppStoreKit5Badge_impressionMetrics);
  *(v28 + 16) = v29;
  *(v28 + 17) = v30;
  v41 = v58;
  *(v28 + 40) = v56;
  *(v28 + 48) = v41;
  v42 = v62;
  *(v28 + 24) = v60;
  *(v28 + 32) = v42;
  v43 = v50;
  *(v28 + 56) = v64;
  *(v28 + 64) = v51;
  *(v28 + 72) = v43;
  *(v28 + 80) = v31;
  *(v28 + 81) = v32;
  v44 = v54;
  *(v28 + 88) = v53;
  *(v28 + 96) = v44;
  v45 = v57;
  *(v28 + 104) = v55;
  *(v28 + 112) = v45;
  *(v28 + 144) = v59;
  v46 = v63;
  *(v28 + 120) = v61;
  *(v28 + 128) = v46;
  *(v28 + 136) = v65 & 1;
  return v28;
}

uint64_t Badge.init(id:type:key:heading:caption:longCaption:content:leadingValue:style:accessibilityTitle:accessibilityCaption:clickAction:artwork:trailingArtwork:isMonochrome:impressionMetrics:)(uint64_t a1, char *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21)
{
  v22 = v21;
  v63 = a8;
  v61 = a7;
  v59 = a6;
  v57 = a5;
  v55 = a4;
  v51 = a21;
  v64 = a20;
  v62 = a19;
  v60 = a18;
  v58 = a17;
  v56 = a16;
  v54 = a15;
  v53 = a14;
  v52 = a13;
  v49 = a10;
  v50 = a9;
  v26 = sub_1E1AEFEAC();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a2;
  v31 = *a3;
  v32 = *a11;
  v33 = *a12;
  *(v22 + 152) = 0u;
  *(v22 + 168) = 0u;
  sub_1E134FD1C(a1, &v67, &unk_1ECEB5670);
  if (*(&v68 + 1))
  {
    v70 = v67;
    v71 = v68;
    v72 = v69;
  }

  else
  {
    sub_1E1AEFE9C();
    v34 = v32;
    v35 = sub_1E1AEFE7C();
    HIDWORD(v48) = v31;
    v36 = v33;
    v37 = v30;
    v39 = v38;
    (*(v27 + 8))(v29, v26);
    v65 = v35;
    v66 = v39;
    v32 = v34;
    v30 = v37;
    v33 = v36;
    LOBYTE(v31) = BYTE4(v48);
    sub_1E1AF6F6C();
    sub_1E1308058(&v67, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v40 = v71;
  *(v22 + 184) = v70;
  *(v22 + 200) = v40;
  *(v22 + 216) = v72;
  sub_1E134B7C8(v51, v22 + OBJC_IVAR____TtC11AppStoreKit5Badge_impressionMetrics);
  *(v22 + 16) = v30;
  *(v22 + 17) = v31;
  v41 = v57;
  *(v22 + 40) = v55;
  *(v22 + 48) = v41;
  v42 = v61;
  *(v22 + 24) = v59;
  *(v22 + 32) = v42;
  v43 = v49;
  *(v22 + 56) = v63;
  *(v22 + 64) = v50;
  *(v22 + 72) = v43;
  *(v22 + 80) = v32;
  *(v22 + 81) = v33;
  v44 = v53;
  *(v22 + 88) = v52;
  *(v22 + 96) = v44;
  v45 = v56;
  *(v22 + 104) = v54;
  *(v22 + 112) = v45;
  *(v22 + 144) = v58;
  v46 = v62;
  *(v22 + 120) = v60;
  *(v22 + 128) = v46;
  *(v22 + 136) = v64 & 1;
  return v22;
}

uint64_t Badge.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v164 = a2;
  v151 = sub_1E1AEFEAC();
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1E1AF39DC();
  v165 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v158 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v156 = &v131 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v154 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v157 = &v131 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v131 - v12;
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v153 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v152 = &v131 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v155 = &v131 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v159 = &v131 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v162 = &v131 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v131 - v26;
  v28 = sub_1E1AF40DC();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = a1;
  sub_1E1AF381C();
  sub_1E1AF368C();
  v34 = *(v15 + 8);
  v32 = v15 + 8;
  v33 = v34;
  v35 = v27;
  v36 = v14;
  v34(v35, v14);
  if ((*(v29 + 48))(v13, 1, v28) == 1)
  {
    sub_1E1308058(v13, &qword_1ECEB2B28);
    v37 = sub_1E1AF5A7C();
    sub_1E17648C0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v38 = 0x746E65746E6F63;
    v39 = v163;
    v38[1] = 0xE700000000000000;
    v38[2] = v39;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x1E69AB690], v37);
    swift_willThrow();
    (*(v165 + 8))(v164, v173);
    v33(v166, v14);
    return v32;
  }

  v160 = v33;
  v161 = v32;
  v32 = v173;
  (*(v29 + 32))(v31, v13, v28);
  v40 = sub_1E1AF40BC();
  if (!v40)
  {
    v48 = sub_1E1AF5A7C();
    sub_1E17648C0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v49 = MEMORY[0x1E69E7CC0];
    *v50 = 0x746E65746E6F63;
    v50[1] = 0xE700000000000000;
    v50[2] = v163;
    v50[3] = v49;
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69AB6A0], v48);
    swift_willThrow();
    (*(v165 + 8))(v164, v32);
    v160(v166, v14);
    (*(v29 + 8))(v31, v28);
    return v32;
  }

  v146 = v40;
  v148 = v28;
  v147 = v31;
  v41 = v162;
  v42 = v166;
  sub_1E1AF381C();
  sub_1E176411C();
  sub_1E1AF36DC();
  v43 = v160;
  v44 = v161;
  v160(v41, v36);
  if (v172 == 15)
  {
    v45 = v32;

    v32 = sub_1E1AF5A7C();
    sub_1E17648C0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v46 = 1701869940;
    v47 = v163;
    v46[1] = 0xE400000000000000;
    v46[2] = v47;
    (*(*(v32 - 8) + 104))(v46, *MEMORY[0x1E69AB690], v32);
    swift_willThrow();
    (*(v165 + 8))(v164, v45);
    v43(v42, v36);
LABEL_6:
    (*(v29 + 8))(v147, v148);
    return v32;
  }

  v144 = v172;
  v32 = 0x6E6F6974706163;
  sub_1E1AF381C();
  sub_1E1764170();
  sub_1E1AF36DC();
  v43(v41, v36);
  v141 = v172;
  sub_1E1AF381C();
  v140 = sub_1E1AF37CC();
  v52 = v51;
  v43(v41, v36);
  sub_1E1AF381C();
  v139 = sub_1E1AF37CC();
  v54 = v53;
  v145 = v36;
  v43(v41, v36);
  if (!v54 && v144 != 11 && v144 != 14)
  {

    v78 = sub_1E1AF5A7C();
    sub_1E17648C0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v79 = 0x6E6F6974706163;
    v79[1] = 0xE700000000000000;
    v79[2] = v163;
    (*(*(v78 - 8) + 104))(v79, *MEMORY[0x1E69AB690], v78);
    swift_willThrow();
    (*(v165 + 8))(v164, v173);
    v43(v42, v145);
    goto LABEL_6;
  }

  v142 = v54;
  v143 = v52;
  v55 = v162;
  sub_1E1AF381C();
  v138 = sub_1E1AF37CC();
  v57 = v56;
  v58 = v42;
  v59 = v145;
  v43(v55, v145);
  v32 = v44;
  v60 = v159;
  v61 = v58;
  sub_1E1AF381C();
  sub_1E1AF37CC();
  v63 = v62;
  v43(v60, v59);
  v64 = v148;
  if (!v63)
  {

    v80 = sub_1E1AF5A7C();
    sub_1E17648C0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    strcpy(v81, "leadingValue");
    v81[13] = 0;
    *(v81 + 7) = -5120;
    *(v81 + 2) = v163;
    (*(*(v80 - 8) + 104))(v81, *MEMORY[0x1E69AB690], v80);
    swift_willThrow();
    (*(v165 + 8))(v164, v173);
    v43(v61, v59);
LABEL_21:
    (*(v29 + 8))(v147, v64);
    return v32;
  }

  v32 = 0xEC00000065756C61;
  v159 = v57;
  v65 = sub_1E1AF72FC();

  if (v65 >= 3)
  {

    v82 = sub_1E1AF5A7C();
    sub_1E17648C0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v83 = MEMORY[0x1E69E7CC0];
    strcpy(v84, "leadingValue");
    v84[13] = 0;
    *(v84 + 7) = -5120;
    *(v84 + 2) = v163;
    *(v84 + 3) = v83;
    (*(*(v82 - 8) + 104))(v84, *MEMORY[0x1E69AB6A0], v82);
    swift_willThrow();
    (*(v165 + 8))(v164, v173);
    v160(v61, v145);
    goto LABEL_21;
  }

  v137 = v29;
  v66 = v155;
  sub_1E1AF381C();
  sub_1E1AF37CC();
  v68 = v67;
  v69 = v66;
  v70 = v145;
  v71 = v160;
  v32 = v161;
  v160(v69, v145);
  if (!v68)
  {

    v86 = sub_1E1AF5A7C();
    sub_1E17648C0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v87 = 0x656C797473;
    v87[1] = 0xE500000000000000;
    v87[2] = v163;
    (*(*(v86 - 8) + 104))(v87, *MEMORY[0x1E69AB690], v86);
    swift_willThrow();
    (*(v165 + 8))(v164, v173);
    v71(v61, v70);
    (*(v137 + 8))(v147, v64);
    return v32;
  }

  v155 = v65;
  v72 = sub_1E1AF72FC();

  if (v72)
  {
    v73 = v64;
    v74 = v72 == 1;
    v75 = v165;
    v76 = v166;
    v77 = v145;
    if (!v74)
    {

      v107 = sub_1E1AF5A7C();
      sub_1E17648C0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      v108 = MEMORY[0x1E69E7CC0];
      *v109 = 0x656C797473;
      v109[1] = 0xE500000000000000;
      v109[2] = v163;
      v109[3] = v108;
      (*(*(v107 - 8) + 104))(v109, *MEMORY[0x1E69AB6A0], v107);
      swift_willThrow();
      (*(v75 + 8))(v164, v173);
      v160(v76, v77);
      (*(v137 + 8))(v147, v73);
      return v32;
    }

    v133 = 1;
  }

  else
  {
    v133 = 0;
    v75 = v165;
    v77 = v145;
  }

  v88 = v162;
  sub_1E1AF381C();
  v132 = sub_1E1AF37CC();
  v136 = v89;
  v90 = v160;
  v160(v88, v77);
  sub_1E1AF381C();
  v131 = sub_1E1AF37CC();
  v135 = v91;
  v90(v88, v77);
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v92 = *(v75 + 16);
  v93 = v164;
  v94 = v173;
  v92(v156, v164, v173);
  sub_1E1AF464C();
  v95 = v158;
  v92(v158, v93, v94);
  type metadata accessor for Action();
  sub_1E1AF381C();
  v134 = static Action.tryToMakeInstance(byDeserializing:using:)(v88, v95);
  v160(v88, v145);
  type metadata accessor for Artwork();
  sub_1E1AF381C();
  v92(v156, v95, v94);
  sub_1E17648C0(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  sub_1E1AF464C();
  if (v144 != 4 || v172)
  {
    v163 = v172;
    sub_1E1AF381C();
    v92(v156, v158, v94);
    sub_1E1AF464C();
    v162 = v172;
    v98 = v152;
    sub_1E1AF381C();
    v99 = sub_1E1AF370C();
    v100 = v98;
    v101 = v145;
    v102 = v160;
    v160(v100, v145);
    v103 = v153;
    sub_1E1AF381C();
    v104 = sub_1E1AF37CC();
    if (v105)
    {
      *&v169 = v104;
      *(&v169 + 1) = v105;
      sub_1E1AF6F6C();
      v106 = v103;
    }

    else
    {
      v110 = v149;
      sub_1E1AEFE9C();
      v111 = v103;
      v112 = sub_1E1AEFE7C();
      v114 = v113;
      (*(v150 + 8))(v110, v151);
      *&v169 = v112;
      *(&v169 + 1) = v114;
      v102 = v160;
      sub_1E1AF6F6C();
      v106 = v111;
    }

    v102(v106, v101);
    v115 = v164;
    v116 = (v99 == 2) | v99;
    sub_1E134FD1C(v157, v154, &unk_1ECEB1770);
    type metadata accessor for Badge();
    v32 = swift_allocObject();
    *(v32 + 152) = 0u;
    *(v32 + 168) = 0u;
    sub_1E134FD1C(&v172, &v169, &unk_1ECEB5670);
    v117 = v159;
    if (*(&v170 + 1))
    {
      v118 = v170;
      *(v32 + 184) = v169;
      *(v32 + 200) = v118;
      *(v32 + 216) = v171;
    }

    else
    {
      v119 = v149;
      sub_1E1AEFE9C();
      v120 = sub_1E1AEFE7C();
      v122 = v121;
      (*(v150 + 8))(v119, v151);
      v167 = v120;
      v168 = v122;
      v102 = v160;
      sub_1E1AF6F6C();
      sub_1E1308058(&v169, &unk_1ECEB5670);
    }

    v123 = *(v165 + 8);
    v124 = v173;
    v123(v115, v173);
    v102(v166, v101);
    sub_1E1308058(&v172, &unk_1ECEB5670);
    v123(v158, v124);
    sub_1E1308058(v157, &unk_1ECEB1770);
    (*(v137 + 8))(v147, v148);
    sub_1E134B7C8(v154, v32 + OBJC_IVAR____TtC11AppStoreKit5Badge_impressionMetrics);
    *(v32 + 16) = v144;
    *(v32 + 17) = v141;
    v125 = v143;
    *(v32 + 40) = v140;
    *(v32 + 48) = v125;
    v126 = v142;
    *(v32 + 24) = v139;
    *(v32 + 32) = v126;
    v127 = v146;
    *(v32 + 64) = v117;
    *(v32 + 72) = v127;
    *(v32 + 56) = v138;
    *(v32 + 80) = v155;
    *(v32 + 81) = v133;
    v128 = v136;
    *(v32 + 88) = v132;
    *(v32 + 96) = v128;
    v129 = v135;
    *(v32 + 104) = v131;
    *(v32 + 112) = v129;
    *(v32 + 144) = v134;
    v130 = v162;
    *(v32 + 120) = v163;
    *(v32 + 128) = v130;
    *(v32 + 136) = v116 & 1;
  }

  else
  {

    v96 = sub_1E1AF5A7C();
    sub_1E17648C0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v97 = 0x6B726F77747261;
    v97[1] = 0xE700000000000000;
    v97[2] = v163;
    (*(*(v96 - 8) + 104))(v97, *MEMORY[0x1E69AB690], v96);
    swift_willThrow();

    v32 = *(v165 + 8);
    (v32)(v164, v94);
    v160(v166, v145);
    (v32)(v158, v94);
    sub_1E1308058(v157, &unk_1ECEB1770);
    (*(v137 + 8))(v147, v148);
  }

  return v32;
}

unint64_t sub_1E176411C()
{
  result = qword_1EE1E4270;
  if (!qword_1EE1E4270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E4270);
  }

  return result;
}

unint64_t sub_1E1764170()
{
  result = qword_1EE1D2F20;
  if (!qword_1EE1D2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2F20);
  }

  return result;
}

uint64_t type metadata accessor for Badge()
{
  result = qword_1EE1E58A8;
  if (!qword_1EE1E58A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E1764210()
{
  result = 0x676E69746172;
  switch(*(v0 + 16))
  {
    case 1:
      result = 0x52746E65746E6F63;
      break;
    case 2:
      result = 0x736F507472616863;
      break;
    case 3:
      result = 0x4373726F74696465;
      break;
    case 4:
    case 0xB:
    case 0xD:
      v2 = sub_1E1AF5E9C();

      result = v2;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x69746F4D68676968;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0x5073646E65697266;
      break;
    case 0xE:
      result = 0x726564726F657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Badge.deinit()
{

  sub_1E1308058(v0 + 152, &qword_1ECEB2DF0);
  sub_1E134B88C(v0 + 184);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit5Badge_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t Badge.__deallocating_deinit()
{
  Badge.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1764568()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t sub_1E17645CC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Badge.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E1764604@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 152, a1, &qword_1ECEB2DF0);
}

uint64_t sub_1E1764660()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

unint64_t sub_1E17646D4()
{
  result = qword_1ECEB8D10;
  if (!qword_1ECEB8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8D10);
  }

  return result;
}

unint64_t sub_1E176472C()
{
  result = qword_1ECEB8D18;
  if (!qword_1ECEB8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8D18);
  }

  return result;
}

unint64_t sub_1E1764784()
{
  result = qword_1ECEB8D20;
  if (!qword_1ECEB8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8D20);
  }

  return result;
}

unint64_t sub_1E17647DC()
{
  result = qword_1ECEB8D28;
  if (!qword_1ECEB8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8D28);
  }

  return result;
}

uint64_t sub_1E17648C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E1764908()
{
  sub_1E1AF762C();
  _s11AppStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_1E1AF767C();
}

uint64_t getEnumTagSinglePayload for BadgeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BadgeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BadgeKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BadgeKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1E1764C64()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *ShelfBasedPageScrollAction.__allocating_init(title:shelfId:purchasedShelfId:notPurchasedShelfId:adamId:index:clicksOnScroll:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9, uint64_t a10, char a11, unsigned __int8 a12, uint64_t a13)
{
  v43 = a8;
  v45 = a1;
  v46 = a2;
  v44 = a12;
  v18 = sub_1E1AEFEAC();
  v41 = *(v18 - 8);
  v42 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v40 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v21 = (v20 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_shelfId);
  *v21 = a3;
  v21[1] = a4;
  v22 = (v20 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_purchasedShelfId);
  *v22 = a5;
  v22[1] = a6;
  v23 = (v20 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId);
  v24 = v43;
  *v23 = a7;
  v23[1] = v24;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_adamId) = *a9;
  v25 = v20 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_index;
  *v25 = a10;
  v25[8] = a11 & 1;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_clicksOnScroll) = v44;
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v26 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v27 = sub_1E1AF3E1C();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v20 + v26, a13, v27);
  v29 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v30 = sub_1E1AF46DC();
  (*(*(v30 - 8) + 56))(v20 + v29, 1, 1, v30);
  v31 = (v20 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v31 = 0u;
  v31[1] = 0u;
  v32 = v20 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v52, &v49);
  if (*(&v50 + 1))
  {
    v33 = v50;
    *v32 = v49;
    *(v32 + 1) = v33;
    *(v32 + 4) = v51;
  }

  else
  {
    v34 = v40;
    sub_1E1AEFE9C();
    v35 = sub_1E1AEFE7C();
    v37 = v36;
    (*(v41 + 8))(v34, v42);
    v47 = v35;
    v48 = v37;
    sub_1E1AF6F6C();
    sub_1E1308058(&v49, &unk_1ECEB5670);
  }

  (*(v28 + 8))(a13, v27);
  sub_1E1308058(v52, &unk_1ECEB5670);
  v38 = v46;
  v20[2] = v45;
  v20[3] = v38;
  v20[4] = 0;
  v20[5] = 0;
  return v20;
}

uint64_t ShelfBasedPageScrollAction.shelfId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_shelfId);

  return v1;
}

uint64_t ShelfBasedPageScrollAction.purchasedShelfId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_purchasedShelfId);

  return v1;
}

uint64_t ShelfBasedPageScrollAction.notPurchasedShelfId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId);

  return v1;
}

uint64_t ShelfBasedPageScrollAction.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_adamId);
  a1[1] = v2;
}

void *ShelfBasedPageScrollAction.init(title:shelfId:purchasedShelfId:notPurchasedShelfId:adamId:index:clicksOnScroll:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _OWORD *a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13)
{
  v14 = v13;
  v49 = a8;
  v48 = a7;
  v45 = a6;
  v51 = a1;
  v52 = a2;
  v50 = a12;
  v47 = a11;
  v46 = a10;
  v44 = a9;
  v43 = sub_1E1AEFEAC();
  v42 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v42 - v21;
  v23 = sub_1E1AF3E1C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = (v14 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_shelfId);
  *v27 = a3;
  v27[1] = a4;
  v28 = (v14 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_purchasedShelfId);
  v29 = v45;
  *v28 = a5;
  v28[1] = v29;
  v30 = (v14 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId);
  v31 = v49;
  *v30 = v48;
  v30[1] = v31;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_adamId) = *v44;
  v32 = v14 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_index;
  *v32 = v46;
  v32[8] = v47 & 1;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_clicksOnScroll) = v50;
  v62 = 0;
  memset(v61, 0, sizeof(v61));
  (*(v24 + 16))(v26, a13, v23);
  v33 = sub_1E1AF46DC();
  (*(*(v33 - 8) + 56))(v22, 1, 1, v33);
  v34 = (v14 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v34 = 0u;
  v34[1] = 0u;
  sub_1E138853C(v61, &v55);
  if (*(&v56 + 1))
  {
    v58 = v55;
    v59 = v56;
    v60 = v57;
  }

  else
  {
    sub_1E1AEFE9C();
    v35 = sub_1E1AEFE7C();
    v37 = v36;
    (*(v42 + 8))(v19, v43);
    v53 = v35;
    v54 = v37;
    sub_1E1AF6F6C();
    sub_1E1308058(&v55, &unk_1ECEB5670);
  }

  (*(v24 + 8))(a13, v23);
  sub_1E1308058(v61, &unk_1ECEB5670);
  v38 = v14 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v38 + 4) = v60;
  v39 = v59;
  *v38 = v58;
  *(v38 + 1) = v39;
  sub_1E134B7C8(v22, v14 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v40 = v52;
  v14[2] = v51;
  v14[3] = v40;
  v14[4] = 0;
  v14[5] = 0;
  (*(v24 + 32))(v14 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v26, v23);
  return v14;
}

void *ShelfBasedPageScrollAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v57 = *v3;
  v5 = sub_1E1AF39DC();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v58 = &v56 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v56 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v56 - v19;
  v66 = a1;
  sub_1E1AF381C();
  v21 = sub_1E1AF37CC();
  v23 = v22;
  v65 = *(v8 + 8);
  v65(v20, v7);
  if (v23)
  {
    v24 = (v3 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_shelfId);
    *v24 = v21;
    v24[1] = v23;
    v25 = v66;
    sub_1E1AF381C();
    v26 = sub_1E1AF37CC();
    v28 = v27;
    v57 = v8;
    v29 = v65;
    v65(v18, v7);
    v30 = (v3 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_purchasedShelfId);
    *v30 = v26;
    v30[1] = v28;
    sub_1E1AF381C();
    v31 = sub_1E1AF37CC();
    v33 = v32;
    v29(v18, v7);
    v34 = (v3 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_notPurchasedShelfId);
    *v34 = v31;
    v34[1] = v33;
    sub_1E1AF381C();
    v35 = sub_1E1AF37CC();
    v37 = v36;
    v29(v15, v7);
    if (v37)
    {
      v38 = v35;
    }

    else
    {
      v38 = 0;
    }

    v39 = (v3 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_adamId);
    *v39 = v38;
    v39[1] = v37;
    sub_1E1AF381C();
    v40 = sub_1E1AF36EC();
    v42 = v41;
    v29(v18, v7);
    v43 = v3 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_index;
    *v43 = v40;
    v43[8] = v42 & 1;
    v44 = v58;
    sub_1E1AF381C();
    LOBYTE(v40) = sub_1E1AF370C();
    v29(v44, v7);
    *(v3 + OBJC_IVAR____TtC11AppStoreKit26ShelfBasedPageScrollAction_clicksOnScroll) = (v40 == 2) | v40 & 1;
    v45 = v59;
    (*(v57 + 16))(v59, v25, v7);
    v47 = v62;
    v46 = v63;
    v48 = v60;
    v49 = v64;
    (*(v62 + 16))(v60, v64, v63);
    v50 = v61;
    v51 = Action.init(deserializing:using:)(v45, v48);
    if (!v50)
    {
      v3 = v51;
    }

    (*(v47 + 8))(v49, v46);
    v65(v66, v7);
  }

  else
  {
    v52 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v53 = 0x6449666C656873;
    v54 = v57;
    v53[1] = 0xE700000000000000;
    v53[2] = v54;
    (*(*(v52 - 8) + 104))(v53, *MEMORY[0x1E69AB690], v52);
    swift_willThrow();
    (*(v62 + 8))(v64, v63);
    v65(v66, v7);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t sub_1E1765E04()
{
}

uint64_t ShelfBasedPageScrollAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t ShelfBasedPageScrollAction.__deallocating_deinit()
{
  ShelfBasedPageScrollAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShelfBasedPageScrollAction()
{
  result = qword_1EE1EA538;
  if (!qword_1EE1EA538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MarketingIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v40 = a3;
  v4 = sub_1E1AF39DC();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AEFEAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF380C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - v14;
  v33 = a1;
  sub_1E1AF381C();
  v16 = sub_1E1AF37CC();
  v34 = v11;
  v32[2] = v12;
  if (v17)
  {
    v38 = v16;
    v39 = v17;
    sub_1E1AF6F6C();
    v18 = *(v12 + 8);
    v18(v15, v11);
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v32[0] = v6;
    v20 = v11;
    v22 = v21;
    (*(v8 + 8))(v10, v7);
    v38 = v19;
    v39 = v22;
    sub_1E1AF6F6C();
    v18 = *(v12 + 8);
    v23 = v20;
    v6 = v32[0];
    v18(v15, v23);
  }

  type metadata accessor for MarketingItemRequestInfo();
  v24 = v33;
  sub_1E1AF381C();
  v26 = v35;
  v25 = v36;
  v27 = v37;
  (*(v35 + 16))(v6, v37, v36);
  sub_1E17665B8(qword_1EE1D9518, type metadata accessor for MarketingItemRequestInfo);
  sub_1E1AF464C();
  v28 = v38;
  if (v38)
  {
    (*(v26 + 8))(v27, v25);
    result = (v18)(v24, v34);
    *(v40 + 40) = v28;
  }

  else
  {
    v30 = sub_1E1AF5A7C();
    sub_1E17665B8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v31 = 0x4974736575716572;
    v31[1] = 0xEB000000006F666ELL;
    v31[2] = &type metadata for MarketingIntent;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x1E69AB690], v30);
    swift_willThrow();
    (*(v26 + 8))(v27, v25);
    v18(v24, v34);
    return sub_1E134B88C(v40);
  }

  return result;
}

uint64_t sub_1E17665B8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 MarketingIntent.init(id:requestInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = a2;
  return result;
}

JSValue __swiftcall MarketingIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_6;
  }

  isa = result.super.isa;
  sub_1E134E724(v2, v8);
  v7 = [v4 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1E1AF6C5C();
  result.super.isa = [v4 valueWithObject:*(v2 + 40) inContext:in.super.isa];
  if (result.super.isa)
  {
    sub_1E1AF6C5C();
    return isa;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1E17667B4()
{
  result = qword_1ECEB8D38;
  if (!qword_1ECEB8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8D38);
  }

  return result;
}

unint64_t sub_1E176680C()
{
  result = qword_1ECEB8D40;
  if (!qword_1ECEB8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8D40);
  }

  return result;
}

char *sub_1E17668BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
  {
    v3 = 0;
    v17 = a1 & 0xC000000000000001;
    v4 = MEMORY[0x1E69E7CC0];
    while (v17)
    {
      v5 = MEMORY[0x1E68FFD80](v3, a1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      if (sub_1E1A8D844(v5))
      {
        sub_1E134E724(v5 + OBJC_IVAR____TtC11AppStoreKit5Shelf_id, &v14);
      }

      else
      {
        v16 = 0;
        v14 = 0u;
        v15 = 0u;
      }

      if (*(&v15 + 1))
      {
        v11 = v14;
        v12 = v15;
        v13 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1E172CE74(0, *(v4 + 2) + 1, 1, v4);
        }

        v8 = *(v4 + 2);
        v7 = *(v4 + 3);
        if (v8 >= v7 >> 1)
        {
          v4 = sub_1E172CE74((v7 > 1), v8 + 1, 1, v4);
        }

        *(v4 + 2) = v8 + 1;
        v9 = &v4[40 * v8];
        *(v9 + 8) = v13;
        *(v9 + 2) = v11;
        *(v9 + 3) = v12;
      }

      else
      {
        sub_1E1308058(&v14, &qword_1ECEB4720);
      }

      ++v3;
      if (v6 == i)
      {
        return v4;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    v5 = *(a1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E1766AA8(uint64_t a1, unint64_t a2, int a3, int a4, int a5, int a6)
{
  v61 = a5;
  v62 = a6;
  v63 = a4;
  LODWORD(v64) = a3;
  v67 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5250);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4708);
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v56 - v9;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v21 = *(*a1 + 696);
  swift_beginAccess();
  v65 = a1;
  v66 = v21;
  sub_1E134FD1C(a1 + v21, v17, &qword_1ECEB24A0);
  sub_1E134FD1C(v17, v20, &qword_1ECEB24A0);
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0xD000000000000038, 0x80000001E1B5C500);
  sub_1E1AEFE9C();
  v22 = sub_1E1AEFE7C();
  v24 = v23;
  (*(v11 + 8))(v13, v10);
  MEMORY[0x1E68FECA0](v22, v24);

  v25 = v68;
  v26 = v69;
  v27 = *(v15 + 60);
  v28 = v20;
  v29 = &v20[v27];

  *v29 = v25;
  *(v29 + 1) = v26;
  sub_1E1A8E264();
  LOBYTE(v30) = v64;
  sub_1E1308058(v17, &qword_1ECEB24A0);
  v31 = v30 >> 4;
  if (v31 <= 3)
  {
LABEL_18:
    v41 = v56;
    v40 = v57;
    v42 = v58;
    if (v31 > 1)
    {
LABEL_33:
      v33 = v66;
      if (v31 == 2)
      {
        sub_1E1A8CFF0(v67);
      }

      else
      {
        sub_1E1A8D464(v67);
      }
    }

    else
    {
      v33 = v66;
      v34 = v67;
      if (!v31)
      {
        v68 = MEMORY[0x1E69E7CC0];
        v35 = v67 & 0xFFFFFFFFFFFFFF8;
        if (v67 >> 62)
        {
          goto LABEL_50;
        }

        v43 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v43)
        {
LABEL_51:
          v50 = MEMORY[0x1E69E7CC0];
LABEL_52:
          sub_1E1A8C94C(v50);

          v48 = 0;
          goto LABEL_56;
        }

LABEL_22:
        v64 = v17;
        v17 = v28;
        v28 = 0;
        v44 = v34 & 0xC000000000000001;
        while (1)
        {
          if (v44)
          {
            v45 = MEMORY[0x1E68FFD80](v28, v34);
            v46 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          else
          {
            if (v28 >= *(v35 + 16))
            {
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              v43 = sub_1E1AF71CC();
              if (!v43)
              {
                goto LABEL_51;
              }

              goto LABEL_22;
            }

            v45 = *(v34 + 8 * v28 + 32);

            v46 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_32;
            }
          }

          if (*(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
          {
          }

          else
          {
            sub_1E1AF70BC();
            sub_1E1AF70FC();
            sub_1E1AF710C();
            sub_1E1AF70CC();
            v34 = v67;
          }

          ++v28;
          if (v46 == v43)
          {
            v50 = v68;
            v28 = v17;
            v17 = v64;
            goto LABEL_52;
          }
        }
      }

      v47 = sub_1E17668BC(v67);
      sub_1E1A8ED6C(v47);
      if (v30)
      {
      }

      else
      {
        (*(v40 + 16))(v41, v28, v42);
        sub_1E1AF1F1C();

        (*(v40 + 40))(v28, v41, v42);
      }
    }

    v48 = 0;
    v49 = v63;
    v32 = v65;
    goto LABEL_57;
  }

  if ((v30 >> 4) <= 5u)
  {
    v32 = v65;
    v33 = v66;
    if (v31 == 4)
    {
      sub_1E1A8D43C(v67);
    }

    else
    {
      sub_1E1A8D4A0(v67);
    }

    goto LABEL_43;
  }

  v32 = v65;
  v33 = v66;
  v34 = v67;
  if (v31 == 6)
  {
    sub_1E1A8D6A0(v67);
LABEL_43:
    v48 = 0;
    v49 = v63;
    goto LABEL_57;
  }

  if (v31 != 7)
  {
    sub_1E1A8C94C(MEMORY[0x1E69E7CC0]);
    goto LABEL_43;
  }

  v68 = MEMORY[0x1E69E7CC0];
  v35 = v67 & 0xFFFFFFFFFFFFFF8;
  if (v67 >> 62)
  {
    v36 = sub_1E1AF71CC();
    if (v36)
    {
LABEL_7:
      v64 = v17;
      v17 = v28;
      v28 = 0;
      v37 = v34 & 0xC000000000000001;
      do
      {
        if (v37)
        {
          v38 = MEMORY[0x1E68FFD80](v28, v34);
          v39 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v28 >= *(v35 + 16))
          {
            goto LABEL_49;
          }

          v38 = *(v34 + 8 * v28 + 32);

          v39 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        if (*(v38 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
        {
        }

        else
        {
          sub_1E1AF70BC();
          v30 = *(v68 + 16);
          sub_1E1AF70FC();
          sub_1E1AF710C();
          sub_1E1AF70CC();
          v34 = v67;
        }

        ++v28;
      }

      while (v39 != v36);
      v51 = v68;
      v28 = v17;
      v17 = v64;
      goto LABEL_55;
    }
  }

  else
  {
    v36 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_7;
    }
  }

  v51 = MEMORY[0x1E69E7CC0];
LABEL_55:
  sub_1E1A8C94C(v51);

  v48 = 1;
LABEL_56:
  v49 = v63;
  v32 = v65;
  v33 = v66;
LABEL_57:
  sub_1E134FD1C(v28, v17, &qword_1ECEB24A0);
  swift_beginAccess();
  sub_1E1769CD4(v17, v32 + v33);
  swift_endAccess();
  if (v49)
  {
    swift_beginAccess();
    v52 = v32 + v33;
    v53 = v60;
    sub_1E134FD1C(v52, v60, &qword_1ECEB24A0);
    v54 = v59;
    *(v53 + *(v59 + 36)) = v61 & 1;
    *(v53 + *(v54 + 40)) = v48;
    *(v53 + *(v54 + 44)) = v62 & 1;

    sub_1E1AF5BCC();

    sub_1E1308058(v53, &qword_1ECEB5250);
  }

  return sub_1E1308058(v28, &qword_1ECEB24A0);
}

uint64_t sub_1E1767264(uint64_t a1, unint64_t a2, int a3, int a4, int a5, int a6)
{
  v61 = a5;
  v62 = a6;
  v63 = a4;
  LODWORD(v64) = a3;
  v67 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4708);
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v56 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5250);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v56 - v9;
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v21 = *(*a1 + 696);
  swift_beginAccess();
  v65 = a1;
  v66 = v21;
  sub_1E134FD1C(a1 + v21, v17, &qword_1ECEB24A0);
  sub_1E134FD1C(v17, v20, &qword_1ECEB24A0);
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0xD000000000000038, 0x80000001E1B5C500);
  sub_1E1AEFE9C();
  v25 = sub_1E1AEFE7C();
  v23 = v22;
  (*(v11 + 8))(v13, v10);
  v24 = v25;
  LOBYTE(v25) = v64;
  MEMORY[0x1E68FECA0](v24, v23);
  v26 = v17;

  v27 = v68;
  v28 = v69;
  v29 = (v20 + *(v15 + 60));

  *v29 = v27;
  v29[1] = v28;
  sub_1E1A8E264();
  sub_1E1308058(v17, &qword_1ECEB24A0);
  v30 = v25 >> 4;
  if (v30 <= 3)
  {
LABEL_18:
    v40 = v56;
    v39 = v57;
    v41 = v58;
    if (v30 > 1)
    {
LABEL_33:
      v32 = v66;
      if (v30 == 2)
      {
        sub_1E1A8CFF0(v67);
      }

      else
      {
        sub_1E1A8D464(v67);
      }
    }

    else
    {
      v32 = v66;
      v33 = v67;
      if (!v30)
      {
        v68 = MEMORY[0x1E69E7CC0];
        v34 = v67 & 0xFFFFFFFFFFFFFF8;
        if (v67 >> 62)
        {
          goto LABEL_50;
        }

        v42 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v42)
        {
LABEL_51:
          v50 = MEMORY[0x1E69E7CC0];
LABEL_52:
          sub_1E1A8C94C(v50);

          v48 = 0;
          goto LABEL_56;
        }

LABEL_22:
        v64 = v26;
        v43 = v20;
        v20 = 0;
        v44 = v33 & 0xC000000000000001;
        v26 = &OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden;
        while (1)
        {
          if (v44)
          {
            v45 = MEMORY[0x1E68FFD80](v20, v33);
            v46 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          else
          {
            if (v20 >= *(v34 + 16))
            {
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              v42 = sub_1E1AF71CC();
              if (!v42)
              {
                goto LABEL_51;
              }

              goto LABEL_22;
            }

            v45 = *(v33 + 8 * v20 + 32);

            v46 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_32;
            }
          }

          if (*(v45 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
          {
          }

          else
          {
            sub_1E1AF70BC();
            sub_1E1AF70FC();
            sub_1E1AF710C();
            sub_1E1AF70CC();
            v33 = v67;
          }

          ++v20;
          if (v46 == v42)
          {
            v50 = v68;
            v20 = v43;
            v26 = v64;
            goto LABEL_52;
          }
        }
      }

      v47 = sub_1E17668BC(v67);
      sub_1E1A8ED6C(v47);
      if (v25)
      {
      }

      else
      {
        (*(v39 + 16))(v40, v20, v41);
        sub_1E1AF1F1C();

        (*(v39 + 40))(v20, v40, v41);
      }
    }

    v48 = 0;
    v49 = v63;
    v31 = v65;
    goto LABEL_57;
  }

  if ((v25 >> 4) <= 5u)
  {
    v31 = v65;
    v32 = v66;
    if (v30 == 4)
    {
      sub_1E1A8D43C(v67);
    }

    else
    {
      sub_1E1A8D4A0(v67);
    }

    goto LABEL_43;
  }

  v31 = v65;
  v32 = v66;
  v33 = v67;
  if (v30 == 6)
  {
    sub_1E1A8D6A0(v67);
LABEL_43:
    v48 = 0;
    v49 = v63;
    goto LABEL_57;
  }

  if (v30 != 7)
  {
    sub_1E1A8C94C(MEMORY[0x1E69E7CC0]);
    goto LABEL_43;
  }

  v68 = MEMORY[0x1E69E7CC0];
  v34 = v67 & 0xFFFFFFFFFFFFFF8;
  if (v67 >> 62)
  {
    v35 = sub_1E1AF71CC();
    if (v35)
    {
LABEL_7:
      v64 = v17;
      v36 = v20;
      v20 = 0;
      v37 = v33 & 0xC000000000000001;
      v26 = &OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden;
      do
      {
        if (v37)
        {
          v38 = MEMORY[0x1E68FFD80](v20, v33);
          v25 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v20 >= *(v34 + 16))
          {
            goto LABEL_49;
          }

          v38 = *(v33 + 8 * v20 + 32);

          v25 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        if (*(v38 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
        {
        }

        else
        {
          sub_1E1AF70BC();
          sub_1E1AF70FC();
          sub_1E1AF710C();
          sub_1E1AF70CC();
          v33 = v67;
        }

        ++v20;
      }

      while (v25 != v35);
      v51 = v68;
      v20 = v36;
      v26 = v64;
      goto LABEL_55;
    }
  }

  else
  {
    v35 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_7;
    }
  }

  v51 = MEMORY[0x1E69E7CC0];
LABEL_55:
  sub_1E1A8C94C(v51);

  v48 = 1;
LABEL_56:
  v49 = v63;
  v31 = v65;
  v32 = v66;
LABEL_57:
  sub_1E134FD1C(v20, v26, &qword_1ECEB24A0);
  swift_beginAccess();
  sub_1E1769CD4(v26, v31 + v32);
  swift_endAccess();
  if (v49)
  {
    swift_beginAccess();
    v52 = v31 + v32;
    v53 = v60;
    sub_1E134FD1C(v52, v60, &qword_1ECEB24A0);
    v54 = v59;
    *(v53 + *(v59 + 36)) = v61 & 1;
    *(v53 + *(v54 + 40)) = v48;
    *(v53 + *(v54 + 44)) = v62 & 1;

    sub_1E1AF5BCC();

    sub_1E1308058(v53, &qword_1ECEB5250);
  }

  return sub_1E1308058(v20, &qword_1ECEB24A0);
}

uint64_t ArticleDiffablePagePresenter.init(objectGraph:impressionsTracker:pageUrl:sidePackedPage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v55 = a5;
  v56 = a2;
  v50 = a4;
  v48 = a1;
  v8 = sub_1E1AF68DC();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v46 - v13;
  v47 = &v46 - v13;
  *(v5 + qword_1EE2156D0) = 2;
  *(v5 + qword_1EE2156F8) = 0;
  *(v5 + qword_1EE2156D8) = 0;
  *(v5 + qword_1EE1D73D0) = 0;
  *(v5 + qword_1EE1D73C8) = 0;
  *(v5 + qword_1EE215710) = 0;
  v15 = v5 + qword_1EE2156E0;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = qword_1EE2156E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8D48);
  swift_allocObject();
  *(v5 + v16) = sub_1E1AF5BEC();
  v17 = qword_1EE215700;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8D50);
  swift_allocObject();
  *(v5 + v17) = sub_1E1AF5BEC();
  v18 = qword_1EE2156F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8D58);
  swift_allocObject();
  *(v5 + v18) = sub_1E1AF5BEC();
  v19 = qword_1EE215708;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8D60);
  swift_allocObject();
  *(v5 + v19) = sub_1E1AF5BEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9480);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E1B02CD0;
  *(v20 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B88);
  *(v20 + 40) = type metadata accessor for ImpressionsCalculator();
  *&v58[0] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9470);
  v46 = MEMORY[0x1E69E6328];
  sub_1E1302CD4(&qword_1EE1E34D0, &unk_1ECEB9470);
  sub_1E1AF417C();

  sub_1E134FD1C(a4, v14, &unk_1ECEB4B60);
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  *(v5 + qword_1EE2169B8) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v5 + qword_1EE2169A0) = MEMORY[0x1E69E7CC0];
  *(v5 + qword_1EE1ED400) = 0;
  v22 = *(*v5 + 640);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3390);
  v24 = *(*(v23 - 8) + 56);
  v24(v6 + v22, 1, 1, v23);
  v25 = *(*v6 + 648);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  (*(*(v26 - 8) + 56))(v6 + v25, 1, 1, v26);
  v27 = *(*v6 + 656);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3388);
  (*(*(v28 - 8) + 56))(v6 + v27, 1, 1, v28);
  v24(v6 + *(*v6 + 664), 1, 1, v23);
  v29 = *(*v6 + 672);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  (*(*(v30 - 8) + 56))(v6 + v29, 1, 1, v30);
  v31 = *(*v6 + 680);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  (*(*(v32 - 8) + 56))(v6 + v31, 1, 1, v32);
  v33 = *(*v6 + 688);
  sub_1E1361A80();
  sub_1E1AF322C();
  v57 = v21;
  sub_1E1408288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v53 + 104))(v52, *MEMORY[0x1E69E8090], v54);
  *(v6 + v33) = sub_1E1AF692C();
  sub_1E13C6184(v6 + *(*v6 + 696));
  v34 = (v6 + *(*v6 + 704));
  *v34 = 0u;
  v34[1] = 0u;
  *(v34 + 25) = 0u;
  v35 = *(*v6 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
  swift_allocObject();
  *(v6 + v35) = sub_1E1AF5BEC();
  v36 = *(*v6 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
  swift_allocObject();
  *(v6 + v36) = sub_1E1AF5BEC();
  v37 = *(*v6 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v6 + v37) = sub_1E1AF5BEC();
  *(v6 + *(*v6 + 736)) = 0;
  v38 = (v6 + *(*v6 + 752));
  *v38 = 0;
  v38[1] = 0;
  v39 = v47;
  sub_1E134FD1C(v47, v6 + qword_1EE2169A8, &unk_1ECEB4B60);
  sub_1E134FD1C(v58, v6 + *(*v6 + 744), &qword_1ECEB24F8);
  v40 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

  *(v6 + qword_1EE2169B0) = InlineUnifiedMessagePresenter.init(objectGraph:)(v41);

  v43 = sub_1E13C5974(v42, 0, 0, 0);
  v44 = *(*v43 + 1112);

  *(v43 + qword_1EE2169B8) = v44(v55);

  sub_1E13C7890(0);

  swift_unknownObjectRelease();

  sub_1E1308058(v50, &unk_1ECEB4B60);
  sub_1E1308058(v58, &qword_1ECEB24F8);
  sub_1E1308058(v39, &unk_1ECEB4B60);
  return v43;
}

uint64_t ArticleDiffablePagePresenter.touchMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = qword_1EE2156D0;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t ArticleDiffablePagePresenter.shouldTerminateOnClose.getter()
{
  v1 = qword_1EE2156F8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ArticleDiffablePagePresenter.footerVisibilitySectionThreshold.getter()
{
  v1 = v0 + qword_1EE2156E0;
  swift_beginAccess();
  return *v1;
}

uint64_t ArticleDiffablePagePresenter.footerVisibilitySectionThreshold.setter(uint64_t a1, char a2)
{
  v5 = v2 + qword_1EE2156E0;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E1768638(uint64_t a1)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v45 = v1[2];
  sub_1E134FD1C(v1 + qword_1EE2169A8, &v44 - v9, &unk_1ECEB4B60);
  swift_beginAccess();
  v51 = v1[3];
  swift_beginAccess();
  v11 = v1[4];
  type metadata accessor for ArticleDiffablePageContentPresenter();
  v12 = swift_allocObject();
  sub_1E134FD1C(v10, v7, &unk_1ECEB4B60);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = (v4 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  sub_1E13E23F8(v7, v15 + v13);
  v16 = v45;
  v47 = v15;
  *(v15 + v14) = v45;
  *(v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v17 = v10;
  sub_1E134FD1C(v10, v50, &unk_1ECEB4B60);
  *(v12 + qword_1EE1E9D48) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v12 + qword_1EE1E9DF8) = MEMORY[0x1E69E7CC0];
  v19 = qword_1EE2166A0;

  v20 = v16;
  swift_retain_n();
  v48 = v11;
  swift_retain_n();
  *(v12 + v19) = sub_1E159D6F0(v18);
  v21 = (v12 + qword_1EE1E9E00);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v12 + qword_1EE1E9EA0);
  *v22 = 0;
  v22[1] = 0;
  v46 = v22;
  v23 = (v12 + qword_1EE1E9E08);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v12 + qword_1EE1E9DF0);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v12 + qword_1EE1E9E98);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v12 + qword_1EE216698);
  *v26 = 0u;
  v26[1] = 0u;
  *(v26 + 25) = 0u;
  *(v12 + qword_1EE2166D0) = 0;
  *(v12 + qword_1EE1E9D50) = 0;
  *(v12 + qword_1EE1E9DE8) = MEMORY[0x1E69E7CD0];
  *(v12 + qword_1EE2166C8) = 0;
  v27 = qword_1EE2166C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3398);
  swift_allocObject();
  *(v12 + v27) = sub_1E1AF5BEC();
  v28 = qword_1EE2166B8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2590);
  swift_allocObject();
  *(v12 + v28) = sub_1E1AF5BEC();
  v29 = qword_1EE216680;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB33A8);
  swift_allocObject();
  *(v12 + v29) = sub_1E1AF5BEC();
  v30 = qword_1EE2166B0;
  swift_allocObject();
  *(v12 + v30) = sub_1E1AF5BEC();
  v31 = qword_1EE216688;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *(v12 + v31) = sub_1E1AF5BEC();
  v32 = qword_1EE2166A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB94D0);
  swift_allocObject();
  v33 = sub_1E1AF5BEC();

  sub_1E1308058(v17, &unk_1ECEB4B60);
  *(v12 + v32) = v33;
  v34 = qword_1EE1E9DD8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB31F8);
  v36 = *(*(v35 - 8) + 56);
  v36(v12 + v34, 1, 1, v35);
  v37 = v35;
  v38 = v49;
  v36(v12 + qword_1EE1E9DE0, 1, 1, v37);
  *(v12 + 16) = v20;
  sub_1E13E23F8(v50, v12 + qword_1EE216678);
  v39 = v47;
  *v21 = sub_1E1769D44;
  v21[1] = v39;
  *v23 = 0;
  v23[1] = 0;
  if (v38)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    v41 = sub_1E1445E6C;
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  v42 = v46;
  *v46 = v41;
  v42[1] = v40;
  *v24 = sub_1E1769DF8;
  v24[1] = v20;
  *v25 = 0;
  v25[1] = 0;
  *(v12 + qword_1EE1E9E90) = v51;
  *(v12 + qword_1EE216690) = v48;

  return v12;
}

uint64_t sub_1E1768BFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  result = sub_1E1A7C2CC(*a1, v1, *(a1 + 16));
  if ((v2 & 0x80000000) == 0)
  {
    result = sub_1E1768C68();
    if ((v2 & 1) == 0)
    {

      return sub_1E1768DA0(v1);
    }
  }

  return result;
}

uint64_t sub_1E1768C68()
{
  v1 = v0;
  v2 = qword_1EE2156D8;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    sub_1E1AF5BCC();
  }

  if (*(v1 + qword_1EE1D73D0) || *(v1 + qword_1EE1D73C8))
  {
    swift_retain_n();
    sub_1E1AF5BCC();
  }

  v3 = qword_1EE215710;
  result = swift_beginAccess();
  if (*(v1 + v3))
  {

    sub_1E1AF5BCC();
  }

  return result;
}

uint64_t sub_1E1768DA0(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v36 = v2;
    v37 = v1 & 0xC000000000000001;
    v33 = v1 + 32;
    v34 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x1E69E7CC0];
    v32 = v1;
    while (1)
    {
      if (v37)
      {
        v6 = MEMORY[0x1E68FFD80](v4, v1);
        v7 = __OFADD__(v4, 1);
        v8 = v4 + 1;
        if (v7)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v4 >= *(v34 + 16))
        {
          goto LABEL_59;
        }

        v6 = *(v33 + 8 * v4);

        v7 = __OFADD__(v4, 1);
        v8 = v4 + 1;
        if (v7)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v2 = sub_1E1AF71CC();
          goto LABEL_3;
        }
      }

      v38 = v8;
      v9 = *(v6 + 24);
      v43 = v3;
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v9 + 32;
        v12 = v3;
        do
        {
          sub_1E1300B24(v11, v42);
          sub_1E1308EC0(v42, v40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
          type metadata accessor for EditorialLink();
          if ((swift_dynamicCast() & 1) != 0 && v41)
          {
            MEMORY[0x1E68FEF20]();
            if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E1AF625C();
            }

            sub_1E1AF62AC();
            v12 = v43;
          }

          v11 += 40;
          --v10;
        }

        while (v10);
      }

      else
      {
        v12 = v3;
      }

      v13 = v12 >> 62 ? sub_1E1AF71CC() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v5 >> 62;
      if (v5 >> 62)
      {
        v30 = sub_1E1AF71CC();
        v3 = v30 + v13;
        if (__OFADD__(v30, v13))
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      else
      {
        v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v3 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_50;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v14)
      {
        goto LABEL_31;
      }

LABEL_32:
      v5 = sub_1E1AF706C();
      v16 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_33:
      v17 = *(v16 + 16);
      v18 = (*(v16 + 24) >> 1) - v17;
      v39 = v16;
      if (v12 >> 62)
      {
        v20 = sub_1E1AF71CC();
        if (!v20)
        {
LABEL_5:

          v3 = MEMORY[0x1E69E7CC0];
          if (v13 > 0)
          {
            goto LABEL_57;
          }

          goto LABEL_6;
        }

        v21 = v20;
        v22 = sub_1E1AF71CC();
        if (v18 < v22)
        {
          goto LABEL_60;
        }

        if (v21 < 1)
        {
          goto LABEL_62;
        }

        v19 = v22;
        v35 = v5;
        v23 = v39 + 8 * v17 + 32;
        sub_1E1302CD4(&qword_1ECEB8D70, &qword_1ECEB8D68);
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8D68);
          v25 = sub_1E1545DA4(v42, i, v12);
          v27 = *v26;

          (v25)(v42, 0);
          *(v23 + 8 * i) = v27;
        }

        v1 = v32;
        v5 = v35;
      }

      else
      {
        v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_5;
        }

        if (v18 < v19)
        {
          goto LABEL_61;
        }

        type metadata accessor for EditorialLink();
        swift_arrayInitWithCopy();
      }

      v3 = MEMORY[0x1E69E7CC0];
      if (v19 < v13)
      {
        goto LABEL_57;
      }

      if (v19 > 0)
      {
        v28 = *(v39 + 16);
        v7 = __OFADD__(v28, v19);
        v29 = v28 + v19;
        if (v7)
        {
          goto LABEL_58;
        }

        *(v39 + 16) = v29;
      }

LABEL_6:

      v4 = v38;
      if (v38 == v36)
      {
        goto LABEL_52;
      }
    }

    if (!v14)
    {
      v16 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v3 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_31:
    sub_1E1AF71CC();
    goto LABEL_32;
  }

LABEL_51:
  v5 = v3;
LABEL_52:
  if (v5 >> 62)
  {
    if (!sub_1E1AF71CC())
    {
    }

    goto LABEL_54;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_54:
    *&v42[0] = v5;
    sub_1E1AF5BCC();
  }
}

uint64_t sub_1E176926C(uint64_t a1, char a2)
{
  sub_1E1A7F994(a1, a2);
  v4 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_card);
  if (v4)
  {
    v5 = qword_1EE2156D8;
    swift_beginAccess();
    *(v2 + v5) = v4;
  }

  v6 = qword_1EE1D73D0;
  *(v2 + qword_1EE1D73D0) = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_footerLockup);

  v7 = qword_1EE1D73C8;
  *(v2 + qword_1EE1D73C8) = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_arcadeFooterLockup);

  v8 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shareAction);
  v9 = qword_1EE215710;
  swift_beginAccess();
  *(v2 + v9) = v8;

  LOBYTE(v8) = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_touchMode);
  v10 = qword_1EE2156D0;
  swift_beginAccess();
  *(v2 + v10) = v8;
  v11 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11ArticlePage_shouldTerminateOnClose);
  v12 = qword_1EE2156F8;
  result = swift_beginAccess();
  *(v2 + v12) = v11;
  if (!*(v2 + v6) && !*(v2 + v7))
  {
    return result;
  }

  v14 = *(v2 + qword_1EE2169A0);
  if (v14 >> 62)
  {
LABEL_37:
    v15 = sub_1E1AF71CC();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v15)
  {

    v18 = 0;
    v19 = 1;
    v24 = 1;
LABEL_31:
    v29 = v24;
LABEL_32:
    v25 = v18;
    goto LABEL_33;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 1;
  v20 = 1;
  while (2)
  {
    v21 = v18;
    v18 = v17;
    while (2)
    {
      v17 = v18;
      v18 = v16;
      while ((v14 & 0xC000000000000001) == 0)
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        if (v18 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v16 = v18 + 1;
        v22 = *(*(v14 + 32 + 8 * v18) + 16);
        switch(v22)
        {
          case '&':
            goto LABEL_25;
          case '3':
            goto LABEL_27;
          case 'B':
            goto LABEL_25;
        }

LABEL_17:
        v18 = v16;
        if (v16 == v15)
        {
          v18 = v21;
          v24 = v20;
          goto LABEL_28;
        }
      }

      v30 = v17;
      v31 = v21;
      v32 = v20;
      result = MEMORY[0x1E68FFD80](v18, v14);
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        return result;
      }

      v23 = *(result + 16);
      swift_unknownObjectRelease();
      if (v23 == 38)
      {
        v20 = v32;
        v21 = v31;
LABEL_25:
        v19 = 0;
        if (v16 != v15)
        {
          continue;
        }

        v28 = v20;

        v29 = v28;
        v19 = 0;
        goto LABEL_32;
      }

      break;
    }

    v20 = v32;
    v21 = v31;
    if (v23 == 66)
    {
      goto LABEL_25;
    }

    v17 = v30;
    if (v23 != 51)
    {
      goto LABEL_17;
    }

LABEL_27:
    v20 = 0;
    v24 = 0;
    if (v16 != v15)
    {
      continue;
    }

    break;
  }

LABEL_28:
  v25 = v17;

  v29 = v24;
  if (v19)
  {
    goto LABEL_31;
  }

LABEL_33:
  v26 = v19 & v29;
  v27 = v2 + qword_1EE2156E0;
  result = swift_beginAccess();
  *v27 = v25;
  *(v27 + 8) = v26 & 1;
  return result;
}

uint64_t ArticleDiffablePagePresenter.reloadLink(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E1B02CC0;
  sub_1E134E724(a1 + 64, v3 + 32);
  v4 = *(v1 + *(*v1 + 688));
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  *(v5 + 32) = 65856;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E1769BAC;
  *(v6 + 24) = v5;
  v10[4] = sub_1E137AFA8;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1E1551FBC;
  v10[3] = &block_descriptor_62;
  v7 = _Block_copy(v10);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ArticleDiffablePagePresenter.didSelectCardOverlay()()
{
  v1 = qword_1EE2156D8;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || !*(v2 + 72) || (v13[0] = *(v2 + 72), type metadata accessor for TodayCardOverlay(), , __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24C0), (swift_dynamicCast() & 1) == 0))
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  if (!*(&v11 + 1))
  {
LABEL_9:
    sub_1E1308058(&v10, &qword_1ECEB50D0);
    return;
  }

  sub_1E1308EC0(&v10, v13);
  v3 = v14;
  v4 = v15;
  __swift_project_boxed_opaque_existential_1Tm(v13, v14);
  v5 = (*(v4 + 8))(v3, v4);
  if (v5)
  {
    v6 = v5;
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v9 = *(v8 + 16);

    v9(&v10 + 1, v7, v8);
    *&v10 = v6;
    sub_1E1AF5BCC();

    sub_1E1308058(&v10, &qword_1ECEB24C8);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
}

Swift::Void __swiftcall ArticleDiffablePagePresenter.didSelectFooterLockup()()
{
  v1 = *(v0 + qword_1EE1D73D0);
  if (v1)
  {
    if (*(v1 + 264))
    {
      v2[0] = *(v1 + 264);
      v2[1] = v1;
      v2[4] = type metadata accessor for Lockup();
      swift_retain_n();

      sub_1E1AF5BCC();

      sub_1E1308058(v2, &qword_1ECEB24C8);
    }
  }
}

uint64_t sub_1E1769A10()
{
}

uint64_t ArticleDiffablePagePresenter.deinit()
{
  v0 = sub_1E13DB164();

  return v0;
}

uint64_t ArticleDiffablePagePresenter.__deallocating_deinit()
{
  ArticleDiffablePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticleDiffablePagePresenter()
{
  result = qword_1EE1D73B8;
  if (!qword_1EE1D73B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1769CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1769D44(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E1783CE4(a1, v4);
}

uint64_t AnyArtworkFetchingView<>.fetchArtwork(for:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1E1AF6D9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21[-v11 - 8];
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21[-v15 - 8];
  sub_1E1300B24(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  v17 = swift_dynamicCast();
  v18 = *(v13 + 56);
  if (v17)
  {
    v18(v12, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(v16, v12, AssociatedTypeWitness);
    (*(a4 + 32))(v16, a2, a3, a4);
    return (*(v13 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    v18(v12, 1, 1, AssociatedTypeWitness);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1E176A598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E1AF4EDC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[2] = a1;
  v13[3] = a2;
  v13[0] = 95;
  v13[1] = 0xE100000000000000;
  sub_1E13B8AA4();
  if (sub_1E1AF6E9C())
  {
    return sub_1E13F09A8(a1, a2, a3);
  }

  __swift_project_boxed_opaque_existential_1Tm((v3 + OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer), *(v3 + OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer + 24));
  (*(v8 + 104))(v10, *MEMORY[0x1E69AB388], v7);
  v12 = sub_1E1AF5B1C();
  (*(v8 + 8))(v10, v7);
  return v12;
}

uint64_t sub_1E176AC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v24 = a1;
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8D88);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1E1AF44EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_1E1AEFE6C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1380BEC(a3, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1E1308058(v14, &unk_1ECEBB780);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);

    sub_1E1AF44DC();
    v20 = *(v9 + 48);
    if (v20(v7, 1, v8) == 1)
    {
      (*(v9 + 104))(v11, *MEMORY[0x1E69AB178], v8);
      if (v20(v7, 1, v8) != 1)
      {
        sub_1E1308058(v7, &qword_1ECEB8D88);
      }
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
    }

    __swift_project_boxed_opaque_existential_1Tm((v23 + OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer), *(v23 + OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer + 24));
    v21 = sub_1E1AF5AEC();
    (*(v9 + 8))(v11, v8);
    (*(v16 + 8))(v18, v15);
    return v21;
  }
}

uint64_t sub_1E176B188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1E1AEFE6C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1380BEC(a5, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1E1308058(v9, &unk_1ECEBB780);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    __swift_project_boxed_opaque_existential_1Tm((v5 + OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer), *(v5 + OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer + 24));
    v15 = sub_1E1AF5ADC();
    (*(v11 + 8))(v13, v10);
    return v15;
  }
}

uint64_t sub_1E176BB70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = sub_1E1AEFE6C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1380BEC(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1E1308058(v7, &unk_1ECEBB780);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    (*(v9 + 16))(v4, v11, v8);
    (*(v9 + 56))(v4, 0, 1, v8);
    v13 = sub_1E176BDB0(v4, 0xD000000000000013);
    sub_1E1308058(v4, &unk_1ECEBB780);
    (*(v9 + 8))(v11, v8);
    return v13;
  }
}

uint64_t sub_1E176BDB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = sub_1E1AEFE6C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  sub_1E1AEFE5C();
  sub_1E1380BEC(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    sub_1E1308058(v9, &unk_1ECEBB780);
    return 0;
  }

  (*(v11 + 32))(v13, v9, v10);
  result = sub_1E1AEFD9C();
  v19 = floor(v18 / 31536000.0);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v20 = v19;
  if (v19 >= 1)
  {
    v21 = "TimeAgo.YearsAgo";
    goto LABEL_8;
  }

  v24 = floor(v18 / 86400.0);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_32;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v24 >= 7)
  {
    (*(v11 + 16))(v6, v13, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    v25 = 0x64204D4D4DLL;
    v26 = 0xE500000000000000;
    goto LABEL_17;
  }

  if (v24 >= 1)
  {
    (*(v11 + 16))(v6, v13, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    v25 = 69;
    v26 = 0xE100000000000000;
LABEL_17:
    v23 = sub_1E176AC30(v25, v26, v6, a2);
    sub_1E1308058(v6, &unk_1ECEBB780);
    goto LABEL_18;
  }

  v28 = floor(v18 / 3600.0);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v20 = v28;
  if (v28 < 1)
  {

    if (sub_1E13F4188() == 5)
    {
      v29 = 0xD000000000000020;
      v30 = 0x80000001E1B745F0;
    }

    else
    {
      v29 = 0x2E6F6741656D6954;
      v30 = 0xEF776F4E7473754ALL;
    }

    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(*&v29, v31)._countAndFlagsBits;
    goto LABEL_9;
  }

  v21 = "TimeAgo.HoursAgo";
LABEL_8:
  countAndFlagsBits = sub_1E176A598(0xD000000000000010, (v21 - 32) | 0x8000000000000000, v20);
LABEL_9:
  v23 = countAndFlagsBits;
LABEL_18:
  v27 = *(v11 + 8);
  v27(v13, v10);
  v27(v16, v10);
  return v23;
}

uint64_t sub_1E176C598(uint64_t a1)
{
  v2 = 0xD000000000000011;

  v3 = sub_1E13F41D4();
  v4 = "IAP_DURATION_MONTH";
  if (v3 > 2u)
  {
    if (v3 != 3)
    {
      return 0;
    }

    goto LABEL_14;
  }

  v6 = sub_1E1AF74AC();

  if ((v6 & 1) == 0)
  {
    v4 = "IAP_DURATION_WEEK";
    if (v3 > 1u)
    {
      v2 = 0xD000000000000012;
      goto LABEL_14;
    }

    v7 = sub_1E1AF74AC();

    if (v7)
    {
      v2 = 0xD000000000000012;
      return sub_1E176A598(v2, v4 | 0x8000000000000000, a1);
    }

    v4 = "IAP_DURATION_DAY";
    if (v3 == 1)
    {
      goto LABEL_14;
    }

    v8 = sub_1E1AF74AC();

    if (v8)
    {
      return sub_1E176A598(v2, v4 | 0x8000000000000000, a1);
    }

    v2 = 0xD000000000000010;
    v4 = "$_relativeDateFormatter";
    if (!v3)
    {
LABEL_14:

      return sub_1E176A598(v2, v4 | 0x8000000000000000, a1);
    }

    v9 = sub_1E1AF74AC();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1E176A598(v2, v4 | 0x8000000000000000, a1);
}

uint64_t sub_1E176C98C@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageAlignment;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id sub_1E176C9E0(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageAlignment;
  swift_beginAccess();
  v1[v3] = v2;
  return [v1 setNeedsLayout];
}

id (*sub_1E176CA40(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E1354500;
}

uint64_t sub_1E176CAA4()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageWantsBaselineAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E176CAE8(char a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageWantsBaselineAlignment;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1E176CB98()
{
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_touchOutsideMargin;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1E176CBE4(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_touchOutsideMargin);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_1E176CCB0()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_primaryActionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1E1300E34(*v1);
  return v2;
}

uint64_t sub_1E176CD0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [v3 removeTarget:v3 action:sel_didTriggerPrimaryAction_ forControlEvents:0x2000];
  v6 = &v3[OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_primaryActionHandler];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  sub_1E1300E34(a1);
  sub_1E1300E34(a1);
  result = sub_1E1361B18(v7, v8);
  if (a1)
  {
    sub_1E1361B18(a1, a2);
    [v3 addTarget:v3 action:sel_didTriggerPrimaryAction_ forControlEvents:0x2000];
    return sub_1E1361B18(a1, a2);
  }

  return result;
}

void (*sub_1E176CDFC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_primaryActionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v7;
  sub_1E1300E34(v6);
  return sub_1E176CE98;
}

void sub_1E176CE98(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    sub_1E1300E34(*(*a1 + 24));
    sub_1E176CD0C(v3, v4);
    sub_1E1361B18(v2[3], v2[4]);
  }

  else
  {
    sub_1E176CD0C(*(*a1 + 24), v4);
  }

  free(v2);
}

uint64_t ImageAlignedButton.ImageAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

void sub_1E176CFA0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for ImageAlignedButton();
  v58.receiver = v5;
  v58.super_class = v10;
  objc_msgSendSuper2(&v58, sel_imageRectForContentRect_, a1, a2, a3, a4);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v56 = v17;
  v57.receiver = v5;
  v57.super_class = v10;
  objc_msgSendSuper2(&v57, sel_titleRectForContentRect_, a1, a2, a3, a4);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v5 titleLabel];
  if (v26)
  {
    v27 = v26;
    v28 = OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageWantsBaselineAlignment;
    swift_beginAccess();
    if (*(v5 + v28) != 1)
    {

      goto LABEL_16;
    }

    v29 = [v27 font];
    if (!v29)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v30 = v29;
    v31 = [v27 text];
    v55 = v16;
    if (!v31)
    {

      goto LABEL_11;
    }

    v32 = v31;
    sub_1E1AF5DFC();

    v33 = qword_1EE1FADE8;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = sub_1E1AEF4AC();
    __swift_project_value_buffer(v34, qword_1EE1FADF0);
    sub_1E13B8AA4();
    sub_1E1AF6DEC();
    v36 = v35;

    if (v36)
    {

LABEL_11:
      v37 = 1.0;
LABEL_15:
      v59.origin.x = v19;
      v59.origin.y = v21;
      v59.size.width = v23;
      v59.size.height = v25;
      v41 = v19;
      v42 = v21;
      v43 = v23;
      v44 = v25;
      v45 = v37 * CGRectGetHeight(v59);
      v60.origin.x = v41;
      v60.origin.y = v42;
      v60.size.width = v43;
      v60.size.height = v44;
      v54 = v45 - CGRectGetHeight(v60);
      v61.origin.x = v41;
      v61.origin.y = v42;
      v61.size.width = v43;
      v61.size.height = v44;
      MinY = CGRectGetMinY(v61);
      [v27 firstBaselineFromTop];
      v48 = MinY + v37 * v47;
      v62.origin.x = v12;
      v62.origin.y = v14;
      v62.size.height = v56;
      v62.size.width = v55;
      Height = CGRectGetHeight(v62);

      v50 = v48 - Height;
      v25 = v44;
      v23 = v43;
      v21 = v42;
      v19 = v41;
      v16 = v55;
      v14 = v50 + v54 * -0.5;
      goto LABEL_16;
    }

    [v30 lineHeight];
    v39 = v38;

    v37 = 1.3;
    v40 = ceil(v39 * 1.3);
    if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v40 > -9.22337204e18)
    {
      if (v40 < 9.22337204e18)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_16:
  v51 = OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageAlignment;
  swift_beginAccess();
  if (*(v5 + v51) == 1)
  {
    v52 = [v5 traitCollection];
    v53 = sub_1E1AF697C();

    if (v53)
    {
      v63.origin.x = v19;
      v63.origin.y = v21;
      v63.size.width = v23;
      v63.size.height = v25;
      CGRectGetMinX(v63);
      [v5 imageEdgeInsets];
      v64.origin.x = v12;
      v64.origin.y = v14;
      v64.size.width = v16;
      v64.size.height = v56;
      CGRectGetWidth(v64);
    }

    else
    {
      v65.origin.x = v12;
      v65.origin.y = v14;
      v65.size.width = v16;
      v65.size.height = v56;
      CGRectGetMinX(v65);
      v66.size.height = v25;
      v66.origin.x = v19;
      v66.origin.y = v21;
      v66.size.width = v23;
      CGRectGetWidth(v66);
      [v5 imageEdgeInsets];
    }
  }
}

double sub_1E176D430(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for ImageAlignedButton();
  v41.receiver = v5;
  v41.super_class = v10;
  objc_msgSendSuper2(&v41, sel_titleRectForContentRect_, a1, a2, a3, a4);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageAlignment;
  swift_beginAccess();
  if (*(v5 + v19) == 1)
  {
    v40.receiver = v5;
    v40.super_class = v10;
    objc_msgSendSuper2(&v40, sel_imageRectForContentRect_, a1, a2, a3, a4);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [v5 traitCollection];
    v29 = sub_1E1AF697C();

    v30 = v21;
    v31 = v23;
    v32 = v25;
    v33 = v27;
    if (v29)
    {
      MaxX = CGRectGetMaxX(*&v30);
      v42.origin.x = v12;
      v42.origin.y = v14;
      v42.size.width = v16;
      v42.size.height = v18;
      v35 = MaxX - CGRectGetWidth(v42);
      [v5 imageEdgeInsets];
      return v35 + v36;
    }

    else
    {
      MinX = CGRectGetMinX(*&v30);
      [v5 imageEdgeInsets];
      return MinX - v38;
    }
  }

  return v12;
}

double sub_1E176D5E0(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, double (*a7)(double, double, double, double))
{
  v12 = a1;
  v13 = a7(a2, a3, a4, a5);

  return v13;
}

BOOL sub_1E176D664(CGFloat a1, CGFloat a2)
{
  v5 = &v2[OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_touchOutsideMargin];
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  [v2 bounds];
  v16.origin.x = v10 - v7;
  v16.origin.y = v11 - v6;
  v16.size.width = v7 + v9 + v12;
  v16.size.height = v6 + v8 + v13;
  v15.x = a1;
  v15.y = a2;
  return CGRectContainsPoint(v16, v15);
}

uint64_t sub_1E176D7B8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_primaryActionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E137AFA8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4);
}

uint64_t sub_1E176D858(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1E176DF8C;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1E1300E34(v1);
  return sub_1E176CD0C(v4, v3);
}

id ImageAlignedButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ImageAlignedButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageAlignment] = 0;
  v4[OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageWantsBaselineAlignment] = 0;
  v9 = &v4[OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_touchOutsideMargin];
  v10 = *(MEMORY[0x1E69DDCE0] + 16);
  *v9 = *MEMORY[0x1E69DDCE0];
  v9[1] = v10;
  v11 = &v4[OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_primaryActionHandler];
  v12 = type metadata accessor for ImageAlignedButton();
  *v11 = 0;
  v11[1] = 0;
  v14.receiver = v4;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

id ImageAlignedButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ImageAlignedButton.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageAlignment] = 0;
  v1[OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_imageWantsBaselineAlignment] = 0;
  v3 = &v1[OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_touchOutsideMargin];
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  *v3 = *MEMORY[0x1E69DDCE0];
  v3[1] = v4;
  v5 = &v1[OBJC_IVAR____TtC11AppStoreKit18ImageAlignedButton_primaryActionHandler];
  v6 = type metadata accessor for ImageAlignedButton();
  *v5 = 0;
  v5[1] = 0;
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id ImageAlignedButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageAlignedButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E176DC8C()
{
  result = qword_1ECEB8DB0;
  if (!qword_1ECEB8DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8DB0);
  }

  return result;
}

double sub_1E176DFB4()
{
  v1 = v0;
  v2 = sub_1E1AF13EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  sub_1E1AF13CC();
  sub_1E176EB9C(v1, v21);
  v12 = swift_allocObject();
  v13 = v21[5];
  *(v12 + 80) = v21[4];
  *(v12 + 96) = v13;
  *(v12 + 112) = v21[6];
  *(v12 + 128) = v22;
  v14 = v21[1];
  *(v12 + 16) = v21[0];
  *(v12 + 32) = v14;
  v15 = v21[3];
  *(v12 + 48) = v21[2];
  *(v12 + 64) = v15;
  sub_1E1AF13DC();

  v16 = *(v3 + 8);
  v16(v5, v2);
  sub_1E1AF13DC();
  v16(v8, v2);
  sub_1E1AF1DAC();
  v18 = v17;
  v16(v11, v2);
  return v18;
}

uint64_t sub_1E176E1F4()
{
  v1 = v0;
  v2 = sub_1E1AF13EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_1E1AF13CC();
  sub_1E176EB9C(v1, v19);
  v12 = swift_allocObject();
  v13 = v19[5];
  *(v12 + 80) = v19[4];
  *(v12 + 96) = v13;
  *(v12 + 112) = v19[6];
  *(v12 + 128) = v20;
  v14 = v19[1];
  *(v12 + 16) = v19[0];
  *(v12 + 32) = v14;
  v15 = v19[3];
  *(v12 + 48) = v19[2];
  *(v12 + 64) = v15;
  sub_1E1AF13DC();

  v16 = *(v3 + 8);
  v16(v5, v2);
  sub_1E1AF13DC();
  v16(v8, v2);
  sub_1E1AF1D9C();
  return (v16)(v11, v2);
}

uint64_t static CondensedSearchInAppEventContentLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ECEB10A8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1E176E450(&qword_1ECEB8DE8, v2);
}

uint64_t CondensedSearchInAppEventContentLayout.init(metrics:lockupView:cardView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 32) = *(a1 + 32);
  sub_1E1308EC0(a2, a4 + 40);

  return sub_1E1308EC0(a3, a4 + 80);
}

uint64_t CondensedSearchInAppEventContentLayout.layout.getter()
{
  v1 = v0;
  v2 = sub_1E1AF13EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  sub_1E1AF13CC();
  sub_1E176EB9C(v1, v16);
  v9 = swift_allocObject();
  v10 = v16[5];
  *(v9 + 80) = v16[4];
  *(v9 + 96) = v10;
  *(v9 + 112) = v16[6];
  *(v9 + 128) = v17;
  v11 = v16[1];
  *(v9 + 16) = v16[0];
  *(v9 + 32) = v11;
  v12 = v16[3];
  *(v9 + 48) = v16[2];
  *(v9 + 64) = v12;
  sub_1E1AF13DC();

  v13 = *(v3 + 8);
  v13(v5, v2);
  sub_1E1AF13DC();
  return (v13)(v8, v2);
}

uint64_t sub_1E176E748(uint64_t a1, uint64_t a2)
{
  sub_1E176E450(a2, v4);
  sub_1E1308EC0(v4, &v3);
  return sub_1E1AF135C();
}

uint64_t sub_1E176E794()
{
  v1 = v0;
  v2 = sub_1E1AF13EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  sub_1E1AF13CC();
  sub_1E176EB9C(v1, v16);
  v9 = swift_allocObject();
  v10 = v16[5];
  *(v9 + 80) = v16[4];
  *(v9 + 96) = v10;
  *(v9 + 112) = v16[6];
  *(v9 + 128) = v17;
  v11 = v16[1];
  *(v9 + 16) = v16[0];
  *(v9 + 32) = v11;
  v12 = v16[3];
  *(v9 + 48) = v16[2];
  *(v9 + 64) = v12;
  sub_1E1AF13DC();

  v13 = *(v3 + 8);
  v13(v5, v2);
  sub_1E1AF13DC();
  return (v13)(v8, v2);
}

uint64_t sub_1E176E95C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E176ECC8();

  return MEMORY[0x1EEE17F00](a1, a2, v4);
}

id sub_1E176EA04(uint64_t a1, uint64_t *a2, id *a3, int a4)
{
  v7 = sub_1E1AF12AC();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  v10 = *a3;
  *v8 = *a3;
  *(v8 + 8) = a4;
  (*(*(v7 - 8) + 104))();

  return v10;
}

uint64_t sub_1E176EADC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1E1AF12AC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void sub_1E176EB74()
{
  qword_1ECEB8E00 = MEMORY[0x1E69E63B0];
  unk_1ECEB8E08 = MEMORY[0x1E69ABBA8];
  qword_1ECEB8DE8 = 0x4028000000000000;
}

unint64_t sub_1E176EBE0()
{
  result = qword_1ECEB8E10;
  if (!qword_1ECEB8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8E10);
  }

  return result;
}

unint64_t sub_1E176EC38()
{
  result = qword_1ECEB8E18;
  if (!qword_1ECEB8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8E18);
  }

  return result;
}

unint64_t sub_1E176ECC8()
{
  result = qword_1ECEB8E20;
  if (!qword_1ECEB8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8E20);
  }

  return result;
}

unint64_t SearchOrigin.rawValue.getter()
{
  result = 0x676E69646E657274;
  switch(*v0)
  {
    case 1:
      result = 0x6574736567677573;
      break;
    case 2:
      result = 0x73746E65636572;
      break;
    case 3:
      result = 0x73746E6968;
      break;
    case 4:
      result = 0x6C616E7265747865;
      break;
    case 5:
      result = 0x7463416B63697571;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 7630960;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
      result = 0x7478655472657375;
      break;
    case 0xB:
      result = 0x6570795472657375;
      break;
    case 0xC:
      result = 0x6E694874736F6867;
      break;
    case 0xD:
      result = 0x6F54646564697567;
      break;
    case 0xE:
      result = 0x726142626174;
      break;
    default:
      return result;
  }

  return result;
}

void SearchOrigin.jsRepresentation(in:)(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x676E69646E657274;
  switch(*v1)
  {
    case 1:
      v3 = 0x6574736567677573;
      v2 = 0xE900000000000064;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x73746E65636572;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x73746E6968;
      break;
    case 4:
      v2 = 0xEB000000006C7255;
      v3 = 0x6C616E7265747865;
      break;
    case 5:
      v2 = 0xEB000000006E6F69;
      v3 = 0x7463416B63697571;
      break;
    case 6:
      v3 = 0xD000000000000010;
      v2 = 0x80000001E1B56980;
      break;
    case 7:
      v2 = 0xE300000000000000;
      v3 = 7630960;
      break;
    case 8:
      v2 = 0x80000001E1B569A0;
      v3 = 0xD000000000000013;
      break;
    case 9:
      v2 = 0x80000001E1B569C0;
      v3 = 0xD000000000000014;
      break;
    case 0xA:
      v3 = 0x7478655472657375;
      break;
    case 0xB:
      v2 = 0xED0000746E694864;
      v3 = 0x6570795472657375;
      break;
    case 0xC:
      v2 = 0xE900000000000074;
      v3 = 0x6E694874736F6867;
      break;
    case 0xD:
      v3 = 0x6F54646564697567;
      v2 = 0xEB000000006E656BLL;
      break;
    case 0xE:
      v2 = 0xE600000000000000;
      v3 = 0x726142626174;
      break;
    default:
      break;
  }

  v4 = MEMORY[0x1E69AB6F8];
  a1[3] = MEMORY[0x1E69E6158];
  a1[4] = v4;
  *a1 = v3;
  a1[1] = v2;
}

AppStoreKit::SearchOrigin_optional __swiftcall SearchOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E176F10C()
{
  v0 = SearchOrigin.rawValue.getter();
  v2 = v1;
  if (v0 == SearchOrigin.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E1AF74AC();
  }

  return v5 & 1;
}

unint64_t sub_1E176F1AC()
{
  result = qword_1ECEB8E28;
  if (!qword_1ECEB8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8E28);
  }

  return result;
}

uint64_t sub_1E176F200()
{
  sub_1E1AF762C();
  SearchOrigin.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E176F268()
{
  SearchOrigin.rawValue.getter();
  sub_1E1AF5F0C();
}

uint64_t sub_1E176F2CC()
{
  sub_1E1AF762C();
  SearchOrigin.rawValue.getter();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

unint64_t sub_1E176F33C@<X0>(unint64_t *a1@<X8>)
{
  result = SearchOrigin.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E176F3E0(char a1)
{
  v3 = swift_beginAccess();
  v4 = v1[32];
  v1[32] = a1;
  v5 = (*(*v1 + 568))(v3);
  v7 = v6;
  if (a1)
  {
    if (v5)
    {
      ObjectType = swift_getObjectType();
      (*(*(v7 + 24) + 8))(ObjectType);
LABEL_6:
      swift_unknownObjectRelease();
    }
  }

  else if (v5)
  {
    v9 = swift_getObjectType();
    (*(*(v7 + 24) + 16))(v9);
    goto LABEL_6;
  }

  return sub_1E17720F4(v4);
}

void (*sub_1E176F508(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 32);
  return sub_1E176F594;
}

void sub_1E176F594(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = v2[32];
  v2[32] = v3;
  v5 = (*(*v2 + 568))();
  v7 = v6;
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24) + 8);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24) + 16);
  }

  (*v9)(ObjectType);
  swift_unknownObjectRelease();
LABEL_7:
  sub_1E17720F4(v4);

  free(v1);
}

uint64_t sub_1E176F67C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves);
  *(v1 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = result;
  if (v2 != (result & 1))
  {
    if ((result & 1) == 0)
    {
      result = swift_beginAccess();
      if (!*(v1 + 16))
      {
        return result;
      }

      sub_1E1729254();
    }

    result = swift_beginAccess();
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
      result = swift_beginAccess();
      v5 = *(v4 + 48);
      v6 = __OFADD__(v5, 1);
      v7 = v5 + 1;
      if (v6)
      {
        __break(1u);
        return result;
      }

      *(v4 + 48) = v7;
      v8 = v7 == 0;
      swift_beginAccess();
      *(v4 + 40) = v8;
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {

        sub_1E149DEE8();
      }
    }
  }

  return result;
}

uint64_t sub_1E176F7A4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v71 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v59 - v6;
  v8 = sub_1E1AEFCCC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v60 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v59 - v12;
  v82 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_50:
    v13 = sub_1E1AF71CC();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests;
  swift_beginAccess();
  if (!v13)
  {
    v9 = MEMORY[0x1E69E7CC8];
    if (*(MEMORY[0x1E69E7CC8] + 16))
    {
LABEL_35:
      v52 = 1 << *(v9 + 32);
      v53 = -1;
      if (v52 < 64)
      {
        v53 = ~(-1 << v52);
      }

      v8 = v53 & v9[8];
      v54 = (v52 + 63) >> 6;

      v55 = 0;
      if (v8)
      {
        goto LABEL_43;
      }

      while (1)
      {
        v56 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_48;
        }

        if (v56 >= v54)
        {
          break;
        }

        v8 = v9[v56 + 8];
        ++v55;
        if (v8)
        {
          v55 = v56;
          do
          {
LABEL_43:
            v8 &= v8 - 1;

            v7 = sub_1E14C5E10(v57);

            a1 = v3;
            sub_1E1774D88(v7);
          }

          while (v8);
          continue;
        }
      }
    }
  }

  v73 = v7;
  v14 = a1;
  a1 = 0;
  v76 = v14 & 0xC000000000000001;
  v75 = v14 & 0xFFFFFFFFFFFFFF8;
  v59 = v14;
  v72 = v14 + 32;
  v74 = (v9 + 6);
  v70 = (v9 + 4);
  v69 = (v9 + 1);
  v62 = (v9 + 2);
  v9 = &OBJC_IVAR____TtC11AppStoreKit5Shelf_url;
  v61 = xmmword_1E1B02CC0;
  v66 = v8;
  v65 = v3;
  v64 = v13;
  while (!v76)
  {
    if (a1 >= *(v75 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v7 = *(v72 + 8 * a1);

    v15 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_31;
    }

LABEL_10:
    v16 = v73;
    sub_1E134FD1C(&v7[OBJC_IVAR____TtC11AppStoreKit5Shelf_url], v73, &unk_1ECEB4B60);
    if ((*v74)(v16, 1, v8) == 1)
    {

      sub_1E1308058(v16, &unk_1ECEB4B60);
    }

    else
    {
      (*v70)(v77, v16, v8);
      if (__OFADD__(v71, a1))
      {
        goto LABEL_49;
      }

      v81 = (v71 + a1);
      v17 = sub_1E1AF742C();
      v19 = v18;
      if ((*(*v3 + 696))(v7))
      {
        (*v69)(v77, v8);
      }

      else
      {
        v20 = *(v3 + v68);
        v67 = v17;
        v80[0] = v17;
        v80[1] = v19;

        sub_1E1AF6F6C();
        if (*(v20 + 16) && (v21 = sub_1E1AF6F2C(), v22 = -1 << *(v20 + 32), v23 = v21 & ~v22, ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
        {
          v24 = ~v22;
          while (1)
          {
            sub_1E134E724(*(v20 + 48) + 40 * v23, v80);
            v25 = MEMORY[0x1E68FFC60](v80, &v81);
            sub_1E134B88C(v80);
            if (v25)
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          sub_1E134B88C(&v81);
          v8 = v66;
          (*v69)(v77, v66);
          v3 = v65;
        }

        else
        {
LABEL_19:

          sub_1E134B88C(&v81);
          v26 = &v7[OBJC_IVAR____TtC11AppStoreKit5Shelf_batchGroup];
          if (v82[2] && (sub_1E13018F8(*v26, v26[1]), (v27 & 1) != 0))
          {
            v29 = *v26;
            v28 = v26[1];

            v31 = sub_1E1A0C5CC(&v81, v29, v28);
            if (*v30)
            {
              v32 = v30;
              v33 = v60;
              v34 = v77;
              v8 = v66;
              (*v62)(v60, v77, v66);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v80[0] = *v32;
              *v32 = 0x8000000000000000;
              v36 = v33;
              v37 = v67;
              sub_1E1598A00(v36, v67, v19, isUniquelyReferenced_nonNull_native);
              *v32 = v80[0];

              (v31)(&v81, 0);
            }

            else
            {
              (v31)(&v81, 0);

              v8 = v66;
              v34 = v77;
              v37 = v67;
            }
          }

          else
          {
            v38 = v26[1];
            v63 = *v26;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8E58);
            v39 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D10) - 8);
            v40 = (*(*v39 + 80) + 32) & ~*(*v39 + 80);
            v41 = swift_allocObject();
            *(v41 + 16) = v61;
            v42 = (v41 + v40);
            v43 = v39[14];
            v44 = v67;
            *v42 = v67;
            v42[1] = v19;
            v45 = (v41 + v40 + v43);
            v34 = v77;
            v46 = v66;
            (*v62)(v45, v77, v66);

            v47 = sub_1E159E380(v41);
            swift_setDeallocating();
            sub_1E1308058(v42, &unk_1ECEB5D10);
            swift_deallocClassInstance();
            v48 = v82;
            v49 = swift_isUniquelyReferenced_nonNull_native();
            v81 = v48;
            v50 = v47;
            v8 = v46;
            v37 = v44;
            sub_1E1598B80(v50, v63, v38, v49);

            v82 = v81;
          }

          v3 = v65;
          v51 = v68;
          swift_beginAccess();
          v78 = v37;
          v79 = v19;
          sub_1E1AF6F6C();
          sub_1E1773FD0(&v81, v80);
          sub_1E1AF6F4C();
          sub_1E134B88C(&v81);
          swift_dynamicCast();
          swift_endAccess();

          sub_1E176F67C(*(*(v3 + v51) + 16) != 0);

          (*v69)(v34, v8);
        }

        v13 = v64;
      }

      v9 = &OBJC_IVAR____TtC11AppStoreKit5Shelf_url;
    }

    a1 = v15;
    if (v15 == v13)
    {
      goto LABEL_32;
    }
  }

  v7 = MEMORY[0x1E68FFD80](a1, v59);
  v15 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    goto LABEL_10;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  v9 = v82;
  if (v82[2])
  {
    goto LABEL_35;
  }
}

void sub_1E1770184(uint64_t a1, uint64_t a2)
{
  sub_1E1AF6FEC();
  sub_1E1AF772C();

  MEMORY[0x1E68FECA0](0xD000000000000027, 0x80000001E1B748A0);
  MEMORY[0x1E68FECA0](a1, a2);
  sub_1E1AF71FC();
  __break(1u);
}

uint64_t sub_1E1770270@<X0>(_BYTE *a1@<X8>)
{
  v3 = *((*(*v1 + 752))() + 16);

  *a1 = v3;
  return result;
}

uint64_t sub_1E17702C8()
{
  v1 = *((*(*v0 + 752))() + 24);

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_1E1770344()
{
  v1 = *((*(*v0 + 752))() + OBJC_IVAR____TtC11AppStoreKit5Shelf_rowsPerColumn);

  return v1;
}

uint64_t sub_1E17703B0(uint64_t a1, void *a2)
{
  v3 = *((*(*v2 + 752))() + *a2);

  return v3;
}

uint64_t sub_1E177040C()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 16);
  }

  return v3;
}

uint64_t sub_1E17704A4()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 32);
  }

  return v3;
}

uint64_t sub_1E177052C()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 72);
  }

  return v3;
}

uint64_t sub_1E17705C4()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  return v3;
}

uint64_t sub_1E177064C()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 128);
  }

  return v3;
}

uint64_t sub_1E17706D4()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 112);
  }

  return v3;
}

unint64_t sub_1E177076C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF019C();
  v4 = *((*(*v1 + 752))(v3) + 24);

  result = sub_1E1AF018C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v4 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1E1300B24(v4 + 40 * result + 32, a1);
}

uint64_t sub_1E1770834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*v2 + 744))();
  if (result <= a1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0x8000;
  }

  else
  {
    v6 = (*(*v2 + 752))(a1);
    v7 = *(v6 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background);
    v8 = *(v6 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 8);
    v9 = *(v6 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 16);
    v10 = *(v6 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 24);
    v11 = *(v6 + OBJC_IVAR____TtC11AppStoreKit5Shelf_background + 32);
    sub_1E151F120(v7, v8, v9, v10, v11);
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_1E1770938@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AF019C();
  result = (*(*v1 + 744))();
  if (v3 < result)
  {
    v5 = sub_1E1AF019C();
    v6 = (*v1 + 752);
    v7 = *v6;
    v8 = *((*v6)(v5) + 24);

    v9 = *(v8 + 16);

    result = sub_1E1AF018C();
    if ((result & 0x8000000000000000) == 0 && result < v9)
    {
      v10 = sub_1E1AF019C();
      v11 = *(v7(v10) + 24);

      result = sub_1E1AF018C();
      if (result < 0)
      {
        __break(1u);
      }

      else if (result < *(v11 + 16))
      {
        sub_1E1300B24(v11 + 40 * result + 32, v16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8E30);
        if (swift_dynamicCast())
        {
          sub_1E1308EC0(v14, v17);
          v12 = v18;
          v13 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          (*(v13 + 8))(v12, v13);
          return __swift_destroy_boxed_opaque_existential_1(v17);
        }

        v15 = 0;
        memset(v14, 0, sizeof(v14));
        result = sub_1E1308058(v14, &qword_1ECEB8E38);
        goto LABEL_9;
      }

      __break(1u);
      return result;
    }
  }

LABEL_9:
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x8000;
  return result;
}

uint64_t sub_1E1770B68@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_1E1AF019C();
  result = (*(*v1 + 744))();
  if (v3 < result)
  {
    v5 = sub_1E1AF019C();
    v6 = (*v1 + 752);
    v7 = *v6;
    v8 = *((*v6)(v5) + 24);

    v9 = *(v8 + 16);

    result = sub_1E1AF018C();
    if ((result & 0x8000000000000000) == 0 && result < v9)
    {
      v10 = sub_1E1AF019C();
      v11 = *(v7(v10) + 24);

      result = sub_1E1AF018C();
      if (result < 0)
      {
        __break(1u);
      }

      else if (result < *(v11 + 16))
      {
        sub_1E1300B24(v11 + 40 * result + 32, v16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7E90);
        if (swift_dynamicCast())
        {
          sub_1E1308EC0(v14, v17);
          v12 = v18;
          v13 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          (*(v13 + 8))(v12, v13);
          return __swift_destroy_boxed_opaque_existential_1(v17);
        }

        v15 = 0;
        memset(v14, 0, sizeof(v14));
        result = sub_1E1308058(v14, &unk_1ECEB7E98);
        goto LABEL_9;
      }

      __break(1u);
      return result;
    }
  }

LABEL_9:
  *a1 = 4;
  return result;
}

uint64_t sub_1E1770D90()
{
  v1 = (*(*v0 + 752))();
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerTitle);
  }

  return v2;
}

uint64_t sub_1E1770E30()
{
  v1 = (*(*v0 + 752))();
  if (*(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction);
  }

  return v2;
}

uint64_t sub_1E1770EBC()
{
  v1 = (*(*v0 + 752))();
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_footerAction);
  if (v2 && (v3 = v1, (*(*v0 + 568))()))
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v10[3] = type metadata accessor for Shelf();
    v10[0] = v3;
    v7 = *(v5 + 8);
    v8 = *(v7 + 8);

    v8(v2, v10, ObjectType, v7);

    swift_unknownObjectRelease();
    return sub_1E1308058(v10, &qword_1ECEB2DF0);
  }

  else
  {
  }
}

uint64_t sub_1E1771024()
{
  if (*((*(*v0 + 752))() + OBJC_IVAR____TtC11AppStoreKit5Shelf_isHidden))
  {
    v1 = 0;
  }

  else
  {
    v1 = Shelf.seeAllAction.getter();
  }

  return v1;
}

uint64_t sub_1E17710A0()
{
  v1 = (*(*v0 + 752))();
  v2 = Shelf.seeAllAction.getter();
  if (v2)
  {
    v3 = v2;
    if ((*(*v0 + 568))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      v10[3] = type metadata accessor for Shelf();
      v10[0] = v1;
      v7 = *(v5 + 8);
      v8 = *(v7 + 8);

      v8(v3, v10, ObjectType, v7);

      swift_unknownObjectRelease();

      return sub_1E1308058(v10, &qword_1ECEB2DF0);
    }
  }
}

unint64_t sub_1E177120C()
{
  v1 = sub_1E1AF01FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8628);
  v6 = swift_allocObject();
  v26 = xmmword_1E1B02CD0;
  *(v6 + 16) = xmmword_1E1B02CD0;
  *(v6 + 32) = sub_1E1AF019C();
  *(v6 + 40) = 0;
  MEMORY[0x1E68F8E70](v6);
  v7 = sub_1E1AF019C();
  v8 = *((*(*v0 + 752))(v7) + 24);

  result = sub_1E1AF018C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result >= *(v8 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_1E1300B24(v8 + 40 * result + 32, v30);

  v10 = *(v2 + 8);
  v10(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B8);
  if (swift_dynamicCast())
  {
    v25[1] = v5;
    sub_1E1308EC0(&v27, v32);
    v11 = v33;
    v12 = v34;
    __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v13 = sub_1E1AF018C();
    v14 = (*(v12 + 8))(&v27, v13, v11, v12);
    if (v27)
    {
      v30[0] = v27;
      v30[1] = v28;
      v31 = v29;
      if ((*(*v0 + 568))(v14))
      {
        v16 = v15;
        ObjectType = swift_getObjectType();
        (*(*(v16 + 8) + 8))(*&v30[0], v30 + 8, ObjectType);
        swift_unknownObjectRelease();
      }

      sub_1E1308058(v30, &qword_1ECEB24C8);
    }

    else
    {
      sub_1E1308058(&v27, &qword_1ECEB24D0);
      v18 = v33;
      v19 = v34;
      __swift_project_boxed_opaque_existential_1Tm(v32, v33);
      v20 = sub_1E1AF018C();
      if (((*(v19 + 16))(v20, v18, v19) & 1) != 0 && (*(*v0 + 568))())
      {
        v22 = v21;
        v23 = swift_getObjectType();
        v24 = swift_allocObject();
        *(v24 + 16) = v26;
        *(v24 + 32) = sub_1E1AF019C();
        *(v24 + 40) = 0;
        MEMORY[0x1E68F8E70](v24);
        (*(v22 + 56))(v4, v23, v22);
        swift_unknownObjectRelease();
        v10(v4, v1);
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    return sub_1E1308058(&v27, &qword_1ECEB8E40);
  }
}

unint64_t sub_1E177164C(uint64_t a1)
{
  v3 = sub_1E1AF019C();
  v4 = *((*(*v1 + 752))(v3) + 24);

  result = sub_1E1AF018C();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result >= *(v4 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_1E1300B24(v4 + 40 * result + 32, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24C0);
  if (swift_dynamicCast())
  {
    sub_1E1308EC0(v19, v22);
    v6 = v23;
    v7 = v24;
    __swift_project_boxed_opaque_existential_1Tm(v22, v23);
    v8 = (*(v7 + 8))(v6, v7);
    if (v8)
    {
      v9 = v8;
      if ((*(*v1 + 568))())
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        v13 = v23;
        v14 = v24;
        __swift_project_boxed_opaque_existential_1Tm(v22, v23);
        (*(v14 + 16))(v21, v13, v14);
        (*(*(v11 + 8) + 8))(v9, v21, ObjectType);

        swift_unknownObjectRelease();
        sub_1E1308058(v21, &qword_1ECEB2DF0);
      }

      else
      {
      }

      return __swift_destroy_boxed_opaque_existential_1(v22);
    }

    v15 = __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v15 = sub_1E1308058(v19, &qword_1ECEB50D0);
  }

  result = (*(*v1 + 568))(v15);
  if (result)
  {
    v17 = v16;
    v18 = swift_getObjectType();
    (*(v17 + 56))(a1, v18, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E1771920(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    v5 = a3 >> 62;
    if (a3 >> 62)
    {
      if (sub_1E1AF71CC() >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      v6 = objc_allocWithZone(MEMORY[0x1E696E970]);

      v7 = [v6 init];
      v8 = sub_1E1AF5DBC();
      [v7 setWidgetKind_];

      if (v5)
      {
        sub_1E13006E4(0, &qword_1ECEB3F60);

        sub_1E1AF720C();
      }

      else
      {

        sub_1E1AF74DC();
        sub_1E13006E4(0, &qword_1ECEB3F60);
      }

      sub_1E13006E4(0, &qword_1ECEB3F60);
      v9 = sub_1E1AF620C();

      [v7 setRelevanceProviders_];

      v10 = [objc_opt_self() defaultStore];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1E1B06D70;
      *(v11 + 32) = v7;
      sub_1E13006E4(0, &qword_1ECEB3F68);
      v12 = v7;
      v13 = sub_1E1AF620C();

      v14 = swift_allocObject();
      *(v14 + 16) = a1;
      *(v14 + 24) = a2;
      v17[4] = sub_1E1773FC8;
      v17[5] = v14;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 1107296256;
      v17[2] = sub_1E1306F24;
      v17[3] = &block_descriptor_63;
      v15 = _Block_copy(v17);

      [v10 setRelevantShortcuts:v13 completionHandler:v15];
      _Block_release(v15);

      return;
    }
  }

  if (qword_1EE1D27B0 != -1)
  {
    swift_once();
  }

  v16 = sub_1E1AF591C();
  __swift_project_value_buffer(v16, qword_1EE215450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();
}

uint64_t BaseShelfPresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x1E69E7CD0];
  v5 = sub_1E138C578(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v5;
}

uint64_t BaseShelfPresenter.deinit()
{
  v0 = BasePresenter.deinit();

  return v0;
}

uint64_t sub_1E1771E40()
{
  swift_beginAccess();
  v1 = v0[2];
  if (v1)
  {
    v2 = qword_1EE1EC290;

    if (v2 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_1EE1EC298;
    v4 = v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v4 = v3;
    *(v4 + 8) = 0;
    v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v5 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  return (*(*v0 + 296))(0);
}

uint64_t BaseShelfPresenter.__allocating_init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v8 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x1E69E7CD0];
  v9 = sub_1E138C578(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_1E17720F4(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1E1AEFE6C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(*v1 + 264);
  result = (v8)(v5);
  if ((result & 1) != v2)
  {
    if (v8())
    {
      result = swift_beginAccess();
      v10 = v1[2];
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasRequests);
        result = swift_beginAccess();
        v12 = *(v11 + 48);
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          __break(1u);
          return result;
        }

        *(v11 + 48) = v14;
        v15 = v14 == 0;
        swift_beginAccess();
        *(v11 + 40) = v15;
        swift_beginAccess();
        result = swift_weakLoadStrong();
        if (result)
        {

          sub_1E149DEE8();
        }
      }
    }

    else
    {
      result = swift_beginAccess();
      if (v1[2])
      {

        sub_1E1AEFE5C();
        sub_1E1AEFE1C();
        v17 = v16;
        (*(v4 + 8))(v7, v3);
        PendingPageRender.initialRequestEndTime.setter(v17, 0);

        if (v1[2])
        {

          sub_1E1729254();
        }
      }
    }
  }

  return result;
}

void sub_1E1772340(uint64_t *a1, void *a2)
{
  v120 = sub_1E1AEFE6C();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v106 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v122 = &v104 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v104 - v11;
  v109 = sub_1E1AF00EC();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v113 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF503C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  swift_beginAccess();
  v121 = a2;
  if (a2[3])
  {
    *v16 = 0;
    (*(v14 + 104))(v16, *MEMORY[0x1E69AB438], v13);

    sub_1E1AF508C();

    (*(v14 + 8))(v16, v13);
  }

  sub_1E1AF00DC();
  v110 = v17;
  v18 = *(v17 + 16);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v114 = OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests;
  v23 = (v20 + 63) >> 6;
  v107 = "mentation required for ";
  v115 = v18;

  v24 = 0;
  v112 = 0;
  v111 = MEMORY[0x1E69E7CC0];
  v116 = xmmword_1E1B02CD0;
  v25 = v8;
  v124 = v8;
  while (v22)
  {
LABEL_11:
    v27 = __clz(__rbit64(v22)) | (v24 << 6);
    v28 = v115;
    sub_1E134E724(*(v115 + 48) + 40 * v27, &v128);
    v29 = *(*(v28 + 56) + 8 * v27);
    v117 = v128;
    v30 = v130;
    v118 = v129;
    v31 = *(&v129 + 1);

    if (!v31)
    {
LABEL_34:

      v53 = v121;
      swift_beginAccess();
      v54 = v110;
      v55 = v111;
      if (*(v53 + 16))
      {
        swift_beginAccess();

        sub_1E1727C98(v56);
        swift_endAccess();

        if (*(v53 + 16))
        {
          swift_beginAccess();

          sub_1E1727CD4(v57);
          swift_endAccess();
        }
      }

      v58 = sub_1E1AF00BC();
      *&v118 = v53 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      if (v58)
      {
        v59 = v120;
      }

      else
      {
        v58 = (*(*v53 + 568))();
        v59 = v120;
        if (v58)
        {
          v61 = v60;
          ObjectType = swift_getObjectType();
          (*(v61 + 48))(v113, ObjectType, v61);
          v58 = swift_unknownObjectRelease();
        }
      }

      *&v117 = (*(*v53 + 592))(v58);
      if (v117)
      {
        v63 = v55[2];
        if (v63)
        {
          v64 = v55 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
          v65 = *(v106 + 72);
          v66 = (v119 + 48);
          v67 = (v119 + 32);
          v68 = MEMORY[0x1E69E7CC0];
          do
          {
            v69 = v122;
            sub_1E134FD1C(v64, v122, &unk_1ECEBB780);
            v70 = v69;
            v71 = v124;
            sub_1E14C1EAC(v70, v124);
            if ((*v66)(v71, 1, v59) == 1)
            {
              sub_1E1308058(v71, &unk_1ECEBB780);
            }

            else
            {
              v72 = v71;
              v73 = *v67;
              (*v67)(v123, v72, v59);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v68 = sub_1E172D0BC(0, *(v68 + 2) + 1, 1, v68);
              }

              v75 = *(v68 + 2);
              v74 = *(v68 + 3);
              if (v75 >= v74 >> 1)
              {
                v68 = sub_1E172D0BC(v74 > 1, v75 + 1, 1, v68);
              }

              *(v68 + 2) = v75 + 1;
              v59 = v120;
              v73(&v68[((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v75], v123, v120);
            }

            v64 += v65;
            --v63;
          }

          while (v63);

          v53 = v121;
          v54 = v110;
        }

        else
        {

          v68 = MEMORY[0x1E69E7CC0];
        }

        v76 = sub_1E16F6E24(v68);

        if (v76)
        {
          v77 = *(*v53 + 600);

          v77(v78);
        }
      }

      else
      {
      }

      v79 = *(v54 + 24);
      v82 = *(v79 + 64);
      v81 = v79 + 64;
      v80 = v82;
      v83 = 1 << *(*(v54 + 24) + 32);
      v84 = -1;
      if (v83 < 64)
      {
        v84 = ~(-1 << v83);
      }

      v85 = v84 & v80;
      v86 = (v83 + 63) >> 6;
      v124 = *(v54 + 24);

      v87 = 0;
      while (v85)
      {
LABEL_65:
        v89 = __clz(__rbit64(v85));
        v85 &= v85 - 1;
        v90 = v89 | (v87 << 6);
        v91 = (*(v124 + 6) + 16 * v90);
        v93 = *v91;
        v92 = v91[1];
        v94 = *(*(v124 + 7) + 8 * v90);
        swift_bridgeObjectRetain_n();
        v95 = v94;
        v96 = sub_1E15B782C(v93, v92);
        if (v97)
        {
          if (qword_1EE1D27B0 != -1)
          {
            swift_once();
          }

          v123 = sub_1E1AF591C();
          v122 = __swift_project_value_buffer(v123, qword_1EE215450);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
          sub_1E1AF38EC();
          *(swift_allocObject() + 16) = v116;
          sub_1E1AF382C();
          *(&v129 + 1) = MEMORY[0x1E69E6158];
          *&v128 = v93;
          *(&v128 + 1) = v92;
          sub_1E1AF38DC();
          sub_1E1308058(&v128, &qword_1ECEB2DF0);
          sub_1E1AF54AC();

          v53 = v121;
        }

        else
        {
          v98 = v96;

          if ((*(*v53 + 568))(v99))
          {
            v101 = v100;
            v102 = swift_getObjectType();
            v103 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
            (*(v101 + 40))(v94, v103, v102, v101);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v88 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          break;
        }

        if (v88 >= v86)
        {
          (*(v108 + 8))(v113, v109);

          return;
        }

        v85 = *(v81 + 8 * v88);
        ++v87;
        if (v85)
        {
          v87 = v88;
          goto LABEL_65;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

    v22 &= v22 - 1;
    v128 = v117;
    v129 = v118;
    v130 = v30;
    v32 = v121;
    v33 = v114;
    swift_beginAccess();
    sub_1E154E438(&v128, v127);
    sub_1E1308058(v127, &unk_1ECEB5670);
    swift_endAccess();
    sub_1E176F67C(*(*(v32 + v33) + 16) != 0);
    sub_1E1AF6F4C();
    if (swift_dynamicCast() & 1) == 0 || (v34 = sub_1E15B782C(v125, v126), (v35))
    {
      if (qword_1EE1D27B0 == -1)
      {
        goto LABEL_15;
      }

LABEL_32:
      swift_once();
      goto LABEL_15;
    }

    v37 = v25;
    v38 = v121;
    v39 = v34;
    if ((*(*v121 + 760))())
    {
      v40 = *v38;
      if (v29[OBJC_IVAR____TtC11AppStoreKit5Shelf_mergeWhenFetched] != 1)
      {
        (*(v40 + 720))(v39, v29);
        v25 = v37;
        goto LABEL_27;
      }

      v41 = *(v40 + 752);
      *&v118 = v39;
      v41(v39);
      v42 = v112;
      Shelf.mergingWith(_:)(v29);
      v112 = v42;
      if (v42)
      {

        if ((*(*v38 + 568))(v43))
        {
          v45 = v44;
          v46 = swift_getObjectType();
          v47 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          v48 = [v47 initWithInteger_];
          v49 = v112;
          (*(v45 + 40))(v112, v48, v46, v45);

          swift_unknownObjectRelease();

          sub_1E134B88C(&v128);
        }

        else
        {
          sub_1E134B88C(&v128);
        }

        v112 = 0;
        v25 = v124;
      }

      else
      {
        (*(*v38 + 720))();

        v25 = v124;
LABEL_27:
        sub_1E1AF00AC();
        sub_1E134FD1C(&v29[OBJC_IVAR____TtC11AppStoreKit5Shelf_nextPreferredContentRefreshDate], v105, &unk_1ECEBB780);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_1E172EFC0(0, v111[2] + 1, 1, v111);
        }

        v51 = v111[2];
        v50 = v111[3];
        if (v51 >= v50 >> 1)
        {
          v111 = sub_1E172EFC0(v50 > 1, v51 + 1, 1, v111);
        }

        sub_1E134B88C(&v128);
        v52 = v111;
        v111[2] = v51 + 1;
        sub_1E14C1EAC(v105, v52 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v51);
      }
    }

    else
    {
      if (qword_1EE1D27B0 != -1)
      {
        goto LABEL_32;
      }

LABEL_15:
      v36 = sub_1E1AF591C();
      __swift_project_value_buffer(v36, qword_1EE215450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = v116;
      sub_1E1AF382C();
      v127[3] = MEMORY[0x1E69E69B8];
      v127[0] = swift_allocObject();
      sub_1E134E724(&v128, v127[0] + 16);
      sub_1E1AF38DC();
      sub_1E1308058(v127, &qword_1ECEB2DF0);
      sub_1E1AF54AC();

      sub_1E134B88C(&v128);
      v25 = v124;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      goto LABEL_34;
    }

    v22 = *(v19 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_11;
    }
  }

LABEL_74:
  __break(1u);
}

uint64_t sub_1E17734F4(void *a1, void *a2, void *a3)
{
  v6 = sub_1E1AF503C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = a2[3];
  if (v10)
  {
    *v9 = a1;
    v9[8] = 0;
    (*(v7 + 104))(v9, *MEMORY[0x1E69AB428], v6);

    v11 = a1;
    sub_1E1AF508C();

    (*(v7 + 8))(v9, v6);
  }

  v31 = a1;
  v12 = a3 + 8;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & a3[8];
  v16 = OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests;
  v17 = (v13 + 63) >> 6;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_11:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_1E134E724(a3[6] + 40 * (v20 | (v19 << 6)), v33);
      swift_beginAccess();
      sub_1E154E438(v33, v32);
      sub_1E134B88C(v33);
      sub_1E1308058(v32, &unk_1ECEB5670);
      swift_endAccess();
      v10 = a2;
      sub_1E176F67C(*(*(a2 + v16) + 16) != 0);
      if (!v15)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_22:
      a3 = sub_1E172D0E4(0, a3[2] + 1, 1, a3);
      *(v10 + v18) = a3;
      goto LABEL_15;
    }

    if (v19 >= v17)
    {
      break;
    }

    v15 = v12[v19];
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_11;
    }
  }

  v21 = swift_beginAccess();
  v10 = a2[2];
  v12 = v31;
  if (!v10)
  {
    goto LABEL_18;
  }

  v18 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
  swift_beginAccess();
  a3 = *(v10 + v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + v18) = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v24 = a3[2];
  v23 = a3[3];
  if (v24 >= v23 >> 1)
  {
    a3 = sub_1E172D0E4((v23 > 1), v24 + 1, 1, a3);
  }

  a3[2] = v24 + 1;
  a3[v24 + 4] = v12;
  *(v10 + v18) = a3;
  swift_endAccess();
  v25 = v12;

LABEL_18:
  result = (*(*a2 + 568))(v21);
  if (result)
  {
    v28 = v27;
    ObjectType = swift_getObjectType();
    (*(v28 + 40))(v12, 0, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E1773944(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  if (a1)
  {
    v7 = a1;
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v14 = MEMORY[0x1E69E6158];
    v12 = a2;
    v13 = a3;

    sub_1E1AF385C();
    sub_1E1308058(&v12, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    swift_getErrorValue();
    v14 = v11;
    v9 = __swift_allocate_boxed_opaque_existential_0(&v12);
    (*(*(v11 - 8) + 16))(v9);
    sub_1E1AF385C();
    sub_1E1308058(&v12, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();
  }

  else
  {
    if (qword_1EE1D27B0 != -1)
    {
      swift_once();
    }

    v10 = sub_1E1AF591C();
    __swift_project_value_buffer(v10, qword_1EE215450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v14 = MEMORY[0x1E69E6158];
    v12 = a2;
    v13 = a3;

    sub_1E1AF385C();
    sub_1E1308058(&v12, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();
  }
}

uint64_t sub_1E1773D68()
{
}

uint64_t BaseShelfPresenter.__deallocating_deinit()
{
  BasePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1773F28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *((*(*v4 + 752))() + *a4);

  return v5;
}

uint64_t sub_1E1773FD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E1AF6F2C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_1E134E724(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x1E68FFC60](v16, a2);
      sub_1E134B88C(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1E134B88C(a2);
    sub_1E134E724(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E134E724(a2, v16);
    v15 = *v3;
    sub_1E177411C(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1E177411C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *v4;
  if (*(*v4 + 24) > *(*v4 + 16))
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_68;
    }

    for (i = *v4; ; *v4 = i)
    {
LABEL_61:
      *(i + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v54 = *(i + 48) + 40 * a2;
      v55 = *(v6 + 16);
      *v54 = *v6;
      *(v54 + 16) = v55;
      *(v54 + 32) = *(v6 + 32);
      v56 = *(i + 16);
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (!v57)
      {
        *(i + 16) = v58;
        return result;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47A0);
      v59 = sub_1E1AF6F7C();
      i = v59;
      if (*(v7 + 16))
      {
        break;
      }

LABEL_83:
    }

    v60 = (v59 + 56);
    v61 = v7 + 56;
    v62 = ((1 << *(i + 32)) + 63) >> 6;
    if (i != v7 || v60 >= v61 + 8 * v62)
    {
      memmove(v60, (v7 + 56), 8 * v62);
    }

    v63 = 0;
    *(i + 16) = *(v7 + 16);
    v64 = 1 << *(v7 + 32);
    v65 = *(v7 + 56);
    v66 = -1;
    if (v64 < 64)
    {
      v66 = ~(-1 << v64);
    }

    v67 = v66 & v65;
    v68 = (v64 + 63) >> 6;
    if ((v66 & v65) != 0)
    {
      do
      {
        v69 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
LABEL_81:
        v72 = 40 * (v69 | (v63 << 6));
        sub_1E134E724(*(v7 + 48) + v72, &v78);
        v73 = *(i + 48) + v72;
        v74 = v78;
        v75 = v79;
        *(v73 + 32) = v80;
        *v73 = v74;
        *(v73 + 16) = v75;
      }

      while (v67);
    }

    v70 = v63;
    while (1)
    {
      v63 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v63 >= v68)
      {
        goto LABEL_83;
      }

      v71 = *(v61 + 8 * v63);
      ++v70;
      if (v71)
      {
        v69 = __clz(__rbit64(v71));
        v67 = (v71 - 1) & v71;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47A0);
  if ((a3 & 1) == 0)
  {
    v30 = sub_1E1AF6F8C();
    i = v30;
    if (!*(v7 + 16))
    {
      goto LABEL_56;
    }

    v77 = v4;
    v31 = 0;
    a2 = v7 + 56;
    v32 = 1 << *(v7 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(v7 + 56);
    v4 = (v32 + 63) >> 6;
    v35 = v30 + 56;
    while (1)
    {
      if (v34)
      {
        v40 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
      }

      else
      {
        v41 = v31;
        do
        {
          v31 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_64;
          }

          if (v31 >= v4)
          {

            v4 = v77;
            goto LABEL_57;
          }

          v42 = *(a2 + 8 * v31);
          ++v41;
        }

        while (!v42);
        v40 = __clz(__rbit64(v42));
        v34 = (v42 - 1) & v42;
      }

      sub_1E134E724(*(v7 + 48) + 40 * (v40 | (v31 << 6)), &v78);
      v43 = sub_1E1AF6F2C();
      v44 = -1 << *(i + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v35 + 8 * (v45 >> 6))) != 0)
      {
        v36 = __clz(__rbit64((-1 << v45) & ~*(v35 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        do
        {
          if (++v46 == v48 && (v47 & 1) != 0)
          {
            goto LABEL_66;
          }

          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v35 + 8 * v46);
        }

        while (v50 == -1);
        v36 = __clz(__rbit64(~v50)) + (v46 << 6);
      }

      *(v35 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v37 = *(i + 48) + 40 * v36;
      v38 = v78;
      v39 = v79;
      *(v37 + 32) = v80;
      *v37 = v38;
      *(v37 + 16) = v39;
      ++*(i + 16);
    }
  }

  v10 = sub_1E1AF6F8C();
  i = v10;
  if (!*(v7 + 16))
  {
    goto LABEL_56;
  }

  v76 = v4;
  v11 = 0;
  a2 = v7 + 56;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 56);
  v4 = (v12 + 63) >> 6;
  v15 = v10 + 56;
LABEL_12:
  if (v14)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    goto LABEL_19;
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v11 >= v4)
    {
      break;
    }

    v20 = *(a2 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v14 = (v20 - 1) & v20;
LABEL_19:
      v21 = *(v7 + 48) + 40 * (v18 | (v11 << 6));
      v78 = *v21;
      v79 = *(v21 + 16);
      v80 = *(v21 + 32);
      v22 = sub_1E1AF6F2C();
      v23 = -1 << *(i + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        do
        {
          if (++v25 == v27 && (v26 & 1) != 0)
          {
            goto LABEL_65;
          }

          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
        }

        while (v29 == -1);
        v16 = __clz(__rbit64(~v29)) + (v25 << 6);
      }

      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(i + 48) + 40 * v16;
      *v17 = v78;
      *(v17 + 16) = v79;
      *(v17 + 32) = v80;
      ++*(i + 16);
      goto LABEL_12;
    }
  }

  v51 = 1 << *(v7 + 32);
  if (v51 >= 64)
  {
    bzero((v7 + 56), ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *a2 = -1 << v51;
  }

  v4 = v76;
  *(v7 + 16) = 0;
LABEL_56:

LABEL_57:
  *v4 = i;
  result = sub_1E1AF6F2C();
  v52 = -1 << *(i + 32);
  a2 = result & ~v52;
  if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_61;
  }

  v7 = ~v52;
  while (1)
  {
    sub_1E134E724(*(i + 48) + 40 * a2, &v78);
    v53 = MEMORY[0x1E68FFC60](&v78, v6);
    result = sub_1E134B88C(&v78);
    if (v53)
    {
      break;
    }

    a2 = (a2 + 1) & v7;
    if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

LABEL_85:
  result = sub_1E1AF756C();
  __break(1u);
  return result;
}

unint64_t sub_1E177476C()
{
  result = qword_1EE1F0350;
  if (!qword_1EE1F0350)
  {
    type metadata accessor for BaseShelfPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F0350);
  }

  return result;
}

uint64_t type metadata accessor for BaseShelfPresenter()
{
  result = qword_1EE1F0340;
  if (!qword_1EE1F0340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1774D88(uint64_t a1)
{
  v3 = sub_1E1AF504C();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    swift_beginAccess();
    if (*(v1 + 24))
    {
      *v7 = 0;
      (*(v4 + 104))(v7, *MEMORY[0x1E69AB448], v3);

      sub_1E1AF509C();

      (*(v4 + 8))(v7, v3);
    }

    type metadata accessor for JSIntentDispatcher();
    sub_1E1AF421C();
    sub_1E1AF55EC();
    sub_1E1AF4C1C();

    sub_1E1AF422C();

    sub_1E1AF4BEC();

    v8 = sub_1E1AF4C0C();

    sub_1E1367B40(a1, v8, "AppStoreKit/BaseShelfPresenter.swift", 36, 2);
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = a1;
    v10 = sub_1E13006E4(0, &qword_1EE1E3430);
    swift_retain_n();

    v11 = sub_1E1AF68EC();
    v12[3] = v10;
    v12[4] = MEMORY[0x1E69AB720];
    v12[0] = v11;
    sub_1E1AF57FC();

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

unint64_t InstallPageOfferMode.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1E1775070@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
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

uint64_t static InAppPurchaseInstallPagePresenter.use(stateDataSource:)(uint64_t a1)
{
  qword_1EE1FA6E0 = a1;
}

void sub_1E17750D0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  sub_1E177823C();
  v4 = v3 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = v2;
  swift_unknownObjectWeakAssign();
  sub_1E177513C();
}

void sub_1E177513C()
{
  v1 = v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v12 = type metadata accessor for InAppPurchaseInstallPagePresenter();
    v11[0] = v0;
    v4 = *(v2 + 40);

    v4(0, v11, sel_offerButtonTapped, ObjectType, v2);
    swift_unknownObjectRelease();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v1 + 8);
    v6 = swift_getObjectType();
    v12 = type metadata accessor for InAppPurchaseInstallPagePresenter();
    v11[0] = v0;
    v7 = *(v5 + 40);

    v7(1, v11, sel_didAcceptPreInstallOffer, v6, v5);
    swift_unknownObjectRelease();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v1 + 8);
    v9 = swift_getObjectType();
    v12 = type metadata accessor for InAppPurchaseInstallPagePresenter();
    v11[0] = v0;
    v10 = *(v8 + 40);

    v10(2, v11, sel_didAcceptPreInstallOffer, v9, v8);
    swift_unknownObjectRelease();
    sub_1E1308058(v11, &qword_1ECEB2DF0);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    sub_1E1775B80();
    if ((*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) == 0 && !*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode))
    {
      sub_1E1776018();
    }
  }
}

uint64_t sub_1E17753B8(uint64_t a1, uint64_t a2)
{
  sub_1E177823C();
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_1E177513C();
  return swift_unknownObjectRelease();
}

void (*sub_1E177542C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E17754CC;
}

void sub_1E17754CC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40) + *(*a1 + 48);
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_1E177823C();
    *(v4 + 8) = v3;
    swift_unknownObjectWeakAssign();
    sub_1E177513C();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E177823C();
    *(v4 + 8) = v3;
    swift_unknownObjectWeakAssign();
    sub_1E177513C();
  }

  swift_unknownObjectRelease();

  free(v2);
}

uint64_t InAppPurchaseInstallPagePresenter.__allocating_init(objectGraph:sidepack:pageUrl:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v10 = v9 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_sidepack;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_sidepack) = 0;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage) = 0;
  v12 = (v9 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_pageTitle);
  *v12 = 0;
  v12[1] = 0;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_didAutoDownload) = 0;
  v13 = v9 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0;
  *(v13 + 72) = -256;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_installAction) = 0;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties) = 0;
  v14 = (v9 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
  *v14 = 0;
  v14[1] = 0;
  *(v9 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + v11) = a2;

  v15 = OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
  v16 = sub_1E1AEFCCC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v9 + v15, a3, v16);
  v18 = (v9 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_appStateController);
  *v18 = a4;
  v18[1] = a5;
  v19 = (v9 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  *v19 = 0;
  v19[73] = 3;
  swift_unknownObjectRetain();

  v21 = sub_1E138C578(v20, 0, 0, 0);

  if (a2)
  {
    v22 = type metadata accessor for InAppPurchaseInstallPage();
    v23 = &protocol witness table for InAppPurchaseInstallPage;
    v24 = sub_1E1778308();
    v25 = a2;
  }

  else
  {
    v25 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v27[1] = 0;
    v27[2] = 0;
  }

  v27[0] = v25;
  v27[3] = v22;
  v27[4] = v23;
  v27[5] = v24;
  swift_beginAccess();

  sub_1E13891EC(v27, v21 + 40);
  swift_endAccess();
  sub_1E138B568();

  swift_unknownObjectRelease();

  (*(v17 + 8))(a3, v16);
  sub_1E1308058(v27, &qword_1ECEB2588);
  return v21;
}

uint64_t InAppPurchaseInstallPagePresenter.init(objectGraph:sidepack:pageUrl:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_sidepack;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_sidepack) = 0;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage) = 0;
  v12 = (v5 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_pageTitle);
  *v12 = 0;
  v12[1] = 0;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_didAutoDownload) = 0;
  v13 = v5 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0;
  *(v13 + 72) = -256;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_installAction) = 0;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties) = 0;
  v14 = (v5 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
  *v14 = 0;
  v14[1] = 0;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + v11) = a2;

  v15 = OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
  v16 = sub_1E1AEFCCC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v5 + v15, a3, v16);
  v18 = (v5 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_appStateController);
  *v18 = a4;
  v18[1] = a5;
  v19 = (v5 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  *v19 = 0;
  v19[73] = 3;
  swift_unknownObjectRetain();

  v21 = sub_1E138C578(v20, 0, 0, 0);

  if (a2)
  {
    v22 = type metadata accessor for InAppPurchaseInstallPage();
    v23 = &protocol witness table for InAppPurchaseInstallPage;
    v24 = sub_1E1778308();
    v25 = a2;
  }

  else
  {
    v25 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v27[1] = 0;
    v27[2] = 0;
  }

  v27[0] = v25;
  v27[3] = v22;
  v27[4] = v23;
  v27[5] = v24;
  swift_beginAccess();

  sub_1E13891EC(v27, v21 + 40);
  swift_endAccess();
  sub_1E138B568();

  swift_unknownObjectRelease();

  (*(v17 + 8))(a3, v16);
  sub_1E1308058(v27, &qword_1ECEB2588);
  return v21;
}

void sub_1E1775B34()
{
  sub_1E1775B80();
  if ((*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) == 0 && !*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode))
  {

    sub_1E1776018();
  }
}

uint64_t sub_1E1775B80()
{
  v1 = v0;
  v2 = type metadata accessor for InAppPurchaseInstallPageIntent();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v0 + 32) = 1;
  v5 = v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v6 + 24) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  v8 = OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_sidepack;
  if (!*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_sidepack))
  {
    goto LABEL_10;
  }

  sub_1E1776730(v9);
  *(v0 + 32) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v5 + 8);
    v11 = swift_getObjectType();
    (*(*(v10 + 24) + 16))(v11);
    swift_unknownObjectRelease();
  }

  v13 = *(v0 + v8);
  if (!v13 || (*(v13 + OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_isComplete) & 1) == 0 && (!*(v13 + 16) || !*(v13 + 24)))
  {
LABEL_10:
    v14 = OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_pageUrl;
    v15 = *(v2 + 20);
    v16 = sub_1E1AEFCCC();
    (*(*(v16 - 8) + 16))(&v4[v15], v1 + v14, v16);
    *v4 = 0xD00000000000001ELL;
    *(v4 + 1) = 0x80000001E1B74BA0;
    type metadata accessor for JSIntentDispatcher();
    v17 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph);
    sub_1E1AF421C();
    sub_1E1AF55EC();
    sub_1E13676E0(v4, v17, "AppStoreKit/InAppPurchaseInstallPagePresenter.swift", 51, 2);
    v18 = sub_1E1361A80();
    swift_retain_n();
    v19 = sub_1E1AF68EC();
    v21[3] = v18;
    v21[4] = MEMORY[0x1E69AB720];
    v21[0] = v19;
    sub_1E1AF57FC();

    sub_1E17786A8(v4);
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return result;
}

uint64_t sub_1E1775E68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage) = *a1;

  sub_1E1776730(v3);
  swift_beginAccess();
  *(a2 + 32) = 0;
  v4 = a2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v6 + 24) + 16))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E1775F34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 32) = 0;
  v4 = a2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 24) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 8);
    v9 = swift_getObjectType();
    (*(*(v8 + 24) + 24))(a1, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E1776018()
{
  if ((*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) != 0 || *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode))
  {
    return;
  }

  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 16);
  v53 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState);
  v54 = v2;
  *&v56[10] = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 58);
  v3 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 48);
  v55 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState + 32);
  *v56 = v3;
  if (v56[25] > 5u)
  {
    if (v56[25] < 0xAu || v56[25] != 10 && v56[25] != 11)
    {
      v4 = v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        (*(v5 + 96))(ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }

    return;
  }

  if (v56[25] < 3u)
  {
    v7 = v1[3];
    v47 = v1[2];
    v48[0] = v7;
    *(v48 + 10) = *(v1 + 58);
    v8 = v1[1];
    v45 = *v1;
    v46 = v8;
    v9 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48);
    v51 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32);
    *v52 = v9;
    *&v52[10] = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 58);
    v10 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16);
    v49 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
    v50 = v10;
    memmove((v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState), (v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_currentState), 0x4AuLL);
    sub_1E139D308(&v45, &v57);
    sub_1E1308058(&v49, &qword_1ECEB2CC8);
    v11 = v1[3];
    v59 = v1[2];
    *v60 = v11;
    *&v60[10] = *(v1 + 58);
    v12 = v1[1];
    v57 = *v1;
    v58 = v12;
    sub_1E139D308(&v57, v44);
    sub_1E1776524(&v57);
    sub_1E139CE5C(&v57);
    v13 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
    if (v13)
    {
      LOBYTE(v13) = *(v13 + 121);
    }

    v14 = *(v1 + 73);
    if (v14 == 2)
    {
      goto LABEL_15;
    }

    if (v14 == 1)
    {
      LOBYTE(v13) = (*(v1 + 1) == 1) | v13;
    }

    if (v13)
    {
LABEL_15:
      v15 = OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_didAutoDownload;
      if ((*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_didAutoDownload) & 1) == 0)
      {
        sub_1E17779F8();
        *(v0 + v15) = 1;
      }
    }

    return;
  }

  if (v56[25] - 4 < 2)
  {
    v16 = v53;
    v17 = v54;
    if (*(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage))
    {
      v18 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_fetchedPage);
    }

    else
    {
      v18 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_sidepack);
      if (!v18)
      {
        sub_1E139D308(&v53, &v57);
        goto LABEL_32;
      }
    }

    v31 = *(v18 + 16);
    sub_1E139D308(&v53, &v57);

    if (v31)
    {
      v32 = *(v31 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseLockup_isSubscription);

      if (v32)
      {
        v33 = "HEADER_IN_PROGRESS_IAP";
        v34 = 0xD00000000000002FLL;
LABEL_33:
        v35._object = 0x80000001E1B74B20;
        v35._countAndFlagsBits = 0xD00000000000001FLL;
        v36._countAndFlagsBits = 0;
        v36._object = 0xE000000000000000;
        v37 = localizedString(_:comment:)(v35, v36);
        v38._object = (v33 | 0x8000000000000000);
        v38._countAndFlagsBits = v34;
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        v40 = localizedString(_:comment:)(v38, v39);
        v41 = v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v42 = *(v41 + 8);
          v43 = swift_getObjectType();
          (*(v42 + 80))(v37._countAndFlagsBits, v37._object, v40._countAndFlagsBits, v40._object, v43, v42, *&v16);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }
    }

LABEL_32:
    v33 = "INSTALL_PAGE_BUTTON_IN_PROGRESS";
    v34 = 0xD000000000000026;
    goto LABEL_33;
  }

  v19 = (v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
  *&v52[10] = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 58);
  v20 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48);
  v51 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32);
  *v52 = v20;
  v21 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16);
  v49 = *(v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
  v50 = v21;
  if (HIBYTE(*&v52[24]) <= 0xFEu)
  {
    v22 = v19[3];
    v59 = v19[2];
    *v60 = v22;
    *&v60[16] = *(v19 + 8);
    v23 = v19[1];
    v57 = *v19;
    v58 = v23;
    *&v60[24] = *&v52[24];
    v47 = v59;
    v48[0] = v22;
    *(v48 + 10) = *(v19 + 58);
    v45 = v57;
    v46 = v23;
    sub_1E139D308(&v45, v44);
    sub_1E1776658(&v57);
    v25 = v24;
    v27 = v26;
    v28 = v0 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = *(v28 + 8);
      v30 = swift_getObjectType();
      (*(v29 + 88))(v25, v27, v30, v29);
      swift_unknownObjectRelease();
      sub_1E1308058(&v49, &qword_1ECEB2CC8);
    }

    else
    {

      sub_1E1308058(&v49, &qword_1ECEB2CC8);
    }
  }
}

uint64_t sub_1E1776524(uint64_t a1)
{
  v3 = sub_1E1776658(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(a1 + 73);
  v11 = v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
  if (v10 != 1)
  {
    v14 = v3;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      (*(v15 + 64))(v14, v5, v7, v9, ObjectType, v15);
      goto LABEL_6;
    }

LABEL_7:
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_7;
  }

  v12 = *(v11 + 8);
  v13 = swift_getObjectType();
  (*(v12 + 72))(v7, v9, v13, v12);
LABEL_6:

  swift_unknownObjectRelease();
}

uint64_t sub_1E1776658(uint64_t a1)
{
  v1 = *(a1 + 73);
  if (v1 == 1)
  {
    countAndFlagsBits = 0;
    v6 = 0xD000000000000025;
    v5 = "INSTALL_PAGE_SUBHEADER_PRE_BUY";
  }

  else if (v1 == 2)
  {
    v2._object = 0x80000001E1B5B2C0;
    v2._countAndFlagsBits = 0xD000000000000018;
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v2, v3)._countAndFlagsBits;
    v5 = "HEADER_PRE_REDOWNLOAD";
    v6 = 0xD000000000000021;
  }

  else
  {
    countAndFlagsBits = sub_1E1777788();
    v5 = "INSTALL_PAGE_HEADER_PRE_UPDATE";
    v6 = 0xD00000000000001ELL;
  }

  v7 = v5 | 0x8000000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  localizedString(_:comment:)(*&v6, v8);
  return countAndFlagsBits;
}

uint64_t sub_1E1776730(uint64_t result)
{
  v2 = v1;
  v3 = result;
  if ((*(result + OBJC_IVAR____TtC11AppStoreKit24InAppPurchaseInstallPage_isComplete) & 1) != 0 || *(result + 16) && *(result + 24))
  {
    v86 = type metadata accessor for InAppPurchaseInstallPage();
    v87 = &protocol witness table for InAppPurchaseInstallPage;
    v88 = sub_1E1778308();
    *&v85 = v3;
    swift_beginAccess();

    sub_1E13891EC(&v85, v1 + 40);
    swift_endAccess();
    sub_1E138B568();
    result = sub_1E1308058(&v85, &qword_1ECEB2588);
  }

  v4 = *(v3 + 24);
  if (v4)
  {
    *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_installAction) = *(v4 + 232);

    v5 = OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties;
    *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties) = *(v4 + 240);

    LOBYTE(v85) = 0;
    v89 = 3;
    sub_1E177803C(&v85);
    v6 = *(v1 + v5);
    if (v6)
    {
      v67 = v3;
      v7 = *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_appStateController + 8);
      ObjectType = swift_getObjectType();
      v9 = *(v6 + 32);
      *&v81 = *(v6 + 24);
      *(&v81 + 1) = v9;
      v10 = *(v7 + 56);

      v11 = v10(&v81, ObjectType, v7);
      v13 = v12;

      v14 = (v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
      *v14 = v11;
      v14[1] = v13;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v15 = swift_getObjectType();
      v16 = *(v13 + 16);
      v16(&v73, v15, v13);
      v81 = v73;
      v82 = v74;
      v83 = v75;
      *v84 = v76;
      sub_1E1777300(&v81, &v77);
      if (v80[25] <= 2u)
      {
        v17 = (v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
        v18 = *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 48);
        v83 = *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 32);
        *v84 = v18;
        *&v84[10] = *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 58);
        v19 = *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState + 16);
        v81 = *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_initialInstallState);
        v82 = v19;
        v20 = v78;
        *v17 = v77;
        v17[1] = v20;
        v21 = *v80;
        v17[2] = v79;
        v17[3] = v21;
        *(v17 + 58) = *&v80[10];
        sub_1E139D308(&v77, &v68);
        sub_1E1308058(&v81, &qword_1ECEB2CC8);
      }

      v22 = 0xD000000000000022;
      v23 = v76 >> 60;
      if (v76 >> 60 == 2)
      {
        v24 = "DER_PRE_BUY_FREE";
        v22 = 0xD00000000000001ELL;
LABEL_30:
        v38 = v24 | 0x8000000000000000;
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        *(v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_pageTitle) = localizedString(_:comment:)(*&v22, v39);

        v16(v72, v15, v13);
        sub_1E1777300(v72, &v81);
        v68 = v72[0];
        v69 = v72[1];
        v70 = v72[2];
        v71 = v72[3];
        sub_1E139CEA8(&v68);
        sub_1E177803C(&v81);
        sub_1E139CE5C(&v81);
        (*(v13 + 80))(v1, v15, v13);
        v40 = swift_allocObject();
        swift_weakInit();
        v41 = *(v13 + 72);

        v41(v1, sub_1E1778690, v40, v15, v13);

        sub_1E139CE5C(&v77);
        sub_1E139CEA8(&v73);

        result = swift_unknownObjectRelease();
        v3 = v67;
        goto LABEL_34;
      }

      v24 = "DER_SUBSCRIPTION_OFFER";
      if (v23)
      {
        if (v23 != 8)
        {
          goto LABEL_30;
        }

        v36 = *(&v75 + 1) | *(&v76 + 1);
        v37 = *(&v74 + 1) | v74 | *(&v73 + 1);
        if ((v76 != 0x8000000000000000 || v36 | v73 | v75 | v37) && (v76 != 0x8000000000000000 || v73 != 4 || v36 | v75 | v37))
        {
          goto LABEL_30;
        }
      }

      else if (v73 != 1)
      {
        goto LABEL_30;
      }

      if (*(v6 + 121))
      {
        v24 = "DER_PRE_BUY_NOT_FREE";
      }

      else
      {
        v24 = "DER_PRE_REDOWNLOAD";
      }

      if (*(v6 + 121))
      {
        v22 = 0xD000000000000020;
      }

      else
      {
        v22 = 0xD000000000000024;
      }

      goto LABEL_30;
    }

    v25 = (v1 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_stateMachine);
    *v25 = 0;
    v25[1] = 0;
    swift_unknownObjectRelease();
    v26 = sub_1E1777788();
    v28 = v27;
    v29 = *(v1 + v5);
    if (v29)
    {
      v30 = *(v29 + 88);
      if (*(v30 + 16))
      {

        v31 = sub_1E1595560(0);
        if (v32)
        {
          v33 = (*(v30 + 56) + 16 * v31);
          v35 = *v33;
          v34 = v33[1];

LABEL_33:
          *&v77 = v26;
          *(&v77 + 1) = v28;
          *&v78 = v35;
          *(&v78 + 1) = v34;
          v79 = xmmword_1E1B04490;
          memset(v80, 0, 25);
          v83 = xmmword_1E1B04490;
          *v84 = 0uLL;
          *&v84[9] = *&v80[9];
          v81 = v77;
          v82 = v78;
          v84[25] = 0;
          sub_1E177803C(&v81);
          sub_1E1308058(&v77, &qword_1ECEB8E70);

          goto LABEL_34;
        }
      }
    }

    v35 = 0;
    v34 = 0;
    goto LABEL_33;
  }

LABEL_34:
  v42 = *(v3 + 16);
  if (!v42)
  {
    v47 = v2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode;
    *v47 = 0;
    *(v47 + 8) = 1;
    goto LABEL_58;
  }

  if ((sub_1E1778124(v43) & 1) == 0)
  {

    v48 = v2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode;
    *v48 = 0;
    *(v48 + 8) = 0;
    goto LABEL_58;
  }

  v44 = *(v2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_offerDisplayProperties);
  if (v44)
  {
    v45 = *(v44 + 121);
    v46 = OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_stateMachine;
    if (!*(v2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_stateMachine))
    {
      goto LABEL_52;
    }
  }

  else
  {
    v46 = OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_stateMachine;
    if (!*(v2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_stateMachine))
    {
      goto LABEL_54;
    }

    v45 = 0;
  }

  v49 = *(v2 + v46 + 8);
  v50 = swift_getObjectType();
  v51 = *(v49 + 16);
  swift_unknownObjectRetain();
  v51(&v73, v50, v49);
  swift_unknownObjectRelease();
  v68 = v73;
  v69 = v74;
  v70 = v75;
  v71 = v76;
  if (!(v76 >> 60))
  {
    if (v73 == 1)
    {
      goto LABEL_52;
    }

LABEL_53:
    v54 = 1;
    goto LABEL_55;
  }

  if (v76 >> 60 != 8 || ((v52 = *(&v70 + 1) | *(&v71 + 1), v53 = *(&v69 + 1) | v69 | *(&v68 + 1), v76 != 0x8000000000000000) || v52 | v73 | v70 | v53) && (v76 != 0x8000000000000000 || v73 != 4 || v52 | v70 | v53))
  {
    sub_1E139CEA8(&v68);
    goto LABEL_53;
  }

LABEL_52:
  if (v45)
  {
    goto LABEL_53;
  }

LABEL_54:
  v54 = 2;
LABEL_55:
  v55 = v2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode;
  *v55 = v54;
  *(v55 + 8) = 0;
  if (*(v42 + OBJC_IVAR____TtC11AppStoreKit19InAppPurchaseLockup_isSubscription) == 1)
  {
    v56._countAndFlagsBits = 0xD000000000000026;
    v56._object = 0x80000001E1B749C0;
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    v58 = localizedString(_:comment:)(v56, v57);

    *(v2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_pageTitle) = v58;
  }

  else
  {
  }

LABEL_58:
  if ((*(v2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode + 8) & 1) == 0)
  {
    v59 = *(v2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_mode);
    v60 = v2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v61 = *(v60 + 8);
      v62 = swift_getObjectType();
      v63 = v2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_pageTitle;
      v64 = *(v2 + OBJC_IVAR____TtC11AppStoreKit33InAppPurchaseInstallPagePresenter_pageTitle);
      v65 = *(v63 + 8);
      v66 = *(v61 + 32);

      v66(v59, v3, v64, v65, v62, v61);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}