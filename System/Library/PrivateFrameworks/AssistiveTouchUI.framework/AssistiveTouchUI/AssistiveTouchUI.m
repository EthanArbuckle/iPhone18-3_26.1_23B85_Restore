void sub_2414D2E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2414D497C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2414D499C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2414D49FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545A78, &qword_2414E1D20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - v5;
  v7 = *(v2 + 72);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  v41 = v43[0];
  v40 = sub_2414E0BA0();
  v39 = v8;
  v9 = &v6[*(v3 + 36)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  v10 = v43[0];
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545A80, &qword_2414E1D70) + 36);
  v12 = *MEMORY[0x277CE13B8];
  v13 = sub_2414E0BF0();
  (*(*(v13 - 8) + 104))(&v9[v11], v12, v13);
  *v9 = v10;
  *(v9 + 4) = 256;
  *(v9 + 2) = 0x3FE0000000000000;
  v14 = *(v2 + 80);
  sub_2414E0C20();
  v16 = v15;
  v18 = v17;
  v19 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545A88, &qword_2414E1D78) + 36)];
  *v19 = v14;
  *(v19 + 1) = v14;
  *(v19 + 2) = v16;
  *(v19 + 3) = v18;
  v20 = sub_2414E0BA0();
  v22 = v21;
  v23 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545A90, &qword_2414E1D80) + 36)];
  sub_2414D4E08(v2, v23);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545A98, &qword_2414E1D88) + 36));
  *v24 = v20;
  v24[1] = v22;
  v25 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AA0, &qword_2414E1D90) + 36)];
  v26 = v39;
  *v25 = v40;
  v25[1] = v26;
  *v6 = v41;
  *(v6 + 4) = 256;
  *(v6 + 2) = 0x3FE0000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  v44 = v43[0];
  v27 = swift_allocObject();
  v28 = *(v2 + 80);
  *(v27 + 80) = *(v2 + 64);
  *(v27 + 96) = v28;
  *(v27 + 112) = *(v2 + 96);
  v29 = *(v2 + 16);
  *(v27 + 16) = *v2;
  *(v27 + 32) = v29;
  v30 = *(v2 + 48);
  *(v27 + 48) = *(v2 + 32);
  *(v27 + 64) = v30;
  sub_2414D678C(v2, v43);
  sub_2414D67C4();
  sub_2414D697C();
  v31 = v42;
  sub_2414E0A50();

  sub_2414D6B9C(v6, &qword_27E545A78, &qword_2414E1D20);
  v32 = swift_allocObject();
  v33 = *(v2 + 80);
  *(v32 + 80) = *(v2 + 64);
  *(v32 + 96) = v33;
  *(v32 + 112) = *(v2 + 96);
  v34 = *(v2 + 16);
  *(v32 + 16) = *v2;
  *(v32 + 32) = v34;
  v35 = *(v2 + 48);
  *(v32 + 48) = *(v2 + 32);
  *(v32 + 64) = v35;
  v36 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE0, &qword_2414E1DF0) + 36));
  *v36 = sub_2414D69D0;
  v36[1] = v32;
  v36[2] = 0;
  v36[3] = 0;
  return sub_2414D678C(v2, v43);
}

uint64_t sub_2414D4E08@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2414E0C80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v79 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2414E0C60();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = *(v77 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v76 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v63 - v13;
  MEMORY[0x28223BE20](v12);
  v72 = &v63 - v14;
  v15 = sub_2414E0B50();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B30, &qword_2414E1E28);
  v20 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v22 = &v63 - v21;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B38, &qword_2414E1E30);
  v23 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v73 = &v63 - v24;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B40, &qword_2414E1E38);
  v25 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69);
  v74 = &v63 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B48, &qword_2414E1E40);
  v80 = *(v27 - 8);
  v81 = v27;
  v28 = *(v80 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v71 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v70 = &v63 - v31;
  v84 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B80();
  if ((v83 & 1) != 0 || (v84 = a1[3], sub_2414E0B80(), v83 == 1))
  {
    v84 = a1[3];
    sub_2414E0B80();
    v66 = a2;
    v65 = v4;
    v64 = v5;
    v63 = a1;
    if (v83 != 1)
    {
      v84 = *a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B20, &qword_2414E1E18);
      sub_2414E0B80();
      *&v84 = sub_2414E0E20();
      *(&v84 + 1) = v32;
      MEMORY[0x245CE8100](0x2E656C637269632ELL, 0xEC0000006C6C6966);
    }

    sub_2414E0B40();
    (*(v16 + 104))(v19, *MEMORY[0x277CE0FE0], v15);
    v33 = sub_2414E0B60();

    (*(v16 + 8))(v19, v15);
    sub_2414E0BA0();
    sub_2414E07A0();
    v34 = v84;
    v35 = BYTE8(v84);
    v36 = v85;
    v37 = v86;
    v39 = v87;
    v38 = v88;
    v40 = &v22[*(v67 + 36)];
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B50, &qword_2414E1E48) + 28);
    sub_2414E0940();
    v42 = sub_2414E0950();
    (*(*(v42 - 8) + 56))(v40 + v41, 0, 1, v42);
    *v40 = swift_getKeyPath();
    *v22 = v33;
    *(v22 + 1) = v34;
    v22[16] = v35;
    *(v22 + 3) = v36;
    v22[32] = v37;
    *(v22 + 5) = v39;
    *(v22 + 6) = v38;
    v43 = sub_2414E0AC0();
    v44 = sub_2414E0AE0();
    v45 = v73;
    sub_2414D6CA8(v22, v73, &qword_27E545B30, &qword_2414E1E28);
    v46 = (v45 + *(v68 + 36));
    *v46 = v43;
    v46[1] = v44;
    v47 = v72;
    sub_2414E0C50();
    v48 = v75;
    sub_2414E0C30();
    v49 = v78;
    v50 = *(v77 + 8);
    v50(v47, v78);
    v51 = v76;
    sub_2414E0C40();
    v50(v48, v49);
    v52 = v79;
    sub_2414E0C70();
    v53 = v74;
    v54 = &v74[*(v69 + 36)];
    LODWORD(v47) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B58, &qword_2414E1E80) + 28);
    sub_2414D6C60(&qword_27E545B60, MEMORY[0x277CE1598]);
    sub_2414E0840();
    (*(v64 + 8))(v52, v65);
    v50(v51, v49);
    *v54 = swift_getKeyPath();
    sub_2414D6CA8(v45, v53, &qword_27E545B38, &qword_2414E1E30);
    v83 = *v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B20, &qword_2414E1E18);
    sub_2414E0B80();
    v55 = v82;
    v56 = v71;
    sub_2414D6CA8(v53, v71, &qword_27E545B40, &qword_2414E1E38);
    v57 = v81;
    *(v56 + *(v81 + 52)) = v55;
    v58 = v56;
    v59 = v70;
    sub_2414D6CA8(v58, v70, &qword_27E545B48, &qword_2414E1E40);
    v60 = v59;
    a2 = v66;
    sub_2414D6CA8(v60, v66, &qword_27E545B48, &qword_2414E1E40);
    v61 = 0;
  }

  else
  {
    v61 = 1;
    v57 = v81;
  }

  return (*(v80 + 56))(a2, v61, 1, v57);
}

uint64_t sub_2414D5674(uint64_t a1, _BYTE *a2)
{
  switch(*a2)
  {
    case 0xE:

      goto LABEL_4;
    default:
      v3 = sub_2414E0E30();

      if (v3)
      {
LABEL_4:
        MEMORY[0x28223BE20](result);
        sub_2414E0BD0();
        sub_2414E07F0();
      }

      return result;
  }
}

uint64_t sub_2414D58F0()
{
  v1 = v0;
  v13 = *(v0 + 32);
  LOBYTE(aBlock[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B90();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v15 = v2;
  v16[0] = v3;
  *&v13 = v3;
  *(&v13 + 1) = v2;
  sub_2414D6D10(v16, aBlock, &qword_27E545A58, &qword_2414E1C38);
  sub_2414D6D10(&v15, aBlock, &qword_27E545AF0, &qword_2414E1E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AF8, &qword_2414E1E08);
  sub_2414E0B80();
  v4 = aBlock[0];
  [aBlock[0] invalidate];

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v7 = *(v1 + 80);
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v1 + 96);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v9 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v9;
  aBlock[4] = sub_2414D69F4;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2414D6170;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);
  sub_2414D678C(v1, &v13);

  v11 = [v5 scheduledTimerWithTimeInterval:1 repeats:v10 block:1.0];
  _Block_release(v10);
  *&v13 = v3;
  *(&v13 + 1) = v2;
  aBlock[0] = v11;
  sub_2414E0B90();
  sub_2414D6B9C(v16, &qword_27E545A58, &qword_2414E1C38);
  return sub_2414D6B9C(&v15, &qword_27E545AF0, &qword_2414E1E00);
}

uint64_t sub_2414D5B24(uint64_t a1, uint64_t a2)
{
  v3 = sub_2414E0C90();
  v19 = *(v3 - 8);
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2414E0CB0();
  v7 = *(v18 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v18);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2414D6A14();
  v11 = sub_2414E0DA0();
  v12 = swift_allocObject();
  v13 = *(a2 + 80);
  *(v12 + 80) = *(a2 + 64);
  *(v12 + 96) = v13;
  *(v12 + 112) = *(a2 + 96);
  v14 = *(a2 + 16);
  *(v12 + 16) = *a2;
  *(v12 + 32) = v14;
  v15 = *(a2 + 48);
  *(v12 + 48) = *(a2 + 32);
  *(v12 + 64) = v15;
  aBlock[4] = sub_2414D6A60;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2414DA718;
  aBlock[3] = &block_descriptor_38;
  v16 = _Block_copy(aBlock);
  sub_2414D678C(a2, v20);

  sub_2414E0CA0();
  v20[0] = MEMORY[0x277D84F90];
  sub_2414D6C60(&qword_27E545B08, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B10, &qword_2414E1E10);
  sub_2414D6A68(&qword_27E545B18, &qword_27E545B10, &qword_2414E1E10);
  sub_2414E0DC0();
  MEMORY[0x245CE81B0](0, v10, v6, v16);
  _Block_release(v16);

  (*(v19 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v18);
}

uint64_t sub_2414D5E2C(uint64_t a1)
{
  v2 = sub_2414E0990();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B20, &qword_2414E1E18);
  sub_2414E0B80();
  v13 = a1;
  if (v15 < 2)
  {
    v8 = swift_allocObject();
    v9 = *(a1 + 80);
    *(v8 + 80) = *(a1 + 64);
    *(v8 + 96) = v9;
    *(v8 + 112) = *(a1 + 96);
    v10 = *(a1 + 16);
    *(v8 + 16) = *a1;
    *(v8 + 32) = v10;
    v11 = *(a1 + 48);
    *(v8 + 48) = *(a1 + 32);
    *(v8 + 64) = v11;
    sub_2414D678C(a1, v14);
    sub_2414E0BD0();
    sub_2414E0980();
    sub_2414E07E0();

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_2414E0BD0();
    sub_2414E07F0();
  }
}

uint64_t sub_2414D602C(__int128 *a1)
{
  v4 = *a1;
  v2[1] = *a1;
  v5 = *(&v4 + 1);
  sub_2414D6D10(&v5, v2, &qword_27E545B28, &qword_2414E1E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B20, &qword_2414E1E18);
  result = sub_2414E0B80();
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v2[0] = v4;
    sub_2414E0B90();
    return sub_2414D6B9C(&v4, &qword_27E545B20, &qword_2414E1E18);
  }

  return result;
}

uint64_t sub_2414D60FC(uint64_t a1)
{
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AF8, &qword_2414E1E08);
  sub_2414E0B80();
  [v4 invalidate];

  v2 = *(a1 + 96);
  return (*(a1 + 88))();
}

void sub_2414D6170(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2414D61FC@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 12);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_2414D49FC(a1);
}

uint64_t sub_2414D626C(uint64_t a1)
{
  v2 = sub_2414E0850();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2414E0890();
}

uint64_t sub_2414D6358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B68, &qword_2414E1EB8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2414D6D10(a1, &v6 - v4, &qword_27E545B68, &qword_2414E1EB8);
  return sub_2414E08D0();
}

double sub_2414D6400@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545A58, &qword_2414E1C38);
  sub_2414E0B70();
  sub_2414E0B70();
  sub_2414E0B70();
  type metadata accessor for GazeStateManager();
  sub_2414D6C60(&qword_27E545A60, type metadata accessor for GazeStateManager);

  v6 = sub_2414E0800();
  v8 = v7;
  sub_2414E0B70();
  result = *&v12;
  *a3 = v12;
  *(a3 + 16) = v12;
  *(a3 + 32) = v12;
  *(a3 + 40) = *(&v12 + 1);
  *(a3 + 48) = v12;
  *(a3 + 56) = *(&v12 + 1);
  *(a3 + 64) = v6;
  *(a3 + 72) = v8;
  *(a3 + 80) = a4;
  *(a3 + 88) = a1;
  *(a3 + 96) = a2;
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

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2414D65E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2414D6630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2414D66AC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2414D66CC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void sub_2414D6708(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_2414D67C4()
{
  result = qword_27E545AA8;
  if (!qword_27E545AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545A78, &qword_2414E1D20);
    sub_2414D68C4();
    sub_2414D6A68(&qword_27E545AD0, &qword_27E545AA0, &qword_2414E1D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545AA8);
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

unint64_t sub_2414D68C4()
{
  result = qword_27E545AB0;
  if (!qword_27E545AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545AB8, &qword_2414E1DE0);
    sub_2414D6A68(&qword_27E545AC0, &qword_27E545AC8, &qword_2414E1DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545AB0);
  }

  return result;
}

unint64_t sub_2414D697C()
{
  result = qword_27E545AD8;
  if (!qword_27E545AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545AD8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2414D6A14()
{
  result = qword_27E545B00;
  if (!qword_27E545B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E545B00);
  }

  return result;
}

uint64_t sub_2414D6A68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2414D6AB0()
{
  v2 = *(*(v0 + 16) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  return sub_2414E0B90();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2414D6B9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2414D6BFC()
{
  v2 = *(*(v0 + 16) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  return sub_2414E0B90();
}

uint64_t sub_2414D6C60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2414D6CA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2414D6D10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2414D6D7C()
{
  result = qword_27E545B70;
  if (!qword_27E545B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545AE0, &qword_2414E1DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545A78, &qword_2414E1D20);
    sub_2414D67C4();
    sub_2414D697C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545B70);
  }

  return result;
}

double sub_2414D6E80(uint64_t a1, char a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = a5 * a7;
  if ((a2 & 1) == 0)
  {
    v9 = *&a1;
    if (a7 == 0.0 && a8 == 0.0)
    {
      return result + v9;
    }

    if (a7 == 0.5 && a8 == 0.0)
    {
      return result + 0.0;
    }

    else if (a7 == 1.0 && a8 == 0.0)
    {
      return result - *&a1;
    }

    else if (a7 == 0.0 && a8 == 0.5)
    {
      return result + *&a1;
    }

    else
    {
      if (a7 == 0.5 && a8 == 0.5)
      {
        v9 = 0.0;
        return result + v9;
      }

      if (a7 == 1.0 && a8 == 0.5)
      {
        return result - *&a1;
      }

      else if (a7 == 0.0 && a8 == 1.0)
      {
        return result + *&a1;
      }

      else if (a7 == 0.5 && a8 == 1.0)
      {
        return result + 0.0;
      }

      else if (a7 == 1.0)
      {
        result = result - *&a1;
        if (a8 != 1.0)
        {
          return 0.0;
        }
      }

      else
      {
        return 0.0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2414D7018(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2414D7060(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_2414D70B0()
{
  if (AXDeviceIsPhone())
  {
    v0 = [objc_opt_self() mainScreen];
    [v0 bounds];
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;

    v9.origin.x = v2;
    v9.origin.y = v4;
    v9.size.width = v6;
    v9.size.height = v8;
    CGRectGetWidth(v9);
  }
}

void sub_2414D71B0(char a1, double *a2, double a3)
{
  if (!AXDeviceIsPhone() || (byte_27E545C00 & 1) != 0)
  {
    return;
  }

  v6 = *&qword_27E545BF8;
  v8 = *&qword_27E545BE0;
  v7 = *algn_27E545BE8;
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 orientation];

  if (v10 == 4)
  {
    if (a1 != 6)
    {
      return;
    }

    v12 = *a2 - (a3 * 0.5 + v6);
    goto LABEL_15;
  }

  if (v10 == 3)
  {
    if (a1 != 12)
    {
      return;
    }

    v12 = v7 + a3 * -0.5 + *a2;
LABEL_15:
    *a2 = v12;
    return;
  }

  if (v10 == 1 && a1 == 3)
  {
    a2[1] = v8 + a3 * -0.5 + a2[1];
  }
}

uint64_t sub_2414D72D0(char a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
    case 7:
      result = sub_2414E0A80();
      break;
    case 2:
    case 8:
      result = sub_2414E0AF0();
      break;
    case 3:
    case 12:
      result = sub_2414E0B10();
      break;
    case 4:
      result = sub_2414E0B00();
      break;
    case 5:
    case 13:
      result = sub_2414E0A70();
      break;
    case 6:
      result = sub_2414E0B20();
      break;
    case 9:
      result = sub_2414E0AB0();
      break;
    case 10:
      result = sub_2414E0AA0();
      break;
    case 11:
      result = sub_2414E0AD0();
      break;
    default:
      result = sub_2414E0AE0();
      break;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = result;
    v8 = sub_2414D6E80(0x4049000000000000, 0, 0.0, 0.0, v5, v6, dbl_2414E1F20[a1], dbl_2414E1F98[a1]);
    v10 = v9;
    sub_2414D70B0();
    v13[0] = v8 + v11;
    v13[1] = v10 + v12;
    sub_2414D71B0(a1, v13, 50.0);
    return v7;
  }

  return result;
}

id CalibrationContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *CalibrationContentView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v53 = [objc_opt_self() effectWithStyle_];
  v9 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v10 = OBJC_IVAR____TtC16AssistiveTouchUI22CalibrationContentView_blurView;
  *&v4[OBJC_IVAR____TtC16AssistiveTouchUI22CalibrationContentView_blurView] = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v4[v10] setEffect_];
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v12 = OBJC_IVAR____TtC16AssistiveTouchUI22CalibrationContentView_overlayView;
  *&v4[OBJC_IVAR____TtC16AssistiveTouchUI22CalibrationContentView_overlayView] = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = *&v4[v12];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 blackColor];
  [v15 setBackgroundColor_];

  v17 = [*&v4[v12] layer];
  LODWORD(v18) = 1060320051;
  [v17 setOpacity_];

  v19 = [*&v4[v10] contentView];
  [v19 addSubview_];

  v54.receiver = v4;
  v54.super_class = type metadata accessor for CalibrationContentView();
  v20 = objc_msgSendSuper2(&v54, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = [v14 clearColor];
  [v20 setBackgroundColor_];

  v22 = v20;
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = OBJC_IVAR____TtC16AssistiveTouchUI22CalibrationContentView_blurView;
  [v22 addSubview_];
  [v22 setIsAccessibilityElement_];
  [v22 setAccessibilityElementsHidden_];

  v52 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CF0, &unk_2414E2020);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2414E2010;
  v25 = [*&v22[v23] topAnchor];
  v26 = [v22 &selRef_viewWillDisappear_];
  v27 = [v25 constraintEqualToAnchor_];

  *(v24 + 32) = v27;
  v28 = [*&v22[v23] leadingAnchor];
  v29 = [v22 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v24 + 40) = v30;
  v31 = [*&v22[v23] trailingAnchor];
  v32 = [v22 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v24 + 48) = v33;
  v34 = [*&v22[v23] bottomAnchor];
  v35 = [v22 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v24 + 56) = v36;
  v37 = OBJC_IVAR____TtC16AssistiveTouchUI22CalibrationContentView_overlayView;
  v38 = [*&v22[OBJC_IVAR____TtC16AssistiveTouchUI22CalibrationContentView_overlayView] topAnchor];
  v39 = [v22 topAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v24 + 64) = v40;
  v41 = [*&v22[v37] leadingAnchor];
  v42 = [v22 leadingAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v24 + 72) = v43;
  v44 = [*&v22[v37] trailingAnchor];
  v45 = [v22 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v24 + 80) = v46;
  v47 = [*&v22[v37] bottomAnchor];
  v48 = [v22 bottomAnchor];

  v49 = [v47 constraintEqualToAnchor_];
  *(v24 + 88) = v49;
  sub_2414D7AA4();
  v50 = sub_2414E0D10();

  [v52 activateConstraints_];

  return v22;
}

unint64_t sub_2414D7AA4()
{
  result = qword_27E545C18;
  if (!qword_27E545C18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E545C18);
  }

  return result;
}

id CalibrationContentView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CalibrationContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalibrationContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for GazeFocusState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GazeFocusState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2414D7E00(char a1)
{
  sub_2414E0D90();
  v2 = MEMORY[0x245CE8180]();
  v3 = *MEMORY[0x277CE7920];
  swift_beginAccess();
  v4 = *&v2[v3];

  v5 = sub_2414E0D70();
  if (v5)
  {
    v6 = &unk_28532C810;
  }

  else
  {
    v6 = &unk_28532C840;
  }

  result = sub_2414D7F10(a1, v6);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = result;
  }

  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v5)
  {
    v12 = &unk_28532C810;
  }

  else
  {
    v12 = &unk_28532C840;
  }

  v13 = v12[2];
  if (v11 < v13)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v5)
      {
        v14 = &unk_28532C810;
      }

      else
      {
        v14 = &unk_28532C840;
      }

      v15 = &v14[v11];
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (v13)
  {
    if (v5)
    {
      v15 = &unk_28532C810;
    }

    else
    {
      v15 = &unk_28532C840;
    }

LABEL_21:
    v16 = v15[32];

    return v16;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2414D7F10(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (2)
  {
    v6 = 0xE700000000000000;
    v7 = 0x6C616974696E69;
    switch(*(v5 + v4))
    {
      case 1:
        v7 = 0x7466654C706F74;
        break;
      case 2:
        v7 = 0x4D7466654C706F74;
        v6 = 0xED0000656C646469;
        break;
      case 3:
        v6 = 0xE300000000000000;
        v7 = 7368564;
        break;
      case 4:
        v7 = 0x7468676952706F74;
        v6 = 0xEE00656C6464694DLL;
        break;
      case 5:
        v6 = 0xE800000000000000;
        v7 = 0x7468676952706F74;
        break;
      case 6:
        v6 = 0xE500000000000000;
        v7 = 0x7468676972;
        break;
      case 7:
        v7 = 0x69526D6F74746F62;
        v6 = 0xEB00000000746867;
        break;
      case 8:
        v7 = 0xD000000000000011;
        v6 = 0x80000002414E29F0;
        break;
      case 9:
        v6 = 0xE600000000000000;
        v7 = 0x6D6F74746F62;
        break;
      case 0xA:
        v7 = 0xD000000000000010;
        v6 = 0x80000002414E2A10;
        break;
      case 0xB:
        v7 = 0x654C6D6F74746F62;
        v6 = 0xEA00000000007466;
        break;
      case 0xC:
        v6 = 0xE400000000000000;
        v7 = 1952867692;
        break;
      case 0xD:
        v6 = 0xE600000000000000;
        v7 = 0x7265746E6563;
        break;
      case 0xE:
        v6 = 0xE800000000000000;
        v7 = 0x6574656C706D6F63;
        break;
      default:
        break;
    }

    v8 = 0xE700000000000000;
    v9 = 0x6C616974696E69;
    switch(a1)
    {
      case 1:
        if (v7 == 0x7466654C706F74)
        {
          goto LABEL_45;
        }

        goto LABEL_46;
      case 2:
        v8 = 0xED0000656C646469;
        if (v7 != 0x4D7466654C706F74)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 3:
        v8 = 0xE300000000000000;
        if (v7 != 7368564)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 4:
        v8 = 0xEE00656C6464694DLL;
        if (v7 != 0x7468676952706F74)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 5:
        v8 = 0xE800000000000000;
        if (v7 != 0x7468676952706F74)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 6:
        v8 = 0xE500000000000000;
        if (v7 != 0x7468676972)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 7:
        v8 = 0xEB00000000746867;
        if (v7 != 0x69526D6F74746F62)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 8:
        v8 = 0x80000002414E29F0;
        if (v7 != 0xD000000000000011)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 9:
        v8 = 0xE600000000000000;
        if (v7 != 0x6D6F74746F62)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 10:
        v9 = 0xD000000000000010;
        v8 = 0x80000002414E2A10;
        goto LABEL_44;
      case 11:
        v8 = 0xEA00000000007466;
        if (v7 != 0x654C6D6F74746F62)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 12:
        v8 = 0xE400000000000000;
        if (v7 != 1952867692)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 13:
        v8 = 0xE600000000000000;
        if (v7 != 0x7265746E6563)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 14:
        v8 = 0xE800000000000000;
        if (v7 != 0x6574656C706D6F63)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      default:
LABEL_44:
        if (v7 != v9)
        {
          goto LABEL_46;
        }

LABEL_45:
        if (v6 == v8)
        {

          return v4;
        }

LABEL_46:
        v10 = sub_2414E0E30();

        if (v10)
        {
          return v4;
        }

        if (v2 != ++v4)
        {
          continue;
        }

        v4 = 0;
        break;
    }

    return v4;
  }
}

unint64_t sub_2414D83CC(char a1)
{
  result = 0x6C616974696E69;
  switch(a1)
  {
    case 1:
      result = 0x7466654C706F74;
      break;
    case 2:
      result = 0x4D7466654C706F74;
      break;
    case 3:
      result = 7368564;
      break;
    case 4:
    case 5:
      result = 0x7468676952706F74;
      break;
    case 6:
      result = 0x7468676972;
      break;
    case 7:
      result = 0x69526D6F74746F62;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x6D6F74746F62;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x654C6D6F74746F62;
      break;
    case 12:
      result = 1952867692;
      break;
    case 13:
      result = 0x7265746E6563;
      break;
    case 14:
      result = 0x6574656C706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2414D8594()
{
  v1 = *v0;
  sub_2414E0E70();
  sub_2414D83CC(v1);
  sub_2414E0CF0();

  return sub_2414E0E80();
}

uint64_t sub_2414D85F8()
{
  sub_2414D83CC(*v0);
  sub_2414E0CF0();
}

uint64_t sub_2414D864C()
{
  v1 = *v0;
  sub_2414E0E70();
  sub_2414D83CC(v1);
  sub_2414E0CF0();

  return sub_2414E0E80();
}

uint64_t sub_2414D86AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2414D8838();
  *a2 = result;
  return result;
}

unint64_t sub_2414D86DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2414D83CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2414D8708(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2414D83CC(*a1);
  v5 = v4;
  if (v3 == sub_2414D83CC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2414E0E30();
  }

  return v8 & 1;
}

uint64_t sub_2414D87A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2414D7E00(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_2414D87D0()
{
  result = qword_27E545C20;
  if (!qword_27E545C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545C28, qword_2414E20A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545C20);
  }

  return result;
}

uint64_t sub_2414D8838()
{
  v0 = sub_2414E0E10();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2414D8884()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  return v1;
}

uint64_t sub_2414D88F8(unsigned __int8 a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v5[0]) = a1;

  sub_2414E0750();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  result = a1;
  v6 = *(v1 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame + 32);
  v4 = *(v1 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame + 16);
  v5[0] = *(v1 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame);
  v5[1] = v4;
  if ((v6 & 1) == 0)
  {
    sub_2414D72D0(a1, v5);
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_2414E0750();
  }

  return result;
}

double sub_2414D8A38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  return v1;
}

uint64_t sub_2414D8AB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545C68, &qword_2414E21E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - v4;
  v6 = OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager__focusModel;
  v7 = sub_2414E0A90();
  *&v22 = 0;
  v21 = v7;
  sub_2414E0720();
  (*(v2 + 32))(v0 + v6, v5, v1);
  v8 = (v0 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame);
  *v8 = 0u;
  v8[1] = 0u;
  *(v8 + 32) = 1;
  swift_beginAccess();
  LOBYTE(v18) = 0;
  sub_2414E0720();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  v9 = v21;
  v23 = *(v8 + 32);
  v10 = v8[1];
  v21 = *v8;
  v22 = v10;
  if ((v23 & 1) == 0)
  {
    v11 = sub_2414D72D0(v9, &v21);
    v13 = v12;
    v15 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v11;
    v19 = v13;
    v20 = v15;

    sub_2414E0750();
  }

  return v0;
}

uint64_t sub_2414D8CC0()
{
  v1 = OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager__gazeState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E545C70, &unk_2414E2280);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager__focusModel;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545C68, &qword_2414E21E8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for GazeStateManager()
{
  result = qword_27E545C48;
  if (!qword_27E545C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2414D8E08()
{
  sub_2414D8EF8(319, &qword_27E545C58);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2414D8EF8(319, &qword_27E545C60);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2414D8EF8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2414E0760();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2414D8F50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GazeStateManager();
  result = sub_2414E0710();
  *a1 = result;
  return result;
}

id sub_2414D8FA0()
{
  v1 = OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView;
  v2 = *(v0 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_calibrationObservable);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_2414E0320(sub_2414DA568, v5, &v12);
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CE8, &qword_2414E22E8));
    v7 = v0;
    v8 = sub_2414E0810();
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_2414D9088()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v4 = *(v2 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_dismissCompletion);
      v3 = *(v2 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_dismissCompletion + 8);
      v5 = v2;

      v7[4] = v4;
      v7[5] = v3;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 1107296256;
      v7[2] = sub_2414DA718;
      v7[3] = &block_descriptor_0;
      v6 = _Block_copy(v7);
    }

    else
    {
      v6 = 0;
    }

    [v1 dismissViewControllerAnimated:1 completion:v6];
    _Block_release(v6);
  }
}

id CalibrationViewController.__allocating_init(delegate:dismissCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_cancellable] = 0;
  *&v6[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_enrollmentCancellable] = 0;
  v7 = OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_calibrationObservable;
  v8 = type metadata accessor for CalibrationViewDelegate();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v6[v7] = sub_2414DB9D8();
  *&v6[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView] = 0;
  swift_unknownObjectWeakAssign();
  v11 = &v6[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_dismissCompletion];
  *v11 = a2;
  *(v11 + 1) = a3;
  v14.receiver = v6;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectRelease();
  return v12;
}

id CalibrationViewController.init(delegate:dismissCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_cancellable] = 0;
  *&v3[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_enrollmentCancellable] = 0;
  v6 = OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_calibrationObservable;
  v7 = type metadata accessor for CalibrationViewDelegate();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v3[v6] = sub_2414DB9D8();
  *&v3[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView] = 0;
  swift_unknownObjectWeakAssign();
  v10 = &v3[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_dismissCompletion];
  *v10 = a2;
  *(v10 + 1) = a3;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for CalibrationViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectRelease();
  return v11;
}

id CalibrationViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_2414D941C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CB0, &qword_2414E2290);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CB8, &qword_2414E2298);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for CalibrationViewController();
  v22.receiver = v0;
  v22.super_class = v12;
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  sub_2414D9B7C();
  v13 = OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_calibrationObservable;
  v14 = *&v0[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_calibrationObservable];
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CC0, &qword_2414E22A0);
  sub_2414E0730();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2414DA4E8(&qword_27E545CC8, &qword_27E545CB8, &qword_2414E2298);
  v15 = sub_2414E0770();

  (*(v8 + 8))(v11, v7);
  v16 = *&v1[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_cancellable];
  *&v1[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_cancellable] = v15;

  v17 = *&v1[v13];
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CD0, &qword_2414E22A8);
  sub_2414E0730();
  swift_endAccess();

  sub_2414DA4E8(&unk_27E545CD8, &qword_27E545CB0, &qword_2414E2290);
  v18 = sub_2414E0770();
  (*(v3 + 8))(v6, v2);
  v19 = *&v1[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_enrollmentCancellable];
  *&v1[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_enrollmentCancellable] = v18;
}

void sub_2414D974C(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      if (v1 == 0.0 && v2 == 0.0)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v7 = [objc_opt_self() sharedManager];
        v8 = [v6 gazePointManager];
        if (!v8)
        {
          __break(1u);
          return;
        }

        [v8 lastSeenLookAtPoint];
        v10 = v9;
        v12 = v11;
        swift_unknownObjectRelease();
        v13 = *&v4[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_calibrationObservable];
        swift_getKeyPath();
        swift_getKeyPath();

        sub_2414E0740();

        sub_2414D83CC(v15);
        v14 = sub_2414E0CC0();

        [v7 captureCurrentEnrollmentPoint:v14 gazePoint:v1 positionName:{v2, v10, v12}];
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_2414D9904(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v2 = [objc_opt_self() sharedInstance];
    [v2 setAssistiveTouchBubbleModeEnabled_];

    v3 = [objc_opt_self() sharedManager];
    [v3 setEnrollmentComplete_];
  }
}

void sub_2414D9A20(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for CalibrationViewController();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedApplication];
  [v10 setIdleTimerDisabled_];
}

void sub_2414D9B7C()
{
  v1 = [objc_allocWithZone(type metadata accessor for CalibrationContentView()) initWithFrame_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = v1;
  [v3 addSubview_];

  v5 = sub_2414D8FA0();
  [v4 addSubview_];

  v6 = OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView;
  [*&v0[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView] setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_handleTapGuesture_];
  [v4 addGestureRecognizer_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CF0, &unk_2414E2020);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2414E2010;
  v9 = [v4 topAnchor];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v10 topAnchor];

  v13 = [v9 constraintEqualToAnchor_];
  *(v8 + 32) = v13;
  v14 = [v4 leadingAnchor];

  v15 = [v0 view];
  if (!v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v8 + 40) = v18;
  v19 = [v4 trailingAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v8 + 48) = v23;
  v24 = [v4 bottomAnchor];

  v25 = [v0 view];
  if (!v25)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = v25;
  v27 = [v25 bottomAnchor];

  v28 = [v24 constraintEqualToAnchor_];
  *(v8 + 56) = v28;
  v29 = [*&v0[v6] topAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v31 = v30;
  v32 = [v30 topAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  *(v8 + 64) = v33;
  v34 = [*&v0[v6] leadingAnchor];
  v35 = [v0 view];
  if (!v35)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36 = v35;
  v37 = [v35 leadingAnchor];

  v38 = [v34 constraintEqualToAnchor_];
  *(v8 + 72) = v38;
  v39 = [*&v0[v6] trailingAnchor];
  v40 = [v0 view];
  if (!v40)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v41 = v40;
  v42 = [v40 trailingAnchor];

  v43 = [v39 constraintEqualToAnchor_];
  *(v8 + 80) = v43;
  v44 = [*&v0[v6] bottomAnchor];
  v45 = [v0 view];
  if (!v45)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v46 = v45;
  v47 = objc_opt_self();
  v48 = [v46 bottomAnchor];

  v49 = [v44 constraintEqualToAnchor_];
  *(v8 + 88) = v49;
  sub_2414D7AA4();
  v50 = sub_2414E0D10();

  [v47 activateConstraints_];
}

void sub_2414DA140()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      [v2 didForceDismissForEmergencyTap];
      swift_unknownObjectRelease();
    }
  }
}

id CalibrationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2414E0CC0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CalibrationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalibrationViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s16AssistiveTouchUI25CalibrationViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_cancellable) = 0;
  *(v0 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_enrollmentCancellable) = 0;
  v1 = OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_calibrationObservable;
  v2 = type metadata accessor for CalibrationViewDelegate();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + v1) = sub_2414DB9D8();
  *(v0 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView) = 0;
  sub_2414E0E00();
  __break(1u);
}

uint64_t sub_2414DA4A8()
{
  MEMORY[0x245CE8820](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2414DA4E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2414DA588()
{
  v1 = *&v0[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_calibrationObservable];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2414E0740();

  if ((v4[0] & 1) == 0)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4[4] = sub_2414DA6D8;
    v4[5] = v2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_2414DA718;
    v4[3] = &block_descriptor_23;
    v3 = _Block_copy(v4);

    [v0 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }
}

uint64_t sub_2414DA718(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id CalibrationNavigationViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id CalibrationNavigationViewController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CalibrationNavigationViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, v3);
}

id CalibrationNavigationViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id CalibrationNavigationViewController.init(rootViewController:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CalibrationNavigationViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithRootViewController_, a1);

  return v3;
}

id CalibrationNavigationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2414E0CC0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CalibrationNavigationViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2414E0CC0();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for CalibrationNavigationViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id CalibrationNavigationViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CalibrationNavigationViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CalibrationNavigationViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CalibrationNavigationViewController.navigationController(_:animationControllerFor:from:to:)(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    return [objc_allocWithZone(type metadata accessor for PushTransition()) init];
  }

  else
  {
    return 0;
  }
}

id sub_2414DAE58(void *a1, void *a2, double a3)
{
  [a1 frame];
  v6 = -a3;
  v10 = CGRectOffset(v9, v6, 0.0);
  [a1 setFrame_];
  [a2 frame];
  v12 = CGRectOffset(v11, v6, 0.0);

  return [a2 setFrame_];
}

uint64_t sub_2414DAEEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_2414DB000(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2414DB05C(void *a1)
{
  v2 = [a1 viewControllerForKey_];
  if (v2)
  {
    v19 = v2;
    v3 = [a1 viewControllerForKey_];
    if (v3)
    {
      v18 = v3;
      v4 = [v19 view];
      if (v4)
      {
        v17 = v4;
        v5 = [v18 view];
        if (v5)
        {
          v6 = v5;
          v7 = [a1 containerView];
          [v7 addSubview_];
          [v7 bounds];
          Width = CGRectGetWidth(v27);
          [v7 bounds];
          [v6 setFrame_];
          v9 = objc_opt_self();
          v10 = swift_allocObject();
          *(v10 + 2) = v17;
          v10[3] = Width;
          *(v10 + 4) = v6;
          v24 = sub_2414DB3DC;
          v25 = v10;
          aBlock = MEMORY[0x277D85DD0];
          v21 = 1107296256;
          v22 = sub_2414DA718;
          v23 = &block_descriptor_1;
          v11 = _Block_copy(&aBlock);
          v12 = v17;
          v13 = v6;

          v14 = swift_allocObject();
          *(v14 + 16) = a1;
          v24 = sub_2414DB43C;
          v25 = v14;
          aBlock = MEMORY[0x277D85DD0];
          v21 = 1107296256;
          v22 = sub_2414DAEEC;
          v23 = &block_descriptor_11;
          v15 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();

          [v9 animateWithDuration:0 delay:v11 options:v15 animations:0.35 completion:0.0];

          _Block_release(v15);
          _Block_release(v11);
          return;
        }

        v16 = v17;
      }

      else
      {

        v16 = v18;
      }
    }

    else
    {
      v16 = v19;
    }
  }
}

uint64_t sub_2414DB39C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2414DB404()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2414DB45C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  return v1;
}

double sub_2414DB4D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  return v1;
}

uint64_t sub_2414DB544()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  return v1;
}

uint64_t sub_2414DB5B8()
{
  v1 = OBJC_IVAR____TtC16AssistiveTouchUI23CalibrationViewDelegate__currentGazeState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E545C70, &unk_2414E2280);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16AssistiveTouchUI23CalibrationViewDelegate__calibrationPoint;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CC0, &qword_2414E22A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16AssistiveTouchUI23CalibrationViewDelegate__enrollmentComplete;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CD0, &qword_2414E22A8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for CalibrationViewDelegate()
{
  result = qword_27E545E40;
  if (!qword_27E545E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2414DB74C()
{
  sub_2414D8EF8(319, &qword_27E545C58);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2414DB870();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_2414D8EF8(319, &qword_27E545E58);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2414DB870()
{
  if (!qword_27E545E50)
  {
    type metadata accessor for CGPoint(255);
    v0 = sub_2414E0760();
    if (!v1)
    {
      atomic_store(v0, &qword_27E545E50);
    }
  }
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_2414DB900(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_2414DB948(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2414DB9D8()
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CD0, &qword_2414E22A8);
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v20);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CC0, &qword_2414E22A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E545C70, &unk_2414E2280);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  v15 = OBJC_IVAR____TtC16AssistiveTouchUI23CalibrationViewDelegate__currentGazeState;
  LOBYTE(v21) = 0;
  sub_2414E0720();
  (*(v11 + 32))(v0 + v15, v14, v10);
  v16 = OBJC_IVAR____TtC16AssistiveTouchUI23CalibrationViewDelegate__calibrationPoint;
  type metadata accessor for CGPoint(0);
  v21 = 0;
  v22 = 0;
  sub_2414E0720();
  (*(v6 + 32))(v0 + v16, v9, v5);
  v17 = OBJC_IVAR____TtC16AssistiveTouchUI23CalibrationViewDelegate__enrollmentComplete;
  LOBYTE(v21) = 0;
  sub_2414E0720();
  (*(v1 + 32))(v0 + v17, v4, v20);
  return v0;
}

uint64_t sub_2414DBC58@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CalibrationViewDelegate();
  result = sub_2414E0710();
  *a1 = result;
  return result;
}

uint64_t sub_2414DBC98()
{
  v0 = type metadata accessor for GazeStateManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_2414D8AB0();
}

uint64_t sub_2414DBCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v28 = a1;
  v4 = sub_2414E0960();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  type metadata accessor for GazeStateManager();
  sub_2414E0670(&qword_27E545A60, type metadata accessor for GazeStateManager);
  v26[1] = v10;
  v26[2] = v9;
  sub_2414E0790();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  if (sub_2414D83CC(v29) == 0x6C616974696E69 && v12 == 0xE700000000000000)
  {
  }

  else
  {
    v13 = sub_2414E0E30();

    if ((v13 & 1) == 0)
    {
      sub_2414E0790();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2414E0740();

      v19 = v30;
      v20 = v31;
      v14 = v28;
      goto LABEL_7;
    }
  }

  sub_2414E0970();
  v14 = v28;
  sub_2414E07C0();
  v16 = v15;
  v18 = v17;
  (*(v5 + 8))(v8, v4);
  v19 = v16 * 0.5;
  v20 = v18 * 0.5;
LABEL_7:
  v21 = sub_2414E0BA0();
  v22 = v27;
  *v27 = v21;
  v22[1] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545E90, &qword_2414E2638);
  return sub_2414DBFB0(a2, v14, v22 + *(v24 + 44), v19, v20);
}

uint64_t sub_2414DBFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v98 = a3;
  v99 = a2;
  v86 = sub_2414E07D0();
  v8 = *(v86 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v10;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545E98, &qword_2414E2640);
  v94 = *(v96 - 8);
  v11 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v91 = v81 - v12;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EA0, &qword_2414E2648);
  v93 = *(v95 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  v90 = v81 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EA8, &qword_2414E2650);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v97 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v92 = v81 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EB0, &qword_2414E2658);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v81 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EB8, &unk_2414E2660);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v89 = v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v81 - v29;
  v116[0] = *(a1 + 104);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B80();
  v31 = 1;
  if (v101 == 1)
  {
    *v24 = sub_2414E0930();
    *(v24 + 1) = 0;
    v24[16] = 1;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F08, &qword_2414E2698);
    sub_2414DC9A0(v99, &v24[*(v32 + 44)]);
    v33 = sub_2414E09A0();
    sub_2414E0780();
    v34 = &v24[*(v20 + 36)];
    *v34 = v33;
    *(v34 + 1) = v35;
    *(v34 + 2) = v36;
    *(v34 + 3) = v37;
    *(v34 + 4) = v38;
    v34[40] = 0;
    sub_2414DF9B8(v24, v30);
    v31 = 0;
  }

  (*(v21 + 56))(v30, v31, 1, v20);
  v39 = *(a1 + 16);
  v82 = *(a1 + 24);
  v83 = v39;
  v81[1] = *(a1 + 32);
  type metadata accessor for GazeStateManager();
  v88 = v30;
  sub_2414E0670(&qword_27E545A60, type metadata accessor for GazeStateManager);
  sub_2414E0790();
  v116[0] = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EC0, &qword_2414E2670);
  sub_2414E0B80();
  v40 = *&v101;
  v41 = swift_allocObject();
  v42 = *(a1 + 112);
  v41[7] = *(a1 + 96);
  v41[8] = v42;
  v41[9] = *(a1 + 128);
  v43 = *(a1 + 48);
  v41[3] = *(a1 + 32);
  v41[4] = v43;
  v44 = *(a1 + 80);
  v41[5] = *(a1 + 64);
  v41[6] = v44;
  v45 = *(a1 + 16);
  v41[1] = *a1;
  v41[2] = v45;
  sub_2414DE8B0(a1, v116);
  sub_2414D6400(sub_2414DEBA0, v41, v114, v40);

  sub_2414E0BA0();
  sub_2414E07A0();
  v46 = v84;
  v47 = v86;
  (*(v8 + 16))(v84, v99, v86);
  v48 = (*(v8 + 80) + 160) & ~*(v8 + 80);
  v49 = swift_allocObject();
  v50 = *(a1 + 112);
  *(v49 + 7) = *(a1 + 96);
  *(v49 + 8) = v50;
  *(v49 + 9) = *(a1 + 128);
  v51 = *(a1 + 48);
  *(v49 + 3) = *(a1 + 32);
  *(v49 + 4) = v51;
  v52 = *(a1 + 80);
  *(v49 + 5) = *(a1 + 64);
  *(v49 + 6) = v52;
  v53 = *(a1 + 16);
  *(v49 + 1) = *a1;
  *(v49 + 2) = v53;
  (*(v8 + 32))(&v49[v48], v46, v47);
  v107 = v114[6];
  v108 = v114[7];
  v109 = v114[8];
  *&v110 = v115;
  v103 = v114[2];
  v104 = v114[3];
  v105 = v114[4];
  v106 = v114[5];
  v101 = v114[0];
  v102 = v114[1];
  *(&v110 + 1) = a4;
  *&v111 = a5;
  *(&v111 + 1) = sub_2414DF644;
  v112 = v49;
  v113 = 0;
  sub_2414DE8B0(a1, v116);
  sub_2414E0790();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  v100 = v116[0];
  v54 = swift_allocObject();
  v55 = *(a1 + 112);
  v54[7] = *(a1 + 96);
  v54[8] = v55;
  v54[9] = *(a1 + 128);
  v56 = *(a1 + 48);
  v54[3] = *(a1 + 32);
  v54[4] = v56;
  v57 = *(a1 + 80);
  v54[5] = *(a1 + 64);
  v54[6] = v57;
  v58 = *(a1 + 16);
  v54[1] = *a1;
  v54[2] = v58;
  sub_2414DE8B0(a1, v116);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EC8, &qword_2414E2678);
  v60 = sub_2414DF6B0();
  v61 = sub_2414D697C();
  v62 = v91;
  sub_2414E0A50();

  v116[10] = v111;
  v116[11] = v112;
  v117 = v113;
  v116[6] = v107;
  v116[7] = v108;
  v116[8] = v109;
  v116[9] = v110;
  v116[2] = v103;
  v116[3] = v104;
  v116[4] = v105;
  v116[5] = v106;
  v116[0] = v101;
  v116[1] = v102;
  sub_2414D6B9C(v116, &qword_27E545EC8, &qword_2414E2678);
  v101 = *(a1 + 88);
  sub_2414E0B80();
  v63 = swift_allocObject();
  v64 = *(a1 + 112);
  v63[7] = *(a1 + 96);
  v63[8] = v64;
  v63[9] = *(a1 + 128);
  v65 = *(a1 + 48);
  v63[3] = *(a1 + 32);
  v63[4] = v65;
  v66 = *(a1 + 80);
  v63[5] = *(a1 + 64);
  v63[6] = v66;
  v67 = *(a1 + 16);
  v63[1] = *a1;
  v63[2] = v67;
  sub_2414DE8B0(a1, &v101);
  *&v101 = v59;
  *(&v101 + 1) = &type metadata for GazeFocusState;
  *&v102 = v60;
  *(&v102 + 1) = v61;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = MEMORY[0x277D839B0];
  v70 = MEMORY[0x277D839C8];
  v71 = v90;
  v72 = v96;
  sub_2414E0A50();

  (*(v94 + 8))(v62, v72);
  *&v101 = v72;
  *(&v101 + 1) = v69;
  *&v102 = OpaqueTypeConformance2;
  *(&v102 + 1) = v70;
  swift_getOpaqueTypeConformance2();
  v73 = v92;
  v74 = v95;
  sub_2414E0A40();
  (*(v93 + 8))(v71, v74);
  v76 = v88;
  v75 = v89;
  sub_2414D6D10(v88, v89, &qword_27E545EB8, &unk_2414E2660);
  v77 = v97;
  sub_2414DF8E0(v73, v97);
  v78 = v98;
  sub_2414D6D10(v75, v98, &qword_27E545EB8, &unk_2414E2660);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F00, &qword_2414E2690);
  sub_2414DF8E0(v77, v78 + *(v79 + 48));
  sub_2414DF950(v73);
  sub_2414D6B9C(v76, &qword_27E545EB8, &unk_2414E2660);
  sub_2414DF950(v77);
  return sub_2414D6B9C(v75, &qword_27E545EB8, &unk_2414E2660);
}

uint64_t sub_2414DC9A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F10, &qword_2414E26A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  *v10 = sub_2414E0920();
  *(v10 + 1) = 0x4024000000000000;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F18, &qword_2414E26A8);
  sub_2414DCB30(a1, &v10[*(v11 + 44)]);
  sub_2414E07B0();
  v13 = v12 * 0.5 + 25.0;
  sub_2414D6D10(v10, v8, &qword_27E545F10, &qword_2414E26A0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F20, &qword_2414E26B0);
  sub_2414D6D10(v8, a2 + *(v14 + 48), &qword_27E545F10, &qword_2414E26A0);
  v15 = a2 + *(v14 + 64);
  *v15 = v13;
  *(v15 + 8) = 0;
  sub_2414D6B9C(v10, &qword_27E545F10, &qword_2414E26A0);
  return sub_2414D6B9C(v8, &qword_27E545F10, &qword_2414E26A0);
}

id sub_2414DCB30@<X0>(uint64_t a1@<X1>, double *a2@<X8>)
{
  v4 = sub_2414E0A60();
  v65 = *(v4 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F28, &qword_2414E26B8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v58 - v13;
  sub_2414E07B0();
  v16 = v15;
  v17 = 0.0;
  IsPad = AXDeviceIsPad();
  if (IsPad)
  {
    v17 = v16 / 6.0;
  }

  result = AXAssistiveTouchBundle();
  if (result)
  {
    v20 = result;
    v59 = v4;
    v60 = IsPad;
    v61 = a1;
    v62 = v14;
    v63 = v12;
    v64 = a2;
    v21 = sub_2414E0700();
    v23 = v22;

    *&v72[0] = v21;
    *(&v72[0] + 1) = v23;
    sub_2414DFA28();
    v24 = sub_2414E0A00();
    v26 = v25;
    v28 = v27;
    if (qword_27E5459E0 != -1)
    {
      swift_once();
    }

    v29 = sub_2414E09E0();
    v31 = v30;
    v33 = v32;
    sub_2414DFA7C(v24, v26, v28 & 1);

    sub_2414E0AE0();
    v34 = sub_2414E09D0();
    v36 = v35;
    v38 = v37;

    sub_2414DFA7C(v29, v31, v33 & 1);

    (*(v65 + 104))(v7, *MEMORY[0x277CE0ED0], v59);
    v39 = 0.0;
    sub_2414E0B30();
    v40 = sub_2414E09F0();
    v42 = v41;
    LOBYTE(v29) = v43;
    v45 = v44;

    sub_2414DFA7C(v34, v36, v38 & 1);

    KeyPath = swift_getKeyPath();
    v47 = swift_getKeyPath();
    LOBYTE(v72[0]) = v29 & 1;
    LOBYTE(v66) = 0;
    v48 = swift_getKeyPath();
    *&v66 = v40;
    *(&v66 + 1) = v42;
    LOBYTE(v67) = v29 & 1;
    *(&v67 + 1) = v45;
    *&v68 = KeyPath;
    BYTE8(v68) = 1;
    *&v69 = v47;
    *(&v69 + 1) = 3;
    LOBYTE(v70) = 0;
    *(&v70 + 1) = v48;
    v71 = 0x3F847AE147AE147BLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F38, &qword_2414E2750);
    sub_2414DFB98();
    v49 = v62;
    sub_2414E0A40();
    v72[2] = v68;
    v72[3] = v69;
    v72[4] = v70;
    v73 = v71;
    v72[0] = v66;
    v72[1] = v67;
    sub_2414D6B9C(v72, &qword_27E545F38, &qword_2414E2750);
    sub_2414E07B0();
    v51 = v50;
    v52 = AXDeviceIsPad();
    v53 = v52;
    if (v52)
    {
      v39 = v51 / 6.0;
    }

    v54 = v63;
    sub_2414D6D10(v49, v63, &qword_27E545F28, &qword_2414E26B8);
    v55 = v64;
    *v64 = v17;
    *(v55 + 8) = v60 ^ 1;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F98, &qword_2414E2780);
    sub_2414D6D10(v54, v55 + *(v56 + 48), &qword_27E545F28, &qword_2414E26B8);
    v57 = (v55 + *(v56 + 64));
    *v57 = v39;
    *(v57 + 8) = v53 ^ 1;
    sub_2414D6B9C(v49, &qword_27E545F28, &qword_2414E26B8);
    return sub_2414D6B9C(v54, &qword_27E545F28, &qword_2414E26B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2414DD0D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B90();
  return sub_2414DD134();
}

uint64_t sub_2414DD134()
{
  v9 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B80();
  if (v8 == 1)
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    type metadata accessor for GazeStateManager();
    sub_2414E0670(&qword_27E545A60, type metadata accessor for GazeStateManager);
    sub_2414E0790();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2414E0740();

    if (sub_2414D83CC(v9) == 0x6C616974696E69 && v4 == 0xE700000000000000)
    {
    }

    else
    {
      v5 = sub_2414E0E30();

      if ((v5 & 1) == 0)
      {
        return sub_2414DDFE8();
      }
    }
  }

  v6 = sub_2414E0BE0();
  MEMORY[0x28223BE20](v6);
  sub_2414E07F0();
}

uint64_t sub_2414DD31C(uint64_t a1)
{
  v2 = sub_2414E0C10();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2414E0960();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  type metadata accessor for GazeStateManager();
  sub_2414E0670(&qword_27E545A60, type metadata accessor for GazeStateManager);
  v14 = sub_2414E0790();
  sub_2414E0970();
  sub_2414E07C0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  (*(v7 + 8))(v10, v6);
  v23 = v14 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame;
  *v23 = v16;
  *(v23 + 8) = v18;
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  *(v23 + 32) = 0;

  sub_2414E0C00();
  sub_2414E0BB0();
  (*(v25 + 8))(v5, v26);
  sub_2414E0BC0();

  v27 = a1;
  sub_2414E07F0();
}

uint64_t sub_2414DD5B8(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545FA0, &qword_2414E2788);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v22 - v7;
  if (sub_2414D83CC(*a2) == 0x6574656C706D6F63 && v9 == 0xE800000000000000)
  {
  }

  else
  {
    v11 = sub_2414E0E30();

    if ((v11 & 1) == 0)
    {
      v22[0] = *(a3 + 40);
      v23 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
      sub_2414E0B90();
      return sub_2414DD134();
    }
  }

  v13 = *(a3 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v22[0]) = 1;

  sub_2414E0750();
  v22[0] = *(a3 + 40);
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B90();
  v14 = sub_2414E0D60();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_2414E0D40();
  sub_2414DE8B0(a3, v22);
  v15 = sub_2414E0D30();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  v18 = *(a3 + 112);
  *(v16 + 128) = *(a3 + 96);
  *(v16 + 144) = v18;
  *(v16 + 160) = *(a3 + 128);
  v19 = *(a3 + 48);
  *(v16 + 64) = *(a3 + 32);
  *(v16 + 80) = v19;
  v20 = *(a3 + 80);
  *(v16 + 96) = *(a3 + 64);
  *(v16 + 112) = v20;
  v21 = *(a3 + 16);
  *(v16 + 32) = *a3;
  *(v16 + 48) = v21;
  sub_2414DDC20(0, 0, v8, &unk_2414E27E0, v16);
}

uint64_t sub_2414DD820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_2414E0DE0();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  sub_2414E0D40();
  v4[8] = sub_2414E0D30();
  v9 = sub_2414E0D20();
  v4[9] = v9;
  v4[10] = v8;

  return MEMORY[0x2822009F8](sub_2414DD914, v9, v8);
}

uint64_t sub_2414DD914()
{
  v1 = *(v0 + 56);
  sub_2414E0E60();
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_2414DD9E0;
  v3 = *(v0 + 56);

  return sub_2414DF08C(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_2414DD9E0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 88);
  v5 = *v1;

  v6 = v2[7];
  v7 = v2[6];
  v8 = v2[5];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[9];
    v10 = v3[10];
    v11 = sub_2414E06B8;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[9];
    v10 = v3[10];
    v11 = sub_2414DDB74;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_2414DDB74()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);

  *(v0 + 16) = *(v3 + 88);
  *(v0 + 96) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B90();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2414DDC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545FA0, &qword_2414E2788);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2414D6D10(a3, v27 - v11, &qword_27E545FA0, &qword_2414E2788);
  v13 = sub_2414E0D60();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2414D6B9C(v12, &qword_27E545FA0, &qword_2414E2788);
  }

  else
  {
    sub_2414E0D50();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2414E0D20();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2414E0CE0() + 32;
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

      sub_2414D6B9C(a3, &qword_27E545FA0, &qword_2414E2788);

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

  sub_2414D6B9C(a3, &qword_27E545FA0, &qword_2414E2788);
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

uint64_t sub_2414DDF20(uint64_t a1)
{
  v2 = sub_2414E0820();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2414E0870();
}

uint64_t sub_2414DDFE8()
{
  v1 = v0;
  v2 = sub_2414E0990();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2414E0C10();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + 120);
  sub_2414E0C00();
  sub_2414E0BB0();
  (*(v8 + 8))(v11, v7);
  sub_2414E0BC0();

  v20 = v1;
  v13 = swift_allocObject();
  v14 = *(v1 + 112);
  v13[7] = *(v1 + 96);
  v13[8] = v14;
  v13[9] = *(v1 + 128);
  v15 = *(v1 + 48);
  v13[3] = *(v1 + 32);
  v13[4] = v15;
  v16 = *(v1 + 80);
  v13[5] = *(v1 + 64);
  v13[6] = v16;
  v17 = *(v1 + 16);
  v13[1] = *v1;
  v13[2] = v17;
  sub_2414DE8B0(v1, v21);
  sub_2414E0980();
  sub_2414E07E0();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2414DE248(uint64_t a1)
{
  v7 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B90();
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  type metadata accessor for GazeStateManager();
  sub_2414E0670(&qword_27E545A60, type metadata accessor for GazeStateManager);
  swift_retain_n();
  sub_2414E0790();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0750();
  sub_2414E0790();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0750();
  sub_2414E0BE0();
  sub_2414E07F0();
}

uint64_t sub_2414DE4AC(uint64_t a1)
{
  v9[0] = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EC0, &qword_2414E2670);
  sub_2414E0B90();
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  type metadata accessor for GazeStateManager();
  sub_2414E0670(&qword_27E545A60, type metadata accessor for GazeStateManager);
  v5 = sub_2414E0790();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  v6 = sub_2414D7E00(v9[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  if (v6 == 15)
  {
    LOBYTE(v9[0]) = 1;
  }

  else
  {
    LOBYTE(v9[0]) = v6;
  }

  sub_2414E0750();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  v7 = v9[0];
  v10 = *(v5 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame + 32);
  v9[0] = *(v5 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame);
  v9[1] = *(v5 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame + 16);
  if (v10)
  {
  }

  sub_2414D72D0(v7, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_2414E0750();
}

uint64_t sub_2414DE6FC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v22[6] = v1[6];
  v22[7] = v3;
  v22[8] = v1[8];
  v4 = v1[3];
  v22[2] = v1[2];
  v22[3] = v4;
  v5 = v1[5];
  v22[4] = v1[4];
  v22[5] = v5;
  v6 = v1[1];
  v22[0] = *v1;
  v22[1] = v6;
  v7 = swift_allocObject();
  v8 = v1[7];
  v7[7] = v1[6];
  v7[8] = v8;
  v7[9] = v1[8];
  v9 = v1[3];
  v7[3] = v1[2];
  v7[4] = v9;
  v10 = v1[5];
  v7[5] = v1[4];
  v7[6] = v10;
  v11 = v1[1];
  v7[1] = *v1;
  v7[2] = v11;
  sub_2414DE8B0(v22, v20);
  v12 = sub_2414E0830();
  v13 = sub_2414E09A0();
  v20[0] = sub_2414DE8A8;
  v20[1] = v7;
  v20[2] = v12;
  v21 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545E60, &qword_2414E2558);
  sub_2414DE8E8();
  sub_2414E0A40();

  KeyPath = swift_getKeyPath();
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545E80, &qword_2414E2598) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545E88, &qword_2414E25A0) + 28);
  v17 = *MEMORY[0x277CDFA88];
  v18 = sub_2414E0820();
  result = (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = KeyPath;
  return result;
}

unint64_t sub_2414DE8E8()
{
  result = qword_27E545E68;
  if (!qword_27E545E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545E60, &qword_2414E2558);
    sub_2414D6A68(&qword_27E545E70, &qword_27E545E78, &qword_2414E2560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545E68);
  }

  return result;
}

uint64_t sub_2414DE9C8()
{
  if (AXDeviceIsPad())
  {
    result = sub_2414E09B0();
  }

  else
  {
    result = sub_2414E09C0();
  }

  qword_27E545E20 = result;
  return result;
}

__n128 sub_2414DEA84@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  result = v6;
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_2414DEB10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2414E0750();
}

uint64_t sub_2414DEBBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  *a2 = v5;
  return result;
}

uint64_t sub_2414DEC38(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2414E0750();
}

double sub_2414DECAC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2414DED2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2414E0750();
}

uint64_t sub_2414DEDA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  *a2 = v5;
  return result;
}

uint64_t sub_2414DEE28(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2414E0750();
}

uint64_t sub_2414DEE9C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2414DEF94;

  return v7(a1);
}

uint64_t sub_2414DEF94()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2414DF08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2414E0DD0();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2414DF18C, 0, 0);
}

uint64_t sub_2414DF18C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_2414E0DE0();
  v7 = sub_2414E0670(&qword_27E545FA8, MEMORY[0x277D85928]);
  sub_2414E0E40();
  sub_2414E0670(&qword_27E545FB0, MEMORY[0x277D858F8]);
  sub_2414E0DF0();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_2414DF31C;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_2414DF31C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2414DF4D8, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_2414DF4D8()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_2414DF544()
{
  v1 = sub_2414E07D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 160) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  sub_2414DE8A0();
  v10 = *(v0 + 64);

  v11 = *(v0 + 80);

  v12 = *(v0 + 96);

  v13 = *(v0 + 112);

  v14 = *(v0 + 128);

  v15 = *(v0 + 152);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2414DF644()
{
  v1 = *(*(sub_2414E07D0() - 8) + 80);

  return sub_2414DD31C(v0 + 16);
}

unint64_t sub_2414DF6B0()
{
  result = qword_27E545ED0;
  if (!qword_27E545ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545EC8, &qword_2414E2678);
    sub_2414DF73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545ED0);
  }

  return result;
}

unint64_t sub_2414DF73C()
{
  result = qword_27E545ED8;
  if (!qword_27E545ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545EE0, &qword_2414E2680);
    sub_2414DF7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545ED8);
  }

  return result;
}

unint64_t sub_2414DF7C8()
{
  result = qword_27E545EE8;
  if (!qword_27E545EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545EF0, &qword_2414E2688);
    sub_2414DF854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545EE8);
  }

  return result;
}

unint64_t sub_2414DF854()
{
  result = qword_27E545EF8;
  if (!qword_27E545EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545EF8);
  }

  return result;
}

uint64_t sub_2414DF8A8(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    return v3();
  }

  return result;
}

uint64_t sub_2414DF8E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EA8, &qword_2414E2650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2414DF950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EA8, &qword_2414E2650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2414DF9B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EB0, &qword_2414E2658);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2414DFA28()
{
  result = qword_27E545F30;
  if (!qword_27E545F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545F30);
  }

  return result;
}

uint64_t sub_2414DFA7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2414DFA8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2414E08E0();
  *a1 = result;
  return result;
}

uint64_t sub_2414DFAE0@<X0>(uint64_t a1@<X8>)
{
  result = sub_2414E0900();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2414DFB14(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_2414E0910();
}

uint64_t sub_2414DFB44@<X0>(void *a1@<X8>)
{
  result = sub_2414E08A0();
  *a1 = v3;
  return result;
}

unint64_t sub_2414DFB98()
{
  result = qword_27E545F40;
  if (!qword_27E545F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545F38, &qword_2414E2750);
    sub_2414DFC50();
    sub_2414D6A68(&qword_27E545F88, &qword_27E545F90, &qword_2414E2778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545F40);
  }

  return result;
}

unint64_t sub_2414DFC50()
{
  result = qword_27E545F48;
  if (!qword_27E545F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545F50, &qword_2414E2758);
    sub_2414DFD08();
    sub_2414D6A68(&qword_27E545F78, &qword_27E545F80, &qword_2414E2770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545F48);
  }

  return result;
}

unint64_t sub_2414DFD08()
{
  result = qword_27E545F58;
  if (!qword_27E545F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545F60, &qword_2414E2760);
    sub_2414D6A68(&qword_27E545F68, &qword_27E545F70, &qword_2414E2768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545F58);
  }

  return result;
}

uint64_t sub_2414DFDC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  sub_2414DE8A0();
  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  v8 = *(v0 + 112);

  v9 = *(v0 + 128);

  v10 = *(v0 + 144);

  v11 = *(v0 + 168);

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_2414DFE44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2414DFEF4;

  return sub_2414DD820(a1, v4, v5, v1 + 32);
}

uint64_t sub_2414DFEF4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2414DFFE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2414E0020(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2414E06E8;

  return sub_2414DEE9C(a1, v5);
}

uint64_t sub_2414E00D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2414DFEF4;

  return sub_2414DEE9C(a1, v5);
}

uint64_t sub_2414E0190()
{
  v2 = *(*(v0 + 16) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EC0, &qword_2414E2670);
  return sub_2414E0B90();
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_2414DE8A0();
  v5 = *(v0 + 64);

  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  v8 = *(v0 + 112);

  v9 = *(v0 + 128);

  v10 = *(v0 + 152);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_2414E02C0()
{
  v2 = *(*(v0 + 16) + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  return sub_2414E0B90();
}

uint64_t sub_2414E0320@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_2414E0B70();
  sub_2414E0B70();
  type metadata accessor for UIDeviceOrientation(0);
  sub_2414E0B70();
  sub_2414E0B70();
  sub_2414E0B70();
  sub_2414E0D90();
  v4 = MEMORY[0x245CE8180]();
  [v4 assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout];
  v6 = v5;

  type metadata accessor for CalibrationViewDelegate();
  sub_2414E0670(&qword_27E545FB8, type metadata accessor for CalibrationViewDelegate);
  result = sub_2414E0800();
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = sub_2414DBC98;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = v11;
  *(a3 + 48) = v12;
  *(a3 + 56) = v11;
  *(a3 + 64) = v12;
  *(a3 + 72) = v11;
  *(a3 + 80) = v12;
  *(a3 + 88) = v11;
  *(a3 + 96) = v12;
  *(a3 + 104) = v11;
  *(a3 + 112) = v12;
  *(a3 + 120) = v6;
  *(a3 + 128) = a1;
  *(a3 + 136) = a2;
  return result;
}

unint64_t sub_2414E04FC()
{
  result = qword_27E545FC0;
  if (!qword_27E545FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545E80, &qword_2414E2598);
    sub_2414E05B4();
    sub_2414D6A68(&unk_27E545FE0, &qword_27E545E88, &qword_2414E25A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545FC0);
  }

  return result;
}

unint64_t sub_2414E05B4()
{
  result = qword_27E545FC8;
  if (!qword_27E545FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545FD0, &qword_2414E28A0);
    sub_2414DE8E8();
    sub_2414E0670(&qword_27E545FD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545FC8);
  }

  return result;
}

uint64_t sub_2414E0670(unint64_t *a1, void (*a2)(uint64_t))
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