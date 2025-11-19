uint64_t sub_8D3BC()
{
  v0 = type metadata accessor for DetailsSectionHeaderView.Style(0);
  __swift_allocate_value_buffer(v0, qword_FAE38);
  v1 = __swift_project_value_buffer(v0, qword_FAE38);
  sub_275B4();
  result = sub_B6AB0();
  *(v1 + v0[5]) = 0x4030000000000000;
  *(v1 + v0[6]) = 0x402A000000000000;
  *(v1 + v0[7]) = 0x402E000000000000;
  *(v1 + v0[8]) = 0x4018000000000000;
  *(v1 + v0[9]) = 0xC000000000000000;
  return result;
}

uint64_t sub_8D484(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_B63C0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DetailsSectionHeaderView.Style(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_8D5BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_B63C0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DetailsSectionHeaderView.Style(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_8D6E0()
{
  result = sub_B63C0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DetailsSectionHeaderView.Style(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_8D7E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_8D89C()
{
  result = qword_F25C8;
  if (!qword_F25C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F25D0, &unk_C38B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F25C8);
  }

  return result;
}

uint64_t sub_8D914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_8D9A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_8DA1C()
{
  sub_27558();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t DetailsSectionRowView.State.init(id:title:titleTextStyle:subtitle:subtitleTextStyle:informationText:isEnabled:onSelect:menu:menuTitle:confirmationDialog:accessoryStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _OWORD *a19)
{
  *(a9 + 104) = *a19;
  v20 = *(a15 + 16);
  *(a9 + 120) = *a15;
  v21 = *a5;
  v22 = *a8;
  *(a9 + 136) = v20;
  *(a9 + 192) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 224) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 256) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v21;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = v22;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14;
  *(a9 + 152) = *(a15 + 32);
  *(a9 + 160) = a16;
  *(a9 + 168) = a17;
  *(a9 + 176) = 0u;

  return sub_2C360(a18, a9 + 176);
}

void *sub_8DB30@<X0>(const void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v12[3] = &type metadata for SolariumFeatureFlag;
  v12[4] = sub_28360();
  v6 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v12);
  v7 = 16.0;
  v8 = 15.0;
  if ((v6 & 1) == 0)
  {
    v8 = 16.0;
    v7 = 0.0;
  }

  *(a3 + 280) = 0x4030000000000000;
  *(a3 + 288) = v8;
  *(a3 + 296) = 0x3FF0000000000000;
  *(a3 + 304) = 0x3FD6666666666666;
  if (v6)
  {
    v9 = 3.0;
  }

  else
  {
    v9 = 0.0;
  }

  *(a3 + 312) = v7;
  *(a3 + 320) = v9;
  sub_B75B0();
  v10 = v12[1];
  *(a3 + 328) = v12[0];
  *(a3 + 336) = v10;
  result = memcpy(a3, a1, 0x110uLL);
  *(a3 + 272) = a2;
  return result;
}

uint64_t DetailsSectionRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_B6E10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  sub_8DE00(v2, a1);
  v12 = *(v2 + 80);
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = (v12 & 1) == 0;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26B0, &qword_C3938) + 36));
  *v15 = KeyPath;
  v15[1] = sub_417AC;
  v15[2] = v14;
  sub_B6E00();
  (*(v5 + 16))(v9, v11, v4);
  sub_93100(&qword_F26B8, &type metadata accessor for OpacityTransition);
  v16 = sub_B6B30();
  (*(v5 + 8))(v11, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26C0, &qword_C3940);
  *(a1 + *(result + 36)) = v16;
  return result;
}

uint64_t sub_8DE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2770, &qword_C3DD0);
  v72 = *(v83 - 8);
  v3 = *(v72 + 64);
  __chkstk_darwin(v83);
  v71 = v69 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2730, &unk_C3D38);
  v73 = *(v84 - 8);
  v5 = *(v73 + 64);
  __chkstk_darwin(v84);
  v7 = v69 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2720, &qword_C3D28);
  v74 = *(v8 - 8);
  v9 = *(v74 + 64);
  __chkstk_darwin(v8);
  v75 = v69 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2778, &qword_C3DD8);
  v11 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v90 = v69 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2780, &qword_C3DE0);
  v13 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v15 = v69 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2708, &qword_C3D18);
  v16 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v82 = v69 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2710, &qword_C3D20);
  v18 = *(v79 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v79);
  v21 = v69 - v20;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2788, &qword_C3DE8);
  v77 = *(v81 - 8);
  v22 = *(v77 + 8);
  __chkstk_darwin(v81);
  v76 = v69 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26F8, &qword_C3D10);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = v69 - v26;
  sub_B7A60();
  v86 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_A310(a1 + 120, v94, &qword_F2790, &qword_C3DF0);
  v87 = v27;
  if (*&v94[24])
  {
    v28 = sub_92AE4(v94, v95);
    v78 = v8;
    v29 = v15;
    v30 = __chkstk_darwin(v28);
    __chkstk_darwin(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2798, &qword_C3DF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27B8, &qword_C3E10);
    sub_927D0();
    sub_92B24();
    sub_B71A0();
    v31 = sub_A8CC(&qword_F2718, &qword_F2710, &qword_C3D20);
    v32 = v76;
    v33 = v79;
    sub_B73D0();
    (*(v18 + 8))(v21, v33);
    v34 = v77;
    v35 = v81;
    (*(v77 + 2))(v29, v32, v81);
    swift_storeEnumTagMultiPayload();
    *v94 = v33;
    *&v94[8] = v31;
    swift_getOpaqueTypeConformance2();
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2728, &qword_C3D30);
    v37 = sub_A8CC(&qword_F2738, &qword_F2730, &unk_C3D38);
    v38 = sub_92608();
    *v94 = v84;
    *&v94[8] = &type metadata for ListRowButtonStyle;
    *&v94[16] = v37;
    *&v94[24] = v38;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = sub_97E8();
    v41 = sub_9265C();
    *v94 = v78;
    *&v94[8] = &type metadata for String;
    *&v94[16] = &type metadata for AnyView;
    *&v94[24] = v36;
    v42 = v87;
    *&v94[32] = OpaqueTypeConformance2;
    *&v94[40] = v40;
    *&v94[48] = &protocol witness table for AnyView;
    *&v94[56] = v41;
    swift_getOpaqueTypeConformance2();
    v43 = v82;
    sub_B6F00();
    sub_929DC(v43, v90);
    swift_storeEnumTagMultiPayload();
    sub_923F8();
    sub_B6F00();
    sub_92A4C(v43);
    (*(v34 + 1))(v32, v35);
    __swift_destroy_boxed_opaque_existential_0(v95);
  }

  else
  {
    sub_A194(v94, &qword_F2790, &qword_C3DF0);
    sub_A310(a1 + 176, v94, &qword_EFAC0, &qword_BEEB0);
    if (*&v94[8])
    {
      v95[2] = *&v94[32];
      v95[3] = *&v94[48];
      v95[4] = *&v94[64];
      v95[5] = *&v94[80];
      v95[0] = *v94;
      v95[1] = *&v94[16];
      sub_9276C(a1, v94);
      v44 = swift_allocObject();
      v45 = memcpy((v44 + 16), v94, 0x158uLL);
      __chkstk_darwin(v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2798, &qword_C3DF8);
      sub_927D0();
      sub_B7610();
      v46 = sub_A8CC(&qword_F2738, &qword_F2730, &unk_C3D38);
      v78 = v8;
      v47 = v46;
      v48 = sub_92608();
      v77 = v15;
      v49 = v84;
      sub_B7260();
      (*(v73 + 8))(v7, v49);
      v93 = v95[0];
      v50 = *(a1 + 336);
      v91 = *(a1 + 328);
      v92 = v50;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C80, &qword_C0680);
      v51 = sub_B75E0();
      v70 = v69;
      v69[3] = v94[16];
      v52 = __chkstk_darwin(v51);
      __chkstk_darwin(v52);
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2728, &qword_C3D30);
      *v94 = v49;
      *&v94[8] = &type metadata for ListRowButtonStyle;
      *&v94[16] = v47;
      *&v94[24] = v48;
      v76 = swift_getOpaqueTypeConformance2();
      v84 = sub_97E8();
      v68 = sub_9265C();
      v53 = v78;
      v54 = v71;
      v55 = v75;
      sub_B7320();

      (*(v74 + 8))(v55, v53);
      v56 = v72;
      v57 = v83;
      (*(v72 + 16))(v77, v54, v83);
      swift_storeEnumTagMultiPayload();
      v58 = sub_A8CC(&qword_F2718, &qword_F2710, &qword_C3D20);
      *v94 = v79;
      *&v94[8] = v58;
      swift_getOpaqueTypeConformance2();
      *v94 = v53;
      *&v94[8] = &type metadata for String;
      *&v94[16] = &type metadata for AnyView;
      *&v94[24] = v73;
      *&v94[32] = v76;
      *&v94[40] = v84;
      *&v94[48] = &protocol witness table for AnyView;
      *&v94[56] = v68;
      swift_getOpaqueTypeConformance2();
      v59 = v82;
      sub_B6F00();
      sub_929DC(v59, v90);
      swift_storeEnumTagMultiPayload();
      sub_923F8();
      v42 = v87;
      sub_B6F00();
      sub_92A4C(v59);
      (*(v56 + 8))(v54, v57);
      sub_92AB4(v95);
    }

    else
    {
      sub_A194(v94, &qword_EFAC0, &qword_BEEB0);
      sub_9276C(a1, v94);
      v60 = swift_allocObject();
      v61 = memcpy((v60 + 16), v94, 0x158uLL);
      __chkstk_darwin(v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2798, &qword_C3DF8);
      sub_927D0();
      sub_B7610();
      v62 = sub_A8CC(&qword_F2738, &qword_F2730, &unk_C3D38);
      v63 = sub_92608();
      v64 = v75;
      v65 = v84;
      sub_B7260();
      (*(v73 + 8))(v7, v65);
      v66 = v74;
      (*(v74 + 16))(v90, v64, v8);
      swift_storeEnumTagMultiPayload();
      sub_923F8();
      *v94 = v65;
      *&v94[8] = &type metadata for ListRowButtonStyle;
      *&v94[16] = v62;
      *&v94[24] = v63;
      swift_getOpaqueTypeConformance2();
      v42 = v87;
      sub_B6F00();
      (*(v66 + 8))(v64, v8);
    }
  }

  sub_92888(v42, v85);
}

uint64_t sub_8ECD8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27D0, &qword_C3E18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2910, &qword_C3F90);
  v10 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27B8, &qword_C3E10);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v25 - v15;
  sub_B7A60();
  v27 = sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v18 = *(a1 + 168);
  if (v18)
  {
    v29 = *(a1 + 160);
    v30 = v18;
    __chkstk_darwin(isCurrentExecutor);
    *(&v25 - 2) = a2;
    sub_97E8();

    sub_B7700();
    (*(v6 + 16))(v12, v9, v5);
    swift_storeEnumTagMultiPayload();
    sub_92BB0();
    sub_B6F00();
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v19 = a2[3];
    v20 = __swift_project_boxed_opaque_existential_0(a2, v19);
    v21 = *(*(v19 - 8) + 64);
    __chkstk_darwin(v20);
    (*(v23 + 16))(&v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    *v12 = sub_B76A0();
    swift_storeEnumTagMultiPayload();
    sub_92BB0();
    sub_B6F00();
  }

  sub_AB00(v16, v28, &qword_F27B8, &qword_C3E10);
}

uint64_t sub_8F0B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_0(a1, v4);
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v5);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_B76A0();

  *a2 = v9;
  return result;
}

uint64_t sub_8F1FC(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 328);
  v4 = *(a1 + 336);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0C80, &qword_C0680);
  sub_B75C0();
  sub_B75D0();
}

uint64_t sub_8F304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27B0, &unk_C3E00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2798, &qword_C3DF8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v7 = sub_B6E30();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27D8, &qword_C3E20);
  sub_8F900(a1, &v7[*(v12 + 44)]);
  v13 = sub_B70D0();
  v14 = sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v13)
  {
    v14 = sub_B70F0();
  }

  if (*(a1 + 272) == 1)
  {
    v15 = *(a1 + 320);
  }

  sub_B6A10();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_AB00(v7, v11, &qword_F27B0, &unk_C3E00);
  v24 = &v11[*(v8 + 36)];
  *v24 = v14;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  sub_AB00(v11, a2, &qword_F2798, &qword_C3DF8);
}

uint64_t sub_8F540@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 80);
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 56), v4);
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v5);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_B76A0();

  *a2 = v9;
  return result;
}

uint64_t sub_8F688@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_A310(a1 + 16, &v11, &qword_F2790, &qword_C3DF0);
  if (v12)
  {
    sub_92AE4(&v11, v13);
    v4 = v14;
    v5 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v6 = *(*(v4 - 8) + 64);
    __chkstk_darwin(v5);
    (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = sub_B76A0();
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    sub_A194(&v11, &qword_F2790, &qword_C3DF0);

    v9 = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_8F83C(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = *(a1 + 96);

    v2(a1);
    sub_C618(v2);
  }
}

uint64_t sub_8F900@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27E0, &qword_C3E28);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_B6EB0();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27E8, &qword_C3E30);
  sub_8FABC(a1, &v10[*(v11 + 44)]);
  sub_A310(v10, v8, &qword_F27E0, &qword_C3E28);
  sub_A310(v8, a2, &qword_F27E0, &qword_C3E28);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27F0, &qword_C3E38) + 48);
  *v12 = 0;
  *(v12 + 8) = 0;
  sub_A194(v10, &qword_F27E0, &qword_C3E28);
  sub_A194(v8, &qword_F27E0, &qword_C3E28);
}

uint64_t sub_8FABC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F27F8, &qword_C3E40);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v79 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2800, &qword_C3E48);
  v7 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v9 = &v79 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2808, &qword_C3E50);
  v10 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v12 = &v79 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2810, &qword_C3E58);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v94 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v93 = &v79 - v17;
  sub_B7A60();
  v96 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = [objc_opt_self() separatorColor];
  v92 = sub_B7530();
  sub_B7760();
  sub_B6B10();
  v103 = v164;
  v19 = v165;
  v20 = v167;
  v90 = v166;
  v91 = v168;
  v105 = v169;
  sub_B7760();
  sub_B6C90();
  v153 = v19;
  v104 = v20;
  v152 = v20;
  v102 = sub_B70E0();
  v21 = a1[35];
  sub_B6A10();
  v100 = v22;
  v88 = v24;
  v89 = v23;
  v87 = v25;
  v154 = 0;
  v101 = sub_B7100();
  v26 = a1[39];
  sub_B6A10();
  v86 = v27;
  v98 = v29;
  v99 = v28;
  v97 = v30;
  v155 = 0;
  v31 = sub_B70D0();
  v32 = sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v31)
  {
    v32 = sub_B70F0();
  }

  v84 = v32;
  v33 = a1[36];
  sub_B6A10();
  v82 = v35;
  v83 = v34;
  v80 = v37;
  v81 = v36;
  v156 = 0;
  *v6 = sub_B6E30();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2818, &unk_C3E60);
  sub_90360(a1, &v6[*(v38 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0738, &qword_BFE30);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_BD800;
  v40 = sub_B70E0();
  *(v39 + 32) = v40;
  v41 = sub_B7100();
  *(v39 + 33) = v41;
  v42 = sub_B70F0();
  sub_B70F0();
  if (sub_B70F0() != v40)
  {
    v42 = sub_B70F0();
  }

  sub_B70F0();
  if (sub_B70F0() != v41)
  {
    v42 = sub_B70F0();
  }

  sub_B6A10();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_AB00(v6, v9, &qword_F27F8, &qword_C3E40);
  v51 = &v9[*(v79 + 36)];
  *v51 = v42;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  v52 = sub_B70D0();
  sub_B6A10();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_AB00(v9, v12, &qword_F2800, &qword_C3E48);
  v61 = &v12[*(v85 + 36)];
  *v61 = v52;
  *(v61 + 1) = v54;
  *(v61 + 2) = v56;
  *(v61 + 3) = v58;
  *(v61 + 4) = v60;
  v61[40] = 0;
  sub_92C40();
  v62 = v93;
  sub_B7360();
  sub_A194(v12, &qword_F2808, &qword_C3E50);
  v63 = v94;
  sub_A310(v62, v94, &qword_F2810, &qword_C3E58);
  v65 = v91;
  v64 = v92;
  v106[0] = v92;
  v106[1] = v103;
  LOBYTE(v106[2]) = v19;
  *(&v106[2] + 1) = *v163;
  HIDWORD(v106[2]) = *&v163[3];
  LODWORD(v85) = v19;
  v66 = v90;
  v106[3] = v90;
  LOBYTE(v106[4]) = v104;
  *(&v106[4] + 1) = *v162;
  HIDWORD(v106[4]) = *&v162[3];
  v106[5] = v91;
  v106[6] = v105;
  *&v106[11] = v147;
  *&v106[9] = v146;
  *&v106[7] = v145;
  *&v106[19] = v151;
  *&v106[17] = v150;
  *&v106[15] = v149;
  *&v106[13] = v148;
  LOBYTE(v106[21]) = v102;
  HIDWORD(v106[21]) = *&v161[3];
  *(&v106[21] + 1) = *v161;
  v68 = v88;
  v67 = v89;
  v106[22] = v100;
  v106[23] = v89;
  v70 = v86;
  v69 = v87;
  v106[24] = v88;
  v106[25] = v87;
  LOBYTE(v106[26]) = 0;
  HIDWORD(v106[26]) = *&v160[3];
  *(&v106[26] + 1) = *v160;
  LOBYTE(v106[27]) = v101;
  HIDWORD(v106[27]) = *&v159[3];
  *(&v106[27] + 1) = *v159;
  v106[28] = v86;
  v106[29] = v99;
  v106[30] = v98;
  v106[31] = v97;
  LOBYTE(v106[32]) = 0;
  *(&v106[32] + 1) = *v158;
  HIDWORD(v106[32]) = *&v158[3];
  v71 = v84;
  LOBYTE(v106[33]) = v84;
  *(&v106[33] + 1) = *v157;
  HIDWORD(v106[33]) = *&v157[3];
  v73 = v82;
  v72 = v83;
  v106[34] = v83;
  v106[35] = v82;
  v75 = v80;
  v74 = v81;
  v106[36] = v81;
  v106[37] = v80;
  LOBYTE(v106[38]) = 0;
  v76 = v95;
  memcpy(v95, v106, 0x131uLL);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2838, &qword_C3E70);
  sub_A310(v63, v76 + *(v77 + 48), &qword_F2810, &qword_C3E58);
  sub_A310(v106, v107, &qword_F2840, &qword_C3E78);
  sub_A194(v62, &qword_F2810, &qword_C3E58);
  sub_A194(v63, &qword_F2810, &qword_C3E58);
  v107[0] = v64;
  v107[1] = v103;
  v108 = v85;
  *v109 = *v163;
  *&v109[3] = *&v163[3];
  v110 = v66;
  v111 = v104;
  *v112 = *v162;
  *&v112[3] = *&v162[3];
  v113 = v65;
  v114 = v105;
  v117 = v147;
  v116 = v146;
  v115 = v145;
  v121 = v151;
  v120 = v150;
  v119 = v149;
  v118 = v148;
  v122 = v102;
  *&v123[3] = *&v161[3];
  *v123 = *v161;
  v124 = v100;
  v125 = v67;
  v126 = v68;
  v127 = v69;
  v128 = 0;
  *&v129[3] = *&v160[3];
  *v129 = *v160;
  v130 = v101;
  *&v131[3] = *&v159[3];
  *v131 = *v159;
  v132 = v70;
  v133 = v99;
  v134 = v98;
  v135 = v97;
  v136 = 0;
  *v137 = *v158;
  *&v137[3] = *&v158[3];
  v138 = v71;
  *v139 = *v157;
  *&v139[3] = *&v157[3];
  v140 = v72;
  v141 = v73;
  v142 = v74;
  v143 = v75;
  v144 = 0;
  sub_A194(v107, &qword_F2840, &qword_C3E78);
}

uint64_t sub_90360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2848, &unk_C3E80);
  v3 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v83 = (&v81 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2690, &qword_C38E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v82 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = &v81 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2850, &qword_C3E90);
  v10 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v88 = &v81 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2858, &qword_C3E98);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v86 = (&v81 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2860, &qword_C3EA0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v81 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2868, &qword_C3EA8);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v81 - v25;
  __chkstk_darwin(v24);
  v85 = &v81 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2870, &qword_C3EB0);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v94 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v93 = &v81 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2878, &qword_C3EB8);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v92 = &v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v81 - v37;
  sub_B7A60();
  v90 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v38 = sub_B6EB0();
  *(v38 + 1) = 0;
  v38[16] = 0;
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2880, &qword_C3EC0) + 44);
  v91 = v38;
  sub_90D34(a1, &v38[v39]);
  v40 = *(a1 + 112);
  if (v40)
  {
    v41 = *(a1 + 104);
    *v18 = sub_B6E30();
    *(v18 + 1) = 0x4000000000000000;
    v18[16] = 0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28B0, &qword_C3EE0);
    sub_913C4(v41, v40, &v18[*(v42 + 44)]);
    v43 = 304;
    if (*(a1 + 80))
    {
      v43 = 296;
    }

    v44 = *(a1 + v43);
    sub_AB00(v18, v26, &qword_F2860, &qword_C3EA0);
    *&v26[*(v19 + 36)] = v44;
    v45 = v85;
    sub_AB00(v26, v85, &qword_F2868, &qword_C3EA8);
    sub_A310(v45, v23, &qword_F2868, &qword_C3EA8);
    v46 = v86;
    *v86 = 0;
    *(v46 + 8) = 1;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28B8, &qword_C3EE8);
    sub_A310(v23, v46 + *(v47 + 48), &qword_F2868, &qword_C3EA8);
    sub_A194(v23, &qword_F2868, &qword_C3EA8);
    sub_A310(v46, v88, &qword_F2858, &qword_C3E98);
    swift_storeEnumTagMultiPayload();
    sub_A8CC(&qword_F28A0, &qword_F2858, &qword_C3E98);
    sub_A8CC(&qword_F28A8, &qword_F2848, &unk_C3E80);
    v48 = v93;
    sub_B6F00();
    sub_A194(v46, &qword_F2858, &qword_C3E98);
    v49 = v45;
    v50 = &qword_F2868;
    v51 = &qword_C3EA8;
  }

  else
  {
    v52 = *(a1 + 72);
    v53 = 1;
    if (!v52)
    {
      v48 = v93;
      goto LABEL_10;
    }

    v96 = *(a1 + 64);
    v97 = v52;
    sub_97E8();

    v54 = sub_B7200();
    v56 = v55;
    v58 = v57;
    sub_B7120();
    v59 = sub_B71E0();
    v61 = v60;
    v86 = v12;
    v63 = v62;

    sub_9C84(v54, v56, v58 & 1);

    LODWORD(v96) = sub_B6FA0();
    v64 = sub_B71C0();
    v66 = v65;
    LOBYTE(v54) = v67;
    v69 = v68;
    sub_9C84(v59, v61, v63 & 1);

    v96 = v64;
    v97 = v66;
    v98 = v54 & 1;
    v99 = v69;
    v70 = v84;
    sub_B7360();
    sub_9C84(v64, v66, v54 & 1);

    v71 = v82;
    sub_A310(v70, v82, &qword_F2690, &qword_C38E0);
    v72 = v83;
    *v83 = 0;
    *(v72 + 8) = 1;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2898, &qword_C3ED8);
    sub_A310(v71, v72 + *(v73 + 48), &qword_F2690, &qword_C38E0);
    sub_A194(v71, &qword_F2690, &qword_C38E0);
    sub_A310(v72, v88, &qword_F2848, &unk_C3E80);
    swift_storeEnumTagMultiPayload();
    sub_A8CC(&qword_F28A0, &qword_F2858, &qword_C3E98);
    sub_A8CC(&qword_F28A8, &qword_F2848, &unk_C3E80);
    v48 = v93;
    sub_B6F00();
    sub_A194(v72, &qword_F2848, &unk_C3E80);
    v49 = v84;
    v50 = &qword_F2690;
    v51 = &qword_C38E0;
  }

  sub_A194(v49, v50, v51);
  v53 = 0;
LABEL_10:
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2888, &qword_C3EC8);
  (*(*(v74 - 8) + 56))(v48, v53, 1, v74);
  v76 = v91;
  v75 = v92;
  sub_A310(v91, v92, &qword_F2878, &qword_C3EB8);
  v77 = v94;
  sub_A310(v48, v94, &qword_F2870, &qword_C3EB0);
  v78 = v95;
  sub_A310(v75, v95, &qword_F2878, &qword_C3EB8);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2890, &qword_C3ED0);
  sub_A310(v77, v78 + *(v79 + 48), &qword_F2870, &qword_C3EB0);
  sub_A194(v48, &qword_F2870, &qword_C3EB0);
  sub_A194(v76, &qword_F2878, &qword_C3EB8);
  sub_A194(v77, &qword_F2870, &qword_C3EB0);
  sub_A194(v75, &qword_F2878, &qword_C3EB8);
}

uint64_t sub_90D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28E0, &qword_C3F70);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v71 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28E8, &qword_C3F78);
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  v10 = __chkstk_darwin(v8);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v64 = &v60 - v13;
  __chkstk_darwin(v12);
  v72 = &v60 - v14;
  sub_B7A60();
  v67 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *(a1 + 24);
  v73 = *(a1 + 16);
  v74 = v15;
  v16 = sub_97E8();

  v63 = v16;
  v17 = sub_B7200();
  v19 = v18;
  v21 = v20;
  LOBYTE(v73) = *(a1 + 32);
  v73 = sub_91318(&v73, &static HierarchicalShapeStyle.primary.getter);
  v22 = sub_B71C0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_9C84(v17, v19, v21 & 1);

  if (*(a1 + 80))
  {
    v29 = 296;
  }

  else
  {
    v29 = 304;
  }

  v30 = *(a1 + v29);
  v73 = v22;
  v74 = v24;
  v75 = v26 & 1;
  v76 = v28;
  v77 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28F0, &qword_C3F80);
  v32 = sub_92E7C();
  sub_B7360();
  sub_9C84(v22, v24, v26 & 1);

  v33 = *(a1 + 48);
  if (v33)
  {
    v73 = *(a1 + 40);
    v74 = v33;

    v34 = sub_B7200();
    v36 = v35;
    v38 = v37;
    sub_B7110();
    v63 = v32;
    v39 = sub_B71E0();
    v61 = v29;
    v62 = v31;
    v41 = v40;
    v43 = v42;

    sub_9C84(v34, v36, v38 & 1);

    LOBYTE(v73) = *(a1 + 56);
    v73 = sub_91318(&v73, &static HierarchicalShapeStyle.secondary.getter);
    v44 = sub_B71C0();
    v46 = v45;
    LOBYTE(v36) = v47;
    v49 = v48;
    sub_9C84(v39, v41, v43 & 1);

    v50 = *(a1 + v61);
    v73 = v44;
    v74 = v46;
    v75 = v36 & 1;
    v76 = v49;
    v77 = v50;
    v51 = v64;
    sub_B7360();
    sub_9C84(v44, v46, v36 & 1);

    v52 = v69;
    sub_AB00(v51, v69, &qword_F28E8, &qword_C3F78);
    v53 = 0;
  }

  else
  {
    v53 = 1;
    v52 = v69;
  }

  (*(v65 + 56))(v52, v53, 1, v66);
  v54 = v72;
  v55 = v68;
  sub_A310(v72, v68, &qword_F28E8, &qword_C3F78);
  v56 = v71;
  sub_A310(v52, v71, &qword_F28E0, &qword_C3F70);
  v57 = v70;
  sub_A310(v55, v70, &qword_F28E8, &qword_C3F78);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2900, &qword_C3F88);
  sub_A310(v56, v57 + *(v58 + 48), &qword_F28E0, &qword_C3F70);
  sub_A194(v52, &qword_F28E0, &qword_C3F70);
  sub_A194(v54, &qword_F28E8, &qword_C3F78);
  sub_A194(v56, &qword_F28E0, &qword_C3F70);
  sub_A194(v55, &qword_F28E8, &qword_C3F78);
}

uint64_t sub_91318(_BYTE *a1, void (*a2)(void))
{
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      sub_B7500();
    }

    else
    {
      sub_B74B0();
    }
  }

  else if (*a1)
  {
    sub_B6B80();
    sub_92F00();
  }

  else
  {
    a2();
  }

  return sub_B6B20();
}

uint64_t sub_913C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28C0, &qword_C3EF0);
  v5 = *(*(v44 - 8) + 64);
  v6 = __chkstk_darwin(v44);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = (&v44 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2690, &qword_C38E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v47 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v45 = &v44 - v14;
  sub_B7A60();
  v46 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v50 = a1;
  v51 = a2;
  sub_97E8();

  v15 = sub_B7200();
  v17 = v16;
  v19 = v18;
  sub_B7120();
  v20 = sub_B71E0();
  v22 = v21;
  v24 = v23;

  sub_9C84(v15, v17, v19 & 1);

  LODWORD(v50) = sub_B6FA0();
  v25 = sub_B71C0();
  v27 = v26;
  LOBYTE(v17) = v28;
  v30 = v29;
  sub_9C84(v20, v22, v24 & 1);

  v50 = v25;
  v51 = v27;
  v52 = v17 & 1;
  v53 = v30;
  v31 = v45;
  sub_B7360();
  sub_9C84(v25, v27, v17 & 1);

  v32 = sub_B7540();
  sub_B7120();
  sub_B7140();
  v33 = sub_B7150();

  KeyPath = swift_getKeyPath();
  v35 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28C8, &qword_C3F28) + 36));
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28D0, &qword_C3F30) + 28);
  v37 = enum case for Image.Scale.small(_:);
  v38 = sub_B7560();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = swift_getKeyPath();
  *v9 = v32;
  v9[1] = KeyPath;
  v9[2] = v33;
  *(v9 + *(v44 + 36)) = sub_B6F90();
  v39 = v47;
  sub_A310(v31, v47, &qword_F2690, &qword_C38E0);
  v40 = v48;
  sub_A310(v9, v48, &qword_F28C0, &qword_C3EF0);
  v41 = v49;
  sub_A310(v39, v49, &qword_F2690, &qword_C38E0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F28D8, &qword_C3F68);
  sub_A310(v40, v41 + *(v42 + 48), &qword_F28C0, &qword_C3EF0);
  sub_A194(v9, &qword_F28C0, &qword_C3EF0);
  sub_A194(v31, &qword_F2690, &qword_C38E0);
  sub_A194(v40, &qword_F28C0, &qword_C3EF0);
  sub_A194(v39, &qword_F2690, &qword_C38E0);
}

uint64_t DetailsSectionRowView.State.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PeopleListPersonRow.State.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_918DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_B6E10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  sub_8DE00(v2, a1);
  v12 = *(v2 + 80);
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = (v12 & 1) == 0;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26B0, &qword_C3938) + 36));
  *v15 = KeyPath;
  v15[1] = sub_42D18;
  v15[2] = v14;
  sub_B6E00();
  (*(v5 + 16))(v9, v11, v4);
  sub_93100(&qword_F26B8, &type metadata accessor for OpacityTransition);
  v16 = sub_B6B30();
  (*(v5 + 8))(v11, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26C0, &qword_C3940);
  *(a1 + *(result + 36)) = v16;
  return result;
}

uint64_t sub_91AD0@<X0>(uint64_t a1@<X8>)
{
  sub_B6FB0();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2760, &qword_C3DC0) + 36)) = 0;
  v2 = sub_B7760();
  v4 = v3;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_B6FC0())
  {
    v5 = [objc_opt_self() secondarySystemFillColor];
    v6 = sub_B74A0();
  }

  else
  {
    v6 = sub_B74E0();
  }

  v7 = v6;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2768, &qword_C3DC8);
  v9 = (a1 + *(result + 36));
  *v9 = v7;
  v9[1] = v2;
  v9[2] = v4;
  return result;
}

unint64_t sub_91C1C()
{
  result = qword_F26C8;
  if (!qword_F26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F26C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FindMyAppCore21DetailsSectionRowViewV5StateVIeghn_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4View_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_13FindMyAppCore21DetailsSectionRowViewV5StateV18ConfirmationDialogVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_91CE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 344))
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

uint64_t sub_91D30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
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

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_91DE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_91E28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailsSectionRowView.State.TextStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailsSectionRowView.State.TextStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_92038(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_92080(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_920EC()
{
  result = qword_F26D0;
  if (!qword_F26D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F26C0, &qword_C3940);
    sub_921A4();
    sub_A8CC(&qword_F2750, &qword_F2758, &qword_C3D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F26D0);
  }

  return result;
}

unint64_t sub_921A4()
{
  result = qword_F26D8;
  if (!qword_F26D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F26B0, &qword_C3938);
    sub_9225C();
    sub_A8CC(&qword_EEE48, &qword_EEE50, &qword_BFD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F26D8);
  }

  return result;
}

unint64_t sub_9225C()
{
  result = qword_F26E0;
  if (!qword_F26E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F26E8, &qword_C3D08);
    sub_922E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F26E0);
  }

  return result;
}

unint64_t sub_922E0()
{
  result = qword_F26F0;
  if (!qword_F26F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F26F8, &qword_C3D10);
    sub_923F8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2730, &unk_C3D38);
    sub_A8CC(&qword_F2738, &qword_F2730, &unk_C3D38);
    sub_92608();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F26F0);
  }

  return result;
}

unint64_t sub_923F8()
{
  result = qword_F2700;
  if (!qword_F2700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2708, &qword_C3D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2710, &qword_C3D20);
    sub_A8CC(&qword_F2718, &qword_F2710, &qword_C3D20);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2720, &qword_C3D28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2728, &qword_C3D30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2730, &unk_C3D38);
    sub_A8CC(&qword_F2738, &qword_F2730, &unk_C3D38);
    sub_92608();
    swift_getOpaqueTypeConformance2();
    sub_97E8();
    sub_9265C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2700);
  }

  return result;
}

unint64_t sub_92608()
{
  result = qword_F2740;
  if (!qword_F2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2740);
  }

  return result;
}

unint64_t sub_9265C()
{
  result = qword_F2748;
  if (!qword_F2748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2728, &qword_C3D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2748);
  }

  return result;
}

uint64_t sub_926D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_926F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

unint64_t sub_927D0()
{
  result = qword_F27A0;
  if (!qword_F27A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2798, &qword_C3DF8);
    sub_A8CC(&qword_F27A8, &qword_F27B0, &unk_C3E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F27A0);
  }

  return result;
}

uint64_t sub_92888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F26F8, &qword_C3D10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_34Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[11];

  if (v0[13])
  {
    v5 = v0[14];
  }

  v6 = v0[16];

  if (v0[20])
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  }

  v7 = v0[23];

  if (v0[25])
  {

    if (v0[29])
    {
      __swift_destroy_boxed_opaque_existential_0(v0 + 26);
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 31);
  }

  v8 = v0[44];

  return _swift_deallocObject(v0, 360, 7);
}

uint64_t sub_929DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2708, &qword_C3D18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_92A4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2708, &qword_C3D18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_92AE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_92B24()
{
  result = qword_F27C0;
  if (!qword_F27C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F27B8, &qword_C3E10);
    sub_92BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F27C0);
  }

  return result;
}

unint64_t sub_92BB0()
{
  result = qword_F27C8;
  if (!qword_F27C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F27D0, &qword_C3E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F27C8);
  }

  return result;
}

unint64_t sub_92C40()
{
  result = qword_F2820;
  if (!qword_F2820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2808, &qword_C3E50);
    sub_92CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2820);
  }

  return result;
}

unint64_t sub_92CCC()
{
  result = qword_F2828;
  if (!qword_F2828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2800, &qword_C3E48);
    sub_A8CC(&qword_F2830, &qword_F27F8, &qword_C3E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2828);
  }

  return result;
}

uint64_t sub_92DB0(uint64_t a1)
{
  v2 = sub_B7560();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_B6CB0();
}

unint64_t sub_92E7C()
{
  result = qword_F28F8;
  if (!qword_F28F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F28F0, &qword_C3F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F28F8);
  }

  return result;
}

unint64_t sub_92F00()
{
  result = qword_F2908;
  if (!qword_F2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2908);
  }

  return result;
}

unint64_t sub_92F60()
{
  result = qword_F2918;
  if (!qword_F2918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2768, &qword_C3DC8);
    sub_93018();
    sub_A8CC(&qword_F2940, &qword_F2948, &unk_C3FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2918);
  }

  return result;
}

unint64_t sub_93018()
{
  result = qword_F2920;
  if (!qword_F2920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2760, &qword_C3DC0);
    sub_93100(&qword_F2928, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_A8CC(&qword_F2930, &qword_F2938, &qword_C3F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2920);
  }

  return result;
}

uint64_t sub_93100(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_93150@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_B6DE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_A310(v2, &v17 - v11, &qword_EF668, &qword_BE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_B6A40();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_B7B50();
    v16 = sub_B7080();
    sub_B6990();

    sub_B6DD0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t DetailsSectionTemplate.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_B6EB0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2950, &qword_C3FD0);
  return sub_933A4(v1, a1 + *(v3 + 44));
}

uint64_t sub_933A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A18, &qword_C4080);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v18 - v9);
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_B7760();
  v10[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A20, &qword_C4088);
  sub_935A4(a1, v10 + *(v12 + 44));
  v13 = (a1 + *(type metadata accessor for DetailsSectionTemplate() + 36));
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
  }

  else
  {
    v15 = 0;
  }

  sub_A310(v10, v8, &qword_F2A18, &qword_C4080);
  sub_A310(v8, a2, &qword_F2A18, &qword_C4080);
  v16 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A28, &qword_C4090) + 48));
  *v16 = v15;
  v16[1] = v14;
  swift_bridgeObjectRetain_n();
  sub_A194(v10, &qword_F2A18, &qword_C4080);

  sub_A194(v8, &qword_F2A18, &qword_C4080);
}

uint64_t sub_935A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_B6FE0();
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = *(v88 + 64);
  __chkstk_darwin(v3);
  v83 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A30, &qword_C4098);
  v6 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v81 = (&v65 - v7);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A38, &qword_C40A0);
  v85 = *(v87 - 8);
  v8 = *(v85 + 64);
  __chkstk_darwin(v87);
  v82 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A40, &qword_C40A8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v90 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v65 - v14;
  v77 = sub_B6A40();
  v15 = *(v77 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v77);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F1FA8, &qword_C40B0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v65 - v24;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A48, &qword_C40B8);
  v26 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v76 = &v65 - v27;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A50, &qword_C40C0);
  v28 = *(*(v75 - 8) + 64);
  v29 = __chkstk_darwin(v75);
  v80 = &v65 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v74 = &v65 - v32;
  __chkstk_darwin(v31);
  v78 = &v65 - v33;
  sub_B7A60();
  v79 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v67 = (a1 + *(type metadata accessor for DetailsSectionTemplate() + 32));
  v34 = *v67;
  v72 = sub_B6C60();
  v35 = *(v72 + 20);
  v36 = enum case for RoundedCornerStyle.continuous(_:);
  v70 = enum case for RoundedCornerStyle.continuous(_:);
  v69 = sub_B6E70();
  v37 = *(v69 - 8);
  v68 = *(v37 + 104);
  v71 = v37 + 104;
  v68(&v25[v35], v36, v69);
  *v25 = v34;
  *(v25 + 1) = v34;
  *&v25[*(v22 + 52)] = sub_B74F0();
  *&v25[*(v22 + 56)] = 256;
  sub_B74D0();
  sub_93150(v21);
  v38 = enum case for ColorScheme.dark(_:);
  v65 = a1;
  v66 = v15[13];
  v39 = v77;
  v66(v19, enum case for ColorScheme.dark(_:), v77);
  sub_B6A30();
  v40 = v15[1];
  v40(v19, v39);
  v40(v21, v39);
  v41 = sub_B7510();

  v42 = v25;
  v43 = v76;
  sub_AB00(v42, v76, &qword_F1FA8, &qword_C40B0);
  v44 = v43 + *(v73 + 36);
  *v44 = v41;
  *(v44 + 8) = xmmword_C3FB0;
  *(v44 + 24) = 0x4000000000000000;
  v45 = v65;
  sub_93150(v21);
  v66(v19, v38, v39);
  LOBYTE(v41) = sub_B6A30();
  v40(v19, v39);
  v40(v21, v39);
  if (v41)
  {
    v46 = 0.05;
  }

  else
  {
    v46 = 0.34;
  }

  v47 = v74;
  sub_AB00(v43, v74, &qword_F2A48, &qword_C40B8);
  *(v47 + *(v75 + 36)) = v46;
  v48 = v78;
  sub_AB00(v47, v78, &qword_F2A50, &qword_C40C0);
  v49 = v67[1];
  v50 = sub_B6EA0();
  v51 = v81;
  *v81 = v50;
  *(v51 + 8) = v49;
  *(v51 + 16) = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A58, &unk_C40C8);
  sub_93EEC(v45, v51 + *(v52 + 44));
  v53 = v84;
  v54 = (v51 + *(v84 + 36));
  v68(&v54[*(v72 + 20)], v70, v69);
  *v54 = v34;
  *(v54 + 1) = v34;
  *&v54[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F10C0, &unk_C0D90) + 36)] = 256;
  v55 = v83;
  sub_B6FD0();
  v56 = sub_94A18();
  v57 = v82;
  sub_B7330();
  (*(v88 + 8))(v55, v89);
  sub_A194(v51, &qword_F2A30, &qword_C4098);
  v92 = v53;
  v93 = v56;
  swift_getOpaqueTypeConformance2();
  v59 = v86;
  v58 = v87;
  sub_B7360();
  (*(v85 + 8))(v57, v58);
  v60 = v80;
  sub_A310(v48, v80, &qword_F2A50, &qword_C40C0);
  v61 = v90;
  sub_A310(v59, v90, &qword_F2A40, &qword_C40A8);
  v62 = v91;
  sub_A310(v60, v91, &qword_F2A50, &qword_C40C0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A78, &qword_C40E0);
  sub_A310(v61, v62 + *(v63 + 48), &qword_F2A40, &qword_C40A8);
  sub_A194(v59, &qword_F2A40, &qword_C40A8);
  sub_A194(v48, &qword_F2A50, &qword_C40C0);
  sub_A194(v61, &qword_F2A40, &qword_C40A8);
  sub_A194(v60, &qword_F2A50, &qword_C40C0);
}

uint64_t sub_93EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for DetailsSectionTemplate();
  v40 = *(v3 - 1);
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v41 = v5;
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A80, &unk_C40E8);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v39 - v11;
  v12 = type metadata accessor for DetailsSectionHeaderView(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v44 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  sub_B7A60();
  v43 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = v3[6];
  v19 = (a1 + v3[5]);
  v21 = *v19;
  v20 = v19[1];
  v22 = *(v12 + 20);
  v23 = sub_B63C0();
  (*(*(v23 - 8) + 16))(&v17[v22], a1 + v18, v23);
  *v17 = v21;
  *(v17 + 1) = v20;
  v24 = *(v12 + 24);
  v25 = qword_EEAD8;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for DetailsSectionHeaderView.Style(0);
  v27 = __swift_project_value_buffer(v26, qword_FAE38);
  sub_94DA8(v27, &v17[v24], type metadata accessor for DetailsSectionHeaderView.Style);
  v48 = *(a1 + v3[7]);
  v28 = v42;
  sub_94DA8(a1, v42, type metadata accessor for DetailsSectionTemplate);
  v29 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v30 = swift_allocObject();
  sub_30658(v28, v30 + v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2A88, &qword_C40F8);
  sub_A8CC(&qword_F2A90, &qword_F2A88, &qword_C40F8);
  sub_94D00();
  sub_94D54();
  v31 = v45;
  sub_B76F0();
  v32 = v44;
  sub_94DA8(v17, v44, type metadata accessor for DetailsSectionHeaderView);
  v33 = v7[2];
  v34 = v46;
  v33(v46, v31, v6);
  v35 = v47;
  sub_94DA8(v32, v47, type metadata accessor for DetailsSectionHeaderView);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AA8, &unk_C4100);
  v33((v35 + *(v36 + 48)), v34, v6);
  v37 = v7[1];
  v37(v31, v6);
  sub_94E10(v17);
  v37(v34, v6);
  sub_94E10(v32);
}

uint64_t sub_943D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_94E6C(a1, v15);
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a2 + *(type metadata accessor for DetailsSectionTemplate() + 28));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 272 * v9;
    v12 = *(v10 - 240);
    v11 = *(v10 - 232);

    if (v7 != v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0xE000000000000000;
    if (v7)
    {
LABEL_9:
      v13 = sub_B7DD0();
      goto LABEL_10;
    }
  }

  if (v6 != v11)
  {
    goto LABEL_9;
  }

  v13 = 1;
LABEL_10:

  sub_8DB30(v15, v13 & 1, a3);
}

double sub_94514()
{
  result = _UISheetCornerRadius;
  xmmword_FAE50 = _UISheetCornerRadius;
  return result;
}

uint64_t sub_94548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21E8, &unk_C4030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_B63C0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_94690(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F21E8, &unk_C4030);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_B63C0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for DetailsSectionTemplate()
{
  result = qword_F29B0;
  if (!qword_F29B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_94810()
{
  sub_9491C();
  if (v0 <= 0x3F)
  {
    sub_B63C0();
    if (v1 <= 0x3F)
    {
      sub_94974(319, &qword_F29C0, &type metadata for DetailsSectionRowView.State, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_94974(319, &unk_F29C8, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_9491C()
{
  if (!qword_F2260)
  {
    sub_B6A40();
    v0 = sub_B6A50();
    if (!v1)
    {
      atomic_store(v0, &qword_F2260);
    }
  }
}

void sub_94974(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_94A18()
{
  result = qword_F2A60;
  if (!qword_F2A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2A30, &qword_C4098);
    sub_A8CC(&qword_F2A68, &qword_F2A70, &qword_C40D8);
    sub_A8CC(&qword_F10F8, &qword_F10C0, &unk_C0D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2A60);
  }

  return result;
}

uint64_t sub_94AFC()
{
  v1 = type metadata accessor for DetailsSectionTemplate();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_B6A40();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *&v5[v1[5] + 8];

  v9 = v1[6];
  v10 = sub_B63C0();
  (*(*(v10 - 8) + 8))(&v5[v9], v10);
  v11 = *&v5[v1[7]];

  v12 = *&v5[v1[9] + 8];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_94C80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DetailsSectionTemplate() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_943D0(a1, v6, a2);
}

unint64_t sub_94D00()
{
  result = qword_F2A98;
  if (!qword_F2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2A98);
  }

  return result;
}

unint64_t sub_94D54()
{
  result = qword_F2AA0;
  if (!qword_F2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2AA0);
  }

  return result;
}

uint64_t sub_94DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_94E10(uint64_t a1)
{
  v2 = type metadata accessor for DetailsSectionHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void DelegatedSharesReportingState.hash(into:)()
{
  v1 = type metadata accessor for DelegatedURLShare();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for DelegatedSharesReportingState(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_9586C(v0, v17);
  v18 = (*(v7 + 48))(v17, 2, v6);
  if (v18)
  {
    sub_B7EC0(v18 != 1);
  }

  else
  {
    sub_958D0(v17, v13);
    sub_B7EC0(2uLL);
    sub_95940(v13, v11);
    if ((*(v2 + 48))(v11, 1, v1) == 1)
    {
      sub_B7ED0(0);
      sub_A194(v13, &qword_F0A10, &qword_C01B0);
    }

    else
    {
      sub_46760(v11, v5);
      sub_B7ED0(1u);
      sub_B64C0();
      sub_959B0(&qword_F01B0, &type metadata accessor for URL);
      sub_B7880();
      v19 = v1[5];
      sub_B6550();
      sub_959B0(&qword_F01B8, &type metadata accessor for Date);
      sub_B7880();
      v20 = v1[6];
      sub_B65A0();
      sub_959B0(&qword_F01C0, &type metadata accessor for UUID);
      sub_B7880();
      v21 = &v5[v1[7]];
      v22 = *v21;
      v23 = *(v21 + 1);
      sub_B7980();
      sub_B7EC0(v5[v1[8]]);
      sub_B7EC0(*&v5[v1[9]]);
      sub_A194(v13, &qword_F0A10, &qword_C01B0);
      sub_95E34(v5, type metadata accessor for DelegatedURLShare);
    }
  }
}

Swift::Int DelegatedSharesReportingState.hashValue.getter()
{
  sub_B7EB0();
  DelegatedSharesReportingState.hash(into:)();
  return sub_B7EE0();
}

Swift::Int sub_952F0()
{
  sub_B7EB0();
  DelegatedSharesReportingState.hash(into:)();
  return sub_B7EE0();
}

uint64_t DelegatedSharesReportingStatusProvider.init(stream:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AB0, &qword_C4540);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t _s13FindMyAppCore29DelegatedSharesReportingStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = type metadata accessor for DelegatedURLShare();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C00, &qword_C41D8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v16 = type metadata accessor for DelegatedSharesReportingState(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C08, &qword_C41E0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v34 - v23;
  v25 = *(v22 + 56);
  sub_9586C(a1, &v34 - v23);
  sub_9586C(v37, &v24[v25]);
  v26 = *(v8 + 48);
  v27 = v26(v24, 2, v7);
  if (!v27)
  {
    v37 = v11;
    v28 = v36;
    sub_9586C(v24, v19);
    if (v26(&v24[v25], 2, v7))
    {
      sub_A194(v19, &qword_F0A10, &qword_C01B0);
      goto LABEL_9;
    }

    v30 = *(v12 + 48);
    sub_958D0(v19, v15);
    sub_958D0(&v24[v25], &v15[v30]);
    v31 = *(v35 + 48);
    if (v31(v15, 1, v28) == 1)
    {
      if (v31(&v15[v30], 1, v28) == 1)
      {
        sub_A194(v15, &qword_F0A10, &qword_C01B0);
        goto LABEL_8;
      }
    }

    else
    {
      v32 = v37;
      sub_95940(v15, v37);
      if (v31(&v15[v30], 1, v28) != 1)
      {
        sub_46760(&v15[v30], v6);
        MyAppCore17DelegatedURLShareV2eeoiySbAC_ACtFZ_0 = _s13FindMyAppCore17DelegatedURLShareV2eeoiySbAC_ACtFZ_0(v32, v6);
        sub_95E34(v6, type metadata accessor for DelegatedURLShare);
        sub_95E34(v32, type metadata accessor for DelegatedURLShare);
        sub_A194(v15, &qword_F0A10, &qword_C01B0);
        if (MyAppCore17DelegatedURLShareV2eeoiySbAC_ACtFZ_0)
        {
          goto LABEL_8;
        }

LABEL_17:
        sub_95E34(v24, type metadata accessor for DelegatedSharesReportingState);
        return 0;
      }

      sub_95E34(v32, type metadata accessor for DelegatedURLShare);
    }

    sub_A194(v15, &qword_F2C00, &qword_C41D8);
    goto LABEL_17;
  }

  if (v27 == 1)
  {
    if (v26(&v24[v25], 2, v7) != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_95E34(v24, type metadata accessor for DelegatedSharesReportingState);
    return 1;
  }

  if (v26(&v24[v25], 2, v7) == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_A194(v24, &qword_F2C08, &qword_C41E0);
  return 0;
}

uint64_t sub_9586C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedSharesReportingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_958D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_95940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_959B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_95A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_95AE0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_95B70()
{
  sub_95DD0(319, &unk_F2B40, type metadata accessor for DelegatedURLShare, &type metadata accessor for Optional);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_95C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AB0, &qword_C4540);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_95C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AB0, &qword_C4540);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_95D34()
{
  sub_95DD0(319, &qword_F2BD0, type metadata accessor for DelegatedSharesReportingState, &type metadata accessor for AsyncStream);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_95DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_95E34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LostModeManagementSectionView.init(viewModel:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for LostModeManagementSectionViewModel();
  result = sub_B75B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t LostModeManagementSectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v46 = sub_B63C0();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v46);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v45 - v8;
  v10 = type metadata accessor for DetailsSectionTemplate();
  v11 = *(*(v10 - 1) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = (v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v48 = v45 - v15;
  v16 = v1[1];
  v49 = *v1;
  v61 = v49;
  v62 = v16;
  v17 = v16;
  v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C10, &qword_C41E8);
  sub_B75C0();
  v18 = v54;
  swift_getKeyPath();
  v61 = v18;
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v19 = v18 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  swift_beginAccess();
  LODWORD(v19) = *(v19 + *(type metadata accessor for LostAccessory() + 24));

  if (v19 == 1)
  {
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v20 = sub_B62F0();
    v21 = __swift_project_value_buffer(v20, qword_FADB0);
    v22 = *(v20 - 8);
    (*(v22 + 16))(v9, v21, v20);
    (*(v22 + 56))(v9, 0, 1, v20);
  }

  else
  {
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v23 = sub_B62F0();
    v24 = __swift_project_value_buffer(v23, qword_FADB0);
    v25 = *(v23 - 8);
    (*(v25 + 16))(v9, v24, v23);
    (*(v25 + 56))(v9, 0, 1, v23);
  }

  v26 = sub_B78D0();
  v28 = v27;
  sub_A194(v9, &unk_F17B0, &qword_BE7D0);
  sub_B6380();
  v61 = v49;
  v62 = v17;
  v29 = sub_96688();
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  swift_storeEnumTagMultiPayload();
  v64 = &type metadata for SolariumFeatureFlag;
  v65 = sub_28360();
  v30 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v61);
  if (v30)
  {
    v31 = xmmword_BED70;
  }

  else
  {
    if (qword_EEAE0 != -1)
    {
      swift_once();
    }

    v31 = xmmword_FAE50;
  }

  *(v14 + v10[8]) = v31;
  v32 = (v14 + v10[5]);
  *v32 = v26;
  v32[1] = v28;
  (*(v2 + 32))(v14 + v10[6], v5, v46);
  *(v14 + v10[7]) = v29;
  v33 = (v14 + v10[9]);
  *v33 = 0;
  v33[1] = 0;
  sub_9AA14(v14, v48, type metadata accessor for DetailsSectionTemplate);
  v54 = v49;
  v55 = v17;
  sub_B75E0();
  v34 = v61;
  v35 = v62;
  v36 = v63;
  swift_getKeyPath();
  v58 = v34;
  v59 = v35;
  v60 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C20, &qword_C4278);
  sub_B76B0();

  v37 = v61;
  v38 = v62;
  v39 = v63;
  v40 = v64;

  swift_getKeyPath();
  v54 = v37;
  v55 = v38;
  v56 = v39;
  v57 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C28, &qword_C42A8);
  sub_B76B0();

  sub_9A318(v39, v40);
  v50 = v52;
  v51 = v53;
  v41 = swift_allocObject();
  *(v41 + 16) = v49;
  *(v41 + 24) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C30, &qword_C42B0);
  sub_9A7BC(&qword_EF678, type metadata accessor for DetailsSectionTemplate);
  sub_9A338();
  sub_9A38C();
  v42 = v48;
  sub_B7430();

  v43 = v51;

  sub_9A688(v43);
  return sub_9AA7C(v42, type metadata accessor for DetailsSectionTemplate);
}

char *sub_96688()
{
  v1 = type metadata accessor for DelegatedSharesReportingState(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v157 = &v132[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v156 = &v132[-v6];
  v7 = __chkstk_darwin(v5);
  v155 = &v132[-v8];
  v9 = __chkstk_darwin(v7);
  v154 = &v132[-v10];
  v11 = __chkstk_darwin(v9);
  v153 = &v132[-v12];
  __chkstk_darwin(v11);
  v152 = &v132[-v13];
  v14 = sub_B65A0();
  v160 = *(v14 - 8);
  v161 = v14;
  v15 = *(v160 + 64);
  __chkstk_darwin(v14);
  v159 = &v132[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for LostModeReportingState();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v151 = &v132[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v150 = &v132[-v22];
  v23 = __chkstk_darwin(v21);
  v149 = &v132[-v24];
  v25 = __chkstk_darwin(v23);
  v148 = &v132[-v26];
  v27 = __chkstk_darwin(v25);
  v29 = &v132[-v28];
  __chkstk_darwin(v27);
  v31 = &v132[-v30];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v163 = &v132[-v34];
  v35 = type metadata accessor for LostAccessory();
  v36 = v35 - 8;
  v37 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v39 = &v132[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = *v0;
  v40 = v0[1];
  *&v173[0] = *v0;
  *(&v173[0] + 1) = v40;
  v162 = v40;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C10, &qword_C41E8);
  sub_B75C0();
  v42 = v166;
  swift_getKeyPath();
  *&v173[0] = v42;
  v158 = sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v43 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  swift_beginAccess();
  sub_9A8B0(v42 + v43, v39, type metadata accessor for LostAccessory);

  v44 = *&v39[*(v36 + 28)];
  sub_9AA7C(v39, type metadata accessor for LostAccessory);
  if ((v44 & 1) == 0)
  {
    v45 = &_swiftEmptyArrayStorage;
    v46 = v162;
    if ((v44 & 2) == 0)
    {
      return v45;
    }

    goto LABEL_13;
  }

  v147 = v44;
  if (qword_EEAC8 != -1)
  {
    swift_once();
  }

  v47 = sub_B62F0();
  v48 = __swift_project_value_buffer(v47, qword_FADB0);
  v49 = *(v47 - 8);
  v50 = *(v49 + 16);
  v51 = v163;
  v139 = v49 + 16;
  v140 = v48;
  v138 = v50;
  v50(v163);
  v52 = *(v49 + 56);
  v144 = v47;
  v141 = v49 + 56;
  v137 = v52;
  v52(v51, 0, 1, v47);
  v53 = sub_B78D0();
  v145 = v54;
  v146 = v53;
  sub_A194(v51, &unk_F17B0, &qword_BE7D0);
  v55 = v162;
  *&v173[0] = v41;
  *(&v173[0] + 1) = v162;
  v56 = sub_98F18();
  v142 = v57;
  v143 = v56;
  *&v173[0] = v41;
  *(&v173[0] + 1) = v55;
  sub_B75C0();
  v58 = v166;
  swift_getKeyPath();
  *&v173[0] = v58;
  sub_B65C0();

  v59 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  sub_9A8B0(v58 + v59, v31, type metadata accessor for LostModeReportingState);

  sub_9AA14(v31, v29, type metadata accessor for LostModeReportingState);
  v60 = type metadata accessor for LostModeInfo();
  v61 = *(v60 - 8);
  v62 = v60;
  v134 = *(v61 + 48);
  v135 = v61 + 48;
  v63 = (v134)(v29, 2);
  v64 = 0;
  if (!v63)
  {
    sub_9AA7C(v29, type metadata accessor for LostModeReportingState);
    v64 = 2;
  }

  v136 = v64;
  *&v173[0] = v41;
  *(&v173[0] + 1) = v55;
  sub_B75C0();
  v65 = v166;
  swift_getKeyPath();
  *&v173[0] = v65;
  sub_B65C0();

  v66 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  v67 = v148;
  sub_9A8B0(v65 + v66, v148, type metadata accessor for LostModeReportingState);

  v68 = v149;
  (*(v61 + 56))(v149, 1, 2, v62);
  MyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0 = _s13FindMyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0(v67, v68);
  sub_9AA7C(v68, type metadata accessor for LostModeReportingState);
  sub_9AA7C(v67, type metadata accessor for LostModeReportingState);
  v69 = swift_allocObject();
  *(v69 + 16) = v41;
  *(v69 + 24) = v55;
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  *&v173[0] = v41;
  *(&v173[0] + 1) = v55;

  v149 = v41;

  sub_B75C0();
  v70 = v172;
  swift_getKeyPath();
  *&v173[0] = v70;
  sub_B65C0();

  v71 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  v72 = v70 + v71;
  v73 = v150;
  sub_9A8B0(v72, v150, type metadata accessor for LostModeReportingState);

  v74 = v73;
  v75 = v151;
  sub_9AA14(v74, v151, type metadata accessor for LostModeReportingState);
  if (!v134(v75, 2, v62))
  {
    sub_9AA7C(v75, type metadata accessor for LostModeReportingState);
  }

  v76 = v163;
  v77 = v144;
  v138(v163, v140, v144);
  v137(v76, 0, 1, v77);
  v78 = sub_B78D0();
  v80 = v79;

  sub_A194(v76, &unk_F17B0, &qword_BE7D0);
  v81 = v159;
  sub_B6590();
  v82 = sub_B6560();
  v84 = v83;
  (*(v160 + 8))(v81, v161);
  memset(&v173[11], 0, 96);
  *&v173[0] = v82;
  *(&v173[0] + 1) = v84;
  *&v173[1] = v146;
  *(&v173[1] + 1) = v145;
  LOBYTE(v173[2]) = 0;
  *(&v173[2] + 1) = v143;
  *&v173[3] = v142;
  BYTE8(v173[3]) = v136;
  v173[4] = 0uLL;
  LOBYTE(v173[5]) = (MyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0 & 1) == 0;
  *(&v173[5] + 1) = sub_9A918;
  *&v173[6] = v69;
  *(&v173[6] + 1) = v78;
  *&v173[7] = v80;
  *(&v173[10] + 1) = 0;
  *(&v173[9] + 8) = 0u;
  *(&v173[8] + 8) = 0u;
  *(&v173[7] + 8) = 0u;
  sub_2C360(&v166, &v173[11]);
  v45 = sub_5358C(0, 1, 1, &_swiftEmptyArrayStorage);
  v86 = *(v45 + 2);
  v85 = *(v45 + 3);
  v46 = v162;
  if (v86 >= v85 >> 1)
  {
    v45 = sub_5358C((v85 > 1), v86 + 1, 1, v45);
  }

  v41 = v149;
  *(v45 + 2) = v86 + 1;
  memcpy(&v45[272 * v86 + 32], v173, 0x110uLL);
  if ((v147 & 2) != 0)
  {
LABEL_13:
    v151 = v45;
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v87 = sub_B62F0();
    v88 = __swift_project_value_buffer(v87, qword_FAD48);
    v89 = *(v87 - 1);
    v90 = v163;
    v143 = *(v89 + 16);
    v144 = v89 + 16;
    v143(v163, v88, v87);
    v91 = *(v89 + 56);
    v148 = v87;
    v145 = v89 + 56;
    v142 = v91;
    v91(v90, 0, 1, v87);
    v92 = sub_B78D0();
    v149 = v93;
    v150 = v92;
    sub_A194(v90, &unk_F17B0, &qword_BE7D0);
    *&v173[0] = v41;
    *(&v173[0] + 1) = v46;
    v94 = sub_994BC();
    v146 = v95;
    v147 = v94;
    *&v173[0] = v41;
    *(&v173[0] + 1) = v46;
    sub_B75C0();
    v96 = v166;
    swift_getKeyPath();
    *&v173[0] = v96;
    sub_B65C0();

    v97 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
    swift_beginAccess();
    v98 = v96 + v97;
    v99 = v152;
    sub_9A8B0(v98, v152, type metadata accessor for DelegatedSharesReportingState);

    v100 = v99;
    v101 = v153;
    sub_9AA14(v100, v153, type metadata accessor for DelegatedSharesReportingState);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
    v103 = *(v102 - 8);
    v104 = *(v103 + 48);
    v162 = v102;
    v152 = v104;
    v105 = (v104)(v101, 2);
    v106 = 0;
    if (!v105)
    {
      sub_9AA7C(v101, type metadata accessor for DelegatedSharesReportingState);
      v106 = 2;
    }

    LODWORD(v153) = v106;
    *&v173[0] = v41;
    *(&v173[0] + 1) = v46;
    sub_B75C0();
    v107 = v166;
    swift_getKeyPath();
    *&v173[0] = v107;
    sub_B65C0();

    v108 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
    swift_beginAccess();
    v109 = v154;
    sub_9A8B0(v107 + v108, v154, type metadata accessor for DelegatedSharesReportingState);

    v110 = v155;
    (*(v103 + 56))(v155, 1, 2, v162);
    LODWORD(v141) = _s13FindMyAppCore29DelegatedSharesReportingStateO2eeoiySbAC_ACtFZ_0(v109, v110);
    sub_9AA7C(v110, type metadata accessor for DelegatedSharesReportingState);
    sub_9AA7C(v109, type metadata accessor for DelegatedSharesReportingState);
    v111 = swift_allocObject();
    *(v111 + 16) = v41;
    *(v111 + 24) = v46;
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    *&v173[0] = v41;
    *(&v173[0] + 1) = v46;

    sub_B75C0();
    v112 = v165;
    swift_getKeyPath();
    *&v173[0] = v112;
    sub_B65C0();

    v113 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
    swift_beginAccess();
    v114 = v112 + v113;
    v115 = v156;
    sub_9A8B0(v114, v156, type metadata accessor for DelegatedSharesReportingState);

    v116 = v115;
    v117 = v157;
    sub_9AA14(v116, v157, type metadata accessor for DelegatedSharesReportingState);
    if (!(v152)(v117, 2, v162))
    {
      sub_9AA7C(v117, type metadata accessor for DelegatedSharesReportingState);
    }

    v118 = v141 ^ 1;
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v119 = v148;
    v120 = __swift_project_value_buffer(v148, qword_FADB0);
    v121 = v163;
    v143(v163, v120, v119);
    v142(v121, 0, 1, v119);
    v122 = sub_B78D0();
    v124 = v123;

    sub_A194(v121, &unk_F17B0, &qword_BE7D0);
    v125 = v159;
    sub_B6590();
    v126 = sub_B6560();
    v128 = v127;
    (*(v160 + 8))(v125, v161);
    memset(&v173[11], 0, 96);
    *&v173[0] = v126;
    *(&v173[0] + 1) = v128;
    *&v173[1] = v150;
    *(&v173[1] + 1) = v149;
    LOBYTE(v173[2]) = 0;
    *(&v173[2] + 1) = v147;
    *&v173[3] = v146;
    BYTE8(v173[3]) = v153;
    v173[4] = 0uLL;
    LOBYTE(v173[5]) = v118 & 1;
    *(&v173[5] + 1) = sub_9A8A0;
    *&v173[6] = v111;
    *(&v173[6] + 1) = v122;
    *&v173[7] = v124;
    *(&v173[10] + 1) = 0;
    *(&v173[9] + 8) = 0u;
    *(&v173[8] + 8) = 0u;
    *(&v173[7] + 8) = 0u;
    sub_2C360(&v166, &v173[11]);
    v45 = v151;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_5358C(0, *(v45 + 2) + 1, 1, v45);
    }

    v130 = *(v45 + 2);
    v129 = *(v45 + 3);
    if (v130 >= v129 >> 1)
    {
      v45 = sub_5358C((v129 > 1), v130 + 1, 1, v45);
    }

    *(v45 + 2) = v130 + 1;
    memcpy(&v45[272 * v130 + 32], v173, 0x110uLL);
  }

  return v45;
}

uint64_t sub_97840@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v4 = v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination;
  v5 = *(v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination);
  *a2 = v5;
  v6 = *(v4 + 8);
  *(a2 + 8) = v6;
  return sub_9A884(v5, v6);
}

uint64_t sub_97900(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  sub_9A884(v5, v3);
  return sub_9ABD0(&v5);
}

uint64_t *sub_97948(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  if ((~*result & 0xF000000000000007) != 0)
  {
    v5 = *(a2 + 8);
    if (v5 == 255)
    {
      return result;
    }

    v6 = *a2;

    result = sub_83A4C(v6, v5);
    *a2 = v3;
    v4 = 1;
  }

  else
  {
    result = sub_9A318(*a2, *(a2 + 8));
    *a2 = 0;
    v4 = -1;
  }

  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_979C8@<X0>(char **a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a2;
  v77 = a3;
  v89 = a4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2CC0, &qword_C42F0);
  v68 = *(v88 - 8);
  v5 = *(v68 + 64);
  __chkstk_darwin(v88);
  v67 = &v63 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2CB0, &qword_C42E8);
  v70 = *(v75 - 8);
  v7 = *(v70 + 64);
  __chkstk_darwin(v75);
  v69 = &v63 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2CC8, &qword_C43A0);
  v9 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v11 = &v63 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C90, &qword_C42D8);
  v12 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v73 = &v63 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2CA0, &qword_C42E0);
  v66 = *(v74 - 8);
  v14 = *(v66 + 64);
  __chkstk_darwin(v74);
  v65 = &v63 - v15;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C80, &qword_C42D0);
  v64 = *(v72 - 8);
  v16 = *(v64 + 64);
  __chkstk_darwin(v72);
  v63 = &v63 - v17;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2CD0, &qword_C43A8);
  v18 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v87 = &v63 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2CD8, &qword_C43B0);
  v20 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v78 = &v63 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2CE0, &qword_C43B8);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v63 - v24;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C60, &qword_C42C0);
  v26 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v28 = &v63 - v27;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C50, &qword_C42B8);
  v29 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v82 = &v63 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C70, &qword_C42C8);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v63 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C30, &qword_C42B0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v86 = &v63 - v38;
  v39 = *a1;
  sub_B7A60();
  v85 = sub_B7A50();
  sub_B7A00();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v41 = v39 >> 61;
  if ((v39 >> 61) <= 1)
  {
    if (v41)
    {
      type metadata accessor for DelegatedSharesManagementView();
      sub_9A7BC(&qword_F2CF8, type metadata accessor for DelegatedSharesManagementView);
      v58 = v63;
      sub_B6C00();
      v59 = v64;
      v60 = v72;
      (*(v64 + 16))(v25, v58, v72);
      swift_storeEnumTagMultiPayload();
      sub_9A634(&qword_F2C68, &qword_F2C70, &qword_C42C8);
      sub_9A634(&qword_F2C78, &qword_F2C80, &qword_C42D0);
      sub_B6F00();
      sub_A310(v28, v78, &qword_F2C60, &qword_C42C0);
      swift_storeEnumTagMultiPayload();
      sub_9A4BC();
      sub_9A578();
      v61 = v82;
      sub_B6F00();
      sub_A194(v28, &qword_F2C60, &qword_C42C0);
      sub_A310(v61, v87, &qword_F2C50, &qword_C42B8);
      swift_storeEnumTagMultiPayload();
      sub_9A430();
      sub_9A634(&qword_F2CB8, &qword_F2CC0, &qword_C42F0);
      v51 = v86;
      sub_B6F00();
      sub_A194(v61, &qword_F2C50, &qword_C42B8);
      (*(v59 + 8))(v58, v60);
    }

    else
    {
      __chkstk_darwin(isCurrentExecutor);
      v49 = v76;
      v48 = v77;
      *(&v63 - 4) = v39;
      *(&v63 - 3) = v49;
      *(&v63 - 2) = v48;
      sub_9A810();
      sub_B6C00();
      (*(v32 + 16))(v25, v35, v31);
      swift_storeEnumTagMultiPayload();
      sub_9A634(&qword_F2C68, &qword_F2C70, &qword_C42C8);
      sub_9A634(&qword_F2C78, &qword_F2C80, &qword_C42D0);
      sub_B6F00();
      sub_A310(v28, v78, &qword_F2C60, &qword_C42C0);
      swift_storeEnumTagMultiPayload();
      sub_9A4BC();
      sub_9A578();
      v50 = v82;
      sub_B6F00();
      sub_A194(v28, &qword_F2C60, &qword_C42C0);
      sub_A310(v50, v87, &qword_F2C50, &qword_C42B8);
      swift_storeEnumTagMultiPayload();
      sub_9A430();
      sub_9A634(&qword_F2CB8, &qword_F2CC0, &qword_C42F0);
      v51 = v86;
      sub_B6F00();
      sub_A194(v50, &qword_F2C50, &qword_C42B8);
      (*(v32 + 8))(v35, v31);
    }
  }

  else
  {
    if (v41 == 2)
    {
      type metadata accessor for DelegatedSharesShareeItemDescriptionView();
      sub_9A7BC(&qword_F2CF0, type metadata accessor for DelegatedSharesShareeItemDescriptionView);
      v44 = v65;
      sub_B6C00();
      v45 = v66;
      v46 = v74;
      (*(v66 + 16))(v11, v44, v74);
      swift_storeEnumTagMultiPayload();
      sub_9A634(&qword_F2C98, &qword_F2CA0, &qword_C42E0);
      sub_9A634(&qword_F2CA8, &qword_F2CB0, &qword_C42E8);
      v47 = v73;
    }

    else
    {
      if (v41 != 3)
      {
        __chkstk_darwin(isCurrentExecutor);
        *(&v63 - 4) = v53;
        v54 = v77;
        *(&v63 - 3) = v76;
        *(&v63 - 2) = v54;
        type metadata accessor for ItemContactInfoSetupConfirmationView();
        sub_9A7BC(&qword_F1D90, type metadata accessor for ItemContactInfoSetupConfirmationView);
        v55 = v67;
        sub_B6C00();
        v56 = v68;
        v57 = v88;
        (*(v68 + 16))(v87, v55, v88);
        swift_storeEnumTagMultiPayload();
        sub_9A430();
        sub_9A634(&qword_F2CB8, &qword_F2CC0, &qword_C42F0);
        v51 = v86;
        sub_B6F00();
        (*(v56 + 8))(v55, v57);
        goto LABEL_13;
      }

      __chkstk_darwin(isCurrentExecutor);
      *(&v63 - 4) = v42;
      v43 = v77;
      *(&v63 - 3) = v76;
      *(&v63 - 2) = v43;
      type metadata accessor for ItemContactInfoSetupIntroductionView();
      sub_9A7BC(&qword_F2CE8, type metadata accessor for ItemContactInfoSetupIntroductionView);
      v44 = v69;
      sub_B6C00();
      v45 = v70;
      v46 = v75;
      (*(v70 + 16))(v11, v44, v75);
      swift_storeEnumTagMultiPayload();
      sub_9A634(&qword_F2C98, &qword_F2CA0, &qword_C42E0);
      sub_9A634(&qword_F2CA8, &qword_F2CB0, &qword_C42E8);
      v47 = v73;
    }

    sub_B6F00();
    sub_A310(v47, v78, &qword_F2C90, &qword_C42D8);
    swift_storeEnumTagMultiPayload();
    sub_9A4BC();
    sub_9A578();
    v52 = v82;
    sub_B6F00();
    sub_A194(v47, &qword_F2C90, &qword_C42D8);
    sub_A310(v52, v87, &qword_F2C50, &qword_C42B8);
    swift_storeEnumTagMultiPayload();
    sub_9A430();
    sub_9A634(&qword_F2CB8, &qword_F2CC0, &qword_C42F0);
    v51 = v86;
    sub_B6F00();
    sub_A194(v52, &qword_F2C50, &qword_C42B8);
    (*(v45 + 8))(v44, v46);
  }

LABEL_13:
  sub_AB00(v51, v89, &qword_F2C30, &qword_C42B0);
}

uint64_t sub_988C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v13[3] = &type metadata for SolariumFeatureFlag;
  v13[4] = sub_28360();

  v7 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (v7)
  {
    v8 = 0xD000000000000023;
  }

  else
  {
    v8 = 0xD00000000000001CLL;
  }

  if (v7)
  {
    v9 = "airtag-briefcase-cover-photo";
  }

  else
  {
    v9 = "_MANAGEMENT_SHARE_WEBPAGE_TITLE";
  }

  v10 = v9 | 0x8000000000000000;
  type metadata accessor for DelegatedSharesSetupIntroductionViewModel();

  sub_B75B0();

  v12 = v13[1];
  *a3 = v13[0];
  a3[1] = v12;
  a3[2] = sub_9AB0C;
  a3[3] = v6;
  a3[4] = v8;
  a3[5] = v10;
  return result;
}

uint64_t sub_98A40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for DelegatedSharesManagementView();
  v5 = a2 + *(v4 + 24);
  *v5 = xmmword_BFB50;
  *(v5 + 1) = xmmword_BFB60;
  *(v5 + 4) = 0x4000000000000000;
  v6 = (a2 + *(v4 + 20));

  sub_B75B0();

  *v6 = v8;
  v6[1] = v9;
  return result;
}

uint64_t sub_98B90@<X0>(uint64_t *a1@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  DelegatedSharesShareeItemDescriptionView.init(viewModel:)(v2, a1);
}

uint64_t sub_98C40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *a3 = xmmword_C3130;
  v7 = *(type metadata accessor for ItemContactInfoSetupIntroductionView() + 28);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ItemContactInfoSetupIntroductionViewModel();

  sub_B75B0();

  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = sub_9AB0C;
  *(a3 + 40) = v6;
  return result;
}

uint64_t sub_98DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  ItemContactInfoSetupConfirmationView.init(viewModel:onDismiss:)(a1, sub_9A868, v8, a4);
}

uint64_t sub_98EB0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C10, &qword_C41E8);
  sub_B75C0();
  v3 = 0;
  LOBYTE(v4) = -1;
  sub_9ABD0(&v3);
}

uint64_t sub_98F18()
{
  v1 = type metadata accessor for LostModeInfo();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v22 - v8;
  v10 = type metadata accessor for LostModeReportingState();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0[1];
  v22[0] = *v0;
  v22[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C10, &qword_C41E8);
  sub_B75C0();
  v15 = v22[3];
  swift_getKeyPath();
  v22[0] = v15;
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v16 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  sub_9A8B0(v15 + v16, v13, type metadata accessor for LostModeReportingState);

  if ((*(v2 + 48))(v13, 2, v1))
  {
    if (qword_EEAC8 != -1)
    {
      swift_once();
    }

    v17 = sub_B62F0();
    v18 = __swift_project_value_buffer(v17, qword_FADB0);
    v19 = *(v17 - 8);
    (*(v19 + 16))(v9, v18, v17);
    (*(v19 + 56))(v9, 0, 1, v17);
    MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = sub_B78D0();
    sub_A194(v9, &unk_F17B0, &qword_BE7D0);
  }

  else
  {
    sub_9AA14(v13, v5, type metadata accessor for LostModeInfo);
    MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
    sub_9AA7C(v5, type metadata accessor for LostModeInfo);
  }

  return MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0;
}

uint64_t sub_992A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for LostModeReportingState();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2;
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C10, &qword_C41E8);
  sub_B75C0();
  v9 = v14;
  swift_getKeyPath();
  v16 = v9;
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v10 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  sub_9A8B0(v9 + v10, v8, type metadata accessor for LostModeReportingState);

  v11 = type metadata accessor for LostModeInfo();
  result = (*(*(v11 - 8) + 48))(v8, 2, v11);
  if (result)
  {
    if (result != 1)
    {
      v14 = a2;
      v15 = a3;
      sub_B75C0();
      LostModeManagementSectionViewModel.shareContactInfoButtonTapped()();
    }
  }

  else
  {
    v14 = a2;
    v15 = a3;
    sub_B75C0();
    LostModeManagementSectionViewModel.viewContactInfoButtonTapped()();

    return sub_9AA7C(v8, type metadata accessor for LostModeReportingState);
  }

  return result;
}

uint64_t sub_994BC()
{
  v51 = sub_B64E0();
  v57 = *(v51 - 8);
  v1 = *(v57 + 64);
  __chkstk_darwin(v51);
  v56 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_B6500();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  __chkstk_darwin(v3);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DelegatedURLShare();
  v55 = *(v58 - 8);
  v6 = *(v55 + 64);
  __chkstk_darwin(v58);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v51 - v19;
  v21 = type metadata accessor for DelegatedSharesReportingState(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v0[1];
  v59 = *v0;
  v60 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C10, &qword_C41E8);
  sub_B75C0();
  v26 = v61;
  swift_getKeyPath();
  v59 = v26;
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v27 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
  swift_beginAccess();
  sub_9A8B0(v26 + v27, v24, type metadata accessor for DelegatedSharesReportingState);

  if ((*(v10 + 48))(v24, 2, v9))
  {
    if (qword_EEAB0 != -1)
    {
      swift_once();
    }

    v28 = sub_B62F0();
    v29 = __swift_project_value_buffer(v28, qword_FAD48);
    v30 = *(v28 - 8);
    (*(v30 + 16))(v20, v29, v28);
    (*(v30 + 56))(v20, 0, 1, v28);
    v31 = sub_B78D0();
    v32 = &unk_F17B0;
    v33 = &qword_BE7D0;
    v34 = v20;
  }

  else
  {
    v35 = v54;
    v37 = v56;
    v36 = v57;
    sub_AB00(v24, v16, &qword_F0A10, &qword_C01B0);
    sub_A310(v16, v14, &qword_F0A10, &qword_C01B0);
    v38 = v58;
    if ((*(v55 + 48))(v14, 1, v58) == 1)
    {
      sub_A194(v14, &qword_F0A10, &qword_C01B0);
      if (qword_EEAB0 != -1)
      {
        swift_once();
      }

      v39 = sub_B62F0();
      v40 = __swift_project_value_buffer(v39, qword_FAD48);
      v41 = *(v39 - 8);
      (*(v41 + 16))(v20, v40, v39);
      (*(v41 + 56))(v20, 0, 1, v39);
      v31 = sub_B78D0();
      sub_A194(v20, &unk_F17B0, &qword_BE7D0);
    }

    else
    {
      sub_9AA14(v14, v8, type metadata accessor for DelegatedURLShare);
      v42 = *(v38 + 20);
      sub_B64F0();
      sub_B64D0();
      v43 = sub_B6530();
      v45 = v44;
      (*(v36 + 8))(v37, v51);
      (*(v52 + 8))(v35, v53);
      if (qword_EEAB0 != -1)
      {
        swift_once();
      }

      v46 = sub_B62F0();
      v47 = __swift_project_value_buffer(v46, qword_FAD48);
      v48 = *(v46 - 8);
      (*(v48 + 16))(v20, v47, v46);
      (*(v48 + 56))(v20, 0, 1, v46);
      sub_B78D0();
      sub_A194(v20, &unk_F17B0, &qword_BE7D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_BDA30;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_305FC();
      *(v49 + 32) = v43;
      *(v49 + 40) = v45;
      v31 = sub_B78F0();

      sub_9AA7C(v8, type metadata accessor for DelegatedURLShare);
    }

    v32 = &qword_F0A10;
    v33 = &qword_C01B0;
    v34 = v16;
  }

  sub_A194(v34, v32, v33);
  return v31;
}

uint64_t sub_99D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for DelegatedSharesReportingState(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  v25 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C10, &qword_C41E8);
  sub_B75C0();
  v13 = v22;
  swift_getKeyPath();
  v24 = v13;
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v14 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
  swift_beginAccess();
  sub_9A8B0(v13 + v14, v12, type metadata accessor for DelegatedSharesReportingState);

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  result = (*(*(v15 - 8) + 48))(v12, 2, v15);
  if (result)
  {
    if (result != 1)
    {
      v22 = a2;
      v23 = a3;
      sub_B75C0();
      LostModeManagementSectionViewModel.startDelegatedURLSharesReportingButtonTapped()();
    }
  }

  else
  {
    v22 = a2;
    v23 = a3;
    sub_B75C0();
    v17 = v21;
    v18 = sub_B7A80();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    sub_B7A60();

    v19 = sub_B7A50();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v17;
    sub_30A3C(0, 0, v8, &unk_C4450, v20);

    return sub_9AA7C(v12, type metadata accessor for DelegatedSharesReportingState);
  }

  return result;
}

uint64_t sub_9A048@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  swift_beginAccess();
  return sub_9A8B0(v3 + v4, a2, type metadata accessor for LostAccessory);
}

uint64_t sub_9A128(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for LostAccessory();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_9A8B0(a1, v7, type metadata accessor for LostAccessory);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_9A7BC(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65B0();

  return sub_9AA7C(v7, type metadata accessor for LostAccessory);
}

uint64_t sub_9A288(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  sub_9A884(v5, v3);
  return sub_9ABD0(&v5);
}

uint64_t sub_9A2D0@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (*(result + 8) == 1)
  {
    v3 = *result;
  }

  else
  {
    v3 = 0xF000000000000007;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_9A318(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_83A4C(a1, a2);
  }

  return a1;
}

unint64_t sub_9A338()
{
  result = qword_F2C38;
  if (!qword_F2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2C38);
  }

  return result;
}

unint64_t sub_9A38C()
{
  result = qword_F2C40;
  if (!qword_F2C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2C30, &qword_C42B0);
    sub_9A430();
    sub_9A634(&qword_F2CB8, &qword_F2CC0, &qword_C42F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2C40);
  }

  return result;
}

unint64_t sub_9A430()
{
  result = qword_F2C48;
  if (!qword_F2C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2C50, &qword_C42B8);
    sub_9A4BC();
    sub_9A578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2C48);
  }

  return result;
}

unint64_t sub_9A4BC()
{
  result = qword_F2C58;
  if (!qword_F2C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2C60, &qword_C42C0);
    sub_9A634(&qword_F2C68, &qword_F2C70, &qword_C42C8);
    sub_9A634(&qword_F2C78, &qword_F2C80, &qword_C42D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2C58);
  }

  return result;
}

unint64_t sub_9A578()
{
  result = qword_F2C88;
  if (!qword_F2C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2C90, &qword_C42D8);
    sub_9A634(&qword_F2C98, &qword_F2CA0, &qword_C42E0);
    sub_9A634(&qword_F2CA8, &qword_F2CB0, &qword_C42E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2C88);
  }

  return result;
}

uint64_t sub_9A634(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_9A688(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_9A6CC()
{
  type metadata accessor for DetailsSectionTemplate();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_F2C30, &qword_C42B0);
  sub_9A7BC(&qword_EF678, type metadata accessor for DetailsSectionTemplate);
  sub_9A338();
  sub_9A38C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_9A7BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_9A810()
{
  result = qword_F2D00;
  if (!qword_F2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2D00);
  }

  return result;
}

uint64_t sub_9A884(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_83A34(a1, a2);
  }

  return a1;
}

uint64_t sub_9A8B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_9A920()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_9A960(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_F248;

  return sub_9E81C(a1, v4, v5, v6);
}

uint64_t sub_9AA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_9AA7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_9AB10@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v3 = v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination;
  v4 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination);
  *a1 = v4;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_9A884(v4, v5);
}

uint64_t sub_9ABD0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination;
  v5 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination);
  v6 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination + 8);
  sub_9A884(v5, v6);
  v7 = sub_A2C2C(v5, v6, v2, v3);
  sub_9A318(v5, v6);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
    sub_B65B0();
    sub_9A318(v2, v3);
  }

  else
  {
    v10 = *v4;
    *v4 = v2;
    v11 = *(v4 + 8);
    *(v4 + 8) = v3;

    return sub_9A318(v10, v11);
  }
}

uint64_t sub_9ADB8@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v7 = *a1;
  swift_beginAccess();
  return sub_A2B7C(v9 + v7, a3, a2);
}

Swift::Void __swiftcall LostModeManagementSectionViewModel.shareContactInfoButtonTapped()()
{
  v1 = v0;
  v2 = type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LostAccessory();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LostModeReportingState();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
  v69 = v0;
  v18 = sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v19 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  sub_A2B7C(v1 + v19, v16, type metadata accessor for LostModeReportingState);
  v20 = type metadata accessor for LostModeInfo();
  (*(*(v20 - 8) + 56))(v14, 1, 2, v20);
  LOBYTE(v19) = _s13FindMyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0(v16, v14);
  sub_A2A58(v14, type metadata accessor for LostModeReportingState);
  sub_A2A58(v16, type metadata accessor for LostModeReportingState);
  if ((v19 & 1) == 0)
  {
    swift_getKeyPath();
    v68 = v1;
    sub_B65C0();

    v21 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
    swift_beginAccess();
    v58 = v9;
    sub_A2B7C(v1 + v21, v9, type metadata accessor for LostAccessory);
    v57 = v18;
    v22 = v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_dependencies;
    v23 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies();
    v24 = v23[11];
    v25 = (v22 + v23[12]);
    v54 = *v25;
    v26 = v2;
    v55 = v25[3];
    v27 = v23[14];
    v28 = (v22 + v23[13]);
    v56 = v17;
    v53 = *v28;
    v29 = v28[3];
    v30 = (v22 + v27);
    v31 = *v30;
    v32 = v30[3];
    v33 = (v22 + v23[15]);
    v34 = *v33;
    v35 = v33[5];
    v36 = (v22 + v23[16]);
    v37 = *v36;
    v38 = v36[3];
    v39 = *(v26 + 36);
    v59 = *(v25 + 1);
    v40 = *(v30 + 1);
    v60 = *(v28 + 1);
    v61 = v40;
    v41 = *(v33 + 3);
    v62 = *(v33 + 1);
    v63 = v41;
    v64 = *(v36 + 1);
    sub_A2B7C(v22 + v24, &v5[v39], type metadata accessor for ItemProximityProvider);
    *v5 = v54;
    *(v5 + 8) = v59;
    v42 = v53;
    *(v5 + 3) = v55;
    *(v5 + 4) = v42;
    v43 = v61;
    *(v5 + 40) = v60;
    *(v5 + 7) = v29;
    *(v5 + 8) = v31;
    *(v5 + 72) = v43;
    *(v5 + 11) = v32;
    *(v5 + 12) = v34;
    v44 = v63;
    *(v5 + 104) = v62;
    *(v5 + 120) = v44;
    *(v5 + 17) = v35;
    *(v5 + 18) = v37;
    *(v5 + 152) = v64;
    *(v5 + 21) = v38;
    swift_getKeyPath();
    v67 = v1;

    sub_B65C0();

    v45 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState;
    swift_beginAccess();
    if (*(v1 + v45) && *(v1 + v45) == 1)
    {
      v46 = 1;
      v47 = v58;
    }

    else
    {
      v47 = v58;
      v46 = sub_B7DD0();
    }

    v48 = type metadata accessor for ItemContactInfoSetupIntroductionViewModel();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    v51 = swift_allocObject();
    *(v51 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__itemProximityTask) = 0;
    sub_B69B0();
    v52 = v51 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel__destination;
    *v52 = 0;
    *(v52 + 8) = -1;
    sub_B65F0();
    sub_881E8(*v52, *(v52 + 8));
    *v52 = 0;
    *(v52 + 8) = -1;
    sub_A2AB8(v47, v51 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_lostAccessory, type metadata accessor for LostAccessory);
    sub_A2AB8(v5, v51 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_dependencies, type metadata accessor for ItemContactInfoSetupIntroductionViewModel.Dependencies);
    *(v51 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupIntroductionViewModel_hasValidItemLocationToContinueSubmission) = v46 & 1;
    v65 = v51 | 0x6000000000000000;
    v66 = 1;
    sub_9ABD0(&v65);
  }
}

Swift::Void __swiftcall LostModeManagementSectionViewModel.viewContactInfoButtonTapped()()
{
  v1 = v0;
  v2 = sub_B6320();
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = *(v73 + 64);
  __chkstk_darwin(v2);
  v72 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LostAccessory();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v77 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LostModeInfo();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v75 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v76 = &v65 - v13;
  v14 = type metadata accessor for LostModeReportingState();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v65 - v20;
  __chkstk_darwin(v19);
  v23 = &v65 - v22;
  swift_getKeyPath();
  v24 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
  *&v83[0] = v0;
  v78 = sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  v79 = v24;
  sub_B65C0();

  v25 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  sub_A2B7C(v0 + v25, v23, type metadata accessor for LostModeReportingState);
  (*(v9 + 56))(v21, 1, 2, v8);
  MyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0 = _s13FindMyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0(v23, v21);
  sub_A2A58(v21, type metadata accessor for LostModeReportingState);
  sub_A2A58(v23, type metadata accessor for LostModeReportingState);
  if ((MyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0 & 1) == 0)
  {
    swift_getKeyPath();
    *&v83[0] = v1;
    sub_B65C0();

    sub_A2B7C(v1 + v25, v18, type metadata accessor for LostModeReportingState);
    if (!(*(v9 + 48))(v18, 2, v8))
    {
      v27 = v76;
      sub_A2AB8(v18, v76, type metadata accessor for LostModeInfo);
      v71 = type metadata accessor for LostModeInfo;
      v28 = v75;
      sub_A2B7C(v27, v75, type metadata accessor for LostModeInfo);
      v29 = v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_dependencies;
      v30 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies();
      v31 = v29 + v30[12];
      v32 = *(v31 + 24);
      v33 = (v29 + v30[13]);
      v34 = *v33;
      v35 = v33[3];
      v36 = (v29 + v30[15]);
      v37 = *v36;
      v38 = v36[5];
      v39 = (v29 + v30[14]);
      v40 = *v39;
      v41 = v39[3];
      v42 = (v29 + v30[16]);
      v43 = *v42;
      v44 = v42[3];
      *&v83[0] = *v31;
      v65 = *(v31 + 8);
      *(v83 + 8) = v65;
      *(&v83[1] + 1) = v32;
      *&v84[0] = v34;
      v66 = *(v33 + 1);
      *(v84 + 8) = v66;
      *(&v84[1] + 1) = v35;
      *&v85[0] = v37;
      v67 = *(v36 + 1);
      *(v85 + 8) = v67;
      v68 = *(v36 + 3);
      *(&v85[1] + 8) = v68;
      *(&v85[2] + 1) = v38;
      *&v86[0] = v40;
      v69 = *(v39 + 1);
      *(v86 + 8) = v69;
      *(&v86[1] + 1) = v41;
      *&v87[0] = v43;
      v70 = *(v42 + 1);
      *(v87 + 8) = v70;
      *(&v87[1] + 1) = v44;
      swift_getKeyPath();
      v81 = v1;

      sub_B65C0();

      v45 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
      swift_beginAccess();
      v79 = type metadata accessor for LostAccessory;
      sub_A2B7C(v1 + v45, v77, type metadata accessor for LostAccessory);
      v46 = type metadata accessor for ItemContactInfoSetupConfirmationViewModel();
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      v49 = swift_allocObject();
      *(v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__dismiss) = 0;
      v50 = OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination;
      *(v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__destination) = -256;
      sub_B65F0();
      *(v49 + v50) = -256;
      v51 = v71;
      sub_A2B7C(v28, v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__lostModeInfo, v71);
      sub_A2B7C(v28, v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_originalLostModeInfo, v51);
      *(v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_editType) = 1;
      v52 = (v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_dependencies);
      v53 = v87[0];
      v52[8] = v86[1];
      v52[9] = v53;
      v52[10] = v87[1];
      v54 = v85[1];
      v52[4] = v85[0];
      v52[5] = v54;
      v55 = v86[0];
      v52[6] = v85[2];
      v52[7] = v55;
      v56 = v83[1];
      *v52 = v83[0];
      v52[1] = v56;
      v57 = v84[1];
      v52[2] = v84[0];
      v52[3] = v57;
      sub_777DC(v83, &v81);
      v58 = v72;
      sub_B6330();
      (*(v73 + 32))(v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_contactKind, v58, v74);
      *(v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableSaveButton) = 0;
      *(v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldEnableCancelButton) = 0;
      MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
      v60 = (v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__contactInfo);
      *v60 = MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0;
      v60[1] = v61;
      *(v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__shouldNotifyWhenFound) = 0;
      *(v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__originalShouldNotifyWhenFound) = 0;
      *(v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isSubmitting) = 0;
      *(v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel__isDisabling) = 0;
      v62 = *&v87[0];
      v63 = *&v87[1];
      v80 = 1;

      v62(&v81, &v80);

      *(v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userVisibleEditItems) = v81;
      v80 = 1;

      v63(&v81, &v80);
      sub_77838(v83);

      *(v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_userInteractableEditItems) = v81;
      v64 = v77;
      sub_A2B7C(v77, v49 + OBJC_IVAR____TtC13FindMyAppCore41ItemContactInfoSetupConfirmationViewModel_lostAccessory, v79);
      sub_769C4();
      sub_A2A58(v64, type metadata accessor for LostAccessory);
      sub_A2A58(v28, type metadata accessor for LostModeInfo);
      v81 = v49 | 0x8000000000000000;
      v82 = 1;
      sub_9ABD0(&v81);
      sub_A2A58(v76, type metadata accessor for LostModeInfo);
    }
  }
}

Swift::Void __swiftcall LostModeManagementSectionViewModel.startDelegatedURLSharesReportingButtonTapped()()
{
  v1 = v0;
  v2 = type metadata accessor for DelegatedSharesSetupIntroductionViewModel.Dependencies();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = (v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for LostAccessory();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v26[2] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
  v31 = v0;
  v26[1] = sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v11 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  swift_beginAccess();
  v27 = v10;
  sub_A2B7C(v1 + v11, v10, type metadata accessor for LostAccessory);
  v12 = v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_dependencies;
  v13 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies();
  v14 = (v12 + v13[6]);
  v16 = *v14;
  v15 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v19 = (v12 + v13[7]);
  v20 = *v19;
  v21 = v19[1];
  sub_A2B7C(v12 + v13[11], v6 + *(v3 + 32), type metadata accessor for ItemProximityProvider);
  *v6 = v16;
  v6[1] = v15;
  v6[2] = v17;
  v6[3] = v18;
  v6[4] = v20;
  v6[5] = v21;
  swift_getKeyPath();
  v30 = v1;

  v22 = v18;

  sub_B65C0();

  v23 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState;
  swift_beginAccess();
  if (*(v1 + v23) && *(v1 + v23) == 1)
  {
    v24 = 1;
    v25 = v27;
  }

  else
  {
    v25 = v27;
    v24 = sub_B7DD0();
  }

  MyAppCore41DelegatedSharesSetupIntroductionViewModelC13lostAccessory12dependencies40hasValidItemLocationToContinueSubmissionAcA04LostL0V_AC12DependenciesVSbtcfC_0 = _s13FindMyAppCore41DelegatedSharesSetupIntroductionViewModelC13lostAccessory12dependencies40hasValidItemLocationToContinueSubmissionAcA04LostL0V_AC12DependenciesVSbtcfC_0(v25, v6, v24 & 1);
  v29 = 1;
  sub_9ABD0(&MyAppCore41DelegatedSharesSetupIntroductionViewModelC13lostAccessory12dependencies40hasValidItemLocationToContinueSubmissionAcA04LostL0V_AC12DependenciesVSbtcfC_0);
}

Swift::Void __swiftcall LostModeManagementSectionViewModel.viewExistingDelegatedURLSharesButtonTapped()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_B7A80();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_B7A60();

  v7 = sub_B7A50();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v1;
  sub_30A3C(0, 0, v5, &unk_C4450, v8);
}

uint64_t sub_9C1EC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__hasRegisteredObservers) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__hasRegisteredObservers) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_9C32C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v4 = *(v2 + *a2);
}

uint64_t sub_9C3D0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  *a3 = *(v5 + *a2);
}

uint64_t sub_9C488(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*(v2 + *a2))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
    sub_B65B0();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = *(v2 + *a2);

  v6 = sub_B7AD0();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v2 + v4);
LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t type metadata accessor for LostModeManagementSectionViewModel()
{
  result = qword_F2DA8;
  if (!qword_F2DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LostModeManagementSectionViewModel.currentLostModeReportingState.setter(uint64_t a1)
{
  v3 = type metadata accessor for LostModeReportingState();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  swift_beginAccess();
  sub_A2B7C(v1 + v7, v6, type metadata accessor for LostModeReportingState);
  MyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0 = _s13FindMyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0(v6, a1);
  sub_A2A58(v6, type metadata accessor for LostModeReportingState);
  if (MyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0)
  {
    swift_beginAccess();
    sub_A2D98(a1, v1 + v7, type metadata accessor for LostModeReportingState);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[1] = v1;
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
    sub_B65B0();
  }

  return sub_A2A58(a1, type metadata accessor for LostModeReportingState);
}

uint64_t sub_9C8DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  sub_A2D98(a2, a1 + v7, a4);
  return swift_endAccess();
}

void (*LostModeManagementSectionViewModel.currentLostModeReportingState.modify(uint64_t *a1))(void **a1)
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
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_9CA9C;
}

uint64_t sub_9CAD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v8 = *a2;
  swift_beginAccess();
  return sub_A2B7C(v7 + v8, a4, a3);
}

uint64_t sub_9CBE4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v17 - v13;
  sub_A2B7C(a1, &v17 - v13, a6);
  v15 = *a2;
  return a7(v14);
}

uint64_t LostModeManagementSectionViewModel.currentDelegatedSharesReportingState.setter(uint64_t a1)
{
  v3 = type metadata accessor for DelegatedSharesReportingState(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
  swift_beginAccess();
  sub_A2B7C(v1 + v7, v6, type metadata accessor for DelegatedSharesReportingState);
  MyAppCore29DelegatedSharesReportingStateO2eeoiySbAC_ACtFZ_0 = _s13FindMyAppCore29DelegatedSharesReportingStateO2eeoiySbAC_ACtFZ_0(v6, a1);
  sub_A2A58(v6, type metadata accessor for DelegatedSharesReportingState);
  if (MyAppCore29DelegatedSharesReportingStateO2eeoiySbAC_ACtFZ_0)
  {
    swift_beginAccess();
    sub_A2D98(a1, v1 + v7, type metadata accessor for DelegatedSharesReportingState);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[1] = v1;
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
    sub_B65B0();
  }

  return sub_A2A58(a1, type metadata accessor for DelegatedSharesReportingState);
}

void (*LostModeManagementSectionViewModel.currentDelegatedSharesReportingState.modify(uint64_t *a1))(void **a1)
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
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_9CFD4;
}

uint64_t LostModeManagementSectionViewModel.currentProximityState.getter@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v3 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_9D0A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_9D168(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return LostModeManagementSectionViewModel.currentProximityState.setter(&v4);
}

uint64_t LostModeManagementSectionViewModel.currentProximityState.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState;
  swift_beginAccess();
  v4 = 0xE300000000000000;
  v5 = 7496038;
  if (*(v1 + v3) != 1)
  {
    v5 = 0x54426E6968746977;
    v4 = 0xED000065676E6152;
  }

  if (*(v1 + v3))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (*(v1 + v3))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xE300000000000000;
  v9 = 7496038;
  if (v2 != 1)
  {
    v9 = 0x54426E6968746977;
    v8 = 0xED000065676E6152;
  }

  if (v2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {

LABEL_21:
    *(v1 + v3) = v2;
    return result;
  }

  v13 = sub_B7DD0();

  if (v13)
  {
    goto LABEL_21;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65B0();
}

void (*LostModeManagementSectionViewModel.currentProximityState.modify(uint64_t *a1))(void **a1)
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
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_9D4F8;
}

uint64_t LostModeManagementSectionViewModel.__allocating_init(initialDestination:lostAccessory:dependencies:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  LostModeManagementSectionViewModel.init(initialDestination:lostAccessory:dependencies:)(a1, a2, a3);
  return v9;
}

uint64_t LostModeManagementSectionViewModel.init(initialDestination:lostAccessory:dependencies:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination;
  *v8 = 0;
  *(v8 + 8) = -1;
  sub_B69B0();
  v9 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__availabilityProviderTask;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__availabilityProviderTask) = 0;
  v10 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostModeStatusProviderTask;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostModeStatusProviderTask) = 0;
  v11 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__proximityStatusProviderTask;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__proximityStatusProviderTask) = 0;
  sub_B65F0();
  sub_9A318(*v8, *(v8 + 8));
  *v8 = v6;
  *(v8 + 8) = v7;
  sub_A2AB8(a2, v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory, type metadata accessor for LostAccessory);
  v12 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies();
  v13 = (a3 + *(v12 + 20));
  v14 = *v13;
  v15 = v13[1];
  v16 = (v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_lostModeStatusProvider);
  *v16 = v14;
  v16[1] = v15;
  sub_A2B7C(a3, v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_delegatedSharesStatusProvider, type metadata accessor for DelegatedSharesReportingStatusProvider);
  sub_A2B7C(a3 + *(v12 + 44), v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_proximityStatusProvider, type metadata accessor for ItemProximityProvider);
  v17 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  (*(*(v18 - 8) + 56))(v3 + v17, 1, 2, v18);
  v19 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
  v20 = type metadata accessor for LostModeInfo();
  (*(*(v20 - 8) + 56))(v3 + v19, 1, 2, v20);
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState) = 0;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__hasRegisteredObservers) = 0;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive) = 0;
  v21 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_availabilityProviderStream;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AB0, &qword_C4540);
  (*(*(v22 - 8) + 56))(v3 + v21, 1, 1, v22);
  v23 = *(v3 + v9);

  *(v3 + v9) = 0;
  v24 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_lostModeStatusProviderStream;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2D60, &unk_C4548);
  (*(*(v25 - 8) + 56))(v3 + v24, 1, 1, v25);
  v26 = *(v3 + v10);

  *(v3 + v10) = 0;
  v27 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_proximityStatusProviderStream;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  (*(*(v28 - 8) + 56))(v3 + v27, 1, 1, v28);
  v29 = *(v3 + v11);

  *(v3 + v11) = 0;
  sub_A2AB8(a3, v3 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_dependencies, type metadata accessor for LostModeManagementSectionViewModel.Dependencies);
  return v3;
}

uint64_t sub_9D90C(char a1)
{
  v2 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive;
  v3 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive);
  if (v3 == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive) = a1 & 1;
    swift_getKeyPath();
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
    sub_B65C0();

    if (v3 != *(v1 + v2))
    {
      return sub_9DB6C();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
    sub_B65B0();
  }

  return result;
}

uint64_t sub_9DACC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  return *(v2 + *a2);
}

uint64_t sub_9DB6C()
{
  v1 = v0;
  v2 = type metadata accessor for ItemProximityProvider();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v80 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
  v83 = *(v5 - 8);
  v6 = *(v83 + 64);
  v7 = __chkstk_darwin(v5);
  v81 = v8;
  v82 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v90 = v75 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2D60, &unk_C4548);
  v88 = *(v10 - 8);
  v89 = v10;
  v11 = *(v88 + 64);
  v12 = __chkstk_darwin(v10);
  v79 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v87 = v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF458, &qword_BDED0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v91 = v75 - v16;
  v17 = type metadata accessor for DelegatedSharesReportingStatusProvider(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AB0, &qword_C4540);
  v85 = *(v21 - 8);
  v86 = v21;
  v22 = *(v85 + 64);
  v23 = __chkstk_darwin(v21);
  v78 = v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v84 = v75 - v24;
  swift_getKeyPath();
  v92 = v0;
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  if ((*(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__hasRegisteredObservers) & 1) == 0)
  {
    swift_getKeyPath();
    v92 = v0;
    sub_B65C0();

    v26 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive;
    if (*(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive) == 1)
    {
      v27 = sub_B69A0();
      v28 = sub_B7B60();
      v29 = os_log_type_enabled(v27, v28);
      v77 = v5;
      if (v29)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v27, v28, "Registering observers", v30, 2u);
      }

      swift_getKeyPath();
      v92 = v1;
      sub_B65C0();

      if (*(v1 + v26) == 1)
      {
        sub_A2B7C(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_delegatedSharesStatusProvider, v20, type metadata accessor for DelegatedSharesReportingStatusProvider);
        v31 = v84;
        v32 = v85;
        v33 = *(v85 + 32);
        v34 = v20;
        v35 = v86;
        v33(v84, v34, v86);
        v75[0] = sub_B7A80();
        v36 = *(v75[0] - 8);
        v76 = *(v36 + 56);
        v75[1] = v36 + 56;
        v76(v91, 1, 1, v75[0]);
        v37 = swift_allocObject();
        swift_weakInit();
        v38 = v78;
        (*(v32 + 16))(v78, v31, v35);
        v75[2] = sub_B7A60();

        v39 = sub_B7A50();
        v40 = (*(v32 + 80) + 40) & ~*(v32 + 80);
        v41 = swift_allocObject();
        *(v41 + 2) = v39;
        *(v41 + 3) = &protocol witness table for MainActor;
        *(v41 + 4) = v37;
        v33(&v41[v40], v38, v35);

        v42 = v91;
        v43 = sub_30A3C(0, 0, v91, &unk_C46D0, v41);
        sub_9C488(v43, &OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__availabilityProviderTask);
        v45 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_lostModeStatusProvider);
        v44 = *(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_lostModeStatusProvider + 8);

        v47 = v87;
        v45(v46);

        v48 = v75[0];
        v76(v42, 1, 1, v75[0]);
        v49 = swift_allocObject();
        swift_weakInit();
        v50 = v89;
        v51 = v88;
        v52 = v79;
        (*(v88 + 16))(v79, v47, v89);

        v53 = sub_B7A50();
        v54 = (*(v51 + 80) + 40) & ~*(v51 + 80);
        v55 = swift_allocObject();
        *(v55 + 2) = v53;
        *(v55 + 3) = &protocol witness table for MainActor;
        *(v55 + 4) = v49;
        (*(v51 + 32))(&v55[v54], v52, v50);

        v56 = v91;
        v57 = sub_30A3C(0, 0, v91, &unk_C46E0, v55);
        sub_9C488(v57, &OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostModeStatusProviderTask);
        v58 = v80;
        sub_A2B7C(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_proximityStatusProvider, v80, type metadata accessor for ItemProximityProvider);
        v59 = v83;
        v60 = *(v83 + 32);
        v61 = v90;
        v62 = v58;
        v63 = v77;
        v60(v90, v62, v77);
        v76(v56, 1, 1, v48);
        v64 = swift_allocObject();
        swift_weakInit();
        v65 = v82;
        v66 = v61;
        v67 = v63;
        (*(v59 + 16))(v82, v66, v63);

        v68 = sub_B7A50();
        v69 = (*(v59 + 80) + 40) & ~*(v59 + 80);
        v70 = swift_allocObject();
        *(v70 + 2) = v68;
        *(v70 + 3) = &protocol witness table for MainActor;
        *(v70 + 4) = v64;
        v60(&v70[v69], v65, v67);

        v71 = sub_30A3C(0, 0, v91, &unk_C46F0, v70);
        sub_9C488(v71, &OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__proximityStatusProviderTask);
        (*(v59 + 8))(v90, v67);
        (*(v88 + 8))(v87, v89);
        return (*(v85 + 8))(v84, v86);
      }

      else
      {
        if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__availabilityProviderTask))
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          v75[-2] = v1;
          v75[-1] = 0;
          v92 = v1;
          sub_B65B0();
        }

        if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostModeStatusProviderTask))
        {
          v73 = swift_getKeyPath();
          __chkstk_darwin(v73);
          v75[-2] = v1;
          v75[-1] = 0;
          v92 = v1;
          sub_B65B0();
        }

        if (*(v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__proximityStatusProviderTask))
        {
          v74 = swift_getKeyPath();
          __chkstk_darwin(v74);
          v75[-2] = v1;
          v75[-1] = 0;
          v92 = v1;
          sub_B65B0();
        }
      }
    }
  }

  return result;
}

uint64_t sub_9E698@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_9E74C(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive;
  v4 = *(a1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive);
  *(a1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__isActive) = a2;
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  if (v4 != *(a1 + v3))
  {
    return sub_9DB6C();
  }

  return result;
}

uint64_t sub_9E81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = type metadata accessor for DelegatedSharesManagementViewModel.Dependencies();
  v4[12] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v7 = *(*(type metadata accessor for DelegatedURLShare() - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = *(*(type metadata accessor for LostAccessory() - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v9 = sub_B65A0();
  v4[19] = v9;
  v10 = *(v9 - 8);
  v4[20] = v10;
  v11 = *(v10 + 64) + 15;
  v4[21] = swift_task_alloc();
  sub_B7A60();
  v4[22] = sub_B7A50();
  v13 = sub_B7A00();
  v4[23] = v13;
  v4[24] = v12;

  return _swift_task_switch(sub_9E9BC, v13, v12);
}

uint64_t sub_9E9BC()
{
  v36 = v0;
  v1 = v0[11];
  v0[25] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_logger;

  v2 = sub_B69A0();
  v3 = sub_B7B60();

  v4 = &qword_F2000;
  if (os_log_type_enabled(v2, v3))
  {
    v33 = v3;
    v6 = v0[19];
    v5 = v0[20];
    v30 = v0[18];
    v31 = v0[21];
    v7 = v0[11];
    v8 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v8 = 136315138;
    swift_getKeyPath();
    v0[10] = v7;
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
    sub_B65C0();

    v9 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
    swift_beginAccess();
    v10 = v7 + v9;
    v4 = &qword_F2000;
    sub_A2B7C(v10, v30, type metadata accessor for LostAccessory);
    (*(v5 + 32))(v31, v30, v6);
    sub_A2BE4(&qword_F0A28, &type metadata accessor for UUID);
    v11 = sub_B7DA0();
    v13 = v12;
    (*(v5 + 8))(v31, v6);
    v14 = sub_17834(v11, v13, &v35);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_0, v2, v33, "Fetching delegated share for accessory id: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  v15 = v0[17];
  v16 = v0[11];
  v17 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_dependencies;
  v0[26] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_dependencies;
  v18 = v16 + v17;
  v19 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies();
  v0[27] = v19;
  v20 = (v18 + *(v19 + 24));
  v21 = *v20;
  v0[28] = v20[1];
  v22 = v20[3];
  v0[29] = v22;
  swift_getKeyPath();
  v0[30] = v4[417];
  v0[8] = v16;
  v0[31] = sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);

  v23 = v22;
  sub_B65C0();

  v24 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  v0[32] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  swift_beginAccess();
  sub_A2B7C(v16 + v24, v15, type metadata accessor for LostAccessory);
  v34 = (v21 + *v21);
  v25 = v21[1];
  v26 = swift_task_alloc();
  v0[33] = v26;
  *v26 = v0;
  v26[1] = sub_9EE14;
  v27 = v0[16];
  v28 = v0[17];

  return v34(v27, v28);
}

uint64_t sub_9EE14()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_9F460;
  }

  else
  {
    v3 = sub_9EF28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_9EF28()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];

  v6 = *(v4 + 8);
  v0[35] = v6;
  v0[36] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v5, v3);
  v7 = v0[23];
  v8 = v0[24];

  return _swift_task_switch(sub_9EFC4, v7, v8);
}

uint64_t sub_9EFC4()
{
  v53 = v0;
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[11];

  sub_A2B7C(v4, v3, type metadata accessor for DelegatedURLShare);

  v6 = sub_B69A0();
  v7 = sub_B7B60();

  if (os_log_type_enabled(v6, v7))
  {
    v44 = v0[35];
    v45 = v0[36];
    v8 = v0[31];
    v43 = v0[32];
    v49 = v7;
    v9 = v0[30];
    v10 = v0[20];
    v11 = v0[21];
    v13 = v0[18];
    v12 = v0[19];
    v46 = v0[15];
    log = v6;
    v14 = v0[11];
    v15 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v15 = 136315394;
    swift_getKeyPath();
    v0[9] = v14;
    sub_B65C0();

    sub_A2B7C(v14 + v43, v13, type metadata accessor for LostAccessory);
    (*(v10 + 32))(v11, v13, v12);
    sub_A2BE4(&qword_F0A28, &type metadata accessor for UUID);
    v16 = sub_B7DA0();
    v18 = v17;
    v44(v11, v12);
    v19 = sub_17834(v16, v18, &v51);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    sub_B64C0();
    sub_A2BE4(&qword_F2F00, &type metadata accessor for URL);
    v20 = sub_B7DA0();
    v22 = v21;
    sub_A2A58(v46, type metadata accessor for DelegatedURLShare);
    v23 = sub_17834(v20, v22, &v51);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_0, log, v49, "Fetched delegated URL share for accessory id: %s with url: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v24 = v0[15];

    sub_A2A58(v24, type metadata accessor for DelegatedURLShare);
  }

  v25 = v0[27];
  v26 = v0[16];
  v28 = v0[13];
  v27 = v0[14];
  v29 = v0[12];
  v30 = v0[11] + v0[26];
  LOWORD(v51) = -256;
  sub_A2B7C(v26, v27, type metadata accessor for DelegatedURLShare);
  *loga = *(v30 + v25[7]);
  v50 = *(v30 + v25[9]);
  sub_A2B7C(v30 + v25[10], v28 + *(v29 + 24), type metadata accessor for DelegatedSharesUpdater);
  *v28 = *loga;
  v28[1] = v50;
  v31 = type metadata accessor for DelegatedSharesManagementViewModel();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();

  v51 = DelegatedSharesManagementViewModel.init(initialDestination:delegatedURLShare:dependencies:)(&v51, v27, v28) | 0x2000000000000000;
  v52 = 1;
  sub_9ABD0(&v51);
  sub_A2A58(v26, type metadata accessor for DelegatedURLShare);
  v34 = v0[21];
  v35 = v0[17];
  v36 = v0[18];
  v38 = v0[15];
  v37 = v0[16];
  v40 = v0[13];
  v39 = v0[14];

  v41 = v0[1];

  return v41();
}

uint64_t sub_9F460()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];

  (*(v4 + 8))(v5, v3);
  v6 = v0[23];
  v7 = v0[24];

  return _swift_task_switch(sub_9F4F0, v6, v7);
}

uint64_t sub_9F4F0()
{
  v1 = v0[34];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[11];

  swift_errorRetain();
  v5 = sub_B69A0();
  v6 = sub_B7B40();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[34];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v5, v6, "Error with fetching existing delegated share %@", v9, 0xCu);
    sub_A194(v10, &qword_EF4F8, &qword_C16D0);
  }

  else
  {
  }

  v12 = v0[21];
  v13 = v0[17];
  v14 = v0[18];
  v16 = v0[15];
  v15 = v0[16];
  v18 = v0[13];
  v17 = v0[14];

  v19 = v0[1];

  return v19();
}

uint64_t LostModeManagementSectionViewModel.presentShareeLandingPageAsPendingAction(reportingState:)(uint64_t a1)
{
  v2 = type metadata accessor for DelegatedSharesReportingState(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A2B7C(a1, v5, type metadata accessor for DelegatedSharesReportingState);
  v6 = type metadata accessor for DelegatedSharesShareeItemDescriptionViewModel();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  sub_A2AB8(v5, v9 + OBJC_IVAR____TtC13FindMyAppCore45DelegatedSharesShareeItemDescriptionViewModel_reportingState, type metadata accessor for DelegatedSharesReportingState);
  v11 = v9 | 0x4000000000000000;
  v12 = 1;
  return sub_9ABD0(&v11);
}

Swift::Void __swiftcall LostModeManagementSectionViewModel.learnMoreAsShareeButtonTapped()()
{
  v1 = v0;
  v2 = type metadata accessor for DelegatedSharesReportingState(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v0;
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  v6 = v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  swift_beginAccess();
  if ((*(v6 + *(type metadata accessor for LostAccessory() + 20)) & 4) != 0)
  {
    swift_getKeyPath();
    v17 = v1;
    sub_B65C0();

    v10 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
    swift_beginAccess();
    sub_A2B7C(v1 + v10, v5, type metadata accessor for DelegatedSharesReportingState);
    v11 = type metadata accessor for DelegatedSharesShareeItemDescriptionViewModel();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v14 = swift_allocObject();
    sub_A2AB8(v5, v14 + OBJC_IVAR____TtC13FindMyAppCore45DelegatedSharesShareeItemDescriptionViewModel_reportingState, type metadata accessor for DelegatedSharesReportingState);
    v15 = v14 | 0x4000000000000000;
    v16 = 1;
    sub_9ABD0(&v15);
  }

  else
  {
    v7 = sub_B69A0();
    v8 = sub_B7B40();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, ".canInteractWithDelegatedSharesEnabled needs to be enabled for this action to be supported", v9, 2u);
    }
  }
}

Swift::Void __swiftcall LostModeManagementSectionViewModel.updateLostAccessoryCapabilities(capabilities:)(FindMyAppCore::LostAccessory::Capabilities capabilities)
{
  v2 = *capabilities.rawValue;
  swift_getKeyPath();
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65C0();

  swift_getKeyPath();
  sub_B65E0();

  v3 = v1 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory;
  swift_beginAccess();
  *(v3 + *(type metadata accessor for LostAccessory() + 20)) = v2;
  swift_getKeyPath();
  sub_B65D0();
}

uint64_t sub_9FB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = type metadata accessor for DelegatedURLShare();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0A10, &qword_C01B0);
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C00, &qword_C41D8);
  v5[20] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2C08, &qword_C41E0);
  v5[22] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v16 = type metadata accessor for DelegatedSharesReportingState(0);
  v5[24] = v16;
  v17 = *(v16 - 8);
  v5[25] = v17;
  v18 = *(v17 + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2EF0, &qword_C4718) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2EF8, &unk_C4720);
  v5[30] = v20;
  v21 = *(v20 - 8);
  v5[31] = v21;
  v22 = *(v21 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = sub_B7A60();
  v5[34] = sub_B7A50();
  v24 = sub_B7A00();
  v5[35] = v24;
  v5[36] = v23;

  return _swift_task_switch(sub_9FE28, v24, v23);
}

uint64_t sub_9FE28()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[37] = Strong;
  if (Strong)
  {
    v3 = v0[32];
    v4 = v0[13];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AB0, &qword_C4540);
    sub_B7A90();
    v5 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
    v0[38] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState;
    v0[39] = v5;
    swift_beginAccess();
    v0[40] = 0;
    v6 = v0[33];
    v7 = sub_B7A50();
    v0[41] = v7;
    v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v9 = swift_task_alloc();
    v0[42] = v9;
    *v9 = v0;
    v9[1] = sub_A0018;
    v10 = v0[32];
    v11 = v0[29];
    v12 = v0[30];

    return AsyncStream.Iterator.next(isolation:)(v11, v7, &protocol witness table for MainActor, v12);
  }

  else
  {
    v13 = v0[34];

    v14 = v0[32];
    v15 = v0[28];
    v16 = v0[29];
    v18 = v0[26];
    v17 = v0[27];
    v19 = v0[23];
    v20 = v0[21];
    v21 = v0[19];
    v22 = v0[16];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_A0018()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);
  v7 = *v0;

  v4 = *(v1 + 288);
  v5 = *(v1 + 280);

  return _swift_task_switch(sub_A015C, v5, v4);
}

uint64_t sub_A015C()
{
  v1 = v0[29];
  if ((*(v0[25] + 48))(v1, 1, v0[24]) == 1)
  {
    v2 = v0[37];
    v3 = v0[34];
    (*(v0[31] + 8))(v0[32], v0[30]);

    v4 = v0[32];
    v5 = v0[28];
    v6 = v0[29];
    v8 = v0[26];
    v7 = v0[27];
    v9 = v0[23];
    v10 = v0[21];
    v11 = v0[19];
    v12 = v0[16];

    v13 = v0[1];

    return v13();
  }

  v16 = v0[37];
  v15 = v0[38];
  v18 = v0[27];
  v17 = v0[28];
  v20 = v0[22];
  v19 = v0[23];
  v21 = v0[17];
  v22 = v0[18];
  sub_A2AB8(v1, v17, type metadata accessor for DelegatedSharesReportingState);
  sub_A2B7C(v16 + v15, v18, type metadata accessor for DelegatedSharesReportingState);
  v23 = *(v20 + 48);
  sub_A2B7C(v18, v19, type metadata accessor for DelegatedSharesReportingState);
  sub_A2B7C(v17, v19 + v23, type metadata accessor for DelegatedSharesReportingState);
  v24 = *(v22 + 48);
  v25 = v24(v19, 2, v21);
  if (!v25)
  {
    v27 = v0[17];
    sub_A2B7C(v0[23], v0[26], type metadata accessor for DelegatedSharesReportingState);
    if (v24(v19 + v23, 2, v27))
    {
      v28 = v0[26];
      sub_A2A58(v0[27], type metadata accessor for DelegatedSharesReportingState);
      sub_A194(v28, &qword_F0A10, &qword_C01B0);
      goto LABEL_13;
    }

    v45 = v0[21];
    v46 = v0[14];
    v47 = v0[15];
    v48 = *(v0[20] + 48);
    sub_958D0(v0[26], v45);
    sub_958D0(v19 + v23, v45 + v48);
    v49 = *(v47 + 48);
    if (v49(v45, 1, v46) == 1)
    {
      v50 = v0[14];
      sub_A2A58(v0[27], type metadata accessor for DelegatedSharesReportingState);
      if (v49(v45 + v48, 1, v50) == 1)
      {
        sub_A194(v0[21], &qword_F0A10, &qword_C01B0);
        goto LABEL_12;
      }

      goto LABEL_23;
    }

    v51 = v0[14];
    sub_95940(v0[21], v0[19]);
    if (v49(v45 + v48, 1, v51) == 1)
    {
      v52 = v0[19];
      sub_A2A58(v0[27], type metadata accessor for DelegatedSharesReportingState);
      sub_A2A58(v52, type metadata accessor for DelegatedURLShare);
LABEL_23:
      v53 = v0[21];
      v54 = &qword_F2C00;
      v55 = &qword_C41D8;
LABEL_32:
      sub_A194(v53, v54, v55);
      goto LABEL_33;
    }

    v56 = v0[19];
    sub_A2AB8(v45 + v48, v0[16], type metadata accessor for DelegatedURLShare);
    if (sub_B6490() & 1) != 0 && (v57 = v0[19], v58 = v0[16], v59 = *(v0[14] + 20), (sub_B6510()) && (v60 = v0[19], v61 = v0[16], v62 = *(v0[14] + 24), (sub_B6570()))
    {
      v63 = *(v0[14] + 28);
      v64 = (v0[19] + v63);
      v65 = *v64;
      v66 = v64[1];
      v67 = (v0[16] + v63);
      v68 = v0[27];
      if (v65 == *v67 && v66 == v67[1])
      {
        sub_A2A58(v0[27], type metadata accessor for DelegatedSharesReportingState);
        goto LABEL_35;
      }

      v71 = sub_B7DD0();
      sub_A2A58(v68, type metadata accessor for DelegatedSharesReportingState);
      if (v71)
      {
LABEL_35:
        v72 = v0[19];
        v73 = v0[16];
        v74 = v0[14];
        if (*(v72 + *(v74 + 32)) == *(v73 + *(v74 + 32)))
        {
          v75 = v0[21];
          v76 = *(v74 + 36);
          v77 = *(v72 + v76);
          v78 = *(v73 + v76);
          sub_A2A58(v73, type metadata accessor for DelegatedURLShare);
          sub_A2A58(v72, type metadata accessor for DelegatedURLShare);
          sub_A194(v75, &qword_F0A10, &qword_C01B0);
          if (v77 == v78)
          {
            goto LABEL_12;
          }

LABEL_33:
          sub_A2A58(v0[23], type metadata accessor for DelegatedSharesReportingState);
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_A2A58(v0[27], type metadata accessor for DelegatedSharesReportingState);
    }

    v69 = v0[21];
    v70 = v0[19];
    sub_A2A58(v0[16], type metadata accessor for DelegatedURLShare);
    sub_A2A58(v70, type metadata accessor for DelegatedURLShare);
    v54 = &qword_F0A10;
    v55 = &qword_C01B0;
    v53 = v69;
    goto LABEL_32;
  }

  if (v25 != 1)
  {
    v29 = v0[17];
    sub_A2A58(v0[27], type metadata accessor for DelegatedSharesReportingState);
    if (v24(v19 + v23, 2, v29) == 2)
    {
      goto LABEL_12;
    }

LABEL_13:
    sub_A194(v0[23], &qword_F2C08, &qword_C41E0);
LABEL_14:
    v34 = v0[39];
    v33 = v0[40];
    v35 = v0[37];
    v36 = v0[28];
    swift_getKeyPath();
    v37 = swift_task_alloc();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    v0[11] = v35;
    sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
    sub_B65B0();

    goto LABEL_15;
  }

  v26 = v0[17];
  sub_A2A58(v0[27], type metadata accessor for DelegatedSharesReportingState);
  if (v24(v19 + v23, 2, v26) != 1)
  {
    goto LABEL_13;
  }

LABEL_12:
  v31 = v0[37];
  v30 = v0[38];
  v32 = v0[28];
  sub_A2A58(v0[23], type metadata accessor for DelegatedSharesReportingState);
  swift_beginAccess();
  sub_A2D98(v32, v31 + v30, type metadata accessor for DelegatedSharesReportingState);
  swift_endAccess();
  v33 = v0[40];
LABEL_15:
  sub_A2A58(v0[28], type metadata accessor for DelegatedSharesReportingState);
  v0[40] = v33;
  v38 = v0[33];
  v39 = sub_B7A50();
  v0[41] = v39;
  v40 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v41 = swift_task_alloc();
  v0[42] = v41;
  *v41 = v0;
  v41[1] = sub_A0018;
  v42 = v0[32];
  v43 = v0[29];
  v44 = v0[30];

  return AsyncStream.Iterator.next(isolation:)(v43, v39, &protocol witness table for MainActor, v44);
}

uint64_t sub_A0938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = type metadata accessor for LostModeInfo();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2ED8, &qword_C4700);
  v5[17] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v11 = type metadata accessor for LostModeReportingState();
  v5[19] = v11;
  v12 = *(v11 - 8);
  v5[20] = v12;
  v13 = *(v12 + 64) + 15;
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2EE0, &qword_C4708) - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2EE8, &qword_C4710);
  v5[25] = v15;
  v16 = *(v15 - 8);
  v5[26] = v16;
  v17 = *(v16 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = sub_B7A60();
  v5[29] = sub_B7A50();
  v19 = sub_B7A00();
  v5[30] = v19;
  v5[31] = v18;

  return _swift_task_switch(sub_A0B80, v19, v18);
}

uint64_t sub_A0B80()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    v3 = v0[27];
    v4 = v0[13];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2D60, &unk_C4548);
    sub_B7A90();
    v5 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
    v0[33] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState;
    v0[34] = v5;
    swift_beginAccess();
    v0[35] = 0;
    v6 = v0[28];
    v7 = sub_B7A50();
    v0[36] = v7;
    v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v9 = swift_task_alloc();
    v0[37] = v9;
    *v9 = v0;
    v9[1] = sub_A0D4C;
    v10 = v0[27];
    v11 = v0[24];
    v12 = v0[25];

    return AsyncStream.Iterator.next(isolation:)(v11, v7, &protocol witness table for MainActor, v12);
  }

  else
  {
    v13 = v0[29];

    v14 = v0[27];
    v15 = v0[23];
    v16 = v0[24];
    v18 = v0[21];
    v17 = v0[22];
    v19 = v0[18];
    v20 = v0[16];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_A0D4C()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v7 = *v0;

  v4 = *(v1 + 248);
  v5 = *(v1 + 240);

  return _swift_task_switch(sub_A0E90, v5, v4);
}

uint64_t sub_A0E90()
{
  v1 = v0[24];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    v2 = v0[32];
    v3 = v0[29];
    (*(v0[26] + 8))(v0[27], v0[25]);

    v4 = v0[27];
    v5 = v0[23];
    v6 = v0[24];
    v8 = v0[21];
    v7 = v0[22];
    v9 = v0[18];
    v10 = v0[16];

    v11 = v0[1];

    return v11();
  }

  v14 = v0[32];
  v13 = v0[33];
  v16 = v0[22];
  v15 = v0[23];
  v18 = v0[17];
  v17 = v0[18];
  v19 = v0[14];
  v20 = v0[15];
  sub_A2AB8(v1, v15, type metadata accessor for LostModeReportingState);
  sub_A2B7C(v14 + v13, v16, type metadata accessor for LostModeReportingState);
  v21 = *(v18 + 48);
  sub_A2B7C(v16, v17, type metadata accessor for LostModeReportingState);
  sub_A2B7C(v15, v17 + v21, type metadata accessor for LostModeReportingState);
  v22 = *(v20 + 48);
  v23 = v22(v17, 2, v19);
  if (!v23)
  {
    v25 = v0[14];
    sub_A2B7C(v0[18], v0[21], type metadata accessor for LostModeReportingState);
    if (v22(v17 + v21, 2, v25))
    {
      v26 = v0[21];
      sub_A2A58(v0[22], type metadata accessor for LostModeReportingState);
      sub_A2A58(v26, type metadata accessor for LostModeInfo);
      goto LABEL_12;
    }

    v33 = v0[21];
    sub_A2AB8(v17 + v21, v0[16], type metadata accessor for LostModeInfo);
    if (sub_B6310())
    {
      v34 = *(v0[14] + 20);
      v35 = v0[22];
      v36 = (v0[21] + v34);
      v37 = (v0[16] + v34);
      if (*v36 == *v37 && v36[1] == v37[1])
      {
        sub_A2A58(v0[22], type metadata accessor for LostModeReportingState);
LABEL_24:
        v42 = v0[21];
        sub_A2A58(v0[16], type metadata accessor for LostModeInfo);
        sub_A2A58(v42, type metadata accessor for LostModeInfo);
        goto LABEL_25;
      }

      v39 = sub_B7DD0();
      sub_A2A58(v35, type metadata accessor for LostModeReportingState);
      if (v39)
      {
        goto LABEL_24;
      }
    }

    else
    {
      sub_A2A58(v0[22], type metadata accessor for LostModeReportingState);
    }

    v40 = v0[21];
    v41 = v0[18];
    sub_A2A58(v0[16], type metadata accessor for LostModeInfo);
    sub_A2A58(v40, type metadata accessor for LostModeInfo);
    sub_A2A58(v41, type metadata accessor for LostModeReportingState);
    goto LABEL_13;
  }

  if (v23 == 1)
  {
    v24 = v0[14];
    sub_A2A58(v0[22], type metadata accessor for LostModeReportingState);
    if (v22(v17 + v21, 2, v24) == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  v27 = v0[14];
  sub_A2A58(v0[22], type metadata accessor for LostModeReportingState);
  if (v22(v17 + v21, 2, v27) == 2)
  {
LABEL_25:
    v44 = v0[32];
    v43 = v0[33];
    v45 = v0[23];
    sub_A2A58(v0[18], type metadata accessor for LostModeReportingState);
    swift_beginAccess();
    sub_A2D98(v45, v44 + v43, type metadata accessor for LostModeReportingState);
    swift_endAccess();
    v29 = v0[35];
    goto LABEL_26;
  }

LABEL_12:
  sub_A194(v0[18], &qword_F2ED8, &qword_C4700);
LABEL_13:
  v28 = v0[34];
  v29 = v0[35];
  v30 = v0[32];
  v31 = v0[23];
  swift_getKeyPath();
  v32 = swift_task_alloc();
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  v0[11] = v30;
  sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
  sub_B65B0();

LABEL_26:
  sub_A2A58(v0[23], type metadata accessor for LostModeReportingState);
  v0[35] = v29;
  v46 = v0[28];
  v47 = sub_B7A50();
  v0[36] = v47;
  v48 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v49 = swift_task_alloc();
  v0[37] = v49;
  *v49 = v0;
  v49[1] = sub_A0D4C;
  v50 = v0[27];
  v51 = v0[24];
  v52 = v0[25];

  return AsyncStream.Iterator.next(isolation:)(v51, v47, &protocol witness table for MainActor, v52);
}

uint64_t sub_A1484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F0E70, &qword_C0800);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = sub_B7A60();
  v5[15] = sub_B7A50();
  v10 = sub_B7A00();
  v5[16] = v10;
  v5[17] = v9;

  return _swift_task_switch(sub_A1588, v10, v9);
}

uint64_t sub_A1588()
{
  v1 = v0[9];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v3 = v0[13];
    v4 = v0[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970);
    sub_B7A90();
    v5 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
    v0[19] = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState;
    v0[20] = v5;
    swift_beginAccess();
    v0[21] = 0;
    v6 = v0[14];
    v7 = sub_B7A50();
    v0[22] = v7;
    v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_A170C;
    v10 = v0[13];
    v11 = v0[11];

    return AsyncStream.Iterator.next(isolation:)(v0 + 24, v7, &protocol witness table for MainActor, v11);
  }

  else
  {
    v12 = v0[15];

    v13 = v0[13];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_A170C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return _swift_task_switch(sub_A1850, v5, v4);
}

uint64_t sub_A1850()
{
  v1 = *(v0 + 192);
  if (v1 == 3)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 120);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v4 = *(v0 + 104);

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = 0xE300000000000000;
  v8 = 7496038;
  if (*(*(v0 + 144) + *(v0 + 152)) != 1)
  {
    v8 = 0x54426E6968746977;
    v7 = 0xED000065676E6152;
  }

  if (*(*(v0 + 144) + *(v0 + 152)))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (*(*(v0 + 144) + *(v0 + 152)))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  v11 = 0xE300000000000000;
  v12 = 7496038;
  if (v1 != 1)
  {
    v12 = 0x54426E6968746977;
    v11 = 0xED000065676E6152;
  }

  if (*(v0 + 192))
  {
    v13 = v12;
  }

  else
  {
    v13 = 0x6E776F6E6B6E75;
  }

  if (*(v0 + 192))
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE700000000000000;
  }

  if (v9 == v13 && v10 == v14)
  {
  }

  else
  {
    v15 = sub_B7DD0();

    if ((v15 & 1) == 0)
    {
      v17 = *(v0 + 160);
      v16 = *(v0 + 168);
      v18 = *(v0 + 144);
      swift_getKeyPath();
      v19 = swift_task_alloc();
      *(v19 + 16) = v18;
      *(v19 + 24) = v1;
      *(v0 + 64) = v18;
      sub_A2BE4(&qword_F2C18, type metadata accessor for LostModeManagementSectionViewModel);
      sub_B65B0();

      goto LABEL_27;
    }
  }

  *(*(v0 + 144) + *(v0 + 152)) = v1;
  v16 = *(v0 + 168);
LABEL_27:
  *(v0 + 168) = v16;
  v20 = *(v0 + 112);
  v21 = sub_B7A50();
  *(v0 + 176) = v21;
  v22 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v23 = swift_task_alloc();
  *(v0 + 184) = v23;
  *v23 = v0;
  v23[1] = sub_A170C;
  v24 = *(v0 + 104);
  v25 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v0 + 192, v21, &protocol witness table for MainActor, v25);
}

uint64_t LostModeManagementSectionViewModel.deinit()
{
  sub_A2A58(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostAccessory, type metadata accessor for LostAccessory);
  sub_A2A58(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_dependencies, type metadata accessor for LostModeManagementSectionViewModel.Dependencies);
  sub_9A318(*(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination), *(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination + 8));
  v1 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_A2A58(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_delegatedSharesStatusProvider, type metadata accessor for DelegatedSharesReportingStatusProvider);
  sub_A194(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_availabilityProviderStream, &qword_F2D68, &qword_C4558);
  v3 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__availabilityProviderTask);

  v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_lostModeStatusProvider + 8);

  sub_A194(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_lostModeStatusProviderStream, &qword_F2D70, &qword_C4560);
  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__lostModeStatusProviderTask);

  sub_A2A58(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_proximityStatusProvider, type metadata accessor for ItemProximityProvider);
  sub_A194(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel_proximityStatusProviderStream, &qword_F2D78, &qword_C4568);
  v6 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__proximityStatusProviderTask);

  sub_A2A58(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentLostModeReportingState, type metadata accessor for LostModeReportingState);
  sub_A2A58(v0 + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentDelegatedSharesReportingState, type metadata accessor for DelegatedSharesReportingState);
  v7 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel___observationRegistrar;
  v8 = sub_B6600();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t LostModeManagementSectionViewModel.__deallocating_deinit()
{
  LostModeManagementSectionViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_A1E04(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return LostModeManagementSectionViewModel.currentProximityState.setter(&v4);
}

uint64_t sub_A1E44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_A1F14()
{
  v0 = type metadata accessor for LostAccessory();
  if (v1 <= 0x3F)
  {
    v22 = *(v0 - 8) + 64;
    v2 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies();
    if (v3 <= 0x3F)
    {
      v23 = *(v2 - 8) + 64;
      v4 = sub_B69C0();
      if (v5 <= 0x3F)
      {
        v24 = *(v4 - 8) + 64;
        sub_A22AC();
        if (v7 <= 0x3F)
        {
          v25 = *(v6 - 8) + 64;
          sub_A2304(319, &qword_F2DB8, &qword_F2AB0, &qword_C4540);
          if (v9 <= 0x3F)
          {
            v26 = *(v8 - 8) + 64;
            sub_A2304(319, &qword_F2DC0, &qword_F2D60, &unk_C4548);
            if (v11 <= 0x3F)
            {
              v27 = *(v10 - 8) + 64;
              sub_38B1C();
              if (v13 <= 0x3F)
              {
                v28 = *(v12 - 8) + 64;
                sub_A2304(319, &unk_F2DC8, &qword_F03D8, &qword_BF970);
                if (v15 <= 0x3F)
                {
                  v29 = *(v14 - 8) + 64;
                  v16 = type metadata accessor for LostModeReportingState();
                  if (v17 <= 0x3F)
                  {
                    v30 = *(v16 - 8) + 64;
                    v18 = type metadata accessor for DelegatedSharesReportingState(319);
                    if (v19 <= 0x3F)
                    {
                      v31 = *(v18 - 8) + 64;
                      v20 = sub_B6600();
                      if (v21 <= 0x3F)
                      {
                        v32 = *(v20 - 8) + 64;
                        swift_updateClassMetadata2();
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
}

void sub_A22AC()
{
  if (!qword_F2BD0)
  {
    type metadata accessor for DelegatedSharesReportingState(255);
    v0 = sub_B7AB0();
    if (!v1)
    {
      atomic_store(v0, &qword_F2BD0);
    }
  }
}

void sub_A2304(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_B7BE0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t keypath_set_26Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a1;
  v7 = *a2;

  return sub_9C488(v8, a5);
}

uint64_t sub_A25B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A2600(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2AB0, &qword_C4540) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_F248;

  return sub_9FB3C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_A2718(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2D60, &unk_C4548) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2184C;

  return sub_A0938(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_40Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 32);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_A28F8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F03D8, &qword_BF970) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2184C;

  return sub_A1484(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_A29FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__currentProximityState;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_A2A58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_A2AB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_A2B38(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

uint64_t sub_A2B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_A2BE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A2C2C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2 == -1)
  {
    if (a4 == -1)
    {
      sub_9A884(a1, 255);
      sub_9A884(a3, 255);
      sub_9A318(a1, 255);
      v9 = 0;
      return v9 & 1;
    }

    goto LABEL_5;
  }

  if (a4 == -1)
  {
LABEL_5:
    sub_9A884(a1, a2);
    sub_9A884(a3, a4);
    sub_9A318(a1, a2);
    sub_9A318(a3, a4);
    v9 = 1;
    return v9 & 1;
  }

  sub_9A884(a1, a2);
  sub_9A884(a3, a4);
  v8 = sub_80D80(a1, a2, a3, a4);
  sub_9A318(a3, a4);
  sub_9A318(a1, a2);
  v9 = v8 ^ 1;
  return v9 & 1;
}

uint64_t sub_A2D38()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC13FindMyAppCore34LostModeManagementSectionViewModel__destination;
  v3 = *v2;
  v4 = *(v0 + 32);
  *v2 = v1;
  v5 = *(v2 + 8);
  *(v2 + 8) = v4;
  sub_9A884(v1, v4);
  return sub_9A318(v3, v5);
}

uint64_t sub_A2D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

__n128 LostModeManagementSectionViewModel.Dependencies.init(delegatedSharesStatusProvider:lostModeStatusProvider:linkGenerator:pasteboardHandler:punchoutHandler:delegatedSharesInvalidator:delegatedSharesUpdater:itemProximityProvider:contactInfoProvider:contactInfoFormatter:contactInfoValidator:contactInfoUpdater:contactInfoEditItemsProvider:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, _OWORD *a11, _OWORD *a12, _OWORD *a13, uint64_t a14)
{
  v20 = *(a3 + 16);
  v19 = *(a3 + 24);
  sub_A3078(a1, a9, type metadata accessor for DelegatedSharesReportingStatusProvider);
  v21 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies();
  *(a9 + v21[5]) = *a2;
  v22 = a9 + v21[6];
  *v22 = *a3;
  *(v22 + 16) = v20;
  *(v22 + 24) = v19;
  *(a9 + v21[7]) = *a4;
  v23 = (a9 + v21[8]);
  v24 = a5[1];
  *v23 = *a5;
  v23[1] = v24;
  *(a9 + v21[9]) = *a6;
  sub_A3078(a7, a9 + v21[10], type metadata accessor for DelegatedSharesUpdater);
  sub_A3078(a8, a9 + v21[11], type metadata accessor for ItemProximityProvider);
  v25 = (a9 + v21[12]);
  v26 = a10[1];
  *v25 = *a10;
  v25[1] = v26;
  v27 = (a9 + v21[13]);
  v28 = a11[1];
  *v27 = *a11;
  v27[1] = v28;
  v29 = (a9 + v21[14]);
  v30 = a12[1];
  *v29 = *a12;
  v29[1] = v30;
  v31 = (a9 + v21[15]);
  v32 = a13[1];
  *v31 = *a13;
  v31[1] = v32;
  v31[2] = a13[2];
  v33 = (a9 + v21[16]);
  result = *a14;
  v35 = *(a14 + 16);
  *v33 = *a14;
  v33[1] = v35;
  return result;
}

uint64_t type metadata accessor for LostModeManagementSectionViewModel.Dependencies()
{
  result = qword_F2F60;
  if (!qword_F2F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A3078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_A30F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DelegatedSharesReportingStatusProvider(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for DelegatedSharesUpdater();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[10];
      goto LABEL_3;
    }

    v15 = type metadata accessor for ItemProximityProvider();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_A327C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for DelegatedSharesReportingStatusProvider(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for DelegatedSharesUpdater();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[10];
    goto LABEL_3;
  }

  v15 = type metadata accessor for ItemProximityProvider();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_A33F0()
{
  result = type metadata accessor for DelegatedSharesReportingStatusProvider(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DelegatedSharesUpdater();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ItemProximityProvider();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void LostModeManagementSectionViewModel.Sheet.hash(into:)()
{
  v1 = *v0;
  v2 = *v0 >> 61;
  v3 = 2;
  v4 = 3;
  if (v2 != 3)
  {
    v4 = 4;
  }

  if (v2 == 2)
  {
    v5 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = v4;
    v5 = *v0 & 0x1FFFFFFFFFFFFFFFLL;
  }

  v6 = 1;
  if (v2)
  {
    v1 &= 0x1FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v6 = v2;
  }

  if (v2 <= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  if (v2 <= 1)
  {
    v8 = v1;
  }

  else
  {
    v8 = v5;
  }

  sub_B7EC0(v7);
  sub_B7EC0(v8);
}

Swift::Int LostModeManagementSectionViewModel.Sheet.hashValue.getter()
{
  v2 = *v0;
  sub_B7EB0();
  LostModeManagementSectionViewModel.Sheet.hash(into:)();
  return sub_B7EE0();
}

Swift::Int sub_A35C4()
{
  v2 = *v0;
  sub_B7EB0();
  LostModeManagementSectionViewModel.Sheet.hash(into:)();
  return sub_B7EE0();
}

Swift::Int sub_A360C@<X0>(Swift::Int *a1@<X8>)
{
  v4 = *v1;
  sub_B7EB0();
  LostModeManagementSectionViewModel.Sheet.hash(into:)();
  result = sub_B7EE0();
  *a1 = result;
  return result;
}

BOOL _s13FindMyAppCore34LostModeManagementSectionViewModelC5SheetO2eeoiySbAE_AEtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 <= 1)
  {
    if (v4)
    {
      return v3 >> 61 == 1 && ((v2 ^ v3) & 0x1FFFFFFFFFFFFFFFLL) == 0;
    }

    else if (v3 >> 61)
    {
      return 0;
    }

    else
    {

      return v2 == v3;
    }
  }

  else if (v4 == 2)
  {
    return v3 >> 61 == 2 && ((v2 ^ v3) & 0x1FFFFFFFFFFFFFFFLL) == 0;
  }

  else if (v4 == 3)
  {
    return v3 >> 61 == 3 && ((v2 ^ v3) & 0x1FFFFFFFFFFFFFFFLL) == 0;
  }

  else
  {
    return v3 >> 61 == 4 && ((v2 ^ v3) & 0x1FFFFFFFFFFFFFFFLL) == 0;
  }
}

unint64_t sub_A373C(uint64_t a1)
{
  *(a1 + 8) = sub_A376C();
  result = sub_9A338();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_A376C()
{
  result = qword_F2FC8;
  if (!qword_F2FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2FC8);
  }

  return result;
}

unint64_t sub_A37C4()
{
  result = qword_F2FD0;
  if (!qword_F2FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F2FD0);
  }

  return result;
}

uint64_t sub_A3818(uint64_t a1)
{
  result = sub_A3890(&qword_F2FD8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_A3890(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LostModeManagementSectionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_A38E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_A393C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t LostModeStatusProvider.startStream()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

void LostModeReportingState.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for LostModeInfo();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LostModeReportingState();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A430C(v1, v10);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    sub_B7EC0(v11 != 1);
  }

  else
  {
    sub_A4370(v10, v6);
    sub_B7EC0(2uLL);
    sub_B6370();
    sub_A441C(&qword_EF4D0, &type metadata accessor for PersonModel.Handle);
    sub_B7880();
    v12 = &v6[*(v2 + 20)];
    v13 = *v12;
    v14 = *(v12 + 1);
    sub_B7980();
    sub_A464C(v6, type metadata accessor for LostModeInfo);
  }
}

Swift::Int LostModeReportingState.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LostModeInfo();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LostModeReportingState();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7EB0();
  sub_A430C(v1, v10);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    sub_B7EC0(v11 != 1);
  }

  else
  {
    sub_A4370(v10, v6);
    sub_B7EC0(2uLL);
    sub_B6370();
    sub_A441C(&qword_EF4D0, &type metadata accessor for PersonModel.Handle);
    sub_B7880();
    v12 = &v6[*(v2 + 20)];
    v13 = *v12;
    v14 = *(v12 + 1);
    sub_B7980();
    sub_A464C(v6, type metadata accessor for LostModeInfo);
  }

  return sub_B7EE0();
}

Swift::Int sub_A3DC0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for LostModeInfo();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  __chkstk_darwin(v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B7EB0();
  sub_A430C(v4, v13);
  v14 = (*(v6 + 48))(v13, 2, v5);
  if (v14)
  {
    sub_B7EC0(v14 != 1);
  }

  else
  {
    sub_A4370(v13, v10);
    sub_B7EC0(2uLL);
    sub_B6370();
    sub_A441C(&qword_EF4D0, &type metadata accessor for PersonModel.Handle);
    sub_B7880();
    v15 = &v10[*(v5 + 20)];
    v16 = *v15;
    v17 = *(v15 + 1);
    sub_B7980();
    sub_A464C(v10, type metadata accessor for LostModeInfo);
  }

  return sub_B7EE0();
}

uint64_t _s13FindMyAppCore22LostModeReportingStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeInfo();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LostModeReportingState();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2ED8, &qword_C4700);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v27 - v16;
  v18 = *(v15 + 56);
  sub_A430C(a1, &v27 - v16);
  sub_A430C(a2, &v17[v18]);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (v20)
  {
    if (v20 == 1)
    {
      if (v19(&v17[v18], 2, v4) == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

    if (v19(&v17[v18], 2, v4) != 2)
    {
LABEL_8:
      sub_A45E4(v17);
      return 0;
    }
  }

  else
  {
    sub_A430C(v17, v12);
    if (v19(&v17[v18], 2, v4))
    {
      sub_A464C(v12, type metadata accessor for LostModeInfo);
      goto LABEL_8;
    }

    sub_A4370(&v17[v18], v8);
    if ((sub_B6310() & 1) == 0 || ((v22 = *(v4 + 20), v23 = *&v12[v22], v24 = *&v12[v22 + 8], v25 = &v8[v22], v23 == *v25) ? (v26 = v24 == *(v25 + 1)) : (v26 = 0), !v26 && (sub_B7DD0() & 1) == 0))
    {
      sub_A464C(v8, type metadata accessor for LostModeInfo);
      sub_A464C(v12, type metadata accessor for LostModeInfo);
      sub_A464C(v17, type metadata accessor for LostModeReportingState);
      return 0;
    }

    sub_A464C(v8, type metadata accessor for LostModeInfo);
    sub_A464C(v12, type metadata accessor for LostModeInfo);
  }

LABEL_17:
  sub_A464C(v17, type metadata accessor for LostModeReportingState);
  return 1;
}

uint64_t type metadata accessor for LostModeReportingState()
{
  result = qword_F3060;
  if (!qword_F3060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A430C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeReportingState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A4370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A441C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A4478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeInfo();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_A44F8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for LostModeInfo();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_A457C()
{
  v0 = type metadata accessor for LostModeInfo();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_A45E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F2ED8, &qword_C4700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A464C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LostModeFlowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_B6E60();
  result = sub_B71F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_A477C()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_F3128);
  __swift_project_value_buffer(v0, qword_F3128);
  type metadata accessor for ItemsModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t static FindMyLocalizationTable.items.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v2 = sub_B62F0();
  v3 = __swift_project_value_buffer(v2, qword_F3128);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_A48BC(uint64_t a1)
{
  v37 = sub_B6370();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v29 = v1;
    v41 = &_swiftEmptyArrayStorage;
    sub_1E4F0(0, v6, 0);
    v40 = v41;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = sub_B7C30();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 72;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_B6360();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = v40[2];
      v19 = v40[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_1E4F0((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      *(v21 + 4) = v39;
      *(v21 + 5) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_21318(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_21318(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t ShareItemContactPickerView.init(dependencies:isCapabilityEnabled:isAirTag:maxCircleMembersSharingLimits:performAction:showOfferSuccess:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v40 = a8;
  v41 = a5;
  v43 = a2;
  v46 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v40 - v17;
  v19 = *a1;
  v44 = a1[1];
  v45 = v19;
  v42 = *(a1 + 4);
  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v20 = a4 & 1;
  v21 = sub_B62F0();
  v22 = __swift_project_value_buffer(v21, qword_F3128);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v18, v22, v21);
  (*(v23 + 56))(v18, 0, 1, v21);
  v24 = sub_B78D0();
  v26 = v25;

  sub_2B630(v18);
  v27 = swift_allocObject();
  *(v27 + 16) = a6;
  *(v27 + 24) = a7;
  v28 = v41;
  *(v27 + 32) = v40;
  *(v27 + 40) = a10;
  *(v27 + 48) = v20;
  *(v27 + 56) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3140, &qword_C4AF8);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_C2800;
  *(v29 + 32) = &unk_BE000;
  *(v29 + 40) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = 1;
  *(v30 + 24) = sub_A613C;
  *(v30 + 32) = 0;
  *(v29 + 48) = &unk_C4B00;
  *(v29 + 56) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v20;
  v32 = swift_allocObject();
  *(v32 + 16) = v20;
  v33 = swift_allocObject();
  v33[2] = v43;
  v33[3] = a3;
  v33[4] = sub_A665C;
  v33[5] = v31;
  v33[6] = sub_A6880;
  v33[7] = v32;
  *(v29 + 64) = &unk_BDA78;
  *(v29 + 72) = v33;
  v49 = v24;
  v50 = v26;
  v51 = 0;
  v52 = sub_A521C;
  v53 = v27;
  v54 = v29;
  v47[0] = v45;
  v47[1] = v44;
  v48 = v42;
  v34 = type metadata accessor for ContactPickerViewModel(0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();

  *&v47[0] = ContactPickerViewModel.init(configuration:dependencies:)(&v49, v47);
  sub_B75B0();

  v38 = v50;
  v39 = v46;
  *v46 = v49;
  v39[1] = v38;
  return result;
}

uint64_t sub_A4F80@<X0>(uint64_t (*a1)(void *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a8;
  v32 = a2;
  HIDWORD(v30) = a7;
  v33 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v30 - v16;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3160, &qword_C4CD0) + 48);
  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v19 = (a9 + v18);
  v20 = sub_B62F0();
  v21 = __swift_project_value_buffer(v20, qword_F3128);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v17, v21, v20);
  (*(v22 + 56))(v17, 0, 1, v20);
  sub_B78D0();
  sub_2B630(v17);
  sub_B66F0();
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  *(v23 + 32) = a5;
  *(v23 + 40) = a6;
  *(v23 + 48) = BYTE4(v30) & 1;
  *(v23 + 56) = v31;

  v24 = v33(&unk_C4CE0, v23);
  v26 = v25;

  *v19 = v24;
  v19[1] = v26;
  v27 = enum case for GenericControl.Info.button(_:);
  v28 = sub_B6700();
  return (*(*(v28 - 8) + 104))(a9, v27, v28);
}

uint64_t sub_A5230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 64) = a6;
  *(v8 + 72) = a8;
  *(v8 + 145) = a7;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0) - 8) + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF530, &unk_C4E90);
  *(v8 + 88) = v10;
  v11 = *(v10 - 8);
  *(v8 + 96) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_A5350, 0, 0);
}

uint64_t sub_A5350()
{
  v1 = v0[5];
  v2 = sub_A48BC(v0[4]);
  v0[15] = v2;
  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_A5458;
  v5 = v0[6];

  return v7(v2);
}

uint64_t sub_A5458()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 120);

    v5 = sub_A565C;
  }

  else
  {
    v5 = sub_A5574;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_A5574()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  (*(v0 + 56))(*(v0 + 120));

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 80);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_A565C()
{
  *(v0 + 16) = *(v0 + 136);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF518, &qword_C0860);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 144);
    if (v1 > 1)
    {
      if (v1 != 2)
      {
        if (v1 == 3)
        {
          v2 = *(v0 + 136);
          v3 = *(v0 + 145);

          if (qword_EEAE8 != -1)
          {
            swift_once();
          }

          v59 = *(v0 + 96);
          v61 = *(v0 + 88);
          v4 = *(v0 + 80);
          v54 = *(v0 + 112);
          v57 = *(v0 + 24);
          v5 = sub_B62F0();
          v6 = __swift_project_value_buffer(v5, qword_F3128);
          v7 = *(v5 - 8);
          v8 = *(v7 + 16);
          v8(v4, v6, v5);
          v9 = *(v7 + 56);
          v9(v4, 0, 1, v5);
          sub_B78D0();
          sub_2B630(v4);
          v8(v4, v6, v5);
          v9(v4, 0, 1, v5);
LABEL_15:
          sub_B78D0();

          sub_2B630(v4);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3168, &qword_C4CE8);
          v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3170, &unk_C4CF0) - 8);
          v29 = *(v28 + 72);
          v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
          *(swift_allocObject() + 16) = xmmword_BDA30;
          sub_B6900();
          v31 = v54;
LABEL_19:
          sub_B6910();
          (*(v59 + 32))(v57, v31, v61);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
          (*(*(v44 - 8) + 56))(v57, 0, 1, v44);
          v45 = *(v0 + 16);

          goto LABEL_20;
        }

        v32 = *(v0 + 136);
        v33 = *(v0 + 72);

        if (v33)
        {
          v52 = v33 - 1;
          if (qword_EEAE8 == -1)
          {
LABEL_18:
            v34 = *(v0 + 80);
            v59 = *(v0 + 96);
            v61 = *(v0 + 88);
            v51 = *(v0 + 145);
            v56 = *(v0 + 104);
            v57 = *(v0 + 24);
            v35 = sub_B62F0();
            v36 = __swift_project_value_buffer(v35, qword_F3128);
            v37 = *(v35 - 8);
            v38 = *(v37 + 16);
            v38(v34, v36, v35);
            v39 = *(v37 + 56);
            v39(v34, 0, 1, v35);
            sub_B78D0();
            sub_2B630(v34);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
            v40 = swift_allocObject();
            *(v40 + 16) = xmmword_BDA30;
            *(v40 + 56) = &type metadata for UInt;
            *(v40 + 64) = &protocol witness table for UInt;
            *(v40 + 32) = v52;
            v38(v34, v36, v35);
            v39(v34, 0, 1, v35);
            sub_B78D0();

            sub_2B630(v34);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3168, &qword_C4CE8);
            v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3170, &unk_C4CF0) - 8);
            v42 = *(v41 + 72);
            v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
            *(swift_allocObject() + 16) = xmmword_BDA30;
            sub_B6900();
            v31 = v56;
            goto LABEL_19;
          }
        }

        else
        {
          __break(1u);
        }

        swift_once();
        goto LABEL_18;
      }

LABEL_12:
      v21 = *(v0 + 136);
      v22 = *(v0 + 145);

      if (qword_EEAE8 != -1)
      {
        swift_once();
      }

      v59 = *(v0 + 96);
      v61 = *(v0 + 88);
      v4 = *(v0 + 80);
      v54 = *(v0 + 112);
      v57 = *(v0 + 24);
      v23 = sub_B62F0();
      v24 = __swift_project_value_buffer(v23, qword_F3128);
      v25 = *(v23 - 8);
      v26 = *(v25 + 16);
      v26(v4, v24, v23);
      v27 = *(v25 + 56);
      v27(v4, 0, 1, v23);
      sub_B78D0();
      sub_2B630(v4);
      v26(v4, v24, v23);
      v27(v4, 0, 1, v23);
      goto LABEL_15;
    }

    if (*(v0 + 144))
    {
      goto LABEL_12;
    }
  }

  v10 = *(v0 + 16);

  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v53 = *(v0 + 112);
  v55 = *(v0 + 136);
  v60 = *(v0 + 96);
  v62 = *(v0 + 88);
  v11 = *(v0 + 80);
  v58 = *(v0 + 24);
  v12 = sub_B62F0();
  v13 = __swift_project_value_buffer(v12, qword_F3128);
  v14 = *(v12 - 8);
  v15 = *(v14 + 16);
  v15(v11, v13, v12);
  v16 = *(v14 + 56);
  v16(v11, 0, 1, v12);
  sub_B78D0();
  sub_2B630(v11);
  v15(v11, v13, v12);
  v16(v11, 0, 1, v12);
  sub_B78D0();
  sub_2B630(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3168, &qword_C4CE8);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3170, &unk_C4CF0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  *(swift_allocObject() + 16) = xmmword_BDA30;
  sub_B6900();
  sub_B6910();

  (*(v60 + 32))(v58, v53, v62);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
  (*(*(v20 - 8) + 56))(v58, 0, 1, v20);
LABEL_20:
  v47 = *(v0 + 104);
  v46 = *(v0 + 112);
  v48 = *(v0 + 80);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_A613C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v4 = sub_B62F0();
  v5 = __swift_project_value_buffer(v4, qword_F3128);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v7(v3, v5, v4);
  v8 = *(v6 + 56);
  v8(v3, 0, 1, v4);
  v9 = sub_B78D0();
  sub_2B630(v3);
  v7(v3, v5, v4);
  v8(v3, 0, 1, v4);
  sub_B78D0();
  sub_2B630(v3);
  return v9;
}

uint64_t sub_A632C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_A6364(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2184C;

  return sub_15298(a1, a2, v6, v8, v7);
}

uint64_t sub_A6428(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v15 - v5;
  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v7 = 0xD000000000000037;
  if ((a2 & 1) == 0)
  {
    v7 = 0xD000000000000035;
  }

  v15[1] = v7;
  v8 = sub_B62F0();
  v9 = __swift_project_value_buffer(v8, qword_F3128);
  v10 = *(v8 - 8);
  v11 = *(v10 + 16);
  v11(v6, v9, v8);
  v12 = *(v10 + 56);
  v12(v6, 0, 1, v8);
  sub_B78D0();
  sub_2B630(v6);
  v11(v6, v9, v8);
  v12(v6, 0, 1, v8);
  v13 = sub_B78D0();

  sub_2B630(v6);
  return v13;
}

uint64_t sub_A6664(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v14 - v4;
  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v6 = 0xD000000000000037;
  if ((a1 & 1) == 0)
  {
    v6 = 0xD000000000000035;
  }

  v14[1] = v6;
  v7 = sub_B62F0();
  v8 = __swift_project_value_buffer(v7, qword_F3128);
  v9 = *(v7 - 8);
  v10 = *(v9 + 16);
  v10(v5, v8, v7);
  v11 = *(v9 + 56);
  v11(v5, 0, 1, v7);
  sub_B78D0();
  sub_2B630(v5);
  v10(v5, v8, v7);
  v11(v5, 0, 1, v7);
  v12 = sub_B78D0();

  sub_2B630(v5);
  return v12;
}

uint64_t sub_A6888()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t ShareItemContactPickerView.body.getter@<X0>(void *a1@<X8>)
{
  v6 = *v1;
  v7 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3148, &qword_C4B10);
  sub_B75C0();
  v3 = *(type metadata accessor for ContactPickerView() + 20);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v5;
  return result;
}

unint64_t sub_A6978()
{
  result = qword_F3150;
  if (!qword_F3150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3150);
  }

  return result;
}

unint64_t sub_A6A0C()
{
  result = qword_F3158;
  if (!qword_F3158)
  {
    type metadata accessor for ContactPickerView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F3158);
  }

  return result;
}

uint64_t sub_A6A64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  if (qword_EEAE8 != -1)
  {
    swift_once();
  }

  v4 = sub_B62F0();
  v5 = __swift_project_value_buffer(v4, qword_F3128);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v7(v3, v5, v4);
  v8 = *(v6 + 56);
  v8(v3, 0, 1, v4);
  v9 = sub_B78D0();
  sub_2B630(v3);
  v7(v3, v5, v4);
  v8(v3, 0, 1, v4);
  sub_B78D0();
  sub_2B630(v3);
  return v9;
}

uint64_t objectdestroyTm_10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_A6C94(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2184C;

  return sub_A5230(a1, a2, v6, v7, v8, v9, v10, v11);
}

void *sub_A6D7C(uint64_t a1)
{
  v37 = sub_B6370();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v29 = v1;
    v41 = &_swiftEmptyArrayStorage;
    sub_1E4F0(0, v6, 0);
    v40 = v41;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = sub_B7C30();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 72;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_B6360();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = v40[2];
      v19 = v40[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_1E4F0((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      *(v21 + 4) = v39;
      *(v21 + 5) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_21318(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_21318(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t OfferLocationContactPickerView.init(dependencies:fromEmail:performAction:showOfferSuccess:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v39 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v35 - v17;
  v19 = *a1;
  v37 = a1[1];
  v38 = v19;
  v36 = *(a1 + 4);
  if (qword_EEAF8 != -1)
  {
    swift_once();
  }

  v20 = sub_B62F0();
  v21 = __swift_project_value_buffer(v20, qword_F3868);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v18, v21, v20);
  (*(v22 + 56))(v18, 0, 1, v20);
  v23 = sub_B78D0();
  v25 = v24;
  sub_A194(v18, &unk_F17B0, &qword_BE7D0);
  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = a3;
  v26[4] = a4;
  v26[5] = a5;
  v26[6] = a6;
  v26[7] = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3140, &qword_C4AF8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_BD800;
  *(v27 + 32) = &unk_BDFD0;
  *(v27 + 40) = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = sub_A8C10;
  *(v28 + 32) = 0;
  *(v27 + 48) = &unk_C4B00;
  *(v27 + 56) = v28;
  v42 = v23;
  v43 = v25;
  v44 = 1;
  v45 = sub_A8ED8;
  v46 = v26;
  v47 = v27;
  v40[0] = v38;
  v40[1] = v37;
  v41 = v36;
  v29 = type metadata accessor for ContactPickerViewModel(0);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();

  *&v40[0] = ContactPickerViewModel.init(configuration:dependencies:)(&v42, v40);
  sub_B75B0();

  v33 = v43;
  v34 = v39;
  *v39 = v42;
  v34[1] = v33;
  return result;
}

uint64_t sub_A737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v14[7] = a8;

  sub_B66E0();
}

uint64_t sub_A7460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_B6810();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v7[11] = *(v9 + 64);
  v7[12] = swift_task_alloc();
  sub_B7A60();
  v7[13] = sub_B7A50();
  v11 = sub_B7A00();
  v7[14] = v11;
  v7[15] = v10;

  return _swift_task_switch(sub_A7568, v11, v10);
}

uint64_t sub_A7568()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v20 = v0[4];
  v18 = v0[7];
  v19 = v0[3];
  (*(v4 + 16))(v1, v0[2], v3);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  (*(v4 + 32))(v10 + v8, v1, v3);
  v11 = (v10 + v9);
  *v11 = v18;
  v11[1] = v5;

  v12 = v19(&unk_C4E78, v10);
  v14 = v13;

  v0[16] = v14;
  v21 = (v12 + *v12);
  v15 = v12[1];
  v16 = swift_task_alloc();
  v0[17] = v16;
  *v16 = v0;
  v16[1] = sub_A7750;

  return v21();
}

uint64_t sub_A7750()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return _swift_task_switch(sub_A7894, v5, v4);
}

uint64_t sub_A7894()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_A78FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = sub_B6320();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3178, &qword_C4E80);
  v7[14] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v13 = sub_B6370();
  v7[16] = v13;
  v14 = *(v13 - 8);
  v7[17] = v14;
  v15 = *(v14 + 64) + 15;
  v7[18] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3180, &qword_C4E88) - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0) - 8) + 64) + 15;
  v7[22] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF530, &unk_C4E90);
  v7[23] = v18;
  v19 = *(v18 - 8);
  v7[24] = v19;
  v20 = *(v19 + 64) + 15;
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();

  return _swift_task_switch(sub_A7B5C, 0, 0);
}

uint64_t sub_A7B5C()
{
  v16 = sub_A6D7C(*(v0 + 40));
  *(v0 + 216) = v16;
  if (qword_EEAF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v13 = *(v0 + 208);
  v15 = *(v0 + 48);
  v2 = sub_B62F0();
  *(v0 + 224) = v2;
  v3 = __swift_project_value_buffer(v2, qword_F3868);
  *(v0 + 232) = v3;
  v4 = *(v2 - 8);
  v5 = *(v4 + 16);
  *(v0 + 240) = v5;
  *(v0 + 248) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v2);
  v6 = *(v4 + 56);
  *(v0 + 256) = v6;
  *(v0 + 264) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 0, 1, v2);
  sub_B78D0();
  sub_A194(v1, &unk_F17B0, &qword_BE7D0);
  v5(v1, v3, v2);
  v6(v1, 0, 1, v2);
  sub_B78D0();
  sub_A194(v1, &unk_F17B0, &qword_BE7D0);
  *(v0 + 272) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3168, &qword_C4CE8);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3170, &unk_C4CF0) - 8);
  *(v0 + 280) = *(v7 + 72);
  *(v0 + 304) = *(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_BDA30;
  sub_B6900();
  sub_B6910();
  v14 = (v15 + *v15);
  v8 = v15[1];
  v9 = swift_task_alloc();
  *(v0 + 288) = v9;
  *v9 = v0;
  v9[1] = sub_A7EF8;
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);

  return (v14)(v10, v16);
}

uint64_t sub_A7EF8()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v4 = *(v2 + 216);

    v5 = sub_A8168;
  }

  else
  {
    v5 = sub_A8014;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_A8014()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 80);
  v5 = *(v0 + 32);
  (*(v0 + 72))(*(v0 + 216));

  (*(v3 + 8))(v1, v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 144);
  v14 = *(v0 + 120);
  v15 = *(v0 + 104);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_A8168()
{
  *(v0 + 16) = *(v0 + 296);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF518, &qword_C0860);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 296);
  if (v1)
  {
    v3 = *(v0 + 296);

    v4 = *(v0 + 24);
    v5 = *(v4 + 16);
    if (v5 != 1)
    {
      if (v5)
      {
        v6 = *(v0 + 304);
        v93 = *(v0 + 280);
        v95 = *(v0 + 272);
        v84 = *(v0 + 256);
        v86 = *(v0 + 264);
        v8 = *(v0 + 240);
        v7 = *(v0 + 248);
        v10 = *(v0 + 224);
        v9 = *(v0 + 232);
        v100 = *(v0 + 208);
        v97 = *(v0 + 200);
        v88 = *(v0 + 192);
        v99 = *(v0 + 184);
        v11 = *(v0 + 176);
        v101 = *(v0 + 32);

        v12 = objc_opt_self();
        v13 = [objc_allocWithZone(NSNumber) initWithInteger:v5];
        v14 = [v12 localizedStringFromNumber:v13 numberStyle:0];

        v15 = sub_B7900();
        v17 = v16;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_BDA30;
        *(v18 + 56) = &type metadata for String;
        *(v18 + 64) = sub_305FC();
        *(v18 + 32) = v15;
        *(v18 + 40) = v17;
        v8(v11, v9, v10);
        v84(v11, 0, 1, v10);
        sub_B78D0();

        sub_A194(v11, &unk_F17B0, &qword_BE7D0);
        v8(v11, v9, v10);
        v84(v11, 0, 1, v10);
        sub_B78D0();
        sub_A194(v11, &unk_F17B0, &qword_BE7D0);
        *(swift_allocObject() + 16) = xmmword_BDA30;
        sub_B6900();
        sub_B6910();
        (*(v88 + 8))(v100, v99);
        v19 = v101;
        (*(v88 + 32))(v101, v97, v99);
LABEL_16:
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
        (*(*(v68 - 8) + 56))(v19, 0, 1, v68);
        goto LABEL_17;
      }

LABEL_12:
      v47 = *(v0 + 208);
      v48 = *(v0 + 184);
      v49 = *(v0 + 192);
      v50 = *(v0 + 32);

      (*(v49 + 32))(v50, v47, v48);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
      (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
LABEL_17:
      v69 = *(v0 + 16);

      goto LABEL_18;
    }

    v26 = *(v0 + 160);
    v27 = *(v0 + 168);
    v29 = *(v0 + 136);
    v28 = *(v0 + 144);
    v30 = *(v0 + 120);
    v31 = *(v0 + 128);
    v102 = *(v0 + 112);
    v32 = *(v0 + 88);
    v33 = *(v0 + 96);
    v94 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v96 = *(v29 + 16);
    v96(v28, v4 + v94, v31);
    sub_B6330();
    v98 = *(v29 + 8);
    v98(v28, v31);
    v34 = *(v33 + 56);
    v34(v27, 0, 1, v32);
    (*(v33 + 104))(v26, enum case for PersonModel.Handle.Kind.phoneNumber(_:), v32);
    v34(v26, 0, 1, v32);
    v35 = *(v102 + 48);
    sub_A9504(v27, v30);
    sub_A9504(v26, v30 + v35);
    v36 = *(v33 + 48);
    if (v36(v30, 1, v32) == 1)
    {
      v37 = *(v0 + 168);
      v38 = *(v0 + 88);
      sub_A194(*(v0 + 160), &qword_F3180, &qword_C4E88);
      sub_A194(v37, &qword_F3180, &qword_C4E88);
      if (v36(v30 + v35, 1, v38) == 1)
      {
        result = sub_A194(*(v0 + 120), &qword_F3180, &qword_C4E88);
        goto LABEL_14;
      }
    }

    else
    {
      v40 = *(v0 + 88);
      sub_A9504(*(v0 + 120), *(v0 + 152));
      v41 = v36(v30 + v35, 1, v40);
      v42 = *(v0 + 160);
      v43 = *(v0 + 168);
      v44 = *(v0 + 152);
      if (v41 != 1)
      {
        v103 = *(v0 + 120);
        v91 = *(v0 + 168);
        v52 = *(v0 + 96);
        v53 = *(v0 + 104);
        v54 = *(v0 + 88);
        (*(v52 + 32))(v53, v30 + v35, v54);
        sub_A9574(&qword_F1B58, &type metadata accessor for PersonModel.Handle.Kind);
        v55 = sub_B78C0();
        v56 = *(v52 + 8);
        v56(v53, v54);
        sub_A194(v42, &qword_F3180, &qword_C4E88);
        sub_A194(v91, &qword_F3180, &qword_C4E88);
        v56(v44, v54);
        result = sub_A194(v103, &qword_F3180, &qword_C4E88);
        if ((v55 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_14:
        if (!*(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v83 = *(v0 + 304);
        v85 = *(v0 + 280);
        v87 = *(v0 + 272);
        v57 = *(v0 + 264);
        v58 = *(v0 + 248);
        v80 = *(v0 + 240);
        v81 = *(v0 + 256);
        v59 = *(v0 + 224);
        v60 = *(v0 + 232);
        v104 = *(v0 + 208);
        v92 = *(v0 + 184);
        v61 = *(v0 + 176);
        v62 = *(v0 + 144);
        v63 = *(v0 + 128);
        v82 = *(v0 + 192);
        v89 = *(v0 + 200);
        v90 = *(v0 + 32);
        v96(v62, v4 + v94, v63);

        MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0 = _s13FindMyAppCore12LostModeInfoV19contactDisplayValueSSvg_0();
        v66 = v65;
        v98(v62, v63);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_BDA30;
        *(v67 + 56) = &type metadata for String;
        *(v67 + 64) = sub_305FC();
        *(v67 + 32) = MyAppCore12LostModeInfoV19contactDisplayValueSSvg_0;
        *(v67 + 40) = v66;
        v80(v61, v60, v59);
        v81(v61, 0, 1, v59);
        sub_B78D0();

        sub_A194(v61, &unk_F17B0, &qword_BE7D0);
        v80(v61, v60, v59);
        v81(v61, 0, 1, v59);
        sub_B78D0();
        sub_A194(v61, &unk_F17B0, &qword_BE7D0);
        *(swift_allocObject() + 16) = xmmword_BDA30;
        sub_B6900();
        sub_B6910();
        (*(v82 + 8))(v104, v92);
        v19 = v90;
        (*(v82 + 32))(v90, v89, v92);
        goto LABEL_16;
      }

      v45 = *(v0 + 88);
      v46 = *(v0 + 96);
      sub_A194(*(v0 + 160), &qword_F3180, &qword_C4E88);
      sub_A194(v43, &qword_F3180, &qword_C4E88);
      (*(v46 + 8))(v44, v45);
    }

    sub_A194(*(v0 + 120), &qword_F3178, &qword_C4E80);
    goto LABEL_12;
  }

  v20 = *(v0 + 208);
  v21 = *(v0 + 184);
  v22 = *(v0 + 192);
  v23 = *(v0 + 32);
  v24 = *(v0 + 16);

  (*(v22 + 32))(v23, v20, v21);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF388, &unk_C4EA0);
  (*(*(v25 - 8) + 56))(v23, 0, 1, v25);
LABEL_18:
  v71 = *(v0 + 200);
  v70 = *(v0 + 208);
  v73 = *(v0 + 168);
  v72 = *(v0 + 176);
  v75 = *(v0 + 152);
  v74 = *(v0 + 160);
  v76 = *(v0 + 144);
  v77 = *(v0 + 120);
  v78 = *(v0 + 104);

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_A8C10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  if (qword_EEAF8 != -1)
  {
    swift_once();
  }

  v4 = sub_B62F0();
  v5 = __swift_project_value_buffer(v4, qword_F3868);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v7(v3, v5, v4);
  v8 = *(v6 + 56);
  v8(v3, 0, 1, v4);
  v9 = sub_B78D0();
  sub_A194(v3, &unk_F17B0, &qword_BE7D0);
  v7(v3, v5, v4);
  v8(v3, 0, 1, v4);
  sub_B78D0();
  sub_A194(v3, &unk_F17B0, &qword_BE7D0);
  return v9;
}

uint64_t OfferLocationContactPickerView.body.getter@<X0>(void *a1@<X8>)
{
  v6 = *v1;
  v7 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3148, &qword_C4B10);
  sub_B75C0();
  v3 = *(type metadata accessor for ContactPickerView() + 20);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEDF8, &unk_BD520);
  result = swift_storeEnumTagMultiPayload();
  *a1 = v5;
  return result;
}

uint64_t sub_A8EE8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_A8FA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  if (qword_EEAF8 != -1)
  {
    swift_once();
  }

  v4 = sub_B62F0();
  v5 = __swift_project_value_buffer(v4, qword_F3868);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v7(v3, v5, v4);
  v8 = *(v6 + 56);
  v8(v3, 0, 1, v4);
  v9 = sub_B78D0();
  sub_A194(v3, &unk_F17B0, &qword_BE7D0);
  v7(v3, v5, v4);
  v8(v3, 0, 1, v4);
  sub_B78D0();
  sub_A194(v3, &unk_F17B0, &qword_BE7D0);
  return v9;
}

uint64_t objectdestroyTm_11(void (*a1)(void))
{
  a1(v1[3]);
  v2 = v1[5];

  v3 = v1[7];

  return _swift_deallocObject(v1, 64, 7);
}

uint64_t sub_A9220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2184C;

  return sub_A7460(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_A92F0()
{
  v1 = sub_B6810();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_A93CC(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_B6810() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2184C;

  return sub_A78FC(a1, a2, v8, v9, v2 + v7, v11, v12);
}

uint64_t sub_A9504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3180, &qword_C4E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A9574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PeopleListPersonRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = sub_B7170();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PeopleListPersonRow(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5 - 8);
  v9 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v33 - v14;
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  sub_AD198(v1, &v33 - v16, type metadata accessor for PeopleListPersonRow);
  v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v33 = swift_allocObject();
  sub_A9A64(v17, v33 + v18, type metadata accessor for PeopleListPersonRow);
  sub_AD198(v1, v15, type metadata accessor for PeopleListPersonRow);
  v19 = swift_allocObject();
  sub_A9A64(v15, v19 + v18, type metadata accessor for PeopleListPersonRow);
  sub_AD198(v1, v12, type metadata accessor for PeopleListPersonRow);
  v20 = swift_allocObject();
  sub_A9A64(v12, v20 + v18, type metadata accessor for PeopleListPersonRow);
  sub_AD198(v1, v9, type metadata accessor for PeopleListPersonRow);
  v21 = swift_allocObject();
  sub_A9A64(v9, v21 + v18, type metadata accessor for PeopleListPersonRow);
  sub_AD198(v1, v9, type metadata accessor for PeopleListPersonRow);
  v22 = swift_allocObject();
  sub_A9A64(v9, v22 + v18, type metadata accessor for PeopleListPersonRow);
  v38 = 0x4043000000000000;
  (*(v35 + 104))(v34, enum case for Font.TextStyle.headline(_:), v36);
  sub_275B4();
  v23 = v37;
  sub_B6AA0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3188, &qword_C4EB0);
  v25 = v24[21];
  *(v23 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF548, &qword_BE148);
  result = swift_storeEnumTagMultiPayload();
  v27 = (v23 + v24[22]);
  v28 = v33;
  *v27 = sub_A9ACC;
  v27[1] = v28;
  v29 = (v23 + v24[23]);
  *v29 = sub_AA3A0;
  v29[1] = v19;
  v30 = (v23 + v24[24]);
  *v30 = sub_AA410;
  v30[1] = v20;
  v31 = (v23 + v24[25]);
  *v31 = sub_AAF1C;
  v31[1] = v21;
  v32 = (v23 + v24[26]);
  *v32 = sub_AB3BC;
  v32[1] = v22;
  return result;
}

uint64_t sub_A9A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_A9AE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3478, &qword_C5378);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v46 = &v37 - v5;
  v6 = sub_B63A0();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  __chkstk_darwin(v6);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3480, &qword_C5380);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - v11;
  v39 = sub_B6680();
  v13 = *(v39 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v39);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_B6690();
  v44 = *(v17 - 8);
  v45 = v17;
  v18 = *(v44 + 64);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_B6770();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = sub_B6740();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v38 = sub_B6780();
  v40 = *(v38 - 8);
  v25 = *(v40 + 64);
  __chkstk_darwin(v38);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PeopleListPersonRow.State(0);
  v29 = *(v2 + *(v28 + 40));
  sub_B6730();

  sub_B6760();
  sub_B6750();
  v30 = *(v28 + 36);
  v31 = enum case for BadgeStyle.Placement.Alignment.topTrailing(_:);
  v32 = sub_B6670();
  (*(*(v32 - 8) + 104))(v16, v31, v32);
  (*(v13 + 104))(v16, enum case for BadgeStyle.Placement.anchored(_:), v39);
  (*(v42 + 104))(v41, enum case for Symbol.Color.gray(_:), v43);
  v33 = sub_B6660();
  (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
  sub_B6640();
  v34 = sub_B6650();
  (*(*(v34 - 8) + 56))(v12, 0, 1, v34);
  sub_B6630();
  sub_AE014(&qword_F3488, &type metadata accessor for PlatterWithIcon);
  v35 = v38;
  sub_B7210();
  (*(v44 + 8))(v20, v45);
  return (*(v40 + 8))(v27, v35);
}

uint64_t sub_AA04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_97E8();

  result = sub_B7200();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t objectdestroyTm_12()
{
  v1 = *(type metadata accessor for PeopleListPersonRow(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v22 = *(v1 + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = *(v0 + v3 + 40);

  v8 = type metadata accessor for PeopleListPersonRow.State(0);
  v9 = v0 + v3 + v8[7];
  v10 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = *(v9 + 8);
    }

    else
    {
      v12 = sub_B62D0();
      (*(*(v12 - 8) + 8))(v9, v12);
    }
  }

  if (*(v4 + v8[8] + 8) != 1)
  {
  }

  v13 = v8[9];
  v14 = sub_B63C0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v4 + v13, 1, v14))
  {
    (*(v15 + 8))(v4 + v13, v14);
  }

  v16 = v8[11];
  v17 = sub_B6700();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (!v19(v4 + v16, 1, v17))
  {
    (*(v18 + 8))(v4 + v16, v17);
  }

  v20 = v8[12];
  if (!v19(v4 + v20, 1, v17))
  {
    (*(v18 + 8))(v4 + v20, v17);
  }

  return _swift_deallocObject(v0, v3 + v22, v2 | 7);
}

uint64_t sub_AA3A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PeopleListPersonRow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_AA04C(v4, a1);
}

uint64_t sub_AA49C@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3450, &qword_C5360);
  v2 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v102 = (v83 - v3);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3458, &qword_C5368);
  v4 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v99 = (v83 - v5);
  v6 = type metadata accessor for PeopleListPersonRow(0);
  v90 = *(v6 - 8);
  v7 = *(v90 + 64);
  __chkstk_darwin(v6 - 8);
  v94 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_B6460();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v92 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_B6620();
  v85 = *(v86 - 8);
  v11 = *(v85 + 64);
  __chkstk_darwin(v86);
  v87 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_B67A0();
  v95 = *(v97 - 8);
  v13 = *(v95 + 64);
  __chkstk_darwin(v97);
  v91 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_B62D0();
  v89 = *(v93 - 8);
  v15 = *(v89 + 64);
  v16 = __chkstk_darwin(v93);
  v84 = v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v88 = v83 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3460, &qword_C5370);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v96 = v83 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_F3190, &unk_C4EF0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v83 - v24;
  v26 = type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = (v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v33 = v83 - v32;
  v34 = type metadata accessor for PeopleListPersonRow.State(0);
  sub_A310(v1 + *(v34 + 28), v25, &qword_F3190, &unk_C4EF0);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_A194(v25, &qword_F3190, &unk_C4EF0);
    v35 = *(v1 + 40);
    v103 = *(v1 + 32);
    v104 = v35;
    sub_97E8();

    v36 = sub_B7200();
    v37 = v102;
    *v102 = v36;
    v37[1] = v38;
    *(v37 + 16) = v39 & 1;
    v37[3] = v40;
    swift_storeEnumTagMultiPayload();
    sub_AEBB0();
    return sub_B6F00();
  }

  else
  {
    v83[1] = v19;
    sub_A9A64(v25, v33, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
    sub_AD198(v33, v31, type metadata accessor for PeopleListPersonRow.State.RelativeDateOrString);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v83[0] = v33;
    if (EnumCaseMultiPayload == 1)
    {
      v43 = *v31;
      v94 = v31[1];
      v95 = v43;
      v44 = *(v1 + 32);
      v45 = *(v1 + 40);
      v103 = v44;
      v104 = v45;
      v93 = sub_97E8();

      v46 = sub_B7200();
      v48 = v47;
      LOBYTE(v45) = v49;
      sub_B6E60();
      v50 = sub_B71F0();
      v52 = v51;
      v54 = v53;
      v55 = sub_B71D0();
      v91 = v56;
      v92 = v55;
      LODWORD(v90) = v57;
      sub_9C84(v50, v52, v54 & 1);

      sub_9C84(v46, v48, v45 & 1);

      v103 = v95;
      v104 = v94;
      v58 = sub_B7200();
      v60 = v59;
      LOBYTE(v52) = v61;
      v63 = v91;
      v62 = v92;
      v64 = sub_B71D0();
      v66 = v65;
      LOBYTE(v46) = v67;
      v95 = v68;
      sub_9C84(v58, v60, v52 & 1);

      sub_9C84(v62, v63, v90 & 1);

      v69 = v99;
      *v99 = v64;
      v69[1] = v66;
      v70 = v83[0];
      *(v69 + 16) = v46 & 1;
      v69[3] = v95;
      swift_storeEnumTagMultiPayload();
      sub_AE014(&qword_F3470, &type metadata accessor for RelativeDateText);
      v71 = v96;
      sub_B6F00();
    }

    else
    {
      v73 = v88;
      v72 = v89;
      v74 = v31;
      v75 = v93;
      (*(v89 + 32))(v88, v74, v93);
      (*(v72 + 16))(v84, v73, v75);
      (*(v85 + 104))(v87, enum case for FindMyRelativeDateFormatStyle.DisplayStyle.concise(_:), v86);
      sub_B6450();
      v76 = v94;
      sub_AD198(v1, v94, type metadata accessor for PeopleListPersonRow);
      v77 = (*(v90 + 80) + 16) & ~*(v90 + 80);
      v78 = swift_allocObject();
      sub_A9A64(v76, v78 + v77, type metadata accessor for PeopleListPersonRow);
      v79 = v91;
      sub_B6790();
      v80 = v95;
      v81 = v97;
      (*(v95 + 16))(v99, v79, v97);
      swift_storeEnumTagMultiPayload();
      sub_AE014(&qword_F3470, &type metadata accessor for RelativeDateText);
      v71 = v96;
      sub_B6F00();
      (*(v80 + 8))(v79, v81);
      v82 = v73;
      v70 = v83[0];
      (*(v72 + 8))(v82, v75);
    }

    sub_A310(v71, v102, &qword_F3460, &qword_C5370);
    swift_storeEnumTagMultiPayload();
    sub_AEBB0();
    sub_B6F00();
    sub_A194(v71, &qword_F3460, &qword_C5370);
    return sub_ADFB8(v70);
  }
}