uint64_t sub_240001288(uint64_t a1)
{
  if (*(v1 + 16) == 1)
  {
    TupleTypeMetadata = *(*(v1 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v3)
    {
      v7 = 0;
      v8 = v4 & 0xFFFFFFFFFFFFFFFELL;
      if (v3 < 4)
      {
        goto LABEL_9;
      }

      if (&v6[-v8] < 0x20)
      {
        goto LABEL_9;
      }

      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 = (v8 + 16);
      v10 = v6 + 16;
      v11 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v12 = *v9;
        *(v10 - 1) = *(v9 - 1);
        *v10 = v12;
        v9 += 2;
        v10 += 2;
        v11 -= 4;
      }

      while (v11);
      if (v3 != v7)
      {
LABEL_9:
        v13 = v3 - v7;
        v14 = 8 * v7;
        v15 = &v6[8 * v7];
        v16 = (v8 + v14);
        do
        {
          v17 = *v16++;
          *v15 = v17;
          v15 += 8;
          --v13;
        }

        while (v13);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v18 = *(TupleTypeMetadata - 8);
  v19 = *(v18 + 64);
  (*(v18 + 8))(v1 + ((*(v18 + 80) + 40) & ~*(v18 + 80)));
  return swift_deallocObject();
}

uint64_t sub_2400013CC()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_240001404()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

_OWORD *sub_24000143C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24000147C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_240005520(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_240001510(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_240014D20();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2400015BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_240014D20();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2400016B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_240014D20();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_240001760(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_240014D20();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24000180C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_240001878(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_240001888()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_240001878(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_2400018D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_240001930(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_24000193C()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_240001930(*(v0 + 16), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_2400019BC()
{
  v1 = (type metadata accessor for AppInstallationEvent() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *(v3 + 1);

  v5 = *(v3 + 3);

  v6 = *(v3 + 7);

  v7 = *(v3 + 9);

  v8 = *(v3 + 11);

  v9 = v1[9];
  v10 = sub_240014D20();
  (*(*(v10 - 8) + 8))(&v3[v9], v10);
  v11 = *&v3[v1[13] + 8];

  v12 = *&v3[v1[14] + 8];

  v13 = *&v3[v1[15] + 8];

  v14 = *&v3[v1[16] + 8];

  v15 = *&v3[v1[17] + 8];

  return swift_deallocObject();
}

uint64_t sub_240001B7C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t encodeXPCValues<each A>(_:)(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = TupleTypeMetadata;
  v37[0] = a4;
  v38 = a3;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v10 = 0;
      v11 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v10 != a2)
      {
LABEL_9:
        v16 = a2 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v21 = *(v6 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  if (a2)
  {
    v23 = (v38 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(v37 + v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  v30 = (*(v21 + 80) + 40) & ~*(v21 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = a2;
  *(v31 + 3) = swift_allocateMetadataPack();
  *(v31 + 4) = swift_allocateWitnessTablePack();
  (*(v21 + 32))(&v31[v30], v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v32 = sub_240014CB0();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  sub_240014CA0();
  v37[2] = sub_240002180;
  v37[3] = v31;
  sub_2400022D8();
  v35 = sub_240014C90();

  return v35;
}

uint64_t sub_240001E80(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 8 * a3;
  TupleTypeMetadata = MEMORY[0x28223BE20](a1);
  v10 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v11)
  {
    v12 = TupleTypeMetadata;
    v43 = v9;
    v45 = v3;
    v13 = 0;
    v14 = (v8 & 0xFFFFFFFFFFFFFFFELL);
    v47 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 16);
    do
    {
      if (a3 == 1)
      {
        v15 = 0;
      }

      else
      {
        MEMORY[0x28223BE20](TupleTypeMetadata);
        v16 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
        v17 = 0;
        if (a3 < 4)
        {
          goto LABEL_11;
        }

        if ((v16 - v14) < 0x20)
        {
          goto LABEL_11;
        }

        v18 = v16 + 16;
        v19 = a3 & 0xFFFFFFFFFFFFFFFCLL;
        v20 = v47;
        do
        {
          v21 = *v20;
          *(v18 - 1) = *(v20 - 1);
          *v18 = v21;
          v20 += 2;
          v18 += 2;
          v19 -= 4;
        }

        while (v19);
        v17 = a3 & 0xFFFFFFFFFFFFFFFCLL;
        if ((a3 & 0xFFFFFFFFFFFFFFFCLL) != a3)
        {
LABEL_11:
          v22 = a3 - v17;
          v23 = 8 * v17;
          v24 = &v16[8 * v17];
          v25 = &v14[v23];
          do
          {
            v26 = *v25;
            v25 += 8;
            *v24 = v26;
            v24 += 8;
            --v22;
          }

          while (v22);
        }

        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v15 = SLODWORD(TupleTypeMetadata[2 * v13 + 4]);
      }

      v10[v13++] = a2 + v15;
    }

    while (v13 != a3);
    v44 = a3;
    v27 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v28 = sub_240015150();
    v29 = (v43 & 0xFFFFFFFFFFFFFFFELL);
    v30 = v45;
    do
    {
      v47 = &v43;
      v31 = *v14;
      v32 = *v29;
      v33 = *v10;
      v34 = *(*v14 - 8);
      v35 = v14;
      v36 = v10;
      v37 = v34;
      v38 = *(v34 + 64);
      MEMORY[0x28223BE20](v28);
      v40 = &v43 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v37 + 16))(v40);
      v45 = v46[4];
      __swift_mutable_project_boxed_opaque_existential_1(v46, v46[3]);
      sub_240015050();
      v28 = (*(v37 + 8))(v40, v31);
      if (v30)
      {
        break;
      }

      v10 = v36 + 1;
      ++v29;
      v14 = v35 + 8;
      --v44;
    }

    while (v44);
  }

  else
  {
    v41 = TupleTypeMetadata[4];
    __swift_project_boxed_opaque_existential_1(TupleTypeMetadata, TupleTypeMetadata[3]);
    sub_240015150();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v46);
}

uint64_t sub_240002180(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  if (v2 == 1)
  {
    TupleTypeMetadata = *(v3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    MEMORY[0x28223BE20](a1);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v2)
    {
      v9 = 0;
      v10 = v3 & 0xFFFFFFFFFFFFFFFELL;
      if (v2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v2 != v9)
      {
LABEL_9:
        v15 = v2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v6;
  }

  return sub_240001E80(a1, v1 + ((*(*(TupleTypeMetadata - 8) + 80) + 40) & ~*(*(TupleTypeMetadata - 8) + 80)), v2);
}

unint64_t sub_2400022D8()
{
  result = qword_27E3C0898;
  if (!qword_27E3C0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0898);
  }

  return result;
}

uint64_t decodeXPCValues<each A, B>(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v88 = a7;
  v90 = a6;
  v12 = a1;
  if (a3 == 1)
  {
    v14 = *(a5 & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a3)
    {
      v18 = 0;
      v19 = a5 & 0xFFFFFFFFFFFFFFFELL;
      if (a3 < 4)
      {
        goto LABEL_9;
      }

      if (&v17[-v19] < 0x20)
      {
        goto LABEL_9;
      }

      v18 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v20 = (v19 + 16);
      v21 = v17 + 16;
      v22 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v23 = *v20;
        *(v21 - 1) = *(v20 - 1);
        *v21 = v23;
        v20 += 2;
        v21 += 2;
        v22 -= 4;
      }

      while (v22);
      if (v18 != a3)
      {
LABEL_9:
        v24 = a3 - v18;
        v25 = 8 * v18;
        v26 = &v17[8 * v18];
        v27 = (v19 + v25);
        do
        {
          v28 = *v27++;
          *v26 = v28;
          v26 += 8;
          --v24;
        }

        while (v24);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v29 = sub_240014E60();
  v87 = &v76;
  v82 = *(v29 - 8);
  v30 = *(v82 + 64);
  MEMORY[0x28223BE20](v29);
  v85 = &v76 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C08A0, &unk_240015680);
  v86 = &v76;
  v33 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v76 - v34;
  v83 = v29;
  v36 = swift_allocBox();
  v37 = *(TupleTypeMetadata - 8);
  v80 = v38;
  v81 = v37;
  v39 = *(v37 + 56);
  v84 = TupleTypeMetadata;
  v39(v38, 1, 1, TupleTypeMetadata);
  v40 = sub_240014C80();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v89 = sub_240014C70();
  sub_240014EE0();
  v43 = sub_240014EF0();
  result = (*(*(v43 - 8) + 48))(v35, 1, v43);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v77 = a8;
    v45 = swift_allocObject();
    v45[2] = a2;
    v45[3] = a3;
    v45[4] = swift_allocateMetadataPack();
    v78 = a5;
    v45[5] = swift_allocateMetadataPack();
    v46 = v90;
    v45[6] = swift_allocateWitnessTablePack();
    v79 = a3;
    v45[7] = swift_allocateWitnessTablePack();
    v45[8] = v36;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_240002D98;
    *(v47 + 24) = v45;
    v92[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C08A8, &qword_240016AD0);
    v92[0] = sub_240002DE8;
    v92[1] = v47;
    v88 = v36;

    v48 = sub_240014C60();
    sub_240002E10(v92, v35);
    v49 = v48(v91, 0);
    if (a2)
    {
      v50 = (a4 & 0xFFFFFFFFFFFFFFFELL);
      v51 = (v46 & 0xFFFFFFFFFFFFFFFELL);
      while (1)
      {
        v52 = a2;
        v90 = &v76;
        v53 = *v50;
        v54 = *v51;
        v55 = *v12;
        v56 = *(*v50 - 8);
        v57 = *(v56 + 64);
        MEMORY[0x28223BE20](v49);
        v59 = &v76 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v56 + 16))(v59);
        v60 = sub_240004694(v59, v53, *(*(*(*(v54 + 8) + 8) + 8) + 8));
        v62 = v61;
        (*(v56 + 8))(v59, v53);
        sub_240004C30();
        v63 = v93;
        sub_240014C50();
        if (v63)
        {
          break;
        }

        v93 = 0;
        v49 = sub_240004C84(v60, v62);
        ++v12;
        ++v51;
        ++v50;
        a2 = v52 - 1;
        if (v52 == 1)
        {
          goto LABEL_17;
        }
      }

      sub_240004C84(v60, v62);
    }

LABEL_17:
    v64 = v80;
    swift_beginAccess();
    v65 = v85;
    (*(v82 + 16))(v85, v64, v83);
    v66 = v84;
    result = (*(v81 + 48))(v65, 1, v84);
    if (result != 1)
    {
      v67 = v79;
      v68 = v77;
      if (v79)
      {
        v69 = (v78 & 0xFFFFFFFFFFFFFFFELL);
        v70 = (v66 + 32);
        v71 = v79;
        do
        {
          if (v67 == 1)
          {
            v72 = 0;
          }

          else
          {
            v72 = *v70;
          }

          v74 = *v69++;
          v73 = v74;
          v75 = *v68++;
          (*(*(v73 - 8) + 32))(v75, &v65[v72]);
          v70 += 4;
          --v71;
        }

        while (v71);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2400029FC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v46 = a6;
  v9 = a4;
  if (a4 == 1)
  {
    v11 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v9)
    {
      v15 = 0;
      v16 = v46 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 < 4)
      {
        goto LABEL_9;
      }

      if (&v14[-v16] < 0x20)
      {
        goto LABEL_9;
      }

      v15 = v9 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = (v16 + 16);
      v18 = v14 + 16;
      v19 = v9 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      if (v15 != v9)
      {
LABEL_9:
        v21 = v9 - v15;
        v22 = 8 * v15;
        v23 = &v14[8 * v15];
        v24 = (v16 + v22);
        do
        {
          v25 = *v24++;
          *v23 = v25;
          v23 += 8;
          --v21;
        }

        while (v21);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v44 = TupleTypeMetadata;
  v26 = sub_240014E60();
  v51 = *(v26 - 8);
  v27 = *(v51 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = v43 - v28;
  v30 = swift_projectBox();
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_240015120();
  if (!v8)
  {
    v47 = v30;
    v48 = v26;
    v49 = v29;
    v43[1] = v43;
    if (v9)
    {
      v33 = 0;
      v45 &= ~1uLL;
      v46 &= ~1uLL;
      v34 = v44 + 16;
      do
      {
        v35 = v9;
        if (v9 != 1)
        {
          v36 = *(v34 + 16);
        }

        v37 = *(v46 + 8 * v33);
        v38 = *(v45 + 8 * v33);
        __swift_mutable_project_boxed_opaque_existential_1(v50, v50[3]);
        sub_240015040();
        ++v33;
        v34 += 16;
        v9 = v35;
        v40 = v47;
        v39 = v48;
        v41 = v51;
      }

      while (v35 != v33);
    }

    else
    {
      v40 = v47;
      v39 = v48;
      v41 = v51;
    }

    v42 = v49;
    (*(*(v44 - 8) + 56))(v49, 0, 1);
    swift_beginAccess();
    (*(v41 + 40))(v40, v42, v39);
    return __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }

  return result;
}

uint64_t sub_240002DE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_240002E10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_24000143C(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_240003D34(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_240014EF0();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_240004E90(a1, &qword_27E3C08C8, &qword_240015748);
    sub_240003128(a2, v10);
    v8 = sub_240014EF0();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_240004E90(v10, &qword_27E3C08C8, &qword_240015748);
  }

  return result;
}

unint64_t sub_240002F2C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_240014EF0();
  v5 = sub_240014D70();

  return sub_240002F90(a1, v5);
}

unint64_t sub_240002F90(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_240014EF0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_240014D80();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

double sub_240003128@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_240002F2C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_240003FCC();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_240014EF0();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_24000143C((*(v11 + 56) + 32 * v8), a2);
    sub_240003A80(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_240003204@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_2400044DC(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_240014C30();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_240014C10();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_240014CC0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_2400032CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return sub_240003580(MEMORY[0x277D84B78], sub_240004E6C, v10, a1, a2, MEMORY[0x277D84B78], MEMORY[0x277D84A98], TupleTypeMetadata2, MEMORY[0x277D84AC0], v9);
}

_BYTE *sub_2400033A4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2400044DC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_240004594(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_240004610(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_240003438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v11 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v7 + 16))(v10, a2, a3);
  result = sub_240014DB0();
  *(a4 + v11) = result;
  return result;
}

uint64_t sub_240003580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = *(v12 + 64);
  v14 = (MEMORY[0x28223BE20])();
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v23 = v25 - v22;
  if (v18)
  {
    v24 = *(*(v20 - 8) + 72);
    if (v24)
    {
      if (v19 - v18 != 0x8000000000000000 || v24 != -1)
      {
        result = v21(v18, (v19 - v18) / v24, v16);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v16, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v21(0, 0, v25 - v22);
  v16 = v23;
  if (v10)
  {
    return (*(v12 + 32))(a10, v16, a7);
  }

  return result;
}

uint64_t sub_2400036E0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_240014EF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E3C08D0, &unk_240015750);
  v43 = a2;
  result = sub_240014F10();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
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
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_24000143C((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_240004F3C(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = sub_240014D70();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
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
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_24000143C(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
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

unint64_t sub_240003A80(int64_t a1, uint64_t a2)
{
  v4 = sub_240014EF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_240014EB0();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = sub_240014D70();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_240003D34(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_240014EF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_240002F2C(a2);
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
      sub_240003FCC();
      goto LABEL_7;
    }

    sub_2400036E0(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_240002F2C(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_240003F0C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_240015090();
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
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);

  return sub_24000143C(a1, v22);
}

_OWORD *sub_240003F0C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_240014EF0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_24000143C(a3, (a4[7] + 32 * a1));
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

void *sub_240003FCC()
{
  v1 = v0;
  v27 = sub_240014EF0();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E3C08D0, &unk_240015750);
  v4 = *v0;
  v5 = sub_240014F00();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_240004F3C(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_24000143C(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
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

        v1 = v25[0];
        v6 = v28;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
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

uint64_t sub_240004250(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C08A0, &unk_240015680);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v15 - v4;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_240015130();
  sub_240014EE0();
  v8 = sub_240014EF0();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v5, 1, v8);
  if (result != 1)
  {
    if (*(v7 + 16))
    {
      v11 = sub_240002F2C(v5);
      if (v12)
      {
        sub_240004F3C(*(v7 + 56) + 32 * v11, v15);

        sub_24000143C(v15, &v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C08A8, &qword_240016AD0);
        swift_dynamicCast();
        v13 = v14;
        (*(v9 + 8))(v5, v8);
        v13(a1);

        return __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24000443C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_240014C30();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_240014C20();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_240014CC0();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2400044DC(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240004594(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_240014C30();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_240014C10();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_240014CC0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_240004610(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_240014C30();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_240014C10();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_240004694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v33 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v33 - v15;
  v17 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  (*(v19 + 16))(&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C08B8, &qword_240015738);
  if (swift_dynamicCast())
  {
    sub_240004E54(v36, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, v39);
    sub_240014C40();
    v36[0] = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(&v38);
    goto LABEL_34;
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_240004E90(v36, &qword_27E3C08C0, &qword_240015740);
  sub_240014DD0();
  if (*(&v38 + 1) >> 60 != 15)
  {
    v36[0] = v38;
    goto LABEL_34;
  }

  v34 = v38;
  v20 = sub_240014DC0();
  *&v36[0] = sub_24000443C(v20);
  *(&v36[0] + 1) = v21;
  MEMORY[0x28223BE20](*&v36[0]);
  *(&v33 - 4) = a2;
  *(&v33 - 3) = a3;
  *(&v33 - 2) = a1;
  sub_240014CE0();
  v22 = *&v11[*(TupleTypeMetadata2 + 48)];
  (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
  v23 = *(&v36[0] + 1) >> 62;
  if ((*(&v36[0] + 1) >> 62) <= 1)
  {
    if (v23)
    {
      if (__OFSUB__(DWORD1(v36[0]), v36[0]))
      {
        goto LABEL_38;
      }

      if (v22 == DWORD1(v36[0]) - LODWORD(v36[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v22 == BYTE14(v36[0]))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v23 == 2)
  {
    v25 = *(*&v36[0] + 16);
    v24 = *(*&v36[0] + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (v26)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    if (v22 == v27)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v23 == 2)
    {
      v28 = *(*&v36[0] + 24);
    }

    else if (v23 == 1)
    {
      v28 = *&v36[0] >> 32;
    }

    else
    {
      v28 = BYTE14(v36[0]);
    }

LABEL_31:
    if (v28 >= v22)
    {
      sub_240014CD0();
LABEL_33:
      (*(v12 + 8))(v16, AssociatedTypeWitness);
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (v22)
  {
    v28 = 0;
    goto LABEL_31;
  }

LABEL_20:
  swift_getAssociatedConformanceWitness();
  *&v38 = 0;
  *(&v38 + 7) = 0;
  sub_240014E70();
  if (BYTE1(v35) == 1)
  {
    goto LABEL_28;
  }

  LOBYTE(v29) = 0;
  do
  {
    *(&v38 + v29) = v35;
    v29 = v29 + 1;
    if ((v29 >> 8))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v29 == 14)
    {
      *&v35 = v38;
      *(&v35 + 6) = *(&v38 + 6);
      sub_240014CF0();
      LOBYTE(v29) = 0;
    }

    sub_240014E70();
  }

  while ((BYTE1(v35) & 1) == 0);
  if (v29)
  {
    *&v35 = v38;
    *(&v35 + 6) = *(&v38 + 6);
    sub_240014CF0();
    sub_240004E40(v34, *(&v34 + 1));
    goto LABEL_33;
  }

LABEL_28:
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  sub_240004E40(v34, *(&v34 + 1));
LABEL_34:
  v30 = v36[0];
  sub_240004DEC(*&v36[0], *(&v36[0] + 1));
  sub_240004C84(v30, *(&v30 + 1));
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

unint64_t sub_240004C30()
{
  result = qword_27E3C08B0;
  if (!qword_27E3C08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C08B0);
  }

  return result;
}

uint64_t sub_240004C84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_240004CF4(uint64_t *a1, int a2)
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

uint64_t sub_240004D3C(uint64_t result, int a2, int a3)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_240004DEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_240004E40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_240004C84(a1, a2);
  }

  return a1;
}

uint64_t sub_240004E54(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_240004E90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_240004F3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_240004FEC(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  sub_240015110();
  result = sub_240014E60();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_240005090()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  sub_240015110();
  v5 = sub_240014E60();
  (*(*(v5 - 8) + 8))(v0 + v1, v5);
  return v0;
}

uint64_t sub_240005148()
{
  sub_240005090();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2400051E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_240015060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_240015060();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2400052EC(char a1)
{
  sub_2400150E0();
  MEMORY[0x245CB4EB0](a1 & 1);
  return sub_240015100();
}

uint64_t sub_240005334(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

BOOL sub_240005364(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_2400052B4(*a1, *a2);
}

uint64_t sub_24000537C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_2400052EC(*v1);
}

uint64_t sub_240005390(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_2400052C4(a1, *v2);
}

uint64_t sub_2400053A4(uint64_t a1, void *a2)
{
  sub_2400150E0();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_2400052C4(v8, *v2);
  return sub_240015100();
}

uint64_t sub_2400053F0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_240005334(*v1);
}

uint64_t sub_240005404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_2400051E8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_240005444@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_240006D7C();
  *a2 = result;
  return result;
}

uint64_t sub_240005478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2400054CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_240005520(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_240015060();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2400055A4@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_240005590();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2400055DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_240005630(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_240005684()
{
  sub_2400150E0();
  MEMORY[0x245CB4EB0](0);
  return sub_240015100();
}

uint64_t sub_2400056C8()
{
  sub_2400150E0();
  MEMORY[0x245CB4EB0](0);
  return sub_240015100();
}

uint64_t sub_240005708(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24000575C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ServiceResult.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for ServiceResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v47 = v7;
  v8 = sub_240015030();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = v40 - v10;
  v11 = type metadata accessor for ServiceResult.SuccessCodingKeys();
  v12 = swift_getWitnessTable();
  v42 = v11;
  v40[1] = v12;
  v13 = sub_240015030();
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v41 = v40 - v16;
  v43 = *(v4 - 8);
  v17 = *(v43 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v40[0] = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v6;
  v52 = v4;
  type metadata accessor for ServiceResult.CodingKeys();
  swift_getWitnessTable();
  v24 = sub_240015030();
  v54 = *(v24 - 8);
  v55 = v24;
  v25 = *(v54 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = v40 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240015160();
  (*(v20 + 16))(v23, v53, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v23;
    v58 = 1;
    v30 = v48;
    v31 = v55;
    sub_240014FC0();
    v57 = v29;
    sub_240005D0C();
    v32 = v50;
    sub_240015010();
    (*(v49 + 8))(v30, v32);
    return (*(v54 + 8))(v27, v31);
  }

  else
  {
    v34 = v43;
    v35 = v40[0];
    v36 = v52;
    (*(v43 + 32))(v40[0], v23, v52);
    v56 = 0;
    v37 = v41;
    v38 = v55;
    sub_240014FC0();
    v39 = v45;
    sub_240015010();
    (*(v44 + 8))(v37, v39);
    (*(v34 + 8))(v35, v36);
    return (*(v54 + 8))(v27, v38);
  }
}

unint64_t sub_240005D0C()
{
  result = qword_27E3C0958;
  if (!qword_27E3C0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0958);
  }

  return result;
}

uint64_t ServiceResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a1;
  v70 = a4;
  v6 = type metadata accessor for ServiceResult.FailureCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v67 = v6;
  v60 = sub_240014FB0();
  v59 = *(v60 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v68 = &v55 - v8;
  v9 = type metadata accessor for ServiceResult.SuccessCodingKeys();
  v63 = swift_getWitnessTable();
  v64 = v9;
  v58 = sub_240014FB0();
  v57 = *(v58 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v65 = &v55 - v11;
  type metadata accessor for ServiceResult.CodingKeys();
  v73 = swift_getWitnessTable();
  v12 = sub_240014FB0();
  v13 = *(v12 - 8);
  v71 = v12;
  v72 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v61 = a2;
  v62 = a3;
  v17 = type metadata accessor for ServiceResult();
  v69 = *(v17 - 8);
  v18 = *(v69 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v55 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v55 - v25;
  v27 = v79[4];
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  v28 = v74;
  sub_240015140();
  if (!v28)
  {
    v74 = v24;
    v56 = v21;
    v73 = v26;
    v29 = v71;
    v30 = v16;
    *&v75 = sub_240014FA0();
    sub_240014E00();
    swift_getWitnessTable();
    *&v77 = sub_240014EA0();
    *(&v77 + 1) = v31;
    *&v78 = v32;
    *(&v78 + 1) = v33;
    sub_240014E90();
    swift_getWitnessTable();
    sub_240014E30();
    v34 = v75;
    if (v75 == 2 || (v55 = v77, v75 = v77, v76 = v78, (sub_240014E40() & 1) == 0))
    {
      v43 = sub_240014ED0();
      swift_allocError();
      v45 = v44;
      v46 = v29;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0960, &qword_2400157B0) + 48);
      *v45 = v17;
      sub_240014F30();
      sub_240014EC0();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D84160], v43);
      swift_willThrow();
      (*(v72 + 8))(v16, v46);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34)
      {
        LOBYTE(v75) = 1;
        v35 = v68;
        v36 = v30;
        sub_240014F20();
        v37 = v70;
        v38 = v72;
        sub_24000653C();
        v39 = v60;
        sub_240014F80();
        (*(v59 + 8))(v35, v39);
        (*(v38 + 8))(v36, v29);
        swift_unknownObjectRelease();
        v40 = v56;
        *v56 = v75;
        swift_storeEnumTagMultiPayload();
        v41 = *(v69 + 32);
        v42 = v73;
        v41(v73, v40, v17);
      }

      else
      {
        LOBYTE(v75) = 0;
        v48 = v65;
        v49 = v30;
        sub_240014F20();
        v50 = v72;
        v51 = v69;
        v52 = v58;
        sub_240014F80();
        (*(v57 + 8))(v48, v52);
        (*(v50 + 8))(v49, v29);
        swift_unknownObjectRelease();
        v54 = v74;
        swift_storeEnumTagMultiPayload();
        v41 = *(v51 + 32);
        v42 = v73;
        v41(v73, v54, v17);
        v37 = v70;
      }

      v41(v37, v42, v17);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v79);
}

unint64_t sub_24000653C()
{
  result = qword_27E3C0968;
  if (!qword_27E3C0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0968);
  }

  return result;
}

uint64_t Result.init<>(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  type metadata accessor for ServiceResult();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = *a1;
  }

  else
  {
    (*(*(a2 - 8) + 32))(a3, a1, a2);
  }

  sub_2400066B8();
  sub_240015110();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_2400066B8()
{
  result = qword_27E3C0970[0];
  if (!qword_27E3C0970[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E3C0970);
  }

  return result;
}

uint64_t sub_240006714(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_240006780(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_240006894(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_240006A5C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_240006AEC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FeatureFlag(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FeatureFlag(_WORD *result, int a2, int a3)
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

Swift::Bool __swiftcall isAppInstallationMetricsEnabled()()
{
  v2[3] = &type metadata for FeatureFlag;
  v2[4] = sub_240006DF0();
  v0 = sub_240014D30();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

unint64_t sub_240006DF0()
{
  result = qword_280FB4F90[0];
  if (!qword_280FB4F90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FB4F90);
  }

  return result;
}

unint64_t sub_240006E58()
{
  result = qword_27E3C0B78;
  if (!qword_27E3C0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0B78);
  }

  return result;
}

AppInstallationMetrics::AppInstallType_optional __swiftcall AppInstallType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_240015070();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppInstallType.rawValue.getter()
{
  result = 0x6E776F446F747561;
  switch(*v0)
  {
    case 1:
      result = 7959906;
      break;
    case 2:
      result = 0x79754270696C63;
      break;
    case 3:
      result = 0x6F69746F6D6F7270;
      break;
    case 4:
      result = 0x6575657571;
      break;
    case 5:
      result = 0x6F6C6E776F646572;
      break;
    case 6:
      result = 0x65726F74736572;
      break;
    case 7:
      result = 0x5565726F74736572;
      break;
    case 8:
      result = 0x64705565726F7473;
      break;
    case 9:
      result = 0x7541657461647075;
      break;
    case 0xA:
      result = 0x74736E4961746562;
      break;
    case 0xB:
      result = 0x6164705561746562;
      break;
    case 0xC:
      result = 0xD000000000000014;
      break;
    case 0xD:
      result = 0xD000000000000013;
      break;
    case 0xE:
      result = 0xD000000000000012;
      break;
    case 0xF:
      result = 0x6469766F72507674;
      break;
    case 0x10:
      result = 0xD000000000000010;
      break;
    case 0x11:
      result = 7368821;
      break;
    case 0x12:
      result = 6448503;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24000716C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AppInstallType.rawValue.getter();
  v4 = v3;
  if (v2 == AppInstallType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_240015060();
  }

  return v7 & 1;
}

unint64_t sub_24000720C()
{
  result = qword_27E3C0B80;
  if (!qword_27E3C0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0B80);
  }

  return result;
}

uint64_t sub_240007260()
{
  v1 = *v0;
  sub_2400150E0();
  AppInstallType.rawValue.getter();
  sub_240014DA0();

  return sub_240015100();
}

uint64_t sub_2400072C8()
{
  v2 = *v0;
  AppInstallType.rawValue.getter();
  sub_240014DA0();
}

uint64_t sub_24000732C()
{
  v1 = *v0;
  sub_2400150E0();
  AppInstallType.rawValue.getter();
  sub_240014DA0();

  return sub_240015100();
}

unint64_t sub_24000739C@<X0>(unint64_t *a1@<X8>)
{
  result = AppInstallType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppInstallType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppInstallType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2400075C4()
{
  result = qword_27E3C0B88;
  if (!qword_27E3C0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0B88);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24000785C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_240014D60();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_240014D50();
}

uint64_t sub_2400078F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_240014D60();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t AppInstallationEvent.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppInstallationEvent.eligibility.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 80);
  v10 = *(v1 + 64);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 96);
  v6 = *(v1 + 32);
  v9[0] = *(v1 + 16);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_240007A80(v9, v8);
}

uint64_t AppInstallationEvent.installDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppInstallationEvent() + 28);
  v4 = sub_240014D20();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AppInstallationEvent()
{
  result = qword_280FB5040;
  if (!qword_280FB5040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppInstallationEvent.installType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AppInstallationEvent();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t AppInstallationEvent.itemID.getter()
{
  v1 = (v0 + *(type metadata accessor for AppInstallationEvent() + 40));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t AppInstallationEvent.osVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for AppInstallationEvent() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppInstallationEvent.platform.getter()
{
  v1 = (v0 + *(type metadata accessor for AppInstallationEvent() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppInstallationEvent.source.getter()
{
  v1 = (v0 + *(type metadata accessor for AppInstallationEvent() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppInstallationEvent.token.getter()
{
  v1 = (v0 + *(type metadata accessor for AppInstallationEvent() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppInstallationEvent.webDomain.getter()
{
  v1 = (v0 + *(type metadata accessor for AppInstallationEvent() + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppInstallationEvent.init(bundleID:eligibility:externalVersionID:installDate:installType:isBeta:itemID:osVersion:platform:source:token:webDomain:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *a6;
  *a9 = a1;
  *(a9 + 8) = a2;
  v23 = *(a3 + 48);
  *(a9 + 48) = *(a3 + 32);
  *(a9 + 64) = v23;
  *(a9 + 80) = *(a3 + 64);
  *(a9 + 96) = *(a3 + 80);
  v24 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v24;
  *(a9 + 104) = a4;
  v25 = type metadata accessor for AppInstallationEvent();
  v26 = v25[7];
  v27 = sub_240014D20();
  result = (*(*(v27 - 8) + 32))(a9 + v26, a5, v27);
  *(a9 + v25[8]) = v22;
  *(a9 + v25[9]) = a7;
  v29 = a9 + v25[10];
  *v29 = a8;
  *(v29 + 8) = a10 & 1;
  v30 = (a9 + v25[11]);
  *v30 = a11;
  v30[1] = a12;
  v31 = (a9 + v25[12]);
  *v31 = a13;
  v31[1] = a14;
  v32 = (a9 + v25[13]);
  *v32 = a15;
  v32[1] = a16;
  v33 = (a9 + v25[14]);
  *v33 = a17;
  v33[1] = a18;
  v34 = (a9 + v25[15]);
  *v34 = a19;
  v34[1] = a20;
  return result;
}

uint64_t sub_240007EF4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x656372756F73;
    v7 = 0x6E656B6F74;
    if (a1 != 10)
    {
      v7 = 0x69616D6F44626577;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x44496D657469;
    v9 = 0x6F6973726556736FLL;
    if (a1 != 7)
    {
      v9 = 0x6D726F6674616C70;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4449656C646E7562;
    v2 = 0x446C6C6174736E69;
    v3 = 0x546C6C6174736E69;
    if (a1 != 4)
    {
      v3 = 0x617465427369;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C69626967696C65;
    if (a1 != 1)
    {
      v4 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_240008080()
{
  v1 = *v0;
  sub_2400150E0();
  MEMORY[0x245CB4EB0](v1);
  return sub_240015100();
}

uint64_t sub_2400080C8()
{
  v1 = *v0;
  sub_2400150E0();
  MEMORY[0x245CB4EB0](v1);
  return sub_240015100();
}

uint64_t sub_240008114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2400094CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240008148(uint64_t a1)
{
  v2 = sub_24000860C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240008184(uint64_t a1)
{
  v2 = sub_24000860C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppInstallationEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0BF0, &qword_240015E00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24000860C();
  sub_240015160();
  v11 = *v3;
  v12 = v3[1];
  v56 = 0;
  sub_240014FF0();
  if (!v2)
  {
    v13 = *(v3 + 4);
    v14 = *(v3 + 2);
    v52 = *(v3 + 3);
    v53 = v13;
    v15 = *(v3 + 4);
    v54 = *(v3 + 5);
    v16 = *(v3 + 2);
    v51[0] = *(v3 + 1);
    v51[1] = v16;
    v47 = v52;
    v48 = v15;
    v49 = *(v3 + 5);
    v55 = *(v3 + 96);
    v50 = *(v3 + 96);
    v45 = v51[0];
    v46 = v14;
    v44 = 1;
    sub_240007A80(v51, v42);
    sub_240008660();
    sub_240015010();
    v42[2] = v47;
    v42[3] = v48;
    v42[4] = v49;
    v43 = v50;
    v42[0] = v45;
    v42[1] = v46;
    sub_2400086B4(v42);
    v17 = v3[13];
    v41 = 2;
    sub_240015020();
    v18 = type metadata accessor for AppInstallationEvent();
    v19 = v18[7];
    v41 = 3;
    sub_240014D20();
    sub_240008F64(&qword_27E3C0C08);
    sub_240015010();
    v41 = *(v3 + v18[8]);
    v40[14] = 4;
    sub_240008708();
    sub_240015010();
    v20 = *(v3 + v18[9]);
    v41 = 5;
    sub_240015000();
    v21 = (v3 + v18[10]);
    v22 = *v21;
    v23 = *(v21 + 8);
    v41 = 6;
    sub_240014FE0();
    v24 = (v3 + v18[11]);
    v25 = *v24;
    v26 = v24[1];
    v41 = 7;
    sub_240014FF0();
    v27 = (v3 + v18[12]);
    v28 = *v27;
    v29 = v27[1];
    v41 = 8;
    sub_240014FF0();
    v30 = (v3 + v18[13]);
    v31 = *v30;
    v32 = v30[1];
    v41 = 9;
    sub_240014FF0();
    v33 = (v3 + v18[14]);
    v34 = *v33;
    v35 = v33[1];
    v41 = 10;
    sub_240014FD0();
    v36 = (v3 + v18[15]);
    v37 = *v36;
    v38 = v36[1];
    v41 = 11;
    sub_240014FD0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24000860C()
{
  result = qword_27E3C0BF8;
  if (!qword_27E3C0BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0BF8);
  }

  return result;
}

unint64_t sub_240008660()
{
  result = qword_27E3C0C00;
  if (!qword_27E3C0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0C00);
  }

  return result;
}

unint64_t sub_240008708()
{
  result = qword_27E3C0C10;
  if (!qword_27E3C0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0C10);
  }

  return result;
}

uint64_t AppInstallationEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = sub_240014D20();
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0C18, &qword_240015E08);
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  v12 = type metadata accessor for AppInstallationEvent();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v16 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24000860C();
  v58 = v11;
  sub_240015140();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v59);
  }

  v18 = v56;
  v52 = v4;
  v53 = v15;
  LOBYTE(v60) = 0;
  v19 = sub_240014F60();
  v20 = v53;
  *v53 = v19;
  v20[1] = v21;
  v68 = 1;
  sub_240008F10();
  sub_240014F80();
  v22 = v63;
  *(v20 + 3) = v62;
  *(v20 + 4) = v22;
  *(v20 + 5) = v64;
  *(v20 + 96) = v65;
  v23 = v61;
  *(v20 + 1) = v60;
  *(v20 + 2) = v23;
  v67 = 2;
  v51 = 0;
  v24 = sub_240014F90();
  v25 = v52;
  v20[13] = v24;
  v67 = 3;
  sub_240008F64(&qword_27E3C0C28);
  sub_240014F80();
  (*(v55 + 32))(v20 + v12[7], v7, v25);
  v66 = 4;
  sub_240008FA8();
  sub_240014F80();
  v26 = v53;
  *(v53 + v12[8]) = v67;
  v67 = 5;
  *(v26 + v12[9]) = sub_240014F70() & 1;
  v67 = 6;
  v27 = sub_240014F50();
  v28 = v26 + v12[10];
  *v28 = v27;
  v28[8] = v29 & 1;
  v67 = 7;
  v30 = sub_240014F60();
  v31 = (v26 + v12[11]);
  *v31 = v30;
  v31[1] = v32;
  v67 = 8;
  v33 = sub_240014F60();
  LODWORD(v51) = 1;
  v34 = (v53 + v12[12]);
  *v34 = v33;
  v34[1] = v35;
  v67 = 9;
  v36 = sub_240014F60();
  v37 = (v53 + v12[13]);
  *v37 = v36;
  v37[1] = v38;
  v67 = 10;
  v39 = sub_240014F40();
  v40 = (v53 + v12[14]);
  *v40 = v39;
  v40[1] = v41;
  v67 = 11;
  v42 = sub_240014F40();
  v44 = v43;
  (*(v18 + 8))(v58, v57);
  v45 = v12[15];
  v47 = v53;
  v46 = v54;
  v48 = (v53 + v45);
  *v48 = v42;
  v48[1] = v44;
  sub_240008FFC(v47, v46);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  return sub_240009060(v47);
}

unint64_t sub_240008F10()
{
  result = qword_27E3C0C20;
  if (!qword_27E3C0C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0C20);
  }

  return result;
}

uint64_t sub_240008F64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_240014D20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_240008FA8()
{
  result = qword_27E3C0C30;
  if (!qword_27E3C0C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0C30);
  }

  return result;
}

uint64_t sub_240008FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallationEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240009060(uint64_t a1)
{
  v2 = type metadata accessor for AppInstallationEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2400090F8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void sub_24000912C()
{
  sub_240014D20();
  if (v0 <= 0x3F)
  {
    sub_240009228(319, &qword_280FB4F00);
    if (v1 <= 0x3F)
    {
      sub_240009228(319, &qword_280FB4F08);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_240009228(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_240014E60();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppInstallationEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppInstallationEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2400093C8()
{
  result = qword_27E3C0C38;
  if (!qword_27E3C0C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0C38);
  }

  return result;
}

unint64_t sub_240009420()
{
  result = qword_27E3C0C40;
  if (!qword_27E3C0C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0C40);
  }

  return result;
}

unint64_t sub_240009478()
{
  result = qword_27E3C0C48;
  if (!qword_27E3C0C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0C48);
  }

  return result;
}

uint64_t sub_2400094CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_240015060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69626967696C65 && a2 == 0xEB00000000797469 || (sub_240015060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240016F10 == a2 || (sub_240015060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C6C6174736E69 && a2 == 0xEB00000000657461 || (sub_240015060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x546C6C6174736E69 && a2 == 0xEB00000000657079 || (sub_240015060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x617465427369 && a2 == 0xE600000000000000 || (sub_240015060() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000 || (sub_240015060() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_240015060() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_240015060() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_240015060() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_240015060() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69616D6F44626577 && a2 == 0xE90000000000006ELL)
  {

    return 11;
  }

  else
  {
    v6 = sub_240015060();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

void sub_2400098A4()
{
  type metadata accessor for ServiceConnection();
  v0 = swift_allocObject();
  v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v2 = sub_240014D90();
  v3 = [v1 initWithMachServiceName:v2 options:0];

  *(v0 + 16) = v3;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = &unk_2851FE140;
  v7 = [v4 interfaceWithProtocol_];

  [v5 setRemoteObjectInterface_];
  v14 = sub_240009AB8;
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_240009AC4;
  v13 = &block_descriptor;
  v8 = _Block_copy(&v10);
  [v5 setInterruptionHandler_];
  _Block_release(v8);
  v14 = sub_240009B08;
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_240009AC4;
  v13 = &block_descriptor_4;
  v9 = _Block_copy(&v10);
  [v5 setInvalidationHandler_];
  _Block_release(v9);
  [v5 resume];

  qword_27E3C3470 = v0;
}

uint64_t sub_240009AC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_240009B14(const char *a1)
{
  if (qword_27E3C0878 != -1)
  {
    swift_once();
  }

  v2 = sub_240014D60();
  __swift_project_value_buffer(v2, qword_27E3C0BD8);
  oslog = sub_240014D40();
  v3 = sub_240014E50();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240000000, oslog, v3, a1, v4, 2u);
    MEMORY[0x245CB5320](v4, -1, -1);
  }
}

uint64_t sub_240009C04()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t InstallationEvent.id.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t InstallationEvent.altDsid.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InstallationEvent.dsid.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t InstallationEvent.billingStorefront.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t InstallationEvent.bundleID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t InstallationEvent.countryCode.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t InstallationEvent.eventVersion.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t InstallationEvent.evid.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t InstallationEvent.installDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InstallationEvent() + 48);
  v4 = sub_240014D20();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for InstallationEvent()
{
  result = qword_27E3C0C68;
  if (!qword_27E3C0C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InstallationEvent.installType.getter()
{
  v1 = (v0 + *(type metadata accessor for InstallationEvent() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InstallationEvent.itemID.getter()
{
  v1 = (v0 + *(type metadata accessor for InstallationEvent() + 60));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t InstallationEvent.osVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for InstallationEvent() + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InstallationEvent.platform.getter()
{
  v1 = (v0 + *(type metadata accessor for InstallationEvent() + 68));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InstallationEvent.source.getter()
{
  v1 = (v0 + *(type metadata accessor for InstallationEvent() + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InstallationEvent.storefront.getter()
{
  v1 = (v0 + *(type metadata accessor for InstallationEvent() + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InstallationEvent.token.getter()
{
  v1 = (v0 + *(type metadata accessor for InstallationEvent() + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InstallationEvent.webDomain.getter()
{
  v1 = (v0 + *(type metadata accessor for InstallationEvent() + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InstallationEvent.postTargetDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InstallationEvent() + 88);
  v4 = sub_240014D20();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InstallationEvent.gsToken.getter()
{
  v1 = (v0 + *(type metadata accessor for InstallationEvent() + 92));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InstallationEvent.jwtGSToken.getter()
{
  v1 = (v0 + *(type metadata accessor for InstallationEvent() + 96));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InstallationEvent.init(altDsid:dsid:billingStorefront:bundleID:clientID:countryCode:eventVersion:evid:installDate:installType:isBeta:itemID:osVersion:platform:source:storefront:token:webDomain:postTargetDate:gsToken:jwtGSToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14 & 1;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  v38 = type metadata accessor for InstallationEvent();
  v39 = v38[12];
  v40 = sub_240014D20();
  v41 = *(*(v40 - 8) + 32);
  v41(a9 + v39, a15, v40);
  v42 = (a9 + v38[13]);
  *v42 = a16;
  v42[1] = a17;
  *(a9 + v38[14]) = a18;
  v43 = a9 + v38[15];
  *v43 = a19;
  *(v43 + 8) = a20 & 1;
  v44 = (a9 + v38[16]);
  *v44 = a21;
  v44[1] = a22;
  v45 = (a9 + v38[17]);
  *v45 = a23;
  v45[1] = a24;
  v46 = (a9 + v38[18]);
  *v46 = a25;
  v46[1] = a26;
  v47 = (a9 + v38[19]);
  *v47 = a27;
  v47[1] = a28;
  v48 = (a9 + v38[20]);
  *v48 = a29;
  v48[1] = a30;
  v49 = (a9 + v38[21]);
  *v49 = a31;
  v49[1] = a32;
  result = (v41)(a9 + v38[22], a33, v40);
  v51 = (a9 + v38[23]);
  *v51 = a34;
  v51[1] = a35;
  v52 = (a9 + v38[24]);
  *v52 = a36;
  v52[1] = a37;
  return result;
}

unint64_t sub_24000A3D4(char a1)
{
  result = 0x64697344746C61;
  switch(a1)
  {
    case 1:
      result = 1684632420;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x4449656C646E7562;
      break;
    case 4:
      result = 0x4449746E65696C63;
      break;
    case 5:
      result = 0x437972746E756F63;
      break;
    case 6:
      result = 0x726556746E657665;
      break;
    case 7:
      result = 1684633189;
      break;
    case 8:
      result = 0x446C6C6174736E69;
      break;
    case 9:
      result = 0x546C6C6174736E69;
      break;
    case 10:
      result = 0x617465427369;
      break;
    case 11:
      result = 0x44496D657469;
      break;
    case 12:
      result = 0x6F6973726556736FLL;
      break;
    case 13:
      result = 0x6D726F6674616C70;
      break;
    case 14:
      result = 0x656372756F73;
      break;
    case 15:
      result = 0x6F726665726F7473;
      break;
    case 16:
      result = 0x6E656B6F74;
      break;
    case 17:
      result = 0x69616D6F44626577;
      break;
    case 18:
      result = 0x6772615474736F70;
      break;
    case 19:
      result = 0x6E656B6F547367;
      break;
    case 20:
      result = 0x6B6F54534774776ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24000A61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24000BDD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24000A650(uint64_t a1)
{
  v2 = sub_24000ABC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24000A68C(uint64_t a1)
{
  v2 = sub_24000ABC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InstallationEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0C50, &qword_240016050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v62 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24000ABC0();
  sub_240015160();
  v11 = *v3;
  v12 = v3[1];
  v63 = 0;
  sub_240014FD0();
  if (!v2)
  {
    v13 = v3[2];
    v14 = *(v3 + 24);
    v63 = 1;
    sub_240014FE0();
    v15 = v3[4];
    v16 = v3[5];
    v63 = 2;
    sub_240014FD0();
    v17 = v3[6];
    v18 = v3[7];
    v63 = 3;
    sub_240014FF0();
    v19 = v3[8];
    v20 = v3[9];
    v63 = 4;
    sub_240014FF0();
    v21 = v3[10];
    v22 = v3[11];
    v63 = 5;
    sub_240014FD0();
    v23 = v3[12];
    v24 = v3[13];
    v63 = 6;
    sub_240014FF0();
    v25 = v3[14];
    v26 = *(v3 + 120);
    v63 = 7;
    sub_240014FE0();
    v27 = type metadata accessor for InstallationEvent();
    v28 = v27[12];
    v63 = 8;
    sub_240014D20();
    sub_240008F64(&qword_27E3C0C08);
    sub_240015010();
    v29 = (v3 + v27[13]);
    v30 = *v29;
    v31 = v29[1];
    v63 = 9;
    sub_240014FF0();
    v32 = *(v3 + v27[14]);
    v63 = 10;
    sub_240015000();
    v33 = (v3 + v27[15]);
    v34 = *v33;
    v35 = *(v33 + 8);
    v63 = 11;
    sub_240014FE0();
    v36 = (v3 + v27[16]);
    v37 = *v36;
    v38 = v36[1];
    v63 = 12;
    sub_240014FF0();
    v39 = (v3 + v27[17]);
    v40 = *v39;
    v41 = v39[1];
    v63 = 13;
    sub_240014FF0();
    v42 = (v3 + v27[18]);
    v43 = *v42;
    v44 = v42[1];
    v63 = 14;
    sub_240014FF0();
    v45 = (v3 + v27[19]);
    v46 = *v45;
    v47 = v45[1];
    v63 = 15;
    sub_240014FD0();
    v48 = (v3 + v27[20]);
    v49 = *v48;
    v50 = v48[1];
    v63 = 16;
    sub_240014FD0();
    v51 = (v3 + v27[21]);
    v52 = *v51;
    v53 = v51[1];
    v63 = 17;
    sub_240014FD0();
    v54 = v27[22];
    v63 = 18;
    sub_240015010();
    v55 = (v3 + v27[23]);
    v56 = *v55;
    v57 = v55[1];
    v63 = 19;
    sub_240014FD0();
    v58 = (v3 + v27[24]);
    v59 = *v58;
    v60 = v58[1];
    v63 = 20;
    sub_240014FD0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24000ABC0()
{
  result = qword_27E3C0C58;
  if (!qword_27E3C0C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0C58);
  }

  return result;
}

uint64_t InstallationEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = sub_240014D20();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v65 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0C60, &qword_240016058);
  v71 = *(v73 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v12 = &v65 - v11;
  v13 = type metadata accessor for InstallationEvent();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24000ABC0();
  v72 = v12;
  v18 = v74;
  sub_240015140();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = v9;
  v65 = v7;
  v66 = v13;
  v67 = a1;
  v74 = v16;
  v75 = 0;
  v20 = sub_240014F40();
  v21 = v74;
  *v74 = v20;
  v21[1] = v22;
  v75 = 1;
  v21[2] = sub_240014F50();
  *(v21 + 24) = v23 & 1;
  v75 = 2;
  v21[4] = sub_240014F40();
  v21[5] = v24;
  v75 = 3;
  v21[6] = sub_240014F60();
  v21[7] = v25;
  v75 = 4;
  v21[8] = sub_240014F60();
  v21[9] = v26;
  v75 = 5;
  v21[10] = sub_240014F40();
  v21[11] = v27;
  v75 = 6;
  v21[12] = sub_240014F60();
  v21[13] = v28;
  v75 = 7;
  v21[14] = sub_240014F50();
  *(v21 + 120) = v29 & 1;
  v75 = 8;
  sub_240008F64(&qword_27E3C0C28);
  v30 = v19;
  sub_240014F80();
  v31 = *(v69 + 32);
  v31(v74 + v66[12], v30, v70);
  v75 = 9;
  v32 = sub_240014F60();
  v33 = (v74 + v66[13]);
  *v33 = v32;
  v33[1] = v34;
  v75 = 10;
  *(v74 + v66[14]) = sub_240014F70() & 1;
  v75 = 11;
  v35 = sub_240014F50();
  v36 = v74 + v66[15];
  *v36 = v35;
  v36[8] = v37 & 1;
  v75 = 12;
  v38 = sub_240014F60();
  v39 = (v74 + v66[16]);
  *v39 = v38;
  v39[1] = v40;
  v75 = 13;
  v41 = sub_240014F60();
  v42 = (v74 + v66[17]);
  *v42 = v41;
  v42[1] = v43;
  v75 = 14;
  v44 = sub_240014F60();
  v45 = (v74 + v66[18]);
  *v45 = v44;
  v45[1] = v46;
  v75 = 15;
  v47 = sub_240014F40();
  v48 = (v74 + v66[19]);
  *v48 = v47;
  v48[1] = v49;
  v75 = 16;
  v50 = sub_240014F40();
  v51 = (v74 + v66[20]);
  *v51 = v50;
  v51[1] = v52;
  v75 = 17;
  v53 = sub_240014F40();
  v54 = (v74 + v66[21]);
  *v54 = v53;
  v54[1] = v55;
  v75 = 18;
  sub_240014F80();
  v31(v74 + v66[22], v65, v70);
  v75 = 19;
  v56 = sub_240014F40();
  v57 = (v74 + v66[23]);
  *v57 = v56;
  v57[1] = v58;
  v75 = 20;
  v59 = sub_240014F40();
  v61 = v60;
  (*(v71 + 8))(v72, v73);
  v62 = v74;
  v63 = (v74 + v66[24]);
  *v63 = v59;
  v63[1] = v61;
  sub_24000B938(v62, v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  return sub_24000B99C(v62);
}

uint64_t sub_24000B938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstallationEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24000B99C(uint64_t a1)
{
  v2 = type metadata accessor for InstallationEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24000BA28@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
}

void sub_24000BA5C()
{
  sub_240009228(319, &qword_280FB4F08);
  if (v0 <= 0x3F)
  {
    sub_240009228(319, &qword_280FB4F00);
    if (v1 <= 0x3F)
    {
      sub_240014D20();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for InstallationEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InstallationEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24000BCD0()
{
  result = qword_27E3C0C78;
  if (!qword_27E3C0C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0C78);
  }

  return result;
}

unint64_t sub_24000BD28()
{
  result = qword_27E3C0C80;
  if (!qword_27E3C0C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0C80);
  }

  return result;
}

unint64_t sub_24000BD80()
{
  result = qword_27E3C0C88;
  if (!qword_27E3C0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0C88);
  }

  return result;
}

uint64_t sub_24000BDD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64697344746C61 && a2 == 0xE700000000000000;
  if (v4 || (sub_240015060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632420 && a2 == 0xE400000000000000 || (sub_240015060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240016FA0 == a2 || (sub_240015060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_240015060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000 || (sub_240015060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_240015060() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726556746E657665 && a2 == 0xEC0000006E6F6973 || (sub_240015060() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1684633189 && a2 == 0xE400000000000000 || (sub_240015060() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x446C6C6174736E69 && a2 == 0xEB00000000657461 || (sub_240015060() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x546C6C6174736E69 && a2 == 0xEB00000000657079 || (sub_240015060() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x617465427369 && a2 == 0xE600000000000000 || (sub_240015060() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000 || (sub_240015060() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_240015060() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_240015060() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_240015060() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F726665726F7473 && a2 == 0xEA0000000000746ELL || (sub_240015060() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000 || (sub_240015060() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x69616D6F44626577 && a2 == 0xE90000000000006ELL || (sub_240015060() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6772615474736F70 && a2 == 0xEE00657461447465 || (sub_240015060() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6E656B6F547367 && a2 == 0xE700000000000000 || (sub_240015060() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6B6F54534774776ALL && a2 == 0xEA00000000006E65)
  {

    return 20;
  }

  else
  {
    v6 = sub_240015060();

    if (v6)
    {
      return 20;
    }

    else
    {
      return 21;
    }
  }
}

unint64_t AppInstallationMetricsError.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E55;
  v3 = 0xD00000000000002BLL;
  v4 = 0xD000000000000018;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001ALL;
  if (v1 != 1)
  {
    v5 = 0x6874756120746F4ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24000C548(uint64_t a1)
{
  v2 = sub_24000D034();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24000C584(uint64_t a1)
{
  v2 = sub_24000D034();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24000C5C0()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x456B726F7774656ELL;
  v4 = 0x4E746E756F636361;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0x6F68747541746F6ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24000C6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24000E2E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24000C6DC(uint64_t a1)
{
  v2 = sub_24000CF8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24000C718(uint64_t a1)
{
  v2 = sub_24000CF8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24000C754(uint64_t a1)
{
  v2 = sub_24000D088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24000C790(uint64_t a1)
{
  v2 = sub_24000D088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24000C7CC(uint64_t a1)
{
  v2 = sub_24000D0DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24000C808(uint64_t a1)
{
  v2 = sub_24000D0DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24000C844(uint64_t a1)
{
  v2 = sub_24000D130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24000C880(uint64_t a1)
{
  v2 = sub_24000D130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24000C8BC(uint64_t a1)
{
  v2 = sub_24000CFE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24000C8F8(uint64_t a1)
{
  v2 = sub_24000CFE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24000C934(uint64_t a1)
{
  v2 = sub_24000D184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24000C970(uint64_t a1)
{
  v2 = sub_24000D184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppInstallationMetricsError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0C90, &qword_2400162B0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0C98, &qword_2400162B8);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v44 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0CA0, &qword_2400162C0);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v41 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0CA8, &qword_2400162C8);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x28223BE20](v12);
  v38 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0CB0, &qword_2400162D0);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x28223BE20](v15);
  v35 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0CB8, &qword_2400162D8);
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0CC0, &qword_2400162E0);
  v22 = *(v50 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v50);
  v25 = &v34 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24000CF8C();
  sub_240015160();
  v28 = (v22 + 8);
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v54 = 3;
      sub_24000D088();
      v29 = v41;
      v30 = v50;
      sub_240014FC0();
      v32 = v42;
      v31 = v43;
    }

    else if (v26 == 4)
    {
      v55 = 4;
      sub_24000D034();
      v29 = v44;
      v30 = v50;
      sub_240014FC0();
      v32 = v45;
      v31 = v46;
    }

    else
    {
      v56 = 5;
      sub_24000CFE0();
      v29 = v47;
      v30 = v50;
      sub_240014FC0();
      v32 = v48;
      v31 = v49;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v52 = 1;
      sub_24000D130();
      v29 = v35;
      v30 = v50;
      sub_240014FC0();
      v32 = v36;
      v31 = v37;
    }

    else
    {
      v53 = 2;
      sub_24000D0DC();
      v29 = v38;
      v30 = v50;
      sub_240014FC0();
      v32 = v39;
      v31 = v40;
    }

LABEL_12:
    (*(v32 + 8))(v29, v31);
    return (*v28)(v25, v30);
  }

  v51 = 0;
  sub_24000D184();
  v30 = v50;
  sub_240014FC0();
  (*(v34 + 8))(v21, v18);
  return (*v28)(v25, v30);
}

unint64_t sub_24000CF8C()
{
  result = qword_27E3C0CC8;
  if (!qword_27E3C0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0CC8);
  }

  return result;
}

unint64_t sub_24000CFE0()
{
  result = qword_27E3C0CD0;
  if (!qword_27E3C0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0CD0);
  }

  return result;
}

unint64_t sub_24000D034()
{
  result = qword_27E3C0CD8;
  if (!qword_27E3C0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0CD8);
  }

  return result;
}

unint64_t sub_24000D088()
{
  result = qword_27E3C0CE0;
  if (!qword_27E3C0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0CE0);
  }

  return result;
}

unint64_t sub_24000D0DC()
{
  result = qword_27E3C0CE8;
  if (!qword_27E3C0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0CE8);
  }

  return result;
}

unint64_t sub_24000D130()
{
  result = qword_27E3C0CF0;
  if (!qword_27E3C0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0CF0);
  }

  return result;
}

unint64_t sub_24000D184()
{
  result = qword_27E3C0CF8;
  if (!qword_27E3C0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0CF8);
  }

  return result;
}

uint64_t AppInstallationMetricsError.hashValue.getter()
{
  v1 = *v0;
  sub_2400150E0();
  MEMORY[0x245CB4EB0](v1);
  return sub_240015100();
}

uint64_t AppInstallationMetricsError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0D00, &qword_2400162E8);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = &v52[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0D08, &qword_2400162F0);
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v66 = &v52[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0D10, &qword_2400162F8);
  v11 = *(v10 - 8);
  v60 = v10;
  v61 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v70 = &v52[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0D18, &qword_240016300);
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](v14);
  v69 = &v52[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0D20, &qword_240016308);
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v52[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0D28, &qword_240016310);
  v55 = *(v21 - 8);
  v22 = *(v55 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v52[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0D30, &unk_240016318);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v52[-v28];
  v30 = a1[3];
  v31 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_24000CF8C();
  v32 = v71;
  sub_240015140();
  if (!v32)
  {
    v54 = v21;
    v33 = v20;
    v35 = v69;
    v34 = v70;
    v71 = v26;
    v36 = v29;
    v37 = sub_240014FA0();
    if (*(v37 + 16) != 1 || (v38 = *(v37 + 32), v38 == 6))
    {
      v41 = sub_240014ED0();
      swift_allocError();
      v43 = v42;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0960, &qword_2400157B0) + 48);
      *v43 = &type metadata for AppInstallationMetricsError;
      sub_240014F30();
      sub_240014EC0();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
      swift_willThrow();
      (*(v71 + 8))(v36, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = *(v37 + 32);
      if (v38 > 2)
      {
        if (v38 == 3)
        {
          v48 = v68;
          v76 = 3;
          sub_24000D088();
          sub_240014F20();
          v49 = v71;
          (*(v61 + 8))(v34, v60);
          (*(v49 + 8))(v29, v25);
          swift_unknownObjectRelease();
          v45 = v48;
        }

        else
        {
          v45 = v68;
          v46 = v71;
          if (v38 == 4)
          {
            v77 = 4;
            sub_24000D034();
            v47 = v66;
            sub_240014F20();
            (*(v63 + 8))(v47, v62);
          }

          else
          {
            v78 = 5;
            sub_24000CFE0();
            v50 = v67;
            sub_240014F20();
            (*(v64 + 8))(v50, v65);
          }

          (*(v46 + 8))(v29, v25);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v38)
        {
          if (v38 == 1)
          {
            v74 = 1;
            sub_24000D130();
            v39 = v33;
            sub_240014F20();
            v40 = v71;
            (*(v56 + 8))(v39, v57);
          }

          else
          {
            v75 = 2;
            sub_24000D0DC();
            sub_240014F20();
            v40 = v71;
            (*(v58 + 8))(v35, v59);
          }
        }

        else
        {
          v73 = 0;
          sub_24000D184();
          sub_240014F20();
          (*(v55 + 8))(v24, v54);
          v40 = v71;
        }

        (*(v40 + 8))(v29, v25);
        swift_unknownObjectRelease();
        v45 = v68;
      }

      *v45 = v53;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v72);
}

unint64_t sub_24000DA94()
{
  result = qword_27E3C0D38;
  if (!qword_27E3C0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0D38);
  }

  return result;
}

unint64_t sub_24000DAF8()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E55;
  v3 = 0xD00000000000002BLL;
  v4 = 0xD000000000000018;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001ALL;
  if (v1 != 1)
  {
    v5 = 0x6874756120746F4ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for AppInstallationEligibility.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppInstallationEligibility.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24000DDC0()
{
  result = qword_27E3C0D40;
  if (!qword_27E3C0D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0D40);
  }

  return result;
}

unint64_t sub_24000DE18()
{
  result = qword_27E3C0D48;
  if (!qword_27E3C0D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0D48);
  }

  return result;
}

unint64_t sub_24000DE70()
{
  result = qword_27E3C0D50;
  if (!qword_27E3C0D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0D50);
  }

  return result;
}

unint64_t sub_24000DEC8()
{
  result = qword_27E3C0D58;
  if (!qword_27E3C0D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0D58);
  }

  return result;
}

unint64_t sub_24000DF20()
{
  result = qword_27E3C0D60;
  if (!qword_27E3C0D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0D60);
  }

  return result;
}

unint64_t sub_24000DF78()
{
  result = qword_27E3C0D68;
  if (!qword_27E3C0D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0D68);
  }

  return result;
}

unint64_t sub_24000DFD0()
{
  result = qword_27E3C0D70;
  if (!qword_27E3C0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0D70);
  }

  return result;
}

unint64_t sub_24000E028()
{
  result = qword_27E3C0D78;
  if (!qword_27E3C0D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0D78);
  }

  return result;
}

unint64_t sub_24000E080()
{
  result = qword_27E3C0D80;
  if (!qword_27E3C0D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0D80);
  }

  return result;
}

unint64_t sub_24000E0D8()
{
  result = qword_27E3C0D88;
  if (!qword_27E3C0D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0D88);
  }

  return result;
}

unint64_t sub_24000E130()
{
  result = qword_27E3C0D90;
  if (!qword_27E3C0D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0D90);
  }

  return result;
}

unint64_t sub_24000E188()
{
  result = qword_27E3C0D98;
  if (!qword_27E3C0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0D98);
  }

  return result;
}

unint64_t sub_24000E1E0()
{
  result = qword_27E3C0DA0;
  if (!qword_27E3C0DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0DA0);
  }

  return result;
}

unint64_t sub_24000E238()
{
  result = qword_27E3C0DA8;
  if (!qword_27E3C0DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0DA8);
  }

  return result;
}

unint64_t sub_24000E290()
{
  result = qword_27E3C0DB0;
  if (!qword_27E3C0DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0DB0);
  }

  return result;
}

uint64_t sub_24000E2E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_240015060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000240017050 == a2 || (sub_240015060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F68747541746F6ELL && a2 == 0xED000064657A6972 || (sub_240015060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x456B726F7774656ELL && a2 == 0xEC000000726F7272 || (sub_240015060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E746E756F636361 && a2 == 0xEF646E756F46746FLL || (sub_240015060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000240017070 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_240015060();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24000E544(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallationEvent();
  sub_2400124FC(&qword_27E3C0DC0);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_240015150();
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v4);
  __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_240015050();
  (*(v7 + 8))(v10, v4);
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t sub_24000E6D4@<X0>(uint64_t *a1@<X0>, _BYTE **a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C08A0, &unk_240015680);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = -256;
  v30 = (v7 + 16);
  v8 = sub_240014C80();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_240014C70();
  sub_240014EE0();
  v11 = sub_240014EF0();
  result = (*(*(v11 - 8) + 48))(v6, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_240013970;
    *(v13 + 24) = v7;
    v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C08A8, &qword_240016AD0);
    v32[0] = sub_240013C64;
    v32[1] = v13;

    v14 = sub_240014C60();
    sub_240002E10(v32, v6);
    v14(v31, 0);
    v15 = sub_24001359C();
    v16 = *a1;
    v17 = MEMORY[0x277CC9318];
    v18 = *(MEMORY[0x277CC9318] - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v15);
    v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21);
    v22 = sub_240004694(v21, v17, *(*(*(*(v15 + 8) + 8) + 8) + 8));
    v24 = v23;
    (*(v18 + 8))(v21, v17);
    sub_240004C30();
    v25 = v32[5];
    sub_240014C50();
    if (v25)
    {

      sub_240004C84(v22, v24);
    }

    sub_240004C84(v22, v24);
    v26 = v30;
    result = swift_beginAccess();
    v27 = *v26;
    if (v27 >> 8 <= 0xFE)
    {
      v28 = *v29;
      *v28 = v27;
      v28[1] = BYTE1(v27) & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24000EA40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C08A0, &unk_240015680);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v29 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v29[1] = v7 + 16;
  *(v7 + 24) = -1;
  v8 = sub_240014C80();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_240014C70();
  sub_240014EE0();
  v11 = sub_240014EF0();
  result = (*(*(v11 - 8) + 48))(v6, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_24001386C;
    *(v13 + 24) = v7;
    v31[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C08A8, &qword_240016AD0);
    v31[0] = sub_240013C64;
    v31[1] = v13;

    v14 = sub_240014C60();
    sub_240002E10(v31, v6);
    v14(v30, 0);
    v15 = sub_24001359C();
    v16 = *a1;
    v17 = MEMORY[0x277CC9318];
    v18 = *(MEMORY[0x277CC9318] - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v15);
    v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21);
    v22 = sub_240004694(v21, v17, *(*(*(*(v15 + 8) + 8) + 8) + 8));
    v24 = v23;
    (*(v18 + 8))(v21, v17);
    sub_240004C30();
    v25 = v31[5];
    sub_240014C50();
    if (v25)
    {

      sub_240004C84(v22, v24);
    }

    sub_240004C84(v22, v24);
    result = swift_beginAccess();
    v26 = *(v7 + 24);
    if (v26 != 255)
    {
      v27 = *(v7 + 16);
      v28 = *v29[0];
      *v28 = v27;
      *(v28 + 8) = v26 & 1;
      sub_240013888(v27, v26 & 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24000EDB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C08A0, &unk_240015680);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v30 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v30[1] = v7 + 16;
  *(v7 + 24) = 0;
  *(v7 + 32) = -1;
  v8 = sub_240014C80();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_240014C70();
  sub_240014EE0();
  v11 = sub_240014EF0();
  result = (*(*(v11 - 8) + 48))(v6, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_240013564;
    *(v13 + 24) = v7;
    v32[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C08A8, &qword_240016AD0);
    v32[0] = sub_240013580;
    v32[1] = v13;

    v14 = sub_240014C60();
    sub_240002E10(v32, v6);
    v14(v31, 0);
    v15 = sub_24001359C();
    v16 = *a1;
    v17 = MEMORY[0x277CC9318];
    v18 = *(MEMORY[0x277CC9318] - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20](v15);
    v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21);
    v22 = sub_240004694(v21, v17, *(*(*(*(v15 + 8) + 8) + 8) + 8));
    v24 = v23;
    (*(v18 + 8))(v21, v17);
    sub_240004C30();
    v25 = v32[5];
    sub_240014C50();
    if (v25)
    {

      sub_240004C84(v22, v24);
    }

    sub_240004C84(v22, v24);
    result = swift_beginAccess();
    v26 = *(v7 + 32);
    if (v26 != 255)
    {
      v27 = *(v7 + 16);
      v28 = *(v7 + 24);
      v29 = *v30[0];
      *v29 = v27;
      *(v29 + 8) = v28;
      *(v29 + 16) = v26 & 1;
      sub_24001364C(v27, v28, v26 & 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24000F124(void *a1, uint64_t a2)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_240015120();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E30, &qword_240016B08);
    sub_24001398C(&qword_27E3C0E38, &qword_27E3C0E30, &qword_240016B08);
    __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_240015040();
    swift_beginAccess();
    *(a2 + 16) = v6;
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  return result;
}

uint64_t sub_24000F22C(void *a1, uint64_t a2)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_240015120();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E10, &qword_240016AF0);
    sub_24001398C(&qword_27E3C0E18, &qword_27E3C0E10, &qword_240016AF0);
    __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_240015040();
    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = v8;
    v7 = *(a2 + 24);
    *(a2 + 24) = v9;
    sub_240013894(v6, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  return result;
}

uint64_t sub_24000F348(void *a1, uint64_t a2)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_240015120();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0DF0, &qword_240016AD8);
    sub_24001398C(&qword_27E3C0DF8, &qword_27E3C0DF0, &qword_240016AD8);
    __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_240015040();
    swift_beginAccess();
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    *(a2 + 16) = v9;
    v8 = *(a2 + 32);
    *(a2 + 32) = v10;
    sub_2400136A4(v6, v7, v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  return result;
}

uint64_t sub_24000F464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[13] = *v3;
  v5 = *(type metadata accessor for AppInstallationEvent() - 8);
  v4[14] = v5;
  v4[15] = *(v5 + 64);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24000F560, 0, 0);
}

uint64_t sub_24000F560()
{
  *(v0 + 40) = &type metadata for FeatureFlag;
  *(v0 + 48) = sub_240006DF0();
  v1 = sub_240014D30();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v1)
  {
    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    v6 = *(v0 + 72);
    sub_2400124FC(&qword_27E3C0DB8);
    sub_2400124FC(&qword_27E3C0DC0);
    sub_240008FFC(*v6, v2);
    sub_240008FFC(v2, v3);
    v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v8 = swift_allocObject();
    sub_2400139E0(v3, v8 + v7);
    v9 = sub_240014CB0();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_240014CA0();
    *(v0 + 56) = sub_240013A44;
    *(v0 + 64) = v8;
    sub_2400022D8();
    v12 = sub_240014C90();
    *(v0 + 144) = v12;
    *(v0 + 152) = v13;
    v14 = *(v0 + 136);
    v20 = v12;
    v21 = v13;
    v22 = *(v0 + 96);
    v23 = *(v0 + 104);
    v29 = *(v0 + 80);

    sub_240009060(v14);
    v24 = *(v22 + 16);
    v25 = swift_task_alloc();
    *(v0 + 160) = v25;
    *(v25 + 16) = v24;
    *(v25 + 24) = v29;
    *(v25 + 40) = v20;
    *(v25 + 48) = v21;
    *(v25 + 56) = v23;
    v26 = *(MEMORY[0x277D85A40] + 4);
    v27 = swift_task_alloc();
    *(v0 + 168) = v27;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E20, &qword_240016AF8);
    *v27 = v0;
    v27[1] = sub_24000F87C;

    return MEMORY[0x2822008A0](v0 + 184, 0, 0, 0xD000000000000021, 0x80000002400170F0, sub_240013AB0, v25, v28);
  }

  else
  {
    sub_2400066B8();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_24000F87C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_24000FA20;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_24000F998;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24000F998()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_240004C84(*(v0 + 144), *(v0 + 152));
  v3 = *(v0 + 184);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_24000FA20()
{
  v1 = v0[20];
  sub_240004C84(v0[18], v0[19]);

  v2 = v0[22];
  v4 = v0[16];
  v3 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24000FAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[9] = a2;
  v4[12] = *v3;
  return MEMORY[0x2822009F8](sub_24000FAEC, 0, 0);
}

uint64_t sub_24000FAEC()
{
  *(v0 + 40) = &type metadata for FeatureFlag;
  *(v0 + 48) = sub_240006DF0();
  v1 = sub_240014D30();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v1)
  {
    v2 = sub_240014CB0();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    sub_240014CA0();
    *(v0 + 56) = sub_240013C48;
    *(v0 + 64) = 0;
    sub_2400022D8();
    v5 = sub_240014C90();
    *(v0 + 104) = v5;
    *(v0 + 112) = v6;
    v10 = v5;
    v11 = v6;
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v19 = *(v0 + 72);

    v14 = *(v13 + 16);
    v15 = swift_task_alloc();
    *(v0 + 120) = v15;
    *(v15 + 16) = v14;
    *(v15 + 24) = v19;
    *(v15 + 40) = v10;
    *(v15 + 48) = v11;
    *(v15 + 56) = v12;
    v16 = *(MEMORY[0x277D85A40] + 4);
    v17 = swift_task_alloc();
    *(v0 + 128) = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E20, &qword_240016AF8);
    *v17 = v0;
    v17[1] = sub_24000FD34;

    return MEMORY[0x2822008A0](v0 + 144, 0, 0, 0xD000000000000021, 0x80000002400170F0, sub_2400138AC, v15, v18);
  }

  else
  {
    sub_2400066B8();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_24000FD34()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_24000FEB8;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_24000FE50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24000FE50()
{
  sub_240004C84(*(v0 + 104), *(v0 + 112));
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24000FEB8()
{
  v1 = v0[15];
  sub_240004C84(v0[13], v0[14]);

  v2 = v0[17];
  v3 = v0[1];

  return v3();
}

uint64_t sub_24000FF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[10] = a2;
  v4[13] = *v3;
  return MEMORY[0x2822009F8](sub_24000FF74, 0, 0);
}

uint64_t sub_24000FF74()
{
  *(v0 + 40) = &type metadata for FeatureFlag;
  *(v0 + 48) = sub_240006DF0();
  v1 = sub_240014D30();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v1)
  {
    v2 = sub_240014CB0();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    sub_240014CA0();
    *(v0 + 56) = sub_240013C48;
    *(v0 + 64) = 0;
    sub_2400022D8();
    v5 = sub_240014C90();
    *(v0 + 112) = v5;
    *(v0 + 120) = v6;
    v10 = v5;
    v11 = v6;
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v19 = *(v0 + 80);

    v14 = *(v13 + 16);
    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    *(v15 + 16) = v14;
    *(v15 + 24) = v19;
    *(v15 + 40) = v10;
    *(v15 + 48) = v11;
    *(v15 + 56) = v12;
    v16 = *(MEMORY[0x277D85A40] + 4);
    v17 = swift_task_alloc();
    *(v0 + 136) = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E00, &qword_240016AE0);
    *v17 = v0;
    v17[1] = sub_2400101BC;

    return MEMORY[0x2822008A0](v0 + 72, 0, 0, 0xD000000000000021, 0x80000002400170F0, sub_2400136BC, v15, v18);
  }

  else
  {
    sub_2400066B8();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2400101BC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_240010340;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_2400102D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2400102D8()
{
  sub_240004C84(v0[14], v0[15]);
  v1 = v0[9];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_240010340()
{
  v1 = v0[16];
  sub_240004C84(v0[14], v0[15]);

  v2 = v0[18];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2400103B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[11] = a2;
  v4[14] = *v3;
  return MEMORY[0x2822009F8](sub_2400103FC, 0, 0);
}

uint64_t sub_2400103FC()
{
  *(v0 + 40) = &type metadata for FeatureFlag;
  *(v0 + 48) = sub_240006DF0();
  v1 = sub_240014D30();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v1)
  {
    v2 = sub_240014CB0();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    sub_240014CA0();
    *(v0 + 72) = sub_240013490;
    *(v0 + 80) = 0;
    sub_2400022D8();
    v5 = sub_240014C90();
    *(v0 + 120) = v5;
    *(v0 + 128) = v6;
    v10 = v5;
    v11 = v6;
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    v19 = *(v0 + 88);

    v14 = *(v13 + 16);
    v15 = swift_task_alloc();
    *(v0 + 136) = v15;
    *(v15 + 16) = v14;
    *(v15 + 24) = v19;
    *(v15 + 40) = v10;
    *(v15 + 48) = v11;
    *(v15 + 56) = v12;
    v16 = *(MEMORY[0x277D85A40] + 4);
    v17 = swift_task_alloc();
    *(v0 + 144) = v17;
    *v17 = v0;
    v17[1] = sub_240010634;
    v18 = MEMORY[0x277D837D0];

    return MEMORY[0x2822008A0](v0 + 56, 0, 0, 0xD000000000000021, 0x80000002400170F0, sub_2400134A8, v15, v18);
  }

  else
  {
    sub_2400066B8();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_240010634()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_2400107B8;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_240010750;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_240010750()
{
  sub_240004C84(v0[15], v0[16]);
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_2400107B8()
{
  v1 = v0[17];
  sub_240004C84(v0[15], v0[16]);

  v2 = v0[19];
  v3 = v0[1];

  return v3();
}

uint64_t sub_240010828(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E28, &qword_240016B00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_240013B4C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240011604;
  aBlock[3] = &block_descriptor_92;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_240014E80();
  swift_unknownObjectRelease();
  sub_240004F3C(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0DD0, &qword_240016AB0);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_240013BF0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2400066B8();
    v23 = swift_allocError();
    *v24 = 1;
    v34[0] = v23;
    sub_240014E10();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_240010B38(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E28, &qword_240016B00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_240013C44;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240011604;
  aBlock[3] = &block_descriptor_68;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_240014E80();
  swift_unknownObjectRelease();
  sub_240004F3C(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0DD0, &qword_240016AB0);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_240013C60, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2400066B8();
    v23 = swift_allocError();
    *v24 = 1;
    v34[0] = v23;
    sub_240014E10();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_240010E48(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E08, &qword_240016AE8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_2400136EC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240011604;
  aBlock[3] = &block_descriptor_42;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_240014E80();
  swift_unknownObjectRelease();
  sub_240004F3C(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0DD0, &qword_240016AB0);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_240013780, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2400066B8();
    v23 = swift_allocError();
    *v24 = 1;
    v34[0] = v23;
    sub_240014E10();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_240011158(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0DC8, &unk_240016AA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_2400134C0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240011604;
  aBlock[3] = &block_descriptor_20;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_240014E80();
  swift_unknownObjectRelease();
  sub_240004F3C(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0DD0, &qword_240016AB0);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_2400134D4, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2400066B8();
    v23 = swift_allocError();
    *v24 = 1;
    v34[0] = v23;
    sub_240014E10();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_240011468(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (qword_27E3C0878 != -1)
  {
    swift_once();
  }

  v7 = sub_240014D60();
  __swift_project_value_buffer(v7, qword_27E3C0BD8);
  MEMORY[0x245CB51D0](a1);
  v8 = sub_240014D40();
  v9 = sub_240014E50();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    MEMORY[0x245CB51D0](a1);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_240000000, v8, v9, "Error fetching remote object proxy: %{public}@", v10, 0xCu);
    sub_2400134FC(v11);
    MEMORY[0x245CB5320](v11, -1, -1);
    MEMORY[0x245CB5320](v10, -1, -1);
  }

  sub_2400066B8();
  swift_allocError();
  *v13 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_240014E10();
}

void sub_240011604(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_24001166C(uint64_t a1, unint64_t a2)
{
  sub_2400118B0(a1, a2, v5);
  v2 = v5[0];
  if (v5[1])
  {
    sub_2400066B8();
    swift_allocError();
    *v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E28, &qword_240016B00);
    return sub_240014E10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E28, &qword_240016B00);
    return sub_240014E20();
  }
}

uint64_t sub_240011718(uint64_t a1, unint64_t a2)
{
  sub_240011ADC(a1, a2, &v6);
  v2 = v6;
  if (v7)
  {
    sub_2400066B8();
    swift_allocError();
    *v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E08, &qword_240016AE8);
    sub_240014E10();
    v2 = v6;
    v4 = v7;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E08, &qword_240016AE8);
    sub_240014E20();
    v4 = 0;
  }

  return sub_240001930(v2, v4);
}

uint64_t sub_2400117DC(uint64_t a1, unint64_t a2)
{
  sub_240011D1C(a1, a2, &v7);
  v2 = v7;
  if (v9)
  {
    sub_2400066B8();
    swift_allocError();
    *v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0DC8, &unk_240016AA0);
    sub_240014E10();
    v2 = v7;
    v4 = v8;
    v5 = v9;
  }

  else
  {
    v4 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0DC8, &unk_240016AA0);
    sub_240014E20();
    v5 = 0;
  }

  return sub_240001878(v2, v4, v5);
}

uint64_t sub_2400118B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v10 = &v11;
  v7 = a1;
  v8 = a2;
  v9 = &v7;
  sub_240004DEC(a1, a2);
  sub_24000E6D4(&v9, &v10);
  result = sub_240004C84(v7, v8);
  v5 = v11;
  v6 = v12;
  if (!v12)
  {
    v5 = v11 & 1;
  }

  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t sub_240011ADC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = &v12;
  v8 = a1;
  v9 = a2;
  v10 = &v8;
  sub_240004DEC(a1, a2);
  sub_24000EA40(&v10, &v11);
  sub_240004C84(v8, v9);
  v4 = v12;
  v5 = v13;
  if (v13)
  {
    v6 = v12;
  }

  else
  {

    v6 = v4;
  }

  *a3 = v6;
  *(a3 + 8) = v5;
  return sub_240001930(v4, v5);
}

uint64_t sub_240011D1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = v14;
  v10 = a1;
  v11 = a2;
  v12 = &v10;
  sub_240004DEC(a1, a2);
  sub_24000EDB0(&v12, &v13);
  sub_240004C84(v10, v11);
  v4 = v14[0];
  v5 = v15;
  if (v15)
  {
    v6 = 0;
    v7 = LOBYTE(v14[0]);
    v8 = v14[1];
  }

  else
  {

    v7 = v4;
    v6 = v8;
  }

  *a3 = v7;
  *(a3 + 8) = v6;
  *(a3 + 16) = v5;
  return sub_240001878(v4, v8, v5);
}

uint64_t static AppInstallationMetricsClient.addInstall(_:)(uint64_t a1)
{
  v1[8] = a1;
  v2 = *(*(type metadata accessor for AppInstallationEvent() - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240012010, 0, 0);
}

uint64_t sub_240012010()
{
  v0[5] = &type metadata for FeatureFlag;
  v0[6] = sub_240006DF0();
  v1 = sub_240014D30();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (v1)
  {
    if (qword_27E3C0880 != -1)
    {
      swift_once();
    }

    v3 = v0[9];
    v2 = v0[10];
    sub_240008FFC(v0[8], v2);
    sub_2400124FC(&qword_27E3C0DB8);
    sub_2400124FC(&qword_27E3C0DC0);
    sub_240008FFC(v2, v3);
    v0[7] = v3;
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_240012210;

    return sub_24000F464((v0 + 7), sub_240012420, 0);
  }

  else
  {
    sub_2400066B8();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v8 = v0[9];
    v7 = v0[10];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_240012210()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_2400123A4;
  }

  else
  {
    sub_240009060(*(v2 + 72));
    v4 = sub_24001232C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24001232C()
{
  v1 = v0[9];
  sub_240009060(v0[10]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2400123A4()
{
  v1 = v0[10];
  sub_240009060(v0[9]);
  sub_240009060(v1);
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[1];

  return v5();
}

void sub_240012420(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_240014D00();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_240012540;
  v10[3] = &block_descriptor_98;
  v9 = _Block_copy(v10);

  [a1 handleAppInstall:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_2400124FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppInstallationEvent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_240012540(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = sub_240014D10();
  v8 = v7;

  v4(v6, v8);
  sub_240004C84(v6, v8);
}

uint64_t sub_2400125E4()
{
  v0[5] = &type metadata for FeatureFlag;
  v0[6] = sub_240006DF0();
  v1 = sub_240014D30();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (v1)
  {
    if (qword_27E3C0880 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_240012774;

    return sub_24000FAA0((v0 + 2), sub_240012888, 0);
  }

  else
  {
    sub_2400066B8();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_240012774()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_240013C18;
  }

  else
  {
    v3 = sub_240013C1C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2400128B8()
{
  v0[5] = &type metadata for FeatureFlag;
  v0[6] = sub_240006DF0();
  v1 = sub_240014D30();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (v1)
  {
    if (qword_27E3C0880 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_240012774;

    return sub_24000FAA0((v0 + 2), sub_240012A48, 0);
  }

  else
  {
    sub_2400066B8();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_240012A78()
{
  v0[5] = &type metadata for FeatureFlag;
  v0[6] = sub_240006DF0();
  v1 = sub_240014D30();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (v1)
  {
    if (qword_27E3C0880 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_240012C08;

    return sub_24000FF28((v0 + 2), sub_240012D5C, 0);
  }

  else
  {
    sub_2400066B8();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_240012C08(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(v5 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_240012D44, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_240012D8C()
{
  v0[5] = &type metadata for FeatureFlag;
  v0[6] = sub_240006DF0();
  v1 = sub_240014D30();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (v1)
  {
    if (qword_27E3C0880 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_240012F1C;

    return sub_2400103B0((v0 + 2), sub_24001306C, 0);
  }

  else
  {
    sub_2400066B8();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_240012F1C(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 56);
  v7 = *v3;
  *(v7 + 64) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_240012D44, 0, 0);
  }

  else
  {
    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t sub_24001309C()
{
  v0[5] = &type metadata for FeatureFlag;
  v0[6] = sub_240006DF0();
  v1 = sub_240014D30();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (v1)
  {
    if (qword_27E3C0880 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_24001322C;

    return sub_24000FAA0((v0 + 2), sub_240013358, 0);
  }

  else
  {
    sub_2400066B8();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_24001322C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_240012D44;
  }

  else
  {
    v3 = sub_240013340;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_24001336C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_240012540;
  v10[3] = a6;
  v9 = _Block_copy(v10);

  [a1 *a7];
  _Block_release(v9);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2400134FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0DE0, &unk_240016AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24001359C()
{
  result = qword_27E3C0DE8;
  if (!qword_27E3C0DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0DE8);
  }

  return result;
}

uint64_t sub_2400135F0(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240015150();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_24001364C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2400136A4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_240001878(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2400137A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, v5 + v9, v10);
}

uint64_t sub_240013888(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_240013894(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_240001930(result, a2 & 1);
  }

  return result;
}

uint64_t sub_2400138C4(uint64_t a1, unint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E28, &qword_240016B00) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_24001166C(a1, a2);
}

uint64_t sub_24001398C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2400139E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstallationEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), v3);

  return swift_deallocObject();
}

uint64_t objectdestroy_22Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t AppInstallationEligibility.accountIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppInstallationEligibility.accountIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AppInstallationEligibility.accountID.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t AppInstallationEligibility.accountID.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t AppInstallationEligibility.billingCountryCode.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AppInstallationEligibility.billingCountryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AppInstallationEligibility.storefront.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AppInstallationEligibility.storefront.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t AppInstallationEligibility.billingStorefront.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t AppInstallationEligibility.billingStorefront.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t AppInstallationEligibility.init(accountID:billingCountryCode:eligible:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0;
  *(a6 + 16) = result;
  *(a6 + 24) = a2 & 1;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 80) = a5;
  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  return result;
}

uint64_t AppInstallationEligibility.init(accountID:storefront:eligible:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0;
  *(a6 + 16) = result;
  *(a6 + 24) = a2 & 1;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4;
  *(a6 + 80) = a5;
  return result;
}

uint64_t AppInstallationEligibility.init(accountIdentifier:billingCountryCode:eligible:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0;
  *a6 = result;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 80) = a5;
  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  return result;
}

uint64_t AppInstallationEligibility.init(accountID:accountIdentifier:billingStorefront:storefront:eligible:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 8) = a3;
  *(a9 + 16) = result;
  *(a9 + 24) = 0;
  *a9 = a2;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = a8;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  return result;
}

unint64_t sub_240013F94()
{
  v1 = *v0;
  v2 = 0x49746E756F636361;
  v3 = 0x6F726665726F7473;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x656C626967696C65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24001405C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2400149F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240014084(uint64_t a1)
{
  v2 = sub_240014358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2400140C0(uint64_t a1)
{
  v2 = sub_240014358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppInstallationEligibility.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E40, &qword_240016B10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v24 = v1[2];
  v23 = *(v1 + 24);
  v10 = v1[4];
  v21 = v1[5];
  v22 = v10;
  v11 = v1[6];
  v19 = v1[7];
  v20 = v11;
  v12 = v1[8];
  v17 = v1[9];
  v18 = v12;
  v16[1] = *(v1 + 80);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240014358();
  sub_240015160();
  v31 = 0;
  v14 = v25;
  sub_240014FD0();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v30 = 1;
  sub_240014FE0();
  v29 = 2;
  sub_240014FD0();
  v28 = 3;
  sub_240014FD0();
  v27 = 4;
  sub_240014FD0();
  v26 = 5;
  sub_240015000();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_240014358()
{
  result = qword_27E3C0E48;
  if (!qword_27E3C0E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0E48);
  }

  return result;
}

uint64_t AppInstallationEligibility.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C0E50, &qword_240016B18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240014358();
  sub_240015140();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v48[0]) = 0;
    v11 = sub_240014F40();
    v13 = v12;
    v41 = v11;
    LOBYTE(v48[0]) = 1;
    v14 = sub_240014F50();
    v57 = v15 & 1;
    LOBYTE(v48[0]) = 2;
    v16 = sub_240014F40();
    v18 = v17;
    v39 = v16;
    v40 = v14;
    LOBYTE(v48[0]) = 3;
    v19 = sub_240014F40();
    v21 = v20;
    v37 = v19;
    v38 = a2;
    LOBYTE(v48[0]) = 4;
    v22 = sub_240014F40();
    v24 = v23;
    v36 = v22;
    v58 = 5;
    v25 = sub_240014F70();
    v26 = *(v6 + 8);
    v34 = v25;
    v26(v9, v5);
    *&v42 = v41;
    *(&v42 + 1) = v13;
    *&v43 = v40;
    v35 = v57;
    BYTE8(v43) = v57;
    v27 = v39;
    *&v44 = v39;
    *(&v44 + 1) = v18;
    v28 = v37;
    *&v45 = v37;
    *(&v45 + 1) = v21;
    *&v46 = v36;
    *(&v46 + 1) = v24;
    v29 = v34 & 1;
    v47 = v34 & 1;
    v30 = v38;
    *(v38 + 80) = v34 & 1;
    v31 = v45;
    v30[2] = v44;
    v30[3] = v31;
    v30[4] = v46;
    v32 = v43;
    *v30 = v42;
    v30[1] = v32;
    sub_240007A80(&v42, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v48[0] = v41;
    v48[1] = v13;
    v48[2] = v40;
    v49 = v35;
    v50 = v27;
    v51 = v18;
    v52 = v28;
    v53 = v21;
    v54 = v36;
    v55 = v24;
    v56 = v29;
    return sub_2400086B4(v48);
  }
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_240014804(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_240014860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2400148F0()
{
  result = qword_27E3C0E58;
  if (!qword_27E3C0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0E58);
  }

  return result;
}

unint64_t sub_240014948()
{
  result = qword_27E3C0E60;
  if (!qword_27E3C0E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0E60);
  }

  return result;
}

unint64_t sub_2400149A0()
{
  result = qword_27E3C0E68;
  if (!qword_27E3C0E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C0E68);
  }

  return result;
}

uint64_t sub_2400149F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000240017140 == a2 || (sub_240015060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_240015060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000240017160 == a2 || (sub_240015060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F726665726F7473 && a2 == 0xEA0000000000746ELL || (sub_240015060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240016FA0 == a2 || (sub_240015060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C626967696C65 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_240015060();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}