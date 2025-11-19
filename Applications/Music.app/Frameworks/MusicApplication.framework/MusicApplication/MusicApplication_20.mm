uint64_t sub_1B600C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;
  v19 = a3;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (*(v19 + 48) + 24 * (__clz(__rbit64(v7)) | (v11 << 6)));
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v18[0] = *v12;
      v18[1] = v14;
      v18[2] = v15;
      sub_2BB90();
      v16 = a1(v18);
      if (v3)
      {
        sub_2BBCC();

        return v13;
      }

      if (v16)
      {
        break;
      }

      v7 &= v7 - 1;
      result = sub_2BBCC();
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return v13;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B6194@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_808B0(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_9ACFC(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_12E1C(v21, &qword_DF5020);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B62F4@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_9ACA0(*(v4 + 56) + 40 * v13, &v22);
    v20 = v23;
    v21 = v22;
    v17 = v24;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v19 = v1[5];
      *&v22 = v16;
      *(&v22 + 1) = v15;
      v24 = v20;
      v23 = v21;
      v25 = v17;
      v19(&v22);
      return sub_12E1C(&v22, &qword_DF4F88);
    }

    else
    {
LABEL_13:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1B6440(void *a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    v4 = [a1 results];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v4 firstItem];

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v10 = [v7 innermostModelObject];
        a3();
        swift_unknownObjectRelease();

        return;
      }

      swift_unknownObjectRelease();
    }
  }

  sub_1CE268();
  v8 = swift_allocError();
  *v9 = 2;
  (a3)(v8, 1);
}

uint64_t sub_1B6578@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1B6630(a1);
  if (*(a2 + 16) && (v7 = sub_2EBF88(v5, v6), (v8 & 1) != 0))
  {
    sub_9ACA0(*(a2 + 56) + 40 * v7, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

NSString sub_1B65F8()
{
  result = sub_AB9260();
  qword_E71170 = result;
  return result;
}

uint64_t sub_1B6630(char a1)
{
  result = 0x6974736567677573;
  switch(a1)
  {
    case 1:
      result = 0x73746C75736572;
      break;
    case 2:
      result = 0x6C75736552706F74;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 25705;
      break;
    case 5:
      result = 1635018093;
      break;
    case 6:
      result = 0x7363697274656DLL;
      break;
    case 7:
      result = 0x726564726FLL;
      break;
    case 8:
      result = 1635017060;
      break;
    case 9:
      result = 1701667182;
      break;
    case 10:
      result = 0x6554686372616573;
      break;
    case 11:
      result = 0x5479616C70736964;
      break;
    case 12:
      result = 0x656372756F736572;
      break;
    case 13:
      result = 1684957547;
      break;
    case 14:
      result = 0x746E65746E6F63;
      break;
    case 15:
      result = 0x7365706F6373;
      break;
    case 16:
      result = 0x737463656A626FLL;
      break;
    case 17:
      result = 0x73636972796CLL;
      break;
    case 18:
      result = 0x7374657070696E73;
      break;
    case 19:
      result = 1954047348;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B68C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CEC30();
  *a1 = result;
  return result;
}

uint64_t sub_1B68F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6630(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B6920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v38 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFFF0);
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for Search.Item(0);
  sub_1D30D0();
  sub_1D3018(&qword_DF4FB0, type metadata accessor for Search.Item);
  sub_AB5110();
  v12 = *v4;
  if ((*(v4 + 40) & 1) == 0)
  {
    v16 = v12[2];
    if (!v16)
    {
      return (*(v37 + 32))(v38, v10, v8);
    }

    v17._rawValue = &off_CF0790;
    sub_AB50D0(v17);
    v18 = (v12 + 4);
    v40 = xmmword_AF4EC0;
    while (1)
    {
      sub_9ACA0(v18, v45);
      v23.isa = sub_ABACE0().isa;
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v19 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8C8);
        v20 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
        v21 = swift_allocObject();
        *(v21 + 16) = v40;
        *(v21 + v20) = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v44[0] = 3;
        v22 = v23.isa;
        sub_AB5090();
      }

      else
      {

        sub_9ACA0(v45, v44);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_8085C(v45);
          goto LABEL_8;
        }

        v39 = v41;
        v25 = v42;
        v26 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA8C8);
        v27 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
        v28 = swift_allocObject();
        v29 = v39;
        *(v28 + 16) = v40;
        v30 = v28 + v27;
        *v30 = v29;
        *(v30 + 16) = v25;
        *(v30 + 24) = v26;
        swift_storeEnumTagMultiPayload();
        v44[0] = 3;
        sub_AB5090();
      }

      sub_8085C(v45);

LABEL_8:
      v18 += 40;
      if (!--v16)
      {
        return (*(v37 + 32))(v38, v10, v8);
      }
    }
  }

  v13 = *(v4 + 8);
  if (a2)
  {
    v14 = a1;
    v15 = a2;
    *&v40 = a3;
  }

  else
  {
    if (!v12[2])
    {
      return (*(v37 + 32))(v38, v10, v8);
    }

    v14 = v12[4];
    v15 = v12[5];
    v31 = v12[7];

    *&v40 = v31;
  }

  v32 = *(v13 + 16);
  sub_1D3124(a1, a2);
  if (v32 && (sub_2EBF88(v14, v15), (v33 & 1) != 0))
  {
    v45[0] = &_swiftEmptySetSingleton;

    if (sub_1B5904(v34, v45)[2])
    {
      v35._rawValue = &off_CF07B8;
      sub_AB50D0(v35);
      v44[0] = 3;
      sub_AB5090();
    }
  }

  else
  {
  }

  return (*(v37 + 32))(v38, v10, v8);
}

void *sub_1B6DE8()
{
  if (*(v0 + 40) == 1)
  {
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }
}

void *sub_1B6E3C()
{
  v1 = 16;
  if (*(v0 + 40))
  {
    v1 = 32;
  }

  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B6E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_988E8(_swiftEmptyArrayStorage);
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (*(a1 + 40))
  {
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);

    v13 = swift_allocObject();
    v64 = v9;
    v65 = v8;
    v66 = v10;
    v67 = v11;
    v68 = v12;
    v13[2] = v9;
    v13[3] = v8;
    v13[4] = v10;
    v13[5] = v11;
    v13[6] = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    *(v14 + 32) = v13;

    sub_15F84(&v66, v62, &qword_DF4FC0);
    sub_15F84(&v64, v62, &qword_DF4FC8);
    sub_15F84(&v65, v62, &qword_DF4FD0);
    sub_15F84(&v67, v62, &unk_E00000);
    sub_15F84(&v68, v62, &qword_DF4F78);
    v15 = sub_1D34C0;
    v16 = v10;
LABEL_28:
    sub_15F84(v3 + 40, v62, &qword_DF4F58);
    v49 = *v63;
    if (*v63)
    {
      v50 = *&v63[8];
      __swift_project_boxed_opaque_existential_1(v62, *v63);
      v51 = *(v50 + 16);

      v52 = v51(v49, v50);
      __swift_destroy_boxed_opaque_existential_0(v62);
    }

    else
    {

      sub_12E1C(v62, &qword_DF4F58);
      v52 = [objc_opt_self() emptyPropertySet];
    }

    sub_1CDA30(v16, v52, v15, v14);
  }

  v58 = *(a1 + 8);
  v59 = a2;
  v60 = *(a1 + 16);
  v61 = v3;
  v55 = v7;
  v17 = sub_97100(_swiftEmptyArrayStorage);
  v56 = swift_allocObject();
  *(v56 + 16) = v9;
  v18 = *(v9 + 16);

  v57 = v9;
  if (v18)
  {
    v19 = v9;
    v20 = 0;
    v21 = v19 + 32;
    v54 = v21;
    while (2)
    {
      v22 = v21 + 40 * v20;
      v23 = v20;
      while (1)
      {
        if (v23 >= v18)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v20 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_33;
        }

        *v62 = v23;
        sub_9ACA0(v22, &v62[8]);
        if (!*&v63[8])
        {
          goto LABEL_23;
        }

        v24 = *v62;
        *v62 = *&v62[8];
        *&v62[16] = *v63;
        *v63 = *&v63[8];
        v25.isa = sub_ABACE0().isa;
        sub_8085C(v62);
        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (v26)
        {
          break;
        }

        ++v23;
        v22 += 40;
        if (v20 == v18)
        {
          goto LABEL_23;
        }
      }

      v27 = [v26 originalIdentifierSet];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v62 = v17;
      v30 = sub_2EC474(v27);
      v31 = v17[2];
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_35;
      }

      if (v17[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = v29;
          sub_3312A0();
          v29 = v42;
        }

        v35 = v27;
        v17 = *v62;
        if ((v29 & 1) == 0)
        {
LABEL_16:
          v17[(v30 >> 6) + 8] |= 1 << v30;
          *(v17[6] + 8 * v30) = v35;
          *(v17[7] + 8 * v30) = v24;

          v39 = v17[2];
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
            goto LABEL_36;
          }

          v17[2] = v41;
LABEL_22:
          v21 = v54;
          if (v20 != v18)
          {
            continue;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v34 = v29;
        sub_327954(v33, isUniquelyReferenced_nonNull_native);
        v35 = v27;
        v36 = sub_2EC474(v27);
        if ((v34 & 1) != (v37 & 1))
        {
          goto LABEL_37;
        }

        v30 = v36;
        v38 = v34;
        v17 = *v62;
        if ((v38 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      break;
    }

    *(v17[7] + 8 * v30) = v24;

    goto LABEL_22;
  }

LABEL_23:
  v43 = v17[2];
  if (!v43)
  {
    v44 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v44 = sub_133030(v17[2], 0);
  v45 = sub_1311F0(v62, v44 + 4, v43, v17);
  swift_bridgeObjectRetain_n();
  sub_2BB88();
  if (v45 == v43)
  {

LABEL_27:
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *v62 = v55;
    sub_93E20(v44, 0x73746E6968, 0xE500000000000000, v46);
    v16 = *v62;
    v14 = swift_allocObject();
    *(v14 + 16) = v59;
    *(v14 + 24) = a3;
    *(v14 + 32) = v17;
    *(v14 + 40) = v56;
    *(v14 + 48) = v57;
    *(v14 + 56) = v58;
    *(v14 + 64) = v60;
    v47 = *(a1 + 16);
    *(v14 + 72) = *a1;
    *(v14 + 88) = v47;
    *(v14 + 97) = *(a1 + 25);
    v48 = v60;

    sub_1D3578(a1, v62);
    v15 = sub_1D3540;
    v3 = v61;
    goto LABEL_28;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_13C80(0, &unk_DE8180);
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

id sub_1B7474(void *a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  result = [a1 results];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = [result allItems];

  v16 = sub_AB9760();
  v17 = sub_12DBC0(v16);

  if (v17)
  {
    v52 = a3;
    v56 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v19 = 0;
      v59 = v17;
      v60 = v17 & 0xC000000000000001;
      v55 = v17 + 32;
      v58 = i;
      while (1)
      {
LABEL_8:
        if (v60)
        {
          v20 = sub_361248(v19, v17);
        }

        else
        {
          if (v19 >= *(v56 + 16))
          {
            goto LABEL_35;
          }

          v20 = *(v55 + 8 * v19);
        }

        v21 = v20;
        v22 = __OFADD__(v19, 1);
        v23 = v19 + 1;
        if (v22)
        {
          goto LABEL_34;
        }

        v61 = v23;
        v24 = 1 << *(a5 + 32);
        v25 = v24 < 64 ? ~(-1 << v24) : -1;
        v26 = v25 & *(a5 + 64);
        v27 = (v24 + 63) >> 6;

        v28 = 0;
        if (!v26)
        {
          break;
        }

        while (1)
        {
          v29 = v28;
LABEL_21:
          v30 = (v29 << 9) | (8 * __clz(__rbit64(v26)));
          v31 = *(*(a5 + 56) + v30);
          v32 = *(*(a5 + 48) + v30);
          v17 = [v21 originalIdentifierSet];
          v33 = [v17 intersectsSet:v32];

          if (v33)
          {
            break;
          }

          v26 &= v26 - 1;

          v28 = v29;
          if (!v26)
          {
            goto LABEL_18;
          }
        }

        sub_13C80(0, &qword_DE8028);
        sub_1D3604(&qword_DF4FE0, &qword_DE8028);
        v34 = v21;
        sub_ABAD10();
        swift_beginAccess();
        v35 = *(a6 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a6 + 16) = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_284554(v35);
          *(a6 + 16) = v35;
        }

        i = v58;
        v17 = v59;
        v19 = v61;
        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        if (v31 >= *(v35 + 2))
        {
          goto LABEL_37;
        }

        sub_9AD68(&v62, &v35[40 * v31 + 32]);
        *(a6 + 16) = v35;
        swift_endAccess();

        if (v61 == v58)
        {
          goto LABEL_39;
        }
      }

LABEL_18:
      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v29 >= v27)
        {

          i = v58;
          v17 = v59;
          v19 = v61;
          if (v61 == v58)
          {
            goto LABEL_39;
          }

          goto LABEL_8;
        }

        v26 = *(a5 + 64 + 8 * v29);
        ++v28;
        if (v26)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }

LABEL_39:
    swift_beginAccess();
    v39 = *(a6 + 16);
    v40 = 16;
    if (*(a10 + 40))
    {
      v40 = 32;
    }

    v41 = *(a10 + v40);
    v42 = v41;

    if (i)
    {
      type metadata accessor for BindingRequestResponseInvalidation();
      v43 = MPModelResponseDidInvalidateNotification;
      UIScreen.Dimensions.size.getter(v44);
      *&v64 = &type metadata for NotificationTrigger;
      *(&v64 + 1) = &protocol witness table for NotificationTrigger;
      v62 = v45;
      *&v63 = v46;
      v47 = v43;
      v48 = a1;
      v49 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v62);
      v50 = sub_1D3018(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation);
    }

    else
    {
      v50 = 0;
      v49 = 0;
    }

    v62 = v39;
    *&v63 = a8;
    v64 = 0uLL;
    *(&v63 + 1) = v41;
    v65 = 0;

    v51 = v42;
    v52(&v62, v49, v50);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
LABEL_30:
    sub_1D35B0();
    v37 = swift_allocError();
    *v38 = a2;
    *(v38 + 8) = 3;
    v62 = v37;
    v63 = 0u;
    v64 = 0u;
    v65 = 256;
    swift_errorRetain();
    a3(&v62, 0, 0);
  }
}

uint64_t sub_1B79EC(void *a1, uint64_t a2, void (*a3)(void ***, uint64_t, uint64_t), uint64_t a4, void *a5)
{
  if (a1)
  {
    v9 = [a1 results];
    if (v9)
    {
      v10 = v9;
      v41 = sub_98A34(_swiftEmptyArrayStorage);
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = &v41;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1D4554;
      *(v12 + 24) = v11;
      *(&v39 + 1) = sub_1D3664;
      v40 = v12;
      aBlock = _NSConcreteStackBlock;
      *&v38 = 1107296256;
      *(&v38 + 1) = sub_1B7EB0;
      *&v39 = &block_descriptor_105;
      v13 = _Block_copy(&aBlock);
      v14 = v10;

      [v14 enumerateSectionsUsingBlock:v13];
      _Block_release(v13);
      LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

      if (v10)
      {
        __break(1u);
      }

      else
      {
        v15 = v41;
        swift_beginAccess();
        a5[3] = v15;

        if (qword_DE6970 == -1)
        {
LABEL_5:
          v35 = v14;
          swift_beginAccess();
          v16 = qword_DF4BE0;
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36[0] = a5[5];
          a5[5] = 0x8000000000000000;
          sub_1D2D68(v16, sub_1CB8B0, 0, isUniquelyReferenced_nonNull_native, v36);

          v18 = v36[0];
          a5[5] = v36[0];
          swift_endAccess();
          swift_beginAccess();
          v19 = a5[2];
          v20 = a5[3];
          v21 = a5[4];
          v22 = a5[6];
          aBlock = v19;
          *&v38 = v20;
          *(&v38 + 1) = v21;
          *&v39 = v18;
          *(&v39 + 1) = v22;
          LOWORD(v40) = 1;
          type metadata accessor for BindingRequestResponseInvalidation();
          v23 = MPModelResponseDidInvalidateNotification;
          UIScreen.Dimensions.size.getter(v24);
          v36[3] = &type metadata for NotificationTrigger;
          v36[4] = &protocol witness table for NotificationTrigger;
          v36[0] = v25;
          v36[1] = v26;
          v27 = v22;
          v28 = v23;
          v29 = a1;

          v30 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(v36);
          v31 = sub_1D3018(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation);
          a3(&aBlock, v30, v31);
        }
      }

      swift_once();
      goto LABEL_5;
    }
  }

  sub_1D35B0();
  v33 = swift_allocError();
  *v34 = a2;
  *(v34 + 8) = 3;
  aBlock = v33;
  v38 = 0u;
  v39 = 0u;
  LOWORD(v40) = 256;
  swift_errorRetain();
  a3(&aBlock, 0, 0);
}

uint64_t sub_1B7EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1B7F1C(void **a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v276 = a2;
  v277 = a3;
  v6 = sub_AB7C10();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v247 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB7C50();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v247 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_AB7C20();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (v247 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v274 = a1;
  v18 = *a1;
  if (!v18)
  {
    memset(aBlock, 0, sizeof(aBlock));
    goto LABEL_8;
  }

  v271 = v17;
  sub_1B6578(1, v18, aBlock);
  if (!*&aBlock[24])
  {
LABEL_8:
    sub_12E1C(aBlock, &qword_DF2BD0);
    goto LABEL_9;
  }

  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00000);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    sub_1D35B0();
    v28 = swift_allocError();
    *v29 = 1;
    *(v29 + 8) = 1;
    *aBlock = v28;
    memset(&aBlock[8], 0, 32);
    LOWORD(v282) = 256;
    (v276)(aBlock, 0, 0);
  }

  v257 = v15;
  v258 = v14;
  v259 = v13;
  v260 = v11;
  v261 = v9;
  countAndFlagsBits = v278._countAndFlagsBits;
  v20 = _swiftEmptyArrayStorage;
  v269 = sub_988E8(_swiftEmptyArrayStorage);
  v21 = swift_allocObject();
  v22 = sub_1CE69C(v18);
  v268 = v21;
  *(v21 + 16) = v22;
  v267 = v21 + 16;
  v273 = sub_AB92A0();
  v275 = v23;
  v25 = *(v274 + 8);
  v24 = *(v274 + 16);
  v26 = *(v274 + 24);
  v270 = v4;
  if (!(v26 >> 6))
  {
    sub_1B6578(0, countAndFlagsBits, aBlock);
    if (*&aBlock[24])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FF0);
      if (swift_dynamicCast())
      {
        LODWORD(v256) = v26;
        v30 = v278._countAndFlagsBits;
        v31 = swift_allocObject();
        *(v31 + 16) = _swiftEmptyArrayStorage;
        v32 = *(v30 + 16);
        v255 = v24;
        v254 = v25;
        v265 = v30;
        if (!v32)
        {
          v271 = _swiftEmptyArrayStorage;
LABEL_188:

          v275 = v31;
          v157 = *(v31 + 16);
          v158 = _swiftEmptyArrayStorage;
          v278._countAndFlagsBits = _swiftEmptyArrayStorage;
          v159 = *(v157 + 16);
          if (v159)
          {
            v160 = v157 + 32;

            v161 = v276;
            do
            {
              sub_9ACA0(v160, aBlock);
              v162.isa = sub_ABACE0().isa;
              sub_8085C(aBlock);
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                sub_AB9730();
                if (*(&dword_10 + (v278._countAndFlagsBits & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v278._countAndFlagsBits & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_AB97A0();
                }

                sub_AB97F0();
                v158 = v278._countAndFlagsBits;
              }

              else
              {
              }

              v160 += 40;
              --v159;
            }

            while (v159);
          }

          else
          {
            v161 = v276;
          }

          v4 = v270;
          sub_1BA808(v271, v267);

          v163 = v269;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *aBlock = v163;
          sub_93E20(v158, 0x73746E6968, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
          v269 = *aBlock;
          v165 = v274;
          v278._countAndFlagsBits = *(v274 + 32);
          v113 = swift_allocObject();
          *(v113 + 2) = v161;
          v166 = v275;
          *(v113 + 3) = v277;
          *(v113 + 4) = v166;
          *(v113 + 5) = v268;
          v167 = *(v165 + 16);
          *(v113 + 3) = *v165;
          *(v113 + 4) = v167;
          *(v113 + 10) = *(v165 + 32);

          sub_1D2B24(v254, v255, v256);
          sub_15F84(&v278, aBlock, &qword_DF4F78);

          v168 = sub_1D36A8;
LABEL_285:
          v243 = v168;
          goto LABEL_286;
        }

        v33 = v30 + 32;
        v271 = _swiftEmptyArrayStorage;
        v34 = &type metadata for AnyHashable;
        v35 = &type metadata for String;
        while (1)
        {
          v39 = *v33;
          if (!*(*v33 + 16))
          {
            goto LABEL_23;
          }

          v40 = sub_2EBF88(1684957547, 0xE400000000000000);
          if ((v41 & 1) == 0)
          {
            goto LABEL_55;
          }

          sub_9ACA0(*(v39 + 56) + 40 * v40, aBlock);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_55;
          }

          v42 = v35;
          v43._rawValue = &off_CF0888;
          v44 = sub_ABB140(v43, v278);

          if (v44)
          {
            if (v44 == 1)
            {
              if (!*(v39 + 16))
              {
                goto LABEL_55;
              }

              v45 = sub_2EBF88(0x746E65746E6F63, 0xE700000000000000);
              if ((v46 & 1) == 0)
              {
                goto LABEL_55;
              }

              sub_9ACA0(*(v39 + 56) + 40 * v45, aBlock);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_55;
              }

              if (!*(v278._countAndFlagsBits + 16) || (v264 = v278._countAndFlagsBits, v47 = sub_2EBF88(v273, v275), (v48 & 1) == 0))
              {

LABEL_55:

                goto LABEL_23;
              }

              sub_9ACA0(v264[7] + 40 * v47, aBlock);
              v49.isa = sub_ABACE0().isa;
              sub_8085C(aBlock);
              objc_opt_self();
              v50 = swift_dynamicCastObjCClass();
              if (!v50)
              {

                goto LABEL_23;
              }

              v278._countAndFlagsBits = v50;
              v262 = sub_13C80(0, &unk_DE8180);
              sub_1D3604(&qword_DF4FF8, &unk_DE8180);
              v263 = v49.isa;
              sub_ABAD10();
              v51 = *(v31 + 16);
              v52 = swift_isUniquelyReferenced_nonNull_native();
              *(v31 + 16) = v51;
              v53 = v34;
              if ((v52 & 1) == 0)
              {
                v51 = sub_6B8AC(0, *(v51 + 2) + 1, 1, v51);
                *(v31 + 16) = v51;
              }

              v55 = *(v51 + 2);
              v54 = *(v51 + 3);
              v56 = v55 + 1;
              if (v55 >= v54 >> 1)
              {
                v262 = v55 + 1;
                v78 = sub_6B8AC((v54 > 1), v55 + 1, 1, v51);
                v56 = v262;
                v51 = v78;
              }

              *(v51 + 2) = v56;
              v57 = &v51[40 * v55];
              v58 = *aBlock;
              v59 = *&aBlock[16];
              *(v57 + 8) = *&aBlock[32];
              *(v57 + 2) = v58;
              *(v57 + 3) = v59;
              *(v31 + 16) = v51;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v271 = sub_6BA14(0, v271[2] + 1, 1, v271);
              }

              v61 = v271[2];
              v60 = v271[3];
              if (v61 >= v60 >> 1)
              {
                v271 = sub_6BA14((v60 > 1), v61 + 1, 1, v271);
              }

              v62 = v271;
              v271[2] = v61 + 1;
              v62[v61 + 4] = v264;
              goto LABEL_57;
            }
          }

          else if (*(v39 + 16))
          {
            v63 = sub_2EBF88(0x6554686372616573, 0xEA00000000006D72);
            if (v64)
            {
              sub_9ACA0(*(v39 + 56) + 40 * v63, aBlock);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_55;
              }

              v53 = v34;
              object = v278._object;
              if (*(v39 + 16) && (v264 = v278._countAndFlagsBits, v66 = sub_2EBF88(0x5479616C70736964, 0xEB000000006D7265), (v67 & 1) != 0) && (sub_9ACA0(*(v39 + 56) + 40 * v66, aBlock), (swift_dynamicCast() & 1) != 0))
              {
                v68 = v278._countAndFlagsBits;
                v69 = v278._object;
                v278._countAndFlagsBits = v264;
                v278._object = object;
                v279 = v68;
                v280 = v69;
                sub_1D36AC();
                sub_ABAD10();
                v70 = *(v31 + 16);
                v71 = swift_isUniquelyReferenced_nonNull_native();
                *(v31 + 16) = v70;
                if ((v71 & 1) == 0)
                {
                  v70 = sub_6B8AC(0, *(v70 + 2) + 1, 1, v70);
                  *(v31 + 16) = v70;
                }

                v73 = *(v70 + 2);
                v72 = *(v70 + 3);
                v74 = (v73 + 1);
                if (v73 >= v72 >> 1)
                {
                  v264 = (v73 + 1);
                  v79 = sub_6B8AC((v72 > 1), v73 + 1, 1, v70);
                  v74 = v264;
                  v70 = v79;
                }

                *(v70 + 2) = v74;
                v75 = &v70[40 * v73];
                v76 = *aBlock;
                v77 = *&aBlock[16];
                *(v75 + 8) = *&aBlock[32];
                *(v75 + 2) = v76;
                *(v75 + 3) = v77;
                *(v31 + 16) = v70;
              }

              else
              {
              }

LABEL_57:

              v34 = v53;
              goto LABEL_22;
            }
          }

LABEL_22:
          v35 = v42;
LABEL_23:
          v33 += 8;
          if (!--v32)
          {
            goto LABEL_188;
          }
        }
      }
    }

    else
    {

      sub_12E1C(aBlock, &qword_DF2BD0);
    }

    sub_1D35B0();
    v118 = swift_allocError();
    *v119 = 0;
    *(v119 + 8) = 1;
    *aBlock = v118;
    memset(&aBlock[8], 0, 32);
    LOWORD(v282) = 256;
    (v276)(aBlock, 0, 0);
  }

  if (v26 >> 6 == 1)
  {
  }

  v254 = v25;
  v255 = v24;
  v249 = v10;
  type metadata accessor for CompoundRequestResponseInvalidation();
  v36 = CompoundRequestResponseInvalidation.__allocating_init()();
  v283 = &_swiftEmptySetSingleton;
  sub_1B6578(5, v18, aBlock);
  v251 = v6;
  v250 = v7;
  if (!*&aBlock[24])
  {
    sub_12E1C(aBlock, &qword_DF2BD0);
LABEL_62:
    memset(aBlock, 0, sizeof(aBlock));
    sub_12E1C(aBlock, &qword_DF2BD0);
    v38 = 0;
    memset(aBlock, 0, sizeof(aBlock));
LABEL_63:
    sub_12E1C(aBlock, &qword_DF2BD0);
    goto LABEL_64;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_62;
  }

  v37 = v278._countAndFlagsBits;
  if (!v278._countAndFlagsBits)
  {
    goto LABEL_62;
  }

  sub_1B6578(1, v37, aBlock);

  if (*&aBlock[24])
  {
    if (swift_dynamicCast())
    {
      v38 = v278._countAndFlagsBits;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    sub_12E1C(aBlock, &qword_DF2BD0);
    v38 = 0;
  }

  sub_1B6578(6, v37, aBlock);

  if (!*&aBlock[24])
  {
    goto LABEL_63;
  }

  if (swift_dynamicCast())
  {
    sub_1D3700(&qword_DF4F90, &unk_E00000);
    sub_ABAD10();
    sub_2E58C4(aBlock, 0x7363697274656DLL, 0xE700000000000000);
  }

LABEL_64:
  v266 = countAndFlagsBits;
  v252 = v36;
  LODWORD(v256) = v26;
  if (!v38)
  {
    memset(aBlock, 0, sizeof(aBlock));
    goto LABEL_132;
  }

  sub_1B6578(7, v38, aBlock);

  if (!*&aBlock[24])
  {
LABEL_132:
    sub_12E1C(aBlock, &qword_DF2BD0);
    goto LABEL_133;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_133:
    v82 = _swiftEmptyArrayStorage;
LABEL_134:
    v112 = v274;
    v284 = *(v274 + 32);
    v113 = swift_allocObject();
    v114 = v277;
    *(v113 + 2) = v276;
    *(v113 + 3) = v114;
    v115 = v269;
    *(v113 + 4) = v82;
    *(v113 + 5) = v115;
    *(v113 + 6) = v268;
    v116 = *(v112 + 16);
    *(v113 + 56) = *v112;
    *(v113 + 72) = v116;
    *(v113 + 11) = *(v112 + 32);
    *(v113 + 12) = v36;
    if (*(v82 + 2))
    {
      v6 = v256;
      if (v256)
      {
        v117 = sub_ABB3C0();

        sub_1D2B24(v254, v255, v6);
        sub_15F84(&v284, aBlock, &qword_DF4F78);

        if ((v117 & 1) == 0)
        {

LABEL_139:

LABEL_284:
          v168 = sub_1D3690;
          goto LABEL_285;
        }
      }

      else
      {

        sub_1D2B24(v254, v255, v6);
        sub_15F84(&v284, aBlock, &qword_DF4F78);
      }

      v263 = v113;
      v277 = v82;
      v120 = *(v82 + 2);
      if (v120)
      {
        v121 = 0;
        v265 = (v277 + 32);
        v262 = v120;
        while (1)
        {
          if (v121 >= *(v277 + 16))
          {
            goto LABEL_305;
          }

          if (!*(countAndFlagsBits + 16))
          {
            goto LABEL_208;
          }

          v122 = &v265[4 * v121];
          v123 = *v122;
          v6 = v122[1];
          v124 = v122[3];

          v125 = sub_2EBF88(v123, v6);
          if ((v126 & 1) == 0)
          {
            break;
          }

          sub_9ACA0(*(countAndFlagsBits + 56) + 40 * v125, aBlock);
          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          v276 = v124;
          v36 = v278._countAndFlagsBits;
          if (!*(v278._countAndFlagsBits + 16) || (v127 = sub_2EBF88(1635017060, 0xE400000000000000), (v128 & 1) == 0))
          {

            goto LABEL_208;
          }

          sub_9ACA0(*(v36 + 56) + 40 * v127, aBlock);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FF0);
          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_207;
          }

          v129 = *(v278._countAndFlagsBits + 16);
          v274 = v278._countAndFlagsBits;
          if (v129)
          {
            v130 = v278._countAndFlagsBits + 32;
            do
            {
              v132 = *v130;
              if (*(*v130 + 16))
              {

                v133 = sub_2EBF88(v273, v275);
                if (v134)
                {
                  sub_9ACA0(*(v132 + 56) + 40 * v133, aBlock);
                  v135.isa = sub_ABACE0().isa;
                  sub_8085C(aBlock);
                  objc_opt_self();
                  v136 = swift_dynamicCastObjCClass();
                  if (v136 && *(v132 + 16) && (v137 = v136, v138 = sub_2EBF88(1701869940, 0xE400000000000000), (v139 & 1) != 0) && (sub_9ACA0(*(v132 + 56) + 40 * v138, aBlock), (swift_dynamicCast() & 1) != 0))
                  {
                    v140 = v278._countAndFlagsBits;
                    v141 = v278._object;
                    v142 = v135.isa;
                    v143 = sub_1CF1DC(v140, v141);
                    v4 = v270;
                    v264 = v142;
                    v256 = v143;
                    switch(v143)
                    {
                      case 1:
                        v144 = &qword_DE8E90;
                        goto LABEL_179;
                      case 2:
                        v144 = &qword_DE8E78;
                        goto LABEL_179;
                      case 4:
                      case 9:
                      case 12:
                        v144 = &unk_DE8EB0;
                        goto LABEL_179;
                      case 5:
                        v144 = &unk_E087D0;
                        goto LABEL_179;
                      case 8:
                      case 10:
                        v144 = &unk_DE9C00;
                        goto LABEL_179;
                      case 11:
                        v144 = &unk_DE8EC0;
                        goto LABEL_179;
                      case 13:
                        v144 = &unk_DF1280;
                        goto LABEL_179;
                      case 14:
                        v144 = &qword_DED7C0;
                        goto LABEL_179;
                      case 15:
                        v144 = &unk_DE8EA0;
                        goto LABEL_179;
                      case 16:

                        break;
                      default:
                        v144 = &unk_E04570;
LABEL_179:
                        v145 = sub_13C80(0, v144);
                        sub_13C80(0, &unk_DE8180);
                        v146 = *MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
                        sub_13C80(0, &qword_DEDE20);
                        v147 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v145, v146, 0, v137);
                        if (v148)
                        {
                          v149 = v148;
                          v150 = v147;
                          v151 = v267;
                          swift_beginAccess();
                          v152 = *v151;
                          if (*(v152 + 16) && (v153 = sub_2EBF88(v150, v149), (v154 & 1) != 0))
                          {
                            sub_9ACA0(*(v152 + 56) + 40 * v153, aBlock);
                          }

                          else
                          {
                            memset(aBlock, 0, sizeof(aBlock));
                          }

                          v4 = v270;
                          swift_endAccess();

                          if (*&aBlock[24])
                          {
                            v131 = v264;

                            sub_12E1C(aBlock, &qword_DF2BD0);
                            goto LABEL_158;
                          }

                          sub_12E1C(aBlock, &qword_DF2BD0);
                          sub_1B38C(aBlock, v137, v256);

                          v155 = *aBlock;
                        }

                        else
                        {

                          v156 = v264;

                          v4 = v270;
                        }

                        break;
                    }
                  }

                  else
                  {
                  }
                }

                else
                {
LABEL_158:
                }
              }

              v130 += 8;
              --v129;
            }

            while (v129);

            v20 = _swiftEmptyArrayStorage;
            v120 = v262;
          }

          else
          {
          }

          ++v121;

          countAndFlagsBits = v266;
          if (v121 == v120)
          {
            goto LABEL_208;
          }
        }

LABEL_207:
      }

LABEL_208:

      v6 = v283;
      v113 = v263;
      if (v283[2])
      {
        v4 = type metadata accessor for UnfairLock();
        swift_allocObject();
        countAndFlagsBits = UnfairLock.init()();
        v36 = dispatch_group_create();
        type metadata accessor for BindingRequestResponseInvalidation();
        if (qword_DE6958 != -1)
        {
          goto LABEL_307;
        }

        goto LABEL_210;
      }

      goto LABEL_284;
    }

    sub_1D2B24(v254, v255, v256);
    sub_15F84(&v284, aBlock, &qword_DF4F78);

    goto LABEL_139;
  }

  v80 = v278._countAndFlagsBits;
  v265 = *(v278._countAndFlagsBits + 16);
  if (!v265)
  {

    goto LABEL_133;
  }

  v81 = 0;
  v264 = (v278._countAndFlagsBits + 32);
  v82 = _swiftEmptyArrayStorage;
  v263 = v18;
  v262 = v278._countAndFlagsBits;
  while (1)
  {
    if (v81 >= *(v80 + 16))
    {
LABEL_303:
      __break(1u);
      goto LABEL_304;
    }

    v83 = &v264[2 * v81];
    v36 = *v83;
    v6 = v83[1];
    v84 = *(countAndFlagsBits + 16);

    if (!v84 || (v85 = sub_2EBF88(v36, v6), (v86 & 1) == 0) || (sub_9ACA0(*(countAndFlagsBits + 56) + 40 * v85, aBlock), (swift_dynamicCast() & 1) == 0))
    {
      v87 = 0;
LABEL_78:
      v90 = 1;
      goto LABEL_79;
    }

    v87 = v278._countAndFlagsBits;
    if (!v278._countAndFlagsBits)
    {
      goto LABEL_78;
    }

    if (!*(v278._countAndFlagsBits + 16))
    {
      v90 = 0;
LABEL_79:
      memset(aBlock, 0, sizeof(aBlock));
LABEL_80:
      sub_12E1C(aBlock, &qword_DF2BD0);
LABEL_81:

      v91 = v36;
      v92 = v6;
      goto LABEL_82;
    }

    v88 = sub_2EBF88(1701667182, 0xE400000000000000);
    if (v89)
    {
      sub_9ACA0(*(v87 + 56) + 40 * v88, aBlock);
    }

    else
    {
      memset(aBlock, 0, sizeof(aBlock));
    }

    if (!*&aBlock[24])
    {
      v90 = 0;
      goto LABEL_80;
    }

    v90 = 0;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_81;
    }

    v91 = v278._countAndFlagsBits;
    v92 = v278._object;
LABEL_82:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v82 = sub_6B9F8(0, *(v82 + 2) + 1, 1, v82);
    }

    v94 = *(v82 + 2);
    v93 = *(v82 + 3);
    v95 = v82;
    if (v94 >= v93 >> 1)
    {
      v95 = sub_6B9F8((v93 > 1), v94 + 1, 1, v82);
    }

    *(v95 + 2) = v94 + 1;
    v96 = &v95[32 * v94];
    *(v96 + 4) = v36;
    *(v96 + 5) = v6;
    *(v96 + 6) = v91;
    *(v96 + 7) = v92;
    if (v90)
    {
      memset(aBlock, 0, sizeof(aBlock));
      countAndFlagsBits = v266;
      v4 = v270;
      v20 = _swiftEmptyArrayStorage;
LABEL_96:
      sub_12E1C(aBlock, &qword_DF2BD0);
      v99 = 0;
      goto LABEL_97;
    }

    countAndFlagsBits = v266;
    v20 = _swiftEmptyArrayStorage;
    if (*(v87 + 16) && (v97 = sub_2EBF88(1635017060, 0xE400000000000000), (v98 & 1) != 0))
    {
      sub_9ACA0(*(v87 + 56) + 40 * v97, aBlock);
    }

    else
    {
      memset(aBlock, 0, sizeof(aBlock));
    }

    v4 = v270;

    if (!*&aBlock[24])
    {
      goto LABEL_96;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FF0);
    v99 = swift_dynamicCast() ? v278._countAndFlagsBits : 0;
LABEL_97:
    sub_1BA808(v99, v267);

    if (*(countAndFlagsBits + 16))
    {
      v100 = sub_2EBF88(v36, v6);
      if (v101)
      {
        break;
      }
    }

    v82 = v95;
LABEL_120:
    v80 = v262;
LABEL_121:
    if (++v81 == v265)
    {

      v36 = v252;
      goto LABEL_134;
    }
  }

  sub_9ACA0(*(countAndFlagsBits + 56) + 40 * v100, aBlock);
  v82 = v95;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_119:

    goto LABEL_120;
  }

  v102 = v278._countAndFlagsBits;
  if (!*(v278._countAndFlagsBits + 16) || (v103 = sub_2EBF88(1635017060, 0xE400000000000000), (v104 & 1) == 0) || (sub_9ACA0(*(v102 + 56) + 40 * v103, aBlock), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FF0), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_119;
  }

  v20 = v278._countAndFlagsBits;
  v278._countAndFlagsBits = _swiftEmptyArrayStorage;
  countAndFlagsBits = *(v20 + 16);
  v247[1] = v102;
  if (!countAndFlagsBits)
  {
    v248 = _swiftEmptyArrayStorage;
LABEL_130:
    v110 = v269;
    v111 = swift_isUniquelyReferenced_nonNull_native();
    *aBlock = v110;
    sub_93E20(v248, v36, v6, v111);

    v269 = *aBlock;
    v4 = v270;
    v80 = v262;
    v20 = _swiftEmptyArrayStorage;
    countAndFlagsBits = v266;
    goto LABEL_121;
  }

  v4 = 0;
  v253 = v20 + 32;
  v247[0] = countAndFlagsBits - 1;
  v248 = _swiftEmptyArrayStorage;
LABEL_105:
  v105 = v4;
  while (v105 < *(v20 + 16))
  {
    v4 = *(v253 + 8 * v105);
    if (*(v4 + 16))
    {

      v106 = sub_2EBF88(v273, v275);
      if (v107)
      {
        sub_9ACA0(*(v4 + 56) + 40 * v106, aBlock);
        v108.isa = sub_ABACE0().isa;
        sub_8085C(aBlock);
        objc_opt_self();
        v109 = swift_dynamicCastObjCClass();

        if (v109)
        {
          sub_AB9730();
          if (*(&dword_10 + (v278._countAndFlagsBits & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v278._countAndFlagsBits & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_AB97A0();
          }

          v4 = v105 + 1;
          sub_AB97F0();
          v248 = v278._countAndFlagsBits;
          v82 = v95;
          if (v247[0] != v105)
          {
            goto LABEL_105;
          }

          goto LABEL_130;
        }

        v82 = v95;
      }

      else
      {
      }
    }

    if (countAndFlagsBits == ++v105)
    {
      goto LABEL_130;
    }
  }

LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  swift_once();
LABEL_210:
  v170 = qword_E71170;
  UIScreen.Dimensions.size.getter(v169);
  *&aBlock[24] = &type metadata for NotificationTrigger;
  *&aBlock[32] = &protocol witness table for NotificationTrigger;
  *aBlock = v171;
  *&aBlock[8] = v172;
  v173 = v170;
  v174 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(aBlock);
  v175 = sub_1D3018(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation);
  CompoundRequestResponseInvalidation.append(_:)(v174, v175);

  if (qword_DE6D48 != -1)
  {
    swift_once();
  }

  v176 = sub_AB4BC0();
  __swift_project_value_buffer(v176, static Logger.search);

  v177 = sub_AB4BA0();
  v178 = sub_AB9F10();

  v179 = os_log_type_enabled(v177, v178);
  v273 = countAndFlagsBits;
  v256 = v36;
  v255 = v4;
  if (v179)
  {
    countAndFlagsBits = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *aBlock = v36;
    *countAndFlagsBits = 136446210;
    v278._countAndFlagsBits = *(v6 + 16);
    v180 = sub_ABB330();
    v4 = sub_425E68(v180, v181, aBlock);

    *(countAndFlagsBits + 4) = v4;
    _os_log_impl(&dword_0, v177, v178, "CatalogSearchSource: Need to fetch %{public}s lookup items", countAndFlagsBits, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  v182 = sub_1BB590(v6);

  v183 = v182[8];
  v264 = v182 + 8;
  v184 = 1 << *(v182 + 32);
  v185 = -1;
  if (v184 < 64)
  {
    v185 = ~(-1 << v184);
  }

  v186 = (v185 & v183);
  v262 = (v184 + 63) >> 6;
  v265 = v182;

  v187 = 0;
  v6 = v20;
  while (1)
  {
    v276 = v6;
    if (!v186)
    {
      break;
    }

LABEL_223:
    v189 = *(v265[7] + ((v187 << 9) | (8 * __clz(__rbit64(v186)))));
    v277 = *(v189 + 16);
    v272 = v187;
    if (v277)
    {
      v190 = 0;
      v191 = 0;
      while (1)
      {
        v36 = v190 + 1;
        if (__OFADD__(v190, 1))
        {
          goto LABEL_291;
        }

        v192 = __OFADD__(v191, 50);
        v191 += 50;
        if (v192)
        {
          v191 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v190;
        if (v191 >= v277)
        {
          goto LABEL_231;
        }
      }
    }

    v36 = 0;
LABEL_231:
    *aBlock = v20;
    v275 = v189;

    sub_6D700(0, v36 & ~(v36 >> 63), 0);
    if (v36 < 0)
    {
      goto LABEL_306;
    }

    v193 = *aBlock;
    v267 = v186;
    if (v36)
    {
      v20 = 0;
      v194 = v275;
      v4 = *(v275 + 16);
      v274 = v275 + 32;
      while (v20 < v277)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B30);
        v195 = swift_allocObject();
        if (v20 == 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_293;
        }

        countAndFlagsBits = v20 + 50;
        *(v195 + 32) = v20 + 50;
        *(v195 + 40) = v4;
        if (v4 >= v20 + 50)
        {
          v196 = v20 + 50;
        }

        else
        {
          v196 = v4;
        }

        swift_setDeallocating();
        swift_deallocClassInstance();
        if (v196 < v20)
        {
          goto LABEL_294;
        }

        v197 = *(v194 + 16);
        if (v197 < v20 || v197 < v196)
        {
          goto LABEL_295;
        }

        *aBlock = v193;
        v198 = v194;
        v200 = *(v193 + 16);
        v199 = *(v193 + 24);

        if (v200 >= v199 >> 1)
        {
          sub_6D700((v199 > 1), v200 + 1, 1);
          v193 = *aBlock;
        }

        *(v193 + 16) = v200 + 1;
        v201 = (v193 + 32 * v200);
        v202 = v274;
        v201[4] = v198;
        v201[5] = v202;
        v201[6] = v20;
        v201[7] = (2 * v196) | 1;
        v20 += 50;
        --v36;
        v194 = v198;
        v6 = v276;
        if (!v36)
        {
          goto LABEL_247;
        }
      }

LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
      goto LABEL_303;
    }

    countAndFlagsBits = 0;
    v194 = v275;
LABEL_247:
    if (countAndFlagsBits < v277)
    {
      v36 = v194 + 32;
      v4 = countAndFlagsBits;
      while (1)
      {
        v203 = v4 + 50;
        v204 = __OFADD__(v4, 50);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E24B30);
        v205 = swift_allocObject();
        if (v204)
        {
          goto LABEL_296;
        }

        *(v205 + 32) = v203;
        v206 = *(v194 + 16);
        *(v205 + 40) = v206;
        if (v206 >= v203)
        {
          v20 = v4 + 50;
        }

        else
        {
          v20 = v206;
        }

        swift_setDeallocating();
        swift_deallocClassInstance();
        if (v20 < v4)
        {
          goto LABEL_297;
        }

        if (countAndFlagsBits < 0)
        {
          goto LABEL_298;
        }

        v207 = *(v194 + 16);
        if (v207 < v4 || v207 < v20)
        {
          goto LABEL_299;
        }

        if (v203 < 0)
        {
          goto LABEL_300;
        }

        *aBlock = v193;
        v208 = v194;
        v210 = *(v193 + 16);
        v209 = *(v193 + 24);
        v211 = v210 + 1;

        if (v210 >= v209 >> 1)
        {
          sub_6D700((v209 > 1), v210 + 1, 1);
          v193 = *aBlock;
        }

        *(v193 + 16) = v211;
        v212 = (v193 + 32 * v210);
        v212[4] = v208;
        v212[5] = v36;
        v212[6] = v4;
        v212[7] = (2 * v20) | 1;
        v4 += 50;
        v194 = v208;
        v6 = v276;
        if (v203 >= v277)
        {
          goto LABEL_266;
        }
      }
    }

    v211 = *(v193 + 16);
    if (v211)
    {
LABEL_266:
      v20 = 0;
      v213 = 0;
      while (v213 < *(v193 + 16))
      {
        v215 = *(v193 + v20 + 32);
        v36 = *(v193 + v20 + 40);
        countAndFlagsBits = *(v193 + v20 + 48);
        v4 = *(v193 + v20 + 56);
        v216 = *(v6 + 16);
        swift_unknownObjectRetain();
        v217 = swift_isUniquelyReferenced_nonNull_native();
        if (v213 >= v216)
        {
          if ((v217 & 1) == 0)
          {
            v6 = sub_6B8C8(0, v216 + 1, 1, v6);
          }

          v218 = v6;
          v219 = *(v6 + 16);
          v220 = v218;
          v221 = v218[3];
          if (v219 >= v221 >> 1)
          {
            v220 = sub_6B8C8((v221 > 1), v219 + 1, 1, v220);
          }

          v220[2] = v219 + 1;
          v214 = &v220[4 * v219];
          v6 = v220;
          v214[4] = v215;
          v214[5] = v36;
          v214[6] = countAndFlagsBits;
          v214[7] = v4;
        }

        else
        {
          if ((v217 & 1) == 0)
          {
            v6 = sub_284568(v6);
          }

          if (v213 >= *(v6 + 16))
          {
            goto LABEL_301;
          }

          sub_1CEF98(v215, v36, countAndFlagsBits, v4);
          swift_unknownObjectRelease();
        }

        ++v213;
        v20 += 32;
        if (v211 == v213)
        {
          goto LABEL_217;
        }
      }

      __break(1u);
LABEL_291:
      __break(1u);
      goto LABEL_292;
    }

LABEL_217:
    v186 = ((v267 - 1) & v267);

    v20 = _swiftEmptyArrayStorage;
    v187 = v272;
  }

  while (1)
  {
    v188 = v187 + 1;
    if (__OFADD__(v187, 1))
    {
      goto LABEL_302;
    }

    if (v188 >= v262)
    {
      break;
    }

    v186 = v264[v188];
    ++v187;
    if (v186)
    {
      v187 = v188;
      v20 = _swiftEmptyArrayStorage;
      goto LABEL_223;
    }
  }

  v222 = *(v6 + 16);
  v223 = v256;
  if (v222)
  {
    v277 = sub_13C80(0, &qword_DF4F60);
    v224 = (v276 + 56);
    do
    {
      v225 = *(v224 - 2);
      v226 = *(v224 - 1);
      v227 = *v224;
      swift_unknownObjectRetain();
      dispatch_group_enter(v223);
      sub_2F3BB4(v225, v226, v227);
      v229 = v228;
      _s7CatalogV15EndpointRequestCMa();
      v230 = swift_allocObject();
      swift_allocObject();
      *(v230 + 16) = UnfairLock.init()();
      *(v230 + 24) = 0;
      *(v230 + 32) = static ICMusicKitRequestContext.music.getter();
      *(v230 + 40) = 0;
      v231 = swift_allocObject();
      v232 = v273;
      *(v231 + 16) = v223;
      *(v231 + 24) = v232;
      v233 = v223;

      BagProvider.shared.unsafeMutableAddressor();
      v234 = swift_allocObject();
      *(v234 + 16) = v230;
      *(v234 + 24) = sub_1D3698;
      *(v234 + 32) = v231;
      *(v234 + 40) = v229;
      *(v234 + 48) = 0;
      *(v234 + 56) = 64;

      BagProvider.getBag(completion:)(sub_1D4530, v234);
      swift_unknownObjectRelease();

      v224 += 4;
      --v222;
    }

    while (v222);
  }

  sub_13C80(0, &qword_DE8ED0);
  v235 = v257;
  v236 = v271;
  v237 = v258;
  (*(v257 + 104))(v271, enum case for DispatchQoS.QoSClass.userInteractive(_:), v258);
  v238 = sub_ABA190();
  (*(v235 + 8))(v236, v237);
  *&aBlock[32] = sub_1BBC34;
  v282 = 0;
  *aBlock = _NSConcreteStackBlock;
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = sub_1B5EB4;
  *&aBlock[24] = &block_descriptor_119;
  v239 = _Block_copy(aBlock);
  v240 = v259;
  sub_AB7C30();
  v278._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_1D3018(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_36A00(&qword_DF06D0, &unk_DE9C30);
  v241 = v261;
  v242 = v251;
  sub_ABABB0();
  sub_ABA0F0();

  (*(v250 + 8))(v241, v242);
  (*(v260 + 8))(v240, v249);
  _Block_release(v239);

  v243 = sub_1D3690;
  v4 = v270;
  v113 = v263;
LABEL_286:
  sub_15F84(v4 + 40, aBlock, &qword_DF4F58);
  v244 = *&aBlock[24];
  if (*&aBlock[24])
  {
    v245 = *&aBlock[32];
    __swift_project_boxed_opaque_existential_1(aBlock, *&aBlock[24]);
    v246 = (*(v245 + 16))(v244, v245);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  else
  {
    sub_12E1C(aBlock, &qword_DF4F58);
    v246 = [objc_opt_self() emptyPropertySet];
  }

  sub_1CDA30(v269, v246, v243, v113);
}

uint64_t sub_1BA808(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = *(result + 16);
    if (v2)
    {
      v4 = result + 32;
      do
      {
        v5 = *v4;
        if (!*(*v4 + 16))
        {
          goto LABEL_5;
        }

        v6 = sub_2EBF88(1635018093, 0xE400000000000000);
        if (v7)
        {
          sub_9ACA0(*(v5 + 56) + 40 * v6, &v21);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00000);
          if (swift_dynamicCast())
          {
            if (!*(v5 + 16))
            {
              goto LABEL_22;
            }

            v8 = sub_2EBF88(25705, 0xE200000000000000);
            if ((v9 & 1) == 0)
            {
              goto LABEL_22;
            }

            sub_9ACA0(*(v5 + 56) + 40 * v8, &v21);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_22;
            }

            if (v19[2])
            {
              v18 = v19;
              v10 = sub_2EBF88(0x7374657070696E73, 0xE800000000000000);
              if (v11)
              {
                sub_9ACA0(v19[7] + 40 * v10, &v21);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4FF0);
                if (swift_dynamicCast())
                {
                  if (!v19[2] || (v12 = v19[4], !*(v12 + 16)))
                  {
                    v23 = 0;
                    v21 = 0u;
                    v22 = 0u;
LABEL_24:

                    sub_12E1C(&v21, &qword_DF2BD0);

                    goto LABEL_4;
                  }

                  v13 = sub_2EBF88(1954047348, 0xE400000000000000);
                  if (v14)
                  {
                    sub_9ACA0(*(v12 + 56) + 40 * v13, &v21);
                  }

                  else
                  {
                    v23 = 0;
                    v21 = 0u;
                    v22 = 0u;
                  }

                  if (!*(&v22 + 1))
                  {
                    goto LABEL_24;
                  }

                  if (swift_dynamicCast())
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF8670);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_AF4EC0;
                    *(inited + 32) = 0x73636972796CLL;
                    v17 = inited + 32;
                    *(inited + 40) = 0xE600000000000000;
                    *(inited + 48) = v19;
                    *(inited + 56) = v20;
                    sub_96B2C(inited);
                    swift_setDeallocating();
                    sub_12E1C(v17, &qword_DEE730);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE590);
                    sub_1D3700(&qword_DF5008, &unk_DEE590);
                    sub_ABAD10();
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v19 = *a2;
                    sub_93C90(&v21, v18, v20, isUniquelyReferenced_nonNull_native);

                    *a2 = v19;
                    goto LABEL_5;
                  }
                }

                else
                {
                }

LABEL_22:

                goto LABEL_4;
              }
            }
          }
        }

LABEL_4:

LABEL_5:
        v4 += 8;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

id sub_1BAC2C(void *a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t), uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    goto LABEL_27;
  }

  result = [a1 results];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = [result allItems];

  v16 = sub_AB9760();
  v17 = sub_12DBC0(v16);

  if (v17)
  {
    v54 = v17;
    v51 = a3;
    v49 = a1;
    v50 = a7;
    v52 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
      goto LABEL_34;
    }

    v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (v18)
    {
LABEL_6:
      swift_beginAccess();
      v19 = 0;
      v55 = a5;
      v53 = v18;
      while (1)
      {
        if ((v54 & 0xC000000000000001) != 0)
        {
          v20 = sub_361248(v19, v54);
        }

        else
        {
          if (v19 >= *(v52 + 16))
          {
            goto LABEL_32;
          }

          v20 = *(v54 + 32 + 8 * v19);
        }

        v21 = v20;
        if (__OFADD__(v19++, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v23 = *(a5 + 16);
        v24 = *(v23 + 16);
        if (v24)
        {
          break;
        }

LABEL_8:
        if (v19 == v18)
        {
          goto LABEL_35;
        }
      }

      a5 = 0;
      v25 = 32;
      while (1)
      {
        if (a5 >= *(v23 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        sub_9ACA0(v23 + v25, &v56);
        v26.isa = sub_ABACE0().isa;
        objc_opt_self();
        v27 = swift_dynamicCastObjCClass();
        if (v27)
        {
          v28 = v27;
          v29 = [v21 originalIdentifierSet];
          LOBYTE(v28) = [v29 intersectsSet:v28];
          sub_8085C(&v56);

          if (v28)
          {

            sub_13C80(0, &qword_DE8028);
            sub_1D3604(&qword_DF4FE0, &qword_DE8028);
            v30 = v21;
            sub_ABAD10();
            swift_beginAccess();
            v31 = *(v55 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v55 + 16) = v31;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v31 = sub_284554(v31);
              *(v55 + 16) = v31;
            }

            if (a5 < *(v31 + 2))
            {
              sub_9AD68(&v56, &v31[v25]);
              a5 = v55;
              *(v55 + 16) = v31;
              swift_endAccess();

LABEL_26:
              v18 = v53;
              goto LABEL_8;
            }

LABEL_33:
            __break(1u);
LABEL_34:
            v18 = sub_ABB060();
            if (!v18)
            {
              break;
            }

            goto LABEL_6;
          }
        }

        else
        {

          sub_8085C(&v56);
        }

        ++a5;
        v25 += 40;
        if (v24 == a5)
        {

          a5 = v55;
          goto LABEL_26;
        }
      }
    }

LABEL_35:
    swift_beginAccess();
    v35 = *(a5 + 16);
    swift_beginAccess();
    v36 = *(a6 + 16);
    v37 = v18;
    v38 = *(v50 + 32);
    v39 = v38;

    if (v37)
    {
      type metadata accessor for BindingRequestResponseInvalidation();
      v40 = MPModelResponseDidInvalidateNotification;
      UIScreen.Dimensions.size.getter(v41);
      *&v58 = &type metadata for NotificationTrigger;
      *(&v58 + 1) = &protocol witness table for NotificationTrigger;
      v56 = v42;
      *&v57 = v43;
      v44 = v40;
      v45 = v49;
      v46 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v56);
      v47 = sub_1D3018(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation);
    }

    else
    {
      v47 = 0;
      v46 = 0;
    }

    v56 = v35;
    *&v57 = v36;
    v58 = 0uLL;
    *(&v57 + 1) = v38;
    v59 = 0;

    v48 = v39;
    v51(&v56, v46, v47);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
LABEL_27:
    sub_1D35B0();
    v33 = swift_allocError();
    *v34 = a2;
    *(v34 + 8) = 3;
    v56 = v33;
    v57 = 0u;
    v58 = 0u;
    v59 = 256;
    swift_errorRetain();
    a3(&v56, 0, 0);
  }
}

uint64_t sub_1BB188(void *a1, uint64_t a2, void (*a3)(void ***, uint64_t, uint64_t), uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1 && (v15 = [a1 results]) != 0)
  {
    v16 = v15;
    v30 = a3;
    v35 = sub_98A34(_swiftEmptyArrayStorage);
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = &v35;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1D37BC;
    *(v18 + 24) = v17;
    *(&v33 + 1) = sub_1D4558;
    v34 = v18;
    aBlock = _NSConcreteStackBlock;
    *&v32 = 1107296256;
    *(&v32 + 1) = sub_1B7EB0;
    *&v33 = &block_descriptor_134_0;
    v19 = _Block_copy(&aBlock);
    v20 = v16;

    [v20 enumerateSectionsUsingBlock:v19];
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v23 = v35;
      swift_beginAccess();
      v24 = *(a7 + 16);
      v25 = *(a8 + 32);
      aBlock = a5;
      *&v32 = v23;
      *(&v32 + 1) = a6;
      *&v33 = v24;
      *(&v33 + 1) = v25;
      LOWORD(v34) = 1;
      v26 = sub_1D3018(&qword_DF4FE8, type metadata accessor for CompoundRequestResponseInvalidation);
      v27 = v25;

      v30(&aBlock, a9, v26);
    }
  }

  else
  {
    sub_1D35B0();
    v28 = swift_allocError();
    *v29 = a2;
    *(v29 + 8) = 3;
    aBlock = v28;
    v32 = 0u;
    v33 = 0u;
    LOWORD(v34) = 256;
    swift_errorRetain();
    a3(&aBlock, 0, 0);
  }

  return result;
}

uint64_t sub_1BB4B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    v7 = [a4 itemsInSectionAtIndex:a2];
    v8 = sub_AB9760();
    v9 = sub_12DBC0(v8);
    if (v9)
    {
      v10 = v9;

      return sub_2E599C(v10, v11, v12);
    }

    else
    {
    }
  }

  return result;
}

void *sub_1BB590(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
LABEL_9:
    v9 = *(v1 + 48) + ((v2 << 10) | (16 * __clz(__rbit64(v6))));
    v10 = *(v9 + 8);
    v34 = *v9;
    v12 = sub_2EC880(v10);
    v13 = *(&_swiftEmptyDictionarySingleton + 2);
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_23;
    }

    v16 = v11;
    if (*(&_swiftEmptyDictionarySingleton + 3) < v15)
    {
      sub_32AC08(v15, 1);
      v17 = sub_2EC880(v10);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_25;
      }

      v12 = v17;
    }

    v6 &= v6 - 1;
    if (v16)
    {
      v19 = *(&_swiftEmptyDictionarySingleton + 7);
      v20 = *(v19 + 8 * v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + 8 * v12) = v20;
      v32 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_6B8EC(0, *(v20 + 2) + 1, 1, v20);
        *(v19 + 8 * v12) = v20;
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v30 = sub_6B8EC((v22 > 1), v23 + 1, 1, v20);
        v24 = v23 + 1;
        v20 = v30;
        *(v32 + 8 * v12) = v30;
      }

      *(v20 + 2) = v24;
      v25 = &v20[16 * v23];
      v1 = a1;
      *(v25 + 4) = v34;
      v25[40] = v10;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF12B0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_AF4EC0;
      *(v26 + 32) = v34;
      *(v26 + 40) = v10;
      *(&_swiftEmptyDictionarySingleton + (v12 >> 6) + 8) |= 1 << v12;
      *(*(&_swiftEmptyDictionarySingleton + 6) + v12) = v10;
      *(*(&_swiftEmptyDictionarySingleton + 7) + 8 * v12) = v26;
      v27 = *(&_swiftEmptyDictionarySingleton + 2);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_24;
      }

      *(&_swiftEmptyDictionarySingleton + 2) = v29;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return &_swiftEmptyDictionarySingleton;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

void sub_1BB818(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = *a1;
  if (v5 != 1)
  {
    v6 = a1[1];
    v7 = a1[2];
    v8 = a1[3];
    v9 = a1[4];
    v22 = v5;
    v10 = *(a1 + 3);
    v23 = *(a1 + 1);
    v24 = v10;
    if (!a2)
    {
      __chkstk_darwin(v5);

      sub_1D2B24(v6, v7, v8);
      v20 = v9;
      UnfairLock.locked<A>(_:)(sub_1D3768);
      v25 = v22;
      sub_12E1C(&v25, &qword_DF4F70);
      v26 = v23;
      v27 = v24;
      sub_1D2D1C(&v26);
      v28 = *(&v24 + 1);
      sub_12E1C(&v28, &qword_DF4F78);
      goto LABEL_9;
    }

    v25 = v5;

    sub_1D2B24(v6, v7, v8);
    v11 = v9;
    sub_12E1C(&v25, &qword_DF4F70);
    v26 = v23;
    v27 = v24;
    sub_1D2D1C(&v26);
    v28 = *(&v24 + 1);
    sub_12E1C(&v28, &qword_DF4F78);
  }

  if (qword_DE6D48 != -1)
  {
    swift_once();
  }

  v12 = sub_AB4BC0();
  __swift_project_value_buffer(v12, static Logger.search);
  swift_errorRetain();
  v13 = sub_AB4BA0();
  v14 = sub_AB9F30();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136446210;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5A0);
    v17 = sub_AB9350();
    v19 = sub_425E68(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v13, v14, "CatalogSearchSource: Failed to fetch lookup items. Error=%{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

LABEL_9:
  dispatch_group_leave(a3);
}

uint64_t sub_1BBB1C(uint64_t *a1)
{
  if (qword_DE6970 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = sub_1CE69C(*a1);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = qword_DF4BE0;
  qword_DF4BE0 = 0x8000000000000000;
  sub_1D2D68(v2, sub_1CB8B0, 0, isUniquelyReferenced_nonNull_native, &v6);

  if (v1)
  {

    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    qword_DF4BE0 = v6;
    return swift_endAccess();
  }

  return result;
}

void sub_1BBC34()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_DE6958 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_E71170 object:0];
}

uint64_t sub_1BBCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v98 = a3;
  v97 = a2;
  v99 = a4;
  v95 = sub_AB7C10();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_AB7C50();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_AB7C20();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CompoundRequestResponseInvalidation();
  v10 = CompoundRequestResponseInvalidation.__allocating_init()();
  type metadata accessor for BindingRequestResponseInvalidation();
  v11 = MPRestrictionsMonitorAllowsMusicVideosDidChangeNotification;
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 sharedRestrictionsMonitor];
  UIScreen.Dimensions.size.getter(v15);
  *(&v111 + 1) = &type metadata for NotificationTrigger;
  *&v112 = &protocol witness table for NotificationTrigger;
  *&v110 = v16;
  *(&v110 + 1) = v17;
  v18 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v110);
  v19 = sub_1D3018(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation);
  CompoundRequestResponseInvalidation.append(_:)(v18, v19);

  v20 = *ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange.unsafeMutableAddressor();
  ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  UIScreen.Dimensions.size.getter(v21);
  *(&v111 + 1) = &type metadata for NotificationTrigger;
  *&v112 = &protocol witness table for NotificationTrigger;
  *&v110 = v22;
  *(&v110 + 1) = v23;

  v24 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v110);
  CompoundRequestResponseInvalidation.append(_:)(v24, v19);

  v25 = *ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange.unsafeMutableAddressor();
  UIScreen.Dimensions.size.getter(v26);
  *(&v111 + 1) = &type metadata for NotificationTrigger;
  *&v112 = &protocol witness table for NotificationTrigger;
  v27 = v10;
  *&v110 = v28;
  *(&v110 + 1) = v29;
  v30 = v25;

  v31 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(&v110);
  CompoundRequestResponseInvalidation.append(_:)(v31, v19);

  if (a1 && (*(a1 + 16) == *v5 && *(a1 + 24) == *(v5 + 8) || (sub_ABB3C0() & 1) != 0) && *(a1 + 32) == *(v5 + 16))
  {
    sub_13C80(0, &qword_DFA720);

    if (sub_ABA790())
    {
      RequestResponse.Revision.content.getter(&aBlock);
      v32 = BYTE8(v107);
      if (BYTE8(v107) != 255)
      {
        v33 = v107;
        v34 = *(&v106 + 1);
        v35 = v106;
        v36 = *(&aBlock + 1);
        v37 = aBlock;
        v110 = aBlock;
        v111 = v106;
        *&v112 = v107;
        BYTE8(v112) = BYTE8(v107) & 1;
        sub_1B6E88(&v110, v97, v98);

        v38 = v99;
        *(v99 + 32) = 0;
        *v38 = 0u;
        v38[1] = 0u;
        sub_1D339C(v37, v36, v35, v34, v33, v32);
      }
    }
  }

  v40 = _s7CatalogV15EndpointRequestCMa();
  v41 = swift_allocObject();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v41 + 16) = UnfairLock.init()();
  *(v41 + 24) = 0;
  sub_13C80(0, &qword_DF4F60);
  *(v41 + 32) = static ICMusicKitRequestContext.music.getter();
  *(v41 + 40) = 0;
  if (*(v5 + 16))
  {
    swift_allocObject();
    v42 = UnfairLock.init()();
    v43 = dispatch_group_create();
    v44 = swift_allocObject();
    *(v44 + 16) = sub_98A48(_swiftEmptyArrayStorage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA908);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_AF4EC0;
    v96 = v45;
    *(v45 + 32) = 0;
    if (qword_DE6970 != -1)
    {
      swift_once();
    }

    v46 = sub_988FC(_swiftEmptyArrayStorage);
    swift_beginAccess();
    qword_DF4BE0 = v46;

    sub_13C80(0, &qword_DF0600);
    v47 = static ICUserIdentityStore.activeAccountDSID.getter();
    if (v47)
    {
      v48 = v44;

      static ApplicationCapabilities.shared.getter(&v110);
      v49 = v112;

      sub_70C54(&v110);
      v50 = sub_472A84(3, v49);

      if (v50)
      {
        v52 = *(v96 + 2);
        v51 = *(v96 + 3);
        v53 = v43;
        if (v52 >= v51 >> 1)
        {
          v96 = sub_6BA38((v51 > 1), v52 + 1, 1, v96);
        }

        v54 = v42;
        v55 = v96;
        *(v96 + 2) = v52 + 1;
        v55[v52 + 32] = 1;
      }

      else
      {
        v53 = v43;
        v54 = v42;
      }
    }

    else
    {
      v53 = v43;
      v54 = v42;
      v48 = v44;
    }

    v101 = v48;
    v102 = v41;
    v86 = v40;
    v63 = *(v96 + 2);
    v103 = v27;
    if (v63)
    {
      v64 = v5;
      v65 = *(v5 + 8);
      v100 = *v5;
      v66 = v96 + 32;
      do
      {
        v67 = *v66++;
        dispatch_group_enter(v53);
        sub_1D3210(v64, &aBlock);
        v68 = swift_allocObject();
        v69 = aBlock;
        *(v68 + 40) = v106;
        v70 = v108;
        *(v68 + 56) = v107;
        *(v68 + 72) = v70;
        *(v68 + 88) = v109;
        *(v68 + 16) = v53;
        *(v68 + 24) = v69;
        *(v68 + 104) = v54;
        *(v68 + 112) = v27;
        *(v68 + 120) = v101;

        v71 = v53;

        BagProvider.shared.unsafeMutableAddressor();
        v72 = swift_allocObject();
        *(v72 + 16) = v102;
        *(v72 + 24) = sub_1D32B8;
        v73 = v100;
        *(v72 + 32) = v68;
        *(v72 + 40) = v73;
        *(v72 + 48) = v65;
        *(v72 + 56) = v67 | 0x80;

        BagProvider.getBag(completion:)(sub_1D4530, v72);

        v27 = v103;

        --v63;
      }

      while (v63);
    }

    sub_13C80(0, &qword_DE8ED0);
    v74 = v88;
    v75 = v87;
    v76 = v89;
    (*(v88 + 104))(v87, enum case for DispatchQoS.QoSClass.userInteractive(_:), v89);
    v100 = sub_ABA190();
    (*(v74 + 8))(v75, v76);
    v77 = swift_allocObject();
    v78 = v101;
    v77[2] = v96;
    v77[3] = v78;
    v79 = v98;
    v77[4] = v97;
    v77[5] = v79;
    v77[6] = v27;
    *&v107 = sub_1D331C;
    *(&v107 + 1) = v77;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v106 = sub_1B5EB4;
    *(&v106 + 1) = &block_descriptor_77;
    v80 = _Block_copy(&aBlock);

    v81 = v90;
    sub_AB7C30();
    v104 = _swiftEmptyArrayStorage;
    sub_1D3018(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_36A00(&qword_DF06D0, &unk_DE9C30);
    v82 = v92;
    v83 = v95;
    sub_ABABB0();
    v84 = v100;
    sub_ABA0F0();

    (*(v94 + 8))(v82, v83);
    (*(v91 + 8))(v81, v93);
    _Block_release(v80);

    v62 = v99;
    v40 = v86;
    v41 = v102;
  }

  else
  {
    v56 = *v5;
    v57 = *(v5 + 8);
    sub_1D3210(v5, &v110);
    v58 = swift_allocObject();
    *(v58 + 16) = v97;
    *(v58 + 24) = v98;
    *(v58 + 32) = v10;
    v59 = v110;
    *(v58 + 56) = v111;
    v60 = v113;
    *(v58 + 72) = v112;
    *(v58 + 88) = v60;
    *(v58 + 104) = v114;
    *(v58 + 40) = v59;

    BagProvider.shared.unsafeMutableAddressor();
    v61 = swift_allocObject();
    *(v61 + 16) = v41;
    *(v61 + 24) = sub_1D338C;
    *(v61 + 32) = v58;
    *(v61 + 40) = v56;
    *(v61 + 48) = v57;
    *(v61 + 56) = 0;

    BagProvider.getBag(completion:)(sub_1D4530, v61);

    v62 = v99;
  }

  v62[3] = v40;
  v62[4] = &off_D00038;

  *v62 = v41;
  return result;
}

uint64_t sub_1BC97C(char **a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  if (v10 != &dword_0 + 1)
  {
    v11 = a1 + 1;
    v12 = a1[1];
    v13 = a1[2];
    v14 = a1[3];
    v15 = a1[4];
    v23 = v10;
    v16 = *(a1 + 3);
    v24 = *(a1 + 1);
    v25 = v16;
    if (!a2)
    {

      sub_1D2B24(v12, v13, v14);
      v22 = v15;
      sub_1B7F1C(&v23, a3, a4);
      v29 = v23;
      sub_12E1C(&v29, &qword_DF4F70);
      *v30 = v24;
      v30[16] = v25;
      sub_1D2D1C(v30);
      *&v27 = *(&v25 + 1);
      return sub_12E1C(&v27, &qword_DF4F78);
    }

    v26 = v10;

    sub_1D2B24(v12, v13, v14);
    v17 = v15;
    sub_12E1C(&v26, &qword_DF4F70);
    v27 = *v11;
    v28 = *(v11 + 16);
    sub_1D2D1C(&v27);
    v29 = *(&v25 + 1);
    sub_12E1C(&v29, &qword_DF4F78);
  }

  sub_1D35B0();
  v18 = swift_allocError();
  *v19 = a2;
  *(v19 + 8) = 2;
  *v30 = v18;
  *&v30[8] = 0u;
  v31 = 0u;
  v32 = 256;
  v20 = sub_1D3018(&qword_DF4FE8, type metadata accessor for CompoundRequestResponseInvalidation);
  swift_errorRetain();
  (a3)(v30, a5, v20);
}

void sub_1BCBA0(uint64_t a1, int a2, dispatch_group_t group, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  if (*a1 == 1)
  {

    dispatch_group_leave(group);
  }

  else
  {
    v12 = *(a1 + 32);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    v32 = *a1;
    v33 = *(a1 + 8);
    v34 = *(a1 + 24);
    v15 = *(a1 + 24);

    sub_1D2B24(v14, v13, v15);
    v16 = qword_DE6D48;
    v17 = v12;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = sub_AB4BC0();
    __swift_project_value_buffer(v18, static Logger.search);
    v35 = v8;
    v36 = v33;
    v37 = v34;
    v38[0] = *(&v34 + 1);
    sub_15F84(&v35, &v30, &qword_DF4F70);
    sub_1D2CE4(&v36, &v30);
    sub_15F84(v38, &v30, &qword_DF4F78);
    v19 = sub_AB4BA0();
    v20 = sub_AB9F10();
    sub_12E1C(&v35, &qword_DF4F70);
    sub_1D2D1C(&v36);
    sub_12E1C(v38, &qword_DF4F78);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v22;
      *v21 = 136446210;
      v30 = v36;
      v31 = v37;
      sub_1D2CE4(&v36, v28);
      v23 = sub_AB9350();
      v25 = sub_425E68(v23, v24, &v29);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, v19, v20, "CatalogSearchSource: getting response for endpoint %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    sub_15F84(&v35, &v30, &qword_DF4F70);
    sub_1D2CE4(&v36, &v30);
    sub_15F84(v38, &v30, &qword_DF4F78);
    v26 = group;

    sub_1CF904(&v32, a4, v26, a5, a6, a7, &v32);

    sub_12E1C(&v35, &qword_DF4F70);
    sub_1D2D1C(&v36);
    sub_12E1C(v38, &qword_DF4F78);
    sub_12E1C(&v35, &qword_DF4F70);
    sub_1D2D1C(&v36);
    sub_12E1C(v38, &qword_DF4F78);
  }
}

uint64_t sub_1BCF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v9 = *a4;
  v19 = *(a4 + 8);
  v10 = *(a4 + 24);
  v18 = *(a4 + 16);
  v11 = *(a4 + 32);
  v12 = *(a4 + 40);
  if (a1)
  {
    v14 = swift_unknownObjectRetain();
    CompoundRequestResponseInvalidation.append(_:)(v14, a2);
    swift_unknownObjectRelease();
  }

  if (*(a4 + 41))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    return swift_willThrowTypedImpl();
  }

  else
  {
    *&v20 = v9;
    *(&v20 + 1) = v19;
    v21 = v18;
    v22 = v10;
    v23 = v11;
    v24 = v12 & 1;
    v16 = *(a6 + 24);
    if (v16 >> 6)
    {
      if (v16 >> 6 == 1)
      {
        LOBYTE(v16) = *(a6 + 16);
      }
    }

    else
    {
      LOBYTE(v16) = 0;
    }

    swift_beginAccess();
    sub_9AE20(v9, v19, v18, v10, v11, v12 & 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *a5;
    *a5 = 0x8000000000000000;
    sub_93E78(&v20, v16 & 1, isUniquelyReferenced_nonNull_native);
    *a5 = v25;
    return swift_endAccess();
  }
}

void sub_1BD0B4(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v58 = a4;
  v8 = _swiftEmptyArrayStorage;
  v9 = sub_98A34(_swiftEmptyArrayStorage);
  v10 = sub_988E8(_swiftEmptyArrayStorage);
  v11 = sub_988FC(_swiftEmptyArrayStorage);
  v79 = _swiftEmptyArrayStorage;
  v12 = *(a1 + 16);
  v62 = v12;
  if (!v12)
  {
    goto LABEL_33;
  }

  v56 = a3;
  v13 = 0;
  v60 = 0;
  v72 = a1 + 32;
  v14 = v62;
  v61 = a2;
  do
  {
    v73 = v13;
    v15 = *(v72 + v13);
    swift_beginAccess();
    v16 = *(a2 + 16);
    if (!*(v16 + 16) || (v17 = sub_2EC908(v15), (v18 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_4;
    }

    v70 = v15;
    v19 = *(v16 + 56) + 48 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (*(v19 + 40) != 1)
    {
      v42 = v22;

      swift_endAccess();

      goto LABEL_4;
    }

    v65 = v10;
    v66 = v9;
    v24 = *(v19 + 24);
    v23 = *(v19 + 32);
    v25 = v22;
    swift_endAccess();
    v26 = *(v20 + 16);
    v67 = v24;
    v68 = v25;
    v64 = v23;
    sub_9AE20(v20, v21, v25, v24, v23, 1);

    v69 = v20;
    if (v26)
    {
      v28 = 0;
      v74 = v79;
      v29 = v20 + 56;
      v71 = _swiftEmptyArrayStorage;
      v63 = v11;
      v75 = v26;
      v76 = v21;
      v59 = v20 + 56;
      do
      {
        v30 = (v29 + 32 * v28);
        while (1)
        {
          if (v28 >= v26)
          {
            __break(1u);
LABEL_35:
            __break(1u);
            return;
          }

          if (__OFADD__(v28, 1))
          {
            goto LABEL_35;
          }

          v77 = v28 + 1;
          v31 = *(v30 - 1);
          v32 = *v30;
          v33 = *(v30 - 3);
          v34 = *(v30 - 2);
          v80 = v33;
          v81 = v34;
          v82 = v31;
          v83 = v32;
          __chkstk_darwin(isUniquelyReferenced_nonNull_native);
          v55[2] = &v80;

          v35 = v74;

          v36 = sub_1B3C54(sub_1D37D8, v55, v35);

          if ((v36 & 1) == 0)
          {
            break;
          }

          ++v28;
          v30 += 4;
          v26 = v75;
          v21 = v76;
          if (v77 == v75)
          {
            v11 = v63;
            a2 = v61;
            goto LABEL_24;
          }
        }

        v37 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_6D720(0, v37[2] + 1, 1);
          v37 = v78;
        }

        v11 = v63;
        a2 = v61;
        v39 = v37[2];
        v38 = v37[3];
        v40 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_6D720((v38 > 1), v39 + 1, 1);
          v40 = v39 + 1;
          v37 = v78;
        }

        v37[2] = v40;
        v71 = v37;
        v41 = &v37[4 * v39];
        v41[4] = v33;
        v41[5] = v34;
        v41[6] = v31;
        v41[7] = v32;
        v26 = v75;
        v21 = v76;
        v28 = v77;
        v29 = v59;
      }

      while (v77 != v75);
    }

    else
    {
      v71 = _swiftEmptyArrayStorage;
    }

LABEL_24:

    sub_19780(v71);

    v43 = v66;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v43;
    sub_1CB8FC(v21, sub_1D452C, 0, v44, &v80, sub_32ABF4, sub_19874, sub_333040);
    v9 = v80;
    v45 = v68;

    v46 = v65;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v46;
    sub_1CB8FC(v45, sub_1D452C, 0, v47, &v80, sub_32ABE0, sub_1988C, sub_33302C);
    v10 = v80;
    v48 = v67;

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v11;
    sub_1D2D68(v48, sub_1CB8B0, 0, v49, &v80);

    v11 = v80;
    if ((v70 & 1) == 0)
    {

      v14 = v62;
LABEL_28:
      v51 = v64;
      if (v64)
      {
        v52 = v64;

        v60 = v51;
      }

      else
      {
      }

      goto LABEL_31;
    }

    v50 = sub_ABB3C0();

    v14 = v62;
    if (v50)
    {
      goto LABEL_28;
    }

    v51 = v64;
LABEL_31:

LABEL_4:
    v13 = v73 + 1;
  }

  while ((v73 + 1) != v14);
  v8 = v79;
  a3 = v56;
  v12 = v60;
LABEL_33:
  v80 = v8;
  v81 = v9;
  v82 = v10;
  v83 = v11;
  v84 = v12;
  v53 = v12;
  v85 = 1;
  v54 = sub_1D3018(&qword_DF4FE8, type metadata accessor for CompoundRequestResponseInvalidation);
  a3(&v80, v57, v54);
}

__n128 sub_1BD740@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = *a6;
  v8 = *(a6 + 16);
  *(a7 + 40) = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 56) = v8;
  *(a7 + 72) = *(a6 + 32);
  return result;
}

uint64_t Actions.GoToArtist.Context.menuItemSubtitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MPCPlaybackIntent.PlayActivityInformation.featureName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1BD87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_1BBCD4(a1, sub_1D31CC, v8, a4);
}

uint64_t sub_1BD914()
{
  result = 0x20676F6C61746143;
  sub_1BD950();
  return result;
}

uint64_t sub_1BD93C()
{
  result = 0x207972617262694CLL;
  sub_1BD950();
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1BD950()
{
  v6 = 0xEF73746C75736552;
  strcpy(&v5, " hashedText: ");
  HIWORD(v5._object) = -4864;
  sub_36A48();
  sub_ABAAD0();
  v7._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v7);

  sub_AB94A0(v5);

  strcpy(&v5, " variant: ");
  BYTE3(v5._object) = 0;
  HIDWORD(v5._object) = -369098752;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF5010);
  v8._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v8);

  sub_AB94A0(v5);

  strcpy(&v5, " library: ");
  BYTE3(v5._object) = 0;
  HIDWORD(v5._object) = -369098752;
  v1 = [*(v0 + 24) description];
  v2 = sub_AB92A0();
  v4 = v3;

  v9._countAndFlagsBits = v2;
  v9._object = v4;
  sub_AB94A0(v9);

  sub_AB94A0(v5);

  sub_ABAD90(21);
  v10._object = 0x8000000000B563A0;
  v10._countAndFlagsBits = 0xD000000000000013;
  sub_AB94A0(v10);
  type metadata accessor for MPMediaLibraryFilteringOptions(0);
  sub_ABAF70();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_AB94A0(v11);
}

uint64_t sub_1BDB88(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  sub_13C80(0, &qword_DFA720);
  return sub_ABA790() & 1;
}

Swift::Int sub_1BDC1C()
{
  v1 = *(v0 + 8);
  sub_ABB5C0();
  sub_ABA7A0();
  sub_1BDE98(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_1BDC98()
{
  v1 = *(v0 + 8);
  sub_ABA7A0();
  sub_1BDE98(v1);
  sub_AB93F0();
}

Swift::Int sub_1BDD04()
{
  v1 = *(v0 + 8);
  sub_ABB5C0();
  sub_ABA7A0();
  sub_1BDE98(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_1BDD7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_13C80(0, &qword_DFA720);
  if (sub_ABA790())
  {
    v4 = sub_1BDE98(v2);
    v6 = v5;
    if (v4 == sub_1BDE98(v3) && v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_ABB3C0();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void *sub_1BDE48()
{
  result = sub_12260(&off_CF08D8);
  qword_E71178 = result;
  return result;
}

void *sub_1BDE70()
{
  result = sub_12260(&off_CF0908);
  qword_E71180 = result;
  return result;
}

uint64_t sub_1BDE98(char a1)
{
  result = 0x6974697669746361;
  switch(a1)
  {
    case 1:
      result = 0x736D75626C61;
      break;
    case 2:
      result = 0x73747369747261;
      break;
    case 3:
      result = 0x73726F7461727563;
      break;
    case 4:
      result = 0x73676E6F73;
      break;
    case 5:
      result = 0x736E6F6974617473;
      break;
    case 6:
      result = 0x75632D656C707061;
      break;
    case 7:
      result = 0x6169726F74696465;
      break;
    case 8:
      result = 0x6F6D2D636973756DLL;
      break;
    case 9:
      result = 0x69762D636973756DLL;
      break;
    case 10:
      result = 0x6F736970652D7674;
      break;
    case 11:
      result = 0x73776F68732D7674;
      break;
    case 12:
      result = 0x646564616F6C7075;
      break;
    case 13:
      result = 0x6C2D64726F636572;
      break;
    case 14:
      result = 0x702D6C6169636F73;
      break;
    case 15:
      result = 0x7473696C79616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BE0E8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_ABB3C0();
  }

  return v12 & 1;
}

Swift::Int sub_1BE194(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_ABB5C0();
  a3(v5);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_1BE218(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_AB93F0();
}

Swift::Int sub_1BE288(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_ABB5C0();
  a4(v6);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_1BE2F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF1DC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1BE320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BDE98(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1BE34C(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1D2800();

  *a2 = v4;
}

uint64_t Alert.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BE478()
{
  if (*v0 == 7368564 && v0[1] == 0xE300000000000000)
  {
    return 1;
  }

  else
  {
    return sub_ABB3C0();
  }
}

uint64_t sub_1BE4B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6169636F73;
  }

  else
  {
    v3 = 0x676F6C61746163;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6169636F73;
  }

  else
  {
    v5 = 0x676F6C61746163;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_1BE554()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_1BE5D4()
{
  sub_AB93F0();
}

Swift::Int sub_1BE640()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_1BE6BC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_CF0930;
  v8._object = v3;
  v5 = sub_ABB140(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1BE71C(uint64_t *a1@<X8>)
{
  v2 = 0x676F6C61746163;
  if (*v1)
  {
    v2 = 0x6C6169636F73;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1BE758(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6169726F74696465;
    v6 = 1684107369;
    if (a1 != 2)
    {
      v6 = 0x656E6F687069;
    }

    if (!a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x736F747561;
    v2 = 0x7542726576726573;
    if (a1 != 7)
    {
      v2 = 102;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x676948636972796CLL;
    if (a1 != 4)
    {
      v3 = 7364973;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1BE878(uint64_t a1, char a2)
{
  if (!a1)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_14;
  }

  v4 = "suggestionsTermsLimit";
  if (a2)
  {
    v4 = "suggestionsTopResultsLimit";
  }

  if (!*(a1 + 16) || ((a2 & 1) == 0 ? (v5 = 0xD000000000000015) : (v5 = 0xD00000000000001ALL), v6 = sub_2EBF88(v5, (v4 - 32) | 0x8000000000000000), (v7 & 1) == 0))
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;

    goto LABEL_14;
  }

  sub_9ACA0(*(a1 + 56) + 40 * v6, &v10);

  if (!*(&v11 + 1))
  {
LABEL_14:
    sub_12E1C(&v10, &qword_DF2BD0);
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    return v9;
  }

LABEL_15:
  if (a2)
  {
    return 10;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1BE990@<X0>(void *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v47 = a5;
  v45 = a2;
  v46 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v12 = sub_AB31C0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v16)
  {
    return (*(v13 + 56))(a6, 1, 1, v12);
  }

  v17 = v16;
  v18 = sub_AB8FF0();

  v19 = sub_16A8C4(v18);

  if (!v19)
  {
    return (*(v13 + 56))(a6, 1, 1, v12);
  }

  v20 = sub_AB92A0();
  if (!*(v19 + 16) || (v22 = sub_2EBF88(v20, v21), (v23 & 1) == 0))
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;

    goto LABEL_11;
  }

  sub_9ACA0(*(v19 + 56) + 40 * v22, &v49);

  if (!*(&v50 + 1))
  {
LABEL_11:
    sub_12E1C(&v49, &qword_DF2BD0);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00000);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    return (*(v13 + 56))(a6, 1, 1, v12);
  }

  countAndFlagsBits = v48._countAndFlagsBits;
  v44 = v47 >> 6;
  if (v47 >> 6)
  {
    if (v47 >> 6 == 1)
    {
      v25 = v46;
    }

    else
    {
      v25 = v47;
    }

    if (v25)
    {
      v28 = 0x746C7561666564;
    }

    else
    {
      v28 = 0x686372616573;
    }

    v27 = 0xE700000000000000;
    if ((v25 & 1) == 0)
    {
      v27 = 0xE600000000000000;
    }
  }

  else
  {
    v27 = 0xEB0000000073746ELL;
    v28 = 0x6948686372616573;
  }

  if (*(v48._countAndFlagsBits + 16))
  {
    v29 = sub_2EBF88(v28, v27);
    if (v30)
    {
      sub_9ACA0(*(countAndFlagsBits + 56) + 40 * v29, &v49);
    }

    else
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
    }
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
  }

  if (!*(&v50 + 1))
  {
    sub_12E1C(&v49, &qword_DF2BD0);
    goto LABEL_36;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:

    goto LABEL_12;
  }

  v43 = v48;
  v31 = [a1 stringForBagKey:ICURLBagKeyCountryCode];
  if (!v31)
  {

    goto LABEL_12;
  }

  v41 = countAndFlagsBits;
  v32 = v31;
  v40 = sub_AB92A0();
  v42 = v33;

  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  sub_ABAD90(19);

  *&v49 = 0x2F2F3A7370747468;
  *(&v49 + 1) = 0xE800000000000000;
  sub_AB94A0(v43);
  v52._countAndFlagsBits = 791770671;
  v52._object = 0xE400000000000000;
  sub_AB94A0(v52);
  if (v44)
  {
    v34 = v46;
    if (v44 != 1)
    {
      v34 = v47;
    }

    v35._countAndFlagsBits = 0x676F6C61746163;
    if (v34)
    {
      v35._countAndFlagsBits = 0x6C6169636F73;
      v36 = 0xE600000000000000;
    }

    else
    {
      v36 = 0xE700000000000000;
    }
  }

  else
  {
    v36 = 0xE700000000000000;
    v35._countAndFlagsBits = 0x676F6C61746163;
  }

  v35._object = v36;
  sub_AB94A0(v35);

  v53._countAndFlagsBits = 47;
  v53._object = 0xE100000000000000;
  sub_AB94A0(v53);
  v54._countAndFlagsBits = v40;
  v54._object = v42;
  sub_AB94A0(v54);
  sub_AB3180();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_12E1C(v11, &unk_DF2AE0);

    goto LABEL_12;
  }

  (*(v13 + 32))(v15, v11, v12);
  v37._countAndFlagsBits = sub_1BEF9C(a3, v46, v47);
  if (v37._object)
  {
    sub_AB3100(v37);
  }

  v38 = sub_1BF074(a1, v45, a3, v46, v47);
  URL.parametrize(_:)(v38, a6);
  (*(v13 + 8))(v15, v12);
  (*(v13 + 56))(a6, 0, 1, v12);
}

uint64_t sub_1BEF9C(uint64_t a1, char a2, unsigned __int8 a3)
{
  if (!(a3 >> 6))
  {
    return 0xD000000000000012;
  }

  if (a3 >> 6 != 1)
  {
    return 0x686372616573;
  }

  if (a2)
  {

    return 0x702D6C6169636F73;
  }

  v4 = sub_ABB3C0();

  if (v4)
  {
    return 0x702D6C6169636F73;
  }

  return 0;
}

uint64_t sub_1BF074(unint64_t a1, void *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_96B2C(&off_CF0A50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEE730);
  swift_arrayDestroy();
  v187 = v9;
  sub_1C0B50(a1, &v187, a3, a4, a5);
  v173 = a5;
  v172 = a4;
  v174 = a3;
  v170 = a5 >> 6;
  if (!(a5 >> 6))
  {
    v178 = a1;
    sub_1D2B24(a3, a4, a5);
    v16 = v187;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_92078(a3, a4, 1836213620, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v187 = v16;
    *&v185 = _swiftEmptyArrayStorage;
    sub_6D5A0(0, 2, 0);
    v15 = 0x6C75736552706F74;
    v31 = _swiftEmptyArrayStorage;
    v10 = 0x736D726574;
    a5 = 0xEA00000000007374;
    a1 = 0xE500000000000000;
    a3 = _swiftEmptyArrayStorage[2];
    v17 = _swiftEmptyArrayStorage[3];
    v32 = v17 >> 1;
    v14 = a3 + 1;
    if (v17 >> 1 > a3)
    {
LABEL_30:
      v31[2] = v14;
      v33 = &v31[2 * a3];
      v33[4] = v10;
      v33[5] = a1;
      v34 = v15;
      *&v185 = v31;
      if (v32 <= v14)
      {
        sub_6D5A0((v17 > 1), a3 + 2, 1);
        v31 = v185;
      }

      v31[2] = a3 + 2;
      v35 = &v31[2 * v14];
      v35[4] = v34;
      v35[5] = a5;
      *&v185 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
      sub_36A00(&qword_E00020, &unk_DFDE70);
      v36 = sub_AB9140();
      v38 = v37;

      v39 = swift_isUniquelyReferenced_nonNull_native();
      *&v185 = v16;
      sub_92078(v36, v38, 0x73646E696BLL, 0xE500000000000000, v39);
      v187 = v185;
LABEL_115:
      a5 = v173;
      a4 = v172;
      a3 = v174;
LABEL_116:
      a1 = v178;
      goto LABEL_117;
    }

LABEL_220:
    v166 = v15;
    sub_6D5A0((v17 > 1), v14, 1);
    v15 = v166;
    v31 = v185;
    v17 = *(v185 + 24);
    v32 = v17 >> 1;
    goto LABEL_30;
  }

  if (a5 >> 6 == 1)
  {
    v178 = a1;
    if ((a4 & 1) == 0)
    {
      v175 = sub_98C80(_swiftEmptyArrayStorage);
      v167 = sub_1C1344(a3, a4, a5);
      v16 = a3 + 56;
      v42 = 1 << *(a3 + 32);
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & *(a3 + 56);
      v14 = (v42 + 63) >> 6;

      v10 = 0;
LABEL_39:
      if (v44)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v17 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_212;
        }

        if (v17 >= v14)
        {
          break;
        }

        v44 = *(v16 + 8 * v17);
        ++v10;
        if (v44)
        {
          v10 = v17;
LABEL_44:
          v45 = __clz(__rbit64(v44));
          v44 &= v44 - 1;
          v46 = *(v174 + 48) + ((v10 << 10) | (16 * v45));
          v47 = *v46;
          v180 = *(v46 + 8);
          switch(*(v46 + 8))
          {
            case 1:
              v48 = &qword_DE8E90;
              break;
            case 2:
              v48 = &qword_DE8E78;
              break;
            case 4:
            case 9:
            case 0xC:
              v48 = &unk_DE8EB0;
              break;
            case 5:
              v48 = &unk_E087D0;
              break;
            case 8:
            case 0xA:
              v48 = &unk_DE9C00;
              break;
            case 0xB:
              v48 = &unk_DE8EC0;
              break;
            case 0xD:
              v48 = &unk_DF1280;
              break;
            case 0xE:
              v48 = &qword_DED7C0;
              break;
            case 0xF:
              v48 = &unk_DE8EA0;
              break;
            default:
              v48 = &unk_E04570;
              break;
          }

          v49 = sub_13C80(0, v48);
          sub_13C80(0, &unk_DE8180);
          v50 = v47;
          a5 = *MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
          sub_13C80(0, &qword_DEDE20);
          a3 = v50;
          a1 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v49, a5, 0, a3);
          v52 = v51;

          if (!v52)
          {
            goto LABEL_38;
          }

          a5 = v180;
          if ((sub_4734C0(v180, v167) & 1) == 0)
          {

LABEL_38:

            goto LABEL_39;
          }

          if (*(v175 + 16) && (v53 = sub_2EC880(v180), (v54 & 1) != 0))
          {
            v55 = *(*(v175 + 56) + 8 * v53);
          }

          else
          {
            v55 = _swiftEmptyArrayStorage;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_6B0F0(0, *(v55 + 2) + 1, 1, v55);
          }

          v57 = *(v55 + 2);
          v56 = *(v55 + 3);
          v169 = v55;
          if (v57 >= v56 >> 1)
          {
            v169 = sub_6B0F0((v56 > 1), v57 + 1, 1, v55);
          }

          *(v169 + 2) = v57 + 1;
          v58 = &v169[16 * v57];
          *(v58 + 4) = a1;
          *(v58 + 5) = v52;
          v59 = swift_isUniquelyReferenced_nonNull_native();
          *&v185 = v175;
          v60 = sub_2EC880(v180);
          v62 = *(v175 + 16);
          v63 = (v61 & 1) == 0;
          v64 = __OFADD__(v62, v63);
          v65 = v62 + v63;
          if (v64)
          {
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            sub_ABB4C0();
            __break(1u);
LABEL_224:
            sub_ABB4C0();
            __break(1u);
            JUMPOUT(0x1C0A10);
          }

          a1 = v61;
          if (*(v175 + 24) >= v65)
          {
            if ((v59 & 1) == 0)
            {
              v70 = v60;
              sub_333340();
              v60 = v70;
            }
          }

          else
          {
            sub_32B408(v65, v59);
            v60 = sub_2EC880(v180);
            if ((a1 & 1) != (v66 & 1))
            {
              goto LABEL_224;
            }
          }

          v67 = v185;
          v175 = v185;
          if (a1)
          {
            *(*(v185 + 56) + 8 * v60) = v169;
          }

          else
          {
            *(v185 + 8 * (v60 >> 6) + 64) |= 1 << v60;
            *(v67[6] + v60) = v180;
            *(v67[7] + 8 * v60) = v169;

            v68 = v67[2];
            v64 = __OFADD__(v68, 1);
            v69 = v68 + 1;
            if (v64)
            {
              goto LABEL_222;
            }

            v67[2] = v69;
          }

          goto LABEL_39;
        }
      }

      a3 = 0;
      v16 = v175;
      v76 = v175 + 64;
      v77 = 1 << *(v175 + 32);
      v78 = -1;
      v15 = -1 << v77;
      if (v77 < 64)
      {
        v78 = ~v15;
      }

      v14 = v78 & *(v175 + 64);
      a5 = v187;
      v79 = (v77 + 63) >> 6;
      v168 = v79;
LABEL_81:
      if (v14)
      {
        goto LABEL_86;
      }

      while (1)
      {
        v17 = a3 + 1;
        if (__OFADD__(a3, 1))
        {
          goto LABEL_213;
        }

        if (v17 >= v79)
        {
          break;
        }

        v14 = *(v76 + 8 * v17);
        ++a3;
        if (v14)
        {
          a3 = v17;
LABEL_86:
          v81 = *(*(v16 + 48) + (__clz(__rbit64(v14)) | (a3 << 6)));
          v14 &= v14 - 1;
          *&v185 = 1534289001;
          *(&v185 + 1) = 0xE400000000000000;
          v82 = 0xE800000000000000;
          v83 = 0x73726F7461727563;
          switch(v81)
          {
            case 1:
              v82 = 0xE600000000000000;
              v83 = 0x736D75626C61;
              break;
            case 2:
              v82 = 0xE700000000000000;
              v83 = 0x73747369747261;
              break;
            case 3:
              break;
            case 4:
              v82 = 0xE500000000000000;
              v83 = 0x73676E6F73;
              break;
            case 5:
              v83 = 0x736E6F6974617473;
              break;
            case 6:
              v83 = 0x75632D656C707061;
              v82 = 0xEE0073726F746172;
              break;
            case 7:
              v83 = 0x6169726F74696465;
              v82 = 0xEF736D6574692D6CLL;
              break;
            case 8:
              v83 = 0x6F6D2D636973756DLL;
              v84 = 1936025974;
              goto LABEL_102;
            case 9:
              v83 = 0x69762D636973756DLL;
              v84 = 1936680292;
LABEL_102:
              v82 = (v84 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
              break;
            case 10:
              v83 = 0x6F736970652D7674;
              v82 = 0xEB00000000736564;
              break;
            case 11:
              v83 = 0x73776F68732D7674;
              break;
            case 12:
              v83 = 0x646564616F6C7075;
              v82 = 0xEF736F656469762DLL;
              break;
            case 13:
              v83 = 0x6C2D64726F636572;
              v82 = 0xED0000736C656261;
              break;
            case 14:
              v83 = 0x702D6C6169636F73;
              v82 = 0xEF73656C69666F72;
              break;
            case 15:
              v82 = 0xE900000000000073;
              v83 = 0x7473696C79616C70;
              break;
            default:
              v82 = 0xEA00000000007365;
              v83 = 0x6974697669746361;
              break;
          }

          v188._countAndFlagsBits = v83;
          v188._object = v82;
          sub_AB94A0(v188);

          v189._countAndFlagsBits = 93;
          v189._object = 0xE100000000000000;
          sub_AB94A0(v189);
          v85 = *(&v185 + 1);
          v16 = v185;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
          sub_36A00(&qword_E00020, &unk_DFDE70);
          v10 = sub_AB9140();
          v87 = v86;
          v88 = a5;
          a5 = swift_isUniquelyReferenced_nonNull_native();
          *&v185 = v88;
          a1 = sub_2EBF88(v16, *(&v185 + 1));
          v17 = *(v88 + 16);
          v90 = (v89 & 1) == 0;
          v91 = v17 + v90;
          if (__OFADD__(v17, v90))
          {
            goto LABEL_218;
          }

          v92 = v89;
          if (*(v88 + 24) >= v91)
          {
            if (a5)
            {
              if ((v89 & 1) == 0)
              {
                goto LABEL_110;
              }
            }

            else
            {
              sub_330E18();
              if ((v92 & 1) == 0)
              {
                goto LABEL_110;
              }
            }

LABEL_79:

            a5 = v185;
            v80 = (*(v185 + 56) + 16 * a1);
            *v80 = v10;
            v80[1] = v87;

            goto LABEL_80;
          }

          sub_32714C(v91, a5);
          v93 = sub_2EBF88(v16, *(&v185 + 1));
          if ((v92 & 1) != (v94 & 1))
          {
            goto LABEL_223;
          }

          a1 = v93;
          if (v92)
          {
            goto LABEL_79;
          }

LABEL_110:
          a5 = v185;
          *(v185 + 8 * (a1 >> 6) + 64) |= 1 << a1;
          v95 = (*(a5 + 48) + 16 * a1);
          *v95 = v16;
          v95[1] = v85;
          v96 = (*(a5 + 56) + 16 * a1);
          *v96 = v10;
          v96[1] = v87;
          v97 = *(a5 + 16);
          v64 = __OFADD__(v97, 1);
          v17 = v97 + 1;
          if (v64)
          {
            goto LABEL_219;
          }

          *(a5 + 16) = v17;
LABEL_80:

          v187 = a5;
          v16 = v175;
          v79 = v168;
          v76 = v175 + 64;
          goto LABEL_81;
        }
      }

      goto LABEL_115;
    }

    v10 = a3 + 56;
    v11 = 1 << *(a3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a3 + 56);
    v14 = (v11 + 63) >> 6;

    v16 = 0;
    v179 = _swiftEmptyArrayStorage;
    while (1)
    {
      v17 = v16;
      if (!v13)
      {
        break;
      }

LABEL_11:
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v19 = *(v174 + 48) + ((v16 << 10) | (16 * v18));
      v20 = *v19;
      switch(*(v19 + 8))
      {
        case 1:
          v21 = &qword_DE8E90;
          break;
        case 2:
          v21 = &qword_DE8E78;
          break;
        case 4:
        case 9:
        case 0xC:
          v21 = &unk_DE8EB0;
          break;
        case 5:
          v21 = &unk_E087D0;
          break;
        case 8:
        case 0xA:
          v21 = &unk_DE9C00;
          break;
        case 0xB:
          v21 = &unk_DE8EC0;
          break;
        case 0xD:
          v21 = &unk_DF1280;
          break;
        case 0xE:
          v21 = &qword_DED7C0;
          break;
        case 0xF:
          v21 = &unk_DE8EA0;
          break;
        default:
          v21 = &unk_E04570;
          break;
      }

      v22 = sub_13C80(0, v21);
      a1 = sub_13C80(0, &unk_DE8180);
      v23 = v20;
      a5 = *MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      sub_13C80(0, &qword_DEDE20);
      v24 = v23;
      v25 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v22, a5, 0, v24);
      a3 = v26;

      if (a3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v179 = sub_6B0F0(0, *(v179 + 2) + 1, 1, v179);
        }

        v28 = *(v179 + 2);
        v27 = *(v179 + 3);
        a1 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          v179 = sub_6B0F0((v27 > 1), v28 + 1, 1, v179);
        }

        *(v179 + 2) = a1;
        v29 = &v179[16 * v28];
        *(v29 + 4) = v25;
        *(v29 + 5) = a3;
      }

      else
      {
      }
    }

    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        a3 = v174;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
        sub_36A00(&qword_E00020, &unk_DFDE70);
        v71 = sub_AB9140();
        v73 = v72;

        v74 = v187;
        v75 = swift_isUniquelyReferenced_nonNull_native();
        *&v185 = v74;
        sub_92078(v71, v73, 7562345, 0xE300000000000000, v75);
        v187 = v74;
        a5 = v173;
        a4 = v172;
        goto LABEL_116;
      }

      v13 = *(v10 + 8 * v16);
      ++v17;
      if (v13)
      {
        goto LABEL_11;
      }
    }

LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

  sub_1D2B24(a3, a4, a5);
  v40 = v187;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  *&v185 = v40;
  sub_92078(a3, a4, 1836213620, 0xE400000000000000, v41);
  v187 = v40;
LABEL_117:
  ICURLBag.subscript.getter(&v185);
  if (v186)
  {
    if (swift_dynamicCast())
    {
      a1 = v184;
      v98 = v187;
      v99 = swift_isUniquelyReferenced_nonNull_native();
      *&v185 = v98;
      sub_92078(v183, v184, 108, 0xE100000000000000, v99);
      v187 = v185;
    }
  }

  else
  {
    sub_12E1C(&v185, &unk_DE8E40);
  }

  v100 = sub_1C1524(a3, a4, a5);
  if (v101)
  {
    sub_2E4D4C(v100, v101, 0x7365707974, 0xE500000000000000);
  }

  v102 = sub_1C1644(a3, a4, a5);
  if (v103)
  {
    sub_2E4D4C(v102, v103, 1752459639, 0xE400000000000000);
  }

  v104 = sub_1C19C0(a3, a4, a5);
  v17 = 0;
  v105 = v104 + 64;
  v176 = v104 + 64;
  v178 = v104;
  v106 = 1 << *(v104 + 32);
  v15 = -1;
  if (v106 < 64)
  {
    v15 = ~(-1 << v106);
  }

  v16 = v15 & *(v104 + 64);
  v107 = v187;
  v10 = (v106 + 63) >> 6;
  while (v16)
  {
    v14 = v17;
LABEL_135:
    v110 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v111 = v110 | (v14 << 6);
    v112 = *(*(v178 + 48) + v111);
    v113 = (*(v178 + 56) + 16 * v111);
    v114 = v113[1];
    v181 = *v113;
    v115 = 0xE700000000000000;
    *&v185 = 0x5B646E65747865;
    *(&v185 + 1) = 0xE700000000000000;
    a1 = 0x73747369747261;
    switch(v112)
    {
      case 1:
        v115 = 0xE600000000000000;
        a1 = 0x736D75626C61;
        break;
      case 2:
        break;
      case 3:
        v115 = 0xE800000000000000;
        a1 = 0x73726F7461727563;
        break;
      case 4:
        v115 = 0xE500000000000000;
        a1 = 0x73676E6F73;
        break;
      case 5:
        v115 = 0xE800000000000000;
        a1 = 0x736E6F6974617473;
        break;
      case 6:
        a1 = 0x75632D656C707061;
        v115 = 0xEE0073726F746172;
        break;
      case 7:
        a1 = 0x6169726F74696465;
        v115 = 0xEF736D6574692D6CLL;
        break;
      case 8:
        a1 = 0x6F6D2D636973756DLL;
        v116 = 1936025974;
        goto LABEL_151;
      case 9:
        a1 = 0x69762D636973756DLL;
        v116 = 1936680292;
LABEL_151:
        v115 = (v116 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
        break;
      case 10:
        a1 = 0x6F736970652D7674;
        v115 = 0xEB00000000736564;
        break;
      case 11:
        v115 = 0xE800000000000000;
        a1 = 0x73776F68732D7674;
        break;
      case 12:
        a1 = 0x646564616F6C7075;
        v115 = 0xEF736F656469762DLL;
        break;
      case 13:
        a1 = 0x6C2D64726F636572;
        v115 = 0xED0000736C656261;
        break;
      case 14:
        a1 = 0x702D6C6169636F73;
        v115 = 0xEF73656C69666F72;
        break;
      case 15:
        v115 = 0xE900000000000073;
        a1 = 0x7473696C79616C70;
        break;
      default:
        v115 = 0xEA00000000007365;
        a1 = 0x6974697669746361;
        break;
    }

    a5 = v114;

    v190._countAndFlagsBits = a1;
    v190._object = v115;
    sub_AB94A0(v190);

    v191._countAndFlagsBits = 93;
    v191._object = 0xE100000000000000;
    sub_AB94A0(v191);
    v117 = *(&v185 + 1);
    a3 = v185;
    v118 = swift_isUniquelyReferenced_nonNull_native();
    *&v185 = v107;
    v119 = sub_2EBF88(a3, v117);
    v121 = v107[2];
    v122 = (v120 & 1) == 0;
    v64 = __OFADD__(v121, v122);
    v17 = v121 + v122;
    if (v64)
    {
      goto LABEL_214;
    }

    a1 = v120;
    if (v107[3] < v17)
    {
      sub_32714C(v17, v118);
      v119 = sub_2EBF88(a3, v117);
      if ((a1 & 1) != (v123 & 1))
      {
        goto LABEL_223;
      }

LABEL_157:
      if (a1)
      {
        goto LABEL_128;
      }

      goto LABEL_158;
    }

    if (v118)
    {
      goto LABEL_157;
    }

    v127 = v119;
    sub_330E18();
    v119 = v127;
    if (a1)
    {
LABEL_128:
      v108 = v119;

      v107 = v185;
      v109 = (*(v185 + 56) + 16 * v108);
      *v109 = v181;
      v109[1] = a5;

      goto LABEL_129;
    }

LABEL_158:
    v107 = v185;
    *(v185 + 8 * (v119 >> 6) + 64) |= 1 << v119;
    v124 = (v107[6] + 16 * v119);
    *v124 = a3;
    v124[1] = v117;
    v125 = (v107[7] + 16 * v119);
    *v125 = v181;
    v125[1] = a5;
    v126 = v107[2];
    v64 = __OFADD__(v126, 1);
    v17 = v126 + 1;
    if (v64)
    {
      goto LABEL_216;
    }

    v107[2] = v17;
LABEL_129:
    v17 = v14;
    v105 = v176;
  }

  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

    if (v14 >= v10)
    {
      break;
    }

    v16 = *(v105 + 8 * v14);
    ++v17;
    if (v16)
    {
      goto LABEL_135;
    }
  }

  v187 = v107;

  v128 = sub_1C17A8(v174, v172, v173);
  v17 = 0;
  a3 = v128 + 64;
  v129 = 1 << *(v128 + 32);
  v15 = -1;
  if (v129 < 64)
  {
    v15 = ~(-1 << v129);
  }

  v16 = v15 & *(v128 + 64);
  v130 = (v129 + 63) >> 6;
  v177 = v130;
  v178 = v128;
  while (2)
  {
    if (v16)
    {
      v133 = v17;
LABEL_172:
      v134 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v135 = v134 | (v133 << 6);
      v136 = *(*(v178 + 48) + v135);
      v137 = (*(v178 + 56) + 16 * v135);
      v139 = *v137;
      v138 = v137[1];
      v140 = 0xE700000000000000;
      *&v185 = 0x5B6574616C6572;
      *(&v185 + 1) = 0xE700000000000000;
      v182 = v139;
      a1 = 0x73747369747261;
      switch(v136)
      {
        case 1:
          v140 = 0xE600000000000000;
          a1 = 0x736D75626C61;
          break;
        case 2:
          break;
        case 3:
          v140 = 0xE800000000000000;
          a1 = 0x73726F7461727563;
          break;
        case 4:
          v140 = 0xE500000000000000;
          a1 = 0x73676E6F73;
          break;
        case 5:
          v140 = 0xE800000000000000;
          a1 = 0x736E6F6974617473;
          break;
        case 6:
          a1 = 0x75632D656C707061;
          v140 = 0xEE0073726F746172;
          break;
        case 7:
          a1 = 0x6169726F74696465;
          v140 = 0xEF736D6574692D6CLL;
          break;
        case 8:
          a1 = 0x6F6D2D636973756DLL;
          v141 = 1936025974;
          goto LABEL_188;
        case 9:
          a1 = 0x69762D636973756DLL;
          v141 = 1936680292;
LABEL_188:
          v140 = (v141 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
          break;
        case 10:
          a1 = 0x6F736970652D7674;
          v140 = 0xEB00000000736564;
          break;
        case 11:
          v140 = 0xE800000000000000;
          a1 = 0x73776F68732D7674;
          break;
        case 12:
          a1 = 0x646564616F6C7075;
          v140 = 0xEF736F656469762DLL;
          break;
        case 13:
          a1 = 0x6C2D64726F636572;
          v140 = 0xED0000736C656261;
          break;
        case 14:
          a1 = 0x702D6C6169636F73;
          v140 = 0xEF73656C69666F72;
          break;
        case 15:
          v140 = 0xE900000000000073;
          a1 = 0x7473696C79616C70;
          break;
        default:
          v140 = 0xEA00000000007365;
          a1 = 0x6974697669746361;
          break;
      }

      v10 = v138;

      v192._countAndFlagsBits = a1;
      v192._object = v140;
      sub_AB94A0(v192);

      v193._countAndFlagsBits = 93;
      v193._object = 0xE100000000000000;
      sub_AB94A0(v193);
      a5 = *(&v185 + 1);
      v14 = v185;
      v142 = swift_isUniquelyReferenced_nonNull_native();
      *&v185 = v107;
      v143 = sub_2EBF88(v14, a5);
      v145 = v107[2];
      v146 = (v144 & 1) == 0;
      v64 = __OFADD__(v145, v146);
      v17 = v145 + v146;
      if (v64)
      {
        goto LABEL_215;
      }

      a1 = v144;
      if (v107[3] >= v17)
      {
        if (v142)
        {
          goto LABEL_194;
        }

        v152 = v143;
        sub_330E18();
        v143 = v152;
        v148 = v182;
        if (a1)
        {
          goto LABEL_165;
        }

LABEL_195:
        v107 = v185;
        *(v185 + 8 * (v143 >> 6) + 64) |= 1 << v143;
        v149 = (v107[6] + 16 * v143);
        *v149 = v14;
        v149[1] = a5;
        v150 = (v107[7] + 16 * v143);
        *v150 = v148;
        v150[1] = v10;
        v151 = v107[2];
        v64 = __OFADD__(v151, 1);
        v17 = v151 + 1;
        if (v64)
        {
          goto LABEL_217;
        }

        v107[2] = v17;
      }

      else
      {
        sub_32714C(v17, v142);
        v143 = sub_2EBF88(v14, a5);
        if ((a1 & 1) != (v147 & 1))
        {
          goto LABEL_223;
        }

LABEL_194:
        v148 = v182;
        if ((a1 & 1) == 0)
        {
          goto LABEL_195;
        }

LABEL_165:
        v131 = v143;

        v107 = v185;
        v132 = (*(v185 + 56) + 16 * v131);
        *v132 = v148;
        v132[1] = v10;
      }

      v17 = v133;
      v130 = v177;
      continue;
    }

    break;
  }

  while (1)
  {
    v133 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_210;
    }

    if (v133 >= v130)
    {
      break;
    }

    v16 = *(a3 + 8 * v133);
    ++v17;
    if (v16)
    {
      goto LABEL_172;
    }
  }

  v187 = v107;

  if (v170 == 2)
  {
    if (v173)
    {
      v153 = sub_ABB3C0();

      if ((v153 & 1) == 0)
      {
        goto LABEL_205;
      }
    }

    else
    {
    }

    *&v185 = 50;
    v154 = sub_ABB330();
    v156 = v155;
    v157 = swift_isUniquelyReferenced_nonNull_native();
    *&v185 = v107;
    sub_92078(v154, v156, 0x694C657372617073, 0xEB0000000074696DLL, v157);
    v107 = v185;
    v187 = v185;
  }

LABEL_205:
  v158 = [a2 deviceInfo];
  v159 = [v158 isIPad];

  if (v159)
  {
    v160 = 2;
  }

  else
  {
    v160 = 3;
  }

  v161 = sub_1BE758(v160);
  v163 = v162;
  v164 = swift_isUniquelyReferenced_nonNull_native();
  *&v185 = v107;
  sub_92078(v161, v163, 0x6D726F6674616C70, 0xE800000000000000, v164);
  return v185;
}

uint64_t sub_1C0B50(void *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = [a1 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v7 || (v8 = v7, v9 = sub_AB8FF0(), v8, v10 = sub_16A8C4(v9), , !v10))
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    goto LABEL_11;
  }

  if (!*(v10 + 16) || (v11 = sub_2EBF88(0x686372616573, 0xE600000000000000), (v12 & 1) == 0))
  {
    v67 = 0;
    v65 = 0u;
    v66 = 0u;

    goto LABEL_11;
  }

  sub_9ACA0(*(v10 + 56) + 40 * v11, &v65);

  if (!*(&v66 + 1))
  {
LABEL_11:
    sub_12E1C(&v65, &qword_DF2BD0);
    v13 = 0;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00000);
  if (swift_dynamicCast())
  {
    v13 = v64;
  }

  else
  {
    v13 = 0;
  }

LABEL_12:
  v14 = a5 >> 6;
  if (v14 == 2)
  {
    if (a5)
    {
      if (v13)
      {
        if (*(v13 + 16) && (v16 = sub_2EBF88(0xD000000000000012, 0x8000000000B562B0), (v17 & 1) != 0))
        {
          sub_9ACA0(*(v13 + 56) + 40 * v16, &v65);
        }

        else
        {
          v67 = 0;
          v65 = 0u;
          v66 = 0u;
        }

        if (*(&v66 + 1))
        {
          if (swift_dynamicCast())
          {
            v47 = v64;
LABEL_81:
            *&v65 = v47;
            v59 = sub_ABB330();
            v61 = v60;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v65 = *a2;
            result = sub_92078(v59, v61, 0x74696D696CLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
            *a2 = v65;
            return result;
          }

LABEL_80:
          v47 = 25;
          goto LABEL_81;
        }
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
      }

      sub_12E1C(&v65, &qword_DF2BD0);
      goto LABEL_80;
    }

    if (!v13)
    {
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
      sub_12E1C(&v65, &qword_DF2BD0);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
      sub_12E1C(&v65, &qword_DF2BD0);
      v47 = 0;
      v67 = 0;
      v48 = 1;
      v65 = 0u;
      v66 = 0u;
      goto LABEL_77;
    }

    if (*(v13 + 16))
    {

      v45 = sub_2EBF88(0x4C73746C75736572, 0xEC00000074696D69);
      if (v46)
      {
        sub_9ACA0(*(v13 + 56) + 40 * v45, &v65);
      }

      else
      {
        v67 = 0;
        v65 = 0u;
        v66 = 0u;
      }

      if (*(&v66 + 1))
      {
        v49 = swift_dynamicCast();
        if (v49)
        {
          v47 = v64;
        }

        else
        {
          v47 = 0;
        }

        v48 = v49 ^ 1;
LABEL_59:
        if (*(v13 + 16))
        {

          v50 = sub_2EBF88(0xD00000000000001ALL, 0x8000000000B562F0);
          if (v51)
          {
            sub_9ACA0(*(v13 + 56) + 40 * v50, &v65);
          }

          else
          {
            v67 = 0;
            v65 = 0u;
            v66 = 0u;
          }

          if (*(&v66 + 1))
          {
            if (swift_dynamicCast() && (v64 & 1) == 0)
            {

              if ((v48 & 1) == 0)
              {
                goto LABEL_81;
              }

              goto LABEL_80;
            }

LABEL_70:
            if (*(v13 + 16) && (v52 = sub_2EBF88(0xD000000000000012, 0x8000000000B562D0), (v53 & 1) != 0))
            {
              sub_9ACA0(*(v13 + 56) + 40 * v52, &v65);
            }

            else
            {
              v67 = 0;
              v65 = 0u;
              v66 = 0u;
            }

            if (*(&v66 + 1))
            {
              if (swift_dynamicCast())
              {
                v54 = v64;
                goto LABEL_79;
              }

LABEL_78:
              v54 = 1;
LABEL_79:
              *&v65 = v54;
              v55 = sub_ABB330();
              v57 = v56;
              v58 = swift_isUniquelyReferenced_nonNull_native();
              *&v65 = *a2;
              sub_92078(v55, v57, 0x6F43657372617073, 0xEB00000000746E75, v58);
              *a2 = v65;
              if (!v48)
              {
                goto LABEL_81;
              }

              goto LABEL_80;
            }

LABEL_77:
            sub_12E1C(&v65, &qword_DF2BD0);
            goto LABEL_78;
          }
        }

        else
        {
          v67 = 0;
          v65 = 0u;
          v66 = 0u;
        }

        sub_12E1C(&v65, &qword_DF2BD0);
        goto LABEL_70;
      }
    }

    else
    {
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    sub_12E1C(&v65, &qword_DF2BD0);
    v47 = 0;
    v48 = 1;
    goto LABEL_59;
  }

  if (v14 == 1)
  {
  }

  v18 = 0;
  for (i = 0; ; i = 1)
  {
    v63 = v18;
    v21 = *(&off_CF0980 + i + 32);
    strcpy(&v65, "limit[results:");
    HIBYTE(v65) = -18;
    v22._countAndFlagsBits = v21 ? 0x6C75736552706F74 : 0x736D726574;
    v23 = (v21 ? 0xEA00000000007374 : 0xE500000000000000);
    v22._object = v23;
    sub_AB94A0(v22);

    v68._countAndFlagsBits = 93;
    v68._object = 0xE100000000000000;
    sub_AB94A0(v68);
    v24 = v65;
    v25 = v13;
    *&v65 = sub_1BE878(v13, v21);
    v26 = sub_ABB330();
    v28 = v27;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v30 = a2;
    *&v65 = *a2;
    v31 = v65;
    v33 = sub_2EBF88(v24, *(&v24 + 1));
    v34 = *(v31 + 16);
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (*(v31 + 24) >= v36)
    {
      if (v29)
      {
        v40 = v65;
        if (v32)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_330E18();
        v40 = v65;
        if (v37)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_32714C(v36, v29);
      v38 = sub_2EBF88(v24, *(&v24 + 1));
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_84;
      }

      v33 = v38;
      v40 = v65;
      if (v37)
      {
LABEL_21:
        v20 = (v40[7] + 16 * v33);
        *v20 = v26;
        v20[1] = v28;

        goto LABEL_22;
      }
    }

    v40[(v33 >> 6) + 8] |= 1 << v33;
    *(v40[6] + 16 * v33) = v24;
    v41 = (v40[7] + 16 * v33);
    *v41 = v26;
    v41[1] = v28;
    v42 = v40[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_83;
    }

    v40[2] = v44;
LABEL_22:
    a2 = v30;
    *v30 = v40;
    v18 = 1;
    v13 = v25;
    if (v63)
    {
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

void *sub_1C1344(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v10 = &_swiftEmptySetSingleton;
  if (!(a3 >> 6))
  {
    goto LABEL_8;
  }

  if (a3 >> 6 != 1)
  {
    if (a3)
    {
      if (qword_DE6968 != -1)
      {
        swift_once();
      }

      v3 = qword_E71180;
LABEL_11:
      v10 = v3;

      goto LABEL_12;
    }

LABEL_8:
    if (qword_DE6960 != -1)
    {
      swift_once();
    }

    v3 = qword_E71178;
    goto LABEL_11;
  }

  sub_1B5DCC(a1);
  v3 = &_swiftEmptySetSingleton;
LABEL_12:
  v4 = [objc_opt_self() sharedRestrictionsMonitor];
  v5 = [v4 allowsMusicVideos];

  if ((v5 & 1) == 0 && *(v3 + 2))
  {
    sub_2EF560(9);
    sub_2EF560(12);
    v3 = v10;
  }

  static ApplicationCapabilities.shared.getter(v11);
  v6 = v12;

  sub_70C54(v11);
  v7 = sub_472A84(4, v6);

  if ((v7 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4F80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = 5;
    if (*(v3 + 2))
    {
      sub_2EF560(5);

      return v10;
    }

    else
    {
    }
  }

  return v3;
}

uint64_t sub_1C1524(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = 0;
  if ((a3 & 0xC0) != 0x40)
  {
    v5 = sub_1C1344(a1, a2, a3);
    v6 = sub_1B5174(v5);

    v8 = v6;

    sub_1CBBDC(&v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
    sub_36A00(&qword_E00020, &unk_DFDE70);
    v7 = sub_AB9140();

    return v7;
  }

  return result;
}

uint64_t sub_1C1644(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xC0) != 0x80)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_AF4EC0;
  strcpy((v4 + 32), "serverBubbles");
  *(v4 + 46) = -4864;
  if ((a3 & 1) == 0)
  {
    v5 = sub_6B0F0(&dword_0 + 1, 2, 1, v4);
    *(v5 + 2) = 2;
    *(v5 + 6) = 0x676948636972796CLL;
    *(v5 + 7) = 0xEF73746867696C68;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  sub_36A00(&qword_E00020, &unk_DFDE70);
  v6 = sub_AB9140();

  return v6;
}

unint64_t sub_1C17A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = sub_98B88(_swiftEmptyArrayStorage);
  v7 = sub_1C1344(a1, a2, a3);
  if (sub_4734C0(1, v7))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_93FD8(0x73747369747261, 0xE700000000000000, 1, isUniquelyReferenced_nonNull_native);
  }

  if (sub_4734C0(9, v7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
    sub_36A00(&qword_E00020, &unk_DFDE70);
    v9 = sub_AB9140();
    v11 = v10;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_93FD8(v9, v11, 9, v12);
  }

  if (sub_4734C0(4, v7))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
    sub_36A00(&qword_E00020, &unk_DFDE70);
    v13 = sub_AB9140();
    v15 = v14;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_93FD8(v13, v15, 4, v16);
  }

  return v6;
}

unint64_t sub_1C19C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = sub_98B88(_swiftEmptyArrayStorage);
  v7 = sub_1C1344(a1, a2, a3);
  if (sub_4734C0(1, v7))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_93FD8(0x6169726F74696465, 0xEE006F656469566CLL, 1, isUniquelyReferenced_nonNull_native);
  }

  if (sub_4734C0(15, v7))
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_93FD8(0x6169726F74696465, 0xEE006F656469566CLL, 15, v9);
  }

  if (sub_4734C0(4, v7))
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_93FD8(0xD000000000000011, 0x8000000000B56290, 4, v10);
  }

  return v6;
}

void sub_1C1B14(void *a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t), uint64_t a4, unint64_t a5, uint64_t a6, unsigned int a7)
{
  v41 = a7;
  v39 = a5;
  v40 = a6;
  v37 = a1;
  v10 = sub_AB2A90();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_AB31C0();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  UnfairLock.locked<A>(_:)(sub_1D2C30);
  if (v42)
  {
    v42 = 1;
    sub_1D2C90();
    v43 = 0u;
    v44 = 0u;
    v22 = swift_allocError();
    *v23 = 1;
    a3(&v42, v22);
  }

  else
  {
    v34 = a4;
    v24 = *(a2 + 32);
    sub_1BE990(v37, v24, v39, v40, v41, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_12E1C(v14, &unk_DF2AE0);
    }

    else
    {
      (*(v16 + 32))(v21, v14, v15);
      (*(v16 + 16))(v19, v21, v15);
      sub_AB2A50();
      sub_AB2A20();
      v25 = objc_allocWithZone(ICMusicKitURLRequest);
      v26 = sub_AB2A30();
      v27 = [v25 initWithURLRequest:v26 requestContext:v24];

      sub_13C80(0, &qword_E07CC0);
      v28 = static ICURLSessionManager.musicSession.getter();
      v29 = swift_allocObject();
      *(v29 + 16) = a3;
      v31 = v39;
      v30 = v40;
      *(v29 + 24) = v34;
      *(v29 + 32) = v31;
      *(v29 + 40) = v30;
      v32 = v41;
      *(v29 + 48) = v41;

      sub_1D2B24(v31, v30, v32);
      ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(v27, sub_1D2C80, v29);
      (*(v35 + 8))(v38, v36);
      (*(v16 + 8))(v21, v15);

      v33 = *(a2 + 24);
      *(a2 + 24) = v27;
    }
  }
}

void sub_1C1F30(void *a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a1)
  {
    v11 = a1;
    sub_1D2B24(a5, a6, a7);
    sub_1CE32C(v11, a5, a6, a7, v19);
    v12 = *&v19[16];
    v13 = v20;
    v14 = v21;

    v25 = *v19;
    v23 = *&v19[8];
    v24 = v20;
    v22 = v14;
    *v26 = *v19;
    *&v26[16] = v12;
    *&v27 = v13;
    *(&v27 + 1) = v14;
    sub_15F84(&v25, v18, &qword_DF4F70);
    sub_1D2CE4(&v23, v18);
    sub_15F84(&v22, v18, &qword_DF4F78);
    a3(v26, 0);
    sub_12E1C(&v25, &qword_DF4F70);
    sub_1D2D1C(&v23);
    sub_12E1C(&v22, &qword_DF4F78);
    sub_12E1C(&v25, &qword_DF4F70);
    sub_1D2D1C(&v23);
    sub_12E1C(&v22, &qword_DF4F78);
  }

  else
  {
    *v26 = 1;
    sub_1D2C90();
    *&v26[8] = 0u;
    v27 = 0u;
    v16 = swift_allocError();
    *v17 = a2;
    swift_errorRetain();
    a3(v26, v16);
  }
}

void sub_1C212C(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(a1 + 40) = 1;
  if ((v1 & 1) == 0)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      sub_13C80(0, &qword_E07CC0);
      v3 = v2;
      v4 = static ICURLSessionManager.musicSession.getter();
      [v4 cancelRequest:v3];
    }
  }
}

uint64_t sub_1C21B4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C2220(uint64_t a1, int a2)
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

uint64_t sub_1C2268(uint64_t result, int a2, int a3)
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

unint64_t sub_1C22BC()
{
  result = qword_DF4CE0;
  if (!qword_DF4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4CE0);
  }

  return result;
}

unint64_t sub_1C2314()
{
  result = qword_DF4CE8;
  if (!qword_DF4CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4CE8);
  }

  return result;
}

uint64_t sub_1C23C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v144 = a1;
  v143 = a3;
  v5 = sub_AB7C10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB7C50();
  v137 = *(v9 - 8);
  __chkstk_darwin(v9);
  v136 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_AB7C20();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4F50);
  __chkstk_darwin(v12 - 8);
  v145 = &v129 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0);
  v149 = *(v14 - 8);
  v15 = __chkstk_darwin(v14 - 8);
  v148 = (&v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v19 = (&v129 - v18);
  __chkstk_darwin(v17);
  v150 = &v129 - v20;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_98CA8(_swiftEmptyArrayStorage);
  v22 = *v3;
  v151 = swift_allocObject();
  v23 = *(v3 + 8);
  v141 = v5;
  v140 = v6;
  v139 = v9;
  v138 = v8;
  if (v23)
  {
    v24 = v23;
    v25 = v23;
  }

  else
  {
    v25 = sub_988FC(_swiftEmptyArrayStorage);
    v24 = 0;
  }

  v26 = v151;
  *(v151 + 16) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4F30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = 0x70756B6F6F6CLL;
  *(inited + 40) = 0xE600000000000000;
  v147 = v24;

  v28 = sub_1B5624(v22);
  v129 = 0;
  *(inited + 48) = v28;
  v142 = sub_988E8(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &qword_DF4F38);
  v29 = swift_allocObject();
  v29[2] = v144;
  v29[3] = a2;
  v29[4] = v22;
  v29[5] = v21;
  v144 = v29;
  v29[6] = v26;
  v153 = v22;
  v146 = v21;
  if (v23)
  {
    v132 = v3;
    v30 = 1 << *(v22 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v22 + 56);
    v33 = (v30 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v34 = 0;
    v35 = &unk_DFEEE0;
    v36 = &unk_AF7AF0;
    if (v32)
    {
      while (1)
      {
        v37 = v34;
LABEL_12:
        v38 = __clz(__rbit64(v32));
        v32 &= v32 - 1;
        v39 = v150;
        sub_15F84(*(v22 + 48) + *(v149 + 72) * (v38 | (v37 << 6)), v150, &unk_DFEEE0);
        sub_2B8DC(v39, v19);
        switch(*(v19 + 8))
        {
          case 1:
            v40 = &qword_DE8E90;
            break;
          case 2:
            v40 = &qword_DE8E78;
            break;
          case 4:
          case 9:
          case 0xC:
            v40 = &unk_DE8EB0;
            break;
          case 5:
            v40 = &unk_E087D0;
            break;
          case 8:
          case 0xA:
            v40 = &unk_DE9C00;
            break;
          case 0xB:
            v40 = &unk_DE8EC0;
            break;
          case 0xD:
            v40 = &unk_DF1280;
            break;
          case 0xE:
            v40 = &qword_DED7C0;
            break;
          case 0xF:
            v40 = &unk_DE8EA0;
            break;
          default:
            v40 = &unk_E04570;
            break;
        }

        v41 = sub_13C80(0, v40);
        v42 = sub_13C80(0, &unk_DE8180);
        v43 = *MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
        v44 = *v19;
        sub_13C80(0, &qword_DEDE20);
        v45 = v41;
        v3 = v42;
        v46 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v45, v43, 0, v44);
        if (v47)
        {
          v3 = v147;
          if (v147[2].isa && (v48 = sub_2EBF88(v46, v47), (v49 & 1) != 0))
          {
            sub_9ACA0(*(v3 + 56) + 40 * v48, &aBlock);
          }

          else
          {
            v156 = 0;
            aBlock = 0u;
            v155 = 0u;
          }

          v36 = &unk_AF7AF0;

          if (*(&v155 + 1))
          {
            sub_12E1C(&aBlock, &qword_DF2BD0);
            v3 = &v153;
            v50 = v145;
            sub_2F0214(v19, v145);
            sub_12E1C(v50, &qword_DF4F50);
            p_aBlock = v19;
            v35 = &unk_DFEEE0;
            v52 = &unk_DFEEE0;
          }

          else
          {
            v35 = &unk_DFEEE0;
            sub_12E1C(v19, &unk_DFEEE0);
            p_aBlock = &aBlock;
            v52 = &qword_DF2BD0;
          }
        }

        else
        {
          p_aBlock = v19;
          v35 = &unk_DFEEE0;
          v52 = &unk_DFEEE0;
          v36 = &unk_AF7AF0;
        }

        sub_12E1C(p_aBlock, v52);
        v34 = v37;
        if (!v32)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      if (v37 >= v33)
      {
        break;
      }

      v32 = *(v22 + 56 + 8 * v37);
      ++v34;
      if (v32)
      {
        goto LABEL_12;
      }
    }

    v3 = v132;
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  sub_15F84(v3 + 16, &aBlock, &qword_DF4F58);
  v53 = *(&v155 + 1);
  if (*(&v155 + 1))
  {
    v54 = v156;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v155 + 1));
    v55 = (*(v54 + 2))(v53, v54);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    sub_12E1C(&aBlock, &qword_DF4F58);
    v55 = [objc_opt_self() emptyPropertySet];
  }

  v56 = v153;
  if (!*(v153 + 16))
  {

    sub_1CDA30(v142, v55, sub_1D2B14, v144);

    v100 = v143;
    *(v143 + 32) = 0;
    *v100 = 0u;
    v100[1] = 0u;
    goto LABEL_107;
  }

  v130 = v55;
  v35 = type metadata accessor for UnfairLock();
  swift_allocObject();
  v150 = UnfairLock.init()();
  v147 = dispatch_group_create();
  v131 = _s7CatalogV15EndpointRequestCMa();
  v57 = swift_allocObject();
  v145 = v57;
  swift_allocObject();
  *(v57 + 16) = UnfairLock.init()();
  *(v57 + 24) = 0;
  v3 = sub_13C80(0, &qword_DF4F60);
  *(v57 + 32) = static ICMusicKitRequestContext.music.getter();
  *(v57 + 40) = 0;
  v58 = 1 << *(v56 + 32);
  v59 = -1;
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  v60 = v59 & *(v56 + 56);
  v61 = (v58 + 63) >> 6;

  v62 = 0;
  v36 = &unk_DFEEE0;
  v132 = _swiftEmptyArrayStorage;
  while (1)
  {
    v63 = v62;
    if (!v60)
    {
      break;
    }

LABEL_47:
    v64 = __clz(__rbit64(v60));
    v60 &= v60 - 1;
    v65 = v148;
    sub_15F84(*(v56 + 48) + *(v149 + 72) * (v64 | (v62 << 6)), v148, &unk_DFEEE0);
    v66 = *v65;
    v67 = *(v65 + 8);
    v68 = 0xE600000000000000;
    v69 = 0x736D75626C61;
    switch(v67)
    {
      case 1:
        break;
      case 2:
        v68 = 0xE700000000000000;
        v69 = 0x73747369747261;
        break;
      case 3:
        v68 = 0xE800000000000000;
        v69 = 0x73726F7461727563;
        break;
      case 4:
        v68 = 0xE500000000000000;
        v69 = 0x73676E6F73;
        break;
      case 5:
        v68 = 0xE800000000000000;
        v69 = 0x736E6F6974617473;
        break;
      case 6:
        v69 = 0x75632D656C707061;
        v68 = 0xEE0073726F746172;
        break;
      case 7:
        v69 = 0x6169726F74696465;
        v68 = 0xEF736D6574692D6CLL;
        break;
      case 8:
        v69 = 0x6F6D2D636973756DLL;
        v70 = 1936025974;
        goto LABEL_63;
      case 9:
        v69 = 0x69762D636973756DLL;
        v70 = 1936680292;
LABEL_63:
        v68 = v70 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 10:
        v69 = 0x6F736970652D7674;
        v68 = 0xEB00000000736564;
        break;
      case 11:
        v68 = 0xE800000000000000;
        v69 = 0x73776F68732D7674;
        break;
      case 12:
        v69 = 0x646564616F6C7075;
        v68 = 0xEF736F656469762DLL;
        break;
      case 13:
        v69 = 0x6C2D64726F636572;
        v68 = 0xED0000736C656261;
        break;
      case 14:
        v69 = 0x702D6C6169636F73;
        v68 = 0xEF73656C69666F72;
        break;
      case 15:
        v68 = 0xE900000000000073;
        v69 = 0x7473696C79616C70;
        break;
      default:
        v68 = 0xEA00000000007365;
        v69 = 0x6974697669746361;
        break;
    }

    v71 = v66;
    v35 = sub_1CF1DC(v69, v68);
    v3 = v35;
    sub_12E1C(v148, &unk_DFEEE0);
    if (v35 == 16)
    {
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v132 = sub_6B8EC(0, *(v132 + 2) + 1, 1, v132);
      }

      v73 = *(v132 + 2);
      v72 = *(v132 + 3);
      v3 = v73 + 1;
      if (v73 >= v72 >> 1)
      {
        v132 = sub_6B8EC((v72 > 1), v73 + 1, 1, v132);
      }

      v74 = v132;
      *(v132 + 2) = v3;
      v75 = &v74[16 * v73];
      *(v75 + 4) = v71;
      v75[40] = v35;
      v36 = &unk_DFEEE0;
    }
  }

  while (1)
  {
    v62 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      goto LABEL_109;
    }

    if (v62 >= v61)
    {
      break;
    }

    v60 = *(v56 + 56 + 8 * v62);
    ++v63;
    if (v60)
    {
      goto LABEL_47;
    }
  }

  v3 = sub_2F3C78(v132);

  v76 = *(v3 + 32);
  v77 = v76 & 0x3F;
  v36 = ((1 << v76) + 63) >> 6;
  v35 = 8 * v36;
  isStackAllocationSafe = swift_bridgeObjectRetain_n();
  if (v77 > 0xD)
  {
    goto LABEL_111;
  }

  do
  {
    v149 = v36;
    v148 = &v129;
    __chkstk_darwin(isStackAllocationSafe);
    v79 = &v129 - ((v35 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v79, v35);
    v80 = 0;
    v81 = 0;
    v82 = 1 << *(v3 + 32);
    v83 = -1;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    v36 = v83 & *(v3 + 56);
    v84 = (v82 + 63) >> 6;
    while (v36)
    {
      v85 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
LABEL_82:
      v35 = v85 | (v81 << 6);
      if (*(*(v3 + 48) + 16 * v35 + 8) == 14)
      {

LABEL_86:
        *&v79[(v35 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v35;
        if (__OFADD__(v80++, 1))
        {
          __break(1u);
LABEL_89:
          v90 = sub_1CAE6C(v79, v149, v80, v3);

          goto LABEL_90;
        }
      }

      else
      {
        v88 = sub_ABB3C0();

        if (v88)
        {
          goto LABEL_86;
        }
      }
    }

    v86 = v81;
    while (1)
    {
      v81 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        break;
      }

      if (v81 >= v84)
      {
        goto LABEL_89;
      }

      v87 = *(v3 + 56 + 8 * v81);
      ++v86;
      if (v87)
      {
        v85 = __clz(__rbit64(v87));
        v36 = (v87 - 1) & v87;
        goto LABEL_82;
      }
    }

LABEL_110:
    __break(1u);
LABEL_111:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v126 = swift_slowAlloc();

  v127 = v129;
  v128 = sub_1CB820(v126, v36, v3, sub_1C3FC0);
  if (v127)
  {

    swift_bridgeObjectRelease_n();

    __break(1u);
    JUMPOUT(0x1C3914);
  }

  v90 = v128;
  swift_bridgeObjectRelease_n();

LABEL_90:

  if (*(v90 + 2) > *(v3 + 16) >> 3)
  {
    v91 = sub_1C6088(v90, v3);
    if (*(v90 + 2))
    {
      goto LABEL_92;
    }

LABEL_102:

    v92 = _swiftEmptyArrayStorage;
    if (!*(v91 + 2))
    {
      goto LABEL_103;
    }

LABEL_95:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = sub_6BA4C(0, *(v92 + 2) + 1, 1, v92);
    }

    v97 = *(v92 + 2);
    v96 = *(v92 + 3);
    v98 = v97 + 1;
    if (v97 >= v96 >> 1)
    {
      v92 = sub_6BA4C((v96 > 1), v97 + 1, 1, v92);
    }

    *(v92 + 2) = v98;
    v99 = &v92[24 * v97];
    *(v99 + 4) = v91;
    *(v99 + 5) = 0;
    v99[48] = 64;
    goto LABEL_104;
  }

  *&aBlock = v3;
  sub_1C4EB4(v90);
  v91 = aBlock;
  if (!*(v90 + 2))
  {
    goto LABEL_102;
  }

LABEL_92:
  v92 = sub_6BA4C(0, 1, 1, _swiftEmptyArrayStorage);
  v94 = *(v92 + 2);
  v93 = *(v92 + 3);
  if (v94 >= v93 >> 1)
  {
    v92 = sub_6BA4C((v93 > 1), v94 + 1, 1, v92);
  }

  *(v92 + 2) = v94 + 1;
  v95 = &v92[24 * v94];
  *(v95 + 4) = v90;
  *(v95 + 5) = 1;
  v95[48] = 64;
  if (*(v91 + 2))
  {
    goto LABEL_95;
  }

LABEL_103:

  v98 = *(v92 + 2);
  if (v98)
  {
LABEL_104:
    v149 = v92;
    v101 = (v92 + 48);
    v102 = v147;
    v103 = v145;
    do
    {
      v104 = *(v101 - 2);
      v105 = *(v101 - 1);
      v106 = *v101;
      v101 += 24;
      sub_1D2B24(v104, v105, v106);
      dispatch_group_enter(v102);
      v107 = swift_allocObject();
      v108 = v150;
      v107[2] = v102;
      v107[3] = v108;
      v107[4] = v151;

      v109 = v102;

      BagProvider.shared.unsafeMutableAddressor();
      v110 = swift_allocObject();
      *(v110 + 16) = v103;
      *(v110 + 24) = sub_1D2B9C;
      *(v110 + 32) = v107;
      *(v110 + 40) = v104;
      *(v110 + 48) = v105;
      *(v110 + 56) = v106;

      BagProvider.getBag(completion:)(sub_1D2BD8, v110);

      --v98;
    }

    while (v98);
  }

  sub_13C80(0, &qword_DE8ED0);
  v111 = v134;
  v112 = v133;
  v113 = v135;
  (*(v134 + 104))(v133, enum case for DispatchQoS.QoSClass.userInteractive(_:), v135);
  v114 = sub_ABA190();
  (*(v111 + 8))(v112, v113);
  v115 = swift_allocObject();
  v116 = v130;
  v115[2] = v142;
  v115[3] = v116;
  v117 = v144;
  v115[4] = sub_1D2B14;
  v115[5] = v117;
  v156 = sub_1D2C24;
  v157 = v115;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v155 = sub_1B5EB4;
  *(&v155 + 1) = &block_descriptor_45;
  v118 = _Block_copy(&aBlock);
  v119 = v116;

  v120 = v136;
  sub_AB7C30();
  v152 = _swiftEmptyArrayStorage;
  sub_1D3018(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_36A00(&qword_DF06D0, &unk_DE9C30);
  v121 = v138;
  v122 = v141;
  sub_ABABB0();
  v123 = v147;
  sub_ABA0F0();
  (*(v140 + 8))(v121, v122);
  (*(v137 + 8))(v120, v139);
  _Block_release(v118);

  v124 = v143;
  *(v143 + 24) = v131;
  v124[4] = &off_D00038;

  *v124 = v145;
LABEL_107:
}

id sub_1C3994(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v67 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF4F98);
  __chkstk_darwin(v13 - 8);
  v66 = (&v59 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0);
  v69 = *(v15 - 8);
  v16 = __chkstk_darwin(v15 - 8);
  v70 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v59 - v19;
  __chkstk_darwin(v18);
  v68 = &v59 - v21;
  if (a1)
  {
    result = [a1 results];
    if (!result)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v23 = result;
    v24 = [result allItems];

    v25 = sub_AB9760();
    v26 = sub_12DBC0(v25);

    if (v26)
    {
      v27 = v20;
      v60 = a7;
      v61 = a1;
      v62 = a4;
      v63 = a3;
      v28 = 1 << *(a5 + 32);
      v29 = -1;
      if (v28 < 64)
      {
        v29 = ~(-1 << v28);
      }

      v30 = v29 & *(a5 + 56);
      v31 = (v28 + 63) >> 6;

      v32 = 0;
      v71 = 0;
      v64 = v20;
      v65 = v26;
      while (v30)
      {
LABEL_13:
        v34 = v68;
        sub_15F84(*(a5 + 48) + *(v69 + 72) * (__clz(__rbit64(v30)) | (v32 << 6)), v68, &unk_DFEEE0);
        v35 = sub_2B8DC(v34, v27);
        __chkstk_darwin(v35);
        *(&v59 - 2) = v27;
        v36 = v71;
        v37 = sub_1B5EF8(sub_1D2FF8, (&v59 - 4), v26);
        v38 = v27;
        v71 = v36;
        if (v37)
        {
          v39 = v37;
          sub_15F84(v38, v70, &unk_DFEEE0);
          v40 = v66;
          *v66 = v39;
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E00040);
          swift_storeEnumTagMultiPayload();
          (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
          swift_beginAccess();
          v42 = v39;
          v43 = v40;
          v26 = v65;
          sub_2E5AC0(v43, v70);
          swift_endAccess();

          v38 = v64;
        }

        v30 &= v30 - 1;
        v27 = v38;
        result = sub_12E1C(v38, &unk_DFEEE0);
      }

      while (1)
      {
        v33 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v33 >= v31)
        {

          v46 = v67;
          swift_beginAccess();
          v47 = *(v46 + 16);
          v48 = v60;
          swift_beginAccess();
          v49 = *(v48 + 16);
          type metadata accessor for BindingRequestResponseInvalidation();
          v50 = MPModelResponseDidInvalidateNotification;
          v51 = v61;
          UIScreen.Dimensions.size.getter(v52);
          v72[3] = &type metadata for NotificationTrigger;
          v72[4] = &protocol witness table for NotificationTrigger;
          v72[0] = v53;
          v72[1] = v54;

          v55 = v50;
          v56 = v51;
          v57 = BindingRequestResponseInvalidation.__allocating_init(trigger:)(v72);
          v58 = sub_1D3018(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation);
          v63(v47, v49, 0, v57, v58);
        }

        v30 = *(a5 + 56 + 8 * v33);
        ++v32;
        if (v30)
        {
          v32 = v33;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  sub_1D2FA4();
  v44 = swift_allocError();
  *v45 = a2;
  *(v45 + 8) = 1;
  swift_errorRetain();
  a3(v44, 0, 1, 0, 0);
}

id sub_1C3F58(id *a1, void *a2)
{
  v3 = [*a1 identifiers];
  v4 = [v3 intersectsSet:*a2];

  return v4;
}

uint64_t sub_1C3FC0(uint64_t a1)
{
  if (*(a1 + 8) == 14)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_ABB3C0();
  }

  return v1 & 1;
}

void sub_1C4044(uint64_t *a1, int a2, dispatch_group_t group)
{
  v5 = *a1;
  if (v5 == 1)
  {

    dispatch_group_leave(group);
  }

  else
  {
    v6 = a1[4];
    v8 = a1[1];
    v7 = a1[2];
    v11 = v5;
    v12 = *(a1 + 1);
    v13 = *(a1 + 3);
    v9 = *(a1 + 24);
    __chkstk_darwin(v5);

    sub_1D2B24(v8, v7, v9);
    v10 = v6;
    UnfairLock.locked<A>(_:)(sub_1D2D4C);
    dispatch_group_leave(group);
    v14 = v11;
    sub_12E1C(&v14, &qword_DF4F70);
    v15 = v12;
    v16 = v13;
    sub_1D2D1C(&v15);
    v17 = *(&v13 + 1);
    sub_12E1C(&v17, &qword_DF4F78);
  }
}

uint64_t sub_1C41C0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1CE69C(*a2);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  *a1 = 0x8000000000000000;
  sub_1D2D68(v4, sub_1CB8B0, 0, isUniquelyReferenced_nonNull_native, &v7);

  if (v2)
  {

    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    *a1 = v7;
    return swift_endAccess();
  }

  return result;
}

__n128 sub_1C4294@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  *(a4 + 48) = *(a3 + 32);
  return result;
}

uint64_t Library.Menu.Revision.Version.identifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Library.Menu.Revision.Version.selected.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1C434C()
{
  v0 = qword_DF4BD0;

  return v0;
}

uint64_t sub_1C4384@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_1C23C4(sub_1D2A44, v6, a3);
}

uint64_t sub_1C4414(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return a6(v7, a4, a5);
}

BOOL sub_1C445C(uint64_t *a1, uint64_t *a2)
{
  if ((sub_4C9564(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {

    v8 = sub_4740B4(v4, v5);

    return v8 & 1;
  }

  return result;
}

unint64_t sub_1C44DC()
{
  result = sub_988FC(_swiftEmptyArrayStorage);
  qword_DF4BE0 = result;
  return result;
}

void sub_1C4504(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v30 = v12;
  v31 = v8;
  while (v11)
  {
LABEL_10:
    v15 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v11)) | (v13 << 6)));

    v16 = sub_AB9260();
    [a2 appendSection:v16];

    v17 = sub_AB9260();
    [a3 appendSection:v17];

    if (v15 >> 62)
    {
      v18 = sub_ABB060();
      if (!v18)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v18 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
      if (!v18)
      {
        goto LABEL_4;
      }
    }

    if (v18 < 1)
    {
      goto LABEL_24;
    }

    for (i = 0; i != v18; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = sub_360310(i, v15);
      }

      else
      {
        v20 = *(v15 + 8 * i + 32);
      }

      v21 = v20;
      v22 = [a4 modelObjectMatchingIdentifierSet:v20 propertySet:a5];
      if (v22)
      {
        v23 = v22;
        [a3 appendItem:v22];
        v24 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v23 personalizationStyle:1];
        [a2 appendItem:v24];

        v21 = v24;
      }
    }

LABEL_4:
    v11 &= v11 - 1;

    v12 = v30;
    v8 = v31;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      v25 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:a6 unpersonalizedContentDescriptors:a2];
      [v25 setRepresentedObjects:a3];
      aBlock[4] = a7;
      aBlock[5] = a8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_151E0;
      aBlock[3] = &block_descriptor_21_1;
      v26 = _Block_copy(aBlock);

      [v25 performWithResponseHandler:v26];
      _Block_release(v26);

      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

unint64_t sub_1C4834(uint64_t a1)
{
  *(a1 + 8) = sub_1C4864();
  result = sub_1C48B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4864()
{
  result = qword_DF4DD0;
  if (!qword_DF4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4DD0);
  }

  return result;
}

unint64_t sub_1C48B8()
{
  result = qword_DF4DD8;
  if (!qword_DF4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4DD8);
  }

  return result;
}

unint64_t sub_1C490C(uint64_t a1)
{
  result = sub_1C4934();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4934()
{
  result = qword_DF4E10;
  if (!qword_DF4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4E10);
  }

  return result;
}

unint64_t sub_1C4998()
{
  result = qword_DF4E58;
  if (!qword_DF4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4E58);
  }

  return result;
}

unint64_t sub_1C49EC(uint64_t a1)
{
  result = sub_1C4A14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4A14()
{
  result = qword_DF4ED0;
  if (!qword_DF4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4ED0);
  }

  return result;
}

unint64_t sub_1C4A68(uint64_t a1)
{
  result = sub_1C4A90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4A90()
{
  result = qword_DF4F08;
  if (!qword_DF4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4F08);
  }

  return result;
}

unint64_t sub_1C4AE4(void *a1)
{
  a1[1] = sub_1C4B1C();
  a1[2] = sub_1C4B70();
  result = sub_1C4BC4();
  a1[3] = result;
  return result;
}

unint64_t sub_1C4B1C()
{
  result = qword_DF4F10;
  if (!qword_DF4F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4F10);
  }

  return result;
}

unint64_t sub_1C4B70()
{
  result = qword_DF4F18;
  if (!qword_DF4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4F18);
  }

  return result;
}

unint64_t sub_1C4BC4()
{
  result = qword_DF4F20;
  if (!qword_DF4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4F20);
  }

  return result;
}

unint64_t sub_1C4C1C()
{
  result = qword_DF4F28;
  if (!qword_DF4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF4F28);
  }

  return result;
}

void sub_1C4C74(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(a1 + 48) + 24 * (v10 | (v9 << 6));
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        sub_2BA40(*v11, v13, v14);
        v15 = sub_2EF144(v12, v13, v14);
        sub_1D3AA0(v15, v16, v17);
        sub_13CC8(v12, v13, v14);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1C4DBC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_2EF334(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_1C4EB4(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(a1 + 48) + ((v9 << 10) | (16 * v10));
        v12 = *(v11 + 8);
        v13 = *v11;
        v14 = sub_2EFB70(v13, v12);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1C4FD8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_12E1C(v5, &unk_DE8E20))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_2F0A50(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C51F4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_2F0D00(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1C52E8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_12E1C(v24, &qword_DF5018))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(v2 + 48) + 240 * (v10 | (v9 << 6)));
      v13 = v11[1];
      v12 = v11[2];
      v25[0] = *v11;
      v25[1] = v13;
      v25[2] = v12;
      v14 = v11[6];
      v16 = v11[3];
      v15 = v11[4];
      v25[5] = v11[5];
      v25[6] = v14;
      v25[3] = v16;
      v25[4] = v15;
      v17 = v11[10];
      v19 = v11[7];
      v18 = v11[8];
      v25[9] = v11[9];
      v25[10] = v17;
      v25[7] = v19;
      v25[8] = v18;
      v20 = v11[14];
      v22 = v11[11];
      v21 = v11[12];
      v25[13] = v11[13];
      v25[14] = v20;
      v25[11] = v22;
      v25[12] = v21;
      sub_2B990(v25, v24);
      sub_2F0ECC(v23);
      sub_2B9EC(v25);
      v24[12] = v23[12];
      v24[13] = v23[13];
      v24[14] = v23[14];
      v24[8] = v23[8];
      v24[9] = v23[9];
      v24[10] = v23[10];
      v24[11] = v23[11];
      v24[4] = v23[4];
      v24[5] = v23[5];
      v24[6] = v23[6];
      v24[7] = v23[7];
      v24[0] = v23[0];
      v24[1] = v23[1];
      v24[2] = v23[2];
      v24[3] = v23[3];
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1C5494(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v63 = 0;
  v9 = a1 + 56;
  v8 = *(a1 + 56);
  v10 = -1 << *(a1 + 32);
  v68 = ~v10;
  if (-v10 < 64)
  {
    v11 = ~(-1 << -v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = (63 - v10) >> 6;
  v75 = a2;
  v76 = (a2 + 56);

  v15 = 0;
  v71 = v14;
  v70 = v9;
  for (i = v13; ; v13 = i)
  {
    if (!v12)
    {
      v16 = v15;
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        if (v17 >= v13)
        {
          sub_2BB88();
          return v75;
        }

        v12 = *(v9 + 8 * v17);
        ++v16;
      }

      while (!v12);
      v15 = v17;
    }

    v18 = *(v14 + 48) + 24 * (__clz(__rbit64(v12)) | (v15 << 6));
    v19 = *v18;
    v20 = *(v18 + 8);
    v5 = *(v18 + 16);
    sub_ABB5C0();
    v73 = v20;
    v74 = v19;
    v72 = v15;
    if (v5)
    {
      sub_ABB5D0(1uLL);
      sub_2BA40(v19, v20, 1);
      sub_ABA7A0();
    }

    else
    {
      sub_ABB5D0(0);
      sub_2BA40(v19, v20, 0);
      sub_AB93F0();
    }

    v12 &= v12 - 1;
    v21 = sub_ABB610();
    v22 = v75;
    v23 = -1 << *(v75 + 32);
    v3 = v21 & ~v23;
    v6 = v3 >> 6;
    v9 = 1 << v3;
    if (((1 << v3) & v76[v3 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_13CC8(v74, v73, v5);
    v14 = v71;
    v9 = v70;
    v15 = v72;
  }

  v7 = ~v23;
  while (1)
  {
    v24 = *(v22 + 48) + 24 * v3;
    v2 = *v24;
    v25 = *(v24 + 8);
    v4 = *(v24 + 16);
    if ((v4 & 1) == 0)
    {
      break;
    }

    if (v5)
    {
      sub_13C80(0, &qword_DFA720);
      v26 = v2;
      v27 = sub_ABA790();
      sub_13CC8(v2, v25, 1);
      v22 = v75;
      if (v27)
      {
LABEL_29:
        v7 = v72;
        v28 = v73;
        v80 = v68;
        v81 = v72;
        v82 = v12;
        v5 = v70;
        v2 = v71;
        v78 = v71;
        v79 = v70;
        v29 = v74;
        goto LABEL_33;
      }
    }

LABEL_18:
    v3 = (v3 + 1) & v7;
    v6 = v3 >> 6;
    v9 = 1 << v3;
    if ((v76[v3 >> 6] & (1 << v3)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v5)
  {
    goto LABEL_18;
  }

  v28 = v73;
  v29 = v74;
  if (v2 != v74 || v25 != v73)
  {
    v31 = sub_ABB3C0();
    v22 = v75;
    if (v31)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  v7 = v72;
  v80 = v68;
  v81 = v72;
  v82 = v12;
  v5 = v70;
  v2 = v71;
  v78 = v71;
  v79 = v70;
LABEL_33:
  sub_13CC8(v29, v28, v4);
  v4 = v75;
  v33 = *(v75 + 32);
  v34 = v33 & 0x3F;
  v64 = ((1 << v33) + 63) >> 6;
  v15 = 8 * v64;

  if (v34 <= 0xD)
  {
LABEL_34:
    v65 = &v62;
    __chkstk_darwin(isStackAllocationSafe);
    v36 = &v62 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v36, v76, v15);
    v37 = *&v36[8 * v6] & ~v9;
    v67 = v36;
    *&v36[8 * v6] = v37;
    v38 = *(v4 + 16) - 1;
    v39 = i;
LABEL_35:
    v66 = v38;
LABEL_37:
    while (2)
    {
      if (v12)
      {
LABEL_43:
        v42 = v2[6] + 24 * (__clz(__rbit64(v12)) | (v7 << 6));
        v43 = *v42;
        v44 = *(v42 + 8);
        v3 = *(v42 + 16);
        sub_ABB5C0();
        v72 = v7;
        v73 = v44;
        v74 = v43;
        if (v3)
        {
          sub_ABB5D0(1uLL);
          sub_2BA40(v43, v44, 1);
          sub_ABA7A0();
        }

        else
        {
          sub_ABB5D0(0);
          sub_2BA40(v43, v44, 0);
          sub_AB93F0();
        }

        v12 &= v12 - 1;
        v15 = &v77;
        v45 = sub_ABB610();
        v46 = v75;
        v47 = -1 << *(v75 + 32);
        v48 = v45 & ~v47;
        v49 = v48 >> 6;
        v6 = 1 << v48;
        if (((1 << v48) & v76[v48 >> 6]) == 0)
        {
LABEL_36:
          sub_13CC8(v74, v73, v3);
          v2 = v71;
          v5 = v70;
          v7 = v72;
          v39 = i;
          continue;
        }

        v50 = ~v47;
        while (1)
        {
          v51 = *(v46 + 48) + 24 * v48;
          v52 = *v51;
          v53 = *(v51 + 8);
          v4 = *(v51 + 16);
          if (v4)
          {
            if (v3)
            {
              sub_13C80(0, &qword_DFA720);
              v54 = v52;
              v15 = sub_ABA790();
              sub_13CC8(v52, v53, 1);
              v46 = v75;
              if (v15)
              {
                goto LABEL_59;
              }
            }
          }

          else if ((v3 & 1) == 0)
          {
            v55 = v52 == v74 && v53 == v73;
            if (v55 || (v56 = sub_ABB3C0(), v46 = v75, (v56 & 1) != 0))
            {
LABEL_59:
              sub_13CC8(v74, v73, v4);
              v57 = v67[v49];
              v67[v49] = v57 & ~v6;
              v2 = v71;
              v5 = v70;
              v7 = v72;
              v39 = i;
              if ((v57 & v6) != 0)
              {
                v38 = v66 - 1;
                if (__OFSUB__(v66, 1))
                {
                  __break(1u);
                }

                if (v66 == 1)
                {

                  v58 = &_swiftEmptySetSingleton;
                  goto LABEL_64;
                }

                goto LABEL_35;
              }

              goto LABEL_37;
            }
          }

          v48 = (v48 + 1) & v50;
          v49 = v48 >> 6;
          v6 = 1 << v48;
          if ((v76[v48 >> 6] & (1 << v48)) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      break;
    }

    v40 = v7;
    v9 = v75;
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_67;
      }

      if (v41 >= v39)
      {
        break;
      }

      v12 = *(v5 + 8 * v41);
      ++v40;
      if (v12)
      {
        v7 = v41;
        goto LABEL_43;
      }
    }

    v58 = sub_1CAA14(v67, v64, v66, v75);
LABEL_64:

LABEL_65:
    sub_2BB88();
    return v58;
  }

LABEL_68:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    goto LABEL_34;
  }

  v59 = swift_slowAlloc();
  memcpy(v59, v76, v15);
  v60 = v63;
  sub_1C8C9C(v59, v64, v4, v3, &v78);
  v58 = v61;

  if (!v60)
  {

    v68 = v80;
    goto LABEL_65;
  }

  __break(1u);
  return result;
}

void *sub_1C5C2C(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (*(a2 + 16))
  {
    v44 = a1;
    v45 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v43 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v44;
          v16 = v45;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              sub_2BB88();
              return v6;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v45 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v44;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v4 = *(*(v15 + 48) + ((v45 << 9) | (8 * v18)));
        v19 = sub_ABB5B0();
        v20 = -1 << *(v6 + 32);
        v5 = v19 & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
      }

      while (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v5) == v4)
      {
        break;
      }

      while (1)
      {
        v5 = (v5 + 1) & ~v20;
        v3 = v5 >> 6;
        v2 = 1 << v5;
        if (((1 << v5) & *(v13 + 8 * (v5 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v5) == v4)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v47 = v43;
    v48 = v45;
    v49 = v11;
    v46[0] = v44;
    v46[1] = v8;
    v4 = (63 - v20) >> 6;
    v14 = 8 * v4;

    if (v4 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (!isStackAllocationSafe)
    {
      v40 = swift_slowAlloc();
      memcpy(v40, (v6 + 56), v14);
      v37 = sub_1C8F80(v40, v4, v6, v5, v46);

      v43 = v47;
      v45 = v48;
      goto LABEL_42;
    }

LABEL_18:
    v41 = &v41;
    __chkstk_darwin(isStackAllocationSafe);
    v5 = &v41 - v23;
    memcpy(&v41 - v23, (v6 + 56), v14);
    v24 = *(v6 + 16);
    *(v5 + 8 * v3) &= ~v2;
    v25 = v24 - 1;
    v14 = 1;
    v2 = v44;
LABEL_19:
    v42 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v3 = *(*(v2 + 48) + ((v45 << 9) | (8 * v29)));
      v30 = sub_ABB5B0();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 8 * v32) == v3)
        {
LABEL_20:
          v26 = *(v5 + 8 * v33);
          *(v5 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v42 - 1;
            if (__OFSUB__(v42, 1))
            {
              __break(1u);
            }

            if (v42 == 1)
            {

              v37 = &_swiftEmptySetSingleton;
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v3)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v45;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v45 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v45 + 1)
    {
      v38 = v45 + 1;
    }

    else
    {
      v38 = v12;
    }

    v45 = v38 - 1;
    v37 = sub_1CAC80(v5, v4, v42, v6);
LABEL_41:

LABEL_42:
    sub_2BB88();
    return v37;
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }
}

_BYTE *sub_1C6088(unint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (*(a2 + 16))
  {
    v7 = a1;
    v74 = 0;
    v9 = a1 + 56;
    v8 = *(a1 + 56);
    v10 = -1 << *(a1 + 32);
    v79 = ~v10;
    if (-v10 < 64)
    {
      v11 = ~(-1 << -v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & v8;
    v13 = (63 - v10) >> 6;
    v87 = (a2 + 56);

    v15 = 0;
    v80 = v13;
    v85 = v6;
    v82 = v14;
    v81 = v9;
    while (2)
    {
      if (v12)
      {
        goto LABEL_13;
      }

      v16 = v15;
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_146;
        }

        if (v17 >= v13)
        {
          sub_2BB88();
          return v6;
        }

        v12 = *(v9 + 8 * v17);
        ++v16;
      }

      while (!v12);
      v15 = v17;
LABEL_13:
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v19 = *(v7 + 48);
      v83 = v15;
      v20 = v19 + ((v15 << 10) | (16 * v18));
      v21 = *v20;
      v3 = *(v20 + 8);
      sub_ABB5C0();
      v22 = v21;
      sub_ABA7A0();
      sub_AB93F0();

      v2 = v88;
      v23 = sub_ABB610();
      v24 = -1 << *(v6 + 32);
      v7 = v23 & ~v24;
      v4 = v7 >> 6;
      v13 = 1 << v7;
      if (((1 << v7) & v87[v7 >> 6]) == 0)
      {
LABEL_6:

        v7 = v82;
        v9 = v81;
        v15 = v83;
        v13 = v80;
        continue;
      }

      break;
    }

    v5 = ~v24;
    v86 = sub_13C80(0, &qword_DFA720);
    v84 = v3;
    while (1)
    {
      v25 = *(v6 + 48) + 16 * v7;
      v26 = *(v25 + 8);
      v27 = *v25;
      v2 = v86;
      if (sub_ABA790())
      {
        break;
      }

LABEL_16:
      v7 = (v7 + 1) & v5;
      v4 = v7 >> 6;
      v13 = 1 << v7;
      v6 = v85;
      if ((v87[v7 >> 6] & (1 << v7)) == 0)
      {
        goto LABEL_6;
      }
    }

    v2 = 0xEA00000000007365;
    v28 = 0x6974697669746361;
    switch(v26)
    {
      case 1:
        v2 = 0xE600000000000000;
        v28 = 0x736D75626C61;
        break;
      case 2:
        v2 = 0xE700000000000000;
        v28 = 0x73747369747261;
        break;
      case 3:
        v2 = 0xE800000000000000;
        v28 = 0x73726F7461727563;
        break;
      case 4:
        v2 = 0xE500000000000000;
        v28 = 0x73676E6F73;
        break;
      case 5:
        v2 = 0xE800000000000000;
        v28 = 0x736E6F6974617473;
        break;
      case 6:
        v28 = 0x75632D656C707061;
        v2 = 0xEE0073726F746172;
        break;
      case 7:
        v28 = 0x6169726F74696465;
        v2 = 0xEF736D6574692D6CLL;
        break;
      case 8:
        v28 = 0x6F6D2D636973756DLL;
        v29 = 1936025974;
        goto LABEL_34;
      case 9:
        v28 = 0x69762D636973756DLL;
        v29 = 1936680292;
LABEL_34:
        v2 = (v29 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
        break;
      case 10:
        v28 = 0x6F736970652D7674;
        v2 = 0xEB00000000736564;
        break;
      case 11:
        v2 = 0xE800000000000000;
        v28 = 0x73776F68732D7674;
        break;
      case 12:
        v28 = 0x646564616F6C7075;
        v2 = 0xEF736F656469762DLL;
        break;
      case 13:
        v28 = 0x6C2D64726F636572;
        v2 = 0xED0000736C656261;
        break;
      case 14:
        v28 = 0x702D6C6169636F73;
        v2 = 0xEF73656C69666F72;
        break;
      case 15:
        v28 = 0x7473696C79616C70;
        v2 = 0xE900000000000073;
        break;
      default:
        break;
    }

    v30 = 0x6974697669746361;
    v31 = 0xEA00000000007365;
    switch(v84)
    {
      case 1:
        v31 = 0xE600000000000000;
        if (v28 != 0x736D75626C61)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 2:
        v31 = 0xE700000000000000;
        if (v28 != 0x73747369747261)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 3:
        v31 = 0xE800000000000000;
        if (v28 != 0x73726F7461727563)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 4:
        v31 = 0xE500000000000000;
        if (v28 != 0x73676E6F73)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 5:
        v31 = 0xE800000000000000;
        if (v28 != 0x736E6F6974617473)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 6:
        v31 = 0xEE0073726F746172;
        if (v28 != 0x75632D656C707061)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 7:
        v32 = 0x6169726F74696465;
        v33 = 0x6D6574692D6CLL;
        goto LABEL_52;
      case 8:
        v34 = 0x6F6D2D636973756DLL;
        v35 = 1936025974;
        goto LABEL_66;
      case 9:
        v34 = 0x69762D636973756DLL;
        v35 = 1936680292;
LABEL_66:
        v31 = v35 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v28 != v34)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 10:
        v30 = 0x6F736970652D7674;
        v31 = 0xEB00000000736564;
        goto LABEL_61;
      case 11:
        v31 = 0xE800000000000000;
        if (v28 != 0x73776F68732D7674)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 12:
        v32 = 0x646564616F6C7075;
        v33 = 0x6F656469762DLL;
        goto LABEL_52;
      case 13:
        v31 = 0xED0000736C656261;
        if (v28 != 0x6C2D64726F636572)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 14:
        v32 = 0x702D6C6169636F73;
        v33 = 0x656C69666F72;
LABEL_52:
        v31 = v33 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
        if (v28 != v32)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      case 15:
        v31 = 0xE900000000000073;
        if (v28 != 0x7473696C79616C70)
        {
          goto LABEL_63;
        }

        goto LABEL_62;
      default:
LABEL_61:
        if (v28 != v30)
        {
          goto LABEL_63;
        }

LABEL_62:
        if (v2 == v31)
        {
          v91 = v79;
          v92 = v83;
          v93 = v12;
          v5 = v81;
          v3 = v82;
          v89 = v82;
          v90 = v81;

          goto LABEL_71;
        }

LABEL_63:
        v3 = sub_ABB3C0();

        if ((v3 & 1) == 0)
        {
          goto LABEL_16;
        }

        v91 = v79;
        v92 = v83;
        v93 = v12;
        v5 = v81;
        v3 = v82;
        v89 = v82;
        v90 = v81;

LABEL_71:
        v6 = v85;
        v36 = *(v85 + 32);
        v37 = v36 & 0x3F;
        v75 = ((1 << v36) + 63) >> 6;
        v2 = (8 * v75);

        if (v37 > 0xD)
        {
          goto LABEL_147;
        }

        break;
    }

LABEL_72:
    v76 = &v73;
    __chkstk_darwin(isStackAllocationSafe);
    v39 = &v73 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v39, v87, v2);
    v40 = *&v39[8 * v4] & ~v13;
    v41 = *(v6 + 16);
    v78 = v39;
    *&v39[8 * v4] = v40;
    v42 = v41 - 1;
    v13 = v83;
    v43 = v80;
LABEL_73:
    v77 = v42;
LABEL_75:
    if (v12)
    {
      goto LABEL_81;
    }

    v44 = v13;
    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if (!isStackAllocationSafe)
        {
          v71 = swift_slowAlloc();
          memcpy(v71, v87, v2);
          v72 = v74;
          v69 = sub_1C913C(v71, v75, v6, v7, &v89);

          if (v72)
          {

            __break(1u);
            JUMPOUT(0x1C73C0);
          }

          v79 = v91;
          goto LABEL_143;
        }

        goto LABEL_72;
      }

      if (v45 >= v43)
      {
        break;
      }

      v12 = *(v5 + 8 * v45);
      ++v44;
      if (v12)
      {
        v13 = v45;
LABEL_81:
        v46 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v47 = *(v3 + 48);
        v83 = v13;
        v48 = v47 + ((v13 << 10) | (16 * v46));
        v49 = *v48;
        v50 = *(v48 + 8);
        sub_ABB5C0();
        v7 = v49;
        sub_ABA7A0();
        sub_AB93F0();

        v2 = v88;
        v51 = sub_ABB610();
        v52 = -1 << *(v6 + 32);
        v53 = v51 & ~v52;
        v54 = v53 >> 6;
        v4 = 1 << v53;
        if (((1 << v53) & v87[v53 >> 6]) == 0)
        {
LABEL_74:

          v3 = v82;
          v5 = v81;
          v13 = v83;
          v43 = v80;
          goto LABEL_75;
        }

        v55 = ~v52;
        v84 = v50;
        while (1)
        {
          v56 = *(v6 + 48) + 16 * v53;
          v57 = *(v56 + 8);
          v58 = *v56;
          v2 = v86;
          if (sub_ABA790())
          {
            v2 = 0xEA00000000007365;
            v59 = 0x6974697669746361;
            switch(v57)
            {
              case 1:
                v2 = 0xE600000000000000;
                v59 = 0x736D75626C61;
                break;
              case 2:
                v2 = 0xE700000000000000;
                v59 = 0x73747369747261;
                break;
              case 3:
                v2 = 0xE800000000000000;
                v59 = 0x73726F7461727563;
                break;
              case 4:
                v2 = 0xE500000000000000;
                v59 = 0x73676E6F73;
                break;
              case 5:
                v2 = 0xE800000000000000;
                v59 = 0x736E6F6974617473;
                break;
              case 6:
                v59 = 0x75632D656C707061;
                v2 = 0xEE0073726F746172;
                break;
              case 7:
                v59 = 0x6169726F74696465;
                v2 = 0xEF736D6574692D6CLL;
                break;
              case 8:
                v59 = 0x6F6D2D636973756DLL;
                v60 = 1936025974;
                goto LABEL_102;
              case 9:
                v59 = 0x69762D636973756DLL;
                v60 = 1936680292;
LABEL_102:
                v2 = (v60 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
                break;
              case 10:
                v59 = 0x6F736970652D7674;
                v2 = 0xEB00000000736564;
                break;
              case 11:
                v2 = 0xE800000000000000;
                v59 = 0x73776F68732D7674;
                break;
              case 12:
                v59 = 0x646564616F6C7075;
                v2 = 0xEF736F656469762DLL;
                break;
              case 13:
                v59 = 0x6C2D64726F636572;
                v2 = 0xED0000736C656261;
                break;
              case 14:
                v59 = 0x702D6C6169636F73;
                v2 = 0xEF73656C69666F72;
                break;
              case 15:
                v59 = 0x7473696C79616C70;
                v2 = 0xE900000000000073;
                break;
              default:
                break;
            }

            v61 = 0x6974697669746361;
            v62 = 0xEA00000000007365;
            switch(v84)
            {
              case 1:
                v62 = 0xE600000000000000;
                if (v59 != 0x736D75626C61)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 2:
                v62 = 0xE700000000000000;
                if (v59 != 0x73747369747261)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 3:
                v62 = 0xE800000000000000;
                if (v59 != 0x73726F7461727563)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 4:
                v62 = 0xE500000000000000;
                if (v59 != 0x73676E6F73)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 5:
                v62 = 0xE800000000000000;
                if (v59 != 0x736E6F6974617473)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 6:
                v62 = 0xEE0073726F746172;
                if (v59 != 0x75632D656C707061)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 7:
                v63 = 0x6169726F74696465;
                v64 = 0x6D6574692D6CLL;
                goto LABEL_120;
              case 8:
                v65 = 0x6F6D2D636973756DLL;
                v66 = 1936025974;
                goto LABEL_134;
              case 9:
                v65 = 0x69762D636973756DLL;
                v66 = 1936680292;
LABEL_134:
                v62 = v66 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                if (v59 != v65)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 10:
                v61 = 0x6F736970652D7674;
                v62 = 0xEB00000000736564;
                goto LABEL_129;
              case 11:
                v62 = 0xE800000000000000;
                if (v59 != 0x73776F68732D7674)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 12:
                v63 = 0x646564616F6C7075;
                v64 = 0x6F656469762DLL;
                goto LABEL_120;
              case 13:
                v62 = 0xED0000736C656261;
                if (v59 != 0x6C2D64726F636572)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 14:
                v63 = 0x702D6C6169636F73;
                v64 = 0x656C69666F72;
LABEL_120:
                v62 = v64 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
                if (v59 != v63)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              case 15:
                v62 = 0xE900000000000073;
                if (v59 != 0x7473696C79616C70)
                {
                  goto LABEL_131;
                }

                goto LABEL_130;
              default:
LABEL_129:
                if (v59 != v61)
                {
                  goto LABEL_131;
                }

LABEL_130:
                if (v2 == v62)
                {

LABEL_137:
                  v6 = v85;
                  v43 = v80;
                  v68 = v78[v54];
                  v78[v54] = v68 & ~v4;
                  v3 = v82;
                  v5 = v81;
                  v13 = v83;
                  if ((v68 & v4) != 0)
                  {
                    v42 = v77 - 1;
                    if (__OFSUB__(v77, 1))
                    {
                      __break(1u);
                    }

                    if (v77 == 1)
                    {

                      v69 = &_swiftEmptySetSingleton;
                      goto LABEL_142;
                    }

                    goto LABEL_73;
                  }

                  goto LABEL_75;
                }

LABEL_131:
                v67 = sub_ABB3C0();

                if (v67)
                {

                  goto LABEL_137;
                }

                break;
            }
          }

          else
          {
          }

          v53 = (v53 + 1) & v55;
          v54 = v53 >> 6;
          v4 = 1 << v53;
          v6 = v85;
          if ((v87[v53 >> 6] & (1 << v53)) == 0)
          {
            goto LABEL_74;
          }
        }
      }
    }

    v69 = sub_1CAE6C(v78, v75, v77, v6);
LABEL_142:

LABEL_143:
    sub_2BB88();
    return v69;
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }
}