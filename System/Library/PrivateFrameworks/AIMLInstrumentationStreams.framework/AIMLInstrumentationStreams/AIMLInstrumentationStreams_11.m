uint64_t sub_23C64BB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23C64BB78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SiriIdentifiers.userEphemeralId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SiriIdentifiers.homeEphemeralId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SiriIdentifiers.secondsSinceEphemeralIdCreation.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t SiriIdentifiers.siriDeviceId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SiriIdentifiers.siriSpeechId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t SiriIdentifiers.siriUserId.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t SiriIdentifiers.turnId.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

void SiriIdentifiers.init(graph:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v114 = a2;
  v115 = a1;
  v2 = sub_23C870B74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v118 = &v98 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v98 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F92A0, &qword_23C8734E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v98 - v17;
  v19 = sub_23C5A3FDC(0, &qword_27E1FBE70, 0x277D57050);
  v20 = sub_23C600CA0();
  v21 = *(v20 + 16);
  v100 = v11;
  if (v21 && (v22 = sub_23C5FF958(v19), (v23 & 1) != 0))
  {
    v24 = *(*(v20 + 56) + 8 * v22);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v25 = sub_23C601CF4(v24);

  if (v25 >> 62)
  {
    v26 = sub_23C871C34();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v115;
  v28 = v115;
  if (!v26)
  {

    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v31 = 0;
    v35 = 1;
    goto LABEL_25;
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x23EED7610](0, v25);
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v29 = *(v25 + 32);
  }

  v30 = v29;

  v31 = v30;
  v32 = sub_23C870D44();

  if (!v32)
  {
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v35 = 1;
    v27 = v28;
    goto LABEL_25;
  }

  v33 = [v32 userEphemeralId];
  v27 = v28;
  if (!v33)
  {
    goto LABEL_15;
  }

  v34 = v33;
  sub_23C871AB4();

  if ((*(v3 + 48))(v18, 1, v2) == 1)
  {
    sub_23C585C34(v18, &qword_27E1F92A0, &qword_23C8734E0);
LABEL_15:
    v112 = 0;
    v113 = 0;
    goto LABEL_19;
  }

  v112 = sub_23C870B04();
  v113 = v36;
  (*(v3 + 8))(v18, v2);
LABEL_19:
  v37 = [v32 homeEphemeralId];
  if (v37)
  {
    v38 = v37;
    sub_23C871AB4();

    if ((*(v3 + 48))(v16, 1, v2) != 1)
    {
      v110 = sub_23C870B04();
      v111 = v39;
      (*(v3 + 8))(v16, v2);
      goto LABEL_24;
    }

    sub_23C585C34(v16, &qword_27E1F92A0, &qword_23C8734E0);
  }

  v110 = 0;
  v111 = 0;
LABEL_24:
  v109 = [v32 secondsSinceEphemeralIdCreation];

  v35 = 0;
LABEL_25:
  v123 = v35;
  v40 = sub_23C5A3FDC(0, &qword_27E1FBE78, 0x277D57080);
  v41 = sub_23C600CA0();
  v42 = MEMORY[0x277D84F90];
  if (*(v41 + 16))
  {
    v43 = sub_23C5FF958(v40);
    if (v44)
    {
      v45 = *(*(v41 + 56) + 8 * v43);
    }

    else
    {
      v45 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  v46 = sub_23C601CF4(v45);

  if (!(v46 >> 62))
  {
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

LABEL_48:

    v102 = 0;
    v101 = 0;
    v104 = 0;
    v103 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    goto LABEL_49;
  }

  if (!sub_23C871C34())
  {
    goto LABEL_48;
  }

LABEL_32:
  if ((v46 & 0xC000000000000001) == 0)
  {
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v47 = *(v46 + 32);
      goto LABEL_35;
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v47 = MEMORY[0x23EED7610](0, v46);
LABEL_35:
  v48 = v47;

  v49 = v48;
  v50 = sub_23C870D44();
  v107 = v49;

  if (v50)
  {
    v51 = [v50 siriDeviceId];
    v27 = v28;
    if (v51)
    {
      v52 = v51;
      v105 = sub_23C871784();
      v106 = v53;
    }

    else
    {
      v105 = 0;
      v106 = 0;
    }

    v54 = [v50 siriSpeechId];
    if (v54)
    {
      v55 = v54;
      v103 = sub_23C871784();
      v104 = v56;
    }

    else
    {
      v104 = 0;
      v103 = 0;
    }

    v57 = [v50 siriUserId];
    if (v57)
    {
      v58 = v57;
      v101 = sub_23C871784();
      v102 = v59;
    }

    else
    {

      v102 = 0;
      v101 = 0;
    }
  }

  else
  {
    v102 = 0;
    v101 = 0;
    v104 = 0;
    v103 = 0;
    v105 = 0;
    v106 = 0;
    v27 = v28;
  }

LABEL_49:
  v60 = sub_23C601E20();
  v61 = v60;
  if (v60 >> 62)
  {
    goto LABEL_77;
  }

  for (i = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23C871C34())
  {
    v119 = v2;
    v120 = v3;
    v99 = v7;
    v108 = v31;
    if (!i)
    {
      break;
    }

    v121 = v42;
    sub_23C592B60(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      goto LABEL_81;
    }

    v31 = 0;
    v42 = v121;
    v116 = v61 & 0xFFFFFFFFFFFFFF8;
    v117 = v61 & 0xC000000000000001;
    v3 += 32;
    while (1)
    {
      v63 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v117)
      {
        v64 = MEMORY[0x23EED7610](v31, v61);
      }

      else
      {
        if (v31 >= *(v116 + 16))
        {
          goto LABEL_76;
        }

        v64 = *(v61 + 8 * v31 + 32);
      }

      v65 = v64;
      v66 = sub_23C870CF4();
      if (!v66)
      {
        goto LABEL_83;
      }

      v67 = v66;
      v7 = v118;
      sub_23C870D94();

      v121 = v42;
      v69 = *(v42 + 16);
      v68 = *(v42 + 24);
      v27 = (v69 + 1);
      if (v69 >= v68 >> 1)
      {
        sub_23C592B60(v68 > 1, v69 + 1, 1);
        v42 = v121;
      }

      *(v42 + 16) = v27;
      v70 = v42 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v69;
      v2 = v119;
      (*(v120 + 32))(v70, v7, v119);
      ++v31;
      if (v63 == i)
      {

        v3 = v120;
        v27 = v115;
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    ;
  }

LABEL_65:
  v122 = MEMORY[0x277D84FA0];
  v71 = *(v42 + 16);
  if (v71)
  {
    v74 = *(v3 + 16);
    v72 = v3 + 16;
    v73 = v74;
    v75 = v42 + ((*(v72 + 64) + 32) & ~*(v72 + 64));
    v76 = *(v72 + 56);
    v77 = v100;
    do
    {
      v73(v77, v75, v2);
      v78 = sub_23C870B04();
      sub_23C64E414(&v121, v78, v79);

      (*(v72 - 8))(v77, v2);
      v75 += v76;
      --v71;
    }

    while (v71);

    v3 = v120;
    v27 = v115;
  }

  else
  {
  }

  v80 = v122;
  v81 = objc_allocWithZone(type metadata accessor for SiriTurn());
  v82 = v27;
  v83 = SiriTurn.init(eventGraph:)(v82);
  v84 = v108;
  if (!v83)
  {

    v90 = 0;
    v88 = 0;
    goto LABEL_74;
  }

  v85 = v83;
  if (EventGraph.uei.getter())
  {
    v86 = sub_23C62FC3C();

    v87 = v99;
    sub_23C870E24();

    v88 = sub_23C870B04();
    v90 = v89;

    (*(v3 + 8))(v87, v119);
LABEL_74:
    v91 = v123;
    v92 = v114;
    v93 = v113;
    *v114 = v112;
    v92[1] = v93;
    v94 = v111;
    v92[2] = v110;
    v92[3] = v94;
    v92[4] = v109;
    *(v92 + 40) = v91;
    v95 = v106;
    v92[6] = v105;
    v92[7] = v95;
    v96 = v104;
    v92[8] = v103;
    v92[9] = v96;
    v97 = v102;
    v92[10] = v101;
    v92[11] = v97;
    v92[12] = v88;
    v92[13] = v90;
    v92[14] = v80;
    return;
  }

LABEL_84:
  __break(1u);
}

uint64_t SiriIdentifiers.dictioaryRepresentation()()
{
  v1 = v0[1];
  v31 = *v0;
  v32 = v0[2];
  v2 = v0[4];
  v37 = *(v0 + 40);
  v3 = v0[7];
  v4 = v0[9];
  v35 = v0[8];
  v36 = v0[3];
  v5 = v0[11];
  v33 = v0[6];
  v34 = v0[10];
  v6 = v0[13];
  v30 = v0[12];
  v7 = v0[14];
  v8 = *(v7 + 16);
  if (v8)
  {
    v29 = v0[9];
    v9 = sub_23C64D3E4(v8, 0, &qword_27E1F94F8, &unk_23C87C000);
    v10 = sub_23C653340(&v39, v9 + 4, v8, v7);

    result = sub_23C56EF08();
    if (v10 != v8)
    {
      __break(1u);
      return result;
    }

    v4 = v29;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
  *&v39 = v9;
  sub_23C59A4B0(&v39, v38);
  v12 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23C594D8C(v38, 0x436C616369676F6CLL, 0xEF7364496B636F6CLL, isUniquelyReferenced_nonNull_native);
  v41 = v12;
  v14 = MEMORY[0x277D837D0];
  if (v6)
  {
    v40 = MEMORY[0x277D837D0];
    *&v39 = v30;
    *(&v39 + 1) = v6;
    sub_23C59A4B0(&v39, v38);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_23C594D8C(v38, 0x64496E727574, 0xE600000000000000, v15);
    v41 = v12;
  }

  else
  {
    sub_23C64DD90(0x64496E727574, 0xE600000000000000, &v39);
    sub_23C585C34(&v39, &qword_27E1FBE80, &qword_23C87BF20);
  }

  if (v1)
  {
    v40 = v14;
    *&v39 = v31;
    *(&v39 + 1) = v1;
    sub_23C59A4B0(&v39, v38);

    v16 = v41;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_23C594D8C(v38, 0x6568704572657375, 0xEF64496C6172656DLL, v17);
    v41 = v16;
  }

  else
  {
    sub_23C64DD90(0x6568704572657375, 0xEF64496C6172656DLL, &v39);
    sub_23C585C34(&v39, &qword_27E1FBE80, &qword_23C87BF20);
  }

  if (v36)
  {
    v40 = v14;
    *&v39 = v32;
    *(&v39 + 1) = v36;
    sub_23C59A4B0(&v39, v38);

    v18 = v41;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_23C594D8C(v38, 0x65687045656D6F68, 0xEF64496C6172656DLL, v19);
    v41 = v18;
  }

  else
  {
    sub_23C64DD90(0x65687045656D6F68, 0xEF64496C6172656DLL, &v39);
    sub_23C585C34(&v39, &qword_27E1FBE80, &qword_23C87BF20);
  }

  if (v37)
  {
    sub_23C64DD90(0xD00000000000001FLL, 0x800000023C8AA5D0, &v39);
    sub_23C585C34(&v39, &qword_27E1FBE80, &qword_23C87BF20);
  }

  else
  {
    v40 = MEMORY[0x277D84D38];
    *&v39 = v2;
    sub_23C59A4B0(&v39, v38);
    v20 = v41;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_23C594D8C(v38, 0xD00000000000001FLL, 0x800000023C8AA5D0, v21);
    v41 = v20;
  }

  if (v3)
  {
    v40 = v14;
    *&v39 = v33;
    *(&v39 + 1) = v3;
    sub_23C59A4B0(&v39, v38);

    v22 = v41;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_23C594D8C(v38, 0x6976654469726973, 0xEC00000064496563, v23);
    v41 = v22;
  }

  else
  {
    sub_23C64DD90(0x6976654469726973, 0xEC00000064496563, &v39);
    sub_23C585C34(&v39, &qword_27E1FBE80, &qword_23C87BF20);
  }

  if (v5)
  {
    v40 = v14;
    *&v39 = v34;
    *(&v39 + 1) = v5;
    sub_23C59A4B0(&v39, v38);

    v24 = v41;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_23C594D8C(v38, 0x7265735569726973, 0xEA00000000006449, v25);
    v41 = v24;
  }

  else
  {
    sub_23C64DD90(0x7265735569726973, 0xEA00000000006449, &v39);
    sub_23C585C34(&v39, &qword_27E1FBE80, &qword_23C87BF20);
  }

  if (v4)
  {
    v40 = v14;
    *&v39 = v35;
    *(&v39 + 1) = v4;
    sub_23C59A4B0(&v39, v38);

    v26 = v41;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_23C594D8C(v38, 0x6565705369726973, 0xEC00000064496863, v27);
  }

  else
  {
    sub_23C64DD90(0x6565705369726973, 0xEC00000064496863, &v39);
    sub_23C585C34(&v39, &qword_27E1FBE80, &qword_23C87BF20);
    v26 = v41;
  }

  v28 = sub_23C64CDCC(v26);

  return v28;
}

uint64_t sub_23C64CDCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE10, &unk_23C874CD0);
    v2 = sub_23C871E94();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_23C588DC0(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_23C59A4B0(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_23C59A4B0(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_23C59A4B0(v32, v33);
    v17 = *(v2 + 40);
    result = sub_23C871C94();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_23C59A4B0(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
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

Swift::String __swiftcall SiriIdentifiers.print()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 24);
  v27 = *(v0 + 32);
  v30 = *(v0 + 40);
  v4 = *(v0 + 56);
  v33 = *(v0 + 64);
  v28 = *(v0 + 72);
  v29 = *(v0 + 16);
  v5 = *(v0 + 88);
  v31 = *(v0 + 48);
  v32 = *(v0 + 80);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 112);

  sub_23C871D14();
  MEMORY[0x23EED7100](0xD000000000000011, 0x800000023C8AA5F0);
  v9 = sub_23C8719E4();
  MEMORY[0x23EED7100](v9);

  MEMORY[0x23EED7100](0x2064496E7275740ALL, 0xEA0000000000203DLL);
  v10 = 63;
  if (v6)
  {
    v11 = v7;
  }

  else
  {
    v11 = 63;
  }

  if (!v6)
  {
    v6 = 0xE100000000000000;
  }

  MEMORY[0x23EED7100](v11, v6);

  MEMORY[0x23EED7100](0xD000000000000013, 0x800000023C8AA610);
  if (v1)
  {
    v12 = v2;
  }

  else
  {
    v12 = 63;
  }

  if (v1)
  {
    v13 = v1;
  }

  else
  {
    v13 = 0xE100000000000000;
  }

  MEMORY[0x23EED7100](v12, v13);

  MEMORY[0x23EED7100](0xD000000000000013, 0x800000023C8AA630);
  if (v3)
  {
    v14 = v29;
  }

  else
  {
    v14 = 63;
  }

  if (v3)
  {
    v15 = v3;
  }

  else
  {
    v15 = 0xE100000000000000;
  }

  MEMORY[0x23EED7100](v14, v15);

  MEMORY[0x23EED7100](0xD000000000000023, 0x800000023C8AA650);
  v16 = 0xE100000000000000;
  if ((v30 & 1) == 0)
  {
    sub_23C653498();
    v10 = sub_23C871B94();
    v16 = v17;
  }

  MEMORY[0x23EED7100](v10, v16);

  MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8AA680);
  if (v4)
  {
    v18 = v31;
  }

  else
  {
    v18 = 63;
  }

  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v19 = 0xE100000000000000;
  }

  MEMORY[0x23EED7100](v18, v19);

  MEMORY[0x23EED7100](0x657355697269730ALL, 0xEE00203D20644972);
  if (v5)
  {
    v20 = v32;
  }

  else
  {
    v20 = 63;
  }

  if (v5)
  {
    v21 = v5;
  }

  else
  {
    v21 = 0xE100000000000000;
  }

  MEMORY[0x23EED7100](v20, v21);

  MEMORY[0x23EED7100](0xD000000000000010, 0x800000023C8AA6A0);
  if (v28)
  {
    v22 = v33;
  }

  else
  {
    v22 = 63;
  }

  if (v28)
  {
    v23 = v28;
  }

  else
  {
    v23 = 0xE100000000000000;
  }

  MEMORY[0x23EED7100](v22, v23);

  v24 = 0;
  v25 = 0xE000000000000000;
  result._object = v25;
  result._countAndFlagsBits = v24;
  return result;
}

void *sub_23C64D3E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_23C64D460(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BA8, &unk_23C874C30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_23C64D4F0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B10, &unk_23C874B90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_23C64D5C8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4F0, &qword_23C874E40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

size_t sub_23C64D674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if (result - v12 != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23C64D774(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_23C5FFA08(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C642FE0();
    v9 = v12;
  }

  v10 = *(*(v9 + 56) + 8 * v6);
  sub_23C6413F0(v6, v9);
  *v2 = v9;
  return v10;
}

uint64_t sub_23C64D81C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_23C5FFA08(a1);
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
        sub_23C6413F0(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_23C64313C();
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
  v6 = sub_23C871E14();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_23C871C34();
  v8 = sub_23C64DE34(v4, v7);

  v9 = sub_23C5FFA08(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_23C6413F0(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_23C64D968(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_23C5FFA08(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C64329C();
    v9 = v12;
  }

  v10 = *(*(v9 + 56) + 8 * v6);
  sub_23C64157C(v6, v9);
  *v2 = v9;
  return v10;
}

uint64_t sub_23C64D9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = sub_23C5FFB88(a1, a2, a3, a4);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v5;
  v22 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C643E14();
    v12 = v22;
  }

  v13 = *(v12 + 48) + 32 * v9;
  v14 = *(v13 + 8);
  v15 = *(v13 + 24);

  v16 = (*(v12 + 56) + 32 * v9);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  sub_23C641BC4(v9, v12);
  *v5 = v12;
  return v17;
}

uint64_t sub_23C64DAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = sub_23C5FFB88(a1, a2, a3, a4);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v5;
  v18 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C643FB4();
    v12 = v18;
  }

  v13 = *(v12 + 48) + 32 * v9;
  v14 = *(v13 + 8);
  v15 = *(v13 + 24);

  v16 = *(*(v12 + 56) + 8 * v9);
  sub_23C641D9C(v9, v12);
  *v5 = v12;
  return v16;
}

uint64_t sub_23C64DB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = sub_23C5FFB88(a1, a2, a3, a4);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v5;
  v18 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23C64412C();
    v12 = v18;
  }

  v13 = *(v12 + 48) + 32 * v9;
  v14 = *(v13 + 8);
  v15 = *(v13 + 24);

  v16 = *(*(v12 + 56) + 8 * v9);
  sub_23C641F74(v9, v12);
  *v5 = v12;
  return v16;
}

uint64_t sub_23C64DC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23C5FFCB8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v22 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23C644D60();
      v11 = v22;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
    v21 = *(v13 - 8);
    v14 = *(v21 + 72) * v8;
    sub_23C6535CC(v12 + v14);
    sub_23C653628(*(v11 + 56) + v14, a2);
    sub_23C642290(v8, v11);
    *v3 = v11;
    v15 = *(v21 + 56);
    v16 = a2;
    v17 = 0;
    v18 = v13;
  }

  else
  {
    v19 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a2;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

double sub_23C64DD90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23C5FF898(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23C645214();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_23C59A4B0((*(v12 + 56) + 32 * v9), a3);
    sub_23C64257C(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_23C64DE34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD90, &unk_23C874C90);
    v2 = sub_23C871E84();
    v20 = v2;
    sub_23C871DF4();
    v3 = sub_23C871E24();
    if (v3)
    {
      v4 = v3;
      sub_23C870E34();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_23C63CEF0(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_23C871B24();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_23C871E24();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_23C64E07C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23C870B74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_23C600704(&qword_27E1FBC90);
  v36 = a2;
  v13 = sub_23C8716E4();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_23C600704(&qword_27E1FB418);
      v23 = sub_23C871754();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_23C65018C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_23C64E334(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_23C8720E4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_23C650408(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_23C64E414(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_23C8720F4();
  sub_23C871804();
  v9 = sub_23C872124();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_23C872014() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_23C65053C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_23C64E564(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_23C8720F4();
  sub_23C871804();
  sub_23C871804();
  v12 = sub_23C872124();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v30 = v10;
    v17 = *(v10 + 48);
    while (1)
    {
      v18 = (v17 + 32 * v15);
      v19 = v18[2];
      v20 = v18[3];
      v21 = *v18 == a2 && v18[1] == a3;
      if (v21 || (sub_23C872014() & 1) != 0)
      {
        v22 = v19 == a4 && v20 == a5;
        if (v22 || (sub_23C872014() & 1) != 0)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v23 = (*(v30 + 48) + 32 * v15);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    *a1 = *v23;
    a1[1] = v24;
    a1[2] = v25;
    a1[3] = v26;

    return 0;
  }

  else
  {
LABEL_15:
    v28 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    sub_23C6506BC(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_23C64E73C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_23C8720F4();
  MEMORY[0x23EED79F0](a2);
  v7 = sub_23C872124();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + 8 * v9) == a2)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_23C650888(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_23C64E864(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_23C871C44();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_23C871C34();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_23C64ED24(v15, result + 1, a4, a5, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_23C64FBD0(v30 + 1, a4, a5);
        }

        v31 = v16;
        sub_23C650108(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = *(v14 + 40);
    v20 = sub_23C871B24();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_23C871B34();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v28 = a2;
      sub_23C6509E8(v28, v22, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v38;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_23C64EAC8(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v26 = v2;
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_23C8720F4();
  sub_23C870B74();
  sub_23C600704(&qword_27E1FBC90);
  sub_23C8716F4();
  v14 = sub_23C872124();
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    while (1)
    {
      sub_23C600748(*(v12 + 48) + v18 * v16, v9, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v19 = sub_23C870B44();
      sub_23C6535CC(v9);
      if (v19)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_23C6535CC(a2);
    sub_23C600748(*(v12 + 48) + v18 * v16, v27, type metadata accessor for SiriConversationPublisher.GraphUUID);
    return 0;
  }

  else
  {
LABEL_5:
    v20 = v26;
    v21 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23C600748(a2, v11, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v28 = *v20;
    sub_23C650B6C(v11, v16, isUniquelyReferenced_nonNull_native);
    v23 = v27;
    *v20 = v28;
    sub_23C653628(a2, v23);
    return 1;
  }
}

uint64_t sub_23C64ED24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_23C871CE4();
    v22 = v8;
    sub_23C871BF4();
    if (sub_23C871C64())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          sub_23C64FBD0(v16 + 1, a3, a4);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_23C871B24();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (sub_23C871C64());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_23C64EF30(uint64_t a1)
{
  v2 = v1;
  v41 = sub_23C870B74();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE98, &unk_23C87BFD0);
  result = sub_23C871CD4();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_23C600704(&qword_27E1FBC90);
      result = sub_23C8716E4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_23C64F278(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEC0, &qword_23C87C020);
  result = sub_23C871CD4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_23C8720E4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23C64F49C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4A0, &qword_23C87ACF0);
  result = sub_23C871CD4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23C64F6FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEA8, &unk_23C87BFF0);
  result = sub_23C871CD4();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_23C8720F4();
      sub_23C871804();
      sub_23C871804();
      result = sub_23C872124();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23C64F980(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEB8, &qword_23C87C018);
  result = sub_23C871CD4();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_23C8720F4();
      MEMORY[0x23EED79F0](v18);
      result = sub_23C872124();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23C64FBD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_23C871CD4();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_23C871B24();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_23C64FDF0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE90, &unk_23C87BFC0);
  result = sub_23C871CD4();
  v11 = result;
  if (*(v8 + 16))
  {
    v34 = v2;
    v35 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v36 + 72);
      sub_23C653628(v23 + v24 * (v20 | (v12 << 6)), v7);
      v25 = *(v11 + 40);
      sub_23C8720F4();
      sub_23C870B74();
      sub_23C600704(&qword_27E1FBC90);
      sub_23C8716F4();
      result = sub_23C872124();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_23C653628(v7, *(v11 + 48) + v19 * v24);
      ++*(v11 + 16);
      v8 = v35;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v8 + 32);
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    v2 = v34;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

unint64_t sub_23C650108(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_23C871B24();
  v5 = -1 << *(a2 + 32);
  result = sub_23C871BD4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_23C65018C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_23C870B74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23C64EF30(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23C650DBC();
      goto LABEL_12;
    }

    sub_23C651738(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_23C600704(&qword_27E1FBC90);
  v15 = sub_23C8716E4();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_23C600704(&qword_27E1FB418);
      v23 = sub_23C871754();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23C872054();
  __break(1u);
  return result;
}

uint64_t sub_23C650408(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23C64F278(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_23C6512D0(&qword_27E1FBEC0, &qword_23C87C020);
      a2 = v7;
      goto LABEL_12;
    }

    sub_23C651A40(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_23C8720E4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23C872054();
  __break(1u);
  return result;
}

uint64_t sub_23C65053C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_23C64F49C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_23C651008();
      goto LABEL_16;
    }

    sub_23C651C30(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_23C8720F4();
  sub_23C871804();
  result = sub_23C872124();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_23C872014();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_23C872054();
  __break(1u);
  return result;
}

uint64_t sub_23C6506BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_23C64F6FC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_23C651164();
      goto LABEL_22;
    }

    sub_23C651E68(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_23C8720F4();
  sub_23C871804();
  sub_23C871804();
  result = sub_23C872124();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    while (1)
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_23C872014(), (result & 1) != 0))
      {
        if (v21 == a3 && v22 == a4)
        {
          break;
        }

        result = sub_23C872014();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v18;
      if (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_23C872054();
    __break(1u);
  }

LABEL_22:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

uint64_t sub_23C650888(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23C64F980(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_23C6512D0(&qword_27E1FBEB8, &qword_23C87C018);
      a2 = v7;
      goto LABEL_12;
    }

    sub_23C6520CC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_23C8720F4();
  MEMORY[0x23EED79F0](v4);
  result = sub_23C872124();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23C872054();
  __break(1u);
  return result;
}

void sub_23C6509E8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_23C64FBD0(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_23C651400(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_23C6522EC(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  v14 = sub_23C871B24();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v11(0);
    do
    {
      v17 = *(*(v12 + 48) + 8 * a2);
      v18 = sub_23C871B34();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_23C872054();
  __break(1u);
}

uint64_t sub_23C650B6C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    sub_23C64FDF0(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      sub_23C651540();
      goto LABEL_12;
    }

    v28 = v11;
    sub_23C6524F8(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  sub_23C8720F4();
  sub_23C870B74();
  sub_23C600704(&qword_27E1FBC90);
  sub_23C8716F4();
  v18 = sub_23C872124();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      sub_23C600748(*(v16 + 48) + v21 * a2, v13, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v22 = sub_23C870B44();
      sub_23C6535CC(v13);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_23C653628(a1, *(v23 + 48) + *(v9 + 72) * a2);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23C872054();
  __break(1u);
  return result;
}

void *sub_23C650DBC()
{
  v1 = v0;
  v2 = sub_23C870B74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE98, &unk_23C87BFD0);
  v7 = *v0;
  v8 = sub_23C871CC4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_23C651008()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4A0, &qword_23C87ACF0);
  v2 = *v0;
  v3 = sub_23C871CC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_23C651164()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEA8, &unk_23C87BFF0);
  v2 = *v0;
  v3 = sub_23C871CC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_23C6512D0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23C871CC4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_23C651400(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23C871CC4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_23C651540()
{
  v1 = v0;
  v2 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE90, &unk_23C87BFC0);
  v7 = *v0;
  v8 = sub_23C871CC4();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_23C600748(*(v7 + 48) + v22, v6, type metadata accessor for SiriConversationPublisher.GraphUUID);
        result = sub_23C653628(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

uint64_t sub_23C651738(uint64_t a1)
{
  v2 = v1;
  v37 = sub_23C870B74();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE98, &unk_23C87BFD0);
  v10 = sub_23C871CD4();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_23C600704(&qword_27E1FBC90);
      result = sub_23C8716E4();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23C651A40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEC0, &qword_23C87C020);
  result = sub_23C871CD4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_23C8720E4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_23C651C30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB4A0, &qword_23C87ACF0);
  result = sub_23C871CD4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_23C8720F4();

      sub_23C871804();
      result = sub_23C872124();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_23C651E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEA8, &unk_23C87BFF0);
  result = sub_23C871CD4();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_23C8720F4();

      sub_23C871804();
      sub_23C871804();
      result = sub_23C872124();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_23C6520CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBEB8, &qword_23C87C018);
  result = sub_23C871CD4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_23C8720F4();
      MEMORY[0x23EED79F0](v17);
      result = sub_23C872124();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_23C6522EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_23C871CD4();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_23C871B24();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_23C6524F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE90, &unk_23C87BFC0);
  result = sub_23C871CD4();
  v11 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v34 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v35 + 72);
      sub_23C600748(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v25 = *(v11 + 40);
      sub_23C8720F4();
      sub_23C870B74();
      sub_23C600704(&qword_27E1FBC90);
      sub_23C8716F4();
      result = sub_23C872124();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_23C653628(v7, *(v11 + 48) + v19 * v24);
      ++*(v11 + 16);
      v8 = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

void *sub_23C6527F4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 48) + v17);
      v19 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      v11[1] = v19;
      if (v14 == v10)
      {
        v23 = v18;
        goto LABEL_24;
      }

      v11 += 2;
      v20 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_23C652950(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_23C652A50(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = (*(a4 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + (v18 << 6));
      v24 = v22[1];
      v23 = v22[2];
      v25 = *v22;
      *&v34[9] = *(v22 + 41);
      v33[1] = v24;
      *v34 = v23;
      v33[0] = v25;
      v26 = *v22;
      v27 = v22[1];
      v28 = v22[2];
      *(v37 + 9) = *(v22 + 41);
      v36 = v27;
      v37[0] = v28;
      v35 = v26;
      *v11 = v21;
      *(v11 + 8) = v20;
      v29 = v36;
      *(v11 + 16) = v35;
      *(v11 + 32) = v29;
      *(v11 + 48) = v37[0];
      *(v11 + 57) = *(v37 + 9);
      if (v14 == v10)
      {

        sub_23C64BC50(v33, v32);
        goto LABEL_24;
      }

      v11 += 80;

      sub_23C64BC50(v33, v32);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v31 = v12 + 1;
    }

    else
    {
      v31 = (63 - v7) >> 6;
    }

    v12 = v31 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_23C652C14(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v26 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = (*(a4 + 48) + 32 * v18);
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      v23 = *(*(a4 + 56) + 8 * v18);
      *v11 = *v19;
      v11[1] = v20;
      v11[2] = v21;
      v11[3] = v22;
      v11[4] = v23;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 5;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v25 = v12 + 1;
    }

    else
    {
      v25 = v13;
    }

    v12 = v25 - 1;
    v10 = result;
LABEL_23:
    v7 = v26;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_23C652D98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5B0, qword_23C87ADE0);
  v39 = *(v42 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = (&v36 - v12);
  v43 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v43;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v37 = -1 << *(v14 - 32);
    v38 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = v43;
      v28 = *(v43 + 48);
      v29 = sub_23C870B74();
      v30 = *(v29 - 8);
      v31 = v28 + *(v30 + 72) * v26;
      v32 = v41;
      (*(v30 + 16))(v41, v31, v29);
      *&v32[*(v42 + 48)] = *(*(v27 + 56) + 8 * v26);
      v33 = v32;
      a1 = v40;
      sub_23C60C610(v33, v40, &unk_27E1FB5B0, qword_23C87ADE0);
      sub_23C60C610(a1, a2, &unk_27E1FB5B0, qword_23C87ADE0);
      if (v21 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v39 + 72);
      result = v21;
      v34 = __OFADD__(v21++, 1);
      v19 = v25;
      if (v34)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v25 = v35 - 1;
    a3 = result;
LABEL_23:
    v16 = v37;
    a1 = v38;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23C6530B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v50 = a7;
  v51 = a8;
  v48 = a5;
  v49 = a6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v44 = *(v47 - 8);
  v12 = *(v44 + 64);
  v13 = MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v45 = &v41 - v16;
  v52 = a4;
  v19 = *(a4 + 64);
  v18 = a4 + 64;
  v17 = v19;
  v20 = -1 << *(v18 - 32);
  if (-v20 < 64)
  {
    v21 = ~(-1 << -v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v17;
  if (!a2)
  {
LABEL_18:
    v29 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v52;
    a1[1] = v18;
    a1[2] = ~v20;
    a1[3] = v29;
    a1[4] = v22;
    return a3;
  }

  if (!a3)
  {
    v29 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v42 = -1 << *(v18 - 32);
    v43 = a1;
    result = 0;
    v23 = 0;
    v24 = (63 - v20) >> 6;
    v25 = 1;
    while (v22)
    {
LABEL_14:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v23;
      v30 = v28 | (v23 << 6);
      v31 = v52;
      v32 = *(v52 + 48);
      v33 = v32 + *(*(v50(0) - 8) + 72) * v30;
      v34 = v46;
      sub_23C600748(v33, v46, v51);
      v35 = *(*(v31 + 56) + 8 * v30);
      v36 = v48;
      *(v34 + *(v47 + 48)) = v35;
      v37 = v34;
      v38 = v45;
      a1 = v49;
      sub_23C60C610(v37, v45, v36, v49);
      sub_23C60C610(v38, a2, v36, a1);
      if (v25 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v44 + 72);
      result = v25;
      v39 = __OFADD__(v25++, 1);
      v23 = v29;
      if (v39)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v26 = v23;
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v27 >= v24)
      {
        break;
      }

      v22 = *(v18 + 8 * v27);
      ++v26;
      if (v22)
      {
        v23 = v27;
        goto LABEL_14;
      }
    }

    v22 = 0;
    if (v24 <= v23 + 1)
    {
      v40 = v23 + 1;
    }

    else
    {
      v40 = v24;
    }

    v29 = v40 - 1;
    a3 = result;
LABEL_23:
    v20 = v42;
    a1 = v43;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_23C653340(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_23C653498()
{
  result = qword_27E1FBE88;
  if (!qword_27E1FBE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBE88);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_23C653518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23C653560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23C6535CC(uint64_t a1)
{
  v2 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23C653628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SiriTurn.== infix(_:_:)()
{
  v0 = sub_23C870B74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  result = EventGraph.uei.getter();
  if (result)
  {
    v9 = sub_23C62FC3C();

    sub_23C870E24();

    result = EventGraph.uei.getter();
    if (result)
    {
      v10 = sub_23C62FC3C();

      sub_23C870E24();

      v11 = sub_23C870B44();
      v12 = *(v1 + 8);
      v12(v5, v0);
      v12(v7, v0);
      return v11 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23C653858()
{
  result = qword_27E1FBEC8;
  if (!qword_27E1FBEC8)
  {
    type metadata accessor for SiriTurn();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1FBEC8);
  }

  return result;
}

void sub_23C6538B0()
{
  v0 = sub_23C6539CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94B8, &unk_23C87AB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C873D10;
  *(inited + 32) = v0;
  v2 = inited + 32;
  *(inited + 40) = 0;
  v3 = sub_23C598D8C(inited);
  swift_setDeallocating();
  sub_23C5FEF44(v2);
  v4 = type metadata accessor for EventFilter();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___ISEventFilter_filter] = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  v6 = objc_msgSendSuper2(&v9, sel_init);
  if (qword_2814FB040 != -1)
  {
    swift_once();
  }

  v7 = qword_2814FB470;
  v8 = _s26AIMLInstrumentationStreams11EventFilterC1poiyA2C_ACtFZ_0(v6, v7);

  qword_2814FB468 = v8;
}

unint64_t sub_23C6539CC()
{
  result = qword_27E1F9CE8;
  if (!qword_27E1F9CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1F9CE8);
  }

  return result;
}

unint64_t SiriTurn.performanceRepresentation()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E20, &qword_23C875070);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23C87C070;
  *&v59[0] = 7631475;
  *(&v59[0] + 1) = 0xE300000000000000;
  sub_23C871CB4();
  sub_23C6197CC(v32);
  v1 = sub_23C616A44();
  sub_23C61FD68(v32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9E58, &qword_23C875098);
  *(v0 + 96) = v2;
  *(v0 + 72) = v1;
  strcpy(v59, "srtMedoc");
  BYTE9(v59[0]) = 0;
  WORD5(v59[0]) = 0;
  HIDWORD(v59[0]) = -402653184;
  sub_23C871CB4();
  sub_23C617180(v33);
  v3 = sub_23C616A44();
  sub_23C61FD68(v33);
  *(v0 + 168) = v2;
  *(v0 + 144) = v3;
  *&v59[0] = 0xD000000000000014;
  *(&v59[0] + 1) = 0x800000023C8AA6C0;
  sub_23C871CB4();
  sub_23C6171A4(v34);
  v4 = sub_23C616A44();
  sub_23C61FD68(v34);
  *(v0 + 240) = v2;
  *(v0 + 216) = v4;
  *&v59[0] = 1919317365;
  *(&v59[0] + 1) = 0xE400000000000000;
  sub_23C871CB4();
  sub_23C619DC0(v35);
  v5 = sub_23C616A44();
  sub_23C61FD68(v35);
  *(v0 + 312) = v2;
  *(v0 + 288) = v5;
  strcpy(v59, "uufrMedoc");
  WORD5(v59[0]) = 0;
  HIDWORD(v59[0]) = -385875968;
  sub_23C871CB4();
  sub_23C6171D8(v36);
  v6 = sub_23C616A44();
  sub_23C61FD68(v36);
  *(v0 + 384) = v2;
  *(v0 + 360) = v6;
  *&v59[0] = 6582373;
  *(&v59[0] + 1) = 0xE300000000000000;
  sub_23C871CB4();
  sub_23C61A2EC(v37);
  v7 = sub_23C616A44();
  sub_23C61FD68(v37);
  *(v0 + 456) = v2;
  *(v0 + 432) = v7;
  strcpy(v59, "epdMedoc");
  BYTE9(v59[0]) = 0;
  WORD5(v59[0]) = 0;
  HIDWORD(v59[0]) = -402653184;
  sub_23C871CB4();
  sub_23C6174F0(v38);
  v8 = sub_23C616A44();
  sub_23C61FD68(v38);
  *(v0 + 528) = v2;
  *(v0 + 504) = v8;
  strcpy(v59, "asrAudioLag");
  HIDWORD(v59[0]) = -352321536;
  sub_23C871CB4();
  sub_23C61ABE4(v39);
  v9 = sub_23C616A44();
  sub_23C61FD68(v39);
  *(v0 + 600) = v2;
  *(v0 + 576) = v9;
  *&v59[0] = 0xD000000000000010;
  *(&v59[0] + 1) = 0x800000023C8AA6E0;
  sub_23C871CB4();
  sub_23C61792C(v40);
  v10 = sub_23C616A44();
  sub_23C61FD68(v40);
  *(v0 + 672) = v2;
  *(v0 + 648) = v10;
  strcpy(v59, "asrTime");
  *(&v59[0] + 1) = 0xE700000000000000;
  sub_23C871CB4();
  sub_23C61B530(v41);
  v11 = sub_23C616A44();
  sub_23C61FD68(v41);
  *(v0 + 744) = v2;
  *(v0 + 720) = v11;
  strcpy(v59, "asrTimeMedoc");
  BYTE13(v59[0]) = 0;
  HIWORD(v59[0]) = -5120;
  sub_23C871CB4();
  sub_23C617960(v42);
  v12 = sub_23C616A44();
  sub_23C61FD68(v42);
  *(v0 + 816) = v2;
  *(v0 + 792) = v12;
  strcpy(v59, "nlxTime");
  *(&v59[0] + 1) = 0xE700000000000000;
  sub_23C871CB4();
  sub_23C61BC44(v43);
  v13 = sub_23C616A44();
  sub_23C61FD68(v43);
  *(v0 + 888) = v2;
  *(v0 + 864) = v13;
  strcpy(v59, "nlxTimeMedoc");
  BYTE13(v59[0]) = 0;
  HIWORD(v59[0]) = -5120;
  sub_23C871CB4();
  sub_23C617CA0(v44);
  v14 = sub_23C616A44();
  sub_23C61FD68(v44);
  *(v0 + 960) = v2;
  *(v0 + 936) = v14;
  strcpy(v59, "execution");
  WORD5(v59[0]) = 0;
  HIDWORD(v59[0]) = -385875968;
  sub_23C871CB4();
  sub_23C61BF44(v45);
  v15 = sub_23C616A44();
  sub_23C61FD68(v45);
  *(v0 + 1032) = v2;
  *(v0 + 1008) = v15;
  strcpy(v59, "executionMedoc");
  HIBYTE(v59[0]) = -18;
  sub_23C871CB4();
  sub_23C618100(v46);
  v16 = sub_23C616A44();
  sub_23C61FD68(v46);
  *(v0 + 1104) = v2;
  *(v0 + 1080) = v16;
  strcpy(v59, "userSpeech");
  BYTE11(v59[0]) = 0;
  HIDWORD(v59[0]) = -369098752;
  sub_23C871CB4();
  sub_23C61C410(v47);
  v17 = sub_23C616A44();
  sub_23C61FD68(v47);
  *(v0 + 1176) = v2;
  *(v0 + 1152) = v17;
  *&v59[0] = 0x6565705372657375;
  *(&v59[0] + 1) = 0xEF636F64654D6863;
  sub_23C871CB4();
  sub_23C6188D8(v48);
  v18 = sub_23C616A44();
  sub_23C61FD68(v48);
  *(v0 + 1248) = v2;
  *(v0 + 1224) = v18;
  *&v59[0] = 0xD000000000000012;
  *(&v59[0] + 1) = 0x800000023C8AA700;
  sub_23C871CB4();
  sub_23C61C45C(v49);
  v19 = sub_23C616A44();
  sub_23C61FD68(v49);
  *(v0 + 1320) = v2;
  *(v0 + 1296) = v19;
  *&v59[0] = 0xD000000000000017;
  *(&v59[0] + 1) = 0x800000023C8AA720;
  sub_23C871CB4();
  sub_23C61891C(v50);
  v20 = sub_23C616A44();
  sub_23C61FD68(v50);
  *(v0 + 1392) = v2;
  *(v0 + 1368) = v20;
  strcpy(v59, "asrEager");
  BYTE9(v59[0]) = 0;
  WORD5(v59[0]) = 0;
  HIDWORD(v59[0]) = -402653184;
  sub_23C871CB4();
  sub_23C61CC78(v51);
  v21 = sub_23C616A44();
  sub_23C61FD68(v51);
  *(v0 + 1464) = v2;
  *(v0 + 1440) = v21;
  strcpy(v59, "asrEagerMedoc");
  HIWORD(v59[0]) = -4864;
  sub_23C871CB4();
  sub_23C618ED0(v52);
  v22 = sub_23C616A44();
  sub_23C61FD68(v52);
  *(v0 + 1536) = v2;
  *(v0 + 1512) = v22;
  *&v59[0] = 0x68636E75616CLL;
  *(&v59[0] + 1) = 0xE600000000000000;
  sub_23C871CB4();
  sub_23C61D554(v53);
  v23 = sub_23C616A44();
  sub_23C61FD68(v53);
  *(v0 + 1608) = v2;
  *(v0 + 1584) = v23;
  strcpy(v59, "uiRender");
  BYTE9(v59[0]) = 0;
  WORD5(v59[0]) = 0;
  HIDWORD(v59[0]) = -402653184;
  sub_23C871CB4();
  sub_23C61DEBC(v54);
  v24 = sub_23C616A44();
  sub_23C61FD68(v54);
  *(v0 + 1680) = v2;
  *(v0 + 1656) = v24;
  strcpy(v59, "ttsWait");
  *(&v59[0] + 1) = 0xE700000000000000;
  sub_23C871CB4();
  sub_23C61E3E4(v55);
  v25 = sub_23C616A44();
  sub_23C61FD68(v55);
  *(v0 + 1752) = v2;
  *(v0 + 1728) = v25;
  strcpy(v59, "asrInitTime");
  HIDWORD(v59[0]) = -352321536;
  sub_23C871CB4();
  sub_23C61E96C(v56);
  v26 = sub_23C616A44();
  sub_23C61FD68(v56);
  *(v0 + 1824) = v2;
  *(v0 + 1800) = v26;
  strcpy(v59, "asrLoadTime");
  HIDWORD(v59[0]) = -352321536;
  sub_23C871CB4();
  sub_23C61E98C(v57);
  v27 = sub_23C616A44();
  sub_23C61FD68(v57);
  *(v0 + 1896) = v2;
  *(v0 + 1872) = v27;
  strcpy(v59, "selectedRcTime");
  HIBYTE(v59[0]) = -18;
  sub_23C871CB4();
  sub_23C61F2D0(v58);
  v28 = sub_23C616A44();
  sub_23C61FD68(v58);
  *(v0 + 1968) = v2;
  *(v0 + 1944) = v28;
  strcpy(v59, "audioStop");
  WORD5(v59[0]) = 0;
  HIDWORD(v59[0]) = -385875968;
  sub_23C871CB4();
  sub_23C61F640(v59);
  v29 = sub_23C616A44();
  sub_23C61FD68(v59);
  *(v0 + 2040) = v2;
  *(v0 + 2016) = v29;
  v30 = sub_23C598B20(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C28, &unk_23C87AB40);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v30;
}

id SiriTurn.init(eventGraph:)(char *a1)
{
  if (j___s26AIMLInstrumentationStreams10EventGraphC3ueiAA14ComponentGroupCySo014SISchemaClientC0CGSgvg())
  {

    v16 = OBJC_IVAR___ISEventGraph_eventsInternal;
    v2 = *&a1[OBJC_IVAR___ISEventGraph_eventsInternal];
    if (v2 >> 62)
    {
LABEL_31:
      v3 = sub_23C871C34();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = a1;

    if (v3)
    {
      v4 = 0;
      v18 = MEMORY[0x277D84F90];
      do
      {
        v5 = v4;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x23EED7610](v5, v2);
            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v6 = *(v2 + 8 * v5 + 32);

            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
LABEL_29:
              __break(1u);
LABEL_30:
              __break(1u);
              goto LABEL_31;
            }
          }

          a1 = *(v6 + 24);
          sub_23C5A3FDC(0, &qword_27E1F9CF0, 0x277D5A928);
          v7 = sub_23C870D44();
          if (v7)
          {
            break;
          }

          ++v5;
          if (v4 == v3)
          {
            goto LABEL_24;
          }
        }

        v8 = *(v6 + 16);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_23C5845FC(0, *(v18 + 2) + 1, 1, v18);
        }

        v10 = *(v18 + 2);
        v9 = *(v18 + 3);
        a1 = (v10 + 1);
        if (v10 >= v9 >> 1)
        {
          v18 = sub_23C5845FC((v9 > 1), v10 + 1, 1, v18);
        }

        *(v18 + 2) = a1;
        *&v18[8 * v10 + 32] = v8;
      }

      while (v4 != v3);
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

LABEL_24:

    if (*(v18 + 2))
    {
      v12 = (v18 + 32);
    }

    else
    {
      v12 = &v17[OBJC_IVAR___ISEventGraph_timestamp];
    }

    v13 = *v12;

    v14 = *&v17[v16];

    v11 = EventGraph.init(timestamp:events:)(v13);
  }

  else
  {

    type metadata accessor for SiriTurn();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

void sub_23C654864()
{
  if (EventGraph.uei.getter())
  {
    v0 = sub_23C62FC3C();

    sub_23C870E24();
  }

  else
  {
    __break(1u);
  }
}

double sub_23C654918()
{
  result = COERCE_DOUBLE(sub_23C654940());
  if (v1)
  {
    return 0.0;
  }

  return result;
}

void *sub_23C654940()
{
  v1 = v0;
  v49 = sub_23C870B74();
  v2 = *(v49 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v49);
  v48 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v45 - v6;
  v8 = sub_23C5A3FDC(0, &qword_27E1F9CF0, 0x277D5A928);
  v9 = sub_23C600CA0();
  if (*(v9 + 16) && (v10 = sub_23C5FF958(v8), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_23C601CF4(v12);

  if (v13 >> 62)
  {
    goto LABEL_32;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:

LABEL_53:
    *&result = 0.0;
    return result;
  }

  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x23EED7610](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_51;
      }

      v14 = *(v13 + 32);
    }

    v50 = v14;

    v15 = sub_23C5A3FDC(0, &qword_27E1FBED0, 0x277D57048);
    v16 = sub_23C600CA0();
    v17 = MEMORY[0x277D84F90];
    if (*(v16 + 16))
    {
      v18 = sub_23C5FF958(v15);
      if (v19)
      {
        v20 = *(*(v16 + 56) + 8 * v18);
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v13 = v1;
    v21 = sub_23C601CF4(v20);

    v51 = v17;
    if (v21 >> 62)
    {
      break;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_36;
    }

LABEL_17:
    v23 = 0;
    v47 = v21 & 0xC000000000000001;
    v45[1] = v15;
    v46 = v21 & 0xFFFFFFFFFFFFFF8;
    v1 = v2 + 1;
    while (1)
    {
      if (v47)
      {
        v24 = MEMORY[0x23EED7610](v23, v21);
      }

      else
      {
        if (v23 >= *(v46 + 16))
        {
          goto LABEL_31;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v2 = v24;
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      *&result = COERCE_DOUBLE(sub_23C870CF4());
      if (*&result == 0.0)
      {
        goto LABEL_56;
      }

      v27 = result;
      sub_23C870D94();

      *&result = COERCE_DOUBLE(sub_23C870CF4());
      if (*&result == 0.0)
      {
        goto LABEL_57;
      }

      v28 = result;
      v29 = v48;
      sub_23C870D94();

      v13 = sub_23C870B44();
      v30 = *v1;
      v31 = v29;
      v32 = v49;
      (*v1)(v31, v49);
      v30(v7, v32);
      if (v13)
      {
        v13 = &v51;
        sub_23C871D54();
        v33 = *(v51 + 16);
        sub_23C871D94();
        sub_23C871DA4();
        sub_23C871D64();
      }

      else
      {
      }

      ++v23;
      if (v25 == v22)
      {
        v13 = v51;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    if (!sub_23C871C34())
    {
      goto LABEL_33;
    }
  }

  v22 = sub_23C871C34();
  if (v22)
  {
    goto LABEL_17;
  }

LABEL_36:
  v13 = MEMORY[0x277D84F90];
LABEL_37:
  *&result = COERCE_DOUBLE();
  if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
  {
    if (*(v13 + 16))
    {
      goto LABEL_40;
    }

LABEL_52:

    goto LABEL_53;
  }

LABEL_51:
  *&result = COERCE_DOUBLE(sub_23C871C34());
  if (*&result == 0.0)
  {
    goto LABEL_52;
  }

LABEL_40:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x23EED7610](0, v13);
LABEL_43:
    v35 = v34;

    v36 = sub_23C870D44();
    if (!v36)
    {

      goto LABEL_53;
    }

    v37 = v36;
    [v36 timeIntervalSince1970];
    v39 = v38;
    if (v38 < 100.0)
    {

      goto LABEL_53;
    }

    *&result = COERCE_DOUBLE(sub_23C870CF4());
    if (*&result == 0.0)
    {
      goto LABEL_58;
    }

    v40 = result;
    v41 = sub_23C870DD4();

    *&result = COERCE_DOUBLE(sub_23C870CF4());
    if (*&result != 0.0)
    {
      v42 = result;
      v43 = v41;
      v44 = sub_23C870DD4();

      *&result = v39 + (v43 - v44) / 1000000000.0;
      return result;
    }
  }

  else
  {
    if (*(v13 + 16))
    {
      v34 = *(v13 + 32);
      goto LABEL_43;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23C654F90@<X0>(unint64_t a1@<X8>)
{
  result = EventGraph.uei.getter();
  if (result)
  {
    ComponentGroup<>.previousTurnId.getter(a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SiriTurn.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriTurn();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23C655040()
{
  v1 = *v0;
  if (EventGraph.uei.getter())
  {
    v2 = sub_23C62FC3C();

    sub_23C870E24();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23C65537C()
{
  v0 = SiriTurn.flow.getter();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
    v34 = MEMORY[0x277D84F90];
    swift_beginAccess();
    v3 = *(v2 + 16);
    if (v3 >> 62)
    {
      if (v3 < 0)
      {
        v32 = *(v2 + 16);
      }

      v4 = sub_23C871C34();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x23EED7610](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        sub_23C5A3FDC(0, &qword_27E1FBF38, 0x277D57710);
        v1 = v7;
        v9 = sub_23C870D44();
        if (v9)
        {
          v1 = v9;
          v10 = [v9 flowState];
          if (v10)
          {
            v11 = v10;

            sub_23C871D54();
            v12 = *(v34 + 16);
            sub_23C871D94();
            sub_23C871DA4();
            v1 = &v34;
            sub_23C871D64();
          }

          else
          {
          }
        }

        else
        {
        }

        ++v5;
        if (v8 == v4)
        {
          v13 = v34;
          v1 = MEMORY[0x277D84F90];
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v13 = v1;
LABEL_19:

    v34 = v1;
    if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
    {
      v14 = sub_23C871C34();
      if (v14)
      {
LABEL_22:
        v15 = 0;
        v16 = v13 & 0xC000000000000001;
        v17 = &qword_27E1FBF18;
        v33 = v14;
        while (1)
        {
          if (v16)
          {
            v18 = MEMORY[0x23EED7610](v15, v13);
          }

          else
          {
            if (v15 >= *(v13 + 16))
            {
              goto LABEL_50;
            }

            v18 = *(v13 + 8 * v15 + 32);
          }

          v19 = v18;
          v20 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          sub_23C5A3FDC(0, v17, 0x277D57500);
          v1 = v19;
          v21 = sub_23C870D44();
          if (v21)
          {
            v1 = v21;
            v22 = [v21 flowStep];
            if (v22)
            {
              v23 = v16;
              v24 = v17;
              v25 = v22;
              v26 = [v22 flowState];

              if (v26)
              {
                v27 = [v26 flowStateType];

                if (v27 == 142)
                {
                  sub_23C871D54();
                  v28 = *(v34 + 16);
                  sub_23C871D94();
                  sub_23C871DA4();
                  v1 = &v34;
                  sub_23C871D64();
                }

                else
                {
                }
              }

              else
              {
              }

              v17 = v24;
              v16 = v23;
              v14 = v33;
            }

            else
            {
            }
          }

          else
          {
          }

          ++v15;
          if (v20 == v14)
          {
            v1 = v34;
            goto LABEL_40;
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        result = sub_23C871C34();
        if (!result)
        {
          goto LABEL_52;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v14 = *(v13 + 16);
      if (v14)
      {
        goto LABEL_22;
      }
    }

LABEL_40:
  }

  if (v1 >> 62)
  {
    goto LABEL_51;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_52:

    return 0;
  }

LABEL_43:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x23EED7610](0, v1);
    goto LABEL_46;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v1 + 32);
LABEL_46:
    v31 = v30;

    return v31;
  }

  __break(1u);
  return result;
}

unint64_t ANCSchemaANCClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = 1701736302;
  if (a1 == 2)
  {
    v1 = 0xD000000000000014;
  }

  if (a1 == 3)
  {
    v1 = 0xD000000000000015;
  }

  if (a1 == 4)
  {
    return 0xD000000000000019;
  }

  else
  {
    return v1;
  }
}

unint64_t ASRSchemaASRClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = a1 - 101;
  result = 0x4374616568657270;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x4374736575716572;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
    case 8:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
    case 29:
      result = 0xD000000000000014;
      break;
    case 6:
    case 9:
    case 19:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 10:
    case 21:
      result = 0xD000000000000024;
      break;
    case 11:
    case 12:
    case 27:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0xD000000000000028;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
    case 17:
    case 36:
      result = 0xD00000000000001DLL;
      break;
    case 16:
    case 24:
    case 34:
      result = 0xD000000000000018;
      break;
    case 18:
    case 30:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0xD000000000000023;
      break;
    case 22:
      result = 0xD00000000000001BLL;
      break;
    case 23:
      result = 0xD00000000000001CLL;
      break;
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 26:
    case 32:
      result = 0xD00000000000001FLL;
      break;
    case 28:
      result = 0xD00000000000002BLL;
      break;
    case 31:
      result = 0xD000000000000027;
      break;
    case 33:
      result = 0xD000000000000039;
      break;
    case 35:
      result = 0xD000000000000030;
      break;
    case 37:
      result = 0xD00000000000002DLL;
      break;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

unint64_t CNVSchemaCNVClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = a1 - 2;
  result = 0x776F6C46646E6966;
  switch(v1)
  {
    case 0:
    case 6:
      result = 0xD000000000000018;
      break;
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 3:
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
    case 17:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      return result;
    case 12:
    case 15:
    case 16:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

unint64_t SISchemaClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = a1 - 101;
  result = 0x697461636F766E69;
  switch(v1)
  {
    case 0:
    case 32:
    case 61:
      result = 0xD000000000000018;
      break;
    case 1:
    case 4:
    case 29:
      result = 0xD000000000000012;
      break;
    case 2:
    case 19:
    case 28:
    case 43:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 5:
    case 34:
      result = 0xD000000000000010;
      break;
    case 6:
      return result;
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 8:
      result = 0x74754F68636E7570;
      break;
    case 10:
      result = 0x65754369726973;
      break;
    case 11:
      result = 0x7365725072667575;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
    case 15:
    case 42:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x70536F5474786574;
      break;
    case 16:
      result = 0x6C46746E65696C63;
      break;
    case 17:
      result = 0x754F676F6C616964;
      break;
    case 18:
    case 37:
    case 63:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0xD00000000000001CLL;
      break;
    case 21:
    case 38:
      result = 0xD00000000000001ELL;
      break;
    case 22:
      result = 0xD000000000000016;
      break;
    case 23:
      result = 0x706D6F4372667575;
      break;
    case 24:
    case 47:
      result = 0x776F685372667575;
      break;
    case 25:
      result = 0x6469615372667575;
      break;
    case 26:
      result = 0x6174614672667575;
      break;
    case 27:
    case 44:
      result = 0xD00000000000001BLL;
      break;
    case 30:
    case 33:
    case 62:
      result = 0xD000000000000019;
      break;
    case 31:
      result = 0xD000000000000016;
      break;
    case 35:
      result = 0xD000000000000016;
      break;
    case 36:
      result = 0x5252465555696575;
      break;
    case 39:
    case 52:
    case 60:
      result = 0xD000000000000021;
      break;
    case 40:
      result = 0x6C61746146726E70;
      break;
    case 41:
      result = 0x5245544D6E727574;
      break;
    case 45:
    case 51:
    case 55:
      result = 0xD000000000000022;
      break;
    case 46:
      result = 0xD000000000000016;
      break;
    case 49:
    case 50:
    case 54:
      result = 0xD000000000000020;
      break;
    case 53:
    case 56:
      result = 0xD00000000000001DLL;
      break;
    case 57:
      result = 0x656C655372667575;
      break;
    case 58:
      result = 0xD000000000000028;
      break;
    case 59:
      result = 0xD000000000000016;
      break;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

unint64_t DIMSchemaDIMClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = 1701736302;
  if (a1 == 101)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 == 102)
  {
    return 0xD000000000000016;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_23C6563D4()
{
  v1 = 1701736302;
  if (*v0 == 101)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 == 102)
  {
    return 0xD000000000000016;
  }

  else
  {
    return v1;
  }
}

uint64_t FLOWSchemaFLOWClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  if (a1 <= 104)
  {
    if (a1 <= 102)
    {
      if (a1 == 101)
      {
        return 0x70657453776F6C66;
      }

      if (a1 == 102)
      {
        return 0xD000000000000016;
      }

      return 1701736302;
    }

    if (a1 == 103)
    {
      return 0xD00000000000001ALL;
    }

    return 0xD000000000000023;
  }

  if (a1 > 106)
  {
    if (a1 != 107)
    {
      if (a1 == 108)
      {
        return 0xD00000000000001ALL;
      }

      return 1701736302;
    }

    return 0xD000000000000023;
  }

  if (a1 == 105)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

unint64_t MHSchemaMHClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = a1 - 100;
  result = 0x746E696F70646E65;
  switch(v1)
  {
    case 0:
    case 17:
      result = 0xD00000000000002FLL;
      break;
    case 1:
    case 18:
      result = 0xD00000000000002ELL;
      break;
    case 2:
    case 12:
      result = 0xD00000000000002DLL;
      break;
    case 3:
    case 5:
    case 54:
      result = 0xD00000000000001FLL;
      break;
    case 4:
    case 34:
      result = 0xD000000000000018;
      break;
    case 6:
    case 14:
      result = 0xD000000000000024;
      break;
    case 7:
    case 8:
      result = 0xD000000000000022;
      break;
    case 9:
      result = 0xD000000000000029;
      break;
    case 10:
      result = 0xD000000000000028;
      break;
    case 11:
      result = 0xD00000000000002BLL;
      break;
    case 13:
    case 48:
      result = 0xD000000000000025;
      break;
    case 15:
      result = 0xD000000000000031;
      break;
    case 16:
      result = 0xD000000000000026;
      break;
    case 19:
      result = 0xD000000000000030;
      break;
    case 20:
      result = 0xD000000000000035;
      break;
    case 21:
    case 40:
      result = 0xD000000000000021;
      break;
    case 22:
      result = 0xD00000000000001BLL;
      break;
    case 23:
      result = 0xD00000000000002CLL;
      break;
    case 24:
    case 45:
      result = 0xD000000000000013;
      break;
    case 25:
    case 27:
    case 50:
      result = 0xD000000000000010;
      break;
    case 26:
      result = 0xD00000000000001BLL;
      break;
    case 28:
    case 36:
    case 38:
      result = 0xD000000000000019;
      break;
    case 29:
      result = 0xD000000000000017;
      break;
    case 30:
      return result;
    case 31:
    case 42:
      result = 0xD000000000000014;
      break;
    case 32:
      result = 0xD00000000000001DLL;
      break;
    case 33:
    case 39:
      result = 0xD00000000000001CLL;
      break;
    case 35:
      result = 0xD00000000000001BLL;
      break;
    case 37:
      result = 0xD000000000000020;
      break;
    case 41:
      result = 0x6375446F69647561;
      break;
    case 43:
      result = 0xD000000000000016;
      break;
    case 44:
      result = 0x7461657243707274;
      break;
    case 46:
      result = 0xD000000000000012;
      break;
    case 47:
    case 55:
      result = 0xD000000000000015;
      break;
    case 49:
      result = 0xD00000000000001ALL;
      break;
    case 51:
      result = 0x6572506E776F7263;
      break;
    case 52:
      result = 0x6767697254737472;
      break;
    case 53:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

unint64_t NETSchemaNETClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = 1701736302;
  if (a1 <= 104)
  {
    v3 = 0xD000000000000026;
    v4 = 0xD000000000000017;
    if (a1 != 104)
    {
      v4 = 1701736302;
    }

    if (a1 != 103)
    {
      v3 = v4;
    }

    if (a1 == 102)
    {
      v1 = 0xD000000000000021;
    }

    if (a1 == 101)
    {
      v1 = 0xD000000000000022;
    }

    if (a1 <= 102)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 <= 106)
  {
    if (a1 == 106)
    {
      v1 = 0xD000000000000031;
    }

    if (a1 == 105)
    {
      return 0xD000000000000014;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    if (a1 == 109)
    {
      v1 = 0xD000000000000030;
    }

    if (a1 == 108)
    {
      v1 = 0xD00000000000002BLL;
    }

    if (a1 == 107)
    {
      return 0xD000000000000036;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t NLXSchemaNLXClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = a1 - 101;
  result = 0x70757465536D6463;
  switch(v1)
  {
    case 0:
    case 1:
    case 34:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
    case 5:
    case 9:
    case 28:
      result = 0xD000000000000014;
      break;
    case 4:
    case 15:
      result = 0xD000000000000010;
      break;
    case 6:
    case 8:
      result = 0xD000000000000017;
      break;
    case 7:
    case 17:
    case 19:
    case 38:
      result = 0xD00000000000001ELL;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
    case 13:
    case 25:
    case 37:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    case 14:
    case 16:
    case 18:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 0xD000000000000015;
      break;
    case 21:
    case 39:
      result = 0xD00000000000001ALL;
      break;
    case 22:
    case 33:
      result = 0xD000000000000023;
      break;
    case 23:
      result = 0xD000000000000022;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 26:
    case 32:
      result = 0xD000000000000024;
      break;
    case 27:
      result = 0xD00000000000001CLL;
      break;
    case 29:
      result = 0xD00000000000001DLL;
      break;
    case 30:
      result = 0xD000000000000016;
      break;
    case 31:
    case 36:
      result = 0xD00000000000001BLL;
      break;
    case 35:
      result = 0xD000000000000015;
      break;
    case 40:
      return result;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

unint64_t ORCHSchemaORCHClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = a1 - 101;
  result = 0x4374736575716572;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      v3 = 5;
      goto LABEL_8;
    case 5:
    case 11:
    case 19:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6143746C75736572;
      break;
    case 7:
      result = 0x6553746C75736572;
      break;
    case 8:
    case 10:
    case 13:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x6C62616C69617661;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 14:
    case 23:
      result = 0xD000000000000017;
      break;
    case 15:
    case 22:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x6C616E6946707274;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
    case 21:
      result = 0xD00000000000001CLL;
      break;
    case 20:
      result = 0xD000000000000014;
      break;
    case 24:
      v3 = 10;
LABEL_8:
      result = v3 | 0xD000000000000010;
      break;
    default:
      result = 1701736302;
      break;
  }

  return result;
}

unint64_t POMMESSchemaPOMMESClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  v1 = 1701736302;
  if (a1 <= 105)
  {
    if (a1 == 105)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 1701736302;
    }

    if (a1 == 104)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = v3;
    }

    if (a1 == 103)
    {
      v4 = 0xD000000000000024;
    }

    if (a1 == 102)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (a1 == 101)
    {
      v1 = 0xD000000000000015;
    }

    if (a1 <= 102)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }

  else if (a1 > 108)
  {
    if (a1 == 111)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 == 110)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 == 109)
    {
      return 0xD000000000000012;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    if (a1 == 108)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 == 107)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 == 106)
    {
      return 0xD00000000000001FLL;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t RFSchemaRFClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  if (a1 > 102)
  {
    if (a1 != 103)
    {
      if (a1 == 104)
      {
        return 0xD000000000000017;
      }

      return 1701736302;
    }

    return 0x6E656E6F706D6F63;
  }

  else
  {
    if (a1 != 101)
    {
      if (a1 == 102)
      {
        return 0xD000000000000014;
      }

      return 1701736302;
    }

    return 0x456E726574746170;
  }
}

uint64_t RRSchemaRRClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0x6F4372656C6C7570;
      }

      return 1701736302;
    }

    return 0x6172476F73557272;
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0xD000000000000018;
      }

      return 1701736302;
    }

    return 0xD000000000000012;
  }
}

uint64_t SICSchemaSICClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  if (a1 == 101)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 1701736302;
  }
}

unint64_t sub_23C65767C()
{
  if (*v0 == 101)
  {
    result = 0xD00000000000001BLL;
  }

  else
  {
    result = 1701736302;
  }

  *v0;
  return result;
}

uint64_t TTSSchemaTTSClientEvent_WhichEvent_Type.description.getter(uint64_t a1)
{
  if (a1 <= 102)
  {
    if (a1 == 101)
    {
      return 0x6F43686365657073;
    }

    if (a1 == 102)
    {
      return 0x5274736575716572;
    }
  }

  else
  {
    switch(a1)
    {
      case 'g':
        return 0xD000000000000014;
      case 'h':
        return 0xD000000000000015;
      case 'i':
        return 0xD000000000000010;
    }
  }

  return 1701736302;
}

Swift::String __swiftcall SpanGraphNode.description(level:startTime:prefix:)(Swift::Int level, Swift::Double startTime, Swift::String prefix)
{
  object = prefix._object;
  countAndFlagsBits = prefix._countAndFlagsBits;
  v88 = level;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v80 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v86 = &v80 - v13;
  v85 = type metadata accessor for TranscriptProtoEvent(0);
  v14 = *(v85 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v85);
  v87 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v3;
  v18 = *(v3 + 32);
  v83 = *(v3 + 24);
  v19 = *(v3 + 40);
  v20 = HIBYTE(object) & 0xF;
  v21 = *(v3 + 48);
  if ((object & 0x2000000000000000) == 0)
  {
    v20 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v82 = *(v3 + 56);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F94F8, &unk_23C87C000);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_23C873D10;
    *(v22 + 32) = countAndFlagsBits;
    *(v22 + 40) = object;
    v89 = v22;
  }

  else
  {
    v89 = MEMORY[0x277D84F90];
  }

  v23 = v86;
  v24 = v87;
  if (!v19)
  {
    goto LABEL_11;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v26 = *(v89 + 2);
    v25 = *(v89 + 3);
    if (v26 >= v25 >> 1)
    {
      v89 = sub_23C5844DC((v25 > 1), v26 + 1, 1, v89);
    }

    v27 = v89;
    *(v89 + 2) = v26 + 1;
    v28 = &v27[16 * v26];
    *(v28 + 4) = v18;
    *(v28 + 5) = v19;
    v24 = v87;
LABEL_11:
    *&v94[0] = v17;

    sub_23C659984(v94);
    v18 = *(*&v94[0] + 16);
    v81 = 0;
    if (v18)
    {
      v29 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v80 = *&v94[0];
      v19 = *&v94[0] + v29;
      v30 = *(v14 + 72);
      v31 = v85;
      v84 = v30;
      do
      {
        sub_23C5A4514(v19, v24);
        sub_23C5855B0(v24 + *(v31 + 44), v10, &qword_27E1F9950, &unk_23C87CFF0);
        v32 = type metadata accessor for TranscriptProtoPayload(0);
        if ((*(*(v32 - 8) + 48))(v10, 1, v32) == 1)
        {
          sub_23C585C34(v10, &qword_27E1F9950, &unk_23C87CFF0);
        }

        else
        {
          sub_23C5855B0(v10, v23, &qword_27E1F9958, &qword_23C873E10);
          sub_23C65E398(v10, type metadata accessor for TranscriptProtoPayload);
          v33 = type metadata accessor for TranscriptProtoPayloadEnum(0);
          if ((*(*(v33 - 8) + 48))(v23, 1, v33) != 1)
          {
            v34 = TranscriptProtoPayloadEnum.eventTypeString.getter();
            v36 = v35;
            sub_23C65E398(v23, type metadata accessor for TranscriptProtoPayloadEnum);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v89 = sub_23C5844DC(0, *(v89 + 2) + 1, 1, v89);
            }

            v24 = v87;
            v37 = v89;
            v39 = *(v89 + 2);
            v38 = *(v89 + 3);
            if (v39 >= v38 >> 1)
            {
              v37 = sub_23C5844DC((v38 > 1), v39 + 1, 1, v89);
            }

            sub_23C65E398(v24, type metadata accessor for TranscriptProtoEvent);
            *(v37 + 2) = v39 + 1;
            v89 = v37;
            v40 = &v37[16 * v39];
            *(v40 + 4) = v34;
            *(v40 + 5) = v36;
            v31 = v85;
            v30 = v84;
            v23 = v86;
            goto LABEL_15;
          }

          sub_23C585C34(v23, &qword_27E1F9958, &qword_23C873E10);
          v24 = v87;
        }

        sub_23C65E398(v24, type metadata accessor for TranscriptProtoEvent);
LABEL_15:
        v19 += v30;
        --v18;
      }

      while (v18);
    }

    v10 = v83;
    if ((v82 & 1) == 0)
    {
      v41 = sub_23C8719C4();
      v43 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_23C5844DC(0, *(v89 + 2) + 1, 1, v89);
      }

      v45 = *(v89 + 2);
      v44 = *(v89 + 3);
      if (v45 >= v44 >> 1)
      {
        v89 = sub_23C5844DC((v44 > 1), v45 + 1, 1, v89);
      }

      v46 = v89;
      *(v89 + 2) = v45 + 1;
      v47 = &v46[16 * v45];
      *(v47 + 4) = v41;
      *(v47 + 5) = v43;
    }

    *&v94[0] = v89;

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
    v49 = sub_23C59502C();
    v86 = v48;
    v85 = v49;
    v14 = sub_23C871704();
    v51 = v50;

    v52 = sub_23C5844DC(0, 1, 1, MEMORY[0x277D84F90]);
    v54 = *(v52 + 2);
    v53 = *(v52 + 3);
    v17 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v52 = sub_23C5844DC((v53 > 1), v54 + 1, 1, v52);
    }

    *(v52 + 2) = v17;
    v55 = &v52[16 * v54];
    *(v55 + 4) = v14;
    *(v55 + 5) = v51;
    v56 = v88;
    if ((v88 - 0x2000000000000000) >> 62 == 3)
    {
      break;
    }

    __break(1u);
LABEL_46:
    v89 = sub_23C5844DC(0, *(v89 + 2) + 1, 1, v89);
  }

  *&v94[0] = sub_23C871834();
  *(&v94[0] + 1) = v57;

  MEMORY[0x23EED7100](0x94E28094E29494E2, 0xA900000000000080);

  v58 = v94[0];
  v87 = *&v94[0];
  v59 = *(v10 + 2);
  if (!v59)
  {
    goto LABEL_36;
  }

  v60 = sub_23C64D460(*(v10 + 2), 0);
  v61 = sub_23C652A50(v94, (v60 + 4), v59, v10);
  v84 = v95;

  sub_23C56EF08();
  if (v61 != v59)
  {
    __break(1u);
LABEL_36:
    v60 = MEMORY[0x277D84F90];
  }

  *&v94[0] = v60;
  v62 = v81;
  sub_23C659A2C(v94, sub_23C648E64, sub_23C659BDC);
  if (v62)
  {

    __break(1u);
  }

  else
  {

    v63 = *(*&v94[0] + 16);
    if (v63)
    {
      v64 = v63 - 1;
      v89 = *&v94[0];
      for (i = (*&v94[0] + 48); ; i += 5)
      {
        v94[0] = *(i - 1);
        v66 = *i;
        v67 = i[1];
        v68 = i[2];
        *&v96[9] = *(i + 41);
        v95 = v67;
        *v96 = v68;
        v94[1] = v66;
        v69 = i[1];
        v91 = *i;
        v92 = v69;
        v93[0] = i[2];
        *(v93 + 9) = *(i + 41);
        sub_23C5855B0(v94, v90, &qword_27E1F9BB0, &qword_23C87D000);
        v70._countAndFlagsBits = v87;
        v70._object = *(&v58 + 1);
        v71 = SpanGraphNode.description(level:startTime:prefix:)(v56 + 1, startTime, v70);
        sub_23C585C34(v94, &qword_27E1F9BB0, &qword_23C87D000);
        v73 = *(v52 + 2);
        v72 = *(v52 + 3);
        if (v73 >= v72 >> 1)
        {
          v52 = sub_23C5844DC((v72 > 1), v73 + 1, 1, v52);
        }

        *(v52 + 2) = v73 + 1;
        *&v52[16 * v73 + 32] = v71;
        if (!v64)
        {
          break;
        }

        --v64;
        v56 = v88;
      }
    }

    *&v94[0] = v52;
    v74 = sub_23C871704();
    v76 = v75;

    v77 = v74;
    v78 = v76;
  }

  result._object = v78;
  result._countAndFlagsBits = v77;
  return result;
}

uint64_t sub_23C658154()
{
  v0 = TranscriptProtoEvent.getEventType()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (v0.value._object)
  {
    object = v0.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  v3 = TranscriptProtoEvent.getEventType()();
  if (v3.value._object)
  {
    v4 = v3.value._countAndFlagsBits;
  }

  else
  {
    v4 = 0;
  }

  if (v3.value._object)
  {
    v5 = v3.value._object;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  if (countAndFlagsBits == v4 && object == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_23C872014();
  }

  return v7 & 1;
}

uint64_t sub_23C6581F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF40, &qword_23C87D088);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v46 - v4);
  v6 = type metadata accessor for TranscriptProtoEvent(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  v14 = *(a1 + 16);
  v49 = a1;
  v53 = v14;
  v51 = v11;
  if (v14)
  {
    v15 = *(v10 + 60);
    v16 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = MEMORY[0x277D84F90];
    v18 = *(v11 + 72);
    v52 = v18;
    do
    {
      sub_23C5A4514(v16, v13);
      sub_23C5855B0(&v13[v15], v5, &qword_27E1FBF40, &qword_23C87D088);
      sub_23C65E398(v13, type metadata accessor for TranscriptProtoEvent);
      v19 = type metadata accessor for TranscriptProtoSpanID(0);
      if ((*(*(v19 - 8) + 48))(v5, 1, v19) == 1)
      {
        sub_23C585C34(v5, &qword_27E1FBF40, &qword_23C87D088);
      }

      else
      {
        v20 = *v5;
        sub_23C65E398(v5, type metadata accessor for TranscriptProtoSpanID);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_23C5845E8(0, *(v17 + 2) + 1, 1, v17);
        }

        v22 = *(v17 + 2);
        v21 = *(v17 + 3);
        if (v22 >= v21 >> 1)
        {
          v17 = sub_23C5845E8((v21 > 1), v22 + 1, 1, v17);
        }

        *(v17 + 2) = v22 + 1;
        *&v17[8 * v22 + 32] = v20;
        v18 = v52;
      }

      v16 += v18;
      --v14;
    }

    while (v14);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v47 = sub_23C596910(v17);

  v23 = v53;
  if (!v53)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_36:
    v41 = sub_23C596910(v26);

    if (*(v41 + 16) <= *(v47 + 16) >> 3)
    {
      v54 = v47;
      sub_23C65D7B4(v41);

      v42 = v54;
    }

    else
    {
      v42 = sub_23C65D8AC(v41, v47);
    }

    v43 = v49;

    v44 = sub_23C65E138(v42, v43);

    swift_bridgeObjectRelease_n();
    result = v48;
    *(v48 + 16) = v44;
    return result;
  }

  v24 = v50;
  v25 = v49 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
  v26 = MEMORY[0x277D84F90];
  v51 = *(v51 + 72);
  while (1)
  {
    sub_23C5A4514(v25, v24);
    v27 = *(v24 + 80);
    v28 = *(v27 + 16);
    if (v28)
    {
      v53 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9500, &qword_23C873A30);
      v29 = swift_allocObject();
      v30 = _swift_stdlib_malloc_size(v29);
      v31 = v30 - 32;
      if (v30 < 32)
      {
        v31 = v30 - 25;
      }

      v29[2] = v28;
      v29[3] = 2 * (v31 >> 3);
      v52 = sub_23C652950(&v54, v29 + 4, v28, v27);

      sub_23C56EF08();
      if (v52 != v28)
      {
        goto LABEL_42;
      }

      v24 = v50;
      v23 = v53;
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    sub_23C65E398(v24, type metadata accessor for TranscriptProtoEvent);
    v32 = v29[2];
    v33 = *(v26 + 2);
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v34 <= *(v26 + 3) >> 1)
    {
      if (v29[2])
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v36 = v33 + v32;
      }

      else
      {
        v36 = v33;
      }

      v26 = sub_23C5845E8(isUniquelyReferenced_nonNull_native, v36, 1, v26);
      if (v29[2])
      {
LABEL_31:
        v37 = *(v26 + 2);
        if ((*(v26 + 3) >> 1) - v37 < v32)
        {
          goto LABEL_43;
        }

        memcpy(&v26[8 * v37 + 32], v29 + 4, 8 * v32);

        if (v32)
        {
          v38 = *(v26 + 2);
          v39 = __OFADD__(v38, v32);
          v40 = v38 + v32;
          if (v39)
          {
            goto LABEL_44;
          }

          *(v26 + 2) = v40;
        }

        goto LABEL_15;
      }
    }

    if (v32)
    {
      goto LABEL_41;
    }

LABEL_15:
    v25 += v51;
    if (!--v23)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  swift_bridgeObjectRelease_n();
  type metadata accessor for SpanGraph();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_23C658780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v157 = a4;
  v156 = a3;
  v161 = a1;
  v155 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF48, &unk_23C8A1140);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v151 = (&v151 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9D08, &qword_23C87D090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v166 = &v151 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1F9D10, &qword_23C874E00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v165 = &v151 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF40, &qword_23C87D088);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = (&v151 - v17);
  v19 = type metadata accessor for TranscriptProtoEvent(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v163 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v151 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v167 = &v151 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v31 = &v151 - v30;
  v32 = *(a2 + 16);
  v160 = v28;
  v158 = v29;
  v159 = a2;
  if (v32)
  {
    v33 = *(v29 + 72);
    v168 = ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v34 = &v168[a2];
    v162 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_23C5A4514(v34, v31);
      sub_23C5855B0(&v31[*(v19 + 60)], v18, &qword_27E1FBF40, &qword_23C87D088);
      v35 = type metadata accessor for TranscriptProtoSpanID(0);
      if ((*(*(v35 - 8) + 48))(v18, 1, v35) == 1)
      {
        sub_23C585C34(v18, &qword_27E1FBF40, &qword_23C87D088);
      }

      else
      {
        v36 = *v18;
        sub_23C65E398(v18, type metadata accessor for TranscriptProtoSpanID);
        if (v36 == v161)
        {
          sub_23C5A3818(v31, v25);
          v37 = v162;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v172 = v37;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_23C592D4C(0, *(v37 + 16) + 1, 1);
            v37 = v172;
          }

          v40 = *(v37 + 16);
          v39 = *(v37 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_23C592D4C(v39 > 1, v40 + 1, 1);
            v37 = v172;
          }

          *(v37 + 16) = v40 + 1;
          v162 = v37;
          sub_23C5A3818(v25, &v168[v37 + v40 * v33]);
          v19 = v160;
          goto LABEL_5;
        }
      }

      sub_23C65E398(v31, type metadata accessor for TranscriptProtoEvent);
LABEL_5:
      v34 += v33;
      if (!--v32)
      {
        goto LABEL_14;
      }
    }
  }

  v162 = MEMORY[0x277D84F90];
LABEL_14:
  v41 = *(v162 + 16);
  v152 = v41;
  if (v41)
  {
    v42 = v166;
    v43 = *(v19 + 52);
    v44 = v162 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
    v168 = MEMORY[0x277D84F90];
    v45 = &qword_27E1F9D08;
    v46 = *(v158 + 72);
    v47 = v167;
    v164 = v46;
    do
    {
      sub_23C5A4514(v44, v47);
      v48 = v47 + v43;
      v49 = v47;
      v50 = v42;
      sub_23C5855B0(v48, v42, v45, &qword_23C87D090);
      v51 = type metadata accessor for TranscriptProtoTimepoint(0);
      if ((*(*(v51 - 8) + 48))(v42, 1, v51) == 1)
      {
        sub_23C65E398(v49, type metadata accessor for TranscriptProtoEvent);
        sub_23C585C34(v42, v45, &qword_23C87D090);
        v47 = v49;
      }

      else
      {
        v52 = v45;
        v53 = v43;
        v54 = v42 + *(v51 + 28);
        v55 = v165;
        sub_23C5855B0(v54, v165, &unk_27E1F9D10, &qword_23C874E00);
        sub_23C65E398(v50, type metadata accessor for TranscriptProtoTimepoint);
        v56 = sub_23C870EC4();
        v57 = *(v56 - 8);
        if ((*(v57 + 48))(v55, 1, v56) == 1)
        {
          v58 = v55;
          v59 = v167;
          sub_23C65E398(v167, type metadata accessor for TranscriptProtoEvent);
          sub_23C585C34(v58, &unk_27E1F9D10, &qword_23C874E00);
          v43 = v53;
          v45 = v52;
          v47 = v59;
          v42 = v166;
          v46 = v164;
        }

        else
        {
          sub_23C870E94();
          v61 = v60;
          sub_23C65E398(v167, type metadata accessor for TranscriptProtoEvent);
          (*(v57 + 8))(v55, v56);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v168 = sub_23C5845FC(0, *(v168 + 2) + 1, 1, v168);
          }

          v43 = v53;
          v45 = v52;
          v63 = *(v168 + 2);
          v62 = *(v168 + 3);
          v46 = v164;
          if (v63 >= v62 >> 1)
          {
            v168 = sub_23C5845FC((v62 > 1), v63 + 1, 1, v168);
          }

          v42 = v166;
          v47 = v167;
          v64 = v168;
          *(v168 + 2) = v63 + 1;
          *&v64[8 * v63 + 32] = v61;
        }
      }

      v44 += v46;
      --v41;
    }

    while (v41);
  }

  else
  {
    v168 = MEMORY[0x277D84F90];
  }

  v154 = sub_23C591B54(v168);
  v153 = v65;

  v66 = *(v162 + 16);
  if (v66)
  {
    *&v172 = MEMORY[0x277D84F90];
    v67 = v162;
    sub_23C592D0C(0, v66, 0);
    v68 = v172;
    v69 = v67 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
    v70 = *(v158 + 72);
    v71 = v163;
    do
    {
      sub_23C5A4514(v69, v71);
      v72 = *(v71 + 80);

      sub_23C65E398(v71, type metadata accessor for TranscriptProtoEvent);
      *&v172 = v68;
      v74 = *(v68 + 16);
      v73 = *(v68 + 24);
      v75 = (v74 + 1);
      if (v74 >= v73 >> 1)
      {
        sub_23C592D0C((v73 > 1), v74 + 1, 1);
        v68 = v172;
      }

      *(v68 + 16) = v75;
      *(v68 + 8 * v74 + 32) = v72;
      v69 += v70;
      --v66;
    }

    while (v66);
  }

  else
  {
    v68 = MEMORY[0x277D84F90];
    v75 = *(MEMORY[0x277D84F90] + 16);
    if (!v75)
    {
LABEL_60:
      v77 = MEMORY[0x277D84F98];
LABEL_61:

      v109 = 0;
      v110 = 1 << *(v77 + 32);
      v111 = -1;
      if (v110 < 64)
      {
        v111 = ~(-1 << v110);
      }

      v112 = v111 & *(v77 + 64);
      v113 = (v110 + 63) >> 6;
      v114 = MEMORY[0x277D84F98];
      if (v112)
      {
        goto LABEL_66;
      }

      while (1)
      {
LABEL_67:
        v122 = v109 + 1;
        if (__OFADD__(v109, 1))
        {
          goto LABEL_93;
        }

        if (v122 >= v113)
        {
          break;
        }

        v112 = *(v77 + 64 + 8 * v122);
        ++v109;
        if (v112)
        {
          while (1)
          {
            v123 = __clz(__rbit64(v112)) | (v122 << 6);
            v124 = (*(v77 + 48) + 16 * v123);
            v126 = *v124;
            v125 = v124[1];
            v127 = *(*(v77 + 56) + 8 * v123);
            type metadata accessor for SpanGraph();
            swift_bridgeObjectRetain_n();
            sub_23C658780(&v172, v127, v159, v126, v125);

            v128 = swift_isUniquelyReferenced_nonNull_native();
            v171 = v114;
            v129 = sub_23C5FF898(v126, v125);
            v131 = v114[2];
            v132 = (v130 & 1) == 0;
            v101 = __OFADD__(v131, v132);
            v133 = v131 + v132;
            if (v101)
            {
              goto LABEL_95;
            }

            v134 = v130;
            if (v114[3] >= v133)
            {
              if ((v128 & 1) == 0)
              {
                v141 = v129;
                sub_23C6453B8();
                v129 = v141;
              }
            }

            else
            {
              sub_23C640DF0(v133, v128);
              v129 = sub_23C5FF898(v126, v125);
              if ((v134 & 1) != (v135 & 1))
              {
                goto LABEL_98;
              }
            }

            v112 &= v112 - 1;
            if (v134)
            {
              v115 = v129;

              v114 = v171;
              v116 = (v171[7] + (v115 << 6));
              v117 = *(v116 + 41);
              v118 = v116[2];
              v119 = *v116;
              v169[1] = v116[1];
              v170[0] = v118;
              *(v170 + 9) = v117;
              v169[0] = v119;
              v120 = *v174;
              v121 = v172;
              v116[1] = v173;
              v116[2] = v120;
              *v116 = v121;
              *(v116 + 41) = *&v174[9];
              sub_23C65D660(v169);
              v109 = v122;
              if (!v112)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v114 = v171;
              v171[(v129 >> 6) + 8] |= 1 << v129;
              v136 = (v114[6] + 16 * v129);
              *v136 = v126;
              v136[1] = v125;
              v137 = (v114[7] + (v129 << 6));
              v138 = v173;
              *v137 = v172;
              v137[1] = v138;
              v137[2] = *v174;
              *(v137 + 41) = *&v174[9];
              v139 = v114[2];
              v101 = __OFADD__(v139, 1);
              v140 = v139 + 1;
              if (v101)
              {
                goto LABEL_96;
              }

              v114[2] = v140;
              v109 = v122;
              if (!v112)
              {
                goto LABEL_67;
              }
            }

LABEL_66:
            v122 = v109;
          }
        }
      }

      if (v157)
      {
        v142 = v156;
      }

      else
      {
        v142 = 0;
      }

      v143 = v157;
      if (!v157)
      {
        v144 = v162;
        if (!v152)
        {
LABEL_90:
          v147 = v155;
          v148 = v161;
          *v155 = v144;
          v147[1] = v148;
          *(v147 + 16) = 0;
          v147[3] = v114;
          v147[4] = v142;
          v149 = v154;
          v147[5] = v143;
          v147[6] = v149;
          *(v147 + 56) = v153 & 1;
        }

        if (!*(v162 + 16))
        {
          goto LABEL_97;
        }

        v145 = v151;
        sub_23C5855B0(v162 + *(v160 + 56) + ((*(v158 + 80) + 32) & ~*(v158 + 80)), v151, &qword_27E1FBF48, &unk_23C8A1140);
        v146 = type metadata accessor for TranscriptProtoParticipantID(0);
        if ((*(*(v146 - 8) + 48))(v145, 1, v146) == 1)
        {
          sub_23C585C34(v145, &qword_27E1FBF48, &unk_23C8A1140);
          v142 = 0;
          v143 = 0;
        }

        else
        {
          v142 = *v145;
          v143 = v145[1];

          sub_23C65E398(v145, type metadata accessor for TranscriptProtoParticipantID);
        }
      }

      v144 = v162;
      goto LABEL_90;
    }
  }

  v76 = 0;
  v165 = v68 + 32;
  v77 = MEMORY[0x277D84F98];
  v164 = v68;
  v163 = v75;
LABEL_36:
  if (v76 >= *(v68 + 16))
  {
    goto LABEL_94;
  }

  v78 = *(v165 + 8 * v76);
  v167 = (v76 + 1);

  v79 = swift_isUniquelyReferenced_nonNull_native();
  *&v172 = v77;
  v80 = v78 + 64;
  v81 = -1 << *(v78 + 32);
  if (-v81 < 64)
  {
    v82 = ~(-1 << -v81);
  }

  else
  {
    v82 = -1;
  }

  v83 = v82 & *(v78 + 64);
  v166 = (-1 << *(v78 + 32));
  v84 = (63 - v81) >> 6;
  v168 = v78;

  v85 = 0;
  while (2)
  {
    if (v83)
    {
      v88 = v77;
      v89 = v79;
      v90 = v85;
      goto LABEL_50;
    }

    v91 = v85;
    do
    {
      v90 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        __break(1u);
        goto LABEL_60;
      }

      if (v90 >= v84)
      {
        sub_23C56EF08();

        v76 = v167;
        v68 = v164;
        if (v167 == v163)
        {
          goto LABEL_61;
        }

        goto LABEL_36;
      }

      v83 = *(v80 + 8 * v90);
      ++v91;
    }

    while (!v83);
    v88 = v77;
    v89 = v79;
LABEL_50:
    v92 = __clz(__rbit64(v83)) | (v90 << 6);
    v93 = (*(v168 + 6) + 16 * v92);
    v95 = *v93;
    v94 = v93[1];
    v96 = *(*(v168 + 7) + 8 * v92);

    v97 = sub_23C5FF898(v95, v94);
    v99 = *(v88 + 16);
    v100 = (v98 & 1) == 0;
    v101 = __OFADD__(v99, v100);
    v102 = v99 + v100;
    if (!v101)
    {
      v103 = v98;
      if (*(v88 + 24) >= v102)
      {
        if ((v89 & 1) == 0)
        {
          v108 = v97;
          sub_23C645568();
          v97 = v108;
        }
      }

      else
      {
        sub_23C641150(v102, v89 & 1);
        v97 = sub_23C5FF898(v95, v94);
        if ((v103 & 1) != (v104 & 1))
        {
          goto LABEL_98;
        }
      }

      v83 &= v83 - 1;
      v77 = v172;
      if (v103)
      {
        v86 = *(*(v172 + 56) + 8 * v97);
        v87 = v97;

        *(*(v77 + 56) + 8 * v87) = v86;
        goto LABEL_42;
      }

      *(v172 + 8 * (v97 >> 6) + 64) |= 1 << v97;
      v105 = (*(v77 + 48) + 16 * v97);
      *v105 = v95;
      v105[1] = v94;
      *(*(v77 + 56) + 8 * v97) = v96;
      v106 = *(v77 + 16);
      v101 = __OFADD__(v106, 1);
      v107 = v106 + 1;
      if (v101)
      {
        goto LABEL_92;
      }

      *(v77 + 16) = v107;
LABEL_42:
      v79 = 1;
      v85 = v90;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  result = sub_23C872064();
  __break(1u);
  return result;
}

uint64_t sub_23C659620()
{
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = (v2 + 88 + (v1 << 6));
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v6 = v5 + 64;
    ++v1;
    v7 = *v5;
    v5 += 64;
    if ((v7 & 1) == 0)
    {
      v8 = *(v6 - 9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_23C5845FC(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_23C5845FC((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      *&v4[8 * v10 + 32] = v8;
      goto LABEL_2;
    }
  }

  v11 = COERCE_DOUBLE(sub_23C591B54(v4));
  v13 = v12;

  if (v13)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v11;
  }

  *&v34[0] = v2;

  sub_23C659A2C(v34, sub_23C648E78, sub_23C659CE4);
  v15 = *&v34[0];
  v16 = *(*&v34[0] + 16);
  if (v16)
  {
    v17 = v16 - 1;
    v18 = MEMORY[0x277D84F90];
    for (i = 32; ; i += 64)
    {
      v20 = *(v15 + i);
      v21 = *(v15 + i + 16);
      v22 = *(v15 + i + 32);
      *&v35[9] = *(v15 + i + 41);
      v34[1] = v21;
      *v35 = v22;
      v34[0] = v20;
      v23 = *(v15 + i + 16);
      v32[4] = *(v15 + i);
      v32[5] = v23;
      v33[0] = *(v15 + i + 32);
      *(v33 + 9) = *(v15 + i + 41);
      sub_23C64BC50(v34, v32);
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      v25 = SpanGraphNode.description(level:startTime:prefix:)(0, v14, v24);
      sub_23C65D660(v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_23C5844DC(0, *(v18 + 2) + 1, 1, v18);
      }

      v27 = *(v18 + 2);
      v26 = *(v18 + 3);
      if (v27 >= v26 >> 1)
      {
        v18 = sub_23C5844DC((v26 > 1), v27 + 1, 1, v18);
      }

      *(v18 + 2) = v27 + 1;
      *&v18[16 * v27 + 32] = v25;
      if (!v17)
      {
        break;
      }

      --v17;
    }
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  *&v34[0] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F98A8, &qword_23C8A6A70);
  sub_23C59502C();
  v28 = sub_23C871704();
  v30 = v29;

  *&v34[0] = 10;
  *(&v34[0] + 1) = 0xE100000000000000;
  MEMORY[0x23EED7100](v28, v30);

  return *&v34[0];
}

uint64_t SpanGraph.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SpanGraph.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23C659984(void **a1)
{
  v2 = *(type metadata accessor for TranscriptProtoEvent(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23C648E14(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_23C659AB0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_23C659A2C(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_23C659AB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23C871FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TranscriptProtoEvent(0);
        v6 = sub_23C8718F4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TranscriptProtoEvent(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23C65A624(v8, v9, a1, v4);
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
    return sub_23C659DDC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23C659BDC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23C871FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BB0, &qword_23C87D000);
        v5 = sub_23C8718F4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23C65B830(v7, v8, a1, v4);
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
    return sub_23C65A440(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23C659CE4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23C871FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_23C8718F4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23C65BE80(v7, v8, a1, v4);
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
    return sub_23C65A550(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23C659DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v69 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v63 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = &v55 - v18;
  v72 = type metadata accessor for TranscriptProtoEvent(0);
  v19 = *(*(v72 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v72);
  v66 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v73 = &v55 - v23;
  result = MEMORY[0x28223BE20](v22);
  v27 = &v55 - v26;
  v57 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v29 = *(v25 + 72);
    v30 = *a4 + v29 * (a3 - 1);
    v64 = -v29;
    v65 = v28;
    v31 = a1 - a3;
    v56 = v29;
    v32 = v28 + v29 * a3;
    v67 = &v55 - v26;
    v68 = v13;
LABEL_6:
    v60 = v30;
    v61 = a3;
    v58 = v32;
    v59 = v31;
    v33 = v31;
    v34 = v69;
    while (1)
    {
      v70 = v33;
      sub_23C5A4514(v32, v27);
      sub_23C5A4514(v30, v73);
      sub_23C5855B0(&v27[*(v72 + 44)], v13, &qword_27E1F9950, &unk_23C87CFF0);
      v35 = type metadata accessor for TranscriptProtoPayload(0);
      v71 = *(*(v35 - 8) + 48);
      if (v71(v13, 1, v35) == 1)
      {
        sub_23C585C34(v13, &qword_27E1F9950, &unk_23C87CFF0);
        v36 = 0;
        v37 = 0xE000000000000000;
      }

      else
      {
        v38 = v62;
        sub_23C5855B0(v13, v62, &qword_27E1F9958, &qword_23C873E10);
        sub_23C65E398(v13, type metadata accessor for TranscriptProtoPayload);
        v39 = type metadata accessor for TranscriptProtoPayloadEnum(0);
        if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
        {
          sub_23C585C34(v38, &qword_27E1F9958, &qword_23C873E10);
          v36 = 0;
          v37 = 0xE000000000000000;
        }

        else
        {
          v40 = TranscriptProtoPayloadEnum.eventTypeString.getter();
          v34 = v69;
          v41 = v38;
          v36 = v40;
          v37 = v42;
          sub_23C65E398(v41, type metadata accessor for TranscriptProtoPayloadEnum);
        }
      }

      sub_23C5855B0(v73 + *(v72 + 44), v34, &qword_27E1F9950, &unk_23C87CFF0);
      if (v71(v34, 1, v35) == 1)
      {
        sub_23C585C34(v34, &qword_27E1F9950, &unk_23C87CFF0);
        v43 = 0xE000000000000000;
        v27 = v67;
        if (v36)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v44 = v63;
        sub_23C5855B0(v34, v63, &qword_27E1F9958, &qword_23C873E10);
        sub_23C65E398(v34, type metadata accessor for TranscriptProtoPayload);
        v45 = type metadata accessor for TranscriptProtoPayloadEnum(0);
        v46 = (*(*(v45 - 8) + 48))(v44, 1, v45);
        v27 = v67;
        if (v46 == 1)
        {
          sub_23C585C34(v44, &qword_27E1F9958, &qword_23C873E10);
          v47 = 0;
          v43 = 0xE000000000000000;
        }

        else
        {
          v48 = TranscriptProtoPayloadEnum.eventTypeString.getter();
          v43 = v49;
          sub_23C65E398(v44, type metadata accessor for TranscriptProtoPayloadEnum);
          v47 = v48;
        }

        if (v36 != v47)
        {
          goto LABEL_20;
        }
      }

      if (v37 == v43)
      {

        sub_23C65E398(v73, type metadata accessor for TranscriptProtoEvent);
        result = sub_23C65E398(v27, type metadata accessor for TranscriptProtoEvent);
        v13 = v68;
LABEL_5:
        a3 = v61 + 1;
        v30 = v60 + v56;
        v31 = v59 - 1;
        v32 = v58 + v56;
        if (v61 + 1 == v57)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_20:
      v50 = sub_23C872014();

      sub_23C65E398(v73, type metadata accessor for TranscriptProtoEvent);
      result = sub_23C65E398(v27, type metadata accessor for TranscriptProtoEvent);
      v13 = v68;
      v34 = v69;
      if ((v50 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v65)
      {
        __break(1u);
        return result;
      }

      v51 = v66;
      sub_23C5A3818(v32, v66);
      swift_arrayInitWithTakeFrontToBack();
      v52 = v51;
      v53 = v70;
      result = sub_23C5A3818(v52, v30);
      v30 += v64;
      v32 += v64;
      v54 = __CFADD__(v53, 1);
      v33 = v53 + 1;
      if (v54)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_23C65A440(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 80 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *v10;
      v11 = (v10 - 80);
      v12 = *v10 == *(v10 - 80) && *(v10 + 8) == *(v10 - 72);
      if (v12 || (result = sub_23C872014(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 80;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v18 = *(v10 + 32);
      *v19 = *(v10 + 48);
      *&v19[9] = *(v10 + 57);
      v16 = *v10;
      v17 = *(v10 + 16);
      v13 = *(v10 - 32);
      *(v10 + 32) = *(v10 - 48);
      *(v10 + 48) = v13;
      *(v10 + 64) = *(v10 - 16);
      v14 = *(v10 - 64);
      *v10 = *v11;
      *(v10 + 16) = v14;
      v10 -= 80;
      *(v11 + 57) = *&v19[9];
      v11[2] = v18;
      v11[3] = *v19;
      *v11 = v16;
      v11[1] = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C65A550(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + (a3 << 6) + 56;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 - 1);
      if (*v8)
      {
        v9 = 0.0;
      }

      if (*(v8 - 8))
      {
        if (v9 >= 0.0)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= *(v8 - 9))
      {
        goto LABEL_4;
      }

      if (!v4)
      {
        break;
      }

      v10 = v8 - 7;
      v12 = v8 - 15;
      v11 = *(v8 - 5);
      *v17 = *(v8 - 3);
      *&v17[9] = *(v8 - 15);
      v13 = *(v8 - 7);
      v14 = *(v8 - 13);
      *v10 = *(v8 - 15);
      *(v10 + 1) = v14;
      v15 = *(v8 - 9);
      *(v10 + 2) = *(v8 - 11);
      *(v10 + 3) = v15;
      *(v12 + 41) = *&v17[9];
      *(v12 + 1) = v11;
      *(v12 + 2) = *v17;
      *v12 = v13;
      v8 -= 8;
      if (__CFADD__(v7++, 1))
      {
LABEL_4:
        ++a3;
        v5 += 64;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C65A624(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v164 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9950, &unk_23C87CFF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v188 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v159 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v176 = &v159 - v16;
  MEMORY[0x28223BE20](v15);
  v175 = &v159 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9958, &qword_23C873E10);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v182 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v181 = &v159 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v168 = &v159 - v25;
  MEMORY[0x28223BE20](v24);
  v167 = &v159 - v26;
  v27 = type metadata accessor for TranscriptProtoEvent(0);
  v177 = *(v27 - 8);
  v28 = *(v177 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v169 = &v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v186 = &v159 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v193 = &v159 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v191 = &v159 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v183 = &v159 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v179 = &v159 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  result = MEMORY[0x28223BE20](v41);
  v178 = a3;
  v45 = *(a3 + 8);
  if (v45 < 1)
  {
    v47 = MEMORY[0x277D84F90];
LABEL_127:
    a3 = *v164;
    if (!*v164)
    {
      goto LABEL_169;
    }

    a4 = v47;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
      goto LABEL_130;
    }

LABEL_163:
    result = sub_23C6473A0(a4);
LABEL_130:
    v194 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v178)
      {
        v155 = *(result + 16 * a4);
        v156 = result;
        v157 = *(result + 16 * (a4 - 1) + 40);
        sub_23C65C4E8(*v178 + *(v177 + 72) * v155, *v178 + *(v177 + 72) * *(result + 16 * (a4 - 1) + 32), (*v178 + *(v177 + 72) * v157), a3);
        if (v5)
        {
        }

        if (v157 < v155)
        {
          goto LABEL_156;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v156 = sub_23C6473A0(v156);
        }

        if (a4 - 2 >= *(v156 + 2))
        {
          goto LABEL_157;
        }

        v158 = &v156[16 * a4];
        *v158 = v155;
        *(v158 + 1) = v157;
        v194 = v156;
        sub_23C647314(a4 - 1);
        result = v194;
        a4 = *(v194 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_167;
    }
  }

  v160 = &v159 - v43;
  v161 = v44;
  v46 = 0;
  v47 = MEMORY[0x277D84F90];
  v163 = a4;
  v187 = v14;
  v192 = v27;
  while (1)
  {
    v170 = v47;
    if (v46 + 1 >= v45)
    {
      v55 = v46 + 1;
    }

    else
    {
      v180 = v45;
      v48 = *v178;
      v49 = *(v177 + 72);
      v190 = (*v178 + v49 * (v46 + 1));
      v50 = v46;
      v51 = v160;
      sub_23C5A4514(v190, v160);
      v52 = v161;
      sub_23C5A4514(v48 + v49 * v50, v161);
      LODWORD(v184) = sub_23C658154();
      if (v5)
      {
        sub_23C65E398(v52, type metadata accessor for TranscriptProtoEvent);
        sub_23C65E398(v51, type metadata accessor for TranscriptProtoEvent);
      }

      v165 = 0;
      v185 = v49;
      sub_23C65E398(v52, type metadata accessor for TranscriptProtoEvent);
      a3 = v185;
      result = sub_23C65E398(v51, type metadata accessor for TranscriptProtoEvent);
      v162 = v50;
      v53 = v50 + 2;
      v54 = v48 + a3 * (v50 + 2);
      v55 = v180;
      v56 = v190;
      while (v55 != v53)
      {
        v59 = v179;
        sub_23C5A4514(v54, v179);
        v190 = v56;
        sub_23C5A4514(v56, v183);
        v60 = v59 + *(v27 + 44);
        v61 = v175;
        sub_23C5855B0(v60, v175, &qword_27E1F9950, &unk_23C87CFF0);
        v62 = type metadata accessor for TranscriptProtoPayload(0);
        v63 = *(*(v62 - 8) + 48);
        if (v63(v61, 1, v62) == 1)
        {
          sub_23C585C34(v61, &qword_27E1F9950, &unk_23C87CFF0);
          v64 = 0;
          v189 = 0xE000000000000000;
          v65 = v176;
        }

        else
        {
          v66 = v167;
          sub_23C5855B0(v61, v167, &qword_27E1F9958, &qword_23C873E10);
          sub_23C65E398(v61, type metadata accessor for TranscriptProtoPayload);
          v67 = type metadata accessor for TranscriptProtoPayloadEnum(0);
          if ((*(*(v67 - 8) + 48))(v66, 1, v67) == 1)
          {
            sub_23C585C34(v66, &qword_27E1F9958, &qword_23C873E10);
            v64 = 0;
            v189 = 0xE000000000000000;
          }

          else
          {
            v64 = TranscriptProtoPayloadEnum.eventTypeString.getter();
            v189 = v68;
            sub_23C65E398(v66, type metadata accessor for TranscriptProtoPayloadEnum);
          }

          v65 = v176;
        }

        sub_23C5855B0(v183 + *(v192 + 44), v65, &qword_27E1F9950, &unk_23C87CFF0);
        if (v63(v65, 1, v62) == 1)
        {
          sub_23C585C34(v65, &qword_27E1F9950, &unk_23C87CFF0);
          v69 = 0;
          v70 = 0xE000000000000000;
          v27 = v192;
        }

        else
        {
          v71 = v168;
          sub_23C5855B0(v65, v168, &qword_27E1F9958, &qword_23C873E10);
          sub_23C65E398(v65, type metadata accessor for TranscriptProtoPayload);
          v72 = type metadata accessor for TranscriptProtoPayloadEnum(0);
          if ((*(*(v72 - 8) + 48))(v71, 1, v72) == 1)
          {
            sub_23C585C34(v71, &qword_27E1F9958, &qword_23C873E10);
            v69 = 0;
            v70 = 0xE000000000000000;
          }

          else
          {
            v73 = v71;
            v69 = TranscriptProtoPayloadEnum.eventTypeString.getter();
            v70 = v74;
            sub_23C65E398(v73, type metadata accessor for TranscriptProtoPayloadEnum);
          }

          v27 = v192;
        }

        v55 = v180;
        if (v64 == v69 && v189 == v70)
        {
          v57 = 0;
        }

        else
        {
          v57 = sub_23C872014();
        }

        sub_23C65E398(v183, type metadata accessor for TranscriptProtoEvent);
        result = sub_23C65E398(v179, type metadata accessor for TranscriptProtoEvent);
        v58 = v184 ^ v57;
        ++v53;
        a3 = v185;
        v54 += v185;
        v56 = &v190[v185];
        v14 = v187;
        if (v58)
        {
          v55 = v53 - 1;
          break;
        }
      }

      v5 = v165;
      a4 = v163;
      v46 = v162;
      if (v184)
      {
        if (v55 < v162)
        {
          goto LABEL_162;
        }

        if (v162 < v55)
        {
          v75 = a3 * (v55 - 1);
          v76 = v55;
          v77 = v55 * a3;
          v180 = v76;
          v78 = v162;
          v79 = v162 * a3;
          do
          {
            if (v78 != --v76)
            {
              v80 = *v178;
              if (!*v178)
              {
                goto LABEL_166;
              }

              sub_23C5A3818(v80 + v79, v169);
              if (v79 < v75 || v80 + v79 >= v80 + v77)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v79 != v75)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_23C5A3818(v169, v80 + v75);
              v5 = v165;
              a3 = v185;
            }

            ++v78;
            v75 -= a3;
            v77 -= a3;
            v79 += a3;
          }

          while (v78 < v76);
          a4 = v163;
          v14 = v187;
          v46 = v162;
          v55 = v180;
        }
      }
    }

    v81 = v178[1];
    if (v55 < v81)
    {
      if (__OFSUB__(v55, v46))
      {
        goto LABEL_159;
      }

      if (v55 - v46 < a4)
      {
        break;
      }
    }

LABEL_73:
    if (v55 < v46)
    {
      goto LABEL_158;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v47 = v170;
    }

    else
    {
      result = sub_23C584338(0, *(v170 + 2) + 1, 1, v170);
      v47 = result;
    }

    a3 = *(v47 + 2);
    v110 = *(v47 + 3);
    a4 = a3 + 1;
    if (a3 >= v110 >> 1)
    {
      result = sub_23C584338((v110 > 1), a3 + 1, 1, v47);
      v47 = result;
    }

    *(v47 + 2) = a4;
    v111 = &v47[16 * a3];
    *(v111 + 4) = v46;
    *(v111 + 5) = v55;
    v171 = v55;
    v112 = *v164;
    if (!*v164)
    {
      goto LABEL_168;
    }

    if (a3)
    {
      while (1)
      {
        v113 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v114 = *(v47 + 4);
          v115 = *(v47 + 5);
          v124 = __OFSUB__(v115, v114);
          v116 = v115 - v114;
          v117 = v124;
LABEL_93:
          if (v117)
          {
            goto LABEL_147;
          }

          v130 = &v47[16 * a4];
          v132 = *v130;
          v131 = *(v130 + 1);
          v133 = __OFSUB__(v131, v132);
          v134 = v131 - v132;
          v135 = v133;
          if (v133)
          {
            goto LABEL_150;
          }

          v136 = &v47[16 * v113 + 32];
          v138 = *v136;
          v137 = *(v136 + 1);
          v124 = __OFSUB__(v137, v138);
          v139 = v137 - v138;
          if (v124)
          {
            goto LABEL_153;
          }

          if (__OFADD__(v134, v139))
          {
            goto LABEL_154;
          }

          if (v134 + v139 >= v116)
          {
            if (v116 < v139)
            {
              v113 = a4 - 2;
            }

            goto LABEL_114;
          }

          goto LABEL_107;
        }

        v140 = &v47[16 * a4];
        v142 = *v140;
        v141 = *(v140 + 1);
        v124 = __OFSUB__(v141, v142);
        v134 = v141 - v142;
        v135 = v124;
LABEL_107:
        if (v135)
        {
          goto LABEL_149;
        }

        v143 = &v47[16 * v113];
        v145 = *(v143 + 4);
        v144 = *(v143 + 5);
        v124 = __OFSUB__(v144, v145);
        v146 = v144 - v145;
        if (v124)
        {
          goto LABEL_152;
        }

        if (v146 < v134)
        {
          goto LABEL_3;
        }

LABEL_114:
        a3 = v113 - 1;
        if (v113 - 1 >= a4)
        {
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
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
          goto LABEL_161;
        }

        if (!*v178)
        {
          goto LABEL_165;
        }

        v151 = v47;
        a4 = *&v47[16 * a3 + 32];
        v152 = *&v47[16 * v113 + 40];
        sub_23C65C4E8(*v178 + *(v177 + 72) * a4, *v178 + *(v177 + 72) * *&v47[16 * v113 + 32], (*v178 + *(v177 + 72) * v152), v112);
        if (v5)
        {
        }

        if (v152 < a4)
        {
          goto LABEL_143;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v153 = v151;
        }

        else
        {
          v153 = sub_23C6473A0(v151);
        }

        if (a3 >= *(v153 + 2))
        {
          goto LABEL_144;
        }

        v154 = &v153[16 * a3];
        *(v154 + 4) = a4;
        *(v154 + 5) = v152;
        v194 = v153;
        result = sub_23C647314(v113);
        v47 = v194;
        a4 = *(v194 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v118 = &v47[16 * a4 + 32];
      v119 = *(v118 - 64);
      v120 = *(v118 - 56);
      v124 = __OFSUB__(v120, v119);
      v121 = v120 - v119;
      if (v124)
      {
        goto LABEL_145;
      }

      v123 = *(v118 - 48);
      v122 = *(v118 - 40);
      v124 = __OFSUB__(v122, v123);
      v116 = v122 - v123;
      v117 = v124;
      if (v124)
      {
        goto LABEL_146;
      }

      v125 = &v47[16 * a4];
      v127 = *v125;
      v126 = *(v125 + 1);
      v124 = __OFSUB__(v126, v127);
      v128 = v126 - v127;
      if (v124)
      {
        goto LABEL_148;
      }

      v124 = __OFADD__(v116, v128);
      v129 = v116 + v128;
      if (v124)
      {
        goto LABEL_151;
      }

      if (v129 >= v121)
      {
        v147 = &v47[16 * v113 + 32];
        v149 = *v147;
        v148 = *(v147 + 1);
        v124 = __OFSUB__(v148, v149);
        v150 = v148 - v149;
        if (v124)
        {
          goto LABEL_155;
        }

        if (v116 < v150)
        {
          v113 = a4 - 2;
        }

        goto LABEL_114;
      }

      goto LABEL_93;
    }

LABEL_3:
    v45 = v178[1];
    v46 = v171;
    a4 = v163;
    if (v171 >= v45)
    {
      goto LABEL_127;
    }
  }

  if (__OFADD__(v46, a4))
  {
    goto LABEL_160;
  }

  if ((v46 + a4) < v81)
  {
    v81 = v46 + a4;
  }

  a4 = v188;
  if (v81 < v46)
  {
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v171 = v81;
  if (v55 == v81)
  {
    goto LABEL_73;
  }

  v165 = v5;
  v82 = *v178;
  v83 = *(v177 + 72);
  v84 = *v178 + v83 * (v55 - 1);
  v184 = -v83;
  v162 = v46;
  v85 = v46 - v55;
  v185 = v82;
  v166 = v83;
  v86 = v82 + v55 * v83;
LABEL_53:
  v180 = v55;
  v172 = v86;
  v87 = v86;
  v173 = v85;
  v174 = v84;
  v88 = v85;
  v89 = v84;
  while (1)
  {
    v189 = v88;
    v90 = v191;
    sub_23C5A4514(v87, v191);
    sub_23C5A4514(v89, v193);
    sub_23C5855B0(v90 + *(v27 + 44), v14, &qword_27E1F9950, &unk_23C87CFF0);
    v91 = type metadata accessor for TranscriptProtoPayload(0);
    v190 = *(*(v91 - 8) + 48);
    if ((v190)(v14, 1, v91) == 1)
    {
      sub_23C585C34(v14, &qword_27E1F9950, &unk_23C87CFF0);
      v92 = 0;
      v93 = 0xE000000000000000;
    }

    else
    {
      v94 = v181;
      sub_23C5855B0(v14, v181, &qword_27E1F9958, &qword_23C873E10);
      v95 = v14;
      v96 = v94;
      sub_23C65E398(v95, type metadata accessor for TranscriptProtoPayload);
      v97 = type metadata accessor for TranscriptProtoPayloadEnum(0);
      if ((*(*(v97 - 8) + 48))(v94, 1, v97) == 1)
      {
        sub_23C585C34(v94, &qword_27E1F9958, &qword_23C873E10);
        v92 = 0;
        v93 = 0xE000000000000000;
      }

      else
      {
        v98 = TranscriptProtoPayloadEnum.eventTypeString.getter();
        a4 = v188;
        v92 = v98;
        v99 = v96;
        v93 = v100;
        sub_23C65E398(v99, type metadata accessor for TranscriptProtoPayloadEnum);
      }
    }

    sub_23C5855B0(v193 + *(v192 + 44), a4, &qword_27E1F9950, &unk_23C87CFF0);
    if ((v190)(a4, 1, v91) == 1)
    {
      sub_23C585C34(a4, &qword_27E1F9950, &unk_23C87CFF0);
      v101 = 0xE000000000000000;
      v27 = v192;
      if (v92)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v102 = v182;
      sub_23C5855B0(a4, v182, &qword_27E1F9958, &qword_23C873E10);
      sub_23C65E398(a4, type metadata accessor for TranscriptProtoPayload);
      v103 = type metadata accessor for TranscriptProtoPayloadEnum(0);
      if ((*(*(v103 - 8) + 48))(v102, 1, v103) == 1)
      {
        sub_23C585C34(v102, &qword_27E1F9958, &qword_23C873E10);
        v104 = 0;
        v101 = 0xE000000000000000;
      }

      else
      {
        v105 = v102;
        v106 = TranscriptProtoPayloadEnum.eventTypeString.getter();
        v101 = v107;
        sub_23C65E398(v105, type metadata accessor for TranscriptProtoPayloadEnum);
        v104 = v106;
      }

      v27 = v192;
      if (v92 != v104)
      {
        goto LABEL_67;
      }
    }

    if (v93 == v101)
    {

      a3 = type metadata accessor for TranscriptProtoEvent;
      sub_23C65E398(v193, type metadata accessor for TranscriptProtoEvent);
      sub_23C65E398(v191, type metadata accessor for TranscriptProtoEvent);
LABEL_51:
      v14 = v187;
      a4 = v188;
LABEL_52:
      v55 = v180 + 1;
      v84 = v174 + v166;
      v85 = v173 - 1;
      v86 = v172 + v166;
      if (v180 + 1 == v171)
      {
        v5 = v165;
        v46 = v162;
        v55 = v171;
        goto LABEL_73;
      }

      goto LABEL_53;
    }

LABEL_67:
    a3 = sub_23C872014();

    sub_23C65E398(v193, type metadata accessor for TranscriptProtoEvent);
    result = sub_23C65E398(v191, type metadata accessor for TranscriptProtoEvent);
    if ((a3 & 1) == 0)
    {
      goto LABEL_51;
    }

    v14 = v187;
    a4 = v188;
    v108 = v189;
    if (!v185)
    {
      break;
    }

    a3 = v186;
    sub_23C5A3818(v87, v186);
    swift_arrayInitWithTakeFrontToBack();
    sub_23C5A3818(a3, v89);
    v89 += v184;
    v87 += v184;
    v109 = __CFADD__(v108, 1);
    v88 = v108 + 1;
    if (v109)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
  return result;
}