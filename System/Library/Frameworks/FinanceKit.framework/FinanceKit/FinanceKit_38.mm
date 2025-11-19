uint64_t sub_1B752DA6C(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  v16 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  sub_1B7205588(a1 + *(v16 + 48), v8, &qword_1EB98EBD0);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_1B77FF7F8();
    if (v17(v8, 1, v9) != 1)
    {
      sub_1B7205418(v8, &qword_1EB98EBD0);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
  }

  sub_1B7205588(v22 + *(v16 + 48), v6, &qword_1EB98EBD0);
  if (v17(v6, 1, v9) == 1)
  {
    sub_1B77FF7E8();
    if (v17(v6, 1, v9) != 1)
    {
      sub_1B7205418(v6, &qword_1EB98EBD0);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v6, v9);
  }

  v18 = sub_1B77FF8C8();
  v19 = *(v10 + 8);
  v19(v13, v9);
  v19(v15, v9);
  return v18 & 1;
}

double sub_1B752DD68@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990C80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47 - v5;
  v8 = a1[1];
  v7 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  if (v8)
  {
    v11 = sub_1B77FFAF8();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = sub_1B78016B8();
    v14 = v13;
    v16 = v15;
    sub_1B7205418(v6, &qword_1EB990C80);
    if ((v16 & 0x100000000) == 0)
    {
      v56 = v14;

      v54 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v16 = 0;
  }

  if (v9)
  {
    v56 = v14;
  }

  else
  {
    if (!*(v10 + 16))
    {

      result = 0.0;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      return result;
    }

    v56 = v14;
  }

  v54 = 0x100000000;
LABEL_10:
  v55 = v16;
  v17 = *(v10 + 16);
  if (v17)
  {
    v48 = v12;
    v57 = v6;
    v50 = v8;
    v51 = v9;
    v52 = v7;
    v53 = a2;
    v74 = MEMORY[0x1E69E7CC0];
    sub_1B71FE2B4(0, v17, 0);
    v18 = v74;
    v19 = v17 - 1;
    v49 = v10;
    for (i = (v10 + 56); ; i += 11)
    {
      v64 = v19;
      v22 = *(i - 2);
      v21 = *(i - 1);
      v24 = *i;
      v23 = i[1];
      v25 = i[2];
      v65 = i[3];
      v66 = v23;
      v26 = i[4];
      v27 = *(i + 40);
      v28 = i[6];
      v29 = i[7];
      v62 = v21;
      v63 = v28;
      if (v22)
      {
        v30 = sub_1B77FFAF8();
        v31 = v57;
        (*(*(v30 - 8) + 56))(v57, 1, 1, v30);

        v32 = sub_1B78016B8();
        v59 = v33;
        v60 = v32;
        v58 = v34;
        v35 = HIDWORD(v34) & 1;
        sub_1B7205418(v31, &qword_1EB990C80);
        if (v25)
        {
          goto LABEL_19;
        }
      }

      else
      {

        v59 = 0;
        v60 = 0;
        v58 = 0;
        LOBYTE(v35) = 1;
        if (v25)
        {
          goto LABEL_19;
        }
      }

      if (!v26 && (v27 & 1) == 0)
      {
        v65 = 0;
        v66 = 0;
        v36 = 0;
        v61 = 0;
        v37 = 1;
        goto LABEL_20;
      }

LABEL_19:
      v61 = v27;

      v37 = v25;
      v36 = v26;
LABEL_20:
      v73 = v35;

      sub_1B7531560(0, 1);

      v38 = v73;
      v68 = v71;
      v69 = v72;
      v67[0] = *v70;
      v40 = *(v18 + 16);
      v39 = *(v18 + 24);
      *(v67 + 3) = *&v70[3];
      v74 = v18;
      if (v40 >= v39 >> 1)
      {
        sub_1B71FE2B4((v39 > 1), v40 + 1, 1);
        v18 = v74;
      }

      *(v18 + 16) = v40 + 1;
      v41 = v18 + 96 * v40;
      v42 = v59;
      *(v41 + 32) = v60;
      *(v41 + 40) = v42;
      *(v41 + 48) = v58;
      *(v41 + 52) = v38;
      LOBYTE(v42) = v69;
      *(v41 + 53) = v68;
      *(v41 + 55) = v42;
      *(v41 + 56) = v62;
      *(v41 + 64) = v24;
      v43 = v65;
      *(v41 + 72) = v66;
      *(v41 + 80) = v37;
      *(v41 + 88) = v43;
      *(v41 + 96) = v36;
      *(v41 + 104) = v61;
      LODWORD(v43) = v67[0];
      *(v41 + 108) = *(v67 + 3);
      *(v41 + 105) = v43;
      *(v41 + 112) = v63;
      *(v41 + 120) = v29;
      if (!v64)
      {

        v9 = v51;

        v7 = v52;
        a2 = v53;
        v12 = v48;
        goto LABEL_26;
      }

      v19 = v64 - 1;
    }
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v45 = v55;
  v46 = v56;
  *a2 = v12;
  *(a2 + 8) = v46;
  *(a2 + 16) = v54 | v45;
  *(a2 + 24) = v7;
  *(a2 + 32) = v9;
  *(a2 + 40) = v18;
  return result;
}

double sub_1B752E22C@<D0>(__int128 *a1@<X0>, void (*a2)(__int128 *)@<X1>, void (*a3)(__int128 *)@<X2>, void (*a4)(__int128 *)@<X3>, _OWORD *a5@<X8>)
{
  v6 = a1[1];
  v44 = *a1;
  v45 = v6;
  v7 = a1[3];
  v46 = a1[2];
  v47 = v7;
  v8 = a1[5];
  v48 = a1[4];
  v49 = v8;
  v9 = a1[7];
  v50 = a1[6];
  v51 = v9;
  v10 = *(&v44 + 1);
  v11 = *(&v45 + 1);
  v12 = *(&v46 + 1);
  v13 = *(&v47 + 1);
  v14 = *(&v48 + 1);
  v15 = *(&v9 + 1);
  v30 = v45;
  v31 = v44;
  v29 = v46;
  if (__PAIR128__(*(&v48 + 1), *(&v47 + 1)) == 0 && __PAIR128__(*(&v50 + 1), *(&v49 + 1)) == 0 && !*(&v9 + 1))
  {
    v24 = 0;
    v25 = 0;
    v14 = 0;
    v26 = 0;
    v27 = 0;
    v22 = 0;
    v23 = 0;
    v28 = 0;
    v16 = 0;
    v13 = 1;
  }

  else
  {
    v27 = v50;
    v28 = v51;
    v25 = v48;
    v26 = v49;
    v24 = v47;

    v22 = *(&v50 + 1);
    v23 = *(&v49 + 1);
    v16 = v15;
  }

  a2(&v44);
  if (v10 || v11 || v12 || v13 != 1)
  {
    v35[0] = xmmword_1B78301C0;
    memset(&v35[1], 0, 64);
    sub_1B7205418(v35, &qword_1EB996B68);
    *&v36 = v31;
    *(&v36 + 1) = v10;
    *&v37 = v30;
    *(&v37 + 1) = v11;
    *&v38 = v29;
    *(&v38 + 1) = v12;
    *&v39 = v24;
    *(&v39 + 1) = v13;
    *&v40 = v25;
    *(&v40 + 1) = v14;
    *&v41 = v26;
    *(&v41 + 1) = v23;
    *&v42 = v27;
    *(&v42 + 1) = v22;
    *&v43 = v28;
    *(&v43 + 1) = v16;
    a3(&v36);
  }

  else
  {
    a4(&v36);
  }

  v17 = v41;
  a5[4] = v40;
  a5[5] = v17;
  v18 = v43;
  a5[6] = v42;
  a5[7] = v18;
  v19 = v37;
  *a5 = v36;
  a5[1] = v19;
  result = *&v38;
  v21 = v39;
  a5[2] = v38;
  a5[3] = v21;
  return result;
}

uint64_t FoundInMailItem.init(cascadeEmail:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v97 - v7;
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FoundInMailItem();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = v15;
  v18 = *(v15 + 64);
  *(v17 + v18) = MEMORY[0x1E69E7CD0];
  v19 = a1[1];
  if (!v19)
  {
    if (qword_1EB98EA40 != -1)
    {
      swift_once();
    }

    v25 = sub_1B78000B8();
    __swift_project_value_buffer(v25, qword_1EB994840);
    v26 = sub_1B7800098();
    v27 = sub_1B78011D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v14;
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = v29;
      v14 = v28;
      MEMORY[0x1B8CA7A40](v30, -1, -1);
    }

    sub_1B75315A8(a1, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    goto LABEL_13;
  }

  v108 = v18;
  v110 = v14;
  v20 = *a1;
  sub_1B7205588(a1 + v3[5], v8, &qword_1EB98EBD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B7205418(v8, &qword_1EB98EBD0);
    if (qword_1EB98EA40 != -1)
    {
      swift_once();
    }

    v21 = sub_1B78000B8();
    __swift_project_value_buffer(v21, qword_1EB994840);
    v22 = sub_1B7800098();
    v23 = sub_1B78011D8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      MEMORY[0x1B8CA7A40](v24, -1, -1);
    }

    sub_1B75315A8(a1, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    v14 = v110;
LABEL_13:
    v31 = v111;
    return (*(v14 + 56))(v31, 1, 1, v112);
  }

  v109 = v10;
  v32 = *(v10 + 32);
  v33 = v12;
  v32(v12, v8, v9);
  v34 = (a1 + v3[7]);
  v35 = v34[1];
  if (!v35)
  {
    v83 = v9;
    if (qword_1EB98EA40 != -1)
    {
      swift_once();
    }

    v84 = sub_1B78000B8();
    __swift_project_value_buffer(v84, qword_1EB994840);
    v85 = sub_1B7800098();
    v86 = sub_1B78011D8();
    v87 = os_log_type_enabled(v85, v86);
    v88 = v111;
    v14 = v110;
    if (!v87)
    {
      goto LABEL_32;
    }

    v89 = swift_slowAlloc();
    *v89 = 0;
    goto LABEL_31;
  }

  v36 = (a1 + v3[8]);
  v37 = v36[1];
  if (!v37)
  {
    v83 = v9;
    if (qword_1EB98EA40 != -1)
    {
      swift_once();
    }

    v91 = sub_1B78000B8();
    __swift_project_value_buffer(v91, qword_1EB994840);
    v85 = sub_1B7800098();
    v86 = sub_1B78011D8();
    v92 = os_log_type_enabled(v85, v86);
    v88 = v111;
    v14 = v110;
    if (!v92)
    {
      goto LABEL_32;
    }

    v89 = swift_slowAlloc();
    *v89 = 0;
    goto LABEL_31;
  }

  v38 = (a1 + v3[10]);
  v39 = v38[1];
  if (!v39)
  {
    v83 = v9;
    if (qword_1EB98EA40 != -1)
    {
      swift_once();
    }

    v93 = sub_1B78000B8();
    __swift_project_value_buffer(v93, qword_1EB994840);
    v85 = sub_1B7800098();
    v86 = sub_1B78011D8();
    v94 = os_log_type_enabled(v85, v86);
    v88 = v111;
    v14 = v110;
    if (!v94)
    {
      goto LABEL_32;
    }

    v89 = swift_slowAlloc();
    *v89 = 0;
LABEL_31:
    _os_log_impl(&dword_1B7198000, v85, v86, v90, v89, 2u);
    MEMORY[0x1B8CA7A40](v89, -1, -1);
LABEL_32:

    sub_1B75315A8(a1, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    (*(v109 + 8))(v33, v83);
    v31 = v88;
    return (*(v14 + 56))(v31, 1, 1, v112);
  }

  v98 = *v34;
  v105 = *v36;
  v104 = *v38;
  v40 = v33;
  v41 = v112;
  v42 = v9;
  v43 = (v17 + v112[6]);
  v97 = (v17 + v112[9]);
  v44 = v112[12];
  v102 = (v17 + v112[11]);
  v99 = (v17 + v44);
  v45 = v112[14];
  *&v101 = v17 + v112[13];
  *(v17 + v45) = 1;
  *v17 = v20;
  v17[1] = v19;
  v46 = v41[5];
  v47 = *(v109 + 16);
  v48 = v35;
  v100 = v37;
  v49 = v39;
  v106 = v40;
  v107 = v42;
  v47(v17 + v46);
  v50 = (a1 + v3[6]);
  v52 = *v50;
  v51 = v50[1];
  v103 = v51;
  *v43 = v52;
  v43[1] = v51;
  v53 = (v17 + v41[7]);
  *v53 = v98;
  v53[1] = v48;
  v54 = (v17 + v41[8]);
  *v54 = v105;
  v54[1] = v37;
  v55 = (a1 + v3[9]);
  v57 = *v55;
  v56 = v55[1];
  v105 = v56;
  v58 = v97;
  *v97 = v57;
  v58[1] = v56;
  v59 = (v17 + v41[10]);
  *v59 = v104;
  v59[1] = v49;
  v60 = (a1 + v3[11]);
  v62 = *v60;
  v61 = v60[1];
  v104 = v61;
  v63 = v102;
  *v102 = v62;
  v63[1] = v61;
  v64 = (a1 + v3[12]);
  v66 = *v64;
  v65 = v64[1];
  v102 = v65;
  v67 = v99;
  *v99 = v66;
  v67[1] = v65;
  v68 = (a1 + v3[13]);
  v69 = *v68;
  v70 = v68[1];
  v71 = v101;
  *v101 = v69;
  *(v71 + 8) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F450);
  inited = swift_initStackObject();
  v101 = xmmword_1B7807CD0;
  *(inited + 16) = xmmword_1B7807CD0;
  sub_1B7531490(a1, v5, type metadata accessor for CascadeExtractedOrder.OrderEmail);

  FoundInMailItem.OrderDetails.init(cascadeEmail:)(v5, inited + 32);
  v73 = sub_1B75465F8(inited);
  swift_setDeallocating();
  sub_1B723C4D0(inited + 32);
  *(v17 + v41[15]) = v73;
  v74 = (a1 + v3[15]);
  v75 = v74[1];
  if (v75)
  {
    v76 = *v74;
    v77 = (a1 + v3[16]);
    v78 = v109;
    v80 = *v77;
    v79 = v77[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F448);
    v81 = swift_initStackObject();
    *(v81 + 32) = 0xD000000000000014;
    *(v81 + 16) = v101;
    *(v81 + 40) = 0x80000001B7878A40;
    *(v81 + 48) = v80;
    *(v81 + 56) = v79;
    *(v81 + 64) = v76;
    *(v81 + 72) = v75;

    v82 = sub_1B723B8A8(v81);
    swift_setDeallocating();
    sub_1B72632D8(v81 + 32);
    sub_1B75315A8(a1, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    (*(v78 + 8))(v106, v107);
    *(v17 + v108) = v82;
  }

  else
  {
    sub_1B75315A8(a1, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    (*(v109 + 8))(v106, v107);
  }

  v96 = v111;
  sub_1B7531490(v17, v111, type metadata accessor for FoundInMailItem);
  (*(v110 + 56))(v96, 0, 1, v112);
  return sub_1B75315A8(v17, type metadata accessor for FoundInMailItem);
}

uint64_t FoundInMailItem.OrderDetails.init(cascadeEmail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  *a2 = *(a1 + *(v4 + 56));
  v5 = a1 + *(v4 + 68);
  *(a2 + 8) = *v5;
  v6 = *(v5 + 24);
  *(a2 + 16) = *(v5 + 8);
  *(a2 + 32) = v6;
  v7 = *(v5 + 40);
  v8 = *(v5 + 64);
  *(a2 + 40) = *(v5 + 32);
  *(a2 + 48) = v7;
  *(a2 + 56) = *(v5 + 48);
  *(a2 + 72) = v8;
  v9 = *(v5 + 72);

  result = sub_1B75315A8(a1, type metadata accessor for CascadeExtractedOrder.OrderEmail);
  *(a2 + 80) = v9;
  return result;
}

uint64_t sub_1B752F030(void **a1)
{
  v2 = *(type metadata accessor for ExtractedOrder.ShippingFulfillment(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B77E4D1C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1B752F0D8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1B752F0D8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B7802038();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
        v6 = sub_1B7800C78();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ExtractedOrder.ShippingFulfillment(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B752F730(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B752F204(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B752F204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v44 - v11;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v55 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v44 - v16;
  v60 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  v17 = MEMORY[0x1EEE9AC00](v60);
  v53 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v61 = &v44 - v20;
  result = MEMORY[0x1EEE9AC00](v19);
  v58 = &v44 - v23;
  v46 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v25 = *(v22 + 72);
    v26 = (v13 + 48);
    v54 = (v13 + 32);
    v27 = (v13 + 8);
    v28 = v24 + v25 * (a3 - 1);
    v51 = -v25;
    v52 = v24;
    v29 = a1 - a3;
    v45 = v25;
    v30 = v24 + v25 * a3;
LABEL_5:
    v49 = v28;
    v50 = a3;
    v47 = v30;
    v48 = v29;
    v31 = v29;
    while (1)
    {
      v32 = v58;
      sub_1B7531490(v30, v58, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      sub_1B7531490(v28, v61, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      v33 = v57;
      sub_1B7205588(v32 + *(v60 + 48), v57, &qword_1EB98EBD0);
      v34 = *v26;
      if ((*v26)(v33, 1, v12) == 1)
      {
        sub_1B77FF7F8();
        v35 = v34(v33, 1, v12);
        v36 = v56;
        if (v35 != 1)
        {
          sub_1B7205418(v57, &qword_1EB98EBD0);
        }
      }

      else
      {
        (*v54)(v59, v33, v12);
        v36 = v56;
      }

      sub_1B7205588(v61 + *(v60 + 48), v36, &qword_1EB98EBD0);
      if (v34(v36, 1, v12) == 1)
      {
        v37 = v55;
        sub_1B77FF7E8();
        if (v34(v36, 1, v12) != 1)
        {
          sub_1B7205418(v36, &qword_1EB98EBD0);
        }
      }

      else
      {
        v37 = v55;
        (*v54)(v55, v36, v12);
      }

      v38 = v59;
      v39 = sub_1B77FF8C8();
      v40 = v37;
      v41 = *v27;
      (*v27)(v40, v12);
      v41(v38, v12);
      sub_1B75315A8(v61, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      result = sub_1B75315A8(v58, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      if ((v39 & 1) == 0)
      {
LABEL_4:
        a3 = v50 + 1;
        v28 = v49 + v45;
        v29 = v48 - 1;
        v30 = v47 + v45;
        if (v50 + 1 == v46)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v42 = v53;
      sub_1B75314F8(v30, v53, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1B75314F8(v42, v28, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      v28 += v51;
      v30 += v51;
      if (__CFADD__(v31++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B752F730(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v140 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v135 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v150 = &v135 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v149 = &v135 - v17;
  v166 = sub_1B77FF988();
  v18 = *(v166 - 8);
  v19 = MEMORY[0x1EEE9AC00](v166);
  v21 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v170 = &v135 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v148 = &v135 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v155 = &v135 - v26;
  v27 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  v152 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v143 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v160 = &v135 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v171 = &v135 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v169 = &v135 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v157 = &v135 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v154 = &v135 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  result = MEMORY[0x1EEE9AC00](v40);
  v153 = a3;
  v44 = *(a3 + 8);
  if (v44 < 1)
  {
    v46 = MEMORY[0x1E69E7CC0];
LABEL_113:
    a3 = *v140;
    if (!*v140)
    {
      goto LABEL_153;
    }

    v18 = v46;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v18;
    }

    else
    {
LABEL_147:
      result = sub_1B77E4CA4(v18);
    }

    v172 = result;
    v18 = *(result + 16);
    if (v18 >= 2)
    {
      while (*v153)
      {
        v131 = *(result + 16 * v18);
        v132 = result;
        v133 = *(result + 16 * (v18 - 1) + 40);
        sub_1B753070C(*v153 + *(v152 + 72) * v131, *v153 + *(v152 + 72) * *(result + 16 * (v18 - 1) + 32), *v153 + *(v152 + 72) * v133, a3);
        if (v5)
        {
        }

        if (v133 < v131)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = sub_1B77E4CA4(v132);
        }

        if (v18 - 2 >= *(v132 + 2))
        {
          goto LABEL_141;
        }

        v134 = &v132[16 * v18];
        *v134 = v131;
        *(v134 + 1) = v133;
        v172 = v132;
        sub_1B77E4C18(v18 - 1);
        result = v172;
        v18 = *(v172 + 16);
        if (v18 <= 1)
        {
        }
      }

      goto LABEL_151;
    }
  }

  v137 = &v135 - v42;
  v138 = v43;
  v168 = v14;
  v136 = a4;
  v45 = 0;
  v167 = (v18 + 48);
  v162 = (v18 + 8);
  v163 = (v18 + 32);
  v46 = MEMORY[0x1E69E7CC0];
  v164 = v27;
  v165 = v11;
  v161 = v21;
  while (1)
  {
    v47 = v45;
    v144 = v46;
    if (v45 + 1 < v44)
    {
      v156 = v44;
      v48 = *v153;
      v49 = *(v152 + 72);
      v18 = *v153 + v49 * (v45 + 1);
      v50 = v137;
      sub_1B7531490(v18, v137, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      v159 = v48;
      v51 = v48 + v49 * v45;
      v52 = v138;
      sub_1B7531490(v51, v138, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      LODWORD(v158) = sub_1B752DA6C(v50, v52);
      if (!v5)
      {
        sub_1B75315A8(v52, type metadata accessor for ExtractedOrder.ShippingFulfillment);
        result = sub_1B75315A8(v50, type metadata accessor for ExtractedOrder.ShippingFulfillment);
        v139 = v45;
        a3 = v45 + 2;
        v53 = v159 + v49 * (v45 + 2);
        v54 = v49;
        v159 = v49;
        v151 = 0;
        do
        {
          if (v156 == a3)
          {
            v65 = v156;
            goto LABEL_20;
          }

          v59 = v154;
          sub_1B7531490(v53, v154, type metadata accessor for ExtractedOrder.ShippingFulfillment);
          sub_1B7531490(v18, v157, type metadata accessor for ExtractedOrder.ShippingFulfillment);
          v60 = v149;
          sub_1B7205588(v59 + *(v27 + 48), v149, &qword_1EB98EBD0);
          v61 = v166;
          v62 = *v167;
          if ((*v167)(v60, 1, v166) == 1)
          {
            sub_1B77FF7F8();
            v63 = v62(v60, 1, v61);
            v64 = v150;
            if (v63 != 1)
            {
              sub_1B7205418(v60, &qword_1EB98EBD0);
            }
          }

          else
          {
            (*v163)(v155, v60, v61);
            v64 = v150;
          }

          sub_1B7205588(v157 + *(v27 + 48), v64, &qword_1EB98EBD0);
          if (v62(v64, 1, v61) == 1)
          {
            v55 = v148;
            sub_1B77FF7E8();
            if (v62(v64, 1, v61) != 1)
            {
              sub_1B7205418(v64, &qword_1EB98EBD0);
            }
          }

          else
          {
            v55 = v148;
            (*v163)(v148, v64, v61);
          }

          v56 = v155;
          v57 = sub_1B77FF8C8();
          v58 = *v162;
          (*v162)(v55, v61);
          v58(v56, v61);
          sub_1B75315A8(v157, type metadata accessor for ExtractedOrder.ShippingFulfillment);
          result = sub_1B75315A8(v154, type metadata accessor for ExtractedOrder.ShippingFulfillment);
          ++a3;
          v54 = v159;
          v53 += v159;
          v18 += v159;
          v27 = v164;
          v11 = v165;
          v5 = v151;
        }

        while (((v158 ^ v57) & 1) == 0);
        v65 = a3 - 1;
LABEL_20:
        v47 = v139;
        if (v158)
        {
          if (v65 < v139)
          {
            goto LABEL_146;
          }

          if (v139 < v65)
          {
            a3 = v54 * (v65 - 1);
            v66 = v65 * v54;
            v67 = v65;
            v68 = v139;
            v69 = v139 * v54;
            do
            {
              if (v68 != --v65)
              {
                v70 = *v153;
                if (!*v153)
                {
                  goto LABEL_150;
                }

                v18 = v70 + v69;
                sub_1B75314F8(v70 + v69, v143, type metadata accessor for ExtractedOrder.ShippingFulfillment);
                if (v69 < a3 || v18 >= v70 + v66)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v69 != a3)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_1B75314F8(v143, v70 + a3, type metadata accessor for ExtractedOrder.ShippingFulfillment);
                v5 = v151;
                v54 = v159;
              }

              ++v68;
              a3 -= v54;
              v66 -= v54;
              v69 += v54;
            }

            while (v68 < v65);
            v11 = v165;
            v47 = v139;
            v65 = v67;
          }
        }

        goto LABEL_34;
      }

      sub_1B75315A8(v52, type metadata accessor for ExtractedOrder.ShippingFulfillment);
      sub_1B75315A8(v50, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    }

    v65 = v45 + 1;
LABEL_34:
    v71 = v153[1];
    if (v65 >= v71)
    {
      goto LABEL_42;
    }

    if (__OFSUB__(v65, v47))
    {
      goto LABEL_143;
    }

    if (v65 - v47 >= v136)
    {
LABEL_42:
      v45 = v65;
      if (v65 < v47)
      {
        goto LABEL_142;
      }

      goto LABEL_43;
    }

    if (__OFADD__(v47, v136))
    {
      goto LABEL_144;
    }

    if (v47 + v136 < v71)
    {
      v71 = v47 + v136;
    }

    if (v71 < v47)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v142 = v71;
    if (v65 == v71)
    {
      goto LABEL_42;
    }

    v151 = v5;
    v115 = *v153;
    v116 = *(v152 + 72);
    v117 = *v153 + v116 * (v65 - 1);
    v158 = -v116;
    v139 = v47;
    a3 = v47 - v65;
    v159 = v115;
    v141 = v116;
    v18 = v115 + v65 * v116;
LABEL_95:
    v156 = v65;
    v145 = v18;
    v146 = a3;
    v147 = v117;
    v118 = v117;
LABEL_96:
    v119 = v169;
    sub_1B7531490(v18, v169, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    sub_1B7531490(v118, v171, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    v120 = v119 + *(v27 + 48);
    v121 = v168;
    sub_1B7205588(v120, v168, &qword_1EB98EBD0);
    v122 = v166;
    v123 = *v167;
    if ((*v167)(v121, 1, v166) == 1)
    {
      sub_1B77FF7F8();
      if (v123(v121, 1, v122) != 1)
      {
        sub_1B7205418(v168, &qword_1EB98EBD0);
      }
    }

    else
    {
      (*v163)(v170, v121, v122);
    }

    sub_1B7205588(v171 + *(v27 + 48), v11, &qword_1EB98EBD0);
    v124 = v123(v11, 1, v122);
    v125 = v161;
    if (v124 == 1)
    {
      sub_1B77FF7E8();
      if (v123(v11, 1, v122) != 1)
      {
        sub_1B7205418(v11, &qword_1EB98EBD0);
      }
    }

    else
    {
      (*v163)(v161, v11, v122);
    }

    v126 = v170;
    v127 = sub_1B77FF8C8();
    v128 = *v162;
    (*v162)(v125, v122);
    v128(v126, v122);
    sub_1B75315A8(v171, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    result = sub_1B75315A8(v169, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    if (v127)
    {
      break;
    }

    v27 = v164;
    v11 = v165;
LABEL_94:
    v65 = v156 + 1;
    v117 = v147 + v141;
    a3 = v146 - 1;
    v18 = v145 + v141;
    if (v156 + 1 != v142)
    {
      goto LABEL_95;
    }

    v5 = v151;
    v47 = v139;
    v45 = v142;
    if (v142 < v139)
    {
      goto LABEL_142;
    }

LABEL_43:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v46 = v144;
    }

    else
    {
      result = sub_1B723E420(0, *(v144 + 2) + 1, 1, v144);
      v46 = result;
    }

    a3 = *(v46 + 2);
    v72 = *(v46 + 3);
    v18 = a3 + 1;
    if (a3 >= v72 >> 1)
    {
      result = sub_1B723E420((v72 > 1), a3 + 1, 1, v46);
      v46 = result;
    }

    *(v46 + 2) = v18;
    v73 = &v46[16 * a3];
    *(v73 + 4) = v47;
    *(v73 + 5) = v45;
    v159 = *v140;
    if (!v159)
    {
      goto LABEL_152;
    }

    if (a3)
    {
      while (2)
      {
        v74 = v18 - 1;
        if (v18 >= 4)
        {
          v79 = &v46[16 * v18 + 32];
          v80 = *(v79 - 64);
          v81 = *(v79 - 56);
          v85 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          if (v85)
          {
            goto LABEL_129;
          }

          v84 = *(v79 - 48);
          v83 = *(v79 - 40);
          v85 = __OFSUB__(v83, v84);
          v77 = v83 - v84;
          v78 = v85;
          if (v85)
          {
            goto LABEL_130;
          }

          v86 = &v46[16 * v18];
          v88 = *v86;
          v87 = *(v86 + 1);
          v85 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v85)
          {
            goto LABEL_132;
          }

          v85 = __OFADD__(v77, v89);
          v90 = v77 + v89;
          if (v85)
          {
            goto LABEL_135;
          }

          if (v90 >= v82)
          {
            v108 = &v46[16 * v74 + 32];
            v110 = *v108;
            v109 = *(v108 + 1);
            v85 = __OFSUB__(v109, v110);
            v111 = v109 - v110;
            if (v85)
            {
              goto LABEL_139;
            }

            if (v77 < v111)
            {
              v74 = v18 - 2;
            }
          }

          else
          {
LABEL_62:
            if (v78)
            {
              goto LABEL_131;
            }

            v91 = &v46[16 * v18];
            v93 = *v91;
            v92 = *(v91 + 1);
            v94 = __OFSUB__(v92, v93);
            v95 = v92 - v93;
            v96 = v94;
            if (v94)
            {
              goto LABEL_134;
            }

            v97 = &v46[16 * v74 + 32];
            v99 = *v97;
            v98 = *(v97 + 1);
            v85 = __OFSUB__(v98, v99);
            v100 = v98 - v99;
            if (v85)
            {
              goto LABEL_137;
            }

            if (__OFADD__(v95, v100))
            {
              goto LABEL_138;
            }

            if (v95 + v100 < v77)
            {
              goto LABEL_76;
            }

            if (v77 < v100)
            {
              v74 = v18 - 2;
            }
          }
        }

        else
        {
          if (v18 == 3)
          {
            v75 = *(v46 + 4);
            v76 = *(v46 + 5);
            v85 = __OFSUB__(v76, v75);
            v77 = v76 - v75;
            v78 = v85;
            goto LABEL_62;
          }

          v101 = &v46[16 * v18];
          v103 = *v101;
          v102 = *(v101 + 1);
          v85 = __OFSUB__(v102, v103);
          v95 = v102 - v103;
          v96 = v85;
LABEL_76:
          if (v96)
          {
            goto LABEL_133;
          }

          v104 = &v46[16 * v74];
          v106 = *(v104 + 4);
          v105 = *(v104 + 5);
          v85 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v85)
          {
            goto LABEL_136;
          }

          if (v107 < v95)
          {
            break;
          }
        }

        a3 = v74 - 1;
        if (v74 - 1 >= v18)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v153)
        {
          goto LABEL_149;
        }

        v112 = v46;
        v18 = *&v46[16 * a3 + 32];
        v113 = *&v46[16 * v74 + 40];
        sub_1B753070C(*v153 + *(v152 + 72) * v18, *v153 + *(v152 + 72) * *&v46[16 * v74 + 32], *v153 + *(v152 + 72) * v113, v159);
        if (v5)
        {
        }

        if (v113 < v18)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = sub_1B77E4CA4(v112);
        }

        if (a3 >= *(v112 + 2))
        {
          goto LABEL_128;
        }

        v114 = &v112[16 * a3];
        *(v114 + 4) = v18;
        *(v114 + 5) = v113;
        v172 = v112;
        result = sub_1B77E4C18(v74);
        v46 = v172;
        v18 = *(v172 + 16);
        if (v18 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v44 = v153[1];
    if (v45 >= v44)
    {
      goto LABEL_113;
    }
  }

  v27 = v164;
  if (v159)
  {
    v129 = v160;
    sub_1B75314F8(v18, v160, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B75314F8(v129, v118, type metadata accessor for ExtractedOrder.ShippingFulfillment);
    v118 += v158;
    v18 += v158;
    v130 = __CFADD__(a3++, 1);
    v11 = v165;
    if (v130)
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

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
  return result;
}

unint64_t sub_1B753070C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v98 = a4;
  v99 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v89 = (&v79 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v90 = &v79 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v79 - v14;
  v15 = sub_1B77FF988();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v93 = &v79 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v79 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v96 = &v79 - v25;
  v100 = type metadata accessor for ExtractedOrder.ShippingFulfillment(0);
  v26 = MEMORY[0x1EEE9AC00](v100);
  v88 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v92 = &v79 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v91 = &v79 - v31;
  result = MEMORY[0x1EEE9AC00](v30);
  v95 = &v79 - v33;
  v35 = *(v34 + 72);
  if (!v35)
  {
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  result = a2;
  if (a2 - a1 == 0x8000000000000000 && v35 == -1)
  {
    goto LABEL_77;
  }

  v36 = v99 - a2;
  if (v99 - a2 != 0x8000000000000000 || v35 != -1)
  {
    v37 = (a2 - a1) / v35;
    v103 = a1;
    v38 = v98;
    v102 = v98;
    if (v37 < v36 / v35)
    {
      v39 = v37 * v35;
      v93 = v24;
      if (v98 < a1 || a1 + v39 <= v98)
      {
        swift_arrayInitWithTakeFrontToBack();
        v38 = v98;
        result = a2;
        v40 = v91;
      }

      else
      {
        v40 = v91;
        if (v98 != a1)
        {
          swift_arrayInitWithTakeBackToFront();
          v38 = v98;
          result = a2;
        }
      }

      v92 = v38 + v39;
      v101 = v38 + v39;
      if (v39 >= 1 && result < v99)
      {
        v44 = (v16 + 48);
        v89 = (v16 + 32);
        v45 = (v16 + 8);
        do
        {
          v97 = result;
          v46 = v38;
          v47 = v95;
          sub_1B7531490(result, v95, type metadata accessor for ExtractedOrder.ShippingFulfillment);
          v98 = v46;
          sub_1B7531490(v46, v40, type metadata accessor for ExtractedOrder.ShippingFulfillment);
          v48 = v94;
          sub_1B7205588(v47 + *(v100 + 48), v94, &qword_1EB98EBD0);
          v49 = *v44;
          if ((*v44)(v48, 1, v15) == 1)
          {
            sub_1B77FF7F8();
            v50 = v49(v48, 1, v15);
            v51 = v90;
            if (v50 != 1)
            {
              sub_1B7205418(v94, &qword_1EB98EBD0);
            }
          }

          else
          {
            (*v89)(v96, v48, v15);
            v51 = v90;
          }

          v52 = v35;
          sub_1B7205588(v40 + *(v100 + 48), v51, &qword_1EB98EBD0);
          if (v49(v51, 1, v15) == 1)
          {
            v53 = v93;
            sub_1B77FF7E8();
            if (v49(v51, 1, v15) != 1)
            {
              sub_1B7205418(v51, &qword_1EB98EBD0);
            }
          }

          else
          {
            v53 = v93;
            (*v89)(v93, v51, v15);
          }

          v54 = v96;
          v55 = sub_1B77FF8C8();
          v56 = *v45;
          (*v45)(v53, v15);
          v56(v54, v15);
          v40 = v91;
          sub_1B75315A8(v91, type metadata accessor for ExtractedOrder.ShippingFulfillment);
          sub_1B75315A8(v95, type metadata accessor for ExtractedOrder.ShippingFulfillment);
          if (v55)
          {
            v35 = v52;
            v57 = v97 + v52;
            if (a1 < v97 || a1 >= v57)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v97)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = v57;
            v38 = v98;
          }

          else
          {
            v35 = v52;
            v58 = v98 + v52;
            if (a1 < v98 || a1 >= v58)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v98)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v102 = v58;
            v38 = v58;
            result = v97;
          }

          a1 += v35;
          v103 = a1;
        }

        while (v38 < v92 && result < v99);
      }

LABEL_75:
      sub_1B778E5A4(&v103, &v102, &v101);
      return 1;
    }

    v41 = v36 / v35 * v35;
    if (v98 < a2 || a2 + v41 <= v98)
    {
      v42 = a2;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v98 == a2)
      {
LABEL_47:
        v59 = v38 + v41;
        if (v41 >= 1)
        {
          v85 = v19;
          v86 = v9;
          v60 = -v35;
          v83 = (v16 + 32);
          v84 = (v16 + 48);
          v82 = (v16 + 8);
          v61 = v38 + v41;
          v62 = v88;
          v87 = a1;
          v96 = -v35;
          do
          {
            v80 = v59;
            v63 = result + v60;
            v97 = result + v60;
            v90 = result;
            while (1)
            {
              if (result <= a1)
              {
                v103 = result;
                v101 = v80;
                goto LABEL_75;
              }

              v94 = v99;
              v81 = v59;
              v95 = v61;
              v65 = v61 + v60;
              v91 = v61 + v60;
              v66 = v92;
              sub_1B7531490(v65, v92, type metadata accessor for ExtractedOrder.ShippingFulfillment);
              sub_1B7531490(v63, v62, type metadata accessor for ExtractedOrder.ShippingFulfillment);
              v67 = v89;
              sub_1B7205588(v66 + *(v100 + 48), v89, &qword_1EB98EBD0);
              v68 = *v84;
              if ((*v84)(v67, 1, v15) == 1)
              {
                sub_1B77FF7F8();
                v69 = v68(v67, 1, v15);
                v70 = v86;
                if (v69 != 1)
                {
                  sub_1B7205418(v89, &qword_1EB98EBD0);
                }
              }

              else
              {
                (*v83)(v93, v67, v15);
                v70 = v86;
              }

              sub_1B7205588(v62 + *(v100 + 48), v70, &qword_1EB98EBD0);
              if (v68(v70, 1, v15) == 1)
              {
                v71 = v85;
                sub_1B77FF7E8();
                if (v68(v70, 1, v15) != 1)
                {
                  sub_1B7205418(v70, &qword_1EB98EBD0);
                }
              }

              else
              {
                v71 = v85;
                (*v83)(v85, v70, v15);
              }

              v72 = v93;
              v73 = v94;
              v99 = v94 + v96;
              v74 = sub_1B77FF8C8();
              v75 = *v82;
              (*v82)(v71, v15);
              v76 = v15;
              v75(v72, v15);
              v62 = v88;
              sub_1B75315A8(v88, type metadata accessor for ExtractedOrder.ShippingFulfillment);
              sub_1B75315A8(v92, type metadata accessor for ExtractedOrder.ShippingFulfillment);
              if (v74)
              {
                break;
              }

              v77 = v91;
              v59 = v91;
              if (v73 < v95 || v99 >= v95)
              {
                swift_arrayInitWithTakeFrontToBack();
                v60 = v96;
              }

              else
              {
                v60 = v96;
                if (v73 != v95)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v61 = v59;
              v63 = v97;
              v64 = v77 > v98;
              v15 = v76;
              a1 = v87;
              result = v90;
              if (!v64)
              {
                goto LABEL_73;
              }
            }

            if (v73 < v90 || v99 >= v90)
            {
              v78 = v97;
              swift_arrayInitWithTakeFrontToBack();
              result = v78;
              v59 = v81;
              v60 = v96;
            }

            else
            {
              v60 = v96;
              result = v97;
              v59 = v81;
              if (v73 != v90)
              {
                swift_arrayInitWithTakeBackToFront();
                result = v97;
              }
            }

            v61 = v95;
            a1 = v87;
          }

          while (v95 > v98);
        }

LABEL_73:
        v103 = result;
        v101 = v59;
        goto LABEL_75;
      }

      v42 = a2;
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = v98;
    result = v42;
    goto LABEL_47;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_1B75311F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

char *_s10FinanceKit15FoundInMailItemV018mayContainPhysicalF09mailItemsSbSayACG_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for FoundInMailItem();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v24 = *(v3 + 60);
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1B7531490(v8, v6, type metadata accessor for FoundInMailItem);
      v12 = sub_1B7527CE0(*&v6[v24]);
      result = sub_1B75315A8(v6, type metadata accessor for FoundInMailItem);
      v13 = *(v12 + 16);
      v14 = *(v10 + 16);
      v15 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v15 <= *(v10 + 24) >> 1)
      {
        if (*(v12 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v14 <= v15)
        {
          v16 = v14 + v13;
        }

        else
        {
          v16 = v14;
        }

        result = sub_1B723F530(result, v16, 1, v10);
        v10 = result;
        if (*(v12 + 16))
        {
LABEL_14:
          v17 = *(v10 + 16);
          if ((*(v10 + 24) >> 1) - v17 < v13)
          {
            goto LABEL_25;
          }

          memcpy((v10 + v17 + 32), (v12 + 32), v13);

          if (v13)
          {
            v18 = *(v10 + 16);
            v19 = __OFADD__(v18, v13);
            v20 = v18 + v13;
            if (v19)
            {
              goto LABEL_26;
            }

            *(v10 + 16) = v20;
          }

          goto LABEL_4;
        }
      }

      if (v13)
      {
        goto LABEL_24;
      }

LABEL_4:
      v8 += v9;
      if (!--v7)
      {
        v21 = sub_1B723BB30(v10);

        if (sub_1B72C60DC(1, v21))
        {

          v22 = 1;
        }

        else
        {
          v23 = sub_1B72C60DC(2, v21);

          v22 = v23 ^ 1;
        }

        return (v22 & 1);
      }
    }
  }

  v22 = 0;
  return (v22 & 1);
}

uint64_t sub_1B7531490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B75314F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7531560(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1B75315A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B753160C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1B7801038();
  if (!v19)
  {
    return sub_1B7800C68();
  }

  v41 = v19;
  v45 = sub_1B7801BD8();
  v32 = sub_1B7801BE8();
  sub_1B7801B88();
  result = sub_1B7801018();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1B7801098();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1B7801BC8();
      result = sub_1B7801058();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static ExtensionServiceConfiguration.makeConnections<A, B>(extensionFinder:containingIdentifier:entitlementChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[13] = v12;
  v9[14] = v8;
  v9[11] = a8;
  v9[12] = v11;
  v9[9] = a6;
  v9[10] = a7;
  v9[7] = a4;
  v9[8] = a5;
  v9[5] = a2;
  v9[6] = a3;
  v9[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7531A68, 0, 0);
}

uint64_t sub_1B7531A68()
{
  v11 = v0[12];
  v1 = (*(v0[11] + 16))(v0[8]);
  v3 = v2;
  v0[15] = v2;
  v10 = (*(v11 + 24) + **(v11 + 24));
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1B7531BB8;
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[5];
  v8 = v0[6];

  return v10(v1, v3, v7, v8, v6, v5);
}

uint64_t sub_1B7531BB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_1B7531E7C;
  }

  else
  {

    v4 = sub_1B7531CD4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B7531CD4()
{
  *(v0 + 16) = *(v0 + 136);
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = swift_task_alloc();
  v6 = *(v0 + 88);
  *(v5 + 16) = *(v0 + 64);
  *(v5 + 32) = v3;
  *(v5 + 40) = v6;
  *(v5 + 56) = v2;
  *(v5 + 64) = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC50);
  v8 = type metadata accessor for ClientToServiceXPCConnection();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v10 = sub_1B7532E84();
  v11 = sub_1B753160C(sub_1B7532E6C, v5, v7, v8, v9, v10, MEMORY[0x1E69E7288], v0 + 24);

  if (v1)
  {

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {

    v14 = *(v0 + 8);

    return v14(v11);
  }
}

uint64_t sub_1B7531E7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ExtensionServiceConfiguration.makeConnection<A, B>(extensionFinder:withBundleIdentifiers:entitlementChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[30] = v11;
  v9[31] = v8;
  v9[28] = a7;
  v9[29] = a8;
  v9[26] = a5;
  v9[27] = a6;
  v9[24] = a3;
  v9[25] = a4;
  v9[22] = a1;
  v9[23] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B7531F18, 0, 0);
}

uint64_t sub_1B7531F18()
{
  v10 = v0[29];
  v1 = (*(v0[28] + 16))(v0[25]);
  v3 = v2;
  v0[32] = v2;
  v9 = (*(v10 + 8) + **(v10 + 8));
  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = sub_1B7532064;
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[23];

  return v9(v1, v3, v7, v6, v5);
}

uint64_t sub_1B7532064(uint64_t a1)
{
  *(*v1 + 272) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B7532184, 0, 0);
}

uint64_t sub_1B7532184()
{
  v1 = *(v0 + 272);
  if (*(v1 + 16))
  {
    sub_1B719B06C(v1 + 32, v0 + 16);
  }

  else
  {

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  sub_1B7532EE8(v0 + 16, v0 + 96);
  if (*(v0 + 120))
  {
    sub_1B71E4C44((v0 + 96), v0 + 56);
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v2);
    v6 = (*(v3 + 24))(v2, v3);
    v7 = *(v0 + 240);
    v8 = *(v0 + 216);
    v9 = *(v0 + 192);
    type metadata accessor for ClientToServiceXPCConnection();
    *(v0 + 160) = v8;
    *(v0 + 168) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
    v11 = sub_1B741B97C(v6, v0 + 136);

    sub_1B7532F58(v0 + 16);
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    v12 = *(v0 + 8);

    return v12(v11);
  }

  else
  {
    sub_1B7532F58(v0 + 96);
    sub_1B7532FC0();
    swift_allocError();
    swift_willThrow();
    sub_1B7532F58(v0 + 16);
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t static ExtensionServiceConfiguration.makeConnections<A, B>(extensionFinder:withBundleIdentifiers:entitlementChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v18;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[4] = a3;
  v15 = swift_task_alloc();
  v8[11] = v15;
  *v15 = v8;
  v15[1] = sub_1B753247C;

  return static ExtensionServiceConfiguration.getIdentities<A>(extensionFinder:withBundleIdentifiers:)(a1, a2, a4, a5, a7, a8);
}

uint64_t sub_1B753247C(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v4 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B75325B0, 0, 0);
}

uint64_t sub_1B75325B0()
{
  *(v0 + 16) = *(v0 + 96);
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  v6 = *(v0 + 64);
  *(v5 + 16) = *(v0 + 40);
  *(v5 + 32) = v3;
  *(v5 + 40) = v6;
  *(v5 + 56) = v2;
  *(v5 + 64) = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FC50);
  v8 = type metadata accessor for ClientToServiceXPCConnection();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  v10 = sub_1B7532E84();
  v11 = sub_1B753160C(sub_1B75330C8, v5, v7, v8, v9, v10, MEMORY[0x1E69E7288], v0 + 24);

  if (v1)
  {

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {

    v14 = *(v0 + 8);

    return v14(v11);
  }
}

uint64_t ExtensionServiceConfigurationError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

uint64_t static ExtensionServiceConfiguration.makeConnection<A, B>(extensionFinder:withBundleIdentifiers:entitlementChecker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a6;
  v11 = (*(a7 + 16))(a4, a7);
  v13 = v12;
  v14 = (*(a8 + 16))(v11);

  if (*(v14 + 16))
  {
    sub_1B719B06C(v14 + 32, v28);
  }

  else
  {

    v29 = 0;
    memset(v28, 0, sizeof(v28));
  }

  sub_1B7532EE8(v28, &v22);
  if (v23)
  {
    sub_1B71E4C44(&v22, v25);
    v13 = v26;
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v16 = (*(v15 + 24))(v13, v15);
    if (!v9)
    {
      v17 = v16;
      type metadata accessor for ClientToServiceXPCConnection();
      v18 = v30;
      v23 = v30;
      v24 = a9;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a3, v18);
      v13 = sub_1B741B97C(v17, &v22);
    }

    sub_1B7532F58(v28);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_1B7532F58(&v22);
    sub_1B7532FC0();
    swift_allocError();
    swift_willThrow();
    sub_1B7532F58(v28);
  }

  return v13;
}

uint64_t static ExtensionServiceConfiguration.getIdentities<A>(extensionFinder:withBundleIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B7532A18, 0, 0);
}

uint64_t sub_1B7532A18()
{
  v10 = v0[7];
  v1 = (*(v0[6] + 16))(v0[4]);
  v3 = v2;
  v0[9] = v2;
  v9 = (*(v10 + 8) + **(v10 + 8));
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1B7532B64;
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];

  return v9(v1, v3, v7, v6, v5);
}

uint64_t sub_1B7532B64(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B7532C84, 0, 0);
}

uint64_t sub_1B7532C84()
{
  if (*(*(v0 + 88) + 16))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {

    sub_1B7532FC0();
    swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

void sub_1B7532D54(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t *a5@<X8>, void *a6)
{
  v17 = a5;
  v11 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v12 = (*(v10 + 24))(v11, v10);
  if (v6)
  {
    *a6 = v6;
  }

  else
  {
    v13 = v12;
    type metadata accessor for ClientToServiceXPCConnection();
    v16[3] = a3;
    v16[4] = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
    v15 = sub_1B741B97C(v13, v16);

    *v17 = v15;
  }
}

unint64_t sub_1B7532E84()
{
  result = qword_1EB996B78;
  if (!qword_1EB996B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB98FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996B78);
  }

  return result;
}

uint64_t sub_1B7532EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7532F58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7532FC0()
{
  result = qword_1EB996B88;
  if (!qword_1EB996B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996B88);
  }

  return result;
}

unint64_t sub_1B7533050()
{
  result = qword_1EB996B90;
  if (!qword_1EB996B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996B90);
  }

  return result;
}

uint64_t sub_1B75330F4(uint64_t a1)
{
  v2 = sub_1B7533724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7533130(uint64_t a1)
{
  v2 = sub_1B7533724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B753316C()
{
  v1 = 0x6465696E6564;
  if (*v0 != 1)
  {
    v1 = 0x7A69726F68747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265746544746F6ELL;
  }
}

uint64_t sub_1B75331D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7534610(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B75331FC(uint64_t a1)
{
  v2 = sub_1B75336D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7533238(uint64_t a1)
{
  v2 = sub_1B75336D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7533274(uint64_t a1)
{
  v2 = sub_1B7533778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75332B0(uint64_t a1)
{
  v2 = sub_1B7533778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B75332EC(uint64_t a1)
{
  v2 = sub_1B75337CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7533328(uint64_t a1)
{
  v2 = sub_1B75337CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthorizationStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996BA0);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996BA8);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996BB0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996BB8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75336D0();
  sub_1B78023F8();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1B7533778();
      v9 = v21;
      sub_1B7801ED8();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1B7533724();
      v9 = v24;
      sub_1B7801ED8();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1B75337CC();
    sub_1B7801ED8();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1B75336D0()
{
  result = qword_1EB996BC0;
  if (!qword_1EB996BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996BC0);
  }

  return result;
}

unint64_t sub_1B7533724()
{
  result = qword_1EB996BC8;
  if (!qword_1EB996BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996BC8);
  }

  return result;
}

unint64_t sub_1B7533778()
{
  result = qword_1EB996BD0;
  if (!qword_1EB996BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996BD0);
  }

  return result;
}

unint64_t sub_1B75337CC()
{
  result = qword_1EB996BD8;
  if (!qword_1EB996BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996BD8);
  }

  return result;
}

uint64_t AuthorizationStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t AuthorizationStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996BE0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996BE8);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996BF0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996BF8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B75336D0();
  v15 = v36;
  sub_1B78023C8();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1B7801E98();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1B721CE54();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1B7801B18();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v24 = &type metadata for AuthorizationStatus;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1B7533778();
          sub_1B7801D38();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1B7533724();
          v26 = v17;
          sub_1B7801D38();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1B75337CC();
        sub_1B7801D38();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

id AuthorizationStatus.XPC.__allocating_init(value:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___XPCAuthorizationStatus_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AuthorizationStatus.XPC.init(value:)(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___XPCAuthorizationStatus_value] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AuthorizationStatus.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B7208778(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id AuthorizationStatus.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B7208778(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id AuthorizationStatus.XPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AuthorizationStatus.XPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B753415C(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___XPCAuthorizationStatus_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AuthorizationStatus.xpcValue.getter()
{
  v1 = *v0;
  v2 = type metadata accessor for AuthorizationStatus.XPC();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR___XPCAuthorizationStatus_value] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t sub_1B7534228()
{
  result = qword_1EB996C10;
  if (!qword_1EB996C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996C10);
  }

  return result;
}

unint64_t sub_1B75342FC()
{
  result = qword_1EB996C20;
  if (!qword_1EB996C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996C20);
  }

  return result;
}

unint64_t sub_1B7534354()
{
  result = qword_1EB996C28;
  if (!qword_1EB996C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996C28);
  }

  return result;
}

unint64_t sub_1B75343AC()
{
  result = qword_1EB996C30;
  if (!qword_1EB996C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996C30);
  }

  return result;
}

unint64_t sub_1B7534404()
{
  result = qword_1EB996C38;
  if (!qword_1EB996C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996C38);
  }

  return result;
}

unint64_t sub_1B753445C()
{
  result = qword_1EB996C40;
  if (!qword_1EB996C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996C40);
  }

  return result;
}

unint64_t sub_1B75344B4()
{
  result = qword_1EB996C48;
  if (!qword_1EB996C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996C48);
  }

  return result;
}

unint64_t sub_1B753450C()
{
  result = qword_1EB996C50;
  if (!qword_1EB996C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996C50);
  }

  return result;
}

unint64_t sub_1B7534564()
{
  result = qword_1EB996C58;
  if (!qword_1EB996C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996C58);
  }

  return result;
}

unint64_t sub_1B75345BC()
{
  result = qword_1EB996C60;
  if (!qword_1EB996C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996C60);
  }

  return result;
}

uint64_t sub_1B7534610(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746544746F6ELL && a2 == 0xED000064656E696DLL;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465696E6564 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69726F68747561 && a2 == 0xEA00000000006465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t FinanceStore.reindexSpotlight()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for FinanceStore.Message();
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75347C8, 0, 0);
}

uint64_t sub_1B75347C8()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B74A5DD0;
  v2 = *(v0 + 32);

  return sub_1B7267E08(v2);
}

id FinanceXPCListener<>.init(connectionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  (*(a3 + 16))(v13, v7, a3);
  v8 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v9 = sub_1B7800838();

  v10 = [v8 initWithMachServiceName_];

  sub_1B73413F8(v13, v7, *(a3 + 8));
  v11 = sub_1B75D0ED0(v10, v13, a1, a2);

  return v11;
}

uint64_t static MachServiceConfiguration.makeConnection()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v10);
  v4 = *(a2 + 8);
  type metadata accessor for ClientToServiceXPCConnection();
  v5 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v6 = sub_1B7800838();

  v7 = [v5 initWithMachServiceName:v6 options:0];

  sub_1B73413F8(v10, a1, v4);
  v8 = sub_1B741B97C(v7, v10);

  return v8;
}

uint64_t Order.Application.launchURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Order.Application() + 20);

  return sub_1B7228664(v3, a1);
}

uint64_t type metadata accessor for Order.Application()
{
  result = qword_1EB996C88;
  if (!qword_1EB996C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Order.Application.launchURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Order.Application() + 20);

  return sub_1B727CBBC(a1, v3);
}

uint64_t Order.Application.customProductPageIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for Order.Application() + 24));

  return v1;
}

uint64_t Order.Application.customProductPageIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Order.Application() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1B7534DD0()
{
  v1 = 0x525568636E75616CLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65644965726F7473;
  }
}

uint64_t sub_1B7534E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7535B44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7534E68(uint64_t a1)
{
  v2 = sub_1B753585C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7534EA4(uint64_t a1)
{
  v2 = sub_1B753585C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 Order.Application.init(_:)@<Q0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Order.Application();
  v5 = *(v4 + 20);
  v6 = sub_1B77FF4F8();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = *(v4 + 24);
  *a2 = *a1;
  v8 = type metadata accessor for RawOrderApplication();
  sub_1B727CBBC(a1 + *(v8 + 20), &a2[v5]);
  result = *(a1 + *(v8 + 24));
  *&a2[v7] = result;
  return result;
}

uint64_t Order.Application.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996C70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B753585C();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B7801FA8();
  if (!v1)
  {
    type metadata accessor for Order.Application();
    v8[14] = 1;
    sub_1B77FF4F8();
    sub_1B7535C74(&qword_1EB98F700);
    sub_1B7801F38();
    v8[13] = 2;
    sub_1B7801EF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Order.Application.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v24 - v4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996C80);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v24 - v5;
  v7 = type metadata accessor for Order.Application();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v8 + 20);
  v12 = sub_1B77FF4F8();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B753585C();
  v30 = v6;
  v13 = v31;
  sub_1B78023C8();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B7205418(v10 + v11, &unk_1EB994C70);
  }

  else
  {
    v25 = a1;
    v15 = v27;
    v14 = v28;
    v31 = v11;
    v34 = 0;
    v16 = v29;
    *v10 = sub_1B7801E28();
    v33 = 1;
    sub_1B7535C74(&qword_1EB98F730);
    sub_1B7801DB8();
    sub_1B727CBBC(v14, v10 + v31);
    v32 = 2;
    v17 = v30;
    v18 = sub_1B7801D78();
    v20 = v19;
    v21 = v16;
    v22 = (v10 + *(v7 + 24));
    (*(v15 + 8))(v17, v21);
    *v22 = v18;
    v22[1] = v20;
    sub_1B75358B0(v10, v26);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return sub_1B7535914(v10);
  }
}

uint64_t _s10FinanceKit5OrderV11ApplicationV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1B77FF4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v26 = type metadata accessor for Order.Application();
  v14 = *(v26 + 20);
  v15 = *(v11 + 48);
  sub_1B7228664(a1 + v14, v13);
  sub_1B7228664(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1B7228664(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1B7535C74(&qword_1EB990310);
      v18 = sub_1B7800828();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1B7205418(v13, &unk_1EB994C70);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1B7205418(v13, &qword_1EB991C30);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1B7205418(v13, &unk_1EB994C70);
LABEL_11:
  v20 = *(v26 + 24);
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (v24 && (*v21 == *v23 && v22 == v24 || (sub_1B78020F8() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v24)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1B753585C()
{
  result = qword_1EB996C78;
  if (!qword_1EB996C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996C78);
  }

  return result;
}

uint64_t sub_1B75358B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Order.Application();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7535914(uint64_t a1)
{
  v2 = type metadata accessor for Order.Application();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B7535998()
{
  sub_1B7325908();
  if (v0 <= 0x3F)
  {
    sub_1B7280028();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B7535A40()
{
  result = qword_1EB996C98;
  if (!qword_1EB996C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996C98);
  }

  return result;
}

unint64_t sub_1B7535A98()
{
  result = qword_1EB996CA0;
  if (!qword_1EB996CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996CA0);
  }

  return result;
}

unint64_t sub_1B7535AF0()
{
  result = qword_1EB996CA8;
  if (!qword_1EB996CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996CA8);
  }

  return result;
}

uint64_t sub_1B7535B44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65644965726F7473 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x525568636E75616CLL && a2 == 0xE90000000000004CLL || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001B78801C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B7535C74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B77FF4F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OrderBundle.localizedString(forKey:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = 0x726564726FLL;
  v3[5] = 0xE500000000000000;
  return sub_1B723940C(sub_1B7262E4C, v3);
}

uint64_t OrderBundle.manifestHash.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10FinanceKit11OrderBundle_manifestHash;
  v4 = sub_1B7800478();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t *sub_1B7535E00(unint64_t a1, void *a2)
{
  v48 = a2;
  v36 = *v2;
  v31 = sub_1B7800478();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for RawOrderContent();
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FE8B8();
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FF4F8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v2;
  v2[2] = a1;
  v43 = 0x726564726FLL;
  v44 = 0xE500000000000000;
  v33 = xmmword_1B783A790;
  v45 = xmmword_1B783A790;
  v14 = *(a1 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  (*(v11 + 16))(v13, a1 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v10);
  v39 = v13;
  v40 = sub_1B7537210;
  v41 = &v42;

  os_unfair_lock_lock((v14 + 24));
  v15 = v38;
  sub_1B7262DE4((v14 + 16), &v46);
  v16 = (v14 + 24);
  if (v15)
  {
    os_unfair_lock_unlock(v16);
    (*(v11 + 8))(v13, v10);
LABEL_6:

    v23 = v48;
    v24 = v37;

    swift_deallocPartialClassInstance();
    goto LABEL_7;
  }

  os_unfair_lock_unlock(v16);
  (*(v11 + 8))(v13, v10);
  v17 = v47;
  if (v47 >> 60 == 15)
  {
    sub_1B7537230();
    swift_allocError();
    v18 = v33;
    *v19 = xmmword_1B783A7A0;
    v19[1] = v18;
    swift_willThrow();
    goto LABEL_6;
  }

  v20 = v46;
  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  (*(v34 + 104))(v9, *MEMORY[0x1E6967F30], v7);
  sub_1B77FE8C8();
  sub_1B7537284(&qword_1EB996CD0, type metadata accessor for RawOrderContent);
  sub_1B77FE8D8();
  v22 = ContentPackageReader.manifest()(&v46);
  v23 = v48;
  v24 = v37;
  sub_1B720A388(v22, v25);
  v38 = v20;
  v36 = v17;
  v26 = v30;
  ContentPackageManifest.canonicalHash.getter(v30);

  (*(v32 + 32))(v24 + OBJC_IVAR____TtC10FinanceKit11OrderBundle_manifestHash, v26, v31);
  sub_1B738F24C(v6, v24 + OBJC_IVAR____TtC10FinanceKit11OrderBundle_content);
  v27 = v23[3];
  v28 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v27);
  (*(v28 + 8))(v24, v27, v28);
  sub_1B7537030(v6);

  sub_1B72380B8(v38, v36);

LABEL_7:
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v24;
}

unint64_t *static OrderBundle.open(_:validator:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B77FF4F8();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  type metadata accessor for ContentPackageReader();
  swift_allocObject();
  result = ContentPackageReader.init(bundleURL:isBundleOwner:)(v7, 0);
  if (!v2)
  {
    v10 = result;
    sub_1B719B06C(a2, v12);
    swift_allocObject();
    return sub_1B7535E00(v10, v12);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OrderBundle.close()()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  os_unfair_lock_lock((v1 + 24));
  sub_1B7537014((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t OrderBundle.closeAfterAsync<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B75365A8, 0, 0);
}

uint64_t sub_1B75365A8()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1B753664C;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return ContentPackageReader.closeAfterAsync<A>(_:)(v4, v5, v2, v3);
}

uint64_t sub_1B753664C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static OrderBundle.== infix(_:_:)()
{
  sub_1B7800478();
  sub_1B7537284(&qword_1EB996CB0, MEMORY[0x1E69663E0]);
  return sub_1B7800828() & 1;
}

uint64_t OrderBundle.deinit()
{

  v1 = OBJC_IVAR____TtC10FinanceKit11OrderBundle_manifestHash;
  v2 = sub_1B7800478();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B7537030(v0 + OBJC_IVAR____TtC10FinanceKit11OrderBundle_content);
  return v0;
}

uint64_t OrderBundle.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC10FinanceKit11OrderBundle_manifestHash;
  v2 = sub_1B7800478();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B7537030(v0 + OBJC_IVAR____TtC10FinanceKit11OrderBundle_content);

  return swift_deallocClassInstance();
}

uint64_t sub_1B75368FC()
{
  sub_1B7800478();
  sub_1B7537284(&qword_1EB996CB0, MEMORY[0x1E69663E0]);
  return sub_1B7800828() & 1;
}

Swift::String __swiftcall OrderBundle.localizedString(forKey:)(Swift::String forKey)
{
  v10 = forKey;
  v11 = 0x726564726FLL;
  v12 = 0xE500000000000000;
  v1 = sub_1B723940C(sub_1B726357C, &v9);
  v2 = sub_1B77FFA48();
  v3 = sub_1B741F7D4(v2);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1B7536A24(uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = 0x726564726FLL;
  v6[5] = 0xE500000000000000;
  v2 = sub_1B723940C(sub_1B726357C, v6);
  v3 = sub_1B77FFA48();
  v4 = sub_1B741F7D4(v3);

  return v4;
}

void sub_1B7536AC4()
{
  v1 = *(*(*v0 + 16) + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  os_unfair_lock_lock((v1 + 24));
  sub_1B75372CC((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

unint64_t *sub_1B7536B24(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v26[5] = *MEMORY[0x1E69E9840];
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v23 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v23 - v16;
  type metadata accessor for ContentPackageUnarchiver();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B783A7B0;
  v19 = a3;
  v20 = inited;
  ContentPackageUnarchiver.unarchive(_:workingDirectory:)(a1, a2, v19, v17);
  if (v4)
  {
  }

  else
  {
    v23[3] = v12;
    v24 = v17;
    (*(v9 + 16))(v15, v17, v8);
    type metadata accessor for ContentPackageReader();
    swift_allocObject();
    v21 = ContentPackageReader.init(bundleURL:isBundleOwner:)(v15, 1);
    sub_1B719B06C(v25, v26);
    type metadata accessor for OrderBundle();
    swift_allocObject();
    v20 = sub_1B7535E00(v21, v26);
    (*(v9 + 8))(v24, v8);
  }

  return v20;
}

uint64_t sub_1B7537030(uint64_t a1)
{
  v2 = type metadata accessor for RawOrderContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for OrderBundle()
{
  result = qword_1EB996CB8;
  if (!qword_1EB996CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B75370E0()
{
  result = sub_1B7800478();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RawECommerceOrderContent(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1B7537230()
{
  result = qword_1EB996CC8;
  if (!qword_1EB996CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996CC8);
  }

  return result;
}

uint64_t sub_1B7537284(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1B75372E4()
{
  if (qword_1EDAF9E30 != -1)
  {
    swift_once();
  }

  v0 = *(off_1EDAF9E38 + 2);
  v1 = type metadata accessor for BankConnectSpotlightTransactionsProvider();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC10FinanceKit40BankConnectSpotlightTransactionsProvider_store] = v0;
  v4.receiver = v2;
  v4.super_class = v1;

  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1B7537424(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1B7801478();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B75374E4, 0, 0);
}

uint64_t sub_1B75374E4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = [*(*(v0[4] + OBJC_IVAR____TtC10FinanceKit40BankConnectSpotlightTransactionsProvider_store) + 16) newBackgroundContext];
  v0[8] = v5;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v0[9] = v7;
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v5;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);

  v5;
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996CE0);
  *v8 = v0;
  v8[1] = sub_1B753767C;
  v10 = v0[7];

  return MEMORY[0x1EEDB6538](v0 + 2, v10, sub_1B7539834, v7, v9);
}

void sub_1B753767C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    MEMORY[0x1EEE6DFA0](sub_1B75377D4, 0, 0);
  }
}

uint64_t sub_1B75377D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1B7537844@<X0>(void *a1@<X2>, unint64_t *a2@<X8>)
{
  v129 = a1;
  v3 = sub_1B77FF4F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v130 = &v109 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v109 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v121 = &v109 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v109 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v128 = &v109 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v109 = v12;
    v110 = Strong;
    v127 = v3;
    v111 = a2;
    v20 = MEMORY[0x1E69E7CC0];
    v134 = MEMORY[0x1E69E7CC0];

    v22 = sub_1B723BBC4(v21);

    v24 = 0;
    v26 = v22 + 56;
    v25 = *(v22 + 56);
    v131 = v22;
    v27 = 1 << *(v22 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & v25;
    v30 = (v27 + 63) >> 6;
    v132 = v4 + 16;
    v126 = v4 + 32;
    v124 = v4 + 8;
    *&v23 = 136315394;
    v113 = v23;
    v116 = v20;
    v118 = v20;
    v112 = v20;
    v125 = v7;
    v123 = v26;
    v122 = v30;
    v120 = v4;
    v117 = v17;
LABEL_5:
    v31 = v24;
    v32 = v119;
    while (v29)
    {
      v24 = v31;
LABEL_14:
      v34 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v35 = *(v4 + 72);
      v36 = *(v4 + 16);
      v37 = v127;
      v38 = v128;
      v36(v128, *(v131 + 48) + v35 * (v34 | (v24 << 6)), v127);
      v39 = *(v4 + 32);
      v39(v17, v38, v37);
      v40 = v17;
      v41 = v32;
      sub_1B7539ED8(v17, v129);
      if (v32)
      {
        if (qword_1EDAF65A8 != -1)
        {
          swift_once();
        }

        v45 = sub_1B78000B8();
        __swift_project_value_buffer(v45, qword_1EDAF65B0);
        v46 = v121;
        v47 = v127;
        v36(v121, v17, v127);
        v48 = v32;
        v49 = sub_1B7800098();
        v50 = sub_1B78011D8();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v133 = v114;
          *v51 = v113;
          sub_1B7535C74(&qword_1EB99E0D0);
          v119 = v41;
          v53 = v50;
          v54 = sub_1B7802068();
          v55 = v46;
          v57 = v56;
          v115 = *v124;
          v115(v55, v47);
          v58 = sub_1B71A3EF8(v54, v57, &v133);

          *(v51 + 4) = v58;
          *(v51 + 12) = 2112;
          v59 = v119;
          v60 = v119;
          v61 = _swift_stdlib_bridgeErrorToNSError();
          *(v51 + 14) = v61;
          *v52 = v61;
          _os_log_impl(&dword_1B7198000, v49, v53, "Failed to fetch transaction for %s with error: %@", v51, 0x16u);
          sub_1B726B694(v52);
          MEMORY[0x1B8CA7A40](v52, -1, -1);
          v62 = v114;
          __swift_destroy_boxed_opaque_existential_1(v114);
          MEMORY[0x1B8CA7A40](v62, -1, -1);
          MEMORY[0x1B8CA7A40](v51, -1, -1);

          v17 = v117;
          v115(v117, v47);
        }

        else
        {

          v33 = *v124;
          (*v124)(v46, v47);
          v17 = v117;
          v33(v117, v47);
        }

        v32 = 0;
      }

      else
      {
        if (v42)
        {
          v63 = v43;
          v64 = v44;
          v119 = 0;
          v65 = v42;
          v36(v109, v40, v127);
          v115 = v65;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v118 = sub_1B723E714(0, *(v118 + 2) + 1, 1, v118);
          }

          v67 = *(v118 + 2);
          v66 = *(v118 + 3);
          if (v67 >= v66 >> 1)
          {
            v118 = sub_1B723E714(v66 > 1, v67 + 1, 1, v118);
          }

          v68 = v118;
          *(v118 + 2) = v67 + 1;
          v39(&v68[((*(v120 + 80) + 32) & ~*(v120 + 80)) + v67 * v35], v109, v127);
          v69 = v115;
          MEMORY[0x1B8CA4F20]();
          if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B7800C58();
          }

          sub_1B7800C88();
          v112 = v134;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_1B723E180(0, *(v116 + 2) + 1, 1, v116);
          }

          v4 = v120;
          v71 = *(v116 + 2);
          v70 = *(v116 + 3);
          if (v71 >= v70 >> 1)
          {
            v116 = sub_1B723E180((v70 > 1), v71 + 1, 1, v116);
          }

          (*v124)(v40, v127);
          v72 = v116;
          *(v116 + 2) = v71 + 1;
          v73 = &v72[16 * v71];
          *(v73 + 4) = v63;
          *(v73 + 5) = v64;
          v17 = v40;
          v7 = v125;
          v26 = v123;
          v30 = v122;
          goto LABEL_5;
        }

        (*v124)(v17, v127);
      }

      v31 = v24;
      v7 = v125;
      v4 = v120;
      v26 = v123;
      v30 = v122;
    }

    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      if (v24 >= v30)
      {
        break;
      }

      v29 = *(v26 + 8 * v24);
      ++v31;
      if (v29)
      {
        goto LABEL_14;
      }
    }

    v119 = v32;

    if (qword_1EDAF9CD8 == -1)
    {
      goto LABEL_33;
    }

LABEL_66:
    swift_once();
LABEL_33:
    v74 = off_1EDAF9CE0;
    type metadata accessor for ManagedTransactionExporter();
    inited = swift_initStackObject();
    inited[5] = type metadata accessor for BankConnectService();
    inited[6] = &protocol witness table for BankConnectService;
    inited[2] = v74;

    v76 = ManagedTransactionExporter.financeKitTransactions(from:classifyIfNecessary:)(v112, 1);

    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 2));
    v77 = sub_1B7204470(MEMORY[0x1E69E7CC0]);
    v78 = *(v118 + 2);
    v79 = v127;
    v123 = v76;
    if (v78)
    {
      v122 = v76 & 0xC000000000000001;
      if ((v76 & 0xC000000000000001) != 0 || v78 <= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        if (v78 <= *(v116 + 2))
        {
          v80 = 0;
          v81 = &v118[(*(v4 + 80) + 32) & ~*(v4 + 80)];
          v126 = *(v4 + 72);
          v131 = *(v4 + 16);
          v82 = v116 + 40;
          v120 = v124 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v83 = v130;
          v121 = v78;
          while (1)
          {
            v128 = v81;
            (v131)(v83);
            if (v122)
            {
              v87 = MEMORY[0x1B8CA5DC0](v80, v123);
            }

            else
            {
              v87 = *(v123 + 8 * v80 + 32);
            }

            v88 = v87;
            (v131)(v7, v130, v79);
            v89 = objc_allocWithZone(FKBankConnectSpotlightTransactionsProviderResponse);

            v90 = v88;
            v91 = v7;
            v92 = sub_1B7800838();

            v93 = [v89 initWithTransaction:v90 primaryAccountIdentifier:v92];
            v129 = v90;

            if (!v93)
            {
              v101 = sub_1B7245EE8(v91);
              v7 = v91;
              if (v102)
              {
                v103 = v101;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v133 = v77;
                v79 = v127;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_1B725E088();
                  v77 = v133;
                }

                v86 = *v124;
                (*v124)(v77[6] + v103 * v126, v79);

                sub_1B7391DE4(v103, v77);
                v86(v91, v79);
              }

              else
              {
                v86 = *v124;
                v79 = v127;
                (*v124)(v91, v127);
              }

              goto LABEL_40;
            }

            v4 = swift_isUniquelyReferenced_nonNull_native();
            v133 = v77;
            v7 = sub_1B7245EE8(v91);
            v95 = v77[2];
            v96 = (v94 & 1) == 0;
            v97 = v95 + v96;
            if (__OFADD__(v95, v96))
            {
              goto LABEL_64;
            }

            v98 = v94;
            if (v77[3] >= v97)
            {
              if (v4)
              {
                v77 = v133;
                if ((v94 & 1) == 0)
                {
                  goto LABEL_56;
                }
              }

              else
              {
                sub_1B725E088();
                v77 = v133;
                if ((v98 & 1) == 0)
                {
                  goto LABEL_56;
                }
              }
            }

            else
            {
              sub_1B724C534(v97, v4);
              v99 = sub_1B7245EE8(v125);
              if ((v98 & 1) != (v100 & 1))
              {
                goto LABEL_69;
              }

              v7 = v99;
              v77 = v133;
              if ((v98 & 1) == 0)
              {
LABEL_56:
                v77[(v7 >> 6) + 8] |= 1 << v7;
                v79 = v127;
                (v131)(v77[6] + v7 * v126, v125, v127);
                *(v77[7] + 8 * v7) = v93;
                v105 = v77[2];
                v106 = __OFADD__(v105, 1);
                v107 = v105 + 1;
                if (v106)
                {
                  goto LABEL_65;
                }

                v77[2] = v107;
                goto LABEL_39;
              }
            }

            v84 = v77[7];
            v85 = *(v84 + 8 * v7);
            *(v84 + 8 * v7) = v93;

            v79 = v127;
LABEL_39:
            v7 = v125;
            v86 = *v124;
            (*v124)(v125, v79);
LABEL_40:

            v83 = v130;
            ++v80;
            v86(v130, v79);
            v82 += 16;
            v81 = &v128[v126];
            if (v121 == v80)
            {
              goto LABEL_61;
            }
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_69:
      result = sub_1B78021C8();
      __break(1u);
    }

    else
    {
LABEL_61:

      *v111 = v77;
    }
  }

  else
  {
    result = sub_1B7204470(MEMORY[0x1E69E7CC0]);
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B75386B0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_1B77FF4F8();
  v5 = sub_1B7800C38();
  v3[5] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_1B753878C;

  return sub_1B7537424(v5);
}

uint64_t sub_1B753878C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;

  sub_1B7205540(0, &qword_1EB996CF0);
  sub_1B7535C74(&qword_1EB98FF98);
  v3 = sub_1B7800708();

  (v1)[2](v1, v3);

  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1B7538970(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1B7801478();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1B77FF4F8();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7538A94, 0, 0);
}

uint64_t sub_1B7538A94()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v15 = v0[5];
  v16 = v0[7];
  v6 = v0[3];
  v7 = [*(*(v0[4] + OBJC_IVAR____TtC10FinanceKit40BankConnectSpotlightTransactionsProvider_store) + 16) newBackgroundContext];
  v0[12] = v7;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(v2, v6, v4);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v0[13] = v10;
  *(v10 + 16) = v8;
  (*(v3 + 32))(v10 + v9, v2, v4);
  *(v10 + ((v1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  (*(v5 + 104))(v16, *MEMORY[0x1E695D2B8], v15);
  v7;
  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996CE8);
  *v11 = v0;
  v11[1] = sub_1B7538C88;
  v13 = v0[7];

  return MEMORY[0x1EEDB6538](v0 + 2, v13, sub_1B7539854, v10, v12);
}

void sub_1B7538C88()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    MEMORY[0x1EEE6DFA0](sub_1B7538DE0, 0, 0);
  }
}

uint64_t sub_1B7538DE0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1B7538E64(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v7 = sub_1B77FF4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v12 = Strong;
  sub_1B7539ED8(a1, a2);
  if (v3)
  {
    v42 = v12;
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v14 = sub_1B78000B8();
    __swift_project_value_buffer(v14, qword_1EDAF65B0);
    (*(v8 + 16))(v10, a1, v7);
    v15 = v3;
    v16 = sub_1B7800098();
    v17 = sub_1B78011D8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v41 = a3;
      v19 = v18;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43 = v40;
      *v19 = 136315394;
      sub_1B7535C74(&qword_1EB99E0D0);
      v20 = sub_1B7802068();
      v22 = v21;
      (*(v8 + 8))(v10, v7);
      v23 = sub_1B71A3EF8(v20, v22, &v43);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2112;
      v24 = v3;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v25;
      v26 = v39;
      *v39 = v25;
      _os_log_impl(&dword_1B7198000, v16, v17, "Failed to fetch transaction for %s with error: %@", v19, 0x16u);
      sub_1B726B694(v26);
      MEMORY[0x1B8CA7A40](v26, -1, -1);
      v27 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1B8CA7A40](v27, -1, -1);
      v28 = v19;
      a3 = v41;
      MEMORY[0x1B8CA7A40](v28, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    v38 = 0;
    goto LABEL_15;
  }

  if (!v13)
  {

LABEL_14:
    v38 = 0;
    goto LABEL_15;
  }

  v29 = v12;
  v30 = a3;
  v31 = qword_1EDAF9CD8;
  v32 = v13;

  if (v31 != -1)
  {
    swift_once();
  }

  v33 = off_1EDAF9CE0;
  type metadata accessor for ManagedTransactionExporter();
  inited = swift_initStackObject();
  inited[5] = type metadata accessor for BankConnectService();
  inited[6] = &protocol witness table for BankConnectService;
  inited[2] = v33;

  v35 = ManagedTransactionExporter.financeKitTransaction(from:classifyIfNecessary:)(v32, 1);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 2));
  v36 = objc_allocWithZone(FKBankConnectSpotlightTransactionsProviderResponse);
  v37 = sub_1B7800838();

  v38 = [v36 initWithTransaction:v35 primaryAccountIdentifier:v37];

  a3 = v30;
LABEL_15:
  *a3 = v38;
}

uint64_t sub_1B753945C(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_1B77FF4F8();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a2);
  sub_1B77FF478();
  a3;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_1B7539588;

  return sub_1B7538970(v7);
}

uint64_t sub_1B7539588(void *a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  (*(v5 + 8))(v4, v6);
  (v3)[2](v3, a1);
  _Block_release(v3);

  v8 = *(v10 + 8);

  return v8();
}

id BankConnectSpotlightTransactionsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectSpotlightTransactionsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectSpotlightTransactionsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B7539854(void *a1@<X8>)
{
  v3 = *(sub_1B77FF4F8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  sub_1B7538E64(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t dispatch thunk of BankConnectSpotlightTransactionsProvider.transactions(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7396848;

  return v7(a1);
}

uint64_t dispatch thunk of BankConnectSpotlightTransactionsProvider.transaction(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B721FB60;

  return v7(a1);
}

uint64_t sub_1B7539B7C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B7201BB0;

  return sub_1B753945C(v2, v3, v4);
}

uint64_t sub_1B7539C30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B723838C;

  return sub_1B75386B0(v2, v3, v4);
}

id sub_1B7539CE4(void *a1)
{
  type metadata accessor for ManagedInternalTransaction();
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit26ManagedInternalTransaction;
  v2 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  v3 = sub_1B7800C18();
  [v2 setRelationshipKeyPathsForPrefetching_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  *(v5 + 56) = sub_1B7205540(0, &qword_1EB98F930);
  *(v5 + 64) = sub_1B753A54C();
  *(v5 + 32) = a1;
  v6 = a1;
  *(v4 + 32) = sub_1B78010E8();
  *(v4 + 40) = sub_1B78010E8();
  v7 = sub_1B7800C18();

  v8 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v2 setPredicate_];
  return v2;
}

void sub_1B7539ED8(uint64_t a1, void *a2)
{
  v5 = sub_1B77FF4F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 persistentStoreCoordinator];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B77FF3F8();
    v12 = [v10 managedObjectIDForURIRepresentation_];

    if (v12)
    {
      v13 = sub_1B7539CE4(v12);
      type metadata accessor for ManagedInternalTransaction();
      v14 = sub_1B7801498();
      if (v2)
      {

        return;
      }

      if (v14 >> 62)
      {
        v40 = v14;
        v41 = sub_1B7801958();
        v14 = v40;
        if (v41)
        {
          goto LABEL_12;
        }
      }

      else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_12:
        if ((v14 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1B8CA5DC0](0);
          goto LABEL_15;
        }

        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v24 = *(v14 + 32);
LABEL_15:
          v25 = v24;

          v26 = [v25 applePayPrimaryAccountIdentifier];
          if (v26)
          {
            v27 = v26;
            sub_1B7800868();

            return;
          }

          if (qword_1EDAF65A8 != -1)
          {
            swift_once();
          }

          v28 = sub_1B78000B8();
          __swift_project_value_buffer(v28, qword_1EDAF65B0);
          v29 = v12;
          v30 = sub_1B7800098();
          v31 = sub_1B78011D8();

          if (!os_log_type_enabled(v30, v31))
          {

LABEL_27:
            goto LABEL_28;
          }

          v32 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v53 = v52;
          *v32 = 136315138;
          v33 = [v29 debugDescription];
          v51 = v29;
          v34 = v33;
          v35 = sub_1B7800868();
          v37 = v36;

          v38 = sub_1B71A3EF8(v35, v37, &v53);

          *(v32 + 4) = v38;
          _os_log_impl(&dword_1B7198000, v30, v31, "Not found an associated primary account identifier for a transaction with\nobjectID %s", v32, 0xCu);
          v39 = v52;
          __swift_destroy_boxed_opaque_existential_1(v52);
          MEMORY[0x1B8CA7A40](v39, -1, -1);
          MEMORY[0x1B8CA7A40](v32, -1, -1);

LABEL_26:
          goto LABEL_27;
        }

        __break(1u);
LABEL_31:
        swift_once();
LABEL_24:
        v42 = sub_1B78000B8();
        __swift_project_value_buffer(v42, qword_1EDAF65B0);
        v25 = v12;
        v30 = sub_1B7800098();
        v43 = sub_1B78011D8();

        if (os_log_type_enabled(v30, v43))
        {
          v44 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v53 = v52;
          *v44 = 136315138;
          v45 = [v25 debugDescription];
          v46 = sub_1B7800868();
          v48 = v47;

          v49 = sub_1B71A3EF8(v46, v48, &v53);

          *(v44 + 4) = v49;
          _os_log_impl(&dword_1B7198000, v30, v43, "Failed to create transaction object from objectID %s", v44, 0xCu);
          v50 = v52;
          __swift_destroy_boxed_opaque_existential_1(v52);
          MEMORY[0x1B8CA7A40](v50, -1, -1);
          MEMORY[0x1B8CA7A40](v44, -1, -1);

LABEL_28:
          return;
        }

        goto LABEL_26;
      }

      if (qword_1EDAF65A8 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_31;
    }
  }

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v15 = sub_1B78000B8();
  __swift_project_value_buffer(v15, qword_1EDAF65B0);
  (*(v6 + 16))(v8, a1, v5);
  v16 = sub_1B7800098();
  v17 = sub_1B78011D8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v53 = v19;
    *v18 = 136315138;
    v20 = sub_1B77FF398();
    v52 = v2;
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    v23 = sub_1B71A3EF8(v20, v22, &v53);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1B7198000, v16, v17, "Could not create object ID for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1B8CA7A40](v19, -1, -1);
    MEMORY[0x1B8CA7A40](v18, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_1B753A54C()
{
  result = qword_1EB996CF8;
  if (!qword_1EB996CF8)
  {
    sub_1B7205540(255, &qword_1EB98F930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996CF8);
  }

  return result;
}

uint64_t _s10FinanceKit32BankConnectInsightsHeaderBuilderO5build18mapsUserIdentifier6localeSayAA15HTTPHeaderFieldVGAA0cd4MapsjK0V_10Foundation6LocaleVtFZ_0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v19 - v3;
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B780D870;
  v9 = sub_1B77FFA38();
  strcpy((v8 + 32), "X-Apple-Locale");
  *(v8 + 47) = -18;
  *(v8 + 48) = v9;
  *(v8 + 56) = v10;
  *(v8 + 64) = 0xD00000000000002ALL;
  *(v8 + 72) = 0x80000001B78842E0;
  *(v8 + 80) = v6;
  *(v8 + 88) = v5;
  v19[1] = v7;

  v11 = sub_1B7802068();
  *(v8 + 96) = 0xD000000000000024;
  *(v8 + 104) = 0x80000001B7884310;
  *(v8 + 112) = v11;
  *(v8 + 120) = v12;
  sub_1B77FFAA8();
  v13 = sub_1B77FFA98();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    sub_1B753A884(v4);
  }

  else
  {
    v15 = sub_1B77FFA88();
    v17 = v16;
    (*(v14 + 8))(v4, v13);
    v8 = sub_1B723E73C(1, 4, 1, v8);
    *(v8 + 16) = 4;
    *(v8 + 128) = 0xD000000000000015;
    *(v8 + 136) = 0x80000001B787EEA0;
    *(v8 + 144) = v15;
    *(v8 + 152) = v17;
  }

  return v8;
}

uint64_t sub_1B753A884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContentPackageArchiver.archiveBundle(at:)@<X0>(char *a1@<X8>)
{
  v62 = a1;
  v1 = sub_1B77FFA18();
  v60 = *(v1 - 8);
  v61 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FF4F8();
  v63 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DF0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v51 - v14;
  v16 = sub_1B7800378();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v58 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v51 - v20;
  sub_1B77FF388();
  sub_1B7800248();
  v59 = *(v17 + 48);
  if (v59(v15, 1, v16) == 1)
  {
    sub_1B72B9488(v15);
    type metadata accessor for ContentPackageArchivingError();
    sub_1B753B274();
    swift_allocError();
    v22 = v21;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996D08);
    (*(*(v23 - 8) + 56))(v22, 1, 3, v23);
    return swift_willThrow();
  }

  else
  {
    v55 = v13;
    v25 = v4;
    v52 = *(v17 + 32);
    v53 = v17 + 32;
    v52(v64, v15, v16);
    v26 = [objc_opt_self() defaultManager];
    v54 = v17;
    v27 = v26;
    v28 = [v26 temporaryDirectory];

    sub_1B77FF478();
    sub_1B77FFA08();
    sub_1B77FF9A8();
    (*(v60 + 8))(v3, v61);
    sub_1B77FF428();

    v29 = *(v63 + 8);
    v30 = v7;
    v31 = v63 + 8;
    v29(v30, v25);
    v32 = v62;
    sub_1B77FF438();
    v33 = v25;
    v34 = v25;
    v35 = v55;
    v29(v9, v34);
    v36 = v32;
    sub_1B77FF388();
    sub_1B7800248();
    if (v59(v35, 1, v16) == 1)
    {
      sub_1B72B9488(v35);
      type metadata accessor for ContentPackageArchivingError();
      sub_1B753B274();
      swift_allocError();
      v38 = v37;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996D08);
      (*(*(v39 - 8) + 56))(v38, 3, 3, v39);
      swift_willThrow();
      v29(v36, v33);
      return (*(v54 + 8))(v64, v16);
    }

    else
    {
      v61 = v29;
      v40 = v54;
      v63 = v31;
      v41 = v58;
      v52(v58, v35, v16);
      type metadata accessor for ArchiveDiskReader();
      swift_allocObject();
      v42 = v57;
      v43 = sub_1B72BC3A8();
      if (v42)
      {
        v44 = *(v40 + 8);
        v44(v41, v16);
        v61(v62, v33);
        return (v44)(v64, v16);
      }

      else
      {
        v45 = v43;
        v60 = v16;
        MEMORY[0x1EEE9AC00](v43);
        *(&v51 - 2) = 0x20400000002;
        *(&v51 - 2) = 16777600;
        v46 = sub_1B7800268();
        MEMORY[0x1EEE9AC00](v46);
        v47 = v64;
        *(&v51 - 4) = v45;
        *(&v51 - 3) = v47;
        *(&v51 - 4) = v48;
        *(&v51 - 1) = v56;
        sub_1B7800218();
        v49 = *(v40 + 8);
        v50 = v60;
        v49(v58, v60);

        return (v49)(v47, v50);
      }
    }
  }
}

uint64_t ContentPackageArchiver.archiveBundle(at:to:)()
{
  type metadata accessor for ArchiveDiskReader();
  swift_allocObject();
  result = sub_1B72BC3A8();
  if (!v0)
  {
    MEMORY[0x1EEE9AC00](result);
    v2 = sub_1B7800268();
    MEMORY[0x1EEE9AC00](v2);
    sub_1B7800218();
  }

  return result;
}

uint64_t type metadata accessor for ContentPackageArchivingError()
{
  result = qword_1EB996D10;
  if (!qword_1EB996D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B753B274()
{
  result = qword_1EB996D00;
  if (!qword_1EB996D00)
  {
    type metadata accessor for ContentPackageArchivingError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996D00);
  }

  return result;
}

uint64_t sub_1B753B2CC(uint64_t a1, char *a2)
{
  result = sub_1B72BC5C8();
  if (!v2)
  {
    type metadata accessor for ArchiveMemoryWriter();
    swift_allocObject();
    v6 = sub_1B72BCD6C();
    sub_1B753B9C8(a1, v6, a2);

    return sub_1B72BC6D0();
  }

  return result;
}

uint64_t sub_1B753B3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v7 = sub_1B7800378();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = archive_entry_filetype();
  result = sub_1B78001D8();
  if (v14 != result)
  {
    v16 = archive_entry_filetype();
    result = sub_1B78001E8();
    if (v16 != result)
    {
      result = archive_entry_sourcepath();
      if (result)
      {
        MEMORY[0x1B8CA45E0]();
        v17 = (*(v8 + 32))(v13, v11, v7);
        MEMORY[0x1EEE9AC00](v17);
        *(&v20 - 2) = 0x20000000000000;
        *(&v20 - 2) = 16842752;
        v18 = sub_1B7800268();
        if (!v4)
        {
          MEMORY[0x1EEE9AC00](v18);
          *(&v20 - 8) = v19;
          *(&v20 - 3) = a2;
          *(&v20 - 2) = a3;
          *(&v20 - 1) = v21;
          sub_1B7800218();
        }

        return (*(v8 + 8))(v13, v7);
      }
    }
  }

  return result;
}

uint64_t sub_1B753B5FC()
{
  result = sub_1B7800238();
  if (!v0)
  {
    v3 = result;
    if (v2)
    {
LABEL_3:
      sub_1B753C224();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v4 = v3;
    }

    else if (result >= 1)
    {
      while ((archive_write_data() & 0x8000000000000000) == 0)
      {
        result = sub_1B7800238();
        v3 = result;
        if (v5)
        {
          goto LABEL_3;
        }

        if (result <= 0)
        {
          return result;
        }
      }

      sub_1B72BBAB4();
      v6 = swift_allocError();
      v8 = v7;
      v9 = archive_errno();
      result = archive_error_string();
      if (result)
      {
        v10 = sub_1B7800A28();
        *v8 = v9;
        *(v8 + 8) = v10;
        *(v8 + 16) = v11;
        sub_1B72BC894();
        swift_allocError();
        *v12 = v6;
        *(v12 + 8) = 0xD000000000000014;
        *(v12 + 16) = 0x80000001B7884380;
        *(v12 + 24) = 1;
        return swift_willThrow();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1B753B7CC@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1B7800228();
  if ((result & 0x100000000) != 0)
  {
    v3 = result;
    sub_1B753C224();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v4 = v3;
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B753B8B8()
{
  sub_1B753B910();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1B753B910()
{
  if (!qword_1EB996D20)
  {
    sub_1B7800378();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB996D20);
    }
  }
}

uint64_t sub_1B753B9C8(uint64_t a1, uint64_t a2, char *a3)
{
  v81 = a3;
  v73 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DF0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v67 - v8;
  v9 = sub_1B7800378();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v75 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v67 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v67 - v19;
  v21 = NSPageSize();
  v77 = swift_slowAlloc();
  v22 = sub_1B72BBD14();
  if (!v3)
  {
    v79 = v9;
    v80 = v20;
    v78 = (v10 + 32);
    v70 = v15;
    v71 = (v10 + 16);
    v68 = (v10 + 48);
    v69 = (v10 + 56);
    v74 = (v10 + 8);
    v24 = v75;
    v25 = v18;
    v26 = v21;
    v27 = v22;
    v67 = a1;
    while (1)
    {
      if (!v27)
      {
        return MEMORY[0x1B8CA7A40](v77, -1, -1);
      }

      archive_read_disk_descend();
      v28 = archive_entry_pathname_utf8();
      if (v28)
      {
        MEMORY[0x1B8CA45E0](v28);
        v29 = *v78;
        v30 = v80;
        (*v78)(v80, v25, v79);
        if (sub_1B78002D8())
        {
          v31 = archive_entry_filetype();
          v32 = v31 == sub_1B78001D8();
          v30 = v80;
          if (!v32)
          {
            type metadata accessor for ContentPackageArchivingError();
            v63 = v30;
            sub_1B753B274();
            swift_allocError();
            v65 = v64;
            v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996D08);
            (*(*(v66 - 8) + 56))(v65, 2, 3, v66);
            swift_willThrow();

            (*v74)(v63, v79);
            return MEMORY[0x1B8CA7A40](v77, -1, -1);
          }
        }

        v75 = v27;
        v33 = v24;
        v34 = v70;
        v35 = *v71;
        v36 = v79;
        (*v71)(v70, v30, v79);
        if ((sub_1B7800278() & 1) == 0)
        {
          type metadata accessor for ContentPackageArchivingError();
          sub_1B753B274();
          swift_allocError();
          v43 = v42;
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996D08);
          v45 = v36;
          v46 = *(v44 + 48);
          v35(v43, v34, v45);
          v35(&v43[v46], v81, v45);
          (*(*(v44 - 8) + 56))(v43, 0, 3, v44);
          swift_willThrow();

          v47 = *v74;
          (*v74)(v34, v45);
          v47(v80, v45);
          return MEMORY[0x1B8CA7A40](v77, -1, -1);
        }

        v37 = v76;
        v29(v76, v34, v36);
        (*v69)(v37, 0, 1, v36);
        v38 = v72;
        sub_1B72B9418(v37, v72);
        if ((*v68)(v38, 1, v36) == 1)
        {
          sub_1B72B9488(v38);
          v39 = v75;
          archive_entry_set_pathname_utf8();
          v24 = v33;
        }

        else
        {
          v40 = v38;
          v24 = v33;
          v29(v33, v40, v36);
          v39 = v75;
          sub_1B7800268();
          v37 = v76;
          (*v74)(v33, v36);
        }

        sub_1B72B9488(v37);
        v41 = v73;
        if (archive_write_header())
        {
          sub_1B72BBAB4();
          v48 = swift_allocError();
          v50 = v49;
          v51 = archive_errno();
          result = archive_error_string();
          if (result)
          {
            v52 = sub_1B7800A28();
            *v50 = v51;
            *(v50 + 8) = v52;
            *(v50 + 16) = v53;
            sub_1B72BC894();
            swift_allocError();
            *v54 = v48;
            *(v54 + 8) = 0xD00000000000001CLL;
            *(v54 + 16) = 0x80000001B7878130;
            *(v54 + 24) = 1;
            swift_willThrow();

            (*v74)(v80, v79);
            return MEMORY[0x1B8CA7A40](v77, -1, -1);
          }

          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        sub_1B753B3B4(v39, v77, v77 + v26, v41);
        if (archive_write_finish_entry())
        {
          sub_1B72BBAB4();
          v55 = swift_allocError();
          v57 = v56;
          v58 = archive_errno();
          result = archive_error_string();
          if (result)
          {
            v59 = sub_1B7800A28();
            *v57 = v58;
            *(v57 + 8) = v59;
            *(v57 + 16) = v60;
            sub_1B72BC894();
            swift_allocError();
            *v61 = v55;
            *(v61 + 8) = 0xD000000000000016;
            *(v61 + 16) = 0x80000001B7878110;
            *(v61 + 24) = 1;
            swift_willThrow();
            v62 = v79;
            sub_1B72BCA14();
            swift_willThrow();

            (*v74)(v80, v62);
            return MEMORY[0x1B8CA7A40](v77, -1, -1);
          }

          goto LABEL_23;
        }

        (*v74)(v80, v36);
      }

      v27 = sub_1B72BBD14();
    }
  }

  return MEMORY[0x1B8CA7A40](v77, -1, -1);
}

unint64_t sub_1B753C224()
{
  result = qword_1EB996D28;
  if (!qword_1EB996D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996D28);
  }

  return result;
}

uint64_t TaskQueueDescriptor.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (!*(v1 + 16))
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 16) == 1)
  {
    v4 = 1;
LABEL_5:
    MEMORY[0x1B8CA6620](v4);

    return sub_1B7800798();
  }

  MEMORY[0x1B8CA6620](2);

  return sub_1B7345D5C(a1, v3);
}

uint64_t TaskQueueDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1B78022F8();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1B8CA6620](2);
      sub_1B7345D5C(v5, v1);
      return sub_1B7802368();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B8CA6620](v3);
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B753C3E4()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1B78022F8();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1B8CA6620](2);
      sub_1B7345D5C(v5, v1);
      return sub_1B7802368();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B8CA6620](v3);
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B753C47C(uint64_t a1)
{
  v3 = *v1;
  if (!*(v1 + 16))
  {
    v4 = 0;
    goto LABEL_5;
  }

  if (*(v1 + 16) == 1)
  {
    v4 = 1;
LABEL_5:
    MEMORY[0x1B8CA6620](v4);

    return sub_1B7800798();
  }

  MEMORY[0x1B8CA6620](2);

  return sub_1B7345D5C(a1, v3);
}

uint64_t sub_1B753C51C()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1B78022F8();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1B8CA6620](2);
      sub_1B7345D5C(v5, v1);
      return sub_1B7802368();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1B8CA6620](v3);
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t BankConnectTaskQueueProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t BankConnectTaskQueueProvider.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
  return v0;
}

uint64_t sub_1B753C624(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(v1 + 112);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = sub_1B7245A78(v3, v4, v5);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    type metadata accessor for BankConnectTaskQueue();
    v9 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v9 + 112) = 0;
    *(v9 + 120) = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

LABEL_6:
  swift_beginAccess();
  sub_1B72630BC(v3, v4, v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_1B7392DFC(v9, v3, v4, v5, isUniquelyReferenced_nonNull_native);
  sub_1B72630DC(v3, v4, v5);
  *(v2 + 112) = v12;
  swift_endAccess();
  return v9;
}

uint64_t BankConnectTaskQueue.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = MEMORY[0x1E69E7CC0];
  return v0;
}

uint64_t BankConnectTaskQueueProvider.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BankConnectTaskQueueProvider.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B753C818(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1B753C838);
}

uint64_t sub_1B753C838()
{
  v1 = sub_1B753C624(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t BankConnectTaskQueue.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = MEMORY[0x1E69E7CC0];
  return v0;
}

uint64_t sub_1B753C8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B753C8F0, v4, 0);
}

uint64_t sub_1B753C8F0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_1B753E668();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1B753C9F0;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return (sub_1B753D0B0)(v8, v1, v3, sub_1B753E6BC, v4, v7);
}

uint64_t sub_1B753C9F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B753CB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a1;
  swift_beginAccess();
  v14 = *(a2 + 120);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 120) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1B723EFEC(0, v14[2] + 1, 1, v14);
    *(a2 + 120) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1B723EFEC((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = &unk_1B783AC80;
  v18[5] = v13;
  *(a2 + 120) = v14;
  result = swift_endAccess();
  if ((*(a2 + 112) & 1) == 0)
  {
    *(a2 + 112) = 1;
    v20 = sub_1B7800DF8();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    v21 = sub_1B753E668();
    v22 = swift_allocObject();
    v22[2] = a2;
    v22[3] = v21;
    v22[4] = a2;
    swift_retain_n();
    sub_1B759B5D0(0, 0, v12, &unk_1B783AC88, v22);
  }

  return result;
}

uint64_t sub_1B753CD48(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = *(a5 - 8);
  v5[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[6] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v5[7] = v8;
  *v8 = v5;
  v8[1] = sub_1B753CEA8;

  return v10(v7);
}

uint64_t sub_1B753CEA8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B753CFA4, 0, 0);
}

uint64_t sub_1B753CFA4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  (*(v4 + 16))(v1, v2, v3);
  (*(*(v3 - 8) + 32))(*(*(v5 + 64) + 40), v1, v3);
  swift_continuation_resume();
  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B753D0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1B7800CD8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B753D144, v6, v8);
}

uint64_t sub_1B753D144()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1B753D1EC;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B753D1EC()
{
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t sub_1B753D2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B753D2EC, v4, 0);
}

uint64_t sub_1B753D2EC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_1B753E668();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v5;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1B753D3EC;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return (sub_1B753DC3C)(v8, v1, v3, sub_1B753E6C8, v4, v7);
}

uint64_t sub_1B753D3EC()
{
  v2 = *v1;
  v2[9] = v0;

  if (!v0)
  {

    v4 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  v3 = v2[6];

  return MEMORY[0x1EEE6DFA0](sub_1B7293DC8, v3, 0);
}

uint64_t sub_1B753D528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a1;
  swift_beginAccess();
  v14 = *(a2 + 120);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 120) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1B723EFEC(0, v14[2] + 1, 1, v14);
    *(a2 + 120) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1B723EFEC((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = &unk_1B783AC60;
  v18[5] = v13;
  *(a2 + 120) = v14;
  result = swift_endAccess();
  if ((*(a2 + 112) & 1) == 0)
  {
    *(a2 + 112) = 1;
    v20 = sub_1B7800DF8();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    v21 = sub_1B753E668();
    v22 = swift_allocObject();
    v22[2] = a2;
    v22[3] = v21;
    v22[4] = a2;
    swift_retain_n();
    sub_1B759B5D0(0, 0, v12, &unk_1B783AC70, v22);
  }

  return result;
}

uint64_t sub_1B753D770(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v7 = *(a5 - 8);
  v5[5] = v7;
  v5[6] = v7;
  v5[7] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[8] = v8;
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  v5[9] = v9;
  *v9 = v5;
  v9[1] = sub_1B753D8D0;

  return v11(v8);
}

uint64_t sub_1B753D8D0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1B753DAF8;
  }

  else
  {
    v2 = sub_1B753D9E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B753D9E4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  (*(v4 + 16))(v1, v2, v5);
  (*(v3 + 32))(*(*(v6 + 64) + 40), v1, v5);
  swift_continuation_throwingResume();
  (*(v4 + 8))(v2, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B753DAF8()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[10];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  sub_1B753DBA8((v0 + 2), v1, v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B753DBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v6, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1B753DC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1B7800CD8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1B753DCD0, v6, v8);
}

uint64_t sub_1B753DCD0()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1B753DD78;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B753DD78()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1B753DEA0()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 120);
  v3 = v2[2];
  v4 = v0[8];
  if (v3)
  {
    swift_beginAccess();
    v5 = v2[4];
    v0[9] = v2[5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 120) = v2;
    if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > v2[3] >> 1)
    {
      v7 = v0[8];
      v2 = sub_1B723EFEC(isUniquelyReferenced_nonNull_native, v3, 1, v2);
      *(v7 + 120) = v2;
    }

    v8 = v0[8];

    v9 = v2[2];
    memmove(v2 + 4, v2 + 6, 16 * v9 - 16);
    v2[2] = v9 - 1;
    *(v8 + 120) = v2;
    swift_endAccess();
    v13 = (v5 + *v5);
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_1B753E090;

    return v13();
  }

  else
  {
    *(v4 + 112) = 0;
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1B753E090()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1B753E1BC, v1, 0);
}

uint64_t sub_1B753E1BC()
{
  v1 = v0[8];
  v4 = *(v1 + 120);
  v3 = (v1 + 120);
  v2 = v4;
  v5 = v4[2];
  if (v5)
  {
    swift_beginAccess();
    v6 = v2[4];
    v0[9] = v2[5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v2;
    if (!isUniquelyReferenced_nonNull_native || (v5 - 1) > v2[3] >> 1)
    {
      v8 = v0[8];
      v2 = sub_1B723EFEC(isUniquelyReferenced_nonNull_native, v5, 1, v2);
      *(v8 + 120) = v2;
    }

    v9 = v0[8];

    v10 = v2[2];
    memmove(v2 + 4, v2 + 6, 16 * v10 - 16);
    v2[2] = v10 - 1;
    *(v9 + 120) = v2;
    swift_endAccess();
    v14 = (v6 + *v6);
    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v11[1] = sub_1B753E090;

    return v14();
  }

  else
  {
    *(v0[8] + 112) = 0;
    v13 = v0[1];

    return v13();
  }
}

uint64_t BankConnectTaskQueue.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BankConnectTaskQueue.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t _s10FinanceKit19TaskQueueDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1B78020F8();
        sub_1B72630BC(v6, v5, 0);
        sub_1B72630BC(v3, v2, 0);
        sub_1B72630DC(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
        goto LABEL_17;
      }

      sub_1B72630BC(v14, v2, 0);
      sub_1B72630BC(v3, v2, 0);
      sub_1B72630DC(v3, v2, 0);
      v17 = v3;
      v18 = v2;
      v19 = 0;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      sub_1B72630BC(*a2, *(a2 + 8), 2u);
      sub_1B72630BC(v3, v2, 2u);
      v10 = sub_1B72F4734(v3, v6);
      sub_1B72630DC(v3, v2, 2u);
      v11 = v6;
      v12 = v5;
      v13 = 2;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v7 != 1)
  {
LABEL_18:
    sub_1B72630BC(*a2, *(a2 + 8), v7);
    sub_1B72630BC(v3, v2, v4);
    sub_1B72630DC(v3, v2, v4);
    sub_1B72630DC(v6, v5, v7);
    return 0;
  }

  v8 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v10 = sub_1B78020F8();
    sub_1B72630BC(v6, v5, 1u);
    sub_1B72630BC(v3, v2, 1u);
    sub_1B72630DC(v3, v2, 1u);
    v11 = v6;
    v12 = v5;
    v13 = 1;
LABEL_17:
    sub_1B72630DC(v11, v12, v13);
    return v10 & 1;
  }

  sub_1B72630BC(v8, v2, 1u);
  sub_1B72630BC(v3, v2, 1u);
  sub_1B72630DC(v3, v2, 1u);
  v17 = v3;
  v18 = v2;
  v19 = 1;
LABEL_21:
  sub_1B72630DC(v17, v18, v19);
  return 1;
}

unint64_t sub_1B753E668()
{
  result = qword_1EB992D70;
  if (!qword_1EB992D70)
  {
    type metadata accessor for BankConnectTaskQueue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB992D70);
  }

  return result;
}

unint64_t sub_1B753E6D8()
{
  result = qword_1EB996D30;
  if (!qword_1EB996D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996D30);
  }

  return result;
}

uint64_t dispatch thunk of BankConnectTaskQueueProviding.taskQueue(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B721FB60;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of BankConnectTaskQueue.addTask<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 160) + **(*v4 + 160));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1B723838C;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BankConnectTaskQueue.addThrowingTask<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 168) + **(*v4 + 168));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1B7201BB0;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1B753EB98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B7201BB0;

  return sub_1B753D770(a1, v5, v7, v6, v4);
}

uint64_t sub_1B753EC58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B723838C;

  return sub_1B753CD48(a1, v5, v7, v6, v4);
}

uint64_t ManagedAccountScheduledPaymentsImporterError.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

id sub_1B753EE0C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for RawBankConnectData.ScheduledPayment(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v47 = (v44 - v11);
    v15 = *(a2 + 16);
    v14 = *(a2 + 24);
    v49 = *a2;
    type metadata accessor for ManagedInternalAccount();
    v50 = v49;
    v51 = v15;
    v52 = v14;
    v16 = static ManagedInternalAccount.existingAccount(with:in:)(&v50);
    if (!v3)
    {
      if (v16)
      {
        v18 = v8;
        v19 = v16;
        if ([v19 isAccountEnabled])
        {
          v45 = a3;
          *&v49 = 0;

          v53 = v13;
          sub_1B7801B98();
          v20 = type metadata accessor for ManagedScheduledPreauthorizedPayment();
          v21 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
          v44[0] = *(v18 + 72);
          v44[1] = v20;
          v22 = v47;
          do
          {
            v48 = v12;
            sub_1B753F850(v21, v22, type metadata accessor for RawBankConnectData.ScheduledPayment);
            v24 = *v22;
            v25 = v22[1];
            v26 = [v19 accountId];
            v27 = sub_1B7800868();
            v29 = v28;

            v30 = v19;
            v13 = [v19 institutionId];
            v31 = sub_1B7800868();
            v33 = v32;

            *&v50 = v27;
            *(&v50 + 1) = v29;
            v51 = v31;
            v52 = v33;
            v34 = v45;
            v35 = v49;
            v36 = static ManagedScheduledPreauthorizedPayment.existingScheduledPayment(with:fullyQualifiedAccountIdentifier:in:)(v24, v25, &v50);
            if (v35)
            {

              sub_1B753F8B8(v47, type metadata accessor for RawBankConnectData.ScheduledPayment);

              return v13;
            }

            v37 = v36;

            *&v49 = 0;
            if (v37)
            {
              v22 = v47;
              _s10FinanceKit36ManagedScheduledPreauthorizedPaymentC6update_07withRawF0yAC_AA0I15BankConnectDataO0dF0VtFZ_0(v37, v47);
              v19 = v30;
            }

            else
            {
              v23 = v46;
              v22 = v47;
              sub_1B753F850(v47, v46, type metadata accessor for RawBankConnectData.ScheduledPayment);
              v19 = v30;
              _s10FinanceKit36ManagedScheduledPreauthorizedPaymentC_7account7contextAcA18RawBankConnectDataO0dF0V_AA0C15InternalAccountCSo22NSManagedObjectContextCtcfC_0(v23, v30, v34);
            }

            sub_1B753F8B8(v22, type metadata accessor for RawBankConnectData.ScheduledPayment);
            sub_1B7801B68();
            sub_1B7801BA8();
            sub_1B7801BB8();
            sub_1B7801B78();
            v21 += v44[0];
            v12 = v48 - 1;
          }

          while (v48 != 1);

          return v53;
        }

        else
        {
          if (qword_1EDAF65A8 != -1)
          {
            swift_once();
          }

          v39 = sub_1B78000B8();
          __swift_project_value_buffer(v39, qword_1EDAF65B0);
          v40 = sub_1B7800098();
          v41 = sub_1B78011B8();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&dword_1B7198000, v40, v41, "Unable to update account, account is disabled", v42, 2u);
            MEMORY[0x1B8CA7A40](v42, -1, -1);
          }

          sub_1B753F7FC();
          swift_allocError();
          *v43 = 1;
          swift_willThrow();
        }
      }

      else
      {
        sub_1B753F7FC();
        swift_allocError();
        *v38 = 0;
        swift_willThrow();
      }
    }
  }

  return v13;
}

id sub_1B753F2A8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for RawBankConnectData.RecurringPayment(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v47 = (v44 - v11);
    v15 = *(a2 + 16);
    v14 = *(a2 + 24);
    v49 = *a2;
    type metadata accessor for ManagedInternalAccount();
    v50 = v49;
    v51 = v15;
    v52 = v14;
    v16 = static ManagedInternalAccount.existingAccount(with:in:)(&v50);
    if (!v3)
    {
      if (v16)
      {
        v18 = v8;
        v19 = v16;
        if ([v19 isAccountEnabled])
        {
          v45 = a3;
          *&v49 = 0;

          v53 = v13;
          sub_1B7801B98();
          v20 = type metadata accessor for ManagedRecurringPreauthorizedPayment();
          v21 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
          v44[0] = *(v18 + 72);
          v44[1] = v20;
          v22 = v47;
          do
          {
            v48 = v12;
            sub_1B753F850(v21, v22, type metadata accessor for RawBankConnectData.RecurringPayment);
            v24 = *v22;
            v25 = v22[1];
            v26 = [v19 accountId];
            v27 = sub_1B7800868();
            v29 = v28;

            v30 = v19;
            v13 = [v19 institutionId];
            v31 = sub_1B7800868();
            v33 = v32;

            *&v50 = v27;
            *(&v50 + 1) = v29;
            v51 = v31;
            v52 = v33;
            v34 = v45;
            v35 = v49;
            v36 = static ManagedRecurringPreauthorizedPayment.existingRecurringPayment(with:fullyQualifiedAccountIdentifier:in:)(v24, v25, &v50);
            if (v35)
            {

              sub_1B753F8B8(v47, type metadata accessor for RawBankConnectData.RecurringPayment);

              return v13;
            }

            v37 = v36;

            *&v49 = 0;
            if (v37)
            {
              v22 = v47;
              _s10FinanceKit36ManagedRecurringPreauthorizedPaymentC6update_07withRawF0yAC_AA0I15BankConnectDataO0dF0VtFZ_0(v37, v47);
              v19 = v30;
            }

            else
            {
              v23 = v46;
              v22 = v47;
              sub_1B753F850(v47, v46, type metadata accessor for RawBankConnectData.RecurringPayment);
              v19 = v30;
              _s10FinanceKit36ManagedRecurringPreauthorizedPaymentC_7account7contextAcA18RawBankConnectDataO0dF0V_AA0C15InternalAccountCSo22NSManagedObjectContextCtcfC_0(v23, v30, v34);
            }

            sub_1B753F8B8(v22, type metadata accessor for RawBankConnectData.RecurringPayment);
            sub_1B7801B68();
            sub_1B7801BA8();
            sub_1B7801BB8();
            sub_1B7801B78();
            v21 += v44[0];
            v12 = v48 - 1;
          }

          while (v48 != 1);

          return v53;
        }

        else
        {
          if (qword_1EDAF65A8 != -1)
          {
            swift_once();
          }

          v39 = sub_1B78000B8();
          __swift_project_value_buffer(v39, qword_1EDAF65B0);
          v40 = sub_1B7800098();
          v41 = sub_1B78011B8();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&dword_1B7198000, v40, v41, "Unable to update account, account is disabled", v42, 2u);
            MEMORY[0x1B8CA7A40](v42, -1, -1);
          }

          sub_1B753F7FC();
          swift_allocError();
          *v43 = 1;
          swift_willThrow();
        }
      }

      else
      {
        sub_1B753F7FC();
        swift_allocError();
        *v38 = 0;
        swift_willThrow();
      }
    }
  }

  return v13;
}

unint64_t sub_1B753F748()
{
  result = qword_1EB996D38;
  if (!qword_1EB996D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996D38);
  }

  return result;
}

unint64_t sub_1B753F7FC()
{
  result = qword_1EB996D40;
  if (!qword_1EB996D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996D40);
  }

  return result;
}

uint64_t sub_1B753F850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B753F8B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B753F950()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B753F9C4()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B753FA18@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B7801D18();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B753FAA8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B7801D18();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B753FB00(uint64_t a1)
{
  v2 = sub_1B753FCC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B753FB3C(uint64_t a1)
{
  v2 = sub_1B753FCC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.OfflineLabPermissionBody.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996D48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B753FCC8();
  sub_1B78023F8();
  sub_1B7801F88();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B753FCC8()
{
  result = qword_1EB996D50;
  if (!qword_1EB996D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996D50);
  }

  return result;
}

uint64_t RawBankConnectData.OfflineLabPermissionBody.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996D58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B753FCC8();
  sub_1B78023C8();
  if (!v2)
  {
    v9 = sub_1B7801E08();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B753FE8C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996D48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B753FCC8();
  sub_1B78023F8();
  sub_1B7801F88();
  return (*(v3 + 8))(v5, v2);
}

__n128 RawBankConnectData.OfflineLabItem.Transaction.init(institutionId:transaction:mapsClassification:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for RawBankConnectData.OfflineLabItem.Transaction(0);
  v11 = (a5 + v10[7]);
  *v11 = 0xD000000000000018;
  v11[1] = 0x80000001B7884470;
  v12 = (a5 + v10[6]);
  *v12 = a1;
  v12[1] = a2;
  sub_1B75410A4(a3, a5, type metadata accessor for RawBankConnectData.Transaction);
  v13 = a5 + v10[5];
  v14 = *(a4 + 16);
  *v13 = *a4;
  *(v13 + 16) = v14;
  result = *(a4 + 32);
  v16 = *(a4 + 48);
  *(v13 + 32) = result;
  *(v13 + 48) = v16;
  return result;
}

unint64_t sub_1B7540098()
{
  v1 = 0x746361736E617274;
  v2 = 0x7475746974736E69;
  if (*v0 != 2)
  {
    v2 = 1701869940;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1B7540124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B75425F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B754014C(uint64_t a1)
{
  v2 = sub_1B75404A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7540188(uint64_t a1)
{
  v2 = sub_1B75404A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.OfflineLabItem.Transaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996D60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75404A0();
  sub_1B78023F8();
  v27 = 0;
  type metadata accessor for RawBankConnectData.Transaction(0);
  sub_1B754105C(&qword_1EB996D70, type metadata accessor for RawBankConnectData.Transaction);
  sub_1B7801FC8();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for RawBankConnectData.OfflineLabItem.Transaction(0) + 20));
    v10 = *v9;
    v11 = v9[2];
    v24 = v9[1];
    v25 = v11;
    v12 = v9[2];
    v26 = v9[3];
    v19 = v10;
    v20 = v24;
    v13 = *v9;
    v21 = v12;
    v22 = v9[3];
    v23 = v13;
    v18 = 1;
    sub_1B75404F4(&v23, v17);
    sub_1B7540564();
    sub_1B7801F38();
    v17[0] = v19;
    v17[1] = v20;
    v17[2] = v21;
    v17[3] = v22;
    sub_1B75405B8(v17);
    v16 = 2;
    sub_1B7801F78();
    v16 = 3;
    sub_1B7801F78();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B75404A0()
{
  result = qword_1EB996D68;
  if (!qword_1EB996D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996D68);
  }

  return result;
}

uint64_t sub_1B75404F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996D78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B7540564()
{
  result = qword_1EB996D80;
  if (!qword_1EB996D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996D80);
  }

  return result;
}

uint64_t sub_1B75405B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996D78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RawBankConnectData.OfflineLabItem.Account.init(institutionId:account:accountOriginType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, void *a5@<X8>)
{
  v9 = *a4;
  v10 = type metadata accessor for RawBankConnectData.OfflineLabItem.Account(0);
  v11 = (a5 + v10[6]);
  *v11 = 0xD000000000000014;
  v11[1] = 0x80000001B7884490;
  *a5 = a1;
  a5[1] = a2;
  v12 = v10[5];
  sub_1B754110C(a3, a5 + v12, type metadata accessor for RawBankConnectData.Account);
  if (v9 <= 1)
  {
    result = sub_1B7541174(a3, type metadata accessor for RawBankConnectData.Account);
    v14 = (a5 + v10[7]);
    if (v9)
    {
      v15 = 0x41435F454C505041;
      v16 = 0xEA00000000004452;
    }

    else
    {
      v15 = 0x4E4F435F4B4E4142;
      v16 = 0xEC0000005443454ELL;
    }
  }

  else if (v9 == 2)
  {
    result = sub_1B7541174(a3, type metadata accessor for RawBankConnectData.Account);
    v14 = (a5 + v10[7]);
    v15 = 0x41435F454C505041;
    v16 = 0xEA00000000004853;
  }

  else
  {
    if (v9 != 3)
    {
      sub_1B754088C();
      swift_allocError();
      swift_willThrow();
      sub_1B7541174(a3, type metadata accessor for RawBankConnectData.Account);

      return sub_1B7541174(a5 + v12, type metadata accessor for RawBankConnectData.Account);
    }

    result = sub_1B7541174(a3, type metadata accessor for RawBankConnectData.Account);
    v14 = (a5 + v10[7]);
    v15 = 0x41535F454C505041;
    v16 = 0xED000053474E4956;
  }

  *v14 = v15;
  v14[1] = v16;
  return result;
}

unint64_t sub_1B754088C()
{
  result = qword_1EB996D88;
  if (!qword_1EB996D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996D88);
  }

  return result;
}

unint64_t sub_1B75408E0()
{
  v1 = 0x7475746974736E69;
  v2 = 1701869940;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x746E756F636361;
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

uint64_t sub_1B7540964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7542770(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B754098C(uint64_t a1)
{
  v2 = sub_1B7540C20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75409C8(uint64_t a1)
{
  v2 = sub_1B7540C20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.OfflineLabItem.Account.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996D90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7540C20();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B7801F78();
  if (!v1)
  {
    type metadata accessor for RawBankConnectData.OfflineLabItem.Account(0);
    v8[14] = 1;
    type metadata accessor for RawBankConnectData.Account(0);
    sub_1B754105C(&qword_1EB996DA0, type metadata accessor for RawBankConnectData.Account);
    sub_1B7801FC8();
    v8[13] = 2;
    sub_1B7801F78();
    v8[12] = 3;
    sub_1B7801F78();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1B7540C20()
{
  result = qword_1EB996D98;
  if (!qword_1EB996D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996D98);
  }

  return result;
}

uint64_t RawBankConnectData.OfflineLabItem.Account.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996DA8);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v23 - v6;
  v8 = type metadata accessor for RawBankConnectData.OfflineLabItem.Account(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7540C20();
  v26 = v7;
  v11 = v28;
  sub_1B78023C8();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v25;
  v32 = 0;
  v13 = sub_1B7801DF8();
  v23 = 0x80000001B7884490;
  *v10 = v13;
  v10[1] = v14;
  v28 = v14;
  v31 = 1;
  sub_1B754105C(&qword_1EB996DB0, type metadata accessor for RawBankConnectData.Account);
  sub_1B7801E48();
  sub_1B75410A4(v5, v10 + v8[5], type metadata accessor for RawBankConnectData.Account);
  v30 = 2;
  v15 = sub_1B7801DF8();
  v16 = (v10 + v8[6]);
  *v16 = v15;
  v16[1] = v17;
  v29 = 3;
  v18 = sub_1B7801DF8();
  v20 = v19;
  (*(v12 + 8))(v26, v27);
  v21 = (v10 + v8[7]);
  *v21 = v18;
  v21[1] = v20;
  sub_1B754110C(v10, v24, type metadata accessor for RawBankConnectData.OfflineLabItem.Account);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B7541174(v10, type metadata accessor for RawBankConnectData.OfflineLabItem.Account);
}

uint64_t sub_1B754105C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B75410A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B754110C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7541174(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B75411D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996E70);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75428E4();
  sub_1B78023F8();
  v14 = 0;
  sub_1B7801F78();
  if (!v5)
  {
    v13 = 1;
    sub_1B7801F78();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B7541398()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 1684632941;
  }
}

uint64_t sub_1B75413D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632941 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B78824E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

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

uint64_t sub_1B75414B4(uint64_t a1)
{
  v2 = sub_1B75428E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75414F0(uint64_t a1)
{
  v2 = sub_1B75428E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B754152C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B7542938(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void RawBankConnectData.OfflineLabItem.MapsClassification.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 merchantObject];
  if (!v4 || (v5 = v4, [v4 muid], v5, (v6 = objc_msgSend(a1, sel_merchantObject)) == 0))
  {
    v11 = 0;
    v9 = 0;
    v8 = 0;
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v6 mapsCategoryIdentifier];

  if (!v8)
  {
    v11 = 0;
    v9 = 0;
    goto LABEL_6;
  }

  v9 = sub_1B7800868();
  v11 = v10;

  v12 = sub_1B7802068();
  v8 = v13;
LABEL_7:
  v14 = [a1 brandObject];
  if (v14 && (v15 = v14, [v14 muid], v15, (v16 = objc_msgSend(a1, sel_brandObject)) != 0))
  {
    v17 = v16;
    v18 = [v16 mapsCategoryIdentifier];

    if (v18)
    {
      v19 = sub_1B7800868();
      v21 = v20;

      v18 = sub_1B7802068();
      v23 = v22;
    }

    else
    {

      v21 = 0;
      v19 = 0;
      v23 = 0;
    }
  }

  else
  {

    v21 = 0;
    v19 = 0;
    v23 = 0;
    v18 = 0;
  }

  *a2 = v12;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = v18;
  a2[5] = v23;
  a2[6] = v19;
  a2[7] = v21;
}

uint64_t sub_1B7541770()
{
  if (*v0)
  {
    return 0x646E617262;
  }

  else
  {
    return 0x746E61686372656DLL;
  }
}

uint64_t sub_1B75417A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E61686372656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E617262 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

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

uint64_t sub_1B7541880(uint64_t a1)
{
  v2 = sub_1B7541AD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B75418BC(uint64_t a1)
{
  v2 = sub_1B7541AD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawBankConnectData.OfflineLabItem.MapsClassification.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996DB8);
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v13 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v13 = *(v1 + 48);
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7420484(v5, v6);
  sub_1B7541AD0();
  v10 = v15;
  sub_1B78023F8();
  *&v18 = v5;
  *(&v18 + 1) = v6;
  *&v19 = v7;
  *(&v19 + 1) = v8;
  v20 = 0;
  sub_1B7541B24();
  v11 = v16;
  sub_1B7801F38();
  sub_1B74204FC(v5, v6);
  if (!v11)
  {
    v18 = v14;
    v19 = v13;
    v20 = 1;
    sub_1B7801F38();
  }

  return (*(v17 + 8))(v4, v10);
}

unint64_t sub_1B7541AD0()
{
  result = qword_1EB996DC0;
  if (!qword_1EB996DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996DC0);
  }

  return result;
}

unint64_t sub_1B7541B24()
{
  result = qword_1EB996DC8;
  if (!qword_1EB996DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996DC8);
  }

  return result;
}

uint64_t RawBankConnectData.OfflineLabItem.MapsClassification.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996DD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7541AD0();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21[0]) = 0;
  sub_1B7541E34();
  sub_1B7801DB8();
  v9 = v24;
  v19 = v25;
  v20 = v26;
  v33 = 1;
  sub_1B7801DB8();
  (*(v6 + 8))(v8, v5);
  v18 = v31;
  v10 = v32;
  v17 = *(&v31 + 1);
  v11 = *(&v32 + 1);
  v12 = v19;
  *&v21[0] = v9;
  *(&v21[0] + 1) = v19;
  v13 = v20;
  v21[1] = v20;
  v22 = v31;
  v23 = v32;
  v14 = v20;
  *a2 = v21[0];
  a2[1] = v14;
  v15 = v23;
  a2[2] = v22;
  a2[3] = v15;
  sub_1B7541E88(v21, &v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v24 = v9;
  v25 = v12;
  v26 = v13;
  v27 = v18;
  v28 = v17;
  v29 = v10;
  v30 = v11;
  return sub_1B7541EC0(&v24);
}

unint64_t sub_1B7541E34()
{
  result = qword_1EB996DD8;
  if (!qword_1EB996DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996DD8);
  }

  return result;
}

void sub_1B7541F68()
{
  type metadata accessor for RawBankConnectData.Transaction(319);
  if (v0 <= 0x3F)
  {
    sub_1B7541FFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B7541FFC()
{
  if (!qword_1EB996DF0)
  {
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB996DF0);
    }
  }
}

uint64_t sub_1B7542074()
{
  result = type metadata accessor for RawBankConnectData.Account(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit18RawBankConnectDataO11TransactionV0dG4CodeVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1B7542184()
{
  result = qword_1EB996E08;
  if (!qword_1EB996E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E08);
  }

  return result;
}

unint64_t sub_1B75421DC()
{
  result = qword_1EB996E10;
  if (!qword_1EB996E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E10);
  }

  return result;
}

unint64_t sub_1B7542234()
{
  result = qword_1EB996E18;
  if (!qword_1EB996E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E18);
  }

  return result;
}

unint64_t sub_1B754228C()
{
  result = qword_1EB996E20;
  if (!qword_1EB996E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E20);
  }

  return result;
}

unint64_t sub_1B75422E4()
{
  result = qword_1EB996E28;
  if (!qword_1EB996E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E28);
  }

  return result;
}

unint64_t sub_1B754233C()
{
  result = qword_1EB996E30;
  if (!qword_1EB996E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E30);
  }

  return result;
}

unint64_t sub_1B7542394()
{
  result = qword_1EB996E38;
  if (!qword_1EB996E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E38);
  }

  return result;
}

unint64_t sub_1B75423EC()
{
  result = qword_1EB996E40;
  if (!qword_1EB996E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E40);
  }

  return result;
}

unint64_t sub_1B7542444()
{
  result = qword_1EB996E48;
  if (!qword_1EB996E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E48);
  }

  return result;
}

unint64_t sub_1B754249C()
{
  result = qword_1EB996E50;
  if (!qword_1EB996E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E50);
  }

  return result;
}

unint64_t sub_1B75424F4()
{
  result = qword_1EB996E58;
  if (!qword_1EB996E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E58);
  }

  return result;
}

unint64_t sub_1B754254C()
{
  result = qword_1EB996E60;
  if (!qword_1EB996E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E60);
  }

  return result;
}

unint64_t sub_1B75425A4()
{
  result = qword_1EB996E68;
  if (!qword_1EB996E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E68);
  }

  return result;
}

uint64_t sub_1B75425F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361736E617274 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B78844B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475746974736E69 && a2 == 0xED000064496E6F69 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B7542770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475746974736E69 && a2 == 0xED000064496E6F69;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78844D0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1B75428E4()
{
  result = qword_1EB996E78;
  if (!qword_1EB996E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E78);
  }

  return result;
}

uint64_t sub_1B7542938(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996E80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B75428E4();
  sub_1B78023C8();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1B7801DF8();
    v10 = 1;
    sub_1B7801DF8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1B7542B30()
{
  result = qword_1EB996E88;
  if (!qword_1EB996E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E88);
  }

  return result;
}

unint64_t sub_1B7542B88()
{
  result = qword_1EB996E90;
  if (!qword_1EB996E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E90);
  }

  return result;
}

unint64_t sub_1B7542BE0()
{
  result = qword_1EB996E98;
  if (!qword_1EB996E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB996E98);
  }

  return result;
}

uint64_t ContentPackageHashesEnumerator.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL;
  v4 = sub_1B77FF4F8();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

void sub_1B7542CB8(int a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v71 = a6;
  v85 = a5;
  v74 = a3;
  v73 = a2;
  v72 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v75 = &v66 - v10;
  v76 = sub_1B7800378();
  v81 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1B77FEE18();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v80 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1B77FF4F8();
  v79 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v82 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1B77FF338();
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() defaultManager];
  v17 = OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990538);
  v18 = swift_allocObject();
  v90 = xmmword_1B780D870;
  *(v18 + 16) = xmmword_1B780D870;
  v19 = *MEMORY[0x1E695DB78];
  v20 = *MEMORY[0x1E695DBC8];
  *(v18 + 32) = *MEMORY[0x1E695DB78];
  *(v18 + 40) = v20;
  v21 = *MEMORY[0x1E695DB50];
  *(v18 + 48) = *MEMORY[0x1E695DB50];
  v89 = v19;
  v22 = v20;
  v23 = v21;
  v24 = sub_1B78011A8();

  if (v24)
  {
    v70 = v17;
    v78 = v24;
    sub_1B7801128();
    sub_1B77FF328();
    if (!v94)
    {
LABEL_18:
      (*(v84 + 8))(v15, v83);

      return;
    }

    v68 = a4;
    v69 = 0;
    v86 = v87 + 1;
    v87 = (v79 + 1);
    v79 = (v81 + 6);
    v67 = (v81 + 4);
    ++v81;
    v25 = v80;
    v26 = v82;
    while (1)
    {
      sub_1B72051F0(&v93, &v92);
      swift_dynamicCast();
      inited = swift_initStackObject();
      *(inited + 16) = v90;
      v32 = v89;
      *(inited + 32) = v89;
      *(inited + 40) = v22;
      *(inited + 48) = v23;
      v33 = v32;
      v34 = v22;
      v35 = v23;
      sub_1B7545498(inited);
      swift_setDeallocating();
      type metadata accessor for URLResourceKey(0);
      swift_arrayDestroy();
      sub_1B77FF3C8();
      v36 = v26;
      if (v7)
      {
        (*(v84 + 8))(v15, v83);

        (*v87)(v26, v95);
        goto LABEL_20;
      }

      v37 = sub_1B77FEDD8();
      v38 = v25;
      if (v37 != 2 && (v37 & 1) == 0)
      {
        v39 = sub_1B77FEDE8();
        if (v39 == 2 || (v39 & 1) != 0)
        {
          v47 = 0x80000001B7884510;
          v48 = v36;
          v49 = sub_1B77FF4B8();
          v51 = v50;
          sub_1B723AD28();
          swift_allocError();
          v53 = 0xD000000000000018;
LABEL_25:
          *v52 = v53;
          v52[1] = v47;
          v52[2] = v49;
          v52[3] = v51;
          swift_willThrow();

          (*v86)(v38, v88);
          (*(v84 + 8))(v15, v83);
          (*v87)(v48, v95);
          goto LABEL_20;
        }

        v40 = sub_1B77FEE08();
        if (v41)
        {
          v47 = 0x80000001B7884530;
          v48 = v36;
          v49 = sub_1B77FF4B8();
          v51 = v54;
          sub_1B723AD28();
          swift_allocError();
          v53 = 0xD000000000000017;
          goto LABEL_25;
        }

        if (__OFADD__(v69, v40))
        {
          __break(1u);
          return;
        }

        v42 = v76;
        v43 = v75;
        if (v69 + v40 > 5242880)
        {
          v55 = v36;
          v56 = [objc_opt_self() stringFromByteCount:5242880 countStyle:3];
          v57 = sub_1B7800868();
          v59 = v58;

          *&v92 = 0;
          *(&v92 + 1) = 0xE000000000000000;
          sub_1B7801A78();

          *&v92 = 0xD00000000000001BLL;
          *(&v92 + 1) = 0x80000001B7884570;
          MEMORY[0x1B8CA4D30](v57, v59);

          v60 = v92;
          v61 = sub_1B77FF4B8();
          v63 = v62;
          sub_1B723AD28();
          swift_allocError();
          *v64 = v60;
          *(v64 + 16) = v61;
          *(v64 + 24) = v63;
          swift_willThrow();

          (*v86)(v38, v88);
          (*(v84 + 8))(v15, v83);
          (*v87)(v55, v95);
          goto LABEL_20;
        }

        v69 += v40;
        URL.filePath(relativeTo:resolveSymlinks:)(v68 + v70, 1, v75);
        if ((*v79)(v43, 1, v42) == 1)
        {
          sub_1B7205418(v43, &qword_1EB990DF0);
          v47 = 0x80000001B7884550;
          v48 = v36;
          v49 = sub_1B77FF4B8();
          v51 = v65;
          sub_1B723AD28();
          swift_allocError();
          v53 = 0xD00000000000001FLL;
          goto LABEL_25;
        }

        v44 = v77;
        (*v67)(v77, v43, v42);
        if (v73(v44))
        {
          v45 = sub_1B754568C(v36, v72 & 1);
          sub_1B72390D8(v77, v45, v46, v85);
          v7 = 0;

          v36 = v82;
        }

        (*v81)(v77, v42);
      }

      (*v86)(v38, v88);
      v25 = v38;
      v26 = v36;
      (*v87)(v36, v95);
      sub_1B77FF328();
      if (!v94)
      {
        goto LABEL_18;
      }
    }
  }

  v27 = sub_1B77FF4B8();
  v29 = v28;
  sub_1B723AD28();
  swift_allocError();
  *v30 = 0xD000000000000015;
  v30[1] = 0x80000001B78844F0;
  v30[2] = v27;
  v30[3] = v29;
  swift_willThrow();
LABEL_20:
}

void sub_1B754384C(int a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, void *a5)
{
  v83 = a5;
  v86 = a3;
  v85 = a2;
  v84 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = &v76 - v8;
  v88 = sub_1B7800378();
  v92 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FEE18();
  v98 = *(v10 - 8);
  v99 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B77FF4F8();
  v91 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1B77FF338();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() defaultManager];
  v17 = OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990538);
  v18 = swift_allocObject();
  v102 = xmmword_1B780D870;
  *(v18 + 16) = xmmword_1B780D870;
  v19 = *MEMORY[0x1E695DB78];
  v20 = *MEMORY[0x1E695DBC8];
  *(v18 + 32) = *MEMORY[0x1E695DB78];
  *(v18 + 40) = v20;
  v21 = *MEMORY[0x1E695DB50];
  *(v18 + 48) = *MEMORY[0x1E695DB50];
  v101 = v19;
  v100 = v20;
  v22 = v21;
  v23 = sub_1B78011A8();

  if (!v23)
  {
    v48 = sub_1B77FF4B8();
    v50 = v49;
    sub_1B723AD28();
    swift_allocError();
    *v51 = 0xD000000000000015;
    v51[1] = 0x80000001B78844F0;
    v51[2] = v48;
    v51[3] = v50;
    swift_willThrow();
    return;
  }

  v82 = v17;
  v81 = a4;
  v90 = v23;
  sub_1B7801128();
  sub_1B77FF328();
  if (!v105)
  {
LABEL_20:
    (*(v95 + 8))(v15, v96);

    return;
  }

  v80 = 0;
  v97 = (v98 + 1);
  v98 = (v91 + 1);
  v91 = (v92 + 6);
  v79 = (v92 + 4);
  ++v92;
  v24 = v94;
  v25 = v93;
  while (1)
  {
    sub_1B72051F0(&v104, &v103);
    v26 = v12;
    swift_dynamicCast();
    inited = swift_initStackObject();
    *(inited + 16) = v102;
    v29 = v100;
    v28 = v101;
    *(inited + 32) = v101;
    *(inited + 40) = v29;
    *(inited + 48) = v22;
    v30 = v28;
    v31 = v29;
    v32 = v22;
    sub_1B7545498(inited);
    swift_setDeallocating();
    type metadata accessor for URLResourceKey(0);
    swift_arrayDestroy();
    sub_1B77FF3C8();
    if (v5)
    {
      (*(v95 + 8))(v15, v96);

      v52 = *v98;
      v53 = v24;
      v54 = v12;
      goto LABEL_23;
    }

    v33 = sub_1B77FEDD8();
    if (v33 == 2 || (v33 & 1) != 0)
    {
      (*v97)(v25, v99);
      (*v98)(v24, v12);
      goto LABEL_8;
    }

    v34 = sub_1B77FEDE8();
    if (v34 == 2 || (v34 & 1) != 0)
    {
      v55 = v94;
      v56 = sub_1B77FF4B8();
      v58 = v57;
      sub_1B723AD28();
      swift_allocError();
      *v59 = 0xD000000000000018;
      v59[1] = 0x80000001B7884510;
      v59[2] = v56;
      v59[3] = v58;
      swift_willThrow();

      (*v97)(v93, v99);
      (*(v95 + 8))(v15, v96);
      goto LABEL_29;
    }

    v35 = sub_1B77FEE08();
    v36 = v96;
    if (v37)
    {
      v60 = 0x80000001B7884530;
      v55 = v94;
      v61 = sub_1B77FF4B8();
      v63 = v62;
      sub_1B723AD28();
      swift_allocError();
      v65 = 0xD000000000000017;
LABEL_28:
      *v64 = v65;
      v64[1] = v60;
      v64[2] = v61;
      v64[3] = v63;
      swift_willThrow();

      (*v97)(v93, v99);
      (*(v95 + 8))(v15, v36);
LABEL_29:
      v52 = *v98;
      v53 = v55;
LABEL_30:
      v54 = v12;
LABEL_23:
      v52(v53, v54);
      return;
    }

    if (__OFADD__(v80, v35))
    {
      break;
    }

    v38 = v88;
    if (v80 + v35 > 5242880)
    {
      v66 = [objc_opt_self() stringFromByteCount:5242880 countStyle:3];
      v67 = sub_1B7800868();
      v69 = v68;

      *&v103 = 0;
      *(&v103 + 1) = 0xE000000000000000;
      sub_1B7801A78();

      *&v103 = 0xD00000000000001BLL;
      *(&v103 + 1) = 0x80000001B7884570;
      MEMORY[0x1B8CA4D30](v67, v69);

      v70 = v103;
      v71 = sub_1B77FF4B8();
      v73 = v72;
      sub_1B723AD28();
      swift_allocError();
      *v74 = v70;
      *(v74 + 16) = v71;
      *(v74 + 24) = v73;
      swift_willThrow();

      (*v97)(v93, v99);
      (*(v95 + 8))(v15, v36);
      v52 = *v98;
      v53 = v94;
      goto LABEL_30;
    }

    v80 += v35;
    v39 = v87;
    URL.filePath(relativeTo:resolveSymlinks:)(v81 + v82, 1, v87);
    if ((*v91)(v39, 1, v38) == 1)
    {
      sub_1B7205418(v39, &qword_1EB990DF0);
      v60 = 0x80000001B7884550;
      v55 = v94;
      v61 = sub_1B77FF4B8();
      v63 = v75;
      sub_1B723AD28();
      swift_allocError();
      v65 = 0xD00000000000001FLL;
      goto LABEL_28;
    }

    v40 = v89;
    (*v79)(v89, v39, v38);
    if (v85(v40))
    {
      v41 = sub_1B754568C(v94, v84 & 1);
      v42 = v89;
      v77 = v43;
      v78 = sub_1B78002E8();
      v45 = v44;

      v46 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v103 = *v46;
      *v46 = 0x8000000000000000;
      sub_1B739351C(v41, v77, v78, v45, isUniquelyReferenced_nonNull_native);
      v12 = v26;

      *v46 = v103;
      v38 = v88;
    }

    else
    {
      v42 = v89;
    }

    (*v92)(v42, v38);
    v25 = v93;
    (*v97)(v93, v99);
    v24 = v94;
    (*v98)(v94, v12);
LABEL_8:
    sub_1B77FF328();
    if (!v105)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

void ContentPackageHashesEnumerator.enumerateHashes(loadFilesInChunks:filesPredicate:body:)(int a1, uint64_t (*a2)(char *), uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v7 = v6;
  v77 = a5;
  v76 = a4;
  v80 = a3;
  v79 = a2;
  v78 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990DF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v82 = &v71 - v9;
  v83 = sub_1B7800378();
  v86 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B77FEE18();
  v93 = *(v11 - 8);
  v94 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v87 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B77FF4F8();
  v85 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1B77FF338();
  v91 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v90 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() defaultManager];
  v17 = OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990538);
  v18 = swift_allocObject();
  v97 = xmmword_1B780D870;
  *(v18 + 16) = xmmword_1B780D870;
  v19 = *MEMORY[0x1E695DB78];
  v20 = *MEMORY[0x1E695DBC8];
  *(v18 + 32) = *MEMORY[0x1E695DB78];
  *(v18 + 40) = v20;
  v21 = *MEMORY[0x1E695DB50];
  *(v18 + 48) = *MEMORY[0x1E695DB50];
  v96 = v19;
  v95 = v20;
  v22 = v21;
  v23 = sub_1B78011A8();

  if (!v23)
  {
    v43 = sub_1B77FF4B8();
    v45 = v44;
    sub_1B723AD28();
    swift_allocError();
    *v46 = 0xD000000000000015;
    v46[1] = 0x80000001B78844F0;
    v46[2] = v43;
    v46[3] = v45;
    swift_willThrow();
    return;
  }

  v75 = v17;
  v74 = v5;
  v24 = v90;
  v84 = v23;
  sub_1B7801128();
  sub_1B77FF328();
  if (!v100)
  {
LABEL_19:
    (*(v91 + 8))(v24, v89);

    return;
  }

  v73 = 0;
  v92 = (v93 + 1);
  v93 = (v85 + 1);
  v85 = (v86 + 6);
  v72 = (v86 + 4);
  ++v86;
  v25 = v88;
  v26 = v87;
  while (1)
  {
    sub_1B72051F0(&v99, &v98);
    swift_dynamicCast();
    inited = swift_initStackObject();
    *(inited + 16) = v97;
    v29 = v95;
    v28 = v96;
    *(inited + 32) = v96;
    *(inited + 40) = v29;
    *(inited + 48) = v22;
    v30 = v28;
    v31 = v29;
    v32 = v22;
    sub_1B7545498(inited);
    swift_setDeallocating();
    type metadata accessor for URLResourceKey(0);
    swift_arrayDestroy();
    sub_1B77FF3C8();
    if (v7)
    {
      (*(v91 + 8))(v24, v89);

      v47 = *v93;
      v48 = v25;
      v49 = v13;
      goto LABEL_22;
    }

    v33 = sub_1B77FEDD8();
    if (v33 == 2 || (v33 & 1) != 0)
    {
      (*v92)(v26, v94);
      (*v93)(v25, v13);
      goto LABEL_8;
    }

    v34 = sub_1B77FEDE8();
    if (v34 == 2 || (v34 & 1) != 0)
    {
      v50 = v88;
      v51 = sub_1B77FF4B8();
      v53 = v52;
      sub_1B723AD28();
      swift_allocError();
      *v54 = 0xD000000000000018;
      v54[1] = 0x80000001B7884510;
      v54[2] = v51;
      v54[3] = v53;
      swift_willThrow();

      (*v92)(v87, v94);
      (*(v91 + 8))(v24, v89);
      goto LABEL_28;
    }

    v35 = sub_1B77FEE08();
    v36 = v91;
    if (v37)
    {
      v55 = 0x80000001B7884530;
      v50 = v88;
      v56 = sub_1B77FF4B8();
      v58 = v57;
      sub_1B723AD28();
      swift_allocError();
      v60 = 0xD000000000000017;
LABEL_27:
      *v59 = v60;
      v59[1] = v55;
      v59[2] = v56;
      v59[3] = v58;
      swift_willThrow();

      (*v92)(v87, v94);
      (*(v36 + 8))(v24, v89);
LABEL_28:
      v47 = *v93;
      v48 = v50;
LABEL_29:
      v49 = v13;
LABEL_22:
      v47(v48, v49);
      return;
    }

    if (__OFADD__(v73, v35))
    {
      break;
    }

    v38 = v83;
    v39 = v82;
    v40 = v81;
    if (v73 + v35 > 5242880)
    {
      v61 = [objc_opt_self() stringFromByteCount:5242880 countStyle:3];
      v62 = sub_1B7800868();
      v64 = v63;

      *&v98 = 0;
      *(&v98 + 1) = 0xE000000000000000;
      sub_1B7801A78();

      *&v98 = 0xD00000000000001BLL;
      *(&v98 + 1) = 0x80000001B7884570;
      MEMORY[0x1B8CA4D30](v62, v64);

      v65 = v98;
      v66 = sub_1B77FF4B8();
      v68 = v67;
      sub_1B723AD28();
      swift_allocError();
      *v69 = v65;
      *(v69 + 16) = v66;
      *(v69 + 24) = v68;
      swift_willThrow();

      (*v92)(v87, v94);
      (*(v36 + 8))(v24, v89);
      v47 = *v93;
      v48 = v88;
      goto LABEL_29;
    }

    v73 += v35;
    URL.filePath(relativeTo:resolveSymlinks:)(v74 + v75, 1, v82);
    if ((*v85)(v39, 1, v38) == 1)
    {
      sub_1B7205418(v39, &qword_1EB990DF0);
      v55 = 0x80000001B7884550;
      v50 = v88;
      v56 = sub_1B77FF4B8();
      v58 = v70;
      sub_1B723AD28();
      swift_allocError();
      v60 = 0xD00000000000001FLL;
      goto LABEL_27;
    }

    (*v72)(v40, v39, v38);
    if (v79(v40))
    {
      v41 = sub_1B754568C(v88, v78 & 1);
      v76(v40, v41, v42);
      v7 = 0;
    }

    (*v86)(v40, v38);
    v26 = v87;
    (*v92)(v87, v94);
    v25 = v88;
    (*v93)(v88, v13);
LABEL_8:
    sub_1B77FF328();
    if (!v100)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t ContentPackageHashesEnumerator.bundleURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL;
  v4 = sub_1B77FF4F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ContentPackageHashesEnumerator.init(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL;
  v4 = sub_1B77FF4F8();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

id sub_1B75450DC(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B77FF3F8();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1B77FF4F8();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1B77FF318();

    swift_willThrow();
    v9 = sub_1B77FF4F8();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t ContentPackageHashesEnumerator.deinit()
{
  v1 = OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL;
  v2 = sub_1B77FF4F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ContentPackageHashesEnumerator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10FinanceKit30ContentPackageHashesEnumerator_bundleURL;
  v2 = sub_1B77FF4F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1B7545330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990050);
    v3 = sub_1B7801A28();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1B78022F8();

      sub_1B7800798();
      result = sub_1B7802368();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1B78020F8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
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
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B7545498(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996F08);
    v3 = sub_1B7801A28();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1B7800868();
      sub_1B78022F8();
      v27 = v7;
      sub_1B7800798();
      v8 = sub_1B7802368();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1B7800868();
        v18 = v17;
        if (v16 == sub_1B7800868() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1B78020F8();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B754568C(uint64_t a1, char a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v46 = sub_1B7800478();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B77FF4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B78006D8();
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B78006C8();
  if ((a2 & 1) == 0)
  {
    v19 = MEMORY[0x1B8CA6D70](v14);
    v20 = sub_1B77FF518();
    if (!v2)
    {
      v44 = v5;
      v22 = v20;
      v23 = v21;
      sub_1B720ABEC(v20, v21);
      sub_1B72B82D4(v22, v23);
      sub_1B720A388(v22, v23);
      sub_1B720A388(v22, v23);
      objc_autoreleasePoolPop(v19);
      goto LABEL_8;
    }

    objc_autoreleasePoolPop(v19);
    goto LABEL_6;
  }

  v44 = v5;
  v15 = sub_1B7205540(0, &qword_1EB996F00);
  (*(v8 + 16))(v10, a1, v7);
  a1 = v15;
  v16 = sub_1B75450DC(v10);
  if (v2)
  {
LABEL_6:
    (*(v47 + 8))(v13, v11);
    return a1;
  }

  v17 = v16;
  v18 = MEMORY[0x1B8CA6D70]();
  v32 = sub_1B7801148();
  v34 = v33;
  v42 = v17;
  v43 = v11;
  while (v34 >> 60 != 15)
  {
    v36 = v34 >> 62;
    if ((v34 >> 62) > 1)
    {
      if (v36 != 2)
      {
        sub_1B75478A4(&qword_1EB99ED20, MEMORY[0x1E6966620]);
        memset(v50, 0, 14);
LABEL_11:
        sub_1B7800438();
        sub_1B72380B8(v32, v34);
        sub_1B72380B8(v32, v34);
        goto LABEL_12;
      }

      v38 = *(v32 + 16);
      v37 = *(v32 + 24);

      if (sub_1B77FEB78() && __OFSUB__(v38, sub_1B77FEBA8()))
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v37, v38))
      {
        goto LABEL_31;
      }

      sub_1B77FEB98();
      sub_1B75478A4(&qword_1EB99ED20, MEMORY[0x1E6966620]);
      v11 = v43;
    }

    else
    {
      if (!v36)
      {
        v50[0] = v32;
        LOWORD(v50[1]) = v34;
        BYTE2(v50[1]) = BYTE2(v34);
        BYTE3(v50[1]) = BYTE3(v34);
        BYTE4(v50[1]) = BYTE4(v34);
        BYTE5(v50[1]) = BYTE5(v34);
        sub_1B75478A4(&qword_1EB99ED20, MEMORY[0x1E6966620]);
        goto LABEL_11;
      }

      if (v32 >> 32 < v32)
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
      }

      if (sub_1B77FEB78() && __OFSUB__(v32, sub_1B77FEBA8()))
      {
        goto LABEL_33;
      }

      v11 = v43;
      sub_1B77FEB98();
      sub_1B75478A4(&qword_1EB99ED20, MEMORY[0x1E6966620]);
    }

    sub_1B7800438();
    sub_1B72380B8(v32, v34);
    sub_1B72380B8(v32, v34);
    v17 = v42;
LABEL_12:
    objc_autoreleasePoolPop(v18);
    v18 = MEMORY[0x1B8CA6D70]();
    v32 = sub_1B7801148();
    v34 = v35;
  }

  objc_autoreleasePoolPop(v18);
  v50[0] = 0;
  v39 = [v17 closeAndReturnError_];
  a1 = v50[0];
  if (!v39)
  {
    v41 = v50[0];
    sub_1B77FF318();

    swift_willThrow();
    goto LABEL_6;
  }

  v40 = v50[0];

LABEL_8:
  v24 = v47;
  v25 = v45;
  sub_1B78006B8();
  v26 = v46;
  v51 = v46;
  v52 = sub_1B75478A4(&qword_1EB98F940, MEMORY[0x1E69663E0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  v28 = v44;
  (*(v44 + 16))(boxed_opaque_existential_1, v25, v26);
  __swift_project_boxed_opaque_existential_1(v50, v51);
  sub_1B77FEDA8();
  (*(v28 + 8))(v25, v26);
  v29 = v48;
  v30 = v49;
  __swift_destroy_boxed_opaque_existential_1(v50);
  a1 = sub_1B72B71E4(v29, v30);
  sub_1B720A388(v29, v30);
  (*(v24 + 8))(v13, v11);
  return a1;
}

uint64_t sub_1B7545E58(uint64_t a1)
{
  v2 = sub_1B77FFC68();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB996EE8);
    v9 = sub_1B7801A28();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1B75478A4(&qword_1EB996EF0, MEMORY[0x1E6969AD0]);
      v16 = sub_1B7800758();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1B75478A4(&qword_1EB996EF8, MEMORY[0x1E6969AD0]);
          v23 = sub_1B7800828();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B7546178(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FFE0);
    v3 = sub_1B7801A28();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1B78022F8();
      sub_1B7802328();
      result = sub_1B7802368();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1B75462DC(unint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = sub_1B7801958();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = sub_1B7801A28();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_1B7801958();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E69E7CD0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v43 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v40 = v4;
    while (1)
    {
      v13 = MEMORY[0x1B8CA5DC0](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = sub_1B7801548();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        a4(0);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = sub_1B7801558();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            v4 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        v4 = v40;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = *(v4 + 32 + 8 * v27);
      v29 = sub_1B7801548();
      v30 = -1 << *(v6 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v33 = *(v11 + 8 * (v31 >> 6));
      v34 = 1 << v31;
      if (((1 << v31) & v33) != 0)
      {
        v35 = ~v30;
        a4(0);
        while (1)
        {
          v36 = *(*(v6 + 48) + 8 * v31);
          v37 = sub_1B7801558();

          if (v37)
          {
            break;
          }

          v31 = (v31 + 1) & v35;
          v32 = v31 >> 6;
          v33 = *(v11 + 8 * (v31 >> 6));
          v34 = 1 << v31;
          if (((1 << v31) & v33) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v32) = v34 | v33;
        *(*(v6 + 48) + 8 * v31) = v28;
        v38 = *(v6 + 16);
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v39;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1B75465F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990368);
    v3 = sub_1B7801A28();
    v4 = 0;
    v63 = v3 + 56;
    v57 = a1 + 32;
    v55 = v3;
    v56 = v1;
    while (1)
    {
      v5 = (v57 + 88 * v4);
      v6 = v5[1];
      v69 = *v5;
      v70 = v6;
      v7 = v5[3];
      v71 = v5[2];
      v72 = v7;
      v73 = v5[4];
      v74 = *(v5 + 80);
      v8 = *(&v69 + 1);
      v9 = v70;
      v10 = v69;
      sub_1B78022F8();
      v64 = v10;
      sub_1B7802328();
      v66 = v9;
      v67 = v8;
      sub_1B7802318();
      sub_1B723C474(&v69, v68);
      if (v9)
      {
        sub_1B7800798();
      }

      v60 = *(&v70 + 1);
      v65 = v71;
      if (v71)
      {
        sub_1B7802318();
        sub_1B7800798();
      }

      else
      {
        sub_1B7802318();
      }

      v11 = v72;
      v12 = v73;
      v61 = BYTE8(v71);
      sub_1B7802328();
      sub_1B7802318();
      if (*(&v11 + 1))
      {
        sub_1B7800798();
      }

      sub_1B7802318();
      if (*(&v12 + 1))
      {
        sub_1B7800798();
      }

      v59 = v74;
      sub_1B7802328();
      result = sub_1B7802368();
      v14 = ~(-1 << *(v3 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = v63;
      v18 = *(v63 + 8 * v16);
      v19 = 1 << (result & v14);
      v20 = *(v3 + 48);
      if ((v19 & v18) != 0)
      {
        break;
      }

LABEL_52:
      *(v17 + 8 * v16) = v18 | v19;
      v47 = v20 + 88 * v15;
      v48 = v70;
      *v47 = v69;
      *(v47 + 16) = v48;
      v49 = v71;
      v50 = v72;
      v51 = v73;
      *(v47 + 80) = v74;
      *(v47 + 48) = v50;
      *(v47 + 64) = v51;
      *(v47 + 32) = v49;
      v52 = *(v3 + 16);
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v54;
LABEL_54:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v58 = v4;
    v22 = v66;
    v21 = v8;
    v23 = v64;
    v24 = v65;
    while (1)
    {
      v25 = (v20 + 88 * v15);
      if (*v25 != v23)
      {
        goto LABEL_15;
      }

      v26 = *(v25 + 2);
      v27 = *(v25 + 3);
      v28 = *(v25 + 4);
      v29 = v25[40];
      v31 = *(v25 + 6);
      v30 = *(v25 + 7);
      v33 = *(v25 + 8);
      v32 = *(v25 + 9);
      v34 = v25[80];
      if (v26)
      {
        if (!v22)
        {
          goto LABEL_15;
        }

        result = *(v25 + 1);
        if (result != v21 || v26 != v22)
        {
          v62 = *(v25 + 7);
          v36 = v14;
          v37 = v20;
          v38 = *(v25 + 6);
          v39 = *(v25 + 9);
          v40 = *(v25 + 8);
          v41 = v25[80];
          result = sub_1B78020F8();
          v34 = v41;
          v33 = v40;
          v32 = v39;
          v31 = v38;
          v20 = v37;
          v14 = v36;
          v30 = v62;
          v17 = v63;
          v24 = v65;
          v22 = v66;
          v23 = v64;
          v21 = v67;
          if ((result & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }

      else if (v22)
      {
        goto LABEL_15;
      }

      if (v28)
      {
        if (!v24)
        {
          goto LABEL_15;
        }

        if (v27 != v60 || v28 != v24)
        {
          v43 = v34;
          result = sub_1B78020F8();
          v24 = v65;
          v22 = v66;
          v23 = v64;
          v21 = v67;
          v17 = v63;
          if ((result & 1) == 0)
          {
            goto LABEL_15;
          }

          v34 = v43;
        }
      }

      else if (v24)
      {
        goto LABEL_15;
      }

      if (v29 == v61)
      {
        if (v30)
        {
          if (!*(&v11 + 1))
          {
            goto LABEL_15;
          }

          if (v31 != v11 || v30 != *(&v11 + 1))
          {
            v45 = v34;
            result = sub_1B78020F8();
            v34 = v45;
            v24 = v65;
            v22 = v66;
            v23 = v64;
            v21 = v67;
            v17 = v63;
            if ((result & 1) == 0)
            {
              goto LABEL_15;
            }
          }
        }

        else if (*(&v11 + 1))
        {
          goto LABEL_15;
        }

        if (v32)
        {
          if (*(&v12 + 1))
          {
            if (__PAIR128__(v32, v33) == v12)
            {
              goto LABEL_49;
            }

            v46 = v34;
            result = sub_1B78020F8();
            v24 = v65;
            v22 = v66;
            v23 = v64;
            v21 = v67;
            v17 = v63;
            if (result)
            {
              v34 = v46;
LABEL_49:
              if (v34 == v59)
              {
                sub_1B723C4D0(&v69);
                v3 = v55;
                v1 = v56;
                v4 = v58;
                goto LABEL_54;
              }
            }
          }
        }

        else if (!*(&v12 + 1))
        {
          goto LABEL_49;
        }
      }

LABEL_15:
      v15 = (v15 + 1) & v14;
      v16 = v15 >> 6;
      v18 = *(v17 + 8 * (v15 >> 6));
      v19 = 1 << v15;
      if ((v18 & (1 << v15)) == 0)
      {
        v3 = v55;
        v1 = v56;
        v20 = *(v55 + 48);
        v4 = v58;
        goto LABEL_52;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}