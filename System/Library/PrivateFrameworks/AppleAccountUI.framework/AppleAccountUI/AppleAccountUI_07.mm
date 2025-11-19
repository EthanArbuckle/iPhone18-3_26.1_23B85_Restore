unint64_t sub_1C54DAFF8()
{
  v2 = qword_1EC15DA60;
  if (!qword_1EC15DA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D990);
    sub_1C54DA854();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DA60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54DB09C()
{
  v2 = qword_1EC15DA68;
  if (!qword_1EC15DA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D998);
    sub_1C54DAFF8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DA68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54DB140()
{
  v2 = qword_1EC15DA70;
  if (!qword_1EC15DA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D9A0);
    sub_1C54DB09C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DA70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54DB1E4()
{
  v2 = qword_1EC15DA78;
  if (!qword_1EC15DA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D9A8);
    sub_1C54DB140();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DA78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54DB288(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9C8) + 44);
  *(a2 + v69) = *(a1 + v69);
  v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9D0) + 36);
  v87 = sub_1C5595754();
  v88 = *(*(v87 - 8) + 16);
  v88(a2 + v69 + v70, a1 + v69 + v70);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9D8);
  v71 = a1 + v69 + *(v89 + 48);
  v72 = a2 + v69 + *(v89 + 48);
  *v72 = *v71;
  *(v72 + 16) = *(v71 + 16);
  v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9E0) + 44);
  v74 = *(v71 + v73);
  v75 = *(v71 + v73 + 8);
  v76 = *(v71 + v73 + 16);
  sub_1C54130AC(v74, v75, v76 & 1);
  v78 = v72 + v73;
  *v78 = v74;
  *(v78 + 8) = v75;
  *(v78 + 16) = v76 & 1;
  v77 = *(v71 + v73 + 24);
  sub_1C5594CF4();
  *(v78 + 24) = v77;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80);
  (v88)(v72 + v73 + *(v83 + 36), v71 + v73 + *(v83 + 36), v87);
  v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9E8) + 48);
  v86 = v71 + v73 + v79;
  v80 = *v86;
  v81 = *(v86 + 8);
  v82 = *(v86 + 16);
  sub_1C54130AC(*v86, v81, v82 & 1);
  v85 = v72 + v73 + v79;
  *v85 = v80;
  *(v85 + 8) = v81;
  *(v85 + 16) = v82 & 1;
  v84 = *(v86 + 24);
  sub_1C5594CF4();
  *(v85 + 24) = v84;
  (v88)(v85 + *(v83 + 36), v86 + *(v83 + 36), v87);
  v90 = *(v89 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = a1 + v69 + v90;
      v26 = a2 + v69 + v90;
      *v26 = *v21;
      *(v26 + 16) = *(v21 + 16);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA48);
      v22 = v26 + *(v12 + 44);
      v23 = v21 + *(v12 + 44);
      v13 = sub_1C55960F4();
      (*(*(v13 - 8) + 16))(v22, v23);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA50);
      v25 = v22 + *(v14 + 48);
      v24 = v23 + *(v14 + 48);
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA58);
      (*(*(v15 - 8) + 16))(v25, v24);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = a1 + v69 + v90;
        v32 = a2 + v69 + v90;
        *v32 = *v27;
        *(v32 + 16) = *(v27 + 16);
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00);
        v28 = v32 + *(v8 + 44);
        v29 = v27 + *(v8 + 44);
        v9 = sub_1C55960F4();
        (*(*(v9 - 8) + 16))(v28, v29);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08);
        v31 = v28 + *(v10 + 48);
        v30 = v29 + *(v10 + 48);
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
        (*(*(v11 - 8) + 16))(v31, v30);
      }

      else
      {
        v33 = a1 + v69 + v90;
        v59 = a2 + v69 + v90;
        *v59 = *v33;
        *(v59 + 16) = *(v33 + 16);
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA28);
        v41 = v59 + *(v6 + 44);
        v42 = v33 + *(v6 + 44);
        v43 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8) - 8) + 16);
        (v43)(v41, v42);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA80);
        memcpy((v41 + *(v44 + 36)), (v42 + *(v44 + 36)), 0x70uLL);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30);
        v36 = v41 + *(v45 + 36);
        v35 = (v42 + *(v45 + 36));
        v34 = *v35;

        *v36 = v34;
        *(v36 + 8) = *(v35 + 8);
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA38);
        v39 = (v41 + *(v46 + 36));
        v40 = (v42 + *(v46 + 36));
        *v39 = *v40;
        v50 = sub_1C5595244();
        v38 = v39 + *(v50 + 20);
        v37 = v40 + *(v50 + 20);
        v51 = sub_1C55953F4();
        v52 = *(*(v51 - 8) + 16);
        v52(v38, v37);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA88);
        *(v39 + *(v54 + 36)) = *(v40 + *(v54 + 36));
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA90);
        *(v41 + *(v57 + 36)) = *(v42 + *(v57 + 36));
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA40);
        v56 = v41 + *(v7 + 48);
        v58 = v42 + *(v7 + 48);
        v43();
        memcpy((v56 + *(v44 + 36)), (v58 + *(v44 + 36)), 0x70uLL);
        v49 = v56 + *(v45 + 36);
        v48 = (v58 + *(v45 + 36));
        v47 = *v48;

        *v49 = v47;
        *(v49 + 8) = *(v48 + 8);
        v53 = (v56 + *(v46 + 36));
        v55 = (v58 + *(v46 + 36));
        *v53 = *v55;
        (v52)(v53 + *(v50 + 20), v55 + *(v50 + 20), v51);
        *(v53 + *(v54 + 36)) = *(v55 + *(v54 + 36));
        *(v56 + *(v57 + 36)) = *(v58 + *(v57 + 36));
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9F8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v60 = a1 + v69 + v90;
      v65 = a2 + v69 + v90;
      *v65 = *v60;
      *(v65 + 16) = *(v60 + 16);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00);
      v61 = v65 + *(v2 + 44);
      v62 = v60 + *(v2 + 44);
      v3 = sub_1C55960F4();
      (*(*(v3 - 8) + 16))(v61, v62);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08);
      v64 = v61 + *(v4 + 48);
      v63 = v62 + *(v4 + 48);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
      (*(*(v5 - 8) + 16))(v64, v63);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((a2 + v69 + v90), (a1 + v69 + v90), *(*(v66 - 8) + 64));
    }
  }

  swift_storeEnumTagMultiPayload();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D990);
  memcpy((a2 + *(v16 + 36)), (a1 + *(v16 + 36)), 0x29uLL);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D998);
  memcpy((a2 + *(v17 + 36)), (a1 + *(v17 + 36)), 0x29uLL);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9A0);
  memcpy((a2 + *(v18 + 36)), (a1 + *(v18 + 36)), 0x29uLL);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9A8);
  memcpy((a2 + *(v19 + 36)), (a1 + *(v19 + 36)), 0x70uLL);
  return a2;
}

uint64_t InviteMessageView.senderFooter.getter@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_1C54DF8B8;
  v19 = 0;
  v18 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DAB0);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v10 = sub_1C5595434();
  v8 = &v16;
  v17 = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB08);
  sub_1C54DF8C0();
  sub_1C5596064();
  v13 = sub_1C54DCD80();
  sub_1C540EFD8(v14, v12, v15);
  sub_1C54DF184(v14);
  sub_1C54DF270(v15, v14);
  sub_1C540EFD8(v14, v12, v11);
  sub_1C54DF184(v14);
  return sub_1C54DF184(v15);
}

uint64_t InviteMessageView.receiverFooter.getter@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v38 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v43 = 0;
  v42 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DAB0);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = v10 - v22;
  v1 = MEMORY[0x1EEE9AC00](v10 - v22);
  v21 = v10 - v22;
  MEMORY[0x1EEE9AC00](v1);
  v23 = v10 - v22;
  v52 = v10 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DAE0);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = v10 - v28;
  v2 = MEMORY[0x1EEE9AC00](v10 - v28);
  v27 = v10 - v28;
  MEMORY[0x1EEE9AC00](v2);
  v29 = v10 - v28;
  v51 = v10 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DAA8);
  v32 = *(*(v31 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v30);
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = v10 - v34;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v35 = v10 - v34;
  v50 = v10 - v34;
  v49 = v4;
  v40 = v46;
  sub_1C5432498(v4, v46);
  v37 = v47;
  v36 = v48;
  __swift_project_boxed_opaque_existential_0(v40, v47);
  v45 = (*(v36 + 200))(v37);
  v44 = 1;
  v39 = type metadata accessor for Status();
  sub_1C5461DBC();
  v41 = sub_1C5596E24();
  __swift_destroy_boxed_opaque_existential_0(v40);
  if (v41)
  {
    v15 = v10;
    MEMORY[0x1EEE9AC00](v10);
    v12 = &v10[-4];
    v10[-2] = v5;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB18);
    v14 = sub_1C54E3908();
    sub_1C5412C88();
    sub_1C5596024();
    v16 = sub_1C54DCCF8();
    sub_1C540EFD8(v27, v24, v29);
    sub_1C54E3990(v27);
    v42 = v27;
    sub_1C54E3B68(v29, v25);
    sub_1C540EFD8(v25, v24, v27);
    sub_1C54E3990(v25);
    sub_1C54E3B68(v27, v25);
    v6 = sub_1C54DCD80();
    sub_1C540FD1C(v25, v24, v18, v16, v6, v33);
    sub_1C54E3990(v25);
    sub_1C54E33EC(v33, v35);
    sub_1C54E3990(v27);
    sub_1C54E3990(v29);
  }

  else
  {
    v10[2] = sub_1C5595434();
    v10[3] = v10;
    MEMORY[0x1EEE9AC00](v10);
    v10[0] = &v10[-4];
    v10[-2] = v7;
    v10[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB08);
    sub_1C54DF8C0();
    sub_1C5596064();
    v11 = sub_1C54DCD80();
    sub_1C540EFD8(v21, v18, v23);
    sub_1C54DF184(v21);
    v43 = v21;
    sub_1C54DF270(v23, v19);
    sub_1C540EFD8(v19, v18, v21);
    sub_1C54DF184(v19);
    sub_1C54DF270(v21, v19);
    v8 = sub_1C54DCCF8();
    sub_1C54108A0(v19, v24, v18, v8, v11, v33);
    sub_1C54DF184(v19);
    sub_1C54E33EC(v33, v35);
    sub_1C54DF184(v21);
    sub_1C54DF184(v23);
  }

  sub_1C54DEC30(v35, v33);
  sub_1C54DCC50();
  sub_1C540EFD8(v33, v31, v17);
  sub_1C54DE964(v33);
  return sub_1C54DE964(v35);
}

uint64_t InviteMessageView.recordMissingFooter.getter@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v8 = 0;
  v7 = sub_1C54E4968;
  v17 = 0;
  v16 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA98);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v5);
  v15 = &v4 - v6;
  v17 = &v4 - v6;
  v16 = v1;
  v10 = sub_1C5595434();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB28);
  sub_1C54E4D24();
  sub_1C5596064();
  v13 = sub_1C54DC9B0();
  sub_1C540EFD8(v14, v12, v15);
  sub_1C54DCA38(v14);
  sub_1C54DCB24(v15, v14);
  sub_1C540EFD8(v14, v12, v11);
  sub_1C54DCA38(v14);
  return sub_1C54DCA38(v15);
}

unint64_t sub_1C54DC9B0()
{
  v2 = qword_1EC15DAC8;
  if (!qword_1EC15DAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DA98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DAC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54DCA38(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA48) + 44);
  v1 = sub_1C55960F4();
  (*(*(v1 - 8) + 8))();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA50) + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA58);
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  return a1;
}

uint64_t sub_1C54DCB24(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA48) + 44);
  v2 = sub_1C55960F4();
  (*(*(v2 - 8) + 16))();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA50) + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA58);
  (*(*(v3 - 8) + 16))(a2 + v5 + v7, a1 + v5 + v7);
  return a2;
}

unint64_t sub_1C54DCC50()
{
  v2 = qword_1EC15DAD0;
  if (!qword_1EC15DAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DAA8);
    sub_1C54DCCF8();
    sub_1C54DCD80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DAD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54DCCF8()
{
  v2 = qword_1EC15DAD8;
  if (!qword_1EC15DAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DAE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DAD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54DCD80()
{
  v2 = qword_1EC15DAE8;
  if (!qword_1EC15DAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DAB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DAE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54DCE08()
{
  v2 = qword_1EC15DAF0;
  if (!qword_1EC15DAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DAB8);
    sub_1C54DCD80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DAF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54DCEAC()
{
  v2 = qword_1EC15DAF8;
  if (!qword_1EC15DAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DAA0);
    sub_1C54DCC50();
    sub_1C54DC9B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DAF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54DCF54(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA48) + 44);
    v3 = sub_1C55960F4();
    (*(*(v3 - 8) + 8))(v6);
    v7 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA50) + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA58);
    (*(*(v4 - 8) + 8))(v7);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00) + 44);
      v1 = sub_1C55960F4();
      (*(*(v1 - 8) + 8))(v8);
      v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08) + 48);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
      (*(*(v2 - 8) + 8))(v9);
    }

    else
    {
      v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA28) + 44);
      v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8) - 8) + 8);
      (v13)(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30);

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA38);
      v10 = v12 + *(v14 + 36);
      v16 = sub_1C5595244();
      v11 = v10 + *(v16 + 20);
      v17 = sub_1C55953F4();
      v18 = *(*(v17 - 8) + 8);
      v18(v11);
      v15 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA40) + 48);
      v13();

      (v18)(v15 + *(v14 + 36) + *(v16 + 20), v17);
    }
  }

  return a1;
}

char *sub_1C54DD318(char *a1, char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      a2[16] = a1[16];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA48);
      v21 = &a2[*(v16 + 44)];
      v22 = &a1[*(v16 + 44)];
      v17 = sub_1C55960F4();
      (*(*(v17 - 8) + 32))(v21, v22);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA50);
      v24 = &v21[*(v18 + 48)];
      v23 = &v22[*(v18 + 48)];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA58);
      (*(*(v19 - 8) + 32))(v24, v23);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *a2 = *a1;
        a2[16] = a1[16];
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00);
        v25 = &a2[*(v12 + 44)];
        v26 = &a1[*(v12 + 44)];
        v13 = sub_1C55960F4();
        (*(*(v13 - 8) + 32))(v25, v26);
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08);
        v28 = &v25[*(v14 + 48)];
        v27 = &v26[*(v14 + 48)];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
        (*(*(v15 - 8) + 32))(v28, v27);
      }

      else
      {
        *a2 = *a1;
        a2[16] = a1[16];
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA28);
        v33 = &a2[*(v6 + 44)];
        v34 = &a1[*(v6 + 44)];
        v35 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8) - 8) + 32);
        (v35)(v33, v34);
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA80);
        memcpy(&v33[*(v36 + 36)], &v34[*(v36 + 36)], 0x70uLL);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30);
        v7 = &v33[*(v38 + 36)];
        v8 = &v34[*(v38 + 36)];
        *v7 = *v8;
        v7[8] = v8[8];
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA38);
        v31 = &v33[*(v37 + 36)];
        v32 = &v34[*(v37 + 36)];
        *v31 = *v32;
        v39 = sub_1C5595244();
        v30 = &v31[*(v39 + 20)];
        v29 = &v32[*(v39 + 20)];
        v40 = sub_1C55953F4();
        v41 = *(*(v40 - 8) + 32);
        v41(v30, v29);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA88);
        *&v31[*(v43 + 36)] = *&v32[*(v43 + 36)];
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA90);
        v33[*(v46 + 36)] = v34[*(v46 + 36)];
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA40);
        v45 = &v33[*(v9 + 48)];
        v47 = &v34[*(v9 + 48)];
        v35();
        memcpy(&v45[*(v36 + 36)], &v47[*(v36 + 36)], 0x70uLL);
        v10 = &v45[*(v38 + 36)];
        v11 = &v47[*(v38 + 36)];
        *v10 = *v11;
        v10[8] = v11[8];
        v42 = &v45[*(v37 + 36)];
        v44 = &v47[*(v37 + 36)];
        *v42 = *v44;
        (v41)(&v42[*(v39 + 20)], &v44[*(v39 + 20)], v40);
        *&v42[*(v43 + 36)] = *&v44[*(v43 + 36)];
        v45[*(v46 + 36)] = v47[*(v46 + 36)];
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9F8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      a2[16] = a1[16];
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00);
      v48 = &a2[*(v2 + 44)];
      v49 = &a1[*(v2 + 44)];
      v3 = sub_1C55960F4();
      (*(*(v3 - 8) + 32))(v48, v49);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08);
      v51 = &v48[*(v4 + 48)];
      v50 = &v49[*(v4 + 48)];
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
      (*(*(v5 - 8) + 32))(v51, v50);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v52 - 8) + 64));
    }
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

char *sub_1C54DDB54(char *a1, char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      a2[16] = a1[16];
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA48);
      v17 = &a2[*(v12 + 44)];
      v18 = &a1[*(v12 + 44)];
      v13 = sub_1C55960F4();
      (*(*(v13 - 8) + 16))(v17, v18);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA50);
      v20 = &v17[*(v14 + 48)];
      v19 = &v18[*(v14 + 48)];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA58);
      (*(*(v15 - 8) + 16))(v20, v19);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *a2 = *a1;
        a2[16] = a1[16];
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00);
        v21 = &a2[*(v8 + 44)];
        v22 = &a1[*(v8 + 44)];
        v9 = sub_1C55960F4();
        (*(*(v9 - 8) + 16))(v21, v22);
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08);
        v24 = &v21[*(v10 + 48)];
        v23 = &v22[*(v10 + 48)];
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
        (*(*(v11 - 8) + 16))(v24, v23);
      }

      else
      {
        *a2 = *a1;
        a2[16] = a1[16];
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA28);
        v32 = &a2[*(v6 + 44)];
        v33 = &a1[*(v6 + 44)];
        v34 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8) - 8) + 16);
        (v34)(v32, v33);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA80);
        memcpy(&v32[*(v35 + 36)], &v33[*(v35 + 36)], 0x70uLL);
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30);
        v27 = &v32[*(v36 + 36)];
        v26 = &v33[*(v36 + 36)];
        v25 = *v26;

        *v27 = v25;
        v27[8] = v26[8];
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA38);
        v30 = &v32[*(v37 + 36)];
        v31 = &v33[*(v37 + 36)];
        *v30 = *v31;
        v41 = sub_1C5595244();
        v29 = &v30[*(v41 + 20)];
        v28 = &v31[*(v41 + 20)];
        v42 = sub_1C55953F4();
        v43 = *(*(v42 - 8) + 16);
        v43(v29, v28);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA88);
        *&v30[*(v45 + 36)] = *&v31[*(v45 + 36)];
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA90);
        v32[*(v48 + 36)] = v33[*(v48 + 36)];
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA40);
        v47 = &v32[*(v7 + 48)];
        v49 = &v33[*(v7 + 48)];
        v34();
        memcpy(&v47[*(v35 + 36)], &v49[*(v35 + 36)], 0x70uLL);
        v40 = &v47[*(v36 + 36)];
        v39 = &v49[*(v36 + 36)];
        v38 = *v39;

        *v40 = v38;
        v40[8] = v39[8];
        v44 = &v47[*(v37 + 36)];
        v46 = &v49[*(v37 + 36)];
        *v44 = *v46;
        (v43)(&v44[*(v41 + 20)], &v46[*(v41 + 20)], v42);
        *&v44[*(v45 + 36)] = *&v46[*(v45 + 36)];
        v47[*(v48 + 36)] = v49[*(v48 + 36)];
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9F8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      a2[16] = a1[16];
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00);
      v50 = &a2[*(v2 + 44)];
      v51 = &a1[*(v2 + 44)];
      v3 = sub_1C55960F4();
      (*(*(v3 - 8) + 16))(v50, v51);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08);
      v53 = &v50[*(v4 + 48)];
      v52 = &v51[*(v4 + 48)];
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
      (*(*(v5 - 8) + 16))(v53, v52);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v54 - 8) + 64));
    }
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_1C54DE3D0()
{
  v2 = qword_1EC15DB00;
  if (!qword_1EC15DB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DAC0);
    sub_1C54DCE08();
    sub_1C54DCEAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DB00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54DE478(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA48) + 44);
      v5 = sub_1C55960F4();
      (*(*(v5 - 8) + 8))(v8);
      v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA50) + 48);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA58);
      (*(*(v6 - 8) + 8))(v9);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA20);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00) + 44);
        v3 = sub_1C55960F4();
        (*(*(v3 - 8) + 8))(v10);
        v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08) + 48);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
        (*(*(v4 - 8) + 8))(v11);
      }

      else
      {
        v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA28) + 44);
        v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8) - 8) + 8);
        (v15)(v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30);

        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA38);
        v12 = v14 + *(v16 + 36);
        v18 = sub_1C5595244();
        v13 = v12 + *(v18 + 20);
        v19 = sub_1C55953F4();
        v20 = *(*(v19 - 8) + 8);
        v20(v13);
        v17 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA40) + 48);
        v15();

        (v20)(v17 + *(v16 + 36) + *(v18 + 20), v19);
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9F8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00) + 44);
      v1 = sub_1C55960F4();
      (*(*(v1 - 8) + 8))(v21);
      v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08) + 48);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
      (*(*(v2 - 8) + 8))(v22);
    }
  }

  return a1;
}

uint64_t sub_1C54DE964(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00) + 44);
    v1 = sub_1C55960F4();
    (*(*(v1 - 8) + 8))(v4);
    v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08) + 48);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
    (*(*(v2 - 8) + 8))(v5);
  }

  else
  {
    v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA28) + 44);
    v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8) - 8) + 8);
    (v9)(v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30);

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA38);
    v6 = v8 + *(v10 + 36);
    v12 = sub_1C5595244();
    v7 = v6 + *(v12 + 20);
    v13 = sub_1C55953F4();
    v14 = *(*(v13 - 8) + 8);
    v14(v7);
    v11 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA40) + 48);
    v9();

    (v14)(v11 + *(v10 + 36) + *(v12 + 20), v13);
  }

  return a1;
}

uint64_t sub_1C54DEC30(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00);
    v9 = a2 + *(v4 + 44);
    v10 = a1 + *(v4 + 44);
    v5 = sub_1C55960F4();
    (*(*(v5 - 8) + 16))(v9, v10);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08);
    v12 = v9 + *(v6 + 48);
    v11 = v10 + *(v6 + 48);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
    (*(*(v7 - 8) + 16))(v12, v11);
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA28);
    v20 = a2 + *(v2 + 44);
    v21 = a1 + *(v2 + 44);
    v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8) - 8) + 16);
    (v22)(v20, v21);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA80);
    memcpy((v20 + *(v23 + 36)), (v21 + *(v23 + 36)), 0x70uLL);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30);
    v15 = v20 + *(v24 + 36);
    v14 = (v21 + *(v24 + 36));
    v13 = *v14;

    *v15 = v13;
    *(v15 + 8) = *(v14 + 8);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA38);
    v18 = (v20 + *(v25 + 36));
    v19 = (v21 + *(v25 + 36));
    *v18 = *v19;
    v29 = sub_1C5595244();
    v17 = v18 + *(v29 + 20);
    v16 = v19 + *(v29 + 20);
    v30 = sub_1C55953F4();
    v31 = *(*(v30 - 8) + 16);
    v31(v17, v16);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA88);
    *(v18 + *(v33 + 36)) = *(v19 + *(v33 + 36));
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA90);
    *(v20 + *(v36 + 36)) = *(v21 + *(v36 + 36));
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA40);
    v35 = v20 + *(v3 + 48);
    v37 = v21 + *(v3 + 48);
    v22();
    memcpy((v35 + *(v23 + 36)), (v37 + *(v23 + 36)), 0x70uLL);
    v28 = v35 + *(v24 + 36);
    v27 = (v37 + *(v24 + 36));
    v26 = *v27;

    *v28 = v26;
    *(v28 + 8) = *(v27 + 8);
    v32 = (v35 + *(v25 + 36));
    v34 = (v37 + *(v25 + 36));
    *v32 = *v34;
    (v31)(v32 + *(v29 + 20), v34 + *(v29 + 20), v30);
    *(v32 + *(v33 + 36)) = *(v34 + *(v33 + 36));
    *(v35 + *(v36 + 36)) = *(v37 + *(v36 + 36));
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C54DF184(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00) + 44);
  v1 = sub_1C55960F4();
  (*(*(v1 - 8) + 8))();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08) + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  return a1;
}

uint64_t sub_1C54DF270(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00) + 44);
  v2 = sub_1C55960F4();
  (*(*(v2 - 8) + 16))();
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08) + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
  (*(*(v3 - 8) + 16))(a2 + v5 + v7, a1 + v5 + v7);
  return a2;
}

uint64_t sub_1C54DF39C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00) + 44);
    v1 = sub_1C55960F4();
    (*(*(v1 - 8) + 8))(v4);
    v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08) + 48);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
    (*(*(v2 - 8) + 8))(v5);
  }

  return a1;
}

uint64_t sub_1C54DF4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v12 = a1;
  v15 = sub_1C54ECA14;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
  v18 = *(v27 - 8);
  v19 = v27 - 8;
  v7 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v24 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v6 - v7);
  v26 = &v6 - v8;
  v42 = &v6 - v8;
  v31 = sub_1C55960F4();
  v16 = *(v31 - 8);
  v17 = v31 - 8;
  v10 = *(v16 + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v12);
  v25 = &v6 - v9;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v30 = &v6 - v11;
  v41 = &v6 - v11;
  v40 = v4;
  sub_1C55960E4();
  v20 = sub_1C54EBAF0();
  sub_1C540EFD8(v25, v31, v30);
  v33 = *(v16 + 8);
  v32 = v16 + 8;
  v33(v25, v31);
  v13 = &v34;
  v35 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DCC8);
  sub_1C54EC5A8();
  sub_1C5594F74();
  v21 = sub_1C54EC630();
  sub_1C540EFD8(v24, v27, v26);
  v29 = *(v18 + 8);
  v28 = v18 + 8;
  v29(v24, v27);
  (*(v16 + 16))(v25, v30, v31);
  v23 = v39;
  v39[0] = v25;
  (*(v18 + 16))(v24, v26, v27);
  v39[1] = v24;
  v38[0] = v31;
  v38[1] = v27;
  v36 = v20;
  v37 = v21;
  sub_1C540F5A0(v23, 2uLL, v38, v22);
  v29(v24, v27);
  v33(v25, v31);
  v29(v26, v27);
  return (v33)(v30, v31);
}

unint64_t sub_1C54DF8C0()
{
  v2 = qword_1EC15DB10;
  if (!qword_1EC15DB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DB08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DB10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54DF948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x62uLL);
  memset(v58, 0, sizeof(v58));
  v62 = a1;
  sub_1C5595344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DCE0);
  sub_1C54EC6C0();
  sub_1C5596024();
  memcpy(__dst, v60, sizeof(__dst));
  memcpy(v59, __dst, 0x62uLL);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DCF0);
  sub_1C54EC748();
  sub_1C540EFD8(v59, v28, __b);
  sub_1C54EC7D0(v59);
  sub_1C5432498(a1, v55);
  v12 = v56;
  v11 = v57;
  __swift_project_boxed_opaque_existential_0(v55, v56);
  v16 = (*(v11 + 200))(v12);
  sub_1C5432498(a1, v52);
  v15 = v53;
  v14 = v54;
  __swift_project_boxed_opaque_existential_0(v52, v53);
  v17 = (*(v14 + 248))(v15);
  v18 = sub_1C54E126C(v16, v17, v2);
  v19 = v3;

  __swift_destroy_boxed_opaque_existential_0(v52);
  __swift_destroy_boxed_opaque_existential_0(v55);
  v50 = v18;
  v51 = v19;
  sub_1C54141E8();
  v46 = sub_1C5595A04();
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v20 = v46;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  sub_1C5595914();
  v42 = v20;
  v43 = v21;
  v44 = v22 & 1;
  v45 = v23;
  v38 = sub_1C55959C4();
  v39 = v7;
  v40 = v8;
  v41 = v9;
  v24 = v38;
  v25 = v7;
  v26 = v8;
  v27 = v9;

  sub_1C5412EA0(v20, v21, v22 & 1);

  v35[0] = v24;
  v35[1] = v25;
  v36 = v26 & 1;
  v37 = v27;
  v29 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v35, MEMORY[0x1E6981148], v58);
  sub_1C5414260(v35);
  sub_1C54EC840(__b, v33);
  v34[0] = v33;
  sub_1C54142A8(v58, v32);
  v34[1] = v32;
  v31[0] = v28;
  v31[1] = v29;
  sub_1C540F5A0(v34, 2uLL, v31, a2);
  sub_1C5414260(v32);
  sub_1C54EC7D0(v33);
  sub_1C5414260(v58);
  return sub_1C54EC7D0(__b);
}

uint64_t sub_1C54DFD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v61, 0, sizeof(v61));
  v62 = a1;
  sub_1C5432498(a1, v58);
  v12 = v59;
  v11 = v60;
  __swift_project_boxed_opaque_existential_0(v58, v59);
  (*(v11 + 200))(v12);
  v13 = sub_1C54E00DC();
  v14 = v2;
  __swift_destroy_boxed_opaque_existential_0(v58);
  v56 = v13;
  v57 = v14;
  sub_1C54141E8();
  v52 = sub_1C5595A04();
  v53 = v3;
  v54 = v4;
  v55 = v5;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  sub_1C5595914();
  v48 = v52;
  v49 = v15;
  v50 = v16 & 1;
  v51 = v17;
  v44 = sub_1C55959C4();
  v45 = v6;
  v46 = v7;
  v47 = v8;
  v18 = v6;
  v19 = v7;
  v20 = v8;

  sub_1C5412EA0(v52, v15, v16 & 1);

  v41[0] = v44;
  v41[1] = v18;
  v42 = v19 & 1;
  v43 = v20;
  v24 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v41, MEMORY[0x1E6981148], v61);
  sub_1C5414260(v41);
  sub_1C5432498(a1, v34);
  v22 = v35;
  v21 = v36;
  __swift_project_boxed_opaque_existential_0(v34, v35);
  v9 = (*(v21 + 200))(v22);
  InviteMessageView.footerImage(status:)(v9, v37);
  __swift_destroy_boxed_opaque_existential_0(v34);
  v31[0] = v37[0];
  v31[1] = v37[1];
  v31[2] = v37[2];
  v31[3] = v37[3];
  v31[4] = v37[4];
  v32 = v38;
  v33 = v39 & 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB98);
  sub_1C54E5398();
  sub_1C540EFD8(v31, v25, v40);
  sub_1C54E5440(v31);
  sub_1C54142A8(v61, v29);
  v30[0] = v29;
  sub_1C54EC96C(v40, v28);
  v30[1] = v28;
  v27[0] = v24;
  v27[1] = v25;
  sub_1C540F5A0(v30, 2uLL, v27, a2);
  sub_1C54E5440(v28);
  sub_1C5414260(v29);
  sub_1C54E5440(v40);
  return sub_1C5414260(v61);
}

uint64_t sub_1C54E00DC()
{
  type metadata accessor for Status();
  sub_1C5462A94();
  if (sub_1C55964D4())
  {
    sub_1C55965F4();
    v3 = sub_1C54637B4();

    return v3;
  }

  else if (sub_1C55964D4())
  {
    sub_1C55965F4();
    v2 = sub_1C54637B4();

    return v2;
  }

  else if (sub_1C55964D4())
  {
    sub_1C55965F4();
    v1 = sub_1C54637B4();

    return v1;
  }

  else
  {
    return sub_1C55965F4();
  }
}

uint64_t InviteMessageView.footerImage(status:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x2AuLL);
  v176 = a1;
  v175 = v2;
  v173 = 1;
  v172 = a1;
  type metadata accessor for Status();
  sub_1C5462A94();
  if (sub_1C55964D4())
  {
    sub_1C55965F4();
    v120[8] = sub_1C5595EF4();
    sub_1C5595914();
    sub_1C5595CD4();

    sub_1C5410D10();
    v120[5] = v120[9];
    v120[6] = v120[10];
    v120[7] = v120[11];
    v3 = [objc_opt_self() secondaryLabelColor];
    sub_1C5595E44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB88);
    sub_1C54E502C();
    sub_1C5595B94();

    sub_1C543FC24();
    v120[0] = v120[12];
    v120[1] = v120[13];
    v120[2] = v120[14];
    v120[3] = v120[15];
    v120[4] = v120[16];
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB78);
    v86 = sub_1C54E4F84();
    sub_1C540EFD8(v120, v84, v121);
    sub_1C54E55A0();
    v74 = v121[0];
    v75 = v121[1];
    v76 = v121[2];
    v77 = v121[3];
    v78 = v121[4];

    v118[0] = v74;
    v118[1] = v75;
    v118[2] = v76;
    v118[3] = v77;
    v118[4] = v78;
    sub_1C540EFD8(v118, v84, v119);
    sub_1C54E55A0();
    v79 = v119[0];
    v80 = v119[1];
    v81 = v119[2];
    v82 = v119[3];
    v83 = v119[4];

    v108[0] = v79;
    v108[1] = v80;
    v108[2] = v81;
    v108[3] = v82;
    v108[4] = v83;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB38);
    v4 = sub_1C54E4DAC();
    sub_1C540FD1C(v108, v84, v85, v86, v4, v109);
    sub_1C54E55A0();
    v106[0] = v109[0];
    v106[1] = v109[1];
    v106[2] = v109[2];
    v106[3] = v109[3];
    v106[4] = v109[4];
    v107 = v110 & 1;
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB58);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB60);
    v89 = sub_1C54E4EDC();
    v5 = sub_1C54E50D0();
    sub_1C540FD1C(v106, v87, v88, v89, v5, &v111);
    sub_1C54E55FC();
    v91 = v111;
    v92 = v112;
    v93 = v113;
    v94 = v114;
    v95 = v115;
    v96 = v116;
    v90 = v117;
    sub_1C54E5220(v111, v112, v113, v114, v115, v116, v117 & 1);
    __b[0] = v91;
    __b[1] = v92;
    __b[2] = v93;
    __b[3] = v94;
    __b[4] = v95;
    LOBYTE(__b[5]) = v96;
    BYTE1(__b[5]) = v90 & 1;
    sub_1C54E55A0();
    sub_1C54E55A0();
    v97 = v91;
    v98 = v92;
    v99 = v93;
    v100 = v94;
    v101 = v95;
    v102 = v96;
    v103 = v90;
  }

  else
  {
    v171 = 2;
    v170 = a1;
    if (sub_1C55964D4())
    {
      sub_1C55965F4();
      v136[8] = sub_1C5595EF4();
      v6 = [objc_opt_self() systemGreenColor];
      sub_1C5595E44();
      sub_1C5595B94();

      sub_1C5410D10();
      v136[5] = v136[9];
      v136[6] = v136[10];
      v136[7] = v136[11];
      sub_1C5595914();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C600);
      sub_1C543FA44();
      sub_1C5595CD4();

      sub_1C543FC24();
      v136[0] = v136[12];
      v136[1] = v136[13];
      v136[2] = v136[14];
      v136[3] = v136[15];
      v136[4] = v136[16];
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB38);
      v63 = sub_1C54E4DAC();
      sub_1C540EFD8(v136, v62, v137);
      sub_1C54E55A0();
      v51 = v137[0];
      v52 = v137[1];
      v53 = v137[2];
      v54 = v137[3];
      v55 = v137[4];

      v134[0] = v51;
      v134[1] = v52;
      v134[2] = v53;
      v134[3] = v54;
      v134[4] = v55;
      sub_1C540EFD8(v134, v62, v135);
      sub_1C54E55A0();
      v56 = v135[0];
      v57 = v135[1];
      v58 = v135[2];
      v59 = v135[3];
      v60 = v135[4];

      v124[0] = v56;
      v124[1] = v57;
      v124[2] = v58;
      v124[3] = v59;
      v124[4] = v60;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB78);
      v7 = sub_1C54E4F84();
      sub_1C54108A0(v124, v61, v62, v7, v63, v125);
      sub_1C54E55A0();
      v122[0] = v125[0];
      v122[1] = v125[1];
      v122[2] = v125[2];
      v122[3] = v125[3];
      v122[4] = v125[4];
      v123 = v126 & 1;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB58);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB60);
      v66 = sub_1C54E4EDC();
      v8 = sub_1C54E50D0();
      sub_1C540FD1C(v122, v64, v65, v66, v8, &v127);
      sub_1C54E55FC();
      v68 = v127;
      v69 = v128;
      v70 = v129;
      v71 = v130;
      v72 = v131;
      v73 = v132;
      v67 = v133;
      sub_1C54E5220(v127, v128, v129, v130, v131, v132, v133 & 1);
      __b[0] = v68;
      __b[1] = v69;
      __b[2] = v70;
      __b[3] = v71;
      __b[4] = v72;
      LOBYTE(__b[5]) = v73;
      BYTE1(__b[5]) = v67 & 1;
      sub_1C54E55A0();
      sub_1C54E55A0();
      v97 = v68;
      v98 = v69;
      v99 = v70;
      v100 = v71;
      v101 = v72;
      v102 = v73;
      v103 = v67;
    }

    else
    {
      v169 = 4;
      v168 = a1;
      if (sub_1C55964D4())
      {
        sub_1C55965F4();
        v152[8] = sub_1C5595EF4();
        v9 = [objc_opt_self() systemRedColor];
        sub_1C5595E44();
        sub_1C5595B94();

        sub_1C5410D10();
        v152[5] = v152[9];
        v152[6] = v152[10];
        v152[7] = v152[11];
        sub_1C5595914();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C600);
        sub_1C543FA44();
        sub_1C5595CD4();

        sub_1C543FC24();
        v152[0] = v152[12];
        v152[1] = v152[13];
        v152[2] = v152[14];
        v152[3] = v152[15];
        v152[4] = v152[16];
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB38);
        v40 = sub_1C54E4DAC();
        sub_1C540EFD8(v152, v39, v153);
        sub_1C54E55A0();
        v29 = v153[0];
        v30 = v153[1];
        v31 = v153[2];
        v32 = v153[3];
        v33 = v153[4];

        v150[0] = v29;
        v150[1] = v30;
        v150[2] = v31;
        v150[3] = v32;
        v150[4] = v33;
        sub_1C540EFD8(v150, v39, v151);
        sub_1C54E55A0();
        v34 = v151[0];
        v35 = v151[1];
        v36 = v151[2];
        v37 = v151[3];
        v38 = v151[4];

        v140[0] = v34;
        v140[1] = v35;
        v140[2] = v36;
        v140[3] = v37;
        v140[4] = v38;
        sub_1C540FD1C(v140, v39, MEMORY[0x1E6981E70], v40, MEMORY[0x1E6981E60], v141);
        sub_1C54E55A0();
        v138[0] = v141[0];
        v138[1] = v141[1];
        v138[2] = v141[2];
        v138[3] = v141[3];
        v138[4] = v141[4];
        v139 = v142 & 1;
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB58);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB60);
        v43 = sub_1C54E4EDC();
        v10 = sub_1C54E50D0();
        sub_1C54108A0(v138, v41, v42, v43, v10, &v143);
        sub_1C54E5174(v138);
        v45 = v143;
        v46 = v144;
        v47 = v145;
        v48 = v146;
        v49 = v147;
        v50 = v148;
        v44 = v149;
        sub_1C54E5220(v143, v144, v145, v146, v147, v148, v149 & 1);
        __b[0] = v45;
        __b[1] = v46;
        __b[2] = v47;
        __b[3] = v48;
        __b[4] = v49;
        LOBYTE(__b[5]) = v50;
        BYTE1(__b[5]) = v44 & 1;
        sub_1C54E55A0();
        sub_1C54E55A0();
        v97 = v45;
        v98 = v46;
        v99 = v47;
        v100 = v48;
        v101 = v49;
        v102 = v50;
        v103 = v44;
      }

      else
      {
        sub_1C5596234();
        v16 = MEMORY[0x1E6981E70];
        v17 = MEMORY[0x1E6981E60];
        sub_1C540EFD8(v18, MEMORY[0x1E6981E70], v18);
        sub_1C540EFD8(v18, v16, v18);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB38);
        v11 = sub_1C54E4DAC();
        sub_1C54108A0(v18, v15, v16, v11, v17, v159);
        v157[0] = v159[0];
        v157[1] = v159[1];
        v157[2] = v159[2];
        v157[3] = v159[3];
        v157[4] = v159[4];
        v158 = v160 & 1;
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB58);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB60);
        v21 = sub_1C54E4EDC();
        v12 = sub_1C54E50D0();
        sub_1C54108A0(v157, v19, v20, v21, v12, &v161);
        sub_1C54E5174(v157);
        v23 = v161;
        v24 = v162;
        v25 = v163;
        v26 = v164;
        v27 = v165;
        v28 = v166;
        v22 = v167;
        sub_1C54E5220(v161, v162, v163, v164, v165, v166, v167 & 1);
        __b[0] = v23;
        __b[1] = v24;
        __b[2] = v25;
        __b[3] = v26;
        __b[4] = v27;
        LOBYTE(__b[5]) = v28;
        BYTE1(__b[5]) = v22 & 1;
        v97 = v23;
        v98 = v24;
        v99 = v25;
        v100 = v26;
        v101 = v27;
        v102 = v28;
        v103 = v22;
      }
    }
  }

  v154[0] = v97;
  v154[1] = v98;
  v154[2] = v99;
  v154[3] = v100;
  v154[4] = v101;
  v155 = v102;
  v156 = v103 & 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB98);
  sub_1C54E5398();
  sub_1C540EFD8(v154, v14, a2);
  sub_1C54E5440(v154);
  return sub_1C54E5440(__b);
}

uint64_t sub_1C54E126C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Status();
  sub_1C5462A94();
  if (sub_1C55964D4())
  {
    sub_1C55965F4();
    v10 = sub_1C54637B4();

    return v10;
  }

  else if (sub_1C55964D4())
  {
    sub_1C55965F4();
    sub_1C54637B4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C0D0);
    sub_1C5596E04();
    v8 = v3;
    sub_1C5594CF4();
    v8[3] = MEMORY[0x1E69E6158];
    v8[4] = sub_1C54E5644();
    *v8 = a2;
    v8[1] = a3;
    sub_1C540FCD8();
    v9 = sub_1C5596584();

    return v9;
  }

  else if (sub_1C55964D4())
  {
    sub_1C55965F4();
    sub_1C54637B4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C0D0);
    sub_1C5596E04();
    v6 = v4;
    sub_1C5594CF4();
    v6[3] = MEMORY[0x1E69E6158];
    v6[4] = sub_1C54E5644();
    *v6 = a2;
    v6[1] = a3;
    sub_1C540FCD8();
    v7 = sub_1C5596584();

    return v7;
  }

  else
  {
    return sub_1C55965F4();
  }
}

uint64_t sub_1C54E15B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = v93;
  v50 = a1;
  v28 = a2;
  v52 = 0;
  v96 = 0;
  v95 = 0;
  v91 = 0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  v29 = v58;
  v30 = *(v58 - 8);
  v56 = v30;
  v31 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58 - 8);
  v57 = v27 - v31;
  v32 = v27 - v31;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA80);
  v33 = v62;
  v34 = (*(*(v62 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v62 - 8);
  v67 = v27 - v34;
  v35 = v27 - v34;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30);
  v36 = v69;
  v37 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v69 - 8);
  v71 = v27 - v37;
  v38 = v27 - v37;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA38);
  v39 = v74;
  v40 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74 - 8);
  v78 = v27 - v40;
  v41 = v27 - v40;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA90);
  v42 = v80;
  v45 = *(*(v80 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v50);
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = v27 - v47;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v44 = v27 - v47;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v82 = v27 - v47;
  v46 = v27 - v47;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v79 = v27 - v47;
  v48 = v27 - v47;
  v96 = v27 - v47;
  v95 = v5;
  sub_1C5432498(v5, v93);
  v6 = swift_allocObject();
  v7 = v50;
  v8 = *v49;
  v9 = v49[1];
  *(v6 + 48) = v94;
  *(v6 + 32) = v9;
  *(v6 + 16) = v8;
  v83 = v7;
  sub_1C5595FD4();
  v53 = sub_1C5596204();
  v51 = v10;
  v54 = sub_1C547070C();
  v55 = &v19;
  v26 = v54;
  v25 = v58;
  v24 = v51;
  v23 = v53;
  v22 = 1;
  v21 = v52;
  v20 = 1;
  v19 = v52;
  sub_1C5595D24();
  v59 = *(v56 + 8);
  v60 = (v56 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v59(v57, v58);
  v11 = [objc_opt_self() secondarySystemFillColor];
  v92 = sub_1C5595E44();
  v64 = sub_1C54EBE4C();
  v61 = v64;
  v63 = MEMORY[0x1E69815C0];
  v65 = MEMORY[0x1E6981568];
  sub_1C5410CE8();
  v66 = &v92;
  sub_1C5595A74();
  sub_1C5410D10();
  sub_1C54EBEF0(v67);
  v70 = sub_1C54EBF58();
  v68 = v70;
  sub_1C544B7B0();
  sub_1C5595B34();
  sub_1C54EC000(v71);
  sub_1C5596244();
  v76 = sub_1C54EC090();
  v72 = v76;
  v77 = sub_1C543F8AC();
  v73 = v77;
  v75 = MEMORY[0x1E6981EF8];
  sub_1C543AE1C();
  sub_1C5595B24();
  sub_1C54EC1C0(v78);
  v81 = sub_1C54EC2CC();
  sub_1C540EFD8(v82, v80, v79);
  sub_1C54EC1C0(v82);
  v91 = v82;
  sub_1C5432498(v50, v89);
  v12 = swift_allocObject();
  v13 = v89[0];
  v14 = v89[1];
  *(v12 + 48) = v90;
  *(v12 + 32) = v14;
  *(v12 + 16) = v13;
  v27[0] = v27;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C5595FD4();
  v15 = sub_1C5596204();
  v26 = v54;
  v25 = v29;
  v24 = v16;
  v23 = v15;
  v22 = 1;
  v21 = 0;
  v20 = 1;
  v19 = 0;
  sub_1C5595D24();
  v59(v32, v29);
  v17 = [objc_opt_self() systemBlueColor];
  v88 = sub_1C5595E44();
  v27[1] = MEMORY[0x1E69815C0];
  v27[2] = MEMORY[0x1E6981568];
  sub_1C5410CE8();
  v27[3] = &v88;
  sub_1C5595A74();
  sub_1C5410D10();
  sub_1C54EBEF0(v35);
  sub_1C544B7B0();
  sub_1C5595B34();
  sub_1C54EC000(v38);
  sub_1C5596244();
  v27[4] = MEMORY[0x1E6981EF8];
  sub_1C543AE1C();
  sub_1C5595B24();
  sub_1C54EC1C0(v41);
  sub_1C540EFD8(v44, v42, v46);
  sub_1C54EC1C0(v44);
  sub_1C54EC384(v48, v44);
  v87[0] = v44;
  sub_1C54EC384(v46, v43);
  v87[1] = v43;
  v86[0] = v42;
  v86[1] = v42;
  v84 = v81;
  v85 = v81;
  sub_1C540F5A0(v87, 2uLL, v86, v28);
  sub_1C54EC1C0(v43);
  sub_1C54EC1C0(v44);
  sub_1C54EC1C0(v46);
  return sub_1C54EC1C0(v48);
}

Swift::Void __swiftcall InviteMessageView.handleInvite(accepted:)(Swift::Bool accepted)
{
  v57 = accepted;
  v59 = sub_1C54E7408;
  v61 = sub_1C54D66AC;
  v63 = sub_1C54D66E0;
  v67 = sub_1C54D6728;
  v69 = sub_1C545C6D4;
  v71 = sub_1C545C6D4;
  v74 = sub_1C54D6734;
  v46 = MEMORY[0x1E69E85E0];
  v47 = &unk_1C55B3FB8;
  v87 = 0;
  v86 = 0;
  v48 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860);
  v49 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v50 = &v31 - v49;
  v56 = sub_1C5594C74();
  v54 = *(v56 - 8);
  v55 = v56 - 8;
  v52 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v57);
  v3 = &v31 - v52;
  v53 = &v31 - v52;
  v87 = v2 & 1;
  v86 = v4;
  v5 = sub_1C5542A40();
  (*(v54 + 16))(v3, v5, v56);
  v58 = 17;
  v65 = 7;
  v60 = swift_allocObject();
  *(v60 + 16) = v57;
  v78 = sub_1C5594C54();
  v79 = sub_1C5596954();
  v70 = swift_allocObject();
  *(v70 + 16) = 0;
  v72 = swift_allocObject();
  *(v72 + 16) = 4;
  v64 = 32;
  v6 = swift_allocObject();
  v7 = v60;
  v62 = v6;
  *(v6 + 16) = v59;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v62;
  v66 = v8;
  *(v8 + 16) = v61;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v66;
  v68 = v10;
  *(v10 + 16) = v63;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v68;
  v75 = v12;
  *(v12 + 16) = v67;
  *(v12 + 24) = v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v73 = sub_1C5596E04();
  v76 = v14;

  v15 = v70;
  v16 = v76;
  *v76 = v69;
  v16[1] = v15;

  v17 = v72;
  v18 = v76;
  v76[2] = v71;
  v18[3] = v17;

  v19 = v75;
  v20 = v76;
  v76[4] = v74;
  v20[5] = v19;
  sub_1C540FCD8();

  if (os_log_type_enabled(v78, v79))
  {
    v21 = v48;
    v39 = sub_1C5596A74();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v38 = 0;
    v40 = sub_1C5419DC0(0);
    v41 = sub_1C5419DC0(v38);
    v42 = &v84;
    v84 = v39;
    v43 = &v83;
    v83 = v40;
    v44 = &v82;
    v82 = v41;
    sub_1C5419E14(0, &v84);
    sub_1C5419E14(1, v42);
    v80 = v69;
    v81 = v70;
    sub_1C5419E28(&v80, v42, v43, v44);
    v45 = v21;
    if (v21)
    {

      __break(1u);
    }

    else
    {
      v80 = v71;
      v81 = v72;
      sub_1C5419E28(&v80, &v84, &v83, &v82);
      v36 = 0;
      v80 = v74;
      v81 = v75;
      sub_1C5419E28(&v80, &v84, &v83, &v82);
      _os_log_impl(&dword_1C5355000, v78, v79, "handleInvite : %{BOOL}d", v39, 8u);
      v35 = 0;
      sub_1C5419E74(v40);
      sub_1C5419E74(v41);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v22 = MEMORY[0x1E69E5920](v78);
  (*(v54 + 8))(v53, v56, v22);
  v33 = 0;
  v23 = sub_1C5596814();
  (*(*(v23 - 8) + 56))(v50, 1);
  v32 = v85;
  sub_1C5432498(v51, v85);
  sub_1C55967E4();
  v31 = sub_1C55967D4();
  v24 = swift_allocObject();
  v25 = v46;
  v26 = v32;
  v34 = v24;
  v24[2] = v31;
  v24[3] = v25;
  memcpy(v24 + 4, v26, 0x28uLL);
  v27 = v33;
  v28 = v50;
  v29 = v47;
  v30 = v34;
  *(v34 + 72) = v57;
  sub_1C54061EC(v27, v27, v28, v29, v30, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C54E2958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = 0u;
  v61 = 0u;
  v62 = a1;
  sub_1C5432498(a1, v57);
  v14 = v58;
  v13 = v59;
  __swift_project_boxed_opaque_existential_0(v57, v58);
  v55 = (*(v13 + 80))(v14);
  v56 = v2;
  sub_1C54141E8();
  v51 = sub_1C5595A04();
  v52 = v3;
  v53 = v4;
  v54 = v5;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  __swift_destroy_boxed_opaque_existential_0(v57);
  sub_1C5595814();
  v47 = v51;
  v48 = v15;
  v49 = v16 & 1;
  v50 = v17;
  v43 = sub_1C55959C4();
  v44 = v6;
  v45 = v7;
  v46 = v8;
  v18 = v6;
  v19 = v7;
  v20 = v8;

  sub_1C5412EA0(v51, v15, v16 & 1);

  sub_1C5595EA4();
  v39 = v43;
  v40 = v18;
  v41 = v19 & 1;
  v42 = v20;
  v35 = sub_1C5595984();
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v21 = v9;
  v22 = v10;
  v23 = v11;

  sub_1C5412EA0(v43, v18, v19 & 1);

  v32[0] = v35;
  v32[1] = v21;
  v33 = v22 & 1;
  v34 = v23;
  v28 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v32, MEMORY[0x1E6981148], &v60);
  sub_1C5414260(v32);
  v24 = v60;
  v25 = v61;
  v26 = *(&v61 + 1);
  sub_1C54130AC(v60, *(&v60 + 1), v61 & 1);
  sub_1C5594CF4();
  v29 = v24;
  v30 = v25 & 1;
  v31 = v26;
  sub_1C540EFD8(&v29, v28, a2);
  sub_1C5414260(&v29);
  return sub_1C5414260(&v60);
}

uint64_t sub_1C54E2CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = 0u;
  v61 = 0u;
  v62 = a1;
  sub_1C5432498(a1, v57);
  v14 = v58;
  v13 = v59;
  __swift_project_boxed_opaque_existential_0(v57, v58);
  v55 = (*(v13 + 56))(v14);
  v56 = v2;
  sub_1C54141E8();
  v51 = sub_1C5595A04();
  v52 = v3;
  v53 = v4;
  v54 = v5;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  __swift_destroy_boxed_opaque_existential_0(v57);
  sub_1C5595814();
  v47 = v51;
  v48 = v15;
  v49 = v16 & 1;
  v50 = v17;
  v43 = sub_1C55959C4();
  v44 = v6;
  v45 = v7;
  v46 = v8;
  v18 = v6;
  v19 = v7;
  v20 = v8;

  sub_1C5412EA0(v51, v15, v16 & 1);

  sub_1C5595E84();
  v39 = v43;
  v40 = v18;
  v41 = v19 & 1;
  v42 = v20;
  v35 = sub_1C5595984();
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v21 = v9;
  v22 = v10;
  v23 = v11;

  sub_1C5412EA0(v43, v18, v19 & 1);

  v32[0] = v35;
  v32[1] = v21;
  v33 = v22 & 1;
  v34 = v23;
  v28 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v32, MEMORY[0x1E6981148], &v60);
  sub_1C5414260(v32);
  v24 = v60;
  v25 = v61;
  v26 = *(&v61 + 1);
  sub_1C54130AC(v60, *(&v60 + 1), v61 & 1);
  sub_1C5594CF4();
  v29 = v24;
  v30 = v25 & 1;
  v31 = v26;
  sub_1C540EFD8(&v29, v28, a2);
  sub_1C5414260(&v29);
  return sub_1C5414260(&v60);
}

uint64_t sub_1C54E2FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v12 = a1;
  v15 = sub_1C54EC5A0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
  v18 = *(v27 - 8);
  v19 = v27 - 8;
  v7 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v24 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v6 - v7);
  v26 = &v6 - v8;
  v42 = &v6 - v8;
  v31 = sub_1C55960F4();
  v16 = *(v31 - 8);
  v17 = v31 - 8;
  v10 = *(v16 + 64);
  v9 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v12);
  v25 = &v6 - v9;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v30 = &v6 - v11;
  v41 = &v6 - v11;
  v40 = v4;
  sub_1C55960E4();
  v20 = sub_1C54EBAF0();
  sub_1C540EFD8(v25, v31, v30);
  v33 = *(v16 + 8);
  v32 = v16 + 8;
  v33(v25, v31);
  v13 = &v34;
  v35 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DCC8);
  sub_1C54EC5A8();
  sub_1C5594F74();
  v21 = sub_1C54EC630();
  sub_1C540EFD8(v24, v27, v26);
  v29 = *(v18 + 8);
  v28 = v18 + 8;
  v29(v24, v27);
  (*(v16 + 16))(v25, v30, v31);
  v23 = v39;
  v39[0] = v25;
  (*(v18 + 16))(v24, v26, v27);
  v39[1] = v24;
  v38[0] = v31;
  v38[1] = v27;
  v36 = v20;
  v37 = v21;
  sub_1C540F5A0(v23, 2uLL, v38, v22);
  v29(v24, v27);
  v33(v25, v31);
  v29(v26, v27);
  return (v33)(v30, v31);
}

uint64_t sub_1C54E33EC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA00);
    v13 = a2 + *(v8 + 44);
    v14 = a1 + *(v8 + 44);
    v9 = sub_1C55960F4();
    (*(*(v9 - 8) + 32))(v13, v14);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA08);
    v16 = v13 + *(v10 + 48);
    v15 = v14 + *(v10 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA10);
    (*(*(v11 - 8) + 32))(v16, v15);
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA28);
    v21 = a2 + *(v2 + 44);
    v22 = a1 + *(v2 + 44);
    v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8) - 8) + 32);
    (v23)(v21, v22);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA80);
    memcpy((v21 + *(v24 + 36)), (v22 + *(v24 + 36)), 0x70uLL);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30);
    v3 = v21 + *(v26 + 36);
    v4 = v22 + *(v26 + 36);
    *v3 = *v4;
    *(v3 + 8) = *(v4 + 8);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA38);
    v19 = (v21 + *(v25 + 36));
    v20 = (v22 + *(v25 + 36));
    *v19 = *v20;
    v27 = sub_1C5595244();
    v18 = v19 + *(v27 + 20);
    v17 = v20 + *(v27 + 20);
    v28 = sub_1C55953F4();
    v29 = *(*(v28 - 8) + 32);
    v29(v18, v17);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA88);
    *(v19 + *(v31 + 36)) = *(v20 + *(v31 + 36));
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA90);
    *(v21 + *(v34 + 36)) = *(v22 + *(v34 + 36));
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA40);
    v33 = v21 + *(v5 + 48);
    v35 = v22 + *(v5 + 48);
    v23();
    memcpy((v33 + *(v24 + 36)), (v35 + *(v24 + 36)), 0x70uLL);
    v6 = v33 + *(v26 + 36);
    v7 = v35 + *(v26 + 36);
    *v6 = *v7;
    *(v6 + 8) = *(v7 + 8);
    v30 = (v33 + *(v25 + 36));
    v32 = (v35 + *(v25 + 36));
    *v30 = *v32;
    (v29)(v30 + *(v27 + 20), v32 + *(v27 + 20), v28);
    *(v30 + *(v31 + 36)) = *(v32 + *(v31 + 36));
    *(v33 + *(v34 + 36)) = *(v35 + *(v34 + 36));
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

unint64_t sub_1C54E3908()
{
  v2 = qword_1EC15DB20;
  if (!qword_1EC15DB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DB18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DB20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54E3990(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA28) + 44);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8) - 8) + 8);
  v5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA38);
  v3 = *(v6 + 36);
  v7 = sub_1C5595244();
  v4 = *(v7 + 20);
  v9 = sub_1C55953F4();
  v10 = *(*(v9 - 8) + 8);
  v10(a1 + v2 + v3 + v4);
  v8 = a1 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA40) + 48);
  v5();

  (v10)(v8 + *(v6 + 36) + *(v7 + 20), v9);
  return a1;
}

uint64_t sub_1C54E3B68(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA28) + 44);
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8) - 8) + 16);
  v15();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA80);
  memcpy((a2 + v7 + *(v16 + 36)), (a1 + v7 + *(v16 + 36)), 0x70uLL);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30);
  v9 = *(v17 + 36);
  v11 = (a1 + v7 + v9);
  v10 = *v11;

  v2 = a2 + v7 + v9;
  *v2 = v10;
  *(v2 + 8) = *(v11 + 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA38);
  v13 = (a1 + v7 + *(v21 + 36));
  v14 = (a2 + v7 + *(v21 + 36));
  *v14 = *v13;
  v18 = sub_1C5595244();
  v12 = *(v18 + 20);
  v22 = sub_1C55953F4();
  v23 = *(*(v22 - 8) + 16);
  v23(&v14[v12], &v13[v12]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA88);
  *&v14[*(v24 + 36)] = *&v13[*(v24 + 36)];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA90);
  *(a2 + v7 + *(v27 + 36)) = *(a1 + v7 + *(v27 + 36));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA40);
  v29 = a2 + v7 + *(v3 + 48);
  v28 = a1 + v7 + *(v3 + 48);
  v15();
  memcpy((v29 + *(v16 + 36)), (v28 + *(v16 + 36)), 0x70uLL);
  v19 = *(v17 + 36);
  v20 = *(v28 + v19);

  v4 = v29 + v19;
  *v4 = v20;
  *(v4 + 8) = *(v28 + v19 + 8);
  v5 = *(v21 + 36);
  v25 = v28 + v5;
  v26 = (v29 + v5);
  *v26 = *(v28 + v5);
  (v23)(v29 + v5 + *(v18 + 20), v28 + v5 + *(v18 + 20), v22);
  result = a2;
  *(v26 + *(v24 + 36)) = *(v25 + *(v24 + 36));
  *(v29 + *(v27 + 36)) = *(v28 + *(v27 + 36));
  return result;
}

uint64_t sub_1C54E3F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x62uLL);
  memset(v50, 0, sizeof(v50));
  v54 = a1;
  sub_1C5595344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DCE0);
  sub_1C54EC6C0();
  sub_1C5596024();
  memcpy(__dst, v52, sizeof(__dst));
  memcpy(v51, __dst, 0x62uLL);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DCF0);
  sub_1C54EC748();
  sub_1C540EFD8(v51, v23, __b);
  sub_1C54EC7D0(v51);
  sub_1C5432498(a1, v47);
  v12 = v48;
  v11 = v49;
  __swift_project_boxed_opaque_existential_0(v47, v48);
  (*(v11 + 200))(v12);
  v13 = sub_1C54E47EC();
  v14 = v2;
  __swift_destroy_boxed_opaque_existential_0(v47);
  v45 = v13;
  v46 = v14;
  sub_1C54141E8();
  v41 = sub_1C5595A04();
  v42 = v3;
  v43 = v4;
  v44 = v5;
  v15 = v41;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  sub_1C5595914();
  v37 = v15;
  v38 = v16;
  v39 = v17 & 1;
  v40 = v18;
  v33 = sub_1C55959C4();
  v34 = v6;
  v35 = v7;
  v36 = v8;
  v19 = v33;
  v20 = v6;
  v21 = v7;
  v22 = v8;

  sub_1C5412EA0(v15, v16, v17 & 1);

  v30[0] = v19;
  v30[1] = v20;
  v31 = v21 & 1;
  v32 = v22;
  v24 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v30, MEMORY[0x1E6981148], v50);
  sub_1C5414260(v30);
  sub_1C54EC840(__b, v28);
  v29[0] = v28;
  sub_1C54142A8(v50, v27);
  v29[1] = v27;
  v26[0] = v23;
  v26[1] = v24;
  sub_1C540F5A0(v29, 2uLL, v26, a2);
  sub_1C5414260(v27);
  sub_1C54EC7D0(v28);
  sub_1C5414260(v50);
  return sub_1C54EC7D0(__b);
}

uint64_t sub_1C54E42EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v61, 0, sizeof(v61));
  v62 = a1;
  sub_1C5432498(a1, v58);
  v12 = v59;
  v11 = v60;
  __swift_project_boxed_opaque_existential_0(v58, v59);
  (*(v11 + 200))(v12);
  v13 = sub_1C54E4670();
  v14 = v2;
  __swift_destroy_boxed_opaque_existential_0(v58);
  v56 = v13;
  v57 = v14;
  sub_1C54141E8();
  v52 = sub_1C5595A04();
  v53 = v3;
  v54 = v4;
  v55 = v5;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  sub_1C5595914();
  v48 = v52;
  v49 = v15;
  v50 = v16 & 1;
  v51 = v17;
  v44 = sub_1C55959C4();
  v45 = v6;
  v46 = v7;
  v47 = v8;
  v18 = v6;
  v19 = v7;
  v20 = v8;

  sub_1C5412EA0(v52, v15, v16 & 1);

  v41[0] = v44;
  v41[1] = v18;
  v42 = v19 & 1;
  v43 = v20;
  v24 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v41, MEMORY[0x1E6981148], v61);
  sub_1C5414260(v41);
  sub_1C5432498(a1, v34);
  v22 = v35;
  v21 = v36;
  __swift_project_boxed_opaque_existential_0(v34, v35);
  v9 = (*(v21 + 200))(v22);
  InviteMessageView.footerImage(status:)(v9, v37);
  __swift_destroy_boxed_opaque_existential_0(v34);
  v31[0] = v37[0];
  v31[1] = v37[1];
  v31[2] = v37[2];
  v31[3] = v37[3];
  v31[4] = v37[4];
  v32 = v38;
  v33 = v39 & 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB98);
  sub_1C54E5398();
  sub_1C540EFD8(v31, v25, v40);
  sub_1C54E5440(v31);
  sub_1C54142A8(v61, v29);
  v30[0] = v29;
  sub_1C54EC96C(v40, v28);
  v30[1] = v28;
  v27[0] = v24;
  v27[1] = v25;
  sub_1C540F5A0(v30, 2uLL, v27, a2);
  sub_1C54E5440(v28);
  sub_1C5414260(v29);
  sub_1C54E5440(v40);
  return sub_1C5414260(v61);
}

uint64_t sub_1C54E4670()
{
  type metadata accessor for Status();
  sub_1C5462A94();
  if (sub_1C55964D4())
  {
    sub_1C55965F4();
    v2 = sub_1C54637B4();

    return v2;
  }

  else if (sub_1C55964D4())
  {
    sub_1C55965F4();
    v1 = sub_1C54637B4();

    return v1;
  }

  else
  {
    return sub_1C55965F4();
  }
}

uint64_t sub_1C54E47EC()
{
  type metadata accessor for Status();
  sub_1C5462A94();
  if (sub_1C55964D4())
  {
    sub_1C55965F4();
    v2 = sub_1C54637B4();

    return v2;
  }

  else if (sub_1C55964D4())
  {
    sub_1C55965F4();
    v1 = sub_1C54637B4();

    return v1;
  }

  else
  {
    return sub_1C55965F4();
  }
}

uint64_t sub_1C54E4968@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v9 = 0;
  v11 = sub_1C54E56BC;
  v35 = 0;
  v34 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA58);
  v14 = *(v23 - 8);
  v15 = v23 - 8;
  v4 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v20 = &v4 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v4);
  v22 = &v4 - v5;
  v35 = &v4 - v5;
  v27 = sub_1C55960F4();
  v12 = *(v27 - 8);
  v13 = v27 - 8;
  v7 = *(v12 + 64);
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v27);
  v21 = &v4 - v6;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v4 - v8;
  v34 = &v4 - v8;
  sub_1C55960E4();
  v16 = sub_1C54EBAF0();
  sub_1C540EFD8(v21, v27, v26);
  v29 = *(v12 + 8);
  v28 = v12 + 8;
  v29(v21, v27);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DC68);
  sub_1C54EBB70();
  sub_1C5594F74();
  v17 = sub_1C54EBBF8();
  sub_1C540EFD8(v20, v23, v22);
  v25 = *(v14 + 8);
  v24 = v14 + 8;
  v25(v20, v23);
  (*(v12 + 16))(v21, v26, v27);
  v19 = v33;
  v33[0] = v21;
  (*(v14 + 16))(v20, v22, v23);
  v33[1] = v20;
  v32[0] = v27;
  v32[1] = v23;
  v30 = v16;
  v31 = v17;
  sub_1C540F5A0(v19, 2uLL, v32, v18);
  v25(v20, v23);
  v29(v21, v27);
  v25(v22, v23);
  return (v29)(v26, v27);
}

unint64_t sub_1C54E4D24()
{
  v2 = qword_1EC15DB30;
  if (!qword_1EC15DB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DB28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54E4DAC()
{
  v2 = qword_1EC15DB40;
  if (!qword_1EC15DB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DB38);
    sub_1C543FA44();
    sub_1C54E4E54();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DB40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54E4E54()
{
  v2 = qword_1EC15DB48;
  if (!qword_1EC15DB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DB50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DB48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54E4EDC()
{
  v2 = qword_1EC15DB68;
  if (!qword_1EC15DB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DB58);
    sub_1C54E4F84();
    sub_1C54E4DAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DB68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54E4F84()
{
  v2 = qword_1EC15DB70;
  if (!qword_1EC15DB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DB78);
    sub_1C54E502C();
    sub_1C5413DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DB70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54E502C()
{
  v2 = qword_1EC15DB80;
  if (!qword_1EC15DB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DB88);
    sub_1C54E4E54();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DB80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54E50D0()
{
  v2 = qword_1EC15DB90;
  if (!qword_1EC15DB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DB60);
    sub_1C54E4DAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DB90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54E51BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C54E5220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
    return sub_1C54E5334(a1, a2, a3, a4, a5, a6 & 1);
  }

  else
  {
    return sub_1C54E52A4();
  }
}

uint64_t sub_1C54E52A4()
{
}

uint64_t sub_1C54E5334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1C54E5398()
{
  v2 = qword_1EC15DBA0;
  if (!qword_1EC15DBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DB98);
    sub_1C54E4EDC();
    sub_1C54E50D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DBA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54E548C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
    return sub_1C54E51BC(a1, a2, a3, a4, a5, a6 & 1);
  }

  else
  {
    return sub_1C54E5510();
  }
}

uint64_t sub_1C54E5510()
{
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1C54E55A0()
{
}

unint64_t sub_1C54E5644()
{
  v2 = qword_1EC15DBA8;
  if (!qword_1EC15DBA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DBA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54E56BC@<X0>(uint64_t a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  memset(v41, 0, sizeof(v41));
  sub_1C5595344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DC80);
  sub_1C54EBC80();
  sub_1C5596024();
  memcpy(__dst, v43, sizeof(__dst));
  memcpy(v42, __dst, sizeof(v42));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DC90);
  sub_1C54EBD08();
  sub_1C540EFD8(v42, v17, __b);
  sub_1C54EB38C(v42);
  sub_1C55965F4();
  v9 = sub_1C54637B4();
  v10 = v1;

  v39 = v9;
  v40 = v10;
  sub_1C54141E8();
  v35 = sub_1C5595A04();
  v36 = v2;
  v37 = v3;
  v38 = v4;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  sub_1C5595914();
  v31 = v35;
  v32 = v11;
  v33 = v12 & 1;
  v34 = v13;
  v27 = sub_1C55959C4();
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v14 = v5;
  v15 = v6;
  v16 = v7;

  sub_1C5412EA0(v35, v11, v12 & 1);

  v24[0] = v27;
  v24[1] = v14;
  v25 = v15 & 1;
  v26 = v16;
  v18 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v24, MEMORY[0x1E6981148], v41);
  sub_1C5414260(v24);
  sub_1C54EB410(__b, v22);
  v23[0] = v22;
  sub_1C54142A8(v41, v21);
  v23[1] = v21;
  v20[0] = v17;
  v20[1] = v18;
  sub_1C540F5A0(v23, 2uLL, v20, a1);
  sub_1C5414260(v21);
  sub_1C54EB38C(v22);
  sub_1C5414260(v41);
  return sub_1C54EB38C(__b);
}

uint64_t sub_1C54E5A0C@<X0>(uint64_t a1@<X8>)
{
  memset(v44, 0, sizeof(v44));
  sub_1C55965F4();
  v10 = sub_1C54637B4();
  v11 = v1;

  v42 = v10;
  v43 = v11;
  sub_1C54141E8();
  v38 = sub_1C5595A04();
  v39 = v2;
  v40 = v3;
  v41 = v4;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  sub_1C5595914();
  v34 = v38;
  v35 = v12;
  v36 = v13 & 1;
  v37 = v14;
  v30 = sub_1C55959C4();
  v31 = v5;
  v32 = v6;
  v33 = v7;
  v15 = v5;
  v16 = v6;
  v17 = v7;

  sub_1C5412EA0(v38, v12, v13 & 1);

  v27[0] = v30;
  v27[1] = v15;
  v28 = v16 & 1;
  v29 = v17;
  v18 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v27, MEMORY[0x1E6981148], v44);
  sub_1C5414260(v27);
  sub_1C55965F4();
  v25[8] = sub_1C5595EF4();
  v8 = [objc_opt_self() systemRedColor];
  sub_1C5595E44();
  sub_1C5595B94();

  sub_1C5410D10();
  v25[5] = v25[9];
  v25[6] = v25[10];
  v25[7] = v25[11];
  sub_1C5595914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C600);
  sub_1C543FA44();
  sub_1C5595CD4();

  sub_1C543FC24();
  v25[0] = v25[12];
  v25[1] = v25[13];
  v25[2] = v25[14];
  v25[3] = v25[15];
  v25[4] = v25[16];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DB38);
  sub_1C54E4DAC();
  sub_1C540EFD8(v25, v19, v26);
  sub_1C54E55A0();
  sub_1C54142A8(v44, v23);
  v24[0] = v23;
  sub_1C54EBD90(v26, v22);
  v24[1] = v22;
  v21[0] = v18;
  v21[1] = v19;
  sub_1C540F5A0(v24, 2uLL, v21, a1);
  sub_1C54E55A0();
  sub_1C5414260(v23);
  sub_1C54E55A0();
  return sub_1C5414260(v44);
}

uint64_t InviteMessageView.evaluateManateeState(controller:)(void *a1)
{
  v92 = a1;
  v127 = *MEMORY[0x1E69E9840];
  v107 = 0;
  v119 = 0;
  v118 = 0;
  v91 = 0;
  v116 = 0;
  v102 = sub_1C5594C74();
  v93 = v102;
  v94 = *(v102 - 8);
  v101 = v94;
  v95 = v94;
  v97 = *(v94 + 64);
  v1 = MEMORY[0x1EEE9AC00](v92);
  v99 = (v97 + 15) & 0xFFFFFFFFFFFFFFF0;
  v96 = &v21 - v99;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v98 = &v21 - v99;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v99;
  v100 = &v21 - v99;
  v119 = v3;
  v118 = v5;
  v6 = sub_1C5542A40();
  v103 = *(v101 + 16);
  v104 = (v101 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v103(v4, v6, v102);
  v110 = sub_1C5594C54();
  v105 = v110;
  v109 = sub_1C5596934();
  v106 = v109;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v111 = sub_1C5596E04();
  if (os_log_type_enabled(v110, v109))
  {
    v7 = v91;
    v82 = sub_1C5596A74();
    v78 = v82;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v80 = 0;
    v83 = sub_1C5419DC0(0);
    v81 = v83;
    v84 = sub_1C5419DC0(v80);
    v113[0] = v82;
    v121 = v83;
    v120 = v84;
    v85 = 0;
    v86 = v113;
    sub_1C5419E14(0, v113);
    sub_1C5419E14(v85, v86);
    v112 = v111;
    v87 = &v21;
    MEMORY[0x1EEE9AC00](&v21);
    v88 = &v21 - 6;
    *(&v21 - 4) = v8;
    *(&v21 - 3) = &v121;
    *(&v21 - 2) = &v120;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v90 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v105, v106, "Evaluating Manatee availability", v78, 2u);
      v76 = 0;
      sub_1C5419E74(v81);
      sub_1C5419E74(v84);
      sub_1C5596A54();

      v77 = v90;
    }
  }

  else
  {

    v77 = v91;
  }

  v71 = v77;

  v72 = *(v95 + 8);
  v73 = (v95 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v72(v100, v93);
  v126 = 0;
  v117 = 0;
  v75 = [v92 isManateeAvailable_];
  v74 = v117;
  v9 = v117;
  v10 = v126;
  v126 = v74;

  if (v75)
  {
    v11 = v98;
    v12 = sub_1C5542A40();
    v103(v11, v12, v93);
    v69 = sub_1C5594C54();
    v66 = v69;
    v68 = sub_1C5596934();
    v67 = v68;
    v70 = sub_1C5596E04();
    if (os_log_type_enabled(v69, v68))
    {
      v13 = v71;
      v57 = sub_1C5596A74();
      v53 = v57;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v55 = 0;
      v58 = sub_1C5419DC0(0);
      v56 = v58;
      v59 = sub_1C5419DC0(v55);
      v114[0] = v57;
      v123 = v58;
      v122 = v59;
      v60 = 0;
      v61 = v114;
      sub_1C5419E14(0, v114);
      sub_1C5419E14(v60, v61);
      v113[1] = v70;
      v62 = &v21;
      MEMORY[0x1EEE9AC00](&v21);
      v63 = &v21 - 6;
      *(&v21 - 4) = v14;
      *(&v21 - 3) = &v123;
      *(&v21 - 2) = &v122;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v65 = v13;
      if (v13)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v66, v67, "Manatee available", v53, 2u);
        v51 = 0;
        sub_1C5419E74(v56);
        sub_1C5419E74(v59);
        sub_1C5596A54();

        v52 = v65;
      }
    }

    else
    {

      v52 = v71;
    }

    v48 = v52;

    v72(v98, v93);
    v49 = 1;
    v50 = v48;
  }

  else
  {
    v38 = v126;
    v41 = sub_1C5594874();
    v39 = v41;

    swift_willThrow();
    v16 = v96;
    v43 = 0;
    v40 = 0;
    v17 = v41;
    v116 = v41;
    v18 = sub_1C5542A40();
    v103(v16, v18, v93);
    v46 = sub_1C5594C54();
    v42 = v46;
    v45 = sub_1C5596954();
    v44 = v45;
    v47 = sub_1C5596E04();
    if (os_log_type_enabled(v46, v45))
    {
      v19 = v40;
      v29 = sub_1C5596A74();
      v25 = v29;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v27 = 0;
      v30 = sub_1C5419DC0(0);
      v28 = v30;
      v31 = sub_1C5419DC0(v27);
      v115 = v29;
      v125 = v30;
      v124 = v31;
      v32 = 0;
      v33 = &v115;
      sub_1C5419E14(0, &v115);
      sub_1C5419E14(v32, v33);
      v114[1] = v47;
      v34 = &v21;
      MEMORY[0x1EEE9AC00](&v21);
      v35 = &v21 - 6;
      *(&v21 - 4) = v20;
      *(&v21 - 3) = &v125;
      *(&v21 - 2) = &v124;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();
      v37 = v19;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1C5355000, v42, v44, "Manatee unavailable", v25, 2u);
        v23 = 0;
        sub_1C5419E74(v28);
        sub_1C5419E74(v31);
        sub_1C5596A54();

        v24 = v37;
      }
    }

    else
    {

      v24 = v40;
    }

    v22 = v24;

    v72(v96, v93);
    v49 = 0;
    v50 = v22;
  }

  return v49;
}

uint64_t InviteMessageView.doDefaultBehaviour(uuid:)(uint64_t a1)
{
  v51 = a1;
  v61 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v42 = 0;
  v43 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD68) - 8) + 64);
  v1 = MEMORY[0x1EEE9AC00](0);
  v45 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = v11 - v45;
  MEMORY[0x1EEE9AC00](v1);
  v46 = v11 - v45;
  v73 = v11 - v45;
  v47 = sub_1C5594994();
  v48 = *(v47 - 8);
  v49 = v48;
  MEMORY[0x1EEE9AC00](v61);
  v50 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1C5594C74();
  v52 = v58;
  v53 = *(v58 - 8);
  v57 = v53;
  v54 = v53;
  v55 = *(v53 + 64);
  v3 = MEMORY[0x1EEE9AC00](v51);
  v4 = v11 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v4;
  v72 = v3;
  v71 = v5;
  v6 = sub_1C5542A40();
  (*(v57 + 16))(v4, v6, v58);
  v63 = sub_1C5594C54();
  v59 = v63;
  v62 = sub_1C5596954();
  v60 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v64 = sub_1C5596E04();
  if (os_log_type_enabled(v63, v62))
  {
    v7 = v42;
    v33 = sub_1C5596A74();
    v29 = v33;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v31 = 0;
    v34 = sub_1C5419DC0(0);
    v32 = v34;
    v35 = sub_1C5419DC0(v31);
    v68 = v33;
    v67 = v34;
    v66 = v35;
    v36 = 0;
    v37 = &v68;
    sub_1C5419E14(0, &v68);
    sub_1C5419E14(v36, v37);
    v65 = v64;
    v38 = v11;
    MEMORY[0x1EEE9AC00](v11);
    v39 = &v11[-6];
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v41 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v59, v60, "open default accept flow", v29, 2u);
      v27 = 0;
      sub_1C5419E74(v32);
      sub_1C5419E74(v35);
      sub_1C5596A54();

      v28 = v41;
    }
  }

  else
  {

    v28 = v42;
  }

  v8 = v50;

  (*(v54 + 8))(v56, v52);
  v20 = objc_opt_self();
  (*(v49 + 16))(v8, v51, v47);
  v21 = sub_1C5594954();
  (*(v49 + 8))(v50, v47);
  v22 = [v20 stringForCustodianMessagesURLWithUUID_];

  v24 = sub_1C5596574();
  v25 = v9;
  v23 = v9;
  v69 = v24;
  v70 = v9;

  sub_1C55948A4();
  v26 = [objc_opt_self() defaultWorkspace];
  if (v26)
  {
    v19 = v26;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v16 = v19;
  sub_1C54EA278(v46, v44);
  v17 = sub_1C55948B4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v44, 1) == 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = sub_1C5594884();
    (*(v18 + 8))(v44, v17);
    v15 = v14;
  }

  v13 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D7F8);
  sub_1C5596E04();
  v11[1] = MEMORY[0x1E69E7CA0] + 8;
  v11[0] = MEMORY[0x1E69E6158];
  v11[2] = MEMORY[0x1E69E6168];
  v11[3] = sub_1C5596454();
  v12 = sub_1C5596434();

  [v16 openSensitiveURL:v13 withOptions:v12];

  sub_1C54EA3A0(v46);
}

uint64_t sub_1C54E7414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 433) = a5 & 1;
  *(v5 + 288) = a4;
  *(v5 + 184) = v5;
  *(v5 + 192) = 0;
  *(v5 + 432) = 0;
  *(v5 + 232) = 0;
  *(v5 + 272) = 0;
  *(v5 + 280) = 0;
  v6 = sub_1C5594C74();
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DC40);
  *(v5 + 336) = swift_task_alloc();
  v7 = sub_1C5594994();
  *(v5 + 344) = v7;
  *(v5 + 352) = *(v7 - 8);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 192) = a4;
  *(v5 + 432) = a5 & 1;
  sub_1C55967E4();
  *(v5 + 376) = sub_1C55967D4();
  v12 = sub_1C55967A4();
  *(v5 + 384) = v12;
  *(v5 + 392) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C54E7680, v12, v8);
}

uint64_t sub_1C54E7680()
{
  v56 = v0[44];
  v58 = v0[43];
  v57 = v0[42];
  v1 = v0[36];
  v0[23] = v0;
  sub_1C5432498(v1, (v0 + 18));
  v55 = v0[21];
  v54 = v0[22];
  __swift_project_boxed_opaque_existential_0(v0 + 18, v55);
  (*(v54 + 176))(v55);
  sub_1C5594934();

  __swift_destroy_boxed_opaque_existential_0((v0 + 18));
  if ((*(v56 + 48))(v57, 1, v58) == 1)
  {
    sub_1C54EB940(*(v53 + 336));
LABEL_19:

    v11 = *(*(v53 + 184) + 8);

    return v11();
  }

  (*(*(v53 + 352) + 32))(*(v53 + 368), *(v53 + 336), *(v53 + 344));
  sub_1C54EB9E8();
  v52 = [objc_opt_self() sharedInstance];
  if (!v52)
  {
    return sub_1C5596C94();
  }

  v50 = [v52 contextForPrimaryAccount];
  MEMORY[0x1E69E5920](v52);
  v51 = sub_1C54E8D18(v50);
  *(v53 + 400) = v51;
  if (!v51)
  {
    v4 = *(v53 + 328);
    v46 = *(v53 + 296);
    v45 = *(v53 + 304);
    v5 = sub_1C5542A40();
    (*(v45 + 16))(v4, v5, v46);
    v48 = sub_1C5594C54();
    v47 = sub_1C5596954();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v49 = sub_1C5596E04();
    if (os_log_type_enabled(v48, v47))
    {
      v18 = sub_1C5596A74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v19 = sub_1C5419DC0(0);
      v20 = sub_1C5419DC0(0);
      *(v53 + 200) = v18;
      *(v53 + 208) = v19;
      *(v53 + 216) = v20;
      sub_1C5419E14(0, (v53 + 200));
      sub_1C5419E14(0, (v53 + 200));
      *(v53 + 224) = v49;
      v21 = swift_task_alloc();
      v21[2] = v53 + 200;
      v21[3] = v53 + 208;
      v21[4] = v53 + 216;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, v48, v47, "Failed to init CDPStateController", v18, 2u);
      sub_1C5419E74(v19);
      sub_1C5419E74(v20);
      sub_1C5596A54();
    }

    v16 = *(v53 + 368);
    v17 = *(v53 + 344);
    v13 = *(v53 + 328);
    v14 = *(v53 + 296);
    v15 = *(v53 + 352);
    v12 = *(v53 + 304);
    v10 = MEMORY[0x1E69E5920](v48);
    (*(v12 + 8))(v13, v14, v10);
    InviteMessageView.doDefaultBehaviour(uuid:)(v16);
    (*(v15 + 8))(v16, v17);
    goto LABEL_19;
  }

  *(v53 + 232) = v51;
  v3 = InviteMessageView.evaluateManateeState(controller:)(v51);
  if ((v3 & 1) == 0)
  {
    v6 = *(v53 + 320);
    v33 = *(v53 + 296);
    v32 = *(v53 + 304);
    v7 = sub_1C5542A40();
    (*(v32 + 16))(v6, v7, v33);
    oslog = sub_1C5594C54();
    v34 = sub_1C5596954();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v36 = sub_1C5596E04();
    if (os_log_type_enabled(oslog, v34))
    {
      buf = sub_1C5596A74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v29 = sub_1C5419DC0(0);
      v30 = sub_1C5419DC0(0);
      *(v53 + 240) = buf;
      *(v53 + 248) = v29;
      *(v53 + 256) = v30;
      sub_1C5419E14(0, (v53 + 240));
      sub_1C5419E14(0, (v53 + 240));
      *(v53 + 264) = v36;
      v31 = swift_task_alloc();
      v31[2] = v53 + 240;
      v31[3] = v53 + 248;
      v31[4] = v53 + 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, oslog, v34, "Manatee not available,Inline accept unavailable", buf, 2u);
      sub_1C5419E74(v29);
      sub_1C5419E74(v30);
      sub_1C5596A54();
    }

    v26 = *(v53 + 368);
    v27 = *(v53 + 344);
    v23 = *(v53 + 320);
    v24 = *(v53 + 296);
    v25 = *(v53 + 352);
    v22 = *(v53 + 304);
    v8 = MEMORY[0x1E69E5920](oslog);
    (*(v22 + 8))(v23, v24, v8);
    InviteMessageView.doDefaultBehaviour(uuid:)(v26);
    v9 = MEMORY[0x1E69E5920](v51);
    (*(v25 + 8))(v26, v27, v9);
    goto LABEL_19;
  }

  v39 = *(v53 + 368);
  v40 = *(v53 + 360);
  v38 = *(v53 + 344);
  v37 = *(v53 + 352);
  sub_1C54EBA4C();
  (*(v37 + 16))(v40, v39, v38);
  v43 = sub_1C54E8D58(v40);
  *(v53 + 408) = v43;
  *(v53 + 272) = v43;
  sub_1C5404B78();
  v44 = sub_1C5404B48();
  *(v53 + 416) = v44;
  *(v53 + 16) = *(v53 + 184);
  *(v53 + 56) = v41;
  *(v53 + 24) = sub_1C54E8250;
  v42 = swift_continuation_init();
  *(v53 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DC58);
  *(v53 + 112) = v42;
  *(v53 + 80) = MEMORY[0x1E69E9820];
  *(v53 + 88) = 1107296256;
  *(v53 + 92) = 0;
  *(v53 + 96) = sub_1C54E8DA4;
  *(v53 + 104) = &block_descriptor_13;
  [v44 respondToCustodianRequestWithResponse:v43 completion:?];

  return MEMORY[0x1EEE6DEC8](v53 + 16);
}

uint64_t sub_1C54E8250()
{
  v6 = *v0;
  v6[23] = *v0;
  v1 = v6[6];
  v6[53] = v1;
  if (v1)
  {
    v2 = v6[49];
    v3 = v6[48];
    v4 = sub_1C54E8550;
  }

  else
  {
    v2 = v6[49];
    v3 = v6[48];
    v4 = sub_1C54E83B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1C54E83B8()
{
  v1 = v0[52];
  v0[23] = v0;
  MEMORY[0x1E69E5920](v1);
  v5 = v0[50];
  v7 = v0[46];
  v6 = v0[44];
  v8 = v0[43];
  MEMORY[0x1E69E5920](v0[51]);
  v2 = MEMORY[0x1E69E5920](v5);
  (*(v6 + 8))(v7, v8, v2);

  v3 = *(v0[23] + 8);

  return v3();
}

uint64_t sub_1C54E8550()
{
  v40 = v0;
  v26 = v0[53];
  v23 = v0[52];
  v22 = v0[39];
  v24 = v0[38];
  v25 = v0[37];
  v0[23] = v0;
  swift_willThrow();
  MEMORY[0x1E69E5920](v23);
  v1 = v26;
  v0[35] = v26;
  v2 = sub_1C5542A40();
  (*(v24 + 16))(v22, v2, v25);
  v3 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  v33 = sub_1C5594C54();
  v34 = sub_1C5596954();
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1C54D2B6C;
  *(v28 + 24) = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1C5473EFC;
  *(v31 + 24) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  sub_1C5596E04();
  v32 = v4;

  *v32 = sub_1C545C6D4;
  v32[1] = v29;

  v32[2] = sub_1C545C6D4;
  v32[3] = v30;

  v32[4] = sub_1C5473FA4;
  v32[5] = v31;
  sub_1C540FCD8();

  if (os_log_type_enabled(v33, v34))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v19 = sub_1C5419DC0(0);
    v20 = sub_1C5419DC0(1);
    v35 = buf;
    v36 = v19;
    v37 = v20;
    sub_1C5419E14(2, &v35);
    sub_1C5419E14(1, &v35);
    v38 = sub_1C545C6D4;
    v39 = v29;
    sub_1C5419E28(&v38, &v35, &v36, &v37);
    v38 = sub_1C545C6D4;
    v39 = v30;
    sub_1C5419E28(&v38, &v35, &v36, &v37);
    v38 = sub_1C5473FA4;
    v39 = v31;
    sub_1C5419E28(&v38, &v35, &v36, &v37);
    _os_log_impl(&dword_1C5355000, v33, v34, "respondToCustodianRequest : %s", buf, 0xCu);
    sub_1C5419E74(v19);
    sub_1C5419E74(v20);
    sub_1C5596A54();
  }

  else
  {
  }

  v13 = v21[53];
  v12 = v21[46];
  v10 = v21[39];
  v11 = v21[37];
  v9 = v21[38];
  v5 = MEMORY[0x1E69E5920](v33);
  (*(v9 + 8))(v10, v11, v5);
  InviteMessageView.doDefaultBehaviour(uuid:)(v12);

  v16 = v21[46];
  v17 = v21[43];
  v14 = v21[50];
  v15 = v21[44];
  MEMORY[0x1E69E5920](v21[51]);
  v6 = MEMORY[0x1E69E5920](v14);
  (*(v15 + 8))(v16, v17, v6);

  v7 = *(v21[23] + 8);

  return v7();
}

double sub_1C54E8DA4(uint64_t a1, void *a2)
{
  MEMORY[0x1E69E5928](a2);
  v7 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_1C542501C(v7, a2, MEMORY[0x1E69E7CA8] + 8);
  }

  else
  {
    sub_1C5425080(v7, v4, MEMORY[0x1E69E7CA8] + 8);
  }

  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t CustodianIconView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v8 = sub_1C54EA448;
  v19 = 0;
  v18 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBB0);
  v4 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v4 - v4;
  v5 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v4 - v4);
  v16 = &v4 - v5;
  v19 = &v4 - v5;
  v6 = *v1;
  v7 = 1;
  v18 = v6 & 1;
  v11 = sub_1C5595354();
  v9 = v17;
  v17[16] = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBB8);
  sub_1C54EA454();
  sub_1C5596024();
  v14 = sub_1C54EA4DC();
  sub_1C540EFD8(v15, v13, v16);
  sub_1C54EA564(v15);
  sub_1C54EA680(v16, v15);
  sub_1C540EFD8(v15, v13, v12);
  sub_1C54EA564(v15);
  return sub_1C54EA564(v16);
}

uint64_t *sub_1C54E905C@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v61 = a1;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v60 = &v72;
  v72 = 0;
  v73 = 0;
  v62 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBE0);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v13 - v28;
  v30 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v13 - v28);
  v31 = &v13 - v30;
  v32 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v13 - v30);
  v33 = &v13 - v32;
  v89 = &v13 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBE8);
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v13 - v35;
  v37 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v13 - v35);
  v38 = &v13 - v37;
  v39 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v13 - v37);
  v40 = &v13 - v39;
  v88 = &v13 - v39;
  v58 = 0;
  v50 = sub_1C5595F04();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v41 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v61);
  v51 = &v13 - v41;
  v59 = 1;
  v87 = v6 & 1;
  v43 = sub_1C55965F4();
  v42 = v7;
  sub_1C5439370();
  type metadata accessor for InviteMessageViewFactory();
  sub_1C54B72C4();
  v52 = sub_1C5595F54();
  v44 = sub_1C54127B4();
  v45 = v8;
  v46 = v9;
  v47 = v10;
  sub_1C54127C8(v51);
  v53 = sub_1C5595F44();
  (*(v48 + 8))(v51, v50);

  v54 = v80;
  v80[0] = v53;
  sub_1C5596214();
  sub_1C5595D14();
  sub_1C5410D10();
  v57 = v74;
  v74[0] = v80[1];
  v74[1] = v80[2];
  v75 = v81 & 1 & v59;
  v76 = v82;
  v77 = v83 & 1 & v59;
  v78 = v84;
  v79 = v85;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBF0);
  v56 = sub_1C546FB60();
  sub_1C540EFD8(v57, v55, v86);
  sub_1C5410D10();
  v70 = sub_1C5596044();
  v71 = v11 & 1 & v59;
  sub_1C540EFD8(&v70, MEMORY[0x1E6981840], v60);
  if (v61)
  {
    (*(v26 + 56))(v36, 1, 1, v25);
    sub_1C54EB1BC();
    sub_1C540F554(v36, v25, v38);
    sub_1C54EB534(v36);
    sub_1C54EB5E8(v38, v40);
  }

  else
  {
    v63 = v61;
    sub_1C54E97A8();
    v21 = sub_1C54EB1BC();
    sub_1C540EFD8(v31, v25, v33);
    v22 = *(v26 + 8);
    v23 = v26 + 8;
    v22(v31, v25);
    v62 = v31;
    v20 = *(v26 + 16);
    v19 = v26 + 16;
    v20(v29, v33, v25);
    sub_1C540EFD8(v29, v25, v31);
    v22(v29, v25);
    v20(v36, v31, v25);
    (*(v26 + 56))(v36, 0, 1, v25);
    sub_1C540F554(v36, v25, v38);
    sub_1C54EB534(v36);
    sub_1C54EB5E8(v38, v40);
    v22(v31, v25);
    v22(v33, v25);
  }

  v18 = v86;
  v17 = v68;
  sub_1C54EB71C(v86, v68);
  v16 = v69;
  v69[0] = v17;
  v66 = v72;
  v67 = v73;
  v69[1] = &v66;
  sub_1C54EB774(v40, v38);
  v69[2] = v38;
  v14 = v65;
  v65[0] = v55;
  v65[1] = MEMORY[0x1E6981840];
  v65[2] = v34;
  v15 = v64;
  v64[0] = v56;
  v64[1] = MEMORY[0x1E6981838];
  v64[2] = sub_1C54EB8A8();
  sub_1C540F5A0(v16, 3uLL, v14, v24);
  sub_1C54EB534(v38);
  sub_1C5410D10();
  sub_1C54EB534(v40);
  result = v18;
  sub_1C5410D10();
  return result;
}

uint64_t sub_1C54E97A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBF0);
  sub_1C54EA8B8();
  return sub_1C5595FD4();
}

uint64_t sub_1C54E9848()
{
  v26 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD68);
  v13 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v23 = v7 - v13;
  v25 = sub_1C55948B4();
  v21 = *(v25 - 8);
  v22 = v25 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v15 = v7 - v14;
  v16 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7 - v14);
  v17 = v7 - v16;
  v26 = v7 - v16;
  v24 = 1;
  sub_1C55965F4();
  v18 = v2;
  v19 = sub_1C54637B4();
  v20 = v3;

  sub_1C55948A4();

  if ((*(v21 + 48))(v23, v24, v25) == 1)
  {
    return sub_1C54EA3A0(v23);
  }

  v5 = v15;
  (*(v21 + 32))(v17, v23, v25);
  v10 = [objc_opt_self() sharedApplication];
  (*(v21 + 16))(v5, v17, v25);
  v9 = sub_1C5594884();
  v12 = *(v21 + 8);
  v11 = v21 + 8;
  v12(v15, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D848);
  v7[1] = 0;
  v7[2] = sub_1C5596E04();
  v7[3] = type metadata accessor for OpenExternalURLOptionsKey();
  v7[5] = sub_1C54C4C30();
  v7[4] = MEMORY[0x1E69E7CA0] + 8;
  v7[6] = sub_1C5596454();
  v8 = sub_1C5596434();

  [v10 openURL:v9 options:v8 completionHandler:0];
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  v6 = MEMORY[0x1E69E5920](v10);
  return (v12)(v17, v25, v6);
}

uint64_t sub_1C54E9BCC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DC28);
  sub_1C54EB244();
  sub_1C5412C88();
  sub_1C5596024();
  memcpy(__dst, v10, sizeof(__dst));
  memcpy(v9, __dst, sizeof(v9));
  sub_1C5595914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DC18);
  sub_1C54EAA08();
  sub_1C5595CD4();

  sub_1C54EB2CC(v9);
  memcpy(v15, v11, sizeof(v15));
  memcpy(v8, v15, sizeof(v8));
  v1 = [objc_opt_self() secondaryLabelColor];
  sub_1C5595E44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DC08);
  sub_1C54EA960();
  sub_1C5595B94();

  sub_1C54EB320(v8);
  memcpy(v16, v12, sizeof(v16));
  memcpy(v7, v16, sizeof(v7));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBF0);
  sub_1C54EA8B8();
  sub_1C540EFD8(v7, v4, v13);
  sub_1C54EB38C(v7);
  memcpy(v17, v13, sizeof(v17));
  sub_1C54EB410(v17, v6);
  memcpy(v5, v17, sizeof(v5));
  sub_1C540EFD8(v5, v4, a1);
  sub_1C54EB38C(v5);
  return sub_1C54EB38C(v13);
}

uint64_t sub_1C54E9E48@<X0>(uint64_t a1@<X8>)
{
  memset(v26, 0, sizeof(v26));
  v16 = 0;
  sub_1C55965F4();
  v6 = sub_1C54637B4();
  v7 = v1;

  v24 = v6;
  v25 = v7;
  sub_1C54141E8();
  v20 = sub_1C5595A04();
  v21 = v2;
  v22 = v3;
  v23 = v4;
  v17[0] = v20;
  v17[1] = v2;
  v18 = v3 & 1;
  v19 = v4;
  v8 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v17, MEMORY[0x1E6981148], v26);
  sub_1C5414260(v17);
  sub_1C55965F4();
  v15 = sub_1C5595EF4();
  v9 = MEMORY[0x1E6981748];
  sub_1C540EFD8(&v15, MEMORY[0x1E6981748], &v16);
  sub_1C5410D10();
  sub_1C54142A8(v26, v13);
  v14[0] = v13;
  sub_1C5413AF4(&v16, &v12);
  v14[1] = &v12;
  v11[0] = v8;
  v11[1] = v9;
  sub_1C540F5A0(v14, 2uLL, v11, a1);
  sub_1C5410D10();
  sub_1C5414260(v13);
  sub_1C5410D10();
  return sub_1C5414260(v26);
}

id sub_1C54EA098(uint64_t a1)
{
  v4 = [v1 initWithContext_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id sub_1C54EA0E8(uint64_t a1)
{
  v4 = sub_1C5594954();
  v6 = [v1 initWithCustodianID_didAccept_];
  MEMORY[0x1E69E5920](v4);
  v2 = sub_1C5594994();
  (*(*(v2 - 8) + 8))(a1);
  return v6;
}

uint64_t sub_1C54EA198(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 72);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C54E7414(a1, v6, v7, v1 + 32, v8 & 1);
}

void *sub_1C54EA278(const void *a1, void *a2)
{
  v6 = sub_1C55948B4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD68);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1C54EA3A0(uint64_t a1)
{
  v3 = sub_1C55948B4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1C54EA454()
{
  v2 = qword_1EC15DBC0;
  if (!qword_1EC15DBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DBB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DBC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EA4DC()
{
  v2 = qword_1EC15DBC8;
  if (!qword_1EC15DBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DBB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DBC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54EA564(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBD0) + 44);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBD8) + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBE0);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v3 + v4, 1))
  {
    (*(v6 + 8))(a1 + v3 + v4, v5);
  }

  return a1;
}

uint64_t sub_1C54EA680(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBD0) + 44);
  v7 = *(a1 + v6);

  v8 = a2 + v6;
  *(a2 + v6) = v7;
  memcpy((a2 + v6 + 8), (a1 + v6 + 8), 0x30uLL);
  *(v8 + 56) = *(a1 + v6 + 56);
  *(v8 + 64) = *(a1 + v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBD8) + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBE0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1 + v6 + v9, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBE8);
    memcpy((a2 + v6 + v9), (a1 + v6 + v9), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))();
    (*(v11 + 56))(a2 + v6 + v9, 0, 1, v10);
  }

  return a2;
}

unint64_t sub_1C54EA8B8()
{
  v2 = qword_1EC15DBF8;
  if (!qword_1EC15DBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DBF0);
    sub_1C54EA960();
    sub_1C5413DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DBF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EA960()
{
  v2 = qword_1EC15DC00;
  if (!qword_1EC15DC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DC08);
    sub_1C54EAA08();
    sub_1C54E4E54();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DC00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EAA08()
{
  v2 = qword_1EC15DC10;
  if (!qword_1EC15DC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DC18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DC10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54EAAF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 24)))
      {
        v3 = *(a1 + 24);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C54EAC10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CustodianIconView(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v8 = ((a2 + 1) >> 8) + 1;
    v9 = 1;
    if (v8 >= 0x100)
    {
      if (v8 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v9 = v2;
    }

    if (v9 == 1)
    {
      v7 = a1[1];
    }

    else
    {
      v7 = v9 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v7)
    {
      v6 = (*a1 | ((v7 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v4 = *a1;
      v5 = -1;
      if ((v4 & 0xFFFFFFFE) != 0)
      {
        v5 = v4 & 1 | ((v4 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v6 = v5;
    }
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

_BYTE *storeEnumTagSinglePayload for CustodianIconView(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

unint64_t sub_1C54EB1BC()
{
  v2 = qword_1EC15DC20;
  if (!qword_1EC15DC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DBE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DC20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EB244()
{
  v2 = qword_1EC15DC30;
  if (!qword_1EC15DC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DC28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DC30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54EB2CC(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  return a1;
}

uint64_t sub_1C54EB320(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  return a1;
}

uint64_t sub_1C54EB38C(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  return a1;
}

uint64_t sub_1C54EB410(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);
  sub_1C5594CF4();
  *(a2 + 48) = v6;
  v7 = *(a1 + 56);

  *(a2 + 56) = v7;
  v8 = *(a1 + 64);

  *(a2 + 64) = v8;
  v9 = *(a1 + 72);

  *(a2 + 72) = v9;
  v11 = *(a1 + 80);

  *(a2 + 80) = v11;
  v13 = *(a1 + 88);

  result = a2;
  *(a2 + 88) = v13;
  return result;
}

uint64_t sub_1C54EB534(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBE0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1C54EB5E8(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBE0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBE8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_1C54EB71C(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  memcpy(a2 + 1, a1 + 1, 0x30uLL);
  return a2;
}

void *sub_1C54EB774(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBE0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DBE8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1C54EB8A8()
{
  v2 = qword_1EC15DC38;
  if (!qword_1EC15DC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DBE8);
    sub_1C54EB1BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DC38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54EB940(uint64_t a1)
{
  v3 = sub_1C5594994();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1C54EB9E8()
{
  v2 = qword_1EC15DC48;
  if (!qword_1EC15DC48)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15DC48);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C54EBA4C()
{
  v2 = qword_1EC15DC50;
  if (!qword_1EC15DC50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15DC50);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C54EBAF0()
{
  v2 = qword_1EC15DC60;
  if (!qword_1EC15DC60)
  {
    sub_1C55960F4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DC60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EBB70()
{
  v2 = qword_1EC15DC70;
  if (!qword_1EC15DC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DC68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DC70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EBBF8()
{
  v2 = qword_1EC15DC78;
  if (!qword_1EC15DC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DA58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DC78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EBC80()
{
  v2 = qword_1EC15DC88;
  if (!qword_1EC15DC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DC80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DC88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EBD08()
{
  v2 = qword_1EC15DC98;
  if (!qword_1EC15DC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DC90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DC98);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C54EBD90(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v7 = a1[3];

  a2[3] = v7;
  v9 = a1[4];

  result = a2;
  a2[4] = v9;
  return result;
}

unint64_t sub_1C54EBE4C()
{
  v2 = qword_1EC15DCA0;
  if (!qword_1EC15DCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DA80);
    sub_1C547070C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DCA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54EBEF0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_1C54EBF58()
{
  v2 = qword_1EC15DCA8;
  if (!qword_1EC15DCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DA30);
    sub_1C54EBE4C();
    sub_1C5410EE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DCA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54EC000(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30);

  return a1;
}

unint64_t sub_1C54EC090()
{
  v2 = qword_1EC15DCB0;
  if (!qword_1EC15DCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DA38);
    sub_1C54EBF58();
    sub_1C54EC138();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DCB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EC138()
{
  v2 = qword_1EC15DCB8;
  if (!qword_1EC15DCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DA88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DCB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54EC1C0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA38) + 36);
  v5 = *(sub_1C5595244() + 20);
  v2 = sub_1C55953F4();
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  return a1;
}

unint64_t sub_1C54EC2CC()
{
  v2 = qword_1EC15DCC0;
  if (!qword_1EC15DCC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DA90);
    sub_1C54EC090();
    sub_1C543093C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DCC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54EC384(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA80);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x70uLL);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA30) + 36);
  v11 = *(a1 + v10);

  v4 = a2 + v10;
  *v4 = v11;
  *(v4 + 8) = *(a1 + v10 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA38);
  v13 = (a1 + *(v5 + 36));
  v14 = (a2 + *(v5 + 36));
  *v14 = *v13;
  v12 = *(sub_1C5595244() + 20);
  v6 = sub_1C55953F4();
  (*(*(v6 - 8) + 16))(&v14[v12], &v13[v12]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA88);
  *&v14[*(v7 + 36)] = *&v13[*(v7 + 36)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA90);
  result = a2;
  *(a2 + *(v8 + 36)) = *(a1 + *(v8 + 36));
  return result;
}

unint64_t sub_1C54EC5A8()
{
  v2 = qword_1EC15DCD0;
  if (!qword_1EC15DCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DCC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DCD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EC630()
{
  v2 = qword_1EC15DCD8;
  if (!qword_1EC15DCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DA10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DCD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EC6C0()
{
  v2 = qword_1EC15DCE8;
  if (!qword_1EC15DCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DCE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DCE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EC748()
{
  v2 = qword_1EC15DCF8;
  if (!qword_1EC15DCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DCF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DCF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54EC7D0(uint64_t a1)
{
  sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_1C54E548C(*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 97) & 1);
  return a1;
}

uint64_t sub_1C54EC840(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1C54130AC(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);
  sub_1C5594CF4();
  *(a2 + 48) = v6;
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  v14 = *(a1 + 97);
  sub_1C54E5220(v8, v9, v10, v11, v12, v13, v14 & 1);
  result = a2;
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  *(a2 + 72) = v10;
  *(a2 + 80) = v11;
  *(a2 + 88) = v12;
  *(a2 + 96) = v13;
  *(a2 + 97) = v14 & 1;
  return result;
}

uint64_t sub_1C54EC96C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 41);
  sub_1C54E5220(*a1, v4, v5, v6, v7, v8, v9 & 1);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 41) = v9 & 1;
  return result;
}

unint64_t sub_1C54ECA24()
{
  v2 = qword_1EC15DD08;
  if (!qword_1EC15DD08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DD08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54ECAA0()
{
  v2 = qword_1EC15DD10;
  if (!qword_1EC15DD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D9D0);
    sub_1C54ECA24();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DD10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54ECB48(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9D0) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_1C54ECBD0()
{
  v2 = qword_1EC15DD20;
  if (!qword_1EC15DD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DD18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DD20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54ECC58()
{
  v2 = qword_1EC15DD28;
  if (!qword_1EC15DD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DD00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DD28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54ECCE0(uint64_t a1)
{
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9E0) + 44);
  sub_1C5412EA0(*v3, *(v3 + 8), *(v3 + 16) & 1);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80);
  v2 = *(v4 + 36);
  v6 = sub_1C5595754();
  v7 = *(*(v6 - 8) + 8);
  v7(v3 + v2);
  v5 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9E8) + 48);
  sub_1C5412EA0(*v5, *(v5 + 8), *(v5 + 16) & 1);

  (v7)(v5 + *(v4 + 36), v6);
  return a1;
}

_BYTE *sub_1C54ECE24(_BYTE *a1, _BYTE *a2)
{
  *a2 = *a1;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9D0) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(&a2[v4], &a1[v4]);
  return a2;
}

uint64_t sub_1C54ECEC4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9E0) + 44);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = *(a1 + v5 + 16);
  sub_1C54130AC(v6, v7, v8 & 1);
  v11 = a2 + v5;
  *v11 = v6;
  *(v11 + 8) = v7;
  *(v11 + 16) = v8 & 1;
  v9 = *(a1 + v5 + 24);
  sub_1C5594CF4();
  *(v11 + 24) = v9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80);
  v10 = *(v16 + 36);
  v20 = sub_1C5595754();
  v21 = *(*(v20 - 8) + 16);
  v21(a2 + v5 + v10, a1 + v5 + v10);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D9E8) + 48);
  v19 = a1 + v5 + v12;
  v13 = *v19;
  v14 = *(v19 + 8);
  v15 = *(v19 + 16);
  sub_1C54130AC(*v19, v14, v15 & 1);
  v2 = a2 + v5 + v12;
  v18 = v2;
  *v2 = v13;
  *(v2 + 8) = v14;
  *(v2 + 16) = v15 & 1;
  v17 = *(v19 + 24);
  sub_1C5594CF4();
  *(v18 + 24) = v17;
  (v21)(v18 + *(v16 + 36), v19 + *(v16 + 36), v20);
  return a2;
}

uint64_t sub_1C54ED0EC()
{
  v2 = *(v0 + 24);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54ED120()
{
  v2 = *(v0 + 40);
  sub_1C5594CF4();
  return v2;
}

void *sub_1C54ED198(void *a1, void *a2)
{
  if (a1[1])
  {
    *a2 = *a1;
    v5 = a1[1];
    sub_1C5594CF4();
    a2[1] = v5;
    if (a1[3])
    {
      a2[2] = a1[2];
      v3 = a1[3];
      sub_1C5594CF4();
      a2[3] = v3;
      a2[4] = a1[4];
      v4 = a1[5];
      sub_1C5594CF4();
      a2[5] = v4;
    }

    else
    {
      *(a2 + 1) = *(a1 + 1);
      *(a2 + 2) = *(a1 + 2);
    }

    *(a2 + 48) = *(a1 + 48);
    *(a2 + 49) = *(a1 + 49);
  }

  else
  {
    memcpy(a2, a1, 0x32uLL);
  }

  return a2;
}

uint64_t sub_1C54ED320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  memset(__b, 0, 0x32uLL);
  v25 = 0;
  __b[12] = a1;
  __b[11] = a2;
  __b[10] = a3;
  __b[8] = a4;
  __b[9] = a5;
  __b[7] = a6;
  v13 = *(a7 + 8);
  v14 = *(a7 + 16);
  v15 = *(a7 + 24);
  v16 = *(a7 + 32);
  v17 = *(a7 + 40);
  v18 = *(a7 + 48);
  __b[0] = *a7;
  v12 = __b[0];
  __b[1] = v13;
  __b[2] = v14;
  __b[3] = v15;
  __b[4] = v16;
  __b[5] = v17;
  LOWORD(__b[6]) = v18;
  v25 = v7;
  sub_1C5594CF4();
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  MEMORY[0x1E69E5928](a1);
  *(v7 + 16) = a1;
  sub_1C5594CF4();
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  sub_1C5444FC0(a6, v24);
  memcpy((v7 + 56), v24, 0x28uLL);
  sub_1C54ED518(v12, v13, v14, v15);
  *(v7 + 96) = v12;
  *(v7 + 104) = v13;
  *(v7 + 112) = v14;
  *(v7 + 120) = v15;
  *(v7 + 128) = v16;
  *(v7 + 136) = v17;
  *(v7 + 144) = v18;
  sub_1C54ED5B0(v12, v13, v14, v15);
  sub_1C544435C(a6);

  MEMORY[0x1E69E5920](a1);
  return v23;
}

uint64_t sub_1C54ED518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_1C5594CF4();
    return sub_1C54ED570(a3, a4);
  }

  return result;
}

uint64_t sub_1C54ED570(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1C5594CF4();
    return sub_1C5594CF4();
  }

  return result;
}

uint64_t sub_1C54ED5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {

    return sub_1C54ED608(a3, a4);
  }

  return result;
}

uint64_t sub_1C54ED608(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C54ED648()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  sub_1C541439C();
  sub_1C5401ECC();
  sub_1C544435C(v0 + 56);
  sub_1C54ED6A8(v0 + 96);
  return v2;
}

uint64_t sub_1C54ED6A8(uint64_t a1)
{
  if (*(a1 + 8))
  {

    if (*(a1 + 24))
    {
    }
  }

  return a1;
}

uint64_t sub_1C54ED7E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TrustedContactListViewModel();
  result = sub_1C5594E34();
  *a1 = result;
  return result;
}

unint64_t sub_1C54ED848(uint64_t a1)
{
  result = sub_1C54ED874();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C54ED874()
{
  v2 = qword_1EC15DD30;
  if (!qword_1EC15DD30)
  {
    type metadata accessor for TrustedContactListViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DD30);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for LocalContactType()
{
  v4 = qword_1EC15DD38;
  if (!qword_1EC15DD38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15DD38);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C54ED98C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a2;
}

uint64_t sub_1C54ED9E4(uint64_t a1)
{
  swift_unknownObjectRetain();
  *(v1 + 8) = a1;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C54EDA78()
{
  swift_unknownObjectRetain();
  v1 = sub_1C5595194();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1C54EDB28(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  *v2 = a1;
  v2[1] = a2;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C54EDB74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v21 = a1;
  v22 = a2;
  v19 = a3;
  v20 = a4;
  v23 = sub_1C54EE588;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v43 = a3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DD40);
  v30 = *(v36 - 8);
  v31 = v36 - 8;
  v15 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v21);
  v34 = &v14 - v15;
  v16 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v35 = &v14 - v16;
  v42 = &v14 - v16;
  v40 = v7;
  v41 = v8;
  v17 = sub_1C54ED98C(v7, v8);
  v18 = (*(v20 + 24))(v19);
  swift_unknownObjectRelease();
  v29 = &v39;
  v39 = v18;
  swift_unknownObjectRetain();
  v9 = swift_allocObject();
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v24 = v9;
  v9[2] = v19;
  v9[3] = v10;
  v9[4] = v11;
  v9[5] = v12;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCD0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DD48);
  v27 = sub_1C54EE5A8();
  v28 = sub_1C54EE630();
  sub_1C54EE760();
  sub_1C5596114();
  v33 = sub_1C54EF54C();
  sub_1C540EFD8(v34, v36, v35);
  v38 = *(v30 + 8);
  v37 = v30 + 8;
  v38(v34, v36);
  (*(v30 + 16))(v34, v35, v36);
  sub_1C540EFD8(v34, v36, v32);
  v38(v34, v36);
  return (v38)(v35, v36);
}

uint64_t sub_1C54EDE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v66 = a6;
  v27 = a1;
  v42 = a2;
  v49 = a3;
  v40 = a4;
  v41 = a5;
  v43 = sub_1C54F0680;
  v92 = 0;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v93 = a4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DD68);
  v62 = *(v65 - 8);
  v63 = v65 - 8;
  v26 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v25 - v26;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DD48);
  v28 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v27);
  v69 = &v25 - v28;
  v29 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v70 = &v25 - v29;
  v92 = &v25 - v29;
  v52 = *v8;
  v91 = v52;
  v89 = v9;
  v90 = v10;
  v39 = v83;
  sub_1C54EE7E0(v52, v9, v10, v11, v12, v83);
  v33 = v84;
  v32 = v85;
  v13 = __swift_project_boxed_opaque_existential_0(v39, v84);
  v31 = *(v33 - 8);
  v30 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v25 - v30;
  (*(v31 + 16))();
  v14 = sub_1C5596084();
  v38 = &v82;
  v82 = v14;
  v35 = MEMORY[0x1E6981910];
  v36 = MEMORY[0x1E6981900];
  v37 = sub_1C5411080();
  sub_1C5411148();
  sub_1C5595BB4();
  sub_1C5410D10();
  __swift_destroy_boxed_opaque_existential_0(v39);
  v48 = v80;
  v80[0] = v86;
  v80[1] = v87;
  v81 = v88;
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](v52);
  v44 = &v71;
  v72 = v40;
  v73 = v41;
  v74 = v42;
  v75 = v49;
  v76 = v52;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DDA8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DDB0);
  v47 = sub_1C54F06A4();
  sub_1C54F072C();
  sub_1C5595164();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v52);
  v50 = 7;
  v15 = sub_1C5596DF4();
  v57 = &v78;
  v78 = v15;
  v79 = v16;
  v55 = 1;
  v17 = sub_1C55965F4();
  v51 = v18;
  MEMORY[0x1C6947980](v17);

  v54 = [v52 handle];
  v19 = sub_1C5596574();
  v53 = v77;
  v77[0] = v19;
  v77[1] = v20;
  sub_1C5596DD4();
  sub_1C5401ECC();
  MEMORY[0x1E69E5920](v54);
  v21 = sub_1C55965F4();
  v56 = v22;
  MEMORY[0x1C6947980](v21);

  v59 = v78;
  v58 = v79;
  sub_1C5594CF4();
  sub_1C5401ECC();
  v60 = sub_1C55965D4();
  v61 = v23;
  sub_1C54EE6D8();
  sub_1C5595C84();

  (*(v62 + 8))(v64, v65);
  v68 = sub_1C54EE630();
  sub_1C540EFD8(v69, v67, v70);
  sub_1C54F07CC(v69);
  sub_1C54F0890(v70, v69);
  sub_1C540EFD8(v69, v67, v66);
  sub_1C54F07CC(v69);
  return sub_1C54F07CC(v70);
}

unint64_t sub_1C54EE5A8()
{
  v2 = qword_1EC15DD50;
  if (!qword_1EC15DD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BCD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DD50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EE630()
{
  v2 = qword_1EC15DD58;
  if (!qword_1EC15DD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DD48);
    sub_1C54EE6D8();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DD58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EE6D8()
{
  v2 = qword_1EC15DD60;
  if (!qword_1EC15DD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DD68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DD60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54EE760()
{
  v2 = qword_1EC15DD70;
  if (!qword_1EC15DD70)
  {
    sub_1C5403328();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DD70);
    return WitnessTable;
  }

  return v2;
}

void *sub_1C54EE7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)(void)@<X4>, void *a6@<X8>)
{
  v42 = a4;
  v41 = a1;
  v39 = a2;
  v40 = a3;
  sub_1C54ED98C(a2, a3);
  a5[4](a4);
  swift_unknownObjectRelease();
  type metadata accessor for LocalContactType();
  sub_1C54F0278();
  if (sub_1C55964D4())
  {
    MEMORY[0x1E69E5928](a1);
    sub_1C54ED98C(a2, a3);
    a5[2](a4);
    swift_unknownObjectRelease();
    v28 = nullsub_1(a1);
    v27 = v6;
    v37 = &unk_1F447DB98;
    v38 = sub_1C54F03D4();
    v35 = v28;
    v36 = v27;
  }

  else if (sub_1C55964D4())
  {
    MEMORY[0x1E69E5928](a1);
    sub_1C54ED98C(a2, a3);
    a5[2](a4);
    swift_unknownObjectRelease();
    v26 = nullsub_1(a1);
    v25 = v7;
    v37 = &unk_1F447E810;
    v38 = sub_1C54F035C();
    v35 = v26;
    v36 = v25;
  }

  else if (sub_1C55964D4())
  {
    MEMORY[0x1E69E5928](a1);
    sub_1C54ED98C(a2, a3);
    a5[2](a4);
    swift_unknownObjectRelease();
    sub_1C54ED98C(a2, a3);
    a5[7](a4);
    swift_unknownObjectRelease();
    v21 = nullsub_1(a1);
    v22 = v8;
    v23 = v9;
    v24 = v10;
    v37 = &unk_1F4477FE0;
    v38 = sub_1C5462138();
    v11 = swift_allocObject();
    v35 = v11;
    v11[2] = v21;
    v11[3] = v22;
    v11[4] = v23;
    v11[5] = v24;
  }

  else if (sub_1C55964D4())
  {
    MEMORY[0x1E69E5928](a1);
    sub_1C54ED98C(a2, a3);
    a5[2](a4);
    swift_unknownObjectRelease();
    sub_1C54ED98C(a2, a3);
    a5[7](a4);
    swift_unknownObjectRelease();
    v17 = nullsub_1(a1);
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v37 = &unk_1F4478090;
    v38 = sub_1C5463094();
    v15 = swift_allocObject();
    v35 = v15;
    v15[2] = v17;
    v15[3] = v18;
    v15[4] = v19;
    v15[5] = v20;
  }

  else
  {
    sub_1C54F02F8();
    sub_1C5404B48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DD88);
    swift_dynamicCast();
  }

  return sub_1C5458604(&v35, a6);
}

uint64_t *sub_1C54EED50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = &v115;
  v65 = v90;
  v66 = a5;
  v67 = a4;
  v76 = a3;
  v77 = a2;
  v75 = a1;
  v68 = a6;
  v69 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v121 = a4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DDC8);
  v71 = *(*(v70 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](0);
  v73 = (v71 + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = &v28 - v73;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v28 - v73;
  v120 = &v28 - v73;
  v78 = sub_1C5595F04();
  v79 = *(v78 - 8);
  v80 = v79;
  v81 = *(v79 + 64);
  v7 = MEMORY[0x1EEE9AC00](v76);
  v82 = &v28 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v8;
  v119 = v9;
  v117 = v7;
  v83 = [v7 imageData];
  if (v83)
  {
    v63 = v83;
    v58 = v83;
    v59 = sub_1C55948D4();
    v60 = v10;

    v61 = v59;
    v62 = v60;
  }

  else
  {
    v61 = 0;
    v62 = 0xF000000000000000;
  }

  v29 = v62;
  v30 = v61;
  v35 = sub_1C54EF3D8(v61, v62);
  sub_1C54F0970(v30, v29);
  v31 = sub_1C54127B4();
  v32 = v11;
  v33 = v12;
  v34 = v13;
  sub_1C54127C8(v82);
  v36 = sub_1C5595F44();
  (*(v80 + 8))(v82, v78);

  v99 = v36;
  v37 = MEMORY[0x1E6981748];
  v38 = MEMORY[0x1E6981710];
  sub_1C5410F68();
  v39 = &v99;
  sub_1C5595D14();
  sub_1C5410D10();
  v93[0] = v108;
  v93[1] = v109;
  v94 = v110;
  v95 = v111;
  v96 = v112;
  v97 = v113;
  v98 = v114;
  sub_1C5596014();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CBF0);
  v42 = sub_1C546FB60();
  v43 = sub_1C546FC00();
  v41 = MEMORY[0x1E69817E8];
  v92 = sub_1C546EEB4();
  v91 = v92;
  v44 = v93;
  sub_1C5595E04();
  sub_1C5410D10();
  v14 = v65;
  v15 = *v64;
  v16 = v64[1];
  v17 = v64[2];
  *(v65 + 170) = *(v64 + 42);
  v102 = v17;
  v101 = v16;
  v100 = v15;
  *(v14 + 42) = *(v14 + 170);
  v90[2] = v17;
  v90[1] = v16;
  v90[0] = v15;
  v46 = sub_1C5595E64();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CC00);
  sub_1C546FC78();
  v47 = v90;
  sub_1C5595B94();

  sub_1C5410D10();
  v103 = v64[4];
  v18 = v64[5];
  v19 = v64[6];
  v20 = v64[7];
  v107 = v64[8];
  v106 = v20;
  v105 = v19;
  v104 = v18;
  v89[0] = v103;
  v89[4] = v107;
  v89[3] = v20;
  v89[2] = v19;
  v89[1] = v18;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DDD0);
  v54 = sub_1C54F09B8();
  v57 = v116;
  v48 = v89;
  sub_1C540EFD8(v89, v53, v116);
  sub_1C54F0A60();
  v51 = sub_1C5595434();
  swift_unknownObjectRetain();
  v21 = v76;
  v52 = &v28;
  MEMORY[0x1EEE9AC00](&v28);
  v22 = v75;
  v23 = v77;
  v49 = &v28 - 8;
  *(&v28 - 6) = v24;
  *(&v28 - 5) = v25;
  *(&v28 - 4) = v22;
  *(&v28 - 3) = v23;
  *(&v28 - 2) = v26;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DDE0);
  sub_1C54F0AC8();
  sub_1C5596064();
  swift_unknownObjectRelease();

  v55 = sub_1C54F0B50();
  sub_1C540EFD8(v72, v70, v74);
  sub_1C54F0BD8(v72);
  v56 = v87;
  sub_1C54F0D7C(v57, v87);
  v88[0] = v56;
  sub_1C54F0E14(v74, v72);
  v88[1] = v72;
  v86[0] = v53;
  v86[1] = v70;
  v84 = v54;
  v85 = v55;
  sub_1C540F5A0(v88, 2uLL, v86, v68);
  sub_1C54F0BD8(v72);
  sub_1C54F0A60();
  sub_1C54F0BD8(v74);
  result = v57;
  sub_1C54F0A60();
  return result;
}

uint64_t sub_1C54EF3D8(uint64_t a1, unint64_t a2)
{
  sub_1C54F044C(a1, a2);
  if ((a2 & 0xF000000000000000) == 0xF000000000000000)
  {
    goto LABEL_7;
  }

  sub_1C5418C84();
  sub_1C544DE30(a1, a2);
  v2 = sub_1C54493D0(a1, a2);
  v4 = v2;
  if (!v2)
  {
    sub_1C544DEAC(a1, a2);
LABEL_7:
    sub_1C55965F4();
    return sub_1C5595EF4();
  }

  MEMORY[0x1E69E5928](v2);
  v7 = sub_1C5595ED4();
  MEMORY[0x1E69E5920](v4);
  sub_1C544DEAC(a1, a2);
  return v7;
}

unint64_t sub_1C54EF54C()
{
  v2 = qword_1EC15DD78;
  if (!qword_1EC15DD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DD40);
    sub_1C54EE630();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DD78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54EF5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v91 = a6;
  v99 = a1;
  v100 = a2;
  v138 = a3;
  v101 = a4;
  v102 = a5;
  v199 = 0;
  v198 = 0;
  v196 = 0;
  v197 = 0;
  v195 = 0;
  v171 = 0;
  v172 = 0;
  v170 = 0;
  v140 = 0;
  v200 = a4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE70);
  v93 = (*(*(v92 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v92);
  v94 = v53 - v93;
  v95 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53 - v93);
  v96 = (v53 - v95);
  v97 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53 - v95);
  v98 = (v53 - v97);
  v199 = v53 - v97;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80);
  v103 = *(v135 - 8);
  v104 = v135 - 8;
  v105 = (*(v103 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v138);
  v106 = v53 - v105;
  v107 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v108 = v53 - v107;
  v109 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v137 = v53 - v109;
  v110 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v134 = v53 - v110;
  v198 = v53 - v110;
  v196 = v15;
  v197 = v16;
  v195 = v14;
  v17 = sub_1C54F008C(v14);
  v111 = v194;
  v194[0] = v17;
  v194[1] = v18;
  v112 = sub_1C54141E8();
  v124 = MEMORY[0x1E69E6158];
  v190 = sub_1C5595A04();
  v191 = v19;
  v192 = v20;
  v193 = v21;
  v114 = v190;
  v115 = v19;
  v116 = v20;
  v117 = v21;
  v113 = sub_1C5595824();
  v186 = v114;
  v187 = v115;
  v127 = 1;
  v188 = v116 & 1;
  v189 = v117;
  v182 = sub_1C55959C4();
  v183 = v22;
  v184 = v23;
  v185 = v24;
  v118 = v182;
  v119 = v22;
  v120 = v23;
  v121 = v24;

  sub_1C5412EA0(v114, v115, v116 & 1);

  v133 = v179;
  v179[0] = v118;
  v179[1] = v119;
  v180 = v120 & 1 & v127;
  v181 = v121;
  v122 = 8;
  v25 = sub_1C5596DF4();
  v129 = &v177;
  v177 = v25;
  v178 = v26;
  v27 = sub_1C55965F4();
  v123 = v28;
  MEMORY[0x1C6947980](v27);

  v126 = [v138 handle];
  v29 = sub_1C5596574();
  v125 = v176;
  v176[0] = v29;
  v176[1] = v30;
  sub_1C5596DD4();
  sub_1C5401ECC();
  MEMORY[0x1E69E5920](v126);
  v31 = sub_1C55965F4();
  v128 = v32;
  MEMORY[0x1C6947980](v31);

  v131 = v177;
  v130 = v178;
  sub_1C5594CF4();
  sub_1C5401ECC();
  sub_1C55965D4();
  v132 = v33;
  sub_1C5595C84();

  sub_1C5414260(v133);
  v136 = sub_1C547AC88();
  sub_1C540EFD8(v137, v135, v134);
  sub_1C547EC90(v137);
  v139 = [v138 detailsText];
  if (v139)
  {
    v90 = v139;
    v85 = v139;
    v86 = sub_1C5596574();
    v87 = v35;
    v34 = MEMORY[0x1E69E5920](v85);
    v88 = v86;
    v89 = v87;
  }

  else
  {
    v88 = 0;
    v89 = 0;
  }

  v83 = v89;
  v84 = v88;
  if (v89)
  {
    v81 = v84;
    v82 = v83;
    v79 = v83;
    v80 = v84;
    v171 = v84;
    v172 = v83;
    v170 = v137;
    sub_1C5594CF4();
    v168 = v80;
    v169 = v79;
    v71 = MEMORY[0x1E69E6158];
    v164 = sub_1C5595A04();
    v165 = v36;
    v166 = v37;
    v167 = v38;
    v56 = v164;
    v57 = v36;
    v58 = v37;
    v59 = v38;
    v55 = sub_1C55958F4();
    v160 = v56;
    v161 = v57;
    v72 = 1;
    v162 = v58 & 1;
    v163 = v59;
    v156 = sub_1C55959C4();
    v157 = v39;
    v158 = v40;
    v159 = v41;
    v61 = v156;
    v62 = v39;
    v63 = v40;
    v64 = v41;

    sub_1C5412EA0(v56, v57, v58 & 1);

    v60 = sub_1C5595E64();
    v152 = v61;
    v153 = v62;
    v154 = v63 & 1 & v72;
    v155 = v64;
    v148 = sub_1C5595984();
    v149 = v42;
    v150 = v43;
    v151 = v44;
    v65 = v148;
    v66 = v42;
    v67 = v43;
    v68 = v44;

    sub_1C5412EA0(v61, v62, v63 & 1);

    v78 = v145;
    v145[0] = v65;
    v145[1] = v66;
    v146 = v67 & 1 & v72;
    v147 = v68;
    v69 = 10;
    v45 = sub_1C5596DF4();
    v74 = &v143;
    v143 = v45;
    v144 = v46;
    v47 = sub_1C55965F4();
    v70 = v48;
    MEMORY[0x1C6947980](v47);

    v141 = v80;
    v142 = v79;
    sub_1C5596DD4();
    v49 = sub_1C55965F4();
    v73 = v50;
    MEMORY[0x1C6947980](v49);

    v76 = v143;
    v75 = v144;
    sub_1C5594CF4();
    sub_1C5401ECC();
    sub_1C55965D4();
    v77 = v51;
    sub_1C5595C84();

    sub_1C5414260(v78);
    sub_1C540EFD8(v108, v135, v137);
    sub_1C547EC90(v108);
    v140 = v108;
    sub_1C547ED34(v137, v106);
    sub_1C540EFD8(v106, v135, v108);
    sub_1C547EC90(v106);
    sub_1C547ED34(v108, v94);
    (*(v103 + 56))(v94, 0, 1, v135);
    sub_1C540F554(v94, v135, v96);
    sub_1C547E868(v94);
    sub_1C547E954(v96, v98);
    sub_1C547EC90(v108);
    sub_1C547EC90(v137);
  }

  else
  {
    (*(v103 + 56))(v94, 1, 1, v135, v34);
    sub_1C540F554(v94, v135, v96);
    sub_1C547E868(v94);
    sub_1C547E954(v96, v98);
  }

  sub_1C547ED34(v134, v137);
  v54 = v175;
  v175[0] = v137;
  sub_1C547EAC4(v98, v96);
  v175[1] = v96;
  v53[0] = v174;
  v174[0] = v135;
  v174[1] = v92;
  v53[1] = v173;
  v173[0] = v136;
  v173[1] = sub_1C547ABF0();
  sub_1C540F5A0(v54, 2uLL, v53[0], v91);
  sub_1C547E868(v96);
  sub_1C547EC90(v137);
  sub_1C547E868(v98);
  return sub_1C547EC90(v134);
}

uint64_t sub_1C54F008C(void *a1)
{
  v14 = [a1 fullName];
  if (v14)
  {
    v9 = sub_1C5596574();
    v10 = v2;
    *&v1 = MEMORY[0x1E69E5920](v14).n128_u64[0];
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  v15 = sub_1C55965F4();
  v8 = MEMORY[0x1C69471A0](v11, v12, v15, v3);
  sub_1C5401ECC();
  if (v8)
  {

LABEL_10:
    v5 = [a1 handle];
    v6 = sub_1C5596574();
    MEMORY[0x1E69E5920](v5);
    return v6;
  }

  return v11;
}

unint64_t sub_1C54F0278()
{
  v2 = qword_1EC15DD80;
  if (!qword_1EC15DD80)
  {
    type metadata accessor for LocalContactType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DD80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54F02F8()
{
  v2 = qword_1EC15F300;
  if (!qword_1EC15F300)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15F300);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C54F035C()
{
  v2 = qword_1EC15DD90;
  if (!qword_1EC15DD90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DD90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54F03D4()
{
  v2 = qword_1EC15DD98;
  if (!qword_1EC15DD98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DD98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54F044C(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1C544DE30(result, a2);
  }

  return result;
}

uint64_t sub_1C54F058C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C54F0600()
{
  v2 = qword_1EC15DDA0;
  if (!qword_1EC15DDA0)
  {
    type metadata accessor for LocalContactType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DDA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54F06A4()
{
  v2 = qword_1EC15DDB8;
  if (!qword_1EC15DDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DDA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DDB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54F072C()
{
  v2 = qword_1EC15DDC0;
  if (!qword_1EC15DDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DDB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DDC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54F07CC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DD68);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DD48) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_1C54F0890(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DD68);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DD48) + 36);
  v3 = sub_1C5595754();
  (*(*(v3 - 8) + 16))(a2 + v5, a1 + v5);
  return a2;
}

uint64_t sub_1C54F0970(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1C544DEAC(result, a2);
  }

  return result;
}

unint64_t sub_1C54F09B8()
{
  v2 = qword_1EC15DDD8;
  if (!qword_1EC15DDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DDD0);
    sub_1C546FC78();
    sub_1C5413DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DDD8);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1C54F0A60()
{
}

unint64_t sub_1C54F0AC8()
{
  v2 = qword_1EC15DDE8;
  if (!qword_1EC15DDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DDE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DDE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54F0B50()
{
  v2 = qword_1EC15DDF0;
  if (!qword_1EC15DDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DDC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DDF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54F0BD8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DDF8) + 44);
  sub_1C5412EA0(*(a1 + v4), *(a1 + v4 + 8), *(a1 + v4 + 16) & 1);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80);
  v5 = *(v8 + 36);
  v6 = sub_1C5595754();
  v7 = *(*(v6 - 8) + 8);
  v7(a1 + v4 + v5);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DE00) + 48);
  if (!(*(*(v8 - 8) + 48))(a1 + v4 + v9, 1))
  {
    v2 = a1 + v4 + v9;
    sub_1C5412EA0(*v2, *(v2 + 8), *(v2 + 16) & 1);

    (v7)(v2 + *(v8 + 36), v6);
  }

  return a1;
}

void *sub_1C54F0D7C(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  memcpy(a2 + 1, a1 + 1, 0x32uLL);
  v5 = a1[8];

  a2[8] = v5;
  v7 = a1[9];

  result = a2;
  a2[9] = v7;
  return result;
}

uint64_t sub_1C54F0E14(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DDF8) + 44);
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = *(a1 + v13 + 16);
  sub_1C54130AC(v14, v15, v16 & 1);
  v2 = a2 + v13;
  *v2 = v14;
  *(v2 + 8) = v15;
  *(v2 + 16) = v16 & 1;
  v17 = *(a1 + v13 + 24);
  sub_1C5594CF4();
  *(a2 + v13 + 24) = v17;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE80);
  v18 = *(v21 + 36);
  v19 = sub_1C5595754();
  v20 = *(*(v19 - 8) + 16);
  v20(a2 + v13 + v18, a1 + v13 + v18);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DE00) + 48);
  v23 = *(v21 - 8);
  if ((*(v23 + 48))(a1 + v13 + v22, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE70);
    memcpy((a2 + v13 + v22), (a1 + v13 + v22), *(*(v3 - 8) + 64));
  }

  else
  {
    v9 = a1 + v13 + v22;
    v5 = *v9;
    v6 = *(v9 + 8);
    v7 = *(v9 + 16);
    sub_1C54130AC(*v9, v6, v7 & 1);
    v10 = a2 + v13 + v22;
    *v10 = v5;
    *(v10 + 8) = v6;
    *(v10 + 16) = v7 & 1;
    v8 = *(v9 + 24);
    sub_1C5594CF4();
    *(v10 + 24) = v8;
    (v20)(v10 + *(v21 + 36), v9 + *(v21 + 36), v19);
    (*(v23 + 56))(v10, 0, 1, v21);
  }

  return a2;
}

uint64_t sub_1C54F1144()
{
  v2 = (v0 + OBJC_IVAR___AAUIAccountRecoveryContactUpsellSelectorVC_viewModel);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C54F11B4(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUIAccountRecoveryContactUpsellSelectorVC_viewModel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C54F12BC()
{
  v2 = (v0 + OBJC_IVAR___AAUIAccountRecoveryContactUpsellSelectorVC_vcDelegate);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C54F1324(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR___AAUIAccountRecoveryContactUpsellSelectorVC_vcDelegate);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C54F1414()
{
  v2 = (v0 + OBJC_IVAR___AAUIAccountRecoveryContactUpsellSelectorVC_selectedContact);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C54F1484(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUIAccountRecoveryContactUpsellSelectorVC_selectedContact);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *AccountRecoveryContactUpsellSelectorVC.init(selectorViewModel:vcDelegate:)(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v11 = a1;
  v10 = a2;
  *OBJC_IVAR___AAUIAccountRecoveryContactUpsellSelectorVC_selectedContact = 0;
  MEMORY[0x1E69E5928](a1);
  *&v12[OBJC_IVAR___AAUIAccountRecoveryContactUpsellSelectorVC_viewModel] = a1;
  swift_unknownObjectRetain();
  *&v12[OBJC_IVAR___AAUIAccountRecoveryContactUpsellSelectorVC_vcDelegate] = a2;
  v4 = v12;
  v3 = &v12[OBJC_IVAR___AAUIAccountRecoveryContactUpsellSelectorVC_viewModel];
  swift_beginAccess();
  v5 = *v3;
  MEMORY[0x1E69E5928](*v3);
  swift_endAccess();
  v9.receiver = v4;
  v9.super_class = type metadata accessor for AccountRecoveryContactUpsellSelectorVC();
  v8 = objc_msgSendSuper2(&v9, sel_initWithViewModel_, v5);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5928](v8);
  v12 = v8;
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v12);
  return v8;
}

double sub_1C54F17C0()
{
  v67 = v0;
  MEMORY[0x1E69E5928](v0);
  v66.receiver = v0;
  v66.super_class = type metadata accessor for AccountRecoveryContactUpsellSelectorVC();
  objc_msgSendSuper2(&v66, sel_viewDidLoad);
  MEMORY[0x1E69E5920](v0);
  type metadata accessor for AccountRecoveryContactUpsellContactSection();
  v62 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x68))();
  (MEMORY[0x1E69E5928])();
  v63 = static AccountRecoveryContactUpsellContactSection.create(viewModel:delegate:)(v62, v61);
  swift_unknownObjectRelease();
  v64 = [v63 view];
  if (v64)
  {
    v60 = v64;
  }

  else
  {
    LOBYTE(v9) = 2;
    v14 = 42;
    LODWORD(v19) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  [v60 setTranslatesAutoresizingMaskIntoConstraints_];
  (MEMORY[0x1E69E5928])();
  v56 = [v61 contentView];
  [v56 addSubview_];
  MEMORY[0x1E69E5920](v56);
  v57 = objc_opt_self();
  sub_1C545C768();
  sub_1C5596E04();
  v58 = v1;
  v59 = [v63 view];
  if (v59)
  {
    v55 = v59;
  }

  else
  {
    LOBYTE(v10) = 2;
    v15 = 46;
    LODWORD(v20) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v52 = [v55 0x1FBB5C529];
  MEMORY[0x1E69E5920](v55);
  (MEMORY[0x1E69E5928])();
  v50 = [v61 contentView];
  v51 = [v50 0x1FBB5C529];
  v53 = [v52 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v51);
  *&v2 = MEMORY[0x1E69E5920](v52).n128_u64[0];
  *v58 = v53;
  v54 = [v63 view];
  if (v54)
  {
    v49 = v54;
  }

  else
  {
    LOBYTE(v11) = 2;
    v16 = 47;
    LODWORD(v21) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v46 = [v49 0x1FBBB59CCLL];
  MEMORY[0x1E69E5920](v49);
  (MEMORY[0x1E69E5928])();
  v44 = [v61 contentView];
  v45 = [v44 0x1FBBB59CCLL];
  v47 = [v46 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v45);
  *&v3 = MEMORY[0x1E69E5920](v46).n128_u64[0];
  v58[1] = v47;
  v48 = [v63 view];
  if (v48)
  {
    v43 = v48;
  }

  else
  {
    LOBYTE(v12) = 2;
    v17 = 48;
    LODWORD(v22) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v40 = [v43 0x1FBBB4950];
  MEMORY[0x1E69E5920](v43);
  (MEMORY[0x1E69E5928])();
  v38 = [v61 contentView];
  v39 = [v38 0x1FBBB4950];
  v41 = [v40 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v39);
  *&v4 = MEMORY[0x1E69E5920](v40).n128_u64[0];
  v58[2] = v41;
  v42 = [v63 view];
  if (v42)
  {
    v37 = v42;
  }

  else
  {
    LOBYTE(v13) = 2;
    v18 = 49;
    LODWORD(v23) = 0;
    sub_1C5596C94();
    __break(1u);
  }

  v33 = [v37 0x1FBB20D25];
  MEMORY[0x1E69E5920](v37);
  (MEMORY[0x1E69E5928])();
  v31 = [v61 contentView];
  v32 = [v31 0x1FBB20D25];
  v34 = [v33 constraintEqualToAnchor_];
  MEMORY[0x1E69E5920](v32);
  MEMORY[0x1E69E5920](v33);
  v58[3] = v34;
  sub_1C540FCD8();
  v35 = sub_1C5596704();

  [v57 activateConstraints_];
  MEMORY[0x1E69E5920](v35);
  (MEMORY[0x1E69E5928])();
  v36 = [v61 primaryButton];
  if (v36)
  {
    (MEMORY[0x1E69E5920])();
    (MEMORY[0x1E69E5928])();
    [v36 addTarget_action_forControlEvents_];
    v5 = swift_unknownObjectRelease();
    v29 = (*((*v61 & *MEMORY[0x1E69E7D40]) + 0x68))(v5);
    v6 = [v29 suggestedContacts];
    v30 = v6;
    if (v6)
    {
      sub_1C5403328();
      v27 = sub_1C5596714();
      MEMORY[0x1E69E5920](v30);
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28)
    {
      MEMORY[0x1E69E5920](v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCD0);
      sub_1C54F25C4();
      v7 = sub_1C55968F4();
      if ((v7 & 1) == 0)
      {
        MEMORY[0x1E69E5928](v36);
        [v36 setEnabled_];
        MEMORY[0x1E69E5920](v36);
      }
    }

    else
    {
      MEMORY[0x1E69E5920](v29);
    }

    MEMORY[0x1E69E5920](v36);
  }

  else
  {
    (MEMORY[0x1E69E5920])();
  }

  (MEMORY[0x1E69E5928])();
  v26 = [v61 secondaryButton];
  (MEMORY[0x1E69E5920])();
  if (v26)
  {
    (MEMORY[0x1E69E5928])();
    [v26 addTarget_action_forControlEvents_];
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v26);
  }

  [objc_opt_self() isSolariumEnabled];
  sub_1C55965F4();
  sub_1C54637B4();

  v65 = [objc_opt_self() accessoryButton];
  sub_1C5594CF4();
  v24 = sub_1C5596554();

  [v65 setTitle:v24 forState:0];
  MEMORY[0x1E69E5920](v24);
  (MEMORY[0x1E69E5928])();
  [v65 addTarget_action_forControlEvents_];
  swift_unknownObjectRelease();
  (MEMORY[0x1E69E5928])();
  v25 = [v61 headerView];
  [v25 addAccessoryButton_];
  MEMORY[0x1E69E5920](v25);
  MEMORY[0x1E69E5920](v65);

  MEMORY[0x1E69E5920](v60);
  *&result = MEMORY[0x1E69E5920](v63).n128_u64[0];
  return result;
}

unint64_t sub_1C54F25C4()
{
  v2 = qword_1EC15DE20;
  if (!qword_1EC15DE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BCD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DE20);
    return WitnessTable;
  }

  return v2;
}

void sub_1C54F269C()
{
  v13 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x98))();
  if (v13)
  {
    v11 = (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x80))();
    swift_getObjectType();
    [v11 didSelectLocalContactFor_];
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v13);
  }

  else
  {
    v9 = (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x68))();
    v10 = [v9 suggestedContacts];
    if (v10)
    {
      sub_1C5403328();
      v7 = sub_1C5596714();
      MEMORY[0x1E69E5920](v10);
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      sub_1C5594CF4();
      sub_1C541439C();
      MEMORY[0x1E69E5920](v9);
      sub_1C5403328();
      v4 = sub_1C5596744();

      v5 = v4;
      v6 = 0;
    }

    else
    {
      sub_1C541439C();
      MEMORY[0x1E69E5920](v9);
      v5 = 0;
      v6 = 1;
    }

    if ((v6 & 1) == 0 && v5 == 0)
    {
      v2 = (*((*v12 & *MEMORY[0x1E69E7D40]) + 0x80))(v1);
      swift_getObjectType();
      [v2 didTapPrimaryButton];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1C54F2A70()
{
  v2 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0x80))();
  swift_getObjectType();
  [v2 didTapDismissAddRC];
  return swift_unknownObjectRelease();
}

double sub_1C54F2B40(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  (*((*v1 & *MEMORY[0x1E69E7D40]) + 0xA0))(a1);
  (MEMORY[0x1E69E5928])();
  v9 = [v8 primaryButton];
  if (v9)
  {
    v3 = (MEMORY[0x1E69E5920])();
    v4 = (*((*v8 & *MEMORY[0x1E69E7D40]) + 0x98))(v3);
    v6 = v4;
    if (v4)
    {
      [v4 isFamilyMember];
      sub_1C55965F4();
      sub_1C54637B4();

      sub_1C5594CF4();
      v5 = sub_1C5596554();

      [v9 setTitle:v5 forState:0];
      MEMORY[0x1E69E5920](v5);
      MEMORY[0x1E69E5928](v9);
      [v9 setEnabled_];
      MEMORY[0x1E69E5920](v9);

      MEMORY[0x1E69E5920](v6);
    }

    *&result = MEMORY[0x1E69E5920](v9).n128_u64[0];
  }

  else
  {
    *&result = (MEMORY[0x1E69E5920])().n128_u64[0];
  }

  return result;
}

double sub_1C54F2EA4()
{
  v8[2] = 0;
  sub_1C54F30FC();
  sub_1C54F3160();
  sub_1C54F31C4(1);
  v4 = sub_1C54F3208();
  v8[1] = v4;
  v8[0] = [v4 primaryButton];
  if (v8[0])
  {
    v2 = v8[0];
    MEMORY[0x1E69E5928](v8[0]);
    sub_1C5401EF8(v8);
    [v2 setHidden_];
    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    sub_1C5401EF8(v8);
  }

  sub_1C548C840();
  (MEMORY[0x1E69E5928])();
  v7[3] = type metadata accessor for AccountRecoveryContactUpsellSelectorVC();
  v7[0] = v3;
  v6 = sub_1C548BF04(24, v7, sel_dismissLearnMoreSheet);
  MEMORY[0x1E69E5928](v4);
  v1 = [v4 navigationItem];
  MEMORY[0x1E69E5920](v4);
  MEMORY[0x1E69E5928](v6);
  [v1 setRightBarButtonItem_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v1);
  sub_1C54F3248();
  MEMORY[0x1E69E5928](v4);
  v5 = sub_1C54F32AC(v4);
  [v3 presentViewController_animated_completion_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

unint64_t sub_1C54F30FC()
{
  v2 = qword_1EC15DE28;
  if (!qword_1EC15DE28)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15DE28);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C54F3160()
{
  v2 = qword_1EC15DE30;
  if (!qword_1EC15DE30)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15DE30);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C54F3248()
{
  v2 = qword_1EC15DE38;
  if (!qword_1EC15DE38)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15DE38);
    return ObjCClassMetadata;
  }

  return v2;
}

id AccountRecoveryContactUpsellSelectorVC.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) initWithViewModel_];
  swift_unknownObjectRelease();
  return v3;
}

id AccountRecoveryContactUpsellSelectorVC.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = objc_allocWithZone(v6);
  v17 = sub_1C5596554();
  if (a4)
  {
    v12 = sub_1C5596554();

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    v11 = sub_1C5596554();

    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:v11 contentLayout:?];
  }

  else
  {
    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:0 contentLayout:?];
  }

  v10 = v7;
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v17);

  return v10;
}

id AccountRecoveryContactUpsellSelectorVC.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v13 = sub_1C5596554();
  if (a4)
  {
    v8 = sub_1C5596554();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v7 = [v11 initWithTitle:v13 detailText:? icon:? contentLayout:?];
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);

  return v7;
}

id AccountRecoveryContactUpsellSelectorVC.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountRecoveryContactUpsellSelectorVC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C54F3C48()
{
  v2 = [v0 initWithViewModel_];
  swift_unknownObjectRelease();
  return v2;
}

id sub_1C54F3C90(uint64_t a1)
{
  v4 = [v1 initWithRootViewController_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

uint64_t sub_1C54F3D80()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t sub_1C54F3E2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x88))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C54F3ECC(uint64_t *a1, void *a2)
{
  sub_1C540955C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x90))(v5);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C54F3F78()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594CF4();
  sub_1C5594E94();
}

void (*sub_1C54F4024(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C54031B4;
}

uint64_t sub_1C54F410C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C54F4188(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE8);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*sub_1C54F42DC(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE8);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_1C54F410C();
  return sub_1C54F4400;
}

void sub_1C54F4400(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C54F4188(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C54F4188(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C54F44FC@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel__trustedContacts;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C54F459C(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel__trustedContacts;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1C54F46FC()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t sub_1C54F47A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xB8))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C54F4848(uint64_t *a1, void *a2)
{
  sub_1C540955C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xC0))(v5);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C54F48F4()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594CF4();
  sub_1C5594E94();
}

void (*sub_1C54F49A0(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;
  (MEMORY[0x1E69E5928])();
  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_1C5594E74();
  return sub_1C54031B4;
}

uint64_t sub_1C54F4A88()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C54F4B04(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE8);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v11 = v2;
  v10 = v1;
  (*(v5 + 16))();
  v4[2] = &v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  sub_1C5594E64();
  swift_endAccess();
  return (*(v5 + 8))(v7, v8);
}

void (*sub_1C54F4C58(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE8);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_1C54F4A88();
  return sub_1C54F4D7C;
}

void sub_1C54F4D7C(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C54F4B04(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C54F4B04(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C54F4E78@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel__trustedContactOwners;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C54F4F18(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel__trustedContactOwners;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1C54F5078()
{
  v2 = *(v0 + OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel_accountManager);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1C54F50C0()
{
  v2 = *(v0 + OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel_contactsProvider);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1C54F5108()
{
  v2 = *(v0 + OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel_highlightRowIdentifier);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54F517C()
{
  v2 = *(v0 + OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel_telemetryFlowID);
  sub_1C5594CF4();
  return v2;
}

void *sub_1C54F5264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v53 = a1;
  v52 = a2;
  v43 = a3;
  v51 = a4;
  v45 = a5;
  v48 = a6;
  v50 = a7;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v56 = 0;
  v57 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  v29 = *(v37 - 8);
  v30 = v37 - 8;
  v28 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53);
  v36 = &v27 - v28;
  v62 = v8;
  v61 = v9;
  v59 = v10;
  v60 = v11;
  v44 = 1;
  v58 = v12 & 1;
  v56 = v13;
  v57 = v14;
  v63 = v7;
  v32 = v7;
  v31 = OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel__trustedContacts;
  v46 = 0;
  v33 = sub_1C5403328();
  v15 = sub_1C5596E04();
  sub_1C5402C5C(v15, v36);
  v39 = *(v29 + 32);
  v38 = v29 + 32;
  v39(&v32[v31], v36, v37);
  v35 = v63;
  v34 = OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel__trustedContactOwners;
  v16 = sub_1C5596E04();
  sub_1C5402C5C(v16, v36);
  v39(&v35[v34], v36, v37);
  v40 = v63;
  MEMORY[0x1E69E5928](v53);
  v17 = v52;
  *&v40[OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel_accountManager] = v53;
  v41 = v63;
  MEMORY[0x1E69E5928](v17);
  *&v41[OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel_contactsProvider] = v52;
  v42 = v63;
  sub_1C5594CF4();
  v18 = v44;
  v19 = v45;
  v20 = v51;
  v21 = &v42[OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel_highlightRowIdentifier];
  *v21 = v43;
  v21[1] = v20;
  v63[OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel_type] = v19 & v18;
  v47 = v63;
  sub_1C5594CF4();
  v22 = v50;
  v23 = &v47[OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel_telemetryFlowID];
  *v23 = v48;
  v23[1] = v22;
  v49.receiver = v63;
  v49.super_class = type metadata accessor for LegacyContactsViewModel();
  v55 = v49;
  v54 = objc_msgSendSuper2(&v55, sel_init);
  v24 = MEMORY[0x1E69E5928](v54);
  v63 = v54;
  (*((*v54 & *MEMORY[0x1E69E7D40]) + 0x100))(v24);
  v25 = sub_1C54F56B4();
  sub_1C5472438(v49.super_class, v25);

  MEMORY[0x1E69E5920](v52);
  MEMORY[0x1E69E5920](v53);
  MEMORY[0x1E69E5920](v63);
  return v54;
}

uint64_t type metadata accessor for LegacyContactsViewModel()
{
  v1 = qword_1EC166840;
  if (!qword_1EC166840)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1C54F56B4()
{
  v2 = qword_1EC15DE40;
  if (!qword_1EC15DE40)
  {
    type metadata accessor for LegacyContactsViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DE40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54F5734()
{
  v5 = type metadata accessor for LegacyContactsViewModel();
  v0 = sub_1C54F56B4();
  v6 = sub_1C54720B4(v5, v0);
  if (v6)
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 canHaveBeneficiaryForAccount_];
    MEMORY[0x1E69E5920](v2);
    MEMORY[0x1E69E5920](v6);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1C54F581C()
{
  v5 = type metadata accessor for LegacyContactsViewModel();
  v0 = sub_1C54F56B4();
  v6 = sub_1C54720B4(v5, v0);
  if (v6)
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 canBeBeneficiaryForAccount_];
    MEMORY[0x1E69E5920](v2);
    MEMORY[0x1E69E5920](v6);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1C54F5904()
{
  v13 = MEMORY[0x1E69E85E0];
  v16 = &unk_1C55B48E8;
  v18 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860);
  v11 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v15 = &v11 - v11;
  v18 = v0;
  v14 = 0;
  v2 = sub_1C5596814();
  (*(*(v2 - 8) + 56))(v15, 1);
  MEMORY[0x1E69E5928](v12);
  sub_1C55967E4();
  v3 = sub_1C55967D4();
  v4 = v12;
  v17 = v3;
  v5 = swift_allocObject();
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v5[2] = v17;
  v5[3] = v6;
  v5[4] = v4;
  sub_1C54061EC(v7, v7, v8, v9, v5, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C54F5A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[186] = a4;
  v4[167] = v4;
  v4[173] = 0;
  v4[173] = a4;
  sub_1C55967E4();
  v4[187] = sub_1C55967D4();
  v7 = sub_1C55967A4();
  v4[188] = v7;
  v4[189] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C54F5B38, v7, v5);
}

uint64_t sub_1C54F5B38()
{
  v1 = v0[186];
  v5 = v1;
  v0[167] = v0;
  MEMORY[0x1E69E5928](v1);
  v4 = swift_task_alloc();
  v0[190] = v4;
  *(v4 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCD0);
  swift_asyncLet_begin();
  MEMORY[0x1E69E5928](v5);
  v2 = swift_task_alloc();
  v0[191] = v2;
  *(v2 + 16) = v5;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB8](v0 + 2, v0 + 179, sub_1C54F5C98, v6 + 1296);
}

uint64_t sub_1C54F5C98()
{
  v0[167] = v0;
  v0[192] = v0[179];
  sub_1C5594CF4();

  return MEMORY[0x1EEE6DEB8](v2 + 656, v2 + 1480, sub_1C54F5D1C, v2 + 1344);
}

uint64_t sub_1C54F5D48()
{
  v3 = v0[192];
  v1 = v0[186];
  v0[167] = v0;
  v5 = v0[185];
  sub_1C5594CF4();
  v4 = MEMORY[0x1E69E7D40];
  (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x90))(v3);
  (*((*v1 & *v4) + 0xC0))(v5);

  return MEMORY[0x1EEE6DEB0](v6 + 656, v0 + 185, sub_1C54F5E60, v6 + 1392);
}

uint64_t sub_1C54F5E8C()
{
  v2 = *(v0 + 1488);
  *(v0 + 1336) = v0;

  MEMORY[0x1E69E5920](v2);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1432, sub_1C54F5F28, v0 + 1440);
}

uint64_t sub_1C54F5F54()
{
  v3 = *(v0 + 1488);
  *(v0 + 1336) = v0;

  MEMORY[0x1E69E5920](v3);

  v1 = *(*(v0 + 1336) + 8);

  return v1();
}

uint64_t sub_1C54F6008(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C54F5A7C(a1, v6, v7, v8);
}

uint64_t sub_1C54F60E0(uint64_t a1, uint64_t a2)
{
  v2[22] = a2;
  v2[21] = a1;
  v2[18] = v2;
  v2[19] = 0;
  v2[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C54F6120, 0, 0);
}

uint64_t sub_1C54F6120()
{
  v1 = *(v0 + 176);
  *(v0 + 144) = v0;
  v4 = *(v1 + OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel_contactsProvider);
  *(v0 + 184) = v4;
  MEMORY[0x1E69E5928](v4);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_1C5405EC4;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD38);
  *(v0 + 112) = v3;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_1C5405C44;
  *(v0 + 104) = &block_descriptor_33_0;
  [v4 fetchMyBeneficiaries_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C54F6268(uint64_t a1, uint64_t a2)
{
  v2[22] = a2;
  v2[21] = a1;
  v2[18] = v2;
  v2[19] = 0;
  v2[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C54F62A8, 0, 0);
}

uint64_t sub_1C54F62A8()
{
  v1 = *(v0 + 176);
  *(v0 + 144) = v0;
  v4 = *(v1 + OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel_contactsProvider);
  *(v0 + 184) = v4;
  MEMORY[0x1E69E5928](v4);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_1C5405EC4;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD38);
  *(v0 + 112) = v3;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = sub_1C5405C44;
  *(v0 + 104) = &block_descriptor_14;
  [v4 fetchMyBenefactors_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

double sub_1C54F6440@<D0>(void *a1@<X8>)
{
  sub_1C54F6584();
  v5 = type metadata accessor for LegacyContactsViewModel();
  v1 = sub_1C54F56B4();
  v6 = sub_1C5472008(v5, v1);
  if (v6)
  {
    v3 = v6;
  }

  else
  {
    sub_1C5596C94();
    __break(1u);
  }

  v7 = sub_1C54F65E8(v3);
  [v7 start];
  MEMORY[0x1E69E5928](v7);
  *a1 = nullsub_1(v7);
  *&result = MEMORY[0x1E69E5920](v7).n128_u64[0];
  return result;
}

unint64_t sub_1C54F6584()
{
  v2 = qword_1EC15DE48;
  if (!qword_1EC15DE48)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15DE48);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_1C54F6628()
{
  v6 = 0;
  v12 = 0;
  sub_1C5406B78();
  v5 = [swift_getObjCClassFromMetadata() defaultCenter];
  v1 = v0;
  v7 = sub_1C5527698(*(v0 + OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel_type));
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v3 = 0;
  [v5 removeObserver:v4 name:v7 object:{0, v2}];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t sub_1C54F6848()
{
  v9 = 0;
  v15 = 0;
  sub_1C5406B78();
  v7 = [swift_getObjCClassFromMetadata() defaultCenter];
  v1 = v0;
  v8 = sel_fetchAllTrustedContacts;
  v10 = sub_1C5527698(*(v0 + OBJC_IVAR____TtC14AppleAccountUI23LegacyContactsViewModel_type));
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v5 = 0;
  v2 = v6;
  v4 = 0;
  [v7 addObserver:v6 selector:sel_fetchAllTrustedContacts name:v10 object:?];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x100))();
}

id sub_1C54F6B58()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyContactsViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C54F6F14@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LegacyContactsViewModel();
  result = sub_1C5594E34();
  *a1 = result;
  return result;
}

id sub_1C54F6F50(uint64_t a1)
{
  v4 = [v1 initWithAccount_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

unint64_t sub_1C54F6FD4(uint64_t a1)
{
  result = sub_1C54F7000();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C54F7000()
{
  v2 = qword_1EC15DE50;
  if (!qword_1EC15DE50)
  {
    type metadata accessor for LegacyContactsViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DE50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54F709C()
{
  updated = sub_1C540848C();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1C54F71B8()
{
  v2 = qword_1EC15DE58;
  if (!qword_1EC15DE58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15DE58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54F7230(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C54F60E0(a1, v6);
}

uint64_t sub_1C54F72F0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1C5405B1C;

  return sub_1C54F6268(a1, v6);
}

double sub_1C54F7430@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  v7 = v4;
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x60))(v2);
  sub_1C5458604(v6, a2);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1C54F74D8(uint64_t a1, void *a2)
{
  sub_1C5432498(a1, v5);
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x68))(v5);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C54F7580@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___AAUISignOutActionInvokingOBWelcomeController_flowDirector;
  swift_beginAccess();
  sub_1C5432498(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1C54F75E4(uint64_t a1)
{
  v6 = 0;
  v7 = a1;
  sub_1C5432498(a1, v5);
  __dst = (v1 + OBJC_IVAR___AAUISignOutActionInvokingOBWelcomeController_flowDirector);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  sub_1C5458604(v5, __dst);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1C54F76DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x78))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C54F777C(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x80))(v5);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C54F7828()
{
  v2 = (v0 + OBJC_IVAR___AAUISignOutActionInvokingOBWelcomeController_stage);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C54F7898(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignOutActionInvokingOBWelcomeController_stage);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *SignOutActionInvokingOBWelcomeController.init(model:stage:flowDirector:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v13 = a1;
  v12 = a2;
  v11 = a3;
  MEMORY[0x1E69E5928](a2);
  *OBJC_IVAR___AAUISignOutActionInvokingOBWelcomeController_stage = a2;
  v4 = v14;
  sub_1C5432498(a3, v10);
  sub_1C5458604(v10, &v4[OBJC_IVAR___AAUISignOutActionInvokingOBWelcomeController_flowDirector]);
  v9.receiver = v14;
  v9.super_class = type metadata accessor for SignOutActionInvokingOBWelcomeController();
  v8 = objc_msgSendSuper2(&v9, sel_initWithViewModel_, a1);
  MEMORY[0x1E69E5928](v8);
  v14 = v8;
  SignOutActionInvokingOBWelcomeController.setupInvokingActions()();
  SignOutActionInvokingOBWelcomeController.setupNavigationBarButton()();
  __swift_destroy_boxed_opaque_existential_0(a3);
  MEMORY[0x1E69E5920](a2);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v14);
  return v8;
}

Swift::Void __swiftcall SignOutActionInvokingOBWelcomeController.setupInvokingActions()()
{
  v61 = sub_1C54FAD3C;
  v62 = sub_1C54FAD44;
  v63 = sub_1C545AE98;
  v64 = sub_1C545C6DC;
  v65 = sub_1C545C6D4;
  v66 = sub_1C545C6D4;
  v67 = sub_1C545C6E8;
  v85 = 0;
  v68 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v69 = sub_1C5594C74();
  v70 = *(v69 - 8);
  v71 = v69 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = v20 - v72;
  v85 = MEMORY[0x1EEE9AC00](v74);
  MEMORY[0x1E69E5928](v85);
  v75 = [v74 primaryButton];
  if (v75)
  {
    v60 = v75;
    v58 = v75;
    v79 = v75;
    MEMORY[0x1E69E5920](v74);
    MEMORY[0x1E69E5928](v74);
    v0 = [v74 secondaryButton];
    v59 = v0;
    if (v0)
    {
      v57 = v59;
      v56 = v59;
      v78 = v59;
      MEMORY[0x1E69E5920](v74);
      v50 = 0;
      v45 = sub_1C545C6F4();
      MEMORY[0x1E69E5928](v74);
      v46 = 7;
      v42 = swift_allocObject();
      *(v42 + 16) = v74;
      v44 = sub_1C54398B0();
      v43 = v1;
      v41 = sub_1C545B878();
      sub_1C53FE664();
      v55 = sub_1C5596A44();
      v77 = v55;
      MEMORY[0x1E69E5928](v74);
      MEMORY[0x1E69E5928](v56);
      v2 = swift_allocObject();
      v3 = v56;
      v48 = v2;
      *(v2 + 16) = v74;
      *(v2 + 24) = v3;
      v51 = sub_1C54398B0();
      v49 = v4;
      v47 = sub_1C545B878();
      sub_1C53FE664();
      v54 = sub_1C5596A44();
      v76 = v54;
      v52 = 0x1FB0D4000uLL;
      v53 = 64;
      [v58 0x1FB0D4EF8];
      [v56 (v52 + 3832)];
      MEMORY[0x1E69E5920](v54);
      MEMORY[0x1E69E5920](v55);
      MEMORY[0x1E69E5920](v56);
      MEMORY[0x1E69E5920](v58);
      return;
    }

    MEMORY[0x1E69E5920](v74);
    MEMORY[0x1E69E5920](v58);
  }

  else
  {
    MEMORY[0x1E69E5920](v74);
  }

  v5 = v73;
  v6 = sub_1C54B0910();
  (*(v70 + 16))(v5, v6, v69);
  MEMORY[0x1E69E5928](v74);
  v30 = 7;
  v31 = swift_allocObject();
  *(v31 + 16) = v74;
  v39 = sub_1C5594C54();
  v40 = sub_1C5596954();
  v28 = 17;
  v33 = swift_allocObject();
  *(v33 + 16) = 64;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v29 = 32;
  v7 = swift_allocObject();
  v8 = v31;
  v32 = v7;
  *(v7 + 16) = v63;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v32;
  v36 = v9;
  *(v9 + 16) = v64;
  *(v9 + 24) = v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v35 = sub_1C5596E04();
  v37 = v11;

  v12 = v33;
  v13 = v37;
  *v37 = v65;
  v13[1] = v12;

  v14 = v34;
  v15 = v37;
  v37[2] = v66;
  v15[3] = v14;

  v16 = v36;
  v17 = v37;
  v37[4] = v67;
  v17[5] = v16;
  sub_1C540FCD8();

  if (os_log_type_enabled(v39, v40))
  {
    v18 = v68;
    v21 = sub_1C5596A74();
    v20[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v22 = sub_1C5419DC0(1);
    v23 = sub_1C5419DC0(0);
    v24 = &v84;
    v84 = v21;
    v25 = &v83;
    v83 = v22;
    v26 = &v82;
    v82 = v23;
    sub_1C5419E14(2, &v84);
    sub_1C5419E14(1, v24);
    v80 = v65;
    v81 = v33;
    sub_1C5419E28(&v80, v24, v25, v26);
    v27 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v80 = v66;
      v81 = v34;
      sub_1C5419E28(&v80, &v84, &v83, &v82);
      v20[0] = 0;
      v80 = v67;
      v81 = v36;
      sub_1C5419E28(&v80, &v84, &v83, &v82);
      _os_log_impl(&dword_1C5355000, v39, v40, "%@: Failed to create buttons.", v21, 0xCu);
      sub_1C5419E74(v22);
      sub_1C5419E74(v23);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v19 = MEMORY[0x1E69E5920](v39);
  (*(v70 + 8))(v73, v69, v19);
}

Swift::Void __swiftcall SignOutActionInvokingOBWelcomeController.setupNavigationBarButton()()
{
  v12 = 0;
  v11 = 0;
  v9 = 0;
  if ([objc_opt_self() isSolariumEnabled])
  {
    v6 = [v7 navigationItem];
    (MEMORY[0x1E69E5920])();
    sub_1C548C840();
    (MEMORY[0x1E69E5928])();
    v8[3] = type metadata accessor for SignOutActionInvokingOBWelcomeController();
    v8[0] = v7;
    v5 = sub_1C548BF04(24, v8, sel_cancelFlow);
    [v6 setRightBarButtonItem_];
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v6);
  }

  else
  {
    sub_1C5418C84();
    sub_1C55965F4();
    v4 = sub_1C54FA360();
    if (v4)
    {
      v1 = [objc_opt_self() systemFillColor];
      v2 = [v4 imageWithTintColor_renderingMode_];
      MEMORY[0x1E69E5920](v1);
      MEMORY[0x1E69E5920](v4);
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v11 = v3;
    sub_1C548C840();
    MEMORY[0x1E69E5928](v3);
    (MEMORY[0x1E69E5928])();
    v10[3] = type metadata accessor for SignOutActionInvokingOBWelcomeController();
    v10[0] = v7;
    v9 = sub_1C54FA3D4(v3, 0, v10, sel_cancelFlow);
    v0 = [v7 navigationItem];
    (MEMORY[0x1E69E5920])();
    [v0 setRightBarButtonItem_];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v0);
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v3);
  }
}

id SignOutActionInvokingOBWelcomeController.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) initWithViewModel_];
  swift_unknownObjectRelease();
  return v3;
}

id SignOutActionInvokingOBWelcomeController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = objc_allocWithZone(v6);
  v17 = sub_1C5596554();
  if (a4)
  {
    v12 = sub_1C5596554();

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    v11 = sub_1C5596554();

    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:v11 contentLayout:?];
  }

  else
  {
    v7 = [v15 initWithTitle:v17 detailText:v13 symbolName:0 contentLayout:?];
  }

  v10 = v7;
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);
  MEMORY[0x1E69E5920](v17);

  return v10;
}

id SignOutActionInvokingOBWelcomeController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v13 = sub_1C5596554();
  if (a4)
  {
    v8 = sub_1C5596554();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v7 = [v11 initWithTitle:v13 detailText:? icon:? contentLayout:?];
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v13);

  return v7;
}

id SignOutActionInvokingOBWelcomeController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignOutActionInvokingOBWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1C54F91F0(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((**v1 & *MEMORY[0x1E69E7D40]) + 0x70))();
  return sub_1C545A074;
}

Swift::Void __swiftcall SignOutActionInvokingOBWelcomeController.viewWillAppear(_:)(Swift::Bool a1)
{
  v7 = a1;
  v6 = v1;
  (MEMORY[0x1E69E5928])();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SignOutActionInvokingOBWelcomeController();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, 1);
  (MEMORY[0x1E69E5920])();
  (MEMORY[0x1E69E5928])();
  v4 = [v3 secondaryButton];
  if (v4)
  {
    v2 = v4;
    MEMORY[0x1E69E5928](v4);
    sub_1C5401EF8(&v4);
    [v2 hidesBusyIndicator];
    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    sub_1C5401EF8(&v4);
    (MEMORY[0x1E69E5920])();
  }
}

uint64_t sub_1C54F9460(uint64_t a1, uint64_t *a2)
{
  v42 = a1;
  v48 = a2;
  v50 = sub_1C545AE98;
  v54 = sub_1C545C6DC;
  v56 = sub_1C545C6D4;
  v58 = sub_1C545C6D4;
  v61 = sub_1C545C6E8;
  v78 = 0;
  v77 = 0;
  v41 = 0;
  v47 = sub_1C5594C74();
  v45 = *(v47 - 8);
  v46 = v47 - 8;
  v43 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = &v25 - v43;
  v44 = &v25 - v43;
  v78 = MEMORY[0x1EEE9AC00](v42);
  v77 = v3;
  v4 = sub_1C54B0910();
  (*(v45 + 16))(v2, v4, v47);
  MEMORY[0x1E69E5928](v48);
  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v65 = sub_1C5594C54();
  v66 = sub_1C5596974();
  v49 = 17;
  v57 = swift_allocObject();
  *(v57 + 16) = 64;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v51 = 32;
  v5 = swift_allocObject();
  v6 = v53;
  v55 = v5;
  *(v5 + 16) = v50;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v55;
  v62 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v60 = sub_1C5596E04();
  v63 = v9;

  v10 = v57;
  v11 = v63;
  *v63 = v56;
  v11[1] = v10;

  v12 = v59;
  v13 = v63;
  v63[2] = v58;
  v13[3] = v12;

  v14 = v62;
  v15 = v63;
  v63[4] = v61;
  v15[5] = v14;
  sub_1C540FCD8();

  if (os_log_type_enabled(v65, v66))
  {
    v16 = v41;
    v34 = sub_1C5596A74();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v35 = sub_1C5419DC0(1);
    v36 = sub_1C5419DC0(0);
    v37 = &v71;
    v71 = v34;
    v38 = &v70;
    v70 = v35;
    v39 = &v69;
    v69 = v36;
    sub_1C5419E14(2, &v71);
    sub_1C5419E14(1, v37);
    v67 = v56;
    v68 = v57;
    sub_1C5419E28(&v67, v37, v38, v39);
    v40 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_1C5419E28(&v67, &v71, &v70, &v69);
      v32 = 0;
      v67 = v61;
      v68 = v62;
      sub_1C5419E28(&v67, &v71, &v70, &v69);
      _os_log_impl(&dword_1C5355000, v65, v66, "%@: Advancing action.", v34, 0xCu);
      sub_1C5419E74(v35);
      sub_1C5419E74(v36);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v17 = v48;
  v18 = MEMORY[0x1E69E5920](v65);
  v19 = (*(v45 + 8))(v44, v47, v18);
  v20 = *v17;
  v26 = MEMORY[0x1E69E7D40];
  v21 = *((v20 & *MEMORY[0x1E69E7D40]) + 0x60);
  v31 = &v74;
  v21(v19);
  v22 = v48;
  v28 = v75;
  v29 = v76;
  v27 = __swift_project_boxed_opaque_existential_0(v31, v75);
  v23 = (*((*v22 & *v26) + 0x78))();
  v30 = v72;
  v72[0] = 0;
  v72[1] = v23;
  v73 = 0;
  (*(v29 + 32))();
  sub_1C545CDC0(v30);
  return __swift_destroy_boxed_opaque_existential_0(v31);
}

uint64_t sub_1C54F9BC4(uint64_t a1, uint64_t *a2, void *a3)
{
  v45 = a1;
  v51 = a2;
  v44 = a3;
  v53 = sub_1C545AE98;
  v57 = sub_1C545C6DC;
  v59 = sub_1C545C6D4;
  v61 = sub_1C545C6D4;
  v64 = sub_1C545C6E8;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v43 = 0;
  v50 = sub_1C5594C74();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = &v27 - v46;
  v47 = &v27 - v46;
  v82 = MEMORY[0x1EEE9AC00](v45);
  v81 = v4;
  v80 = v5;
  v6 = sub_1C54B0910();
  (*(v48 + 16))(v3, v6, v50);
  MEMORY[0x1E69E5928](v51);
  v55 = 7;
  v56 = swift_allocObject();
  *(v56 + 16) = v51;
  v68 = sub_1C5594C54();
  v69 = sub_1C5596974();
  v52 = 17;
  v60 = swift_allocObject();
  *(v60 + 16) = 64;
  v62 = swift_allocObject();
  *(v62 + 16) = 8;
  v54 = 32;
  v7 = swift_allocObject();
  v8 = v56;
  v58 = v7;
  *(v7 + 16) = v53;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v58;
  v65 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v63 = sub_1C5596E04();
  v66 = v11;

  v12 = v60;
  v13 = v66;
  *v66 = v59;
  v13[1] = v12;

  v14 = v62;
  v15 = v66;
  v66[2] = v61;
  v15[3] = v14;

  v16 = v65;
  v17 = v66;
  v66[4] = v64;
  v17[5] = v16;
  sub_1C540FCD8();

  if (os_log_type_enabled(v68, v69))
  {
    v18 = v43;
    v36 = sub_1C5596A74();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v37 = sub_1C5419DC0(1);
    v38 = sub_1C5419DC0(0);
    v39 = &v74;
    v74 = v36;
    v40 = &v73;
    v73 = v37;
    v41 = &v72;
    v72 = v38;
    sub_1C5419E14(2, &v74);
    sub_1C5419E14(1, v39);
    v70 = v59;
    v71 = v60;
    sub_1C5419E28(&v70, v39, v40, v41);
    v42 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v70 = v61;
      v71 = v62;
      sub_1C5419E28(&v70, &v74, &v73, &v72);
      v34 = 0;
      v70 = v64;
      v71 = v65;
      sub_1C5419E28(&v70, &v74, &v73, &v72);
      _os_log_impl(&dword_1C5355000, v68, v69, "%@: Declining action.", v36, 0xCu);
      sub_1C5419E74(v37);
      sub_1C5419E74(v38);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v19 = v51;
  v20 = MEMORY[0x1E69E5920](v68);
  (*(v48 + 8))(v47, v50, v20);
  v21 = [v44 showsBusyIndicator];
  v22 = *v19;
  v28 = MEMORY[0x1E69E7D40];
  v23 = *((v22 & *MEMORY[0x1E69E7D40]) + 0x60);
  v33 = &v77;
  v23(v21);
  v24 = v51;
  v30 = v78;
  v31 = v79;
  v29 = __swift_project_boxed_opaque_existential_0(v33, v78);
  v25 = (*((*v24 & *v28) + 0x78))();
  v32 = v75;
  v75[0] = 0;
  v75[1] = v25;
  v76 = 1;
  (*(v31 + 32))();
  sub_1C545CDC0(v32);
  return __swift_destroy_boxed_opaque_existential_0(v33);
}

id sub_1C54FA360()
{
  v1 = sub_1C5596554();
  v2 = [swift_getObjCClassFromMetadata() systemImageNamed_];
  MEMORY[0x1E69E5920](v1);

  return v2;
}

uint64_t sub_1C54FA42C()
{
  v47 = sub_1C545AE98;
  v51 = sub_1C545C6DC;
  v53 = sub_1C545C6D4;
  v55 = sub_1C545C6D4;
  v58 = sub_1C545C6E8;
  v74 = 0;
  v39 = 0;
  v44 = sub_1C5594C74();
  v42 = *(v44 - 8);
  v43 = v44 - 8;
  v40 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v0 = &v23 - v40;
  v41 = &v23 - v40;
  v74 = v1;
  v2 = sub_1C54B0910();
  (*(v42 + 16))(v0, v2, v44);
  MEMORY[0x1E69E5928](v45);
  v49 = 7;
  v50 = swift_allocObject();
  *(v50 + 16) = v45;
  v62 = sub_1C5594C54();
  v63 = sub_1C5596974();
  v46 = 17;
  v54 = swift_allocObject();
  *(v54 + 16) = 64;
  v56 = swift_allocObject();
  *(v56 + 16) = 8;
  v48 = 32;
  v3 = swift_allocObject();
  v4 = v50;
  v52 = v3;
  *(v3 + 16) = v47;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v52;
  v59 = v5;
  *(v5 + 16) = v51;
  *(v5 + 24) = v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v57 = sub_1C5596E04();
  v60 = v7;

  v8 = v54;
  v9 = v60;
  *v60 = v53;
  v9[1] = v8;

  v10 = v56;
  v11 = v60;
  v60[2] = v55;
  v11[3] = v10;

  v12 = v59;
  v13 = v60;
  v60[4] = v58;
  v13[5] = v12;
  sub_1C540FCD8();

  if (os_log_type_enabled(v62, v63))
  {
    v14 = v39;
    v32 = sub_1C5596A74();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v33 = sub_1C5419DC0(1);
    v34 = sub_1C5419DC0(0);
    v35 = &v68;
    v68 = v32;
    v36 = &v67;
    v67 = v33;
    v37 = &v66;
    v66 = v34;
    sub_1C5419E14(2, &v68);
    sub_1C5419E14(1, v35);
    v64 = v53;
    v65 = v54;
    sub_1C5419E28(&v64, v35, v36, v37);
    v38 = v14;
    if (v14)
    {

      __break(1u);
    }

    else
    {
      v64 = v55;
      v65 = v56;
      sub_1C5419E28(&v64, &v68, &v67, &v66);
      v30 = 0;
      v64 = v58;
      v65 = v59;
      sub_1C5419E28(&v64, &v68, &v67, &v66);
      _os_log_impl(&dword_1C5355000, v62, v63, "%@: Deferring action.", v32, 0xCu);
      sub_1C5419E74(v33);
      sub_1C5419E74(v34);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v15 = v45;
  v16 = MEMORY[0x1E69E5920](v62);
  v17 = (*(v42 + 8))(v41, v44, v16);
  v18 = *v15;
  v24 = MEMORY[0x1E69E7D40];
  v19 = *((v18 & *MEMORY[0x1E69E7D40]) + 0x60);
  v29 = &v71;
  v19(v17);
  v20 = v45;
  v26 = v72;
  v27 = v73;
  v25 = __swift_project_boxed_opaque_existential_0(v29, v72);
  v21 = (*((*v20 & *v24) + 0x78))();
  v28 = v69;
  v69[0] = 0;
  v69[1] = v21;
  v70 = 2;
  (*(v27 + 32))();
  sub_1C545CDC0(v28);
  return __swift_destroy_boxed_opaque_existential_0(v29);
}

id sub_1C54FABC0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v17 = a4;
  v18 = a3;
  v19 = a2;
  v20 = a1;
  if (a3[3])
  {
    v11 = v18[3];
    __swift_project_boxed_opaque_existential_0(v18, v11);
    v9 = *(v11 - 8);
    v10 = v9;
    v13 = &v7;
    v4 = MEMORY[0x1EEE9AC00](&v7);
    v12 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v4);
    v14 = sub_1C5596E14();
    (*(v10 + 8))(v12, v11);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v8 = [v16 initWithImage:v20 style:v19 target:v15 action:?];
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_1C54FAF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v10[7] = a4;

  MEMORY[0x1E69E5928](a3);
  v10[1] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DE70);
  MEMORY[0x1C6946C30](v10, v4);
  v9 = v10[0];

  MEMORY[0x1E69E5920](a3);
  return v9;
}

double sub_1C54FB038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[8] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;

  MEMORY[0x1E69E5928](a4);

  MEMORY[0x1E69E5928](a4);
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  MEMORY[0x1E69E5928](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DE70);
  sub_1C55960A4();
  sub_1C54FB16C(v10);

  MEMORY[0x1E69E5920](a4);
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1C54FB16C(uint64_t a1)
{

  MEMORY[0x1E69E5920](*(a1 + 16));
  return a1;
}

void (*sub_1C54FB1B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x80uLL);
  *a1 = v4;
  v4[14] = a4;
  v4[13] = a3;
  v4[12] = a2;

  MEMORY[0x1E69E5928](a4);
  *v4 = a2;
  v4[1] = a3;
  v4[2] = a4;
  v4[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DE70);
  MEMORY[0x1C6946C30]();
  return sub_1C54FB2D0;
}

void sub_1C54FB2D0(void **a1, char a2)
{
  v10 = *a1;
  if (a2)
  {
    v5 = v10[14];
    v4 = v10[13];
    v3 = v10[12];
    v2 = v10[9];
    MEMORY[0x1E69E5928](v2);

    MEMORY[0x1E69E5928](v5);
    v10[3] = v3;
    v10[4] = v4;
    v10[5] = v5;
    v10[10] = v2;
    sub_1C55960A4();
    sub_1C54FB16C((v10 + 3));
    MEMORY[0x1E69E5920](v10[9]);

    MEMORY[0x1E69E5920](v5);
  }

  else
  {
    v9 = v10[14];
    v8 = v10[13];
    v7 = v10[12];
    v6 = v10[9];

    MEMORY[0x1E69E5928](v9);
    v10[6] = v7;
    v10[7] = v8;
    v10[8] = v9;
    v10[11] = v6;
    sub_1C55960A4();
    sub_1C54FB16C((v10 + 6));

    MEMORY[0x1E69E5920](v9);
  }

  free(v10);
}

uint64_t sub_1C54FB488(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x1E69E5928](a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DE70);
  sub_1C55960C4();

  MEMORY[0x1E69E5920](a3);
  return v5;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1C54FB56C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x1E69E5928](a3);
}

double sub_1C54FB5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  MEMORY[0x1E69E5928](a3);
  v5 = v3[2];
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;

  MEMORY[0x1E69E5920](v5);

  *&result = MEMORY[0x1E69E5920](a3).n128_u64[0];
  return result;
}

uint64_t sub_1C54FB69C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  MEMORY[0x1E69E5920](v2);
  return MEMORY[0x1E69E5920](a1);
}

id sub_1C54FB6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_opt_self();
  v11 = sub_1C54FAF6C(a2, a3, a4, a5);
  v12 = [v10 imagePickerForContact_];
  MEMORY[0x1E69E5920](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DE78);
  sub_1C5595784();
  [v12 setDelegate_];
  swift_unknownObjectRelease();
  sub_1C54F3248();
  MEMORY[0x1E69E5928](v12);
  v13 = sub_1C54F32AC(v12);
  MEMORY[0x1E69E5920](v12);
  return v13;
}

uint64_t sub_1C54FB840()
{
  v2 = (v0 + OBJC_IVAR____TtCV14AppleAccountUI27ContactVisualIdentityPicker11Coordinator_parent);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[2];
  v5 = v2[3];

  MEMORY[0x1E69E5928](v4);
  MEMORY[0x1E69E5928](v5);
  swift_endAccess();
  return v3;
}

double sub_1C54FB8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  v6 = (v4 + OBJC_IVAR____TtCV14AppleAccountUI27ContactVisualIdentityPicker11Coordinator_parent);
  swift_beginAccess();
  v7 = v6[2];
  v8 = v6[3];
  *v6 = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;

  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  swift_endAccess();

  MEMORY[0x1E69E5920](a3);
  *&result = MEMORY[0x1E69E5920](a4).n128_u64[0];
  return result;
}

id sub_1C54FBAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;

  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  v4 = OBJC_IVAR____TtCV14AppleAccountUI27ContactVisualIdentityPicker11Coordinator_parent;
  *OBJC_IVAR____TtCV14AppleAccountUI27ContactVisualIdentityPicker11Coordinator_parent = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  v11.receiver = v16;
  v11.super_class = type metadata accessor for ContactVisualIdentityPicker.Coordinator();
  v10 = objc_msgSendSuper2(&v11, sel_init);
  MEMORY[0x1E69E5928](v10);
  v16 = v10;

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](v16);
  return v10;
}

id sub_1C54FBC64(void *a1)
{
  v23 = a1;
  v33 = 0;
  v42 = 0;
  v41 = 0;
  v22 = 0;
  v30 = sub_1C5594C74();
  v24 = v30;
  v25 = *(v30 - 8);
  v29 = v25;
  v26 = v25;
  v27 = *(v25 + 64);
  v1 = &v7 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v42 = MEMORY[0x1EEE9AC00](v23);
  v41 = v2;
  v3 = sub_1C54B05F8();
  (*(v29 + 16))(v1, v3, v30);
  v35 = sub_1C5594C54();
  v31 = v35;
  v34 = sub_1C5596934();
  v32 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v36 = sub_1C5596E04();
  if (os_log_type_enabled(v35, v34))
  {
    v4 = v22;
    v13 = sub_1C5596A74();
    v9 = v13;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v11 = 0;
    v14 = sub_1C5419DC0(0);
    v12 = v14;
    v15 = sub_1C5419DC0(v11);
    v40 = v13;
    v39 = v14;
    v38 = v15;
    v16 = 0;
    v17 = &v40;
    sub_1C5419E14(0, &v40);
    sub_1C5419E14(v16, v17);
    v37 = v36;
    v18 = &v7;
    MEMORY[0x1EEE9AC00](&v7);
    v19 = &v7 - 6;
    *(&v7 - 4) = v5;
    *(&v7 - 3) = &v39;
    *(&v7 - 2) = &v38;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v21 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v31, v32, "User canceled visual identity picker", v9, 2u);
      v7 = 0;
      sub_1C5419E74(v12);
      sub_1C5419E74(v15);
      sub_1C5596A54();

      v8 = v21;
    }
  }

  else
  {

    v8 = v22;
  }

  (*(v26 + 8))(v28, v24);
  return [v23 dismissViewControllerAnimated:1 completion:0];
}

void sub_1C54FC0CC(void *a1, void *a2, void *a3)
{
  v135 = a3;
  v138 = a2;
  v137 = a1;
  v153 = 0;
  v174 = 0;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v132 = 0;
  v133 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v134 = v51 - v133;
  v148 = sub_1C5594C74();
  v139 = v148;
  v140 = *(v148 - 8);
  v147 = v140;
  v141 = v140;
  v143 = *(v140 + 64);
  v3 = MEMORY[0x1EEE9AC00](v137);
  v145 = (v143 + 15) & 0xFFFFFFFFFFFFFFF0;
  v142 = v51 - v145;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v144 = v51 - v145;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v6 = v51 - v145;
  v146 = v51 - v145;
  v174 = v5;
  v173 = v7;
  v172 = v8;
  v171 = v9;
  v10 = sub_1C54B05F8();
  v149 = *(v147 + 16);
  v150 = (v147 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v149(v6, v10, v148);
  v156 = sub_1C5594C54();
  v151 = v156;
  v155 = sub_1C5596934();
  v152 = v155;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v157 = sub_1C5596E04();
  if (os_log_type_enabled(v156, v155))
  {
    v11 = v132;
    v123 = sub_1C5596A74();
    v119 = v123;
    v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v121 = 0;
    v124 = sub_1C5419DC0(0);
    v122 = v124;
    v125 = sub_1C5419DC0(v121);
    v161 = v123;
    v160 = v124;
    v159 = v125;
    v126 = 0;
    v127 = &v161;
    sub_1C5419E14(0, &v161);
    sub_1C5419E14(v126, v127);
    v158 = v157;
    v128 = v51;
    MEMORY[0x1EEE9AC00](v51);
    v129 = &v51[-6];
    v51[-4] = v12;
    v51[-3] = &v160;
    v51[-2] = &v159;
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v131 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v151, v152, "User selected 'Done' on profile picture picker view", v119, 2u);
      v117 = 0;
      sub_1C5419E74(v122);
      sub_1C5419E74(v125);
      sub_1C5596A54();

      v118 = v131;
    }
  }

  else
  {

    v118 = v132;
  }

  v13 = v136;
  v90 = v118;

  v91 = *(v141 + 8);
  v92 = (v141 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14 = v91(v146, v139);
  v15 = (*((*v13 & *MEMORY[0x1E69E7D40]) + 0x58))(v14);
  v16 = v144;
  v93 = v15;
  v95 = v17;
  v96 = v18;
  v97 = v19;
  v98 = sub_1C54FAF6C(v15, v17, v18, v19);
  v94 = v98;
  v170 = v98;

  [v138 updateImageForContact_];
  v20 = sub_1C54B05F8();
  v149(v16, v20, v139);
  v21 = v98;
  v106 = 7;
  v107 = swift_allocObject();
  *(v107 + 16) = v98;
  v116 = sub_1C5594C54();
  v99 = v116;
  v115 = sub_1C5596944();
  v100 = v115;
  v101 = 17;
  v110 = swift_allocObject();
  v102 = v110;
  v103 = 32;
  *(v110 + 16) = 32;
  v22 = swift_allocObject();
  v23 = v103;
  v111 = v22;
  v104 = v22;
  *(v22 + 16) = 8;
  v105 = v23;
  v24 = swift_allocObject();
  v25 = v107;
  v108 = v24;
  *(v24 + 16) = sub_1C54FFE90;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v108;
  v114 = v26;
  v109 = v26;
  *(v26 + 16) = sub_1C5473EFC;
  *(v26 + 24) = v27;
  v112 = sub_1C5596E04();
  v113 = v28;

  v29 = v110;
  v30 = v113;
  *v113 = sub_1C545C6D4;
  v30[1] = v29;

  v31 = v111;
  v32 = v113;
  v113[2] = sub_1C545C6D4;
  v32[3] = v31;

  v33 = v113;
  v34 = v114;
  v113[4] = sub_1C5473FA4;
  v33[5] = v34;
  sub_1C540FCD8();

  if (os_log_type_enabled(v116, v115))
  {
    v35 = v90;
    v83 = sub_1C5596A74();
    v80 = v83;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v84 = sub_1C5419DC0(0);
    v82 = v84;
    v86 = 1;
    v85 = sub_1C5419DC0(1);
    v166[0] = v83;
    v165 = v84;
    v164 = v85;
    v87 = v166;
    sub_1C5419E14(2, v166);
    sub_1C5419E14(v86, v87);
    v162 = sub_1C545C6D4;
    v163 = v102;
    sub_1C5419E28(&v162, v87, &v165, &v164);
    v88 = v35;
    v89 = v35;
    if (v35)
    {
      v78 = 0;

      __break(1u);
    }

    else
    {
      v162 = sub_1C545C6D4;
      v163 = v104;
      sub_1C5419E28(&v162, v166, &v165, &v164);
      v76 = 0;
      v77 = 0;
      v162 = sub_1C5473FA4;
      v163 = v109;
      sub_1C5419E28(&v162, v166, &v165, &v164);
      v74 = 0;
      v75 = 0;
      _os_log_impl(&dword_1C5355000, v99, v100, "Contact %s", v80, 0xCu);
      sub_1C5419E74(v82);
      sub_1C5419E74(v85);
      sub_1C5596A54();

      v79 = v74;
    }
  }

  else
  {
    v36 = v90;

    v79 = v36;
  }

  v37 = v142;
  v66 = v79;

  v91(v144, v139);
  v69 = 0;
  v38 = *(*(sub_1C5596814() - 8) + 56);
  v67 = 1;
  v38(v134, 1);
  v39 = v136;
  v40 = v94;
  v41 = v135;
  v42 = swift_allocObject();
  v43 = v136;
  v44 = v94;
  v45 = v135;
  v46 = v134;
  v47 = v69;
  v42[2] = v69;
  v42[3] = v47;
  v42[4] = v43;
  v42[5] = v44;
  v42[6] = v45;
  sub_1C54061EC(v47, v47, v46, &unk_1C55B4B68, v42, MEMORY[0x1E69E7CA8] + 8);

  [v137 dismissViewControllerAnimated:v67 completion:v69];
  v48 = sub_1C54B05F8();
  v149(v37, v48, v139);
  v72 = sub_1C5594C54();
  v68 = v72;
  v71 = sub_1C5596934();
  v70 = v71;
  v73 = sub_1C5596E04();
  if (os_log_type_enabled(v72, v71))
  {
    v49 = v66;
    v57 = sub_1C5596A74();
    v53 = v57;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v55 = 0;
    v58 = sub_1C5419DC0(0);
    v56 = v58;
    v59 = sub_1C5419DC0(v55);
    v169 = v57;
    v168 = v58;
    v167 = v59;
    v60 = 0;
    v61 = &v169;
    sub_1C5419E14(0, &v169);
    sub_1C5419E14(v60, v61);
    v166[2] = v73;
    v62 = v51;
    MEMORY[0x1EEE9AC00](v51);
    v63 = &v51[-6];
    v51[-4] = v50;
    v51[-3] = &v168;
    v51[-2] = &v167;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v65 = v49;
    if (v49)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v68, v70, "visualIdentityPicker dismissed", v53, 2u);
      v51[1] = 0;
      sub_1C5419E74(v56);
      sub_1C5419E74(v59);
      sub_1C5596A54();

      v52 = v65;
    }
  }

  else
  {

    v52 = v66;
  }

  v91(v142, v139);
}

uint64_t sub_1C54FD1FC(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = [a1 description];
  v4 = sub_1C5596574();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v3);
  return v4;
}

uint64_t sub_1C54FD27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a6;
  v6[28] = a5;
  v6[27] = a4;
  v6[4] = v6;
  v6[5] = 0;
  v6[6] = 0;
  v6[7] = 0;
  v6[12] = 0;
  v6[13] = 0;
  v6[14] = 0;
  v6[15] = 0;
  v6[20] = 0;
  v6[2] = 0;
  v6[3] = 0;
  v6[25] = 0;
  v6[26] = 0;
  v7 = sub_1C5594C74();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;

  return MEMORY[0x1EEE6DFA0](sub_1C54FD404, 0, 0);
}

uint64_t sub_1C54FD404()
{
  *(v0 + 32) = v0;
  v25 = [objc_opt_self() defaultStore];
  *(v0 + 280) = v25;
  if (v25)
  {
    v1 = *(v24 + 216);
    *(v24 + 96) = v25;
    *(v24 + 288) = (*((*v1 & *MEMORY[0x1E69E7D40]) + 0x58))();
    *(v24 + 296) = v2;
    *(v24 + 304) = v3;
    *(v24 + 312) = v4;
    MEMORY[0x1E69E5928](v4);
    sub_1C55967E4();
    *(v24 + 320) = sub_1C55967D4();
    v23 = sub_1C55967A4();

    return MEMORY[0x1EEE6DFA0](sub_1C54FD928, v23, v5);
  }

  else
  {
    v6 = *(v24 + 256);
    v19 = *(v24 + 240);
    v18 = *(v24 + 248);
    v7 = sub_1C54B05F8();
    (*(v18 + 16))(v6, v7, v19);
    v21 = sub_1C5594C54();
    v20 = sub_1C5596954();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
    v22 = sub_1C5596E04();
    if (os_log_type_enabled(v21, v20))
    {
      buf = sub_1C5596A74();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
      v15 = sub_1C5419DC0(0);
      v16 = sub_1C5419DC0(0);
      *(v24 + 64) = buf;
      *(v24 + 72) = v15;
      *(v24 + 80) = v16;
      sub_1C5419E14(0, (v24 + 64));
      sub_1C5419E14(0, (v24 + 64));
      *(v24 + 88) = v22;
      v17 = swift_task_alloc();
      v17[2] = v24 + 64;
      v17[3] = v24 + 72;
      v17[4] = v24 + 80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
      sub_1C5419F0C();
      sub_1C55966B4();

      _os_log_impl(&dword_1C5355000, v21, v20, "ACAccountStore or appleAccount is nil. Unable to update profile photo with setup service...", buf, 2u);
      sub_1C5419E74(v15);
      sub_1C5419E74(v16);
      sub_1C5596A54();
    }

    v12 = *(v24 + 256);
    v13 = *(v24 + 240);
    v11 = *(v24 + 248);
    v8 = MEMORY[0x1E69E5920](v21);
    (*(v11 + 8))(v12, v13, v8);

    v9 = *(*(v24 + 32) + 8);

    return v9();
  }
}

uint64_t sub_1C54FD928()
{
  v3 = v0[39];
  v2 = v0[38];
  v0[4] = v0;

  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v3);

  return MEMORY[0x1EEE6DFA0](sub_1C54FD9DC, 0, 0);
}

uint64_t sub_1C54FD9DC()
{
  v1 = *(v0 + 312);
  *(v0 + 32) = v0;
  if (v1)
  {
    v75 = *(v77 + 312);
    v74 = *(v77 + 280);
    *(v77 + 104) = v75;

    v2 = [v74 aida:v75 accountForiCloudAccount:?];
    v76 = v2;
    if (v2)
    {
      v69 = *(v77 + 280);
      *(v77 + 112) = v2;
      sub_1C5500480();
      MEMORY[0x1E69E5928](v69);
      MEMORY[0x1E69E5928](v76);
      v70 = *MEMORY[0x1E698B7C0];
      MEMORY[0x1E69E5928](*MEMORY[0x1E698B7C0]);
      v3 = sub_1C5596574();
      v71 = sub_1C54FEA68(v69, v76, v3, v4);
      MEMORY[0x1E69E5920](v70);
      *(v77 + 120) = v71;
      sub_1C54118E0();
      MEMORY[0x1E69E5928](v71);
      v5 = sub_1C54FEAC0(v71);
      v72 = v5;
      if (v5)
      {
        v6 = *(v77 + 224);
        *(v77 + 160) = v72;
        v7 = [v6 imageData];
        v67 = v7;
        if (v7)
        {
          v58 = sub_1C55948D4();
          v59 = v10;
          MEMORY[0x1E69E5920](v67);
          v60 = v58;
          v61 = v59;
        }

        else
        {
          v60 = 0;
          v61 = 0xF000000000000000;
        }

        if ((v61 & 0xF000000000000000) == 0xF000000000000000)
        {
          v11 = *(v77 + 264);
          v54 = *(v77 + 240);
          v53 = *(v77 + 248);
          v12 = sub_1C54B05F8();
          (*(v53 + 16))(v11, v12, v54);
          oslog = sub_1C5594C54();
          v55 = sub_1C5596974();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
          v57 = sub_1C5596E04();
          if (os_log_type_enabled(oslog, v55))
          {
            buf = sub_1C5596A74();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
            v45 = sub_1C5419DC0(0);
            v46 = sub_1C5419DC0(0);
            *(v77 + 168) = buf;
            *(v77 + 176) = v45;
            *(v77 + 184) = v46;
            sub_1C5419E14(0, (v77 + 168));
            sub_1C5419E14(0, (v77 + 168));
            *(v77 + 192) = v57;
            v47 = swift_task_alloc();
            v47[2] = v77 + 168;
            v47[3] = v77 + 176;
            v47[4] = v77 + 184;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
            sub_1C5419F0C();
            sub_1C55966B4();

            _os_log_impl(&dword_1C5355000, oslog, v55, "imageData is nil. Setting Profile Picture to default image...", buf, 2u);
            sub_1C5419E74(v45);
            sub_1C5419E74(v46);
            sub_1C5596A54();
          }

          v41 = *(v77 + 264);
          v42 = *(v77 + 240);
          v43 = *(v77 + 280);
          v40 = *(v77 + 248);
          v13 = MEMORY[0x1E69E5920](oslog);
          (*(v40 + 8))(v41, v42, v13);
          [v72 setProfilePictureForAccountOwner:0 cropRect:?];
          MEMORY[0x1E69E5920](v72);
          MEMORY[0x1E69E5920](v71);
          MEMORY[0x1E69E5920](v76);
          MEMORY[0x1E69E5920](v75);
          MEMORY[0x1E69E5920](v43);
        }

        else
        {
          v49 = *(v77 + 232);
          v48 = *(v77 + 216);
          v52 = *(v77 + 280);
          *(v77 + 16) = v60;
          *(v77 + 24) = v61;
          sub_1C5418C84();
          sub_1C544DE30(v60, v61);
          v51 = sub_1C54493D0(v60, v61);
          *(v77 + 200) = v51;
          v50 = (*((*v48 & *MEMORY[0x1E69E7D40]) + 0x88))(v49);
          *(v77 + 208) = v50;
          MEMORY[0x1E69E5928](v50);
          [v72 setProfilePictureForAccountOwner:v51 cropRect:v50];
          MEMORY[0x1E69E5920](v50);
          MEMORY[0x1E69E5920](v50);
          MEMORY[0x1E69E5920](v51);
          sub_1C544DEAC(v60, v61);
          MEMORY[0x1E69E5920](v72);
          MEMORY[0x1E69E5920](v71);
          MEMORY[0x1E69E5920](v76);
          MEMORY[0x1E69E5920](v75);
          MEMORY[0x1E69E5920](v52);
        }
      }

      else
      {
        v8 = *(v77 + 272);
        v63 = *(v77 + 240);
        v62 = *(v77 + 248);
        v9 = sub_1C54B05F8();
        (*(v62 + 16))(v8, v9, v63);
        v65 = sub_1C5594C54();
        v64 = sub_1C5596954();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
        v66 = sub_1C5596E04();
        if (os_log_type_enabled(v65, v64))
        {
          v36 = sub_1C5596A74();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
          v37 = sub_1C5419DC0(0);
          v38 = sub_1C5419DC0(0);
          *(v77 + 128) = v36;
          *(v77 + 136) = v37;
          *(v77 + 144) = v38;
          sub_1C5419E14(0, (v77 + 128));
          sub_1C5419E14(0, (v77 + 128));
          *(v77 + 152) = v66;
          v39 = swift_task_alloc();
          v39[2] = v77 + 128;
          v39[3] = v77 + 136;
          v39[4] = v77 + 144;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
          sub_1C5419F0C();
          sub_1C55966B4();

          _os_log_impl(&dword_1C5355000, v65, v64, "Creating AAUIProfilePictureStore failed. Unable to update profile photo with setup service...", v36, 2u);
          sub_1C5419E74(v37);
          sub_1C5419E74(v38);
          sub_1C5596A54();
        }

        v33 = *(v77 + 272);
        v34 = *(v77 + 240);
        v35 = *(v77 + 280);
        v32 = *(v77 + 248);
        v14 = MEMORY[0x1E69E5920](v65);
        (*(v32 + 8))(v33, v34, v14);
        MEMORY[0x1E69E5920](v71);
        MEMORY[0x1E69E5920](v76);
        MEMORY[0x1E69E5920](v75);
        MEMORY[0x1E69E5920](v35);
      }

      goto LABEL_24;
    }

    v68 = *(v77 + 280);
    MEMORY[0x1E69E5920](v75);
    MEMORY[0x1E69E5920](v68);
  }

  else
  {
    v73 = *(v77 + 280);

    MEMORY[0x1E69E5920](v73);
  }

  v15 = *(v77 + 256);
  v28 = *(v77 + 240);
  v27 = *(v77 + 248);
  v16 = sub_1C54B05F8();
  (*(v27 + 16))(v15, v16, v28);
  log = sub_1C5594C54();
  v29 = sub_1C5596954();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v31 = sub_1C5596E04();
  if (os_log_type_enabled(log, v29))
  {
    v23 = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v24 = sub_1C5419DC0(0);
    v25 = sub_1C5419DC0(0);
    *(v77 + 64) = v23;
    *(v77 + 72) = v24;
    *(v77 + 80) = v25;
    sub_1C5419E14(0, (v77 + 64));
    sub_1C5419E14(0, (v77 + 64));
    *(v77 + 88) = v31;
    v26 = swift_task_alloc();
    v26[2] = v77 + 64;
    v26[3] = v77 + 72;
    v26[4] = v77 + 80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, log, v29, "ACAccountStore or appleAccount is nil. Unable to update profile photo with setup service...", v23, 2u);
    sub_1C5419E74(v24);
    sub_1C5419E74(v25);
    sub_1C5596A54();
  }

  v21 = *(v77 + 256);
  v22 = *(v77 + 240);
  v20 = *(v77 + 248);
  v17 = MEMORY[0x1E69E5920](log);
  (*(v20 + 8))(v21, v22, v17);
LABEL_24:

  v18 = *(*(v77 + 32) + 8);

  return v18();
}

id sub_1C54FEBC8(uint64_t a1, void *a2, void *a3)
{
  v131 = a3;
  v133 = a2;
  v132 = a1;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v164 = 0u;
  v163 = 0u;
  v130 = 0;
  v152 = 0;
  v149 = 0u;
  v148 = 0u;
  v134 = sub_1C5594C74();
  v135 = *(v134 - 8);
  v136 = v135;
  v139 = *(v135 + 64);
  v4 = MEMORY[0x1EEE9AC00](v132);
  v141 = (v139 + 15) & 0xFFFFFFFFFFFFFFF0;
  v137 = v34 - v141;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v138 = v34 - v141;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v140 = v34 - v141;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v142 = v34 - v141;
  v172 = v7;
  v171 = v8;
  v170 = v9;
  v169 = v3;
  v143 = [v7 source];
  if (v143 == 1 || v143 == 4)
  {
    v10 = v133;
    if (v133)
    {
      v129 = v133;
      v11 = v142;
      v120 = v133;
      v152 = v133;
      [v133 size];
      v151 = v12;
      v150 = v13;
      v121 = v12;
      v122 = v13;
      v125 = 0;
      v148 = 0uLL;
      *&v149 = v13;
      *(&v149 + 1) = v12;
      v14 = sub_1C54B05F8();
      (*(v136 + 16))(v11, v14, v134);
      v127 = sub_1C5594C54();
      v123 = v127;
      v126 = sub_1C5596944();
      v124 = v126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
      v128 = sub_1C5596E04();
      if (os_log_type_enabled(v127, v126))
      {
        v15 = v130;
        v111 = sub_1C5596A74();
        v107 = v111;
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v109 = 0;
        v112 = sub_1C5419DC0(0);
        v110 = v112;
        v113 = sub_1C5419DC0(v109);
        v147 = v111;
        v146 = v112;
        v145 = v113;
        v114 = 0;
        v115 = &v147;
        sub_1C5419E14(0, &v147);
        sub_1C5419E14(v114, v115);
        v144 = v128;
        v116 = v34;
        MEMORY[0x1EEE9AC00](v34);
        v117 = &v34[-6];
        v34[-4] = v16;
        v34[-3] = &v146;
        v34[-2] = &v145;
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v119 = v15;
        if (v15)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v123, v124, "Using full dimensions for emoji/monogram", v107, 2u);
          v105 = 0;
          sub_1C5419E74(v110);
          sub_1C5419E74(v113);
          sub_1C5596A54();

          v106 = v119;
        }
      }

      else
      {

        v106 = v130;
      }

      v102 = v106;

      (*(v136 + 8))(v142, v134);
      sub_1C54FFF88();
      v101 = sub_1C54FFA14(0.0, 0.0, v122, v121);

      v103 = v101;
      v104 = v102;
    }

    else
    {
      v17 = v140;
      v18 = sub_1C54B05F8();
      (*(v136 + 16))(v17, v18, v134);
      v99 = sub_1C5594C54();
      v96 = v99;
      v98 = sub_1C5596954();
      v97 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
      v100 = sub_1C5596E04();
      if (os_log_type_enabled(v99, v98))
      {
        v19 = v130;
        v87 = sub_1C5596A74();
        v83 = v87;
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v85 = 0;
        v88 = sub_1C5419DC0(0);
        v86 = v88;
        v89 = sub_1C5419DC0(v85);
        v156[0] = v87;
        v155 = v88;
        v154 = v89;
        v90 = 0;
        v91 = v156;
        sub_1C5419E14(0, v156);
        sub_1C5419E14(v90, v91);
        v153 = v100;
        v92 = v34;
        MEMORY[0x1EEE9AC00](v34);
        v93 = &v34[-6];
        v34[-4] = v20;
        v34[-3] = &v155;
        v34[-2] = &v154;
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v95 = v19;
        if (v19)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v96, v97, "Missing profileImage for emoji/monogram source, using zero rect", v83, 2u);
          v81 = 0;
          sub_1C5419E74(v86);
          sub_1C5419E74(v89);
          sub_1C5596A54();

          v82 = v95;
        }
      }

      else
      {

        v82 = v130;
      }

      v80 = v82;

      (*(v136 + 8))(v140, v134);
      sub_1C54FFF88();
      v103 = sub_1C54FFA14(0.0, 0.0, 0.0, 0.0);
      v104 = v80;
    }
  }

  else
  {
    [v131 cropRect];
    v168 = v21;
    v167 = v22;
    v166 = v23;
    v165 = v24;
    v76 = v21;
    v77 = v22;
    v78 = v23;
    v79 = v24;
    *&v163 = v24;
    *(&v163 + 1) = v23;
    *&v164 = v22;
    *(&v164 + 1) = v21;
    if (sub_1C54FF9D4(v24, v23, v22, v21) || sub_1C5449B2C(v79, v78, v77, v76))
    {
      v25 = v138;
      v26 = sub_1C54B05F8();
      (*(v136 + 16))(v25, v26, v134);
      v73 = sub_1C5594C54();
      v70 = v73;
      v72 = sub_1C5596954();
      v71 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
      v74 = sub_1C5596E04();
      if (os_log_type_enabled(v73, v72))
      {
        v27 = v130;
        v61 = sub_1C5596A74();
        v57 = v61;
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v59 = 0;
        v62 = sub_1C5419DC0(0);
        v60 = v62;
        v63 = sub_1C5419DC0(v59);
        v159[0] = v61;
        v158 = v62;
        v157 = v63;
        v64 = 0;
        v65 = v159;
        sub_1C5419E14(0, v159);
        sub_1C5419E14(v64, v65);
        v156[1] = v74;
        v66 = v34;
        MEMORY[0x1EEE9AC00](v34);
        v67 = &v34[-6];
        v34[-4] = v28;
        v34[-3] = &v158;
        v34[-2] = &v157;
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v69 = v27;
        if (v27)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v70, v71, "Invalid crop rectangle detected, using zero rect", v57, 2u);
          v55 = 0;
          sub_1C5419E74(v60);
          sub_1C5419E74(v63);
          sub_1C5596A54();

          v56 = v69;
        }
      }

      else
      {

        v56 = v130;
      }

      v54 = v56;

      (*(v136 + 8))(v138, v134);
      sub_1C54FFF88();
      v103 = sub_1C54FFA14(0.0, 0.0, 0.0, 0.0);
      v104 = v54;
    }

    else
    {
      v29 = v137;
      v30 = sub_1C54B05F8();
      (*(v136 + 16))(v29, v30, v134);
      v52 = sub_1C5594C54();
      v49 = v52;
      v51 = sub_1C5596944();
      v50 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
      v53 = sub_1C5596E04();
      if (os_log_type_enabled(v52, v51))
      {
        v31 = v130;
        v40 = sub_1C5596A74();
        v36 = v40;
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
        v38 = 0;
        v41 = sub_1C5419DC0(0);
        v39 = v41;
        v42 = sub_1C5419DC0(v38);
        v162 = v40;
        v161 = v41;
        v160 = v42;
        v43 = 0;
        v44 = &v162;
        sub_1C5419E14(0, &v162);
        sub_1C5419E14(v43, v44);
        v159[2] = v53;
        v45 = v34;
        MEMORY[0x1EEE9AC00](v34);
        v46 = &v34[-6];
        v34[-4] = v32;
        v34[-3] = &v161;
        v34[-2] = &v160;
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
        sub_1C5419F0C();
        sub_1C55966B4();
        v48 = v31;
        if (v31)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1C5355000, v49, v50, "Using contact crop rectangle.", v36, 2u);
          v34[1] = 0;
          sub_1C5419E74(v39);
          sub_1C5419E74(v42);
          sub_1C5596A54();

          v35 = v48;
        }
      }

      else
      {

        v35 = v130;
      }

      v34[0] = v35;

      (*(v136 + 8))(v137, v134);
      sub_1C54FFF88();
      v103 = sub_1C54FFA14(v79, v78, v77, v76);
      v104 = v34[0];
    }
  }

  return v103;
}