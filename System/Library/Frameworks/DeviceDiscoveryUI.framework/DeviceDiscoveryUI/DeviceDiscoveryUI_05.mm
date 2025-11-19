uint64_t sub_2380DC65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a2;
  v40 = a3;
  v6 = sub_238152F4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _DDNodeDecoration(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_238152FBC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v4;
  (*(v16 + 16))(v19, a1, v15);
  v21 = (*(v16 + 88))(v19, v15);
  if (v21 == *MEMORY[0x277D54860])
  {
    (*(v16 + 8))(v19, v15);
LABEL_4:
    v22 = 0x8000000238162760;
    v23 = 0xD000000000000010;
LABEL_5:
    *v14 = v23;
    *(v14 + 1) = v22;
LABEL_6:
    type metadata accessor for _DDNodeDecoration.Kind(0);
    swift_storeEnumTagMultiPayload();
    v24 = *(v11 + 24);
    v25 = sub_2381536AC();
    (*(*(v25 - 8) + 16))(&v14[v24], v38, v25);
    *&v14[*(v11 + 20)] = v39;

    sub_2380A9944(v40, v14);
    return sub_2380F198C(v14, type metadata accessor for _DDNodeDecoration);
  }

  if (v21 == *MEMORY[0x277D54830])
  {
    goto LABEL_4;
  }

  if (v21 == *MEMORY[0x277D54840])
  {
    (*(v16 + 96))(v19, v15);
    (*(v7 + 32))(v10, v19, v6);
    sub_2380F15B0(&qword_27DEEC598, MEMORY[0x277D54800]);
    *v14 = sub_23815559C();
    *(v14 + 1) = v27;
    type metadata accessor for _DDNodeDecoration.Kind(0);
    swift_storeEnumTagMultiPayload();
    v28 = *(v11 + 24);
    v29 = sub_2381536AC();
    (*(*(v29 - 8) + 16))(&v14[v28], v38, v29);
    *&v14[*(v11 + 20)] = v39;

    sub_2380A9944(v40, v14);
    sub_2380F198C(v14, type metadata accessor for _DDNodeDecoration);
    return (*(v7 + 8))(v10, v6);
  }

  if (v21 == *MEMORY[0x277D54868] || v21 == *MEMORY[0x277D54898])
  {
    goto LABEL_6;
  }

  if (v21 == *MEMORY[0x277D54888])
  {
    v22 = 0x8000000238162780;
    v23 = 0xD000000000000016;
    goto LABEL_5;
  }

  if (v21 == *MEMORY[0x277D54838])
  {
    v30 = 0x7571657220646162;
    v31 = 0xEB00000000747365;
LABEL_24:
    *v14 = v30;
    *(v14 + 1) = v31;
    goto LABEL_6;
  }

  if (v21 == *MEMORY[0x277D54848])
  {
    v30 = 0x7073657220646162;
    v32 = 1702063727;
LABEL_23:
    v31 = v32 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    goto LABEL_24;
  }

  if (v21 == *MEMORY[0x277D54890])
  {
    v22 = 0x8000000238162740;
    v23 = 0xD00000000000001BLL;
    goto LABEL_5;
  }

  if (v21 == *MEMORY[0x277D54858])
  {
    v33 = 0x6D6165727473;
LABEL_22:
    v30 = v33 & 0xFFFFFFFFFFFFLL | 0x6520000000000000;
    v32 = 1919906418;
    goto LABEL_23;
  }

  if (v21 == *MEMORY[0x277D54870])
  {
    v34 = "missing own contact";
LABEL_29:
    v22 = (v34 - 32) | 0x8000000000000000;
    v23 = 0xD000000000000013;
    goto LABEL_5;
  }

  if (v21 == *MEMORY[0x277D54878])
  {
    v34 = "missing record data";
    goto LABEL_29;
  }

  if (v21 == *MEMORY[0x277D54850])
  {
    v33 = 0x726576726573;
    goto LABEL_22;
  }

  if (v21 == *MEMORY[0x277D54880])
  {
    v22 = 0x80000002381626E0;
    v23 = 0xD000000000000014;
    goto LABEL_5;
  }

  strcpy(v14, "unknown error");
  *(v14 + 7) = -4864;
  type metadata accessor for _DDNodeDecoration.Kind(0);
  swift_storeEnumTagMultiPayload();
  v35 = *(v11 + 24);
  v36 = sub_2381536AC();
  (*(*(v36 - 8) + 16))(&v14[v35], v38, v36);
  *&v14[*(v11 + 20)] = v39;

  sub_2380A9944(v40, v14);
  sub_2380F198C(v14, type metadata accessor for _DDNodeDecoration);
  return (*(v16 + 8))(v19, v15);
}

uint64_t AirDropDiscoveryView.handleTransferUpdates(transferUpdates:endpointUUID:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 296) = a1;
  *(v3 + 304) = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC468, &qword_23815BED8) - 8) + 64) + 15;
  *(v3 + 312) = swift_task_alloc();
  v5 = sub_23815345C();
  *(v3 + 320) = v5;
  v6 = *(v5 - 8);
  *(v3 + 328) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  v8 = sub_238152FBC();
  *(v3 + 352) = v8;
  v9 = *(v8 - 8);
  *(v3 + 360) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 368) = swift_task_alloc();
  v11 = type metadata accessor for _DDNodeDecoration(0);
  *(v3 + 376) = v11;
  v12 = *(v11 - 8);
  *(v3 + 384) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 392) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC470, &qword_23815BEE0) - 8) + 64) + 15;
  *(v3 + 400) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC478, &qword_23815BEE8) - 8) + 64) + 15;
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  v16 = sub_23815305C();
  *(v3 + 432) = v16;
  v17 = *(v16 - 8);
  *(v3 + 440) = v17;
  v18 = *(v17 + 64) + 15;
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC480, &qword_23815BEF0) - 8) + 64) + 15;
  *(v3 + 464) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC488, &qword_23815BEF8);
  *(v3 + 472) = v20;
  v21 = *(v20 - 8);
  *(v3 + 480) = v21;
  v22 = *(v21 + 64) + 15;
  *(v3 + 488) = swift_task_alloc();
  v23 = sub_23815300C();
  *(v3 + 496) = v23;
  v24 = *(v23 - 8);
  *(v3 + 504) = v24;
  v25 = *(v24 + 64) + 15;
  *(v3 + 512) = swift_task_alloc();
  v26 = type metadata accessor for DecorationIdentifier(0);
  *(v3 + 520) = v26;
  v27 = *(v26 - 8);
  *(v3 + 528) = v27;
  v28 = *(v27 + 64) + 15;
  *(v3 + 536) = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00) - 8) + 64) + 15;
  *(v3 + 544) = swift_task_alloc();
  v30 = sub_23815313C();
  *(v3 + 552) = v30;
  v31 = *(v30 - 8);
  *(v3 + 560) = v31;
  v32 = *(v31 + 64) + 15;
  *(v3 + 568) = swift_task_alloc();
  *(v3 + 576) = swift_task_alloc();
  v33 = sub_2381530BC();
  *(v3 + 584) = v33;
  v34 = *(v33 - 8);
  *(v3 + 592) = v34;
  v35 = *(v34 + 64) + 15;
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  *(v3 + 616) = swift_task_alloc();
  *(v3 + 624) = swift_task_alloc();
  *(v3 + 632) = swift_task_alloc();
  v36 = sub_2381536AC();
  *(v3 + 640) = v36;
  v37 = *(v36 - 8);
  *(v3 + 648) = v37;
  v38 = *(v37 + 64) + 15;
  *(v3 + 656) = swift_task_alloc();
  v39 = swift_task_alloc();
  v40 = *(v2 + 16);
  *(v3 + 672) = *v2;
  v41 = *(v2 + 80);
  *(v3 + 184) = *(v2 + 64);
  *(v3 + 200) = v41;
  *(v3 + 216) = *(v2 + 96);
  *(v3 + 136) = v40;
  v42 = *(v2 + 48);
  *(v3 + 152) = *(v2 + 32);
  *(v3 + 664) = v39;
  *(v3 + 232) = *(v2 + 112);
  *(v3 + 168) = v42;
  *(v3 + 688) = sub_238154F8C();
  *(v3 + 696) = sub_238154F7C();
  v44 = sub_238154F3C();
  *(v3 + 704) = v44;
  *(v3 + 712) = v43;

  return MEMORY[0x2822009F8](sub_2380DD340, v44, v43);
}

uint64_t sub_2380DD340()
{
  v76 = v0[85];
  v1 = v0[83];
  v2 = v0[79];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[37];
  v0[90] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC490, &qword_23815BF08);
  sub_2381532DC();
  sub_23815303C();
  v10 = *(v3 + 8);
  v0[91] = v10;
  v0[92] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v69 = v10;
  v10(v2, v4);
  sub_23815316C();
  (*(v7 + 104))(v6, *MEMORY[0x277D54970], v8);
  LOBYTE(v9) = MEMORY[0x2383E7760](v5, v6);
  v11 = *(v7 + 8);
  v11(v6, v8);
  v11(v5, v8);
  if (v9)
  {
    v12 = v0[84];
    v13 = v0[83];
    v14 = v0[38];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v15 = sub_2380D3060(v0[36]);
    v16 = swift_task_alloc();
    *(v16 + 16) = v14;
    *(v16 + 24) = v13;
    v17 = sub_2380D260C(sub_2380EF1E0, v16, v15);

    v18 = v17[2];
    if (v18)
    {
      v19 = v0[81];
      v20 = *(v19 + 16);
      v19 += 16;
      v74 = v20;
      v75 = v0[65];
      v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v70 = v0[48];
      v71 = v0[66];
      v73 = *(v19 + 56);
      v72 = (v19 - 8);
      do
      {
        v77 = v0[84];
        v26 = v0[82];
        v27 = v0[80];
        v28 = v0[67];
        v29 = v0[38];
        v74(v26, v21, v27);
        v74(v28, v26, v27);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
        (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
        v31 = *(v75 + 20);
        v32 = sub_2381527EC();
        (*(*(v32 - 8) + 16))(v28 + v31, v29, v32);
        swift_getKeyPath();
        swift_getKeyPath();
        v33 = sub_238152A7C();
        v35 = v34;
        v36 = *v34;
        v37 = sub_2380E6DE4(v28);
        if (v38)
        {
          v39 = v37;
          v40 = *v35;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = *v35;
          *v35 = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_2380E9728();
          }

          v42 = v0[68];
          v43 = v0[67];
          sub_2380F198C(*(v78 + 48) + *(v71 + 72) * v39, type metadata accessor for DecorationIdentifier);
          sub_2380F19EC(*(v78 + 56) + *(v70 + 72) * v39, v42, type metadata accessor for _DDNodeDecoration);
          sub_2380E8278(v39, v78);
          sub_2380F198C(v43, type metadata accessor for DecorationIdentifier);
          v44 = *v35;
          *v35 = v78;

          v22 = 0;
        }

        else
        {
          sub_2380F198C(v0[67], type metadata accessor for DecorationIdentifier);
          v22 = 1;
        }

        v23 = v0[82];
        v24 = v0[80];
        v25 = v0[68];
        (*(v70 + 56))(v25, v22, 1, v0[47]);
        sub_238071284(v25, &qword_27DEEBA48, &qword_23815BF00);
        v33(v0 + 30, 0);

        (*v72)(v23, v24);
        v21 += v73;
        --v18;
      }

      while (v18);
    }
  }

  v45 = v0[78];
  v46 = v0[73];
  v48 = v0[63];
  v47 = v0[64];
  v49 = v0[62];
  v50 = v0[37];
  sub_2381532DC();
  sub_23815302C();
  v69(v45, v46);
  v51 = sub_238152FDC();
  v53 = v52;
  (*(v48 + 8))(v47, v49);
  if (v53 >> 60 != 15)
  {
    v54 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v55 = sub_23815274C();
    v56 = [v54 initWithData_];

    if (v56)
    {
      v57 = sub_23815466C();
      sub_238087244(v51, v53);
      v58 = v57;
      goto LABEL_16;
    }

    sub_238087244(v51, v53);
  }

  v58 = sub_23815467C();
LABEL_16:
  v0[93] = v58;
  v59 = v0[61];
  v60 = v0[37];
  sub_2381532EC();
  v61 = v0[86];
  v0[94] = sub_238154F7C();
  v62 = sub_2380711D4(&qword_27DEEC498, &qword_27DEEC488, &qword_23815BEF8);
  v63 = *(MEMORY[0x277D856D0] + 4);
  v64 = swift_task_alloc();
  v0[95] = v64;
  *v64 = v0;
  v64[1] = sub_2380DDA18;
  v65 = v0[61];
  v66 = v0[58];
  v67 = v0[59];

  return MEMORY[0x282200308](v66, v67, v62);
}

uint64_t sub_2380DDA18()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;
  *(*v1 + 768) = v0;

  v5 = *(v2 + 752);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_238154F3C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2380DE084;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_238154F3C();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2380DDBB0;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_2380DDBB0()
{
  v1 = v0[94];

  v2 = v0[89];
  v3 = v0[88];

  return MEMORY[0x2822009F8](sub_2380DDC18, v3, v2);
}

uint64_t sub_2380DDC18()
{
  v48 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 584);
  v3 = *(v0 + 464);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
    v4 = *(MEMORY[0x277D54AC8] + 4);
    v5 = swift_task_alloc();
    *(v0 + 776) = v5;
    *v5 = v0;
    v5[1] = sub_2380DEB08;
    v6 = *(v0 + 720);
    v7 = *(v0 + 600);
    v8 = *(v0 + 296);

    return MEMORY[0x2821B6068](v7, v6);
  }

  else
  {
    v9 = *(v0 + 744);
    v10 = *(v0 + 664);
    v11 = *(v0 + 456);
    v12 = *(v0 + 440);
    v45 = *(v0 + 432);
    v13 = *(v0 + 304);
    v44 = *(v0 + 672);
    (*(v1 + 32))(*(v0 + 616), v3, v2);
    *(v0 + 16) = v44;
    v14 = *(v0 + 184);
    v15 = *(v0 + 216);
    *(v0 + 96) = *(v0 + 200);
    *(v0 + 112) = v15;
    *(v0 + 128) = *(v0 + 232);
    v16 = *(v0 + 152);
    *(v0 + 32) = *(v0 + 136);
    *(v0 + 48) = v16;
    *(v0 + 64) = *(v0 + 168);
    *(v0 + 80) = v14;
    sub_23815306C();
    sub_2380D78D0(v11, v9, v13, 0, 0xE000000000000000, v10);
    (*(v12 + 8))(v11, v45);
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 616);
    v18 = *(v0 + 608);
    v19 = *(v0 + 592);
    v20 = *(v0 + 584);
    v21 = sub_23815293C();
    __swift_project_value_buffer(v21, qword_27DEEC3F0);
    (*(v19 + 16))(v18, v17, v20);
    v22 = sub_23815291C();
    v23 = sub_2381550FC();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 736);
    v26 = *(v0 + 728);
    v27 = *(v0 + 616);
    v28 = *(v0 + 608);
    v29 = *(v0 + 584);
    if (v24)
    {
      v30 = swift_slowAlloc();
      v46 = v27;
      v47 = swift_slowAlloc();
      v31 = v47;
      *v30 = 136315138;
      sub_2380F15B0(&qword_27DEEC4A8, MEMORY[0x277D54928]);
      v32 = sub_23815559C();
      v34 = v33;
      v26(v28, v29);
      v35 = sub_238085EAC(v32, v34, &v47);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_238060000, v22, v23, "Starting send updated %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x2383EA8A0](v31, -1, -1);
      MEMORY[0x2383EA8A0](v30, -1, -1);

      v26(v46, v29);
    }

    else
    {

      v26(v28, v29);
      v26(v27, v29);
    }

    v36 = *(v0 + 688);
    *(v0 + 752) = sub_238154F7C();
    v37 = sub_2380711D4(&qword_27DEEC498, &qword_27DEEC488, &qword_23815BEF8);
    v38 = *(MEMORY[0x277D856D0] + 4);
    v39 = swift_task_alloc();
    *(v0 + 760) = v39;
    *v39 = v0;
    v39[1] = sub_2380DDA18;
    v40 = *(v0 + 488);
    v41 = *(v0 + 464);
    v42 = *(v0 + 472);

    return MEMORY[0x282200308](v41, v42, v37);
  }
}

uint64_t sub_2380DE084()
{
  v1 = v0[94];
  v0[34] = v0[96];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  swift_willThrowTypedImpl();

  v2 = v0[89];
  v3 = v0[88];

  return MEMORY[0x2822009F8](sub_2380DE120, v3, v2);
}

uint64_t sub_2380DE120()
{
  v1 = v0[87];
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[59];

  (*(v3 + 8))(v2, v4);
  v5 = v0[96];
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[39];
  v0[35] = v5;
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if (v10)
  {
    v13 = v0[42];
    v12 = v0[43];
    v14 = v0[40];
    v15 = v0[41];
    v16 = v0[39];
    v11(v16, 0, 1, v14);
    (*(v15 + 32))(v12, v16, v14);
    (*(v15 + 16))(v13, v12, v14);
    v17 = (*(v15 + 88))(v13, v14);
    v18 = v0[41];
    v19 = v0[42];
    v20 = v0[40];
    if (v17 == *MEMORY[0x277D54B10])
    {
      (*(v18 + 96))(v0[42], v20);
      v22 = *v19;
      v21 = v19[1];
      v23 = v19[4];
      v24 = v19[6];
      v25 = v19[8];
      v26 = v19[12];

      if (v22 == 0xD000000000000017 && 0x80000002381625E0 == v21)
      {

LABEL_18:
        if (qword_27DEEA0B0 != -1)
        {
          swift_once();
        }

        v61 = sub_23815293C();
        __swift_project_value_buffer(v61, qword_27DEEC3F0);
        v62 = sub_23815291C();
        v63 = sub_2381550DC();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *v64 = 138412290;
          sub_238154F5C();
          sub_2380F15B0(&qword_27DEEC4A0, MEMORY[0x277D85678]);
          swift_allocError();
          sub_238154BFC();
          v66 = _swift_stdlib_bridgeErrorToNSError();
          *(v64 + 4) = v66;
          *v65 = v66;
          _os_log_impl(&dword_238060000, v62, v63, "Transfer cancelled {error: %@}", v64, 0xCu);
          sub_238071284(v65, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v65, -1, -1);
          MEMORY[0x2383EA8A0](v64, -1, -1);
        }

        v67 = v62;
        v68 = v0[93];
        v69 = v0[83];
        v70 = v0[81];
        v71 = v0[80];
        v72 = v0[49];
        v73 = v0[47];
        v108 = v0[43];
        v74 = v0[41];
        v101 = v0[84];
        v104 = v0[40];
        v75 = v0[38];

        type metadata accessor for _DDNodeDecoration.Kind(0);
        swift_storeEnumTagMultiPayload();
        (*(v70 + 16))(v72 + *(v73 + 24), v69, v71);
        *(v72 + *(v73 + 20)) = v68;
        sub_2380A9944(v75, v72);

        sub_2380F198C(v72, type metadata accessor for _DDNodeDecoration);
        (*(v74 + 8))(v108, v104);
        goto LABEL_23;
      }

      v60 = sub_2381555CC();

      if (v60)
      {
        goto LABEL_18;
      }
    }

    else
    {
      (*(v18 + 8))(v0[42], v20);
    }

    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v44 = sub_23815293C();
    __swift_project_value_buffer(v44, qword_27DEEC3F0);
    v45 = v5;
    v46 = sub_23815291C();
    v47 = sub_2381550DC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = v5;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_238060000, v46, v47, "Transfer failed {error: %@}", v48, 0xCu);
      sub_238071284(v49, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v49, -1, -1);
      MEMORY[0x2383EA8A0](v48, -1, -1);
    }

    v52 = v0[93];
    v98 = v0[84];
    v53 = v0[83];
    v107 = v5;
    v54 = v0[81];
    v55 = v0[80];
    v56 = v0[49];
    v57 = v0[47];
    v58 = v0[41];
    v100 = v0[40];
    v103 = v0[43];
    v59 = v0[38];

    strcpy(v56, "unknown error");
    *(v56 + 14) = -4864;
    type metadata accessor for _DDNodeDecoration.Kind(0);
    swift_storeEnumTagMultiPayload();
    (*(v54 + 16))(v56 + *(v57 + 24), v53, v55);
    *(v56 + *(v57 + 20)) = v52;

    sub_2380A9944(v59, v56);
    sub_2380F198C(v56, type metadata accessor for _DDNodeDecoration);

    (*(v58 + 8))(v103, v100);
  }

  else
  {
    v27 = v0[39];
    v11(v27, 1, 1, v0[40]);
    sub_238071284(v27, &qword_27DEEC468, &qword_23815BED8);
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v28 = sub_23815293C();
    __swift_project_value_buffer(v28, qword_27DEEC3F0);
    v29 = v5;
    v30 = sub_23815291C();
    v31 = sub_2381550DC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v5;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_238060000, v30, v31, "Transfer failed {error: %@}", v32, 0xCu);
      sub_238071284(v33, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v33, -1, -1);
      MEMORY[0x2383EA8A0](v32, -1, -1);
    }

    v36 = v0[93];
    v37 = v0[84];
    v38 = v0[83];
    v106 = v5;
    v39 = v0[81];
    v40 = v0[80];
    v41 = v0[49];
    v42 = v0[47];
    v43 = v0[38];

    strcpy(v41, "unknown error");
    *(v41 + 14) = -4864;
    type metadata accessor for _DDNodeDecoration.Kind(0);
    swift_storeEnumTagMultiPayload();
    (*(v39 + 16))(v41 + *(v42 + 24), v38, v40);
    *(v41 + *(v42 + 20)) = v36;

    sub_2380A9944(v43, v41);
    sub_2380F198C(v41, type metadata accessor for _DDNodeDecoration);
  }

LABEL_23:
  v76 = v0[82];
  v77 = v0[79];
  v78 = v0[78];
  v79 = v0[77];
  v80 = v0[76];
  v81 = v0[75];
  v82 = v0[72];
  v83 = v0[71];
  v86 = v0[68];
  v87 = v0[67];
  v88 = v0[64];
  v89 = v0[61];
  v90 = v0[58];
  v91 = v0[57];
  v92 = v0[56];
  v93 = v0[53];
  v94 = v0[52];
  v95 = v0[51];
  v96 = v0[50];
  v97 = v0[49];
  v99 = v0[46];
  v102 = v0[43];
  v105 = v0[42];
  v109 = v0[39];
  (*(v0[81] + 8))(v0[83], v0[80]);

  v84 = v0[1];

  return v84(0);
}

uint64_t sub_2380DEB08()
{
  v2 = *v1;
  v3 = *(*v1 + 776);
  v4 = *v1;
  *(*v1 + 784) = v0;

  v5 = *(v2 + 712);
  v6 = *(v2 + 704);
  if (v0)
  {
    v7 = sub_2380DF354;
  }

  else
  {
    v7 = sub_2380DEC44;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2380DEC44()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 600);
  v4 = *(v0 + 440);
  v3 = *(v0 + 448);
  v5 = *(v0 + 432);
  v6 = *(v0 + 400);

  sub_23815306C();
  sub_23815304C();
  (*(v4 + 8))(v3, v5);
  v7 = sub_23815309C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = *(v0 + 424);
  v11 = *(v0 + 400);
  if (v9 == 1)
  {
    sub_238071284(*(v0 + 400), &qword_27DEEC470, &qword_23815BEE0);
    v12 = sub_23815307C();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  else
  {
    v13 = *(v0 + 424);
    v14 = *(v0 + 400);
    sub_23815308C();
    (*(v8 + 8))(v11, v7);
  }

  v15 = *(v0 + 416);
  sub_2380712E4(*(v0 + 424), v15, &qword_27DEEC478, &qword_23815BEE8);
  v16 = sub_23815307C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_5;
  }

  v27 = *(v0 + 408);
  sub_2380712E4(*(v0 + 416), v27, &qword_27DEEC478, &qword_23815BEE8);
  v28 = (*(v17 + 88))(v27, v16);
  if (v28 == *MEMORY[0x277D54908])
  {
    v29 = *(v0 + 744);
    v81 = *(v0 + 728);
    v85 = *(v0 + 736);
    v30 = *(v0 + 664);
    v69 = *(v0 + 584);
    v73 = *(v0 + 600);
    v67 = *(v0 + 424);
    v77 = *(v0 + 416);
    v31 = *(v0 + 408);
    v32 = *(v0 + 360);
    v33 = *(v0 + 368);
    v34 = *(v0 + 352);
    v35 = *(v0 + 304);
    v65 = *(v0 + 672);
    (*(v17 + 96))(v31, v16);
    (*(v32 + 32))(v33, v31, v34);
    v91 = *(v0 + 184);
    v92 = *(v0 + 200);
    v93 = *(v0 + 216);
    v94 = *(v0 + 232);
    v88 = *(v0 + 136);
    v89 = *(v0 + 152);
    v90 = *(v0 + 168);
    sub_2380DC65C(v33, v29, v35, v30);

    (*(v32 + 8))(v33, v34);
    sub_238071284(v67, &qword_27DEEC478, &qword_23815BEE8);
    v81(v73, v69);
    sub_238071284(v77, &qword_27DEEC478, &qword_23815BEE8);
    goto LABEL_8;
  }

  if (v28 != *MEMORY[0x277D54910])
  {
    (*(v17 + 8))(*(v0 + 408), v16);
LABEL_5:
    v18 = *(v0 + 744);
    v80 = *(v0 + 728);
    v84 = *(v0 + 736);
    v19 = *(v0 + 672);
    v20 = *(v0 + 664);
    v21 = *(v0 + 648);
    v22 = *(v0 + 640);
    v72 = *(v0 + 584);
    v76 = *(v0 + 600);
    v23 = *(v0 + 424);
    v24 = *(v0 + 392);
    v25 = *(v0 + 376);
    v26 = *(v0 + 304);
    sub_238071284(*(v0 + 416), &qword_27DEEC478, &qword_23815BEE8);
    strcpy(v24, "unknown error");
    *(v24 + 14) = -4864;
    type metadata accessor for _DDNodeDecoration.Kind(0);
    swift_storeEnumTagMultiPayload();
    (*(v21 + 16))(v24 + *(v25 + 24), v20, v22);
    *(v24 + *(v25 + 20)) = v18;
    sub_2380A9944(v26, v24);
    sub_2380F198C(v24, type metadata accessor for _DDNodeDecoration);
    sub_238071284(v23, &qword_27DEEC478, &qword_23815BEE8);
    v80(v76, v72);
LABEL_8:
    v86 = 0;
    goto LABEL_9;
  }

  v46 = *(v0 + 744);
  v83 = *(v0 + 728);
  v87 = *(v0 + 736);
  v47 = *(v0 + 672);
  v48 = *(v0 + 664);
  v49 = *(v0 + 648);
  v50 = *(v0 + 640);
  v71 = *(v0 + 584);
  v75 = *(v0 + 600);
  v51 = *(v0 + 424);
  v79 = *(v0 + 416);
  v52 = *(v0 + 392);
  v53 = *(v0 + 376);
  v54 = *(v0 + 304);
  type metadata accessor for _DDNodeDecoration.Kind(0);
  swift_storeEnumTagMultiPayload();
  (*(v49 + 16))(v52 + *(v53 + 24), v48, v50);
  *(v52 + *(v53 + 20)) = v46;
  sub_2380A9944(v54, v52);
  sub_2380F198C(v52, type metadata accessor for _DDNodeDecoration);
  sub_238071284(v51, &qword_27DEEC478, &qword_23815BEE8);
  v83(v75, v71);
  sub_238071284(v79, &qword_27DEEC478, &qword_23815BEE8);
  v86 = 1;
LABEL_9:
  v36 = *(v0 + 656);
  v37 = *(v0 + 632);
  v38 = *(v0 + 624);
  v39 = *(v0 + 616);
  v40 = *(v0 + 608);
  v41 = *(v0 + 600);
  v42 = *(v0 + 576);
  v43 = *(v0 + 568);
  v55 = *(v0 + 544);
  v56 = *(v0 + 536);
  v57 = *(v0 + 512);
  v58 = *(v0 + 488);
  v59 = *(v0 + 464);
  v60 = *(v0 + 456);
  v61 = *(v0 + 448);
  v62 = *(v0 + 424);
  v63 = *(v0 + 416);
  v64 = *(v0 + 408);
  v66 = *(v0 + 400);
  v68 = *(v0 + 392);
  v70 = *(v0 + 368);
  v74 = *(v0 + 344);
  v78 = *(v0 + 336);
  v82 = *(v0 + 312);
  (*(*(v0 + 648) + 8))(*(v0 + 664), *(v0 + 640));

  v44 = *(v0 + 8);

  return v44(v86);
}

uint64_t sub_2380DF354()
{
  v1 = v0[87];

  v2 = v0[98];
  v3 = v0[40];
  v4 = v0[41];
  v5 = v0[39];
  v0[35] = v2;
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  v7 = swift_dynamicCast();
  v8 = *(v4 + 56);
  if (v7)
  {
    v10 = v0[42];
    v9 = v0[43];
    v11 = v0[40];
    v12 = v0[41];
    v13 = v0[39];
    v8(v13, 0, 1, v11);
    (*(v12 + 32))(v9, v13, v11);
    (*(v12 + 16))(v10, v9, v11);
    v14 = (*(v12 + 88))(v10, v11);
    v15 = v0[41];
    v16 = v0[42];
    v17 = v0[40];
    if (v14 == *MEMORY[0x277D54B10])
    {
      (*(v15 + 96))(v0[42], v17);
      v19 = *v16;
      v18 = v16[1];
      v20 = v16[4];
      v21 = v16[6];
      v22 = v16[8];
      v23 = v16[12];

      if (v19 == 0xD000000000000017 && 0x80000002381625E0 == v18)
      {

LABEL_18:
        if (qword_27DEEA0B0 != -1)
        {
          swift_once();
        }

        v58 = sub_23815293C();
        __swift_project_value_buffer(v58, qword_27DEEC3F0);
        v59 = sub_23815291C();
        v60 = sub_2381550DC();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v61 = 138412290;
          sub_238154F5C();
          sub_2380F15B0(&qword_27DEEC4A0, MEMORY[0x277D85678]);
          swift_allocError();
          sub_238154BFC();
          v63 = _swift_stdlib_bridgeErrorToNSError();
          *(v61 + 4) = v63;
          *v62 = v63;
          _os_log_impl(&dword_238060000, v59, v60, "Transfer cancelled {error: %@}", v61, 0xCu);
          sub_238071284(v62, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v62, -1, -1);
          MEMORY[0x2383EA8A0](v61, -1, -1);
        }

        v64 = v59;
        v65 = v0[93];
        v66 = v0[83];
        v67 = v0[81];
        v68 = v0[80];
        v69 = v0[49];
        v70 = v0[47];
        v105 = v0[43];
        v71 = v0[41];
        v98 = v0[84];
        v101 = v0[40];
        v72 = v0[38];

        type metadata accessor for _DDNodeDecoration.Kind(0);
        swift_storeEnumTagMultiPayload();
        (*(v67 + 16))(v69 + *(v70 + 24), v66, v68);
        *(v69 + *(v70 + 20)) = v65;
        sub_2380A9944(v72, v69);

        sub_2380F198C(v69, type metadata accessor for _DDNodeDecoration);
        (*(v71 + 8))(v105, v101);
        goto LABEL_23;
      }

      v57 = sub_2381555CC();

      if (v57)
      {
        goto LABEL_18;
      }
    }

    else
    {
      (*(v15 + 8))(v0[42], v17);
    }

    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v41 = sub_23815293C();
    __swift_project_value_buffer(v41, qword_27DEEC3F0);
    v42 = v2;
    v43 = sub_23815291C();
    v44 = sub_2381550DC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      v47 = v2;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v48;
      *v46 = v48;
      _os_log_impl(&dword_238060000, v43, v44, "Transfer failed {error: %@}", v45, 0xCu);
      sub_238071284(v46, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v46, -1, -1);
      MEMORY[0x2383EA8A0](v45, -1, -1);
    }

    v49 = v0[93];
    v95 = v0[84];
    v50 = v0[83];
    v104 = v2;
    v51 = v0[81];
    v52 = v0[80];
    v53 = v0[49];
    v54 = v0[47];
    v55 = v0[41];
    v97 = v0[40];
    v100 = v0[43];
    v56 = v0[38];

    strcpy(v53, "unknown error");
    *(v53 + 14) = -4864;
    type metadata accessor for _DDNodeDecoration.Kind(0);
    swift_storeEnumTagMultiPayload();
    (*(v51 + 16))(v53 + *(v54 + 24), v50, v52);
    *(v53 + *(v54 + 20)) = v49;

    sub_2380A9944(v56, v53);
    sub_2380F198C(v53, type metadata accessor for _DDNodeDecoration);

    (*(v55 + 8))(v100, v97);
  }

  else
  {
    v24 = v0[39];
    v8(v24, 1, 1, v0[40]);
    sub_238071284(v24, &qword_27DEEC468, &qword_23815BED8);
    if (qword_27DEEA0B0 != -1)
    {
      swift_once();
    }

    v25 = sub_23815293C();
    __swift_project_value_buffer(v25, qword_27DEEC3F0);
    v26 = v2;
    v27 = sub_23815291C();
    v28 = sub_2381550DC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v2;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_238060000, v27, v28, "Transfer failed {error: %@}", v29, 0xCu);
      sub_238071284(v30, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v30, -1, -1);
      MEMORY[0x2383EA8A0](v29, -1, -1);
    }

    v33 = v0[93];
    v34 = v0[84];
    v35 = v0[83];
    v103 = v2;
    v36 = v0[81];
    v37 = v0[80];
    v38 = v0[49];
    v39 = v0[47];
    v40 = v0[38];

    strcpy(v38, "unknown error");
    *(v38 + 14) = -4864;
    type metadata accessor for _DDNodeDecoration.Kind(0);
    swift_storeEnumTagMultiPayload();
    (*(v36 + 16))(v38 + *(v39 + 24), v35, v37);
    *(v38 + *(v39 + 20)) = v33;

    sub_2380A9944(v40, v38);
    sub_2380F198C(v38, type metadata accessor for _DDNodeDecoration);
  }

LABEL_23:
  v73 = v0[82];
  v74 = v0[79];
  v75 = v0[78];
  v76 = v0[77];
  v77 = v0[76];
  v78 = v0[75];
  v79 = v0[72];
  v80 = v0[71];
  v83 = v0[68];
  v84 = v0[67];
  v85 = v0[64];
  v86 = v0[61];
  v87 = v0[58];
  v88 = v0[57];
  v89 = v0[56];
  v90 = v0[53];
  v91 = v0[52];
  v92 = v0[51];
  v93 = v0[50];
  v94 = v0[49];
  v96 = v0[46];
  v99 = v0[43];
  v102 = v0[42];
  v106 = v0[39];
  (*(v0[81] + 8))(v0[83], v0[80]);

  v81 = v0[1];

  return v81(0);
}

uint64_t sub_2380DFD1C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_2381536AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TransferIDStatus(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for DecorationIdentifier(0) + 20);
  if (sub_2381527AC())
  {
    sub_2380F1924(a1, v12, type metadata accessor for TransferIDStatus);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
    if ((*(*(v14 - 8) + 48))(v12, 1, v14) != 1)
    {
      v15 = *(v5 + 32);
      v15(v8, v12, v4);
      if ((sub_2381527AC() & 1) == 0)
      {
        v15(a2, v8, v4);
        return (*(v5 + 56))(a2, 0, 1, v4);
      }

      (*(v5 + 8))(v8, v4);
    }
  }

  return (*(v5 + 56))(a2, 1, 1, v4);
}

uint64_t sub_2380DFF50(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_238154F8C();
  v2[8] = sub_238154F7C();
  v4 = sub_238154F3C();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_2380DFFE8, v4, v3);
}

uint64_t sub_2380DFFE8()
{
  sub_2380712E4(*(v0 + 48), v0 + 16, &qword_27DEEBF18, &qword_23815B098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBF18, &qword_23815B098);
  if (swift_dynamicCast() && (v1 = *(v0 + 121), v1 != 2))
  {
    *(v0 + 120) = v1 & 1;
    v9 = *(MEMORY[0x277D54B50] + 4);
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220);
    *v10 = v0;
    v10[1] = sub_2380E0180;
    v11 = *(v0 + 56);
    v7 = v0 + 120;
  }

  else
  {
    v2 = *(v0 + 56);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220);
    sub_23815355C();
    v4 = *(MEMORY[0x277D54B50] + 4);
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_2380E02BC;
    v6 = *(v0 + 56);
    v7 = v0 + 122;
    v8 = v3;
  }

  return MEMORY[0x2821B6230](v7, v8);
}

uint64_t sub_2380E0180()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_2380E0434;
  }

  else
  {
    v7 = sub_2380E03D0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2380E02BC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  v4 = *(v2 + 72);
  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_2380E0498;
  }

  else
  {
    v6 = sub_2380E03D0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2380E03D0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2380E0434()
{
  v1 = v0[8];

  v2 = v0[12];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2380E0498()
{
  v1 = v0[8];

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2380E04FC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC560, &unk_23815C210) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = sub_23815362C();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  sub_238154F8C();
  v2[13] = sub_238154F7C();
  v8 = sub_238154F3C();
  v2[14] = v8;
  v2[15] = v7;

  return MEMORY[0x2822009F8](sub_2380E0634, v8, v7);
}

uint64_t sub_2380E0634()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  sub_2380712E4(v0[6], (v0 + 2), &qword_27DEEBF18, &qword_23815B098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBF18, &qword_23815B098);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v6 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[8];
    v5(v9, 0, 1, v7);
    (*(v8 + 32))(v6, v9, v7);
    v10 = *(MEMORY[0x277D54B50] + 4);
    v11 = swift_task_alloc();
    v0[16] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
    *v11 = v0;
    v11[1] = sub_2380E084C;
    v13 = v0[12];
    v14 = v0[7];
  }

  else
  {
    v15 = v0[11];
    v16 = v0[8];
    v17 = v0[7];
    v5(v16, 1, 1, v0[9]);
    sub_238071284(v16, &qword_27DEEC560, &unk_23815C210);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
    sub_23815355C();
    v19 = *(MEMORY[0x277D54B50] + 4);
    v20 = swift_task_alloc();
    v0[18] = v20;
    *v20 = v0;
    v20[1] = sub_2380E0988;
    v21 = v0[7];
    v13 = v0[11];
    v12 = v18;
  }

  return MEMORY[0x2821B6230](v13, v12);
}

uint64_t sub_2380E084C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_2380E0BC4;
  }

  else
  {
    v7 = sub_2380E0B20;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2380E0988()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 152) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 120);
  v9 = *(v2 + 112);
  if (v0)
  {
    v10 = sub_2380E0CE8;
  }

  else
  {
    v10 = sub_2380E0C68;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_2380E0B20()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];
  v4 = v0[10];

  (*(v4 + 8))(v2, v3);
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2380E0BC4()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];
  v4 = v0[10];

  (*(v4 + 8))(v2, v3);
  v5 = v0[17];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2380E0C68()
{
  v1 = v0[13];

  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2380E0CE8()
{
  v1 = v0[13];

  v2 = v0[19];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2380E0D70()
{
  v0[2] = sub_238154F8C();
  v0[3] = sub_238154F7C();
  v1 = *(MEMORY[0x277D54B70] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_2380E0E20;

  return MEMORY[0x2821B6270]();
}

uint64_t sub_2380E0E20()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_238154F3C();
  if (v2)
  {
    v8 = sub_2380E0FE0;
  }

  else
  {
    v8 = sub_2380E0F7C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2380E0F7C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2380E0FE0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_2380E1044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v4[14] = sub_238154F8C();
  v4[15] = sub_238154F7C();
  v6 = *(a4 + 104);
  v10 = (*(a4 + 96) + **(a4 + 96));
  v7 = *(*(a4 + 96) + 4);
  v8 = swift_task_alloc();
  v4[16] = v8;
  *v8 = v4;
  v8[1] = sub_2380E1150;

  return v10();
}

uint64_t sub_2380E1150(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *(*v2 + 120);
  v6 = *(*v2 + 112);
  v10 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = a2;

  v8 = sub_238154F3C();

  return MEMORY[0x2822009F8](sub_2380E1294, v8, v7);
}

uint64_t sub_2380E1294()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);

  v5 = *(v4 + 72);
  *(v0 + 32) = *(v4 + 88);
  *(v0 + 16) = v5;
  v6 = *(v4 + 72);
  *(v0 + 56) = *(v4 + 88);
  *(v0 + 40) = v6;
  *(v0 + 88) = v2;
  *(v0 + 96) = v1;
  sub_2380712E4(v0 + 16, v0 + 64, &qword_27DEEC408, &qword_23815E800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815471C();
  v7 = *(v0 + 56);
  sub_238087244(*(v0 + 40), *(v0 + 48));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2380E1384()
{
  v2 = type metadata accessor for _DDNodeDecoration.Kind(0);
  *(v1 + 464) = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  *(v1 + 472) = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA48, &qword_23815BF00) - 8) + 64) + 15;
  *(v1 + 480) = swift_task_alloc();
  *(v1 + 488) = swift_task_alloc();
  v5 = *(*(type metadata accessor for TransferIDStatus(0) - 8) + 64) + 15;
  *(v1 + 496) = swift_task_alloc();
  v6 = sub_238152FBC();
  *(v1 + 504) = v6;
  v7 = *(v6 - 8);
  *(v1 + 512) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 520) = swift_task_alloc();
  v9 = type metadata accessor for _DDNodeDecoration(0);
  *(v1 + 528) = v9;
  v10 = *(v9 - 8);
  *(v1 + 536) = v10;
  v11 = *(v10 + 64) + 15;
  *(v1 + 544) = swift_task_alloc();
  *(v1 + 552) = swift_task_alloc();
  v12 = sub_2381527EC();
  *(v1 + 560) = v12;
  v13 = *(v12 - 8);
  *(v1 + 568) = v13;
  v14 = *(v13 + 64) + 15;
  *(v1 + 576) = swift_task_alloc();
  *(v1 + 584) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC478, &qword_23815BEE8) - 8) + 64) + 15;
  *(v1 + 592) = swift_task_alloc();
  *(v1 + 600) = swift_task_alloc();
  *(v1 + 608) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC470, &qword_23815BEE0) - 8) + 64) + 15;
  *(v1 + 616) = swift_task_alloc();
  v17 = sub_23815305C();
  *(v1 + 624) = v17;
  v18 = *(v17 - 8);
  *(v1 + 632) = v18;
  v19 = *(v18 + 64) + 15;
  *(v1 + 640) = swift_task_alloc();
  *(v1 + 648) = swift_task_alloc();
  v20 = sub_23815309C();
  *(v1 + 656) = v20;
  v21 = *(v20 - 8);
  *(v1 + 664) = v21;
  v22 = *(v21 + 64) + 15;
  *(v1 + 672) = swift_task_alloc();
  v23 = sub_2381526CC();
  *(v1 + 680) = v23;
  v24 = *(v23 - 8);
  *(v1 + 688) = v24;
  v25 = *(v24 + 64) + 15;
  *(v1 + 696) = swift_task_alloc();
  v26 = sub_23815334C();
  *(v1 + 704) = v26;
  v27 = *(v26 - 8);
  *(v1 + 712) = v27;
  v28 = *(v27 + 64) + 15;
  *(v1 + 720) = swift_task_alloc();
  v29 = sub_23815300C();
  *(v1 + 728) = v29;
  v30 = *(v29 - 8);
  *(v1 + 736) = v30;
  v31 = *(v30 + 64) + 15;
  *(v1 + 744) = swift_task_alloc();
  *(v1 + 752) = swift_task_alloc();
  *(v1 + 760) = swift_task_alloc();
  v32 = sub_2381536AC();
  *(v1 + 768) = v32;
  v33 = *(v32 - 8);
  *(v1 + 776) = v33;
  v34 = *(v33 + 64) + 15;
  *(v1 + 784) = swift_task_alloc();
  *(v1 + 792) = swift_task_alloc();
  *(v1 + 800) = swift_task_alloc();
  *(v1 + 808) = swift_task_alloc();
  *(v1 + 816) = swift_task_alloc();
  v35 = type metadata accessor for DecorationIdentifier(0);
  *(v1 + 824) = v35;
  v36 = *(v35 - 8);
  *(v1 + 832) = v36;
  v37 = *(v36 + 64) + 15;
  *(v1 + 840) = swift_task_alloc();
  *(v1 + 848) = swift_task_alloc();
  *(v1 + 856) = swift_task_alloc();
  *(v1 + 864) = swift_task_alloc();
  v38 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5C8, &qword_23815C2B8) - 8) + 64) + 15;
  *(v1 + 872) = swift_task_alloc();
  v39 = sub_23815313C();
  *(v1 + 880) = v39;
  v40 = *(v39 - 8);
  *(v1 + 888) = v40;
  v41 = *(v40 + 64) + 15;
  *(v1 + 896) = swift_task_alloc();
  *(v1 + 904) = swift_task_alloc();
  v42 = sub_2381530BC();
  *(v1 + 912) = v42;
  v43 = *(v42 - 8);
  *(v1 + 920) = v43;
  v44 = *(v43 + 64) + 15;
  *(v1 + 928) = swift_task_alloc();
  *(v1 + 936) = swift_task_alloc();
  v45 = sub_23815374C();
  *(v1 + 944) = v45;
  v46 = *(v45 - 8);
  *(v1 + 952) = v46;
  v47 = *(v46 + 64) + 15;
  *(v1 + 960) = swift_task_alloc();
  v48 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5D0, &qword_23815C2C0) - 8) + 64) + 15;
  *(v1 + 968) = swift_task_alloc();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5D8, &qword_23815C2C8);
  *(v1 + 976) = v49;
  v50 = *(v49 - 8);
  *(v1 + 984) = v50;
  v51 = *(v50 + 64) + 15;
  v52 = swift_task_alloc();
  *(v1 + 992) = v52;
  v53 = *(v0 + 8);
  *(v1 + 1000) = *v0;
  *(v1 + 1008) = v53;
  v54 = *(v0 + 96);
  *(v1 + 320) = *(v0 + 80);
  *(v1 + 336) = v54;
  *(v1 + 352) = *(v0 + 112);
  v55 = *(v0 + 32);
  *(v1 + 256) = *(v0 + 16);
  *(v1 + 272) = v55;
  v56 = *(v0 + 64);
  *(v1 + 288) = *(v0 + 48);
  *(v1 + 304) = v56;
  *(v1 + 1016) = sub_238154F8C();
  *(v1 + 1024) = sub_238154F7C();
  v57 = *(MEMORY[0x277D549E0] + 4);
  v58 = swift_task_alloc();
  *(v1 + 1032) = v58;
  *v58 = v1;
  v58[1] = sub_2380E1BC4;

  return MEMORY[0x2821B5F98](v52);
}

uint64_t sub_2380E1BC4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 1032);
  v5 = *(*v1 + 1024);
  v6 = *(*v1 + 1016);
  v11 = *v1;
  v3[130] = v2;

  v8 = sub_238154F3C();
  v3[131] = v8;
  v3[132] = v7;
  if (v2)
  {
    v9 = sub_2380E5BE8;
  }

  else
  {
    v9 = sub_2380E1D28;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2380E1D28()
{
  if (qword_27DEEA0B0 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  *(v0 + 1064) = __swift_project_value_buffer(v1, qword_27DEEC3F0);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "Started tracking transfers", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = *(v0 + 992);
  v6 = *(v0 + 976);

  *(v0 + 392) = sub_2381533BC();
  *(v0 + 1224) = *MEMORY[0x277D54908];
  v7 = MEMORY[0x277D84F98];
  *(v0 + 1228) = *MEMORY[0x277D54910];
  *(v0 + 1096) = v7;
  *(v0 + 1088) = v7;
  *(v0 + 1080) = v7;
  *(v0 + 1072) = v7;
  v8 = *(v0 + 1016);
  *(v0 + 1104) = sub_238154F7C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5E0, &qword_23815C2D0);
  v10 = sub_2380711D4(&qword_27DEEC5E8, &qword_27DEEC5E0, &qword_23815C2D0);
  v11 = *(MEMORY[0x277D856D0] + 4);
  v12 = swift_task_alloc();
  *(v0 + 1112) = v12;
  *v12 = v0;
  v12[1] = sub_2380E1F30;
  v13 = *(v0 + 968);

  return MEMORY[0x282200308](v13, v9, v10);
}

uint64_t sub_2380E1F30()
{
  v2 = *v1;
  v3 = *(*v1 + 1112);
  v4 = *v1;
  *(*v1 + 1120) = v0;

  v5 = *(v2 + 1104);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_238154F3C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2380E3CCC;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_238154F3C();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2380E20C8;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_2380E20C8()
{
  v1 = v0[138];

  v2 = v0[132];
  v3 = v0[131];

  return MEMORY[0x2822009F8](sub_2380E2130, v3, v2);
}

uint64_t sub_2380E2130()
{
  v2 = v0[121];
  v3 = v0[119];
  v4 = v0[118];
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = v0[137];
    v6 = v0[136];
    v7 = v0[128];
    v8 = v0[49];

    v9 = v0[133];
    v10 = sub_23815291C();
    v11 = sub_2381550FC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_238060000, v10, v11, "Stopping tracking transfers", v12, 2u);
      MEMORY[0x2383EA8A0](v12, -1, -1);
    }

    v13 = v0[124];
    v14 = v0[123];
    v15 = v0[122];
    v16 = v0[121];
    v17 = v0[120];
    v18 = v0[117];
    v19 = v0[116];
    v20 = v0[113];
    v241 = v0[112];
    v242 = v0[109];
    v243 = v0[108];
    v244 = v0[107];
    v245 = v0[106];
    v246 = v0[105];
    v247 = v0[102];
    v248 = v0[101];
    v249 = v0[100];
    v250 = v0[99];
    v251 = v0[98];
    v252 = v0[95];
    v253 = v0[94];
    v254 = v0[93];
    v255 = v0[90];
    v257 = v0[87];
    v259 = v0[84];
    v261 = v0[81];
    v264 = v0[80];
    v269 = v0[77];
    v275 = v0[76];
    v282 = v0[75];
    v289 = v0[74];
    v297 = v0[73];
    v304 = v0[72];
    v311 = v0[69];
    v320 = v0[68];
    v321 = v0[65];
    v324 = v0[62];
    v327 = v0[61];
    v330 = v0[60];
    v334 = v0[59];

    (*(v14 + 8))(v13, v15);

    v21 = v0[1];

    return v21();
  }

  v322 = (v0 + 125);
  v23 = v0[125];
  (*(v3 + 32))(v0[120], v2, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v0[51] = sub_2380D3060(v0[52]);
  v24 = sub_23815372C();
  v25 = 0;
  v0[141] = v24;
  v26 = *(v24 + 32);
  *(v0 + 1232) = v26;
  if (1 << v26 < 64)
  {
    v27 = ~(-1 << (1 << v26));
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v24 + 64);
  v328 = v0[136];
  v29 = v0[135];
LABEL_11:
  v325 = v29;
  v0[142] = v29;
  if (!v28)
  {
    goto LABEL_13;
  }

  do
  {
    v30 = v0[141];
LABEL_17:
    v0[144] = v25;
    v0[143] = v28;
    v32 = v0[126];
    v33 = v0[117];
    v34 = v0[116];
    v35 = v0[115];
    v36 = v0[114];
    v37 = v0[113];
    v38 = v0[112];
    v39 = v0;
    v40 = v0[111];
    v335 = v39[110];
    (*(v35 + 16))(v33, *(v30 + 56) + *(v35 + 72) * (__clz(__rbit64(v28)) | (v25 << 6)), v36);
    v41 = *(v35 + 32);
    v1 = v35 + 32;
    v41(v34, v33, v36);
    v42 = v37;
    sub_23815316C();
    sub_2381530AC();
    LOBYTE(v37) = sub_23815311C();
    v43 = *(v40 + 8);
    v43(v38, v335);
    v43(v42, v335);
    if (v37)
    {
      v44 = v39[116];
      v45 = v39[109];
      v46 = v39[108];
      v47 = v39[103];
      v48 = v39[102];
      sub_23815303C();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
      (*(*(v49 - 8) + 56))(v46, 0, 1, v49);
      v50 = v46 + *(v47 + 20);
      sub_23815301C();
      sub_2380ED27C(v46, v45);
      sub_2380F198C(v46, type metadata accessor for DecorationIdentifier);
      sub_238071284(v45, &qword_27DEEC5C8, &qword_23815C2B8);
      sub_23815303C();
      v51 = v328;
      v1 = v39;
      if (!*(v328 + 16))
      {
        goto LABEL_84;
      }

      v52 = sub_2380E7070(v39[102]);
      if ((v53 & 1) == 0)
      {
        goto LABEL_84;
      }

      v54 = v39[102];
      v55 = v39[96];
      v56 = (*(v328 + 56) + 24 * v52);
      v305 = *v56;
      v312 = v56[1];
      v57 = v56[2];
      v58 = *(v39[97] + 8);

      v331 = v57;

      v336 = v58;
      v58(v54, v55);
      v59 = *(v1 + 928);
      v60 = *(v1 + 664);
      v61 = *(v1 + 656);
      v62 = *(v1 + 648);
      v63 = *(v1 + 632);
      v64 = *(v1 + 624);
      v65 = *(v1 + 616);
      sub_23815306C();
      sub_23815304C();
      v66 = *(v63 + 8);
      v66(v62, v64);
      v67 = (*(v60 + 48))(v65, 1, v61);
      v0 = v1;
      v68 = *(v1 + 928);
      if (v67 == 1)
      {
        v290 = *(v1 + 920);
        v298 = *(v1 + 912);
        v69 = *(v1 + 808);
        v270 = *(v1 + 768);
        v70 = *(v1 + 640);
        v283 = *(v1 + 624);
        v71 = *(v1 + 576);
        v72 = *(v1 + 568);
        v276 = *(v1 + 560);
        v265 = *(v1 + 776) + 8;
        v262 = *v322;
        sub_238071284(*(v1 + 616), &qword_27DEEC470, &qword_23815BEE0);
        v73 = *(v1 + 320);
        v74 = *(v1 + 336);
        v75 = *(v1 + 288);
        *(v1 + 80) = *(v1 + 304);
        *(v1 + 96) = v73;
        *(v1 + 112) = v74;
        v76 = *(v1 + 256);
        v77 = *(v1 + 272);
        *(v1 + 16) = v262;
        *(v1 + 32) = v76;
        *(v1 + 128) = *(v1 + 352);
        *(v1 + 48) = v77;
        *(v1 + 64) = v75;
        sub_23815306C();
        sub_23815301C();
        sub_23815303C();
        v1 = v312;
        sub_2380D78D0(v70, v331, v71, v305, v312, v69);

        v336(v69, v270);
        (*(v72 + 8))(v71, v276);
        v66(v70, v283);
        (*(v290 + 8))(v68, v298);
      }

      else
      {
        v78 = *(v1 + 800);
        v79 = *(v1 + 672);
        v80 = *(v1 + 664);
        v81 = *(v1 + 656);
        v82 = *(v1 + 616);

        (*(v80 + 32))(v79, v82, v81);
        sub_23815303C();
        v83 = sub_2380E7070(v78);
        if (v84)
        {
          v85 = v83;
          v51 = v325;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v1 + 424) = v325;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_2380EAA74();
            v51 = *(v1 + 424);
          }

          v87 = *(v1 + 800);
          v88 = *(v1 + 768);
          v336(*(v51 + 48) + *(*(v1 + 776) + 72) * v85, v88);
          v89 = *(v51 + 56) + 24 * v85;
          v90 = *(v89 + 8);
          v91 = *(v89 + 16);

          sub_2380E9134(v85, v51);
          v336(v87, v88);
          v0 = v1;
          v325 = v51;
        }

        else
        {
          v92 = *(v1 + 776) + 8;
          v336(*(v1 + 800), *(v1 + 768));
          v0 = v1;
        }

        v93 = v0[116];
        v94 = v0[99];
        v95 = v0[84];
        v96 = v0[76];
        v97 = v0[75];
        v98 = v0[73];
        sub_23815308C();
        sub_23815301C();
        sub_23815303C();
        sub_2380712E4(v96, v97, &qword_27DEEC478, &qword_23815BEE8);
        v99 = sub_23815307C();
        v100 = *(v99 - 8);
        v328 = v51;
        if ((*(v100 + 48))(v97, 1, v99) != 1)
        {
          v111 = *(v0 + 306);
          v112 = v0[74];
          sub_2380712E4(v0[75], v112, &qword_27DEEC478, &qword_23815BEE8);
          v113 = (*(v100 + 88))(v112, v99);
          if (v113 == v111)
          {
            v314 = v0[116];
            v267 = v0[115];
            v307 = v0[114];
            v258 = v0[99];
            v272 = v0[96];
            v114 = v0[83];
            v285 = v0[82];
            v292 = v0[84];
            v278 = v0[76];
            v300 = v0[75];
            v115 = v0[74];
            v116 = v0[73];
            v117 = v0[71];
            v118 = v0[65];
            v120 = v0[63];
            v119 = v0[64];
            v260 = v0[97] + 8;
            v263 = v0[70];
            v256 = *v322;
            (*(v100 + 96))(v115, v99);
            (*(v119 + 32))(v118, v115, v120);
            *(v0 + 17) = v256;
            v121 = *(v0 + 18);
            *(v0 + 25) = *(v0 + 19);
            v122 = *(v0 + 21);
            *(v0 + 27) = *(v0 + 20);
            *(v0 + 29) = v122;
            v123 = *(v0 + 17);
            *(v0 + 19) = *(v0 + 16);
            *(v0 + 21) = v123;
            v0[31] = v0[44];
            *(v0 + 23) = v121;
            sub_2380DC65C(v118, v331, v116, v258);

            (*(v119 + 8))(v118, v120);
            v336(v258, v272);
            v124 = *(v117 + 8);
            v1 = v117 + 8;
            v124(v116, v263);
            sub_238071284(v278, &qword_27DEEC478, &qword_23815BEE8);
            (*(v114 + 8))(v292, v285);
            (*(v267 + 8))(v314, v307);
            sub_238071284(v300, &qword_27DEEC478, &qword_23815BEE8);
            goto LABEL_31;
          }

          if (v113 == *(v0 + 307))
          {
            v125 = v0[125];
            v301 = v0[115];
            v308 = v0[114];
            v315 = v0[116];
            v126 = v0[99];
            v127 = *(v1 + 776);
            v128 = *(v1 + 768);
            v286 = *(v1 + 672);
            v129 = *(v1 + 664);
            v273 = *(v1 + 608);
            v279 = *(v1 + 656);
            v293 = *(v1 + 600);
            v130 = *(v1 + 584);
            v131 = *(v1 + 568);
            v268 = *(v1 + 560);
            v132 = *(v1 + 552);
            v133 = *(v1 + 528);
            v134 = *(v1 + 464);
            swift_storeEnumTagMultiPayload();
            (*(v127 + 16))(v132 + *(v133 + 24), v126, v128);
            v0 = v1;
            *(v132 + *(v133 + 20)) = v331;
            sub_2380A9944(v130, v132);
            sub_2380F198C(v132, type metadata accessor for _DDNodeDecoration);
            v336(v126, v128);
            (*(v131 + 8))(v130, v268);
            sub_238071284(v273, &qword_27DEEC478, &qword_23815BEE8);
            (*(v129 + 8))(v286, v279);
            (*(v301 + 8))(v315, v308);
            sub_238071284(v293, &qword_27DEEC478, &qword_23815BEE8);
            goto LABEL_31;
          }

          (*(v100 + 8))(v0[74], v99);
        }

        v266 = v0[125];
        v101 = v0[115];
        v306 = v0[114];
        v313 = v0[116];
        v102 = v0[99];
        v103 = *(v1 + 776);
        v104 = *(v1 + 768);
        v291 = *(v1 + 672);
        v299 = v101;
        v105 = *(v1 + 664);
        v284 = *(v1 + 656);
        v106 = *(v1 + 584);
        v107 = *(v1 + 568);
        v271 = *(v1 + 560);
        v277 = *(v1 + 608);
        v108 = *(v1 + 552);
        v109 = *(v1 + 528);
        v110 = *(v1 + 464);
        sub_238071284(*(v1 + 600), &qword_27DEEC478, &qword_23815BEE8);
        strcpy(v108, "unknown error");
        *(v108 + 14) = -4864;
        swift_storeEnumTagMultiPayload();
        (*(v103 + 16))(v108 + *(v109 + 24), v102, v104);
        v0 = v1;
        *(v108 + *(v109 + 20)) = v331;
        v1 = v106;
        sub_2380A9944(v106, v108);
        sub_2380F198C(v108, type metadata accessor for _DDNodeDecoration);
        v336(v102, v104);
        (*(v107 + 8))(v106, v271);
        sub_238071284(v277, &qword_27DEEC478, &qword_23815BEE8);
        (*(v105 + 8))(v291, v284);
        (*(v299 + 8))(v313, v306);
      }

LABEL_31:
      v25 = v0[144];
      v28 = (v0[143] - 1) & v0[143];
      v29 = v325;
      goto LABEL_11;
    }

    v28 &= v28 - 1;
    (*(v39[115] + 8))(v39[116], v39[114]);
    v0 = v39;
  }

  while (v28);
  while (1)
  {
LABEL_13:
    v31 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    v30 = v0[141];
    if (v31 >= (((1 << *(v0 + 1232)) + 63) >> 6))
    {
      break;
    }

    v28 = *(v30 + 8 * v31 + 64);
    ++v25;
    if (v28)
    {
      v25 = v31;
      goto LABEL_17;
    }
  }

  v1 = 0;
  v135 = v0[51];
  v138 = *(v135 + 56);
  v137 = v135 + 56;
  v136 = v138;
  v139 = -1;
  v337 = v0[51];
  v140 = -1 << *(v337 + 32);
  if (-v140 < 64)
  {
    v139 = ~(-1 << -v140);
  }

  v141 = v139 & v136;
  v142 = (63 - v140) >> 6;
  v323 = v0[137];
  v143 = v0[134];
  while (2)
  {
    v144 = v1;
    v332 = v143;
    if (!v141)
    {
      goto LABEL_42;
    }

LABEL_41:
    v1 = v144;
LABEL_45:
    v145 = v0[107];
    v146 = v0[106];
    v147 = v0[62];
    v148 = __clz(__rbit64(v141));
    v141 &= v141 - 1;
    v149 = *(v0[104] + 72);
    sub_2380F1924(*(v337 + 48) + v149 * (v148 | (v1 << 6)), v145, type metadata accessor for DecorationIdentifier);
    sub_2380F19EC(v145, v146, type metadata accessor for DecorationIdentifier);
    sub_2380F1924(v146, v147, type metadata accessor for TransferIDStatus);
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
    v151 = *(v150 - 8);
    if ((*(v151 + 48))(v147, 1, v150) != 1)
    {
      v316 = v0[125];
      (*(v0[97] + 32))(v0[98], v0[62], v0[96]);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_238152A8C();

      if (*(v0[54] + 16))
      {
        v153 = v0[54];
        v154 = sub_2380E6DE4(v0[106]);
        if (v155)
        {
          sub_2380F1924(*(v153 + 56) + *(v0[67] + 72) * v154, v0[61], type metadata accessor for _DDNodeDecoration);
          v317 = 0;
        }

        else
        {
          v317 = 1;
        }
      }

      else
      {
        v317 = 1;
      }

      v156 = v0;
      v157 = v0[67];
      v158 = v156[66];
      v309 = v156;
      v159 = v156[61];

      v160 = v317;
      v318 = *(v157 + 56);
      v318(v159, v160, 1, v158);
      if ((*(v157 + 48))(v159, 1, v158))
      {
        v0 = v309;
        sub_238071284(v309[61], &qword_27DEEBA48, &qword_23815BF00);
LABEL_63:
        v303 = v0[106];
        v310 = v0[125];
        v166 = v0[105];
        v280 = v0[103];
        v167 = v0[71];
        v287 = *(v280 + 20);
        v295 = v0[70];
        (*(v0[97] + 16))(v166, v0[98], v0[96]);
        (*(v151 + 56))(v166, 0, 1, v150);
        (*(v167 + 16))(v166 + *(v280 + 20), v303 + v287, v295);
        swift_getKeyPath();
        swift_getKeyPath();
        v296 = sub_238152A7C();
        v169 = v168;
        v170 = *v168;
        v171 = sub_2380E6DE4(v166);
        if (v172)
        {
          v173 = v171;
          v174 = *v169;
          v175 = swift_isUniquelyReferenced_nonNull_native();
          v0[57] = *v169;
          *v169 = 0x8000000000000000;
          if (!v175)
          {
            sub_2380E9728();
          }

          v288 = v0[105];
          v274 = v0[67];
          v281 = v0[60];
          v176 = v0[57];
          sub_2380F198C(*(v176 + 48) + v173 * v149, type metadata accessor for DecorationIdentifier);
          sub_2380F19EC(*(v176 + 56) + *(v274 + 72) * v173, v281, type metadata accessor for _DDNodeDecoration);
          sub_2380E8278(v173, v176);
          sub_2380F198C(v288, type metadata accessor for DecorationIdentifier);
          v177 = *v169;
          *v169 = v176;

          v178 = 0;
        }

        else
        {
          sub_2380F198C(v0[105], type metadata accessor for DecorationIdentifier);
          v178 = 1;
        }

        v179 = v0[60];
        v180 = v0[67] + 56;
        v318(v179, v178, 1, v0[66]);
        sub_238071284(v179, &qword_27DEEBA48, &qword_23815BF00);
        v296();

        goto LABEL_69;
      }

      v161 = v309[68];
      v162 = v309[61];
      v294 = v309[59];
      v302 = v309[58];
      sub_2380F1924(v162, v161, type metadata accessor for _DDNodeDecoration);
      sub_238071284(v162, &qword_27DEEBA48, &qword_23815BF00);
      sub_2380F1924(v161, v294, type metadata accessor for _DDNodeDecoration.Kind);
      sub_2380F198C(v161, type metadata accessor for _DDNodeDecoration);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v0 = v309;
      if (EnumCaseMultiPayload > 2)
      {
        if ((EnumCaseMultiPayload - 5) < 3)
        {
          goto LABEL_69;
        }

        if (EnumCaseMultiPayload == 3)
        {
          v164 = v309[59];
          v165 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
LABEL_62:
          sub_2380F198C(v164, v165);
          goto LABEL_63;
        }
      }

      else if (EnumCaseMultiPayload == 1)
      {
        sub_2380F198C(v309[59], type metadata accessor for _DDNodeDecoration.Kind);
LABEL_69:
        v181 = sub_2380E7070(v0[98]);
        if (v182)
        {
          v183 = v181;
          v143 = v332;
          v184 = swift_isUniquelyReferenced_nonNull_native();
          v0[56] = v332;
          if (!v184)
          {
            sub_2380EA7F4();
            v143 = v0[56];
          }

          (*(v0[97] + 8))(*(v143 + 48) + *(v0[97] + 72) * v183, v0[96]);
          v185 = *(*(v143 + 56) + 8 * v183);

          sub_2380E8E14(v183, v143);
          v323 = v143;
        }

        else
        {
          v143 = v332;
        }

        v186 = sub_2380E7070(v0[98]);
        if (v187)
        {
          v333 = v143;
          v189 = v186;
          v190 = v325;
          v191 = swift_isUniquelyReferenced_nonNull_native();
          v0[55] = v325;
          if (!v191)
          {
            sub_2380EAA74();
            v190 = v0[55];
          }

          v326 = v0[98];
          v329 = v0[106];
          v192 = v0;
          v193 = v0[97];
          v319 = v192[96];
          v194 = *(v193 + 8);
          v194(*(v190 + 48) + *(v193 + 72) * v189);
          v195 = *(v190 + 56) + 24 * v189;
          v196 = *(v195 + 8);
          v197 = *(v195 + 16);

          sub_2380E9134(v189, v190);
          (v194)(v326, v319);
          v0 = v192;
          sub_2380F198C(v329, type metadata accessor for DecorationIdentifier);
          v325 = v190;
          v328 = v190;
          v143 = v333;
        }

        else
        {
          v188 = v0[106];
          (*(v0[97] + 8))(v0[98], v0[96]);
          sub_2380F198C(v188, type metadata accessor for DecorationIdentifier);
        }

        continue;
      }

      v164 = v309[59];
      v165 = type metadata accessor for _DDNodeDecoration.Kind;
      goto LABEL_62;
    }

    break;
  }

  v152 = v0[62];
  sub_2380F198C(v0[106], type metadata accessor for DecorationIdentifier);
  sub_2380F198C(v152, type metadata accessor for TransferIDStatus);
  v144 = v1;
  v143 = v332;
  if (v141)
  {
    goto LABEL_41;
  }

LABEL_42:
  while (1)
  {
    v1 = v144 + 1;
    if (__OFADD__(v144, 1))
    {
      break;
    }

    if (v1 >= v142)
    {
      (*(v0[119] + 8))(v0[120], v0[118]);

      v0[137] = v323;
      v0[136] = v328;
      v0[135] = v325;
      v0[134] = v143;
      v198 = v0[127];
      v0[138] = sub_238154F7C();
      v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5E0, &qword_23815C2D0);
      v200 = sub_2380711D4(&qword_27DEEC5E8, &qword_27DEEC5E0, &qword_23815C2D0);
      v201 = *(MEMORY[0x277D856D0] + 4);
      v202 = swift_task_alloc();
      v0[139] = v202;
      *v202 = v0;
      v202[1] = sub_2380E1F30;
      v203 = v0[121];

      return MEMORY[0x282200308](v203, v199, v200);
    }

    v141 = *(v137 + 8 * v1);
    ++v144;
    if (v141)
    {
      goto LABEL_45;
    }
  }

LABEL_83:
  __break(1u);
LABEL_84:
  v204 = *(v1 + 928);
  v205 = *(v1 + 816);
  v206 = *(v1 + 776);
  v207 = *(v1 + 768);
  v208 = *(v1 + 760);
  v209 = *(v1 + 736);
  v210 = *(v1 + 728);
  v211 = *(v206 + 8);
  *(v1 + 1160) = v211;
  *(v1 + 1168) = (v206 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v211(v205, v207);
  sub_23815302C();
  v212 = sub_238152FFC();
  v213 = *(v209 + 8);
  *(v1 + 1176) = v213;
  *(v1 + 1184) = (v209 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v213(v208, v210);
  if (v212)
  {
    if (*(v212 + 16))
    {
      v214 = *(v1 + 720);
      v215 = *(v1 + 712);
      v216 = *(v1 + 704);
      v217 = *(v1 + 696);
      v218 = *(v1 + 688);
      v219 = *(v1 + 680);
      (*(v215 + 16))(v214, v212 + ((*(v215 + 80) + 32) & ~*(v215 + 80)), v216);
      sub_23815333C();
      (*(v215 + 8))(v214, v216);
      v220 = sub_23815268C();
      v222 = v221;
      (*(v218 + 8))(v217, v219);
      v223 = *(v212 + 16);

      if (v223 == 1)
      {
        sub_23807CB28(73);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
        v224 = swift_allocObject();
        *(v224 + 16) = xmmword_238157F20;
        *(v224 + 56) = MEMORY[0x277D837D0];
        *(v224 + 64) = sub_2380F1440();
        *(v224 + 32) = v220;
        *(v224 + 40) = v222;
      }

      else
      {
        sub_23807CB28(74);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
        v233 = swift_allocObject();
        *(v233 + 16) = xmmword_238158810;
        *(v233 + 56) = MEMORY[0x277D837D0];
        v234 = sub_2380F1440();
        *(v233 + 32) = v220;
        *(v233 + 40) = v222;
        v235 = MEMORY[0x277D83C10];
        *(v233 + 96) = MEMORY[0x277D83B88];
        *(v233 + 104) = v235;
        *(v233 + 64) = v234;
        *(v233 + 72) = v223 - 1;
      }

      v231 = sub_238154C9C();
      v232 = v236;

      goto LABEL_97;
    }
  }

  v225 = *(v1 + 928);
  v226 = *(v1 + 752);
  v227 = *(v1 + 728);
  sub_23815302C();
  v228 = sub_238152FCC();
  v230 = v229;
  v213(v226, v227);
  if (v230)
  {
    v231 = v228;
  }

  else
  {
    v231 = 0;
  }

  if (v230)
  {
    v232 = v230;
  }

  else
  {
    v232 = 0xE000000000000000;
  }

LABEL_97:
  *(v1 + 1200) = v231;
  *(v1 + 1192) = v232;
  v237 = *(v1 + 928);
  v238 = *(v1 + 744);

  sub_23815302C();
  v239 = swift_task_alloc();
  *(v1 + 1208) = v239;
  *v239 = v1;
  v239[1] = sub_2380E4194;
  v240 = *(v1 + 744);

  return sub_2380F0D2C(v240);
}

uint64_t sub_2380E3CCC()
{
  v1 = v0[138];
  v2 = v0[137];
  v0[50] = v0[140];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  swift_willThrowTypedImpl();

  v3 = v0[132];
  v4 = v0[131];

  return MEMORY[0x2822009F8](sub_2380E3D74, v4, v3);
}

uint64_t sub_2380E3D74()
{
  v1 = v0[140];
  v2 = v0[136];
  v3 = v0[133];
  v4 = v0[128];

  v5 = v0[49];

  v6 = v1;
  v7 = sub_23815291C();
  v8 = sub_2381550DC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[140];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_238060000, v7, v8, "Error while tracking transfers %@", v11, 0xCu);
    sub_238071284(v12, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v12, -1, -1);
    MEMORY[0x2383EA8A0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[133];
  v16 = sub_23815291C();
  v17 = sub_2381550FC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_238060000, v16, v17, "Stopping tracking transfers", v18, 2u);
    MEMORY[0x2383EA8A0](v18, -1, -1);
  }

  v19 = v0[124];
  v20 = v0[123];
  v21 = v0[122];
  v22 = v0[121];
  v23 = v0[120];
  v24 = v0[117];
  v25 = v0[116];
  v26 = v0[113];
  v29 = v0[112];
  v30 = v0[109];
  v31 = v0[108];
  v32 = v0[107];
  v33 = v0[106];
  v34 = v0[105];
  v35 = v0[102];
  v36 = v0[101];
  v37 = v0[100];
  v38 = v0[99];
  v39 = v0[98];
  v40 = v0[95];
  v41 = v0[94];
  v42 = v0[93];
  v43 = v0[90];
  v44 = v0[87];
  v45 = v0[84];
  v46 = v0[81];
  v47 = v0[80];
  v48 = v0[77];
  v49 = v0[76];
  v50 = v0[75];
  v51 = v0[74];
  v52 = v0[73];
  v53 = v0[72];
  v54 = v0[69];
  v55 = v0[68];
  v56 = v0[65];
  v57 = v0[62];
  v58 = v0[61];
  v59 = v0[60];
  v60 = v0[59];

  (*(v20 + 8))(v19, v21);

  v27 = v0[1];

  return v27();
}

uint64_t sub_2380E4194(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1208);
  v4 = *(*v1 + 1184);
  v5 = *(*v1 + 1176);
  v6 = *(*v1 + 744);
  v7 = *(*v1 + 728);
  v11 = *v1;
  *(*v1 + 1216) = a1;

  v5(v6, v7);
  v8 = *(v2 + 1056);
  v9 = *(v2 + 1048);

  return MEMORY[0x2822009F8](sub_2380E4328, v9, v8);
}

uint64_t sub_2380E4328()
{
  v1 = v0[152];
  v2 = v0[150];
  v3 = v0[149];
  v4 = v0[146];
  v5 = v0[145];
  v6 = v0[142];
  v7 = v0[116];
  v8 = v0[101];
  v9 = v0[96];

  sub_23815303C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2380C83D0(v2, v3, v1, v8, isUniquelyReferenced_nonNull_native);
  v5(v8, v9);
  v271 = (v0 + 125);
  v11 = v6;
  v12 = v0[150];
  v276 = v0[149];
  v282 = v0[152];
  v285 = v0[145];
  v288 = v0;
LABEL_2:
  v13 = v0[116];
  v14 = v288[83];
  v15 = v288[82];
  v16 = v288[81];
  v17 = v288[79];
  v18 = v288[78];
  v19 = v288[77];
  sub_23815306C();
  sub_23815304C();
  v20 = *(v17 + 8);
  v20(v16, v18);
  v21 = (*(v14 + 48))(v19, 1, v15);
  v22 = v288;
  v23 = v288[116];
  if (v21 == 1)
  {
    v281 = v11;
    v258 = v288[115];
    v264 = v288[114];
    v24 = v288[101];
    v25 = v288[80];
    v252 = v288[78];
    v26 = v288[72];
    v27 = v288[71];
    v240 = v288[96];
    v246 = v288[70];
    v236 = v288[97] + 8;
    v234 = *v271;
    sub_238071284(v288[77], &qword_27DEEC470, &qword_23815BEE0);
    v28 = *(v288 + 20);
    v29 = *(v288 + 21);
    v30 = *(v288 + 18);
    *(v288 + 5) = *(v288 + 19);
    *(v288 + 6) = v28;
    *(v288 + 7) = v29;
    v31 = *(v288 + 16);
    v32 = *(v288 + 17);
    *(v288 + 1) = v234;
    *(v288 + 2) = v31;
    v288[16] = v288[44];
    *(v288 + 3) = v32;
    *(v288 + 4) = v30;
    sub_23815306C();
    sub_23815301C();
    sub_23815303C();
    sub_2380D78D0(v25, v282, v26, v12, v276, v24);

    v285(v24, v240);
    (*(v27 + 8))(v26, v246);
    v20(v25, v252);
    (*(v258 + 8))(v23, v264);
  }

  else
  {
    v33 = v288[100];
    v34 = v288[84];
    v35 = v288[83];
    v36 = v288[82];
    v37 = v288[77];

    (*(v35 + 32))(v34, v37, v36);
    sub_23815303C();
    v38 = sub_2380E7070(v33);
    if (v39)
    {
      v40 = v38;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v288[53] = v11;
      if (!v41)
      {
        sub_2380EAA74();
        v11 = v288[53];
      }

      v42 = v288[100];
      v43 = v288[96];
      v285(*(v11 + 48) + *(v288[97] + 72) * v40, v43);
      v44 = *(v11 + 56) + 24 * v40;
      v45 = *(v44 + 8);
      v46 = *(v44 + 16);

      sub_2380E9134(v40, v11);
      v285(v42, v43);
      v22 = v288;
    }

    else
    {
      v47 = v288[97] + 8;
      v285(v288[100], v288[96]);
      v22 = v288;
    }

    v48 = v22[116];
    v49 = v22[99];
    v50 = v22[84];
    v51 = v22[76];
    v52 = v22[75];
    v53 = v22[73];
    sub_23815308C();
    sub_23815301C();
    sub_23815303C();
    sub_2380712E4(v51, v52, &qword_27DEEC478, &qword_23815BEE8);
    v54 = sub_23815307C();
    v55 = *(v54 - 8);
    v281 = v11;
    if ((*(v55 + 48))(v52, 1, v54) != 1)
    {
      v81 = *(v22 + 306);
      v82 = v22[74];
      sub_2380712E4(v22[75], v82, &qword_27DEEC478, &qword_23815BEE8);
      v83 = (*(v55 + 88))(v82, v54);
      if (v83 == v81)
      {
        v278 = v22[116];
        v235 = v22[115];
        v231 = v22[99];
        v254 = v22[84];
        v84 = v22[83];
        v248 = v22[82];
        v238 = v22[96];
        v242 = v22[76];
        v260 = v22[75];
        v266 = v22[114];
        v85 = v22[74];
        v86 = v22[73];
        v87 = v22[71];
        v88 = v22[65];
        v90 = v22[63];
        v89 = v22[64];
        v232 = v22[97] + 8;
        v233 = v22[70];
        v230 = *v271;
        (*(v55 + 96))(v85, v54);
        (*(v89 + 32))(v88, v85, v90);
        *(v22 + 17) = v230;
        v91 = *(v22 + 18);
        *(v22 + 25) = *(v22 + 19);
        v92 = *(v22 + 21);
        *(v22 + 27) = *(v22 + 20);
        *(v22 + 29) = v92;
        v93 = *(v22 + 17);
        *(v22 + 19) = *(v22 + 16);
        *(v22 + 21) = v93;
        v22[31] = v22[44];
        *(v22 + 23) = v91;
        sub_2380DC65C(v88, v282, v86, v231);

        (*(v89 + 8))(v88, v90);
        v285(v231, v238);
        (*(v87 + 8))(v86, v233);
        sub_238071284(v242, &qword_27DEEC478, &qword_23815BEE8);
        (*(v84 + 8))(v254, v248);
        (*(v235 + 8))(v278, v266);
        sub_238071284(v260, &qword_27DEEC478, &qword_23815BEE8);
        goto LABEL_11;
      }

      if (v83 == *(v22 + 307))
      {
        v94 = v22[125];
        v279 = v22[116];
        v95 = v22[115];
        v267 = v22[114];
        v96 = v22[99];
        v97 = v288[97];
        v98 = v288[96];
        v255 = v288[84];
        v99 = v288[83];
        v249 = v288[82];
        v243 = v288[76];
        v261 = v288[75];
        v100 = v288[73];
        v101 = v288[71];
        v239 = v288[70];
        v102 = v288[69];
        v103 = v288[66];
        v104 = v288[58];
        swift_storeEnumTagMultiPayload();
        (*(v97 + 16))(v102 + *(v103 + 24), v96, v98);
        v22 = v288;
        *(v102 + *(v103 + 20)) = v282;
        sub_2380A9944(v100, v102);
        sub_2380F198C(v102, type metadata accessor for _DDNodeDecoration);
        v285(v96, v98);
        (*(v101 + 8))(v100, v239);
        sub_238071284(v243, &qword_27DEEC478, &qword_23815BEE8);
        (*(v99 + 8))(v255, v249);
        (*(v95 + 8))(v279, v267);
        sub_238071284(v261, &qword_27DEEC478, &qword_23815BEE8);
        goto LABEL_11;
      }

      (*(v55 + 8))(v22[74], v54);
    }

    v56 = v22[125];
    v277 = v22[116];
    v259 = v22[115];
    v265 = v22[114];
    v57 = v22[99];
    v58 = v288[97];
    v59 = v288[96];
    v253 = v288[84];
    v60 = v288[83];
    v247 = v288[82];
    v241 = v288[76];
    v61 = v288[73];
    v62 = v288[71];
    v237 = v288[70];
    v63 = v288[69];
    v64 = v288[66];
    v65 = v288[58];
    sub_238071284(v288[75], &qword_27DEEC478, &qword_23815BEE8);
    strcpy(v63, "unknown error");
    *(v63 + 14) = -4864;
    swift_storeEnumTagMultiPayload();
    (*(v58 + 16))(v63 + *(v64 + 24), v57, v59);
    v22 = v288;
    *(v63 + *(v64 + 20)) = v282;
    sub_2380A9944(v61, v63);
    sub_2380F198C(v63, type metadata accessor for _DDNodeDecoration);
    v285(v57, v59);
    (*(v62 + 8))(v61, v237);
    sub_238071284(v241, &qword_27DEEC478, &qword_23815BEE8);
    (*(v60 + 8))(v253, v247);
    (*(v259 + 8))(v277, v265);
  }

LABEL_11:
  v66 = v22[144];
  v67 = (v22[143] - 1) & v22[143];
  v22[142] = v281;
  if (!v67)
  {
    goto LABEL_13;
  }

  do
  {
    v68 = v22[141];
LABEL_17:
    v22[144] = v66;
    v22[143] = v67;
    v70 = v22[126];
    v71 = v22[117];
    v72 = v22[116];
    v73 = v22[115];
    v74 = v22[114];
    v75 = v22[113];
    v76 = v22[112];
    v77 = v22;
    v78 = v22[111];
    v286 = v77[110];
    (*(v73 + 16))(v71, *(v68 + 56) + *(v73 + 72) * (__clz(__rbit64(v67)) | (v66 << 6)), v74);
    (*(v73 + 32))(v72, v71, v74);
    sub_23815316C();
    sub_2381530AC();
    v79 = v75;
    LOBYTE(v75) = sub_23815311C();
    v80 = *(v78 + 8);
    v80(v76, v286);
    v80(v79, v286);
    if (v75)
    {
      v105 = v77[116];
      v106 = v77[109];
      v107 = v77[108];
      v108 = v77[103];
      v109 = v77[102];
      sub_23815303C();
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
      (*(*(v110 - 8) + 56))(v107, 0, 1, v110);
      v111 = v107 + *(v108 + 20);
      sub_23815301C();
      sub_2380ED27C(v107, v106);
      sub_2380F198C(v107, type metadata accessor for DecorationIdentifier);
      sub_238071284(v106, &qword_27DEEC5C8, &qword_23815C2B8);
      sub_23815303C();
      v11 = v281;
      v22 = v77;
      if (!*(v281 + 16))
      {
        goto LABEL_75;
      }

      v112 = sub_2380E7070(v77[102]);
      if ((v113 & 1) == 0)
      {
        goto LABEL_75;
      }

      v114 = v77[102];
      v115 = v288[96];
      v116 = (*(v281 + 56) + 24 * v112);
      v12 = *v116;
      v117 = v116[2];
      v118 = *(v288[97] + 8);
      v276 = v116[1];

      v282 = v117;

      v285 = v118;
      v118(v114, v115);
      v0 = v288;
      goto LABEL_2;
    }

    v67 &= v67 - 1;
    (*(v77[115] + 8))(v77[116], v77[114]);
    v22 = v77;
  }

  while (v67);
  while (1)
  {
LABEL_13:
    v69 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    v68 = v22[141];
    if (v69 >= (((1 << *(v22 + 1232)) + 63) >> 6))
    {
      break;
    }

    v67 = *(v68 + 8 * v69 + 64);
    ++v66;
    if (v67)
    {
      v66 = v69;
      goto LABEL_17;
    }
  }

  v119 = 0;
  v120 = v22[51];
  v123 = *(v120 + 56);
  v122 = v120 + 56;
  v121 = v123;
  v124 = -1;
  v287 = v22[51];
  v125 = -1 << *(v287 + 32);
  if (-v125 < 64)
  {
    v124 = ~(-1 << -v125);
  }

  v126 = v124 & v121;
  v127 = (63 - v125) >> 6;
  v280 = v22[137];
  v128 = v22[134];
LABEL_31:
  v129 = v119;
  v283 = v128;
  if (!v126)
  {
    goto LABEL_33;
  }

  do
  {
    v119 = v129;
LABEL_36:
    v130 = v22[107];
    v131 = v22[106];
    v132 = v22[62];
    v133 = __clz(__rbit64(v126));
    v126 &= v126 - 1;
    v134 = *(v22[104] + 72);
    sub_2380F1924(*(v287 + 48) + v134 * (v133 | (v119 << 6)), v130, type metadata accessor for DecorationIdentifier);
    sub_2380F19EC(v130, v131, type metadata accessor for DecorationIdentifier);
    sub_2380F1924(v131, v132, type metadata accessor for TransferIDStatus);
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
    v136 = *(v135 - 8);
    if ((*(v136 + 48))(v132, 1, v135) != 1)
    {
      v272 = v22[125];
      (*(v22[97] + 32))(v22[98], v22[62], v22[96]);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_238152A8C();

      if (*(v22[54] + 16))
      {
        v138 = v22[54];
        v139 = sub_2380E6DE4(v22[106]);
        if (v140)
        {
          sub_2380F1924(*(v138 + 56) + *(v22[67] + 72) * v139, v22[61], type metadata accessor for _DDNodeDecoration);
          v273 = 0;
        }

        else
        {
          v273 = 1;
        }
      }

      else
      {
        v273 = 1;
      }

      v141 = v22;
      v142 = v22[67];
      v143 = v141[66];
      v144 = v141[61];

      v145 = v273;
      v274 = *(v142 + 56);
      v274(v144, v145, 1, v143);
      if ((*(v142 + 48))(v144, 1, v143))
      {
        v22 = v288;
        sub_238071284(v288[61], &qword_27DEEBA48, &qword_23815BF00);
LABEL_54:
        v263 = v22[106];
        v269 = v22[125];
        v151 = v22[105];
        v152 = v22[71];
        v256 = v22[70];
        v244 = v22[103];
        v250 = *(v244 + 20);
        (*(v22[97] + 16))(v151, v22[98], v22[96]);
        (*(v136 + 56))(v151, 0, 1, v135);
        (*(v152 + 16))(v151 + *(v244 + 20), v263 + v250, v256);
        swift_getKeyPath();
        swift_getKeyPath();
        v257 = sub_238152A7C();
        v154 = v153;
        v155 = *v153;
        v156 = sub_2380E6DE4(v151);
        if (v157)
        {
          v158 = v156;
          v159 = *v154;
          v160 = swift_isUniquelyReferenced_nonNull_native();
          v22[57] = *v154;
          *v154 = 0x8000000000000000;
          if (!v160)
          {
            sub_2380E9728();
          }

          v251 = v22[105];
          v161 = v288[67];
          v245 = v288[60];
          v162 = v288[57];
          sub_2380F198C(*(v162 + 48) + v158 * v134, type metadata accessor for DecorationIdentifier);
          v163 = *(v161 + 72);
          v22 = v288;
          sub_2380F19EC(*(v162 + 56) + v163 * v158, v245, type metadata accessor for _DDNodeDecoration);
          sub_2380E8278(v158, v162);
          sub_2380F198C(v251, type metadata accessor for DecorationIdentifier);
          v164 = *v154;
          *v154 = v162;

          v165 = 0;
        }

        else
        {
          sub_2380F198C(v22[105], type metadata accessor for DecorationIdentifier);
          v165 = 1;
        }

        v166 = v22[60];
        v167 = v22[67] + 56;
        v274(v166, v165, 1, v22[66]);
        sub_238071284(v166, &qword_27DEEBA48, &qword_23815BF00);
        v257();

        goto LABEL_60;
      }

      v146 = v288[68];
      v147 = v288[61];
      v262 = v288[59];
      v268 = v288[58];
      sub_2380F1924(v147, v146, type metadata accessor for _DDNodeDecoration);
      sub_238071284(v147, &qword_27DEEBA48, &qword_23815BF00);
      sub_2380F1924(v146, v262, type metadata accessor for _DDNodeDecoration.Kind);
      sub_2380F198C(v146, type metadata accessor for _DDNodeDecoration);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v22 = v288;
      if (EnumCaseMultiPayload > 2)
      {
        if ((EnumCaseMultiPayload - 5) < 3)
        {
          goto LABEL_60;
        }

        if (EnumCaseMultiPayload == 3)
        {
          v149 = v288[59];
          v150 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
LABEL_53:
          sub_2380F198C(v149, v150);
          goto LABEL_54;
        }
      }

      else if (EnumCaseMultiPayload == 1)
      {
        sub_2380F198C(v288[59], type metadata accessor for _DDNodeDecoration.Kind);
LABEL_60:
        v168 = sub_2380E7070(v22[98]);
        if (v169)
        {
          v170 = v168;
          v128 = v283;
          v171 = swift_isUniquelyReferenced_nonNull_native();
          v22[56] = v283;
          if (!v171)
          {
            sub_2380EA7F4();
            v128 = v22[56];
          }

          (*(v22[97] + 8))(*(v128 + 48) + *(v22[97] + 72) * v170, v22[96]);
          v172 = *(*(v128 + 56) + 8 * v170);

          sub_2380E8E14(v170, v128);
          v280 = v128;
        }

        else
        {
          v128 = v283;
        }

        v173 = sub_2380E7070(v22[98]);
        if (v174)
        {
          v284 = v128;
          v176 = v173;
          v177 = v281;
          v178 = swift_isUniquelyReferenced_nonNull_native();
          v22[55] = v281;
          if (!v178)
          {
            sub_2380EAA74();
            v177 = v22[55];
          }

          v275 = v22[106];
          v270 = v22[98];
          v179 = v288[97];
          v180 = v288[96];
          v181 = *(v179 + 8);
          v181(*(v177 + 48) + *(v179 + 72) * v176, v180);
          v182 = *(v177 + 56) + 24 * v176;
          v183 = *(v182 + 8);
          v184 = *(v182 + 16);

          v281 = v177;
          sub_2380E9134(v176, v177);
          v181(v270, v180);
          v22 = v288;
          sub_2380F198C(v275, type metadata accessor for DecorationIdentifier);
          v128 = v284;
        }

        else
        {
          v175 = v22[106];
          (*(v22[97] + 8))(v22[98], v22[96]);
          sub_2380F198C(v175, type metadata accessor for DecorationIdentifier);
        }

        goto LABEL_31;
      }

      v149 = v288[59];
      v150 = type metadata accessor for _DDNodeDecoration.Kind;
      goto LABEL_53;
    }

    v137 = v22[62];
    sub_2380F198C(v22[106], type metadata accessor for DecorationIdentifier);
    sub_2380F198C(v137, type metadata accessor for TransferIDStatus);
    v129 = v119;
    v128 = v283;
  }

  while (v126);
LABEL_33:
  while (1)
  {
    v119 = v129 + 1;
    if (__OFADD__(v129, 1))
    {
      break;
    }

    if (v119 >= v127)
    {
      (*(v22[119] + 8))(v22[120], v22[118]);

      v22[137] = v280;
      v22[136] = v281;
      v22[135] = v281;
      v22[134] = v128;
      v185 = v22[127];
      v22[138] = sub_238154F7C();
      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5E0, &qword_23815C2D0);
      v187 = sub_2380711D4(&qword_27DEEC5E8, &qword_27DEEC5E0, &qword_23815C2D0);
      v188 = *(MEMORY[0x277D856D0] + 4);
      v189 = swift_task_alloc();
      v22[139] = v189;
      *v189 = v22;
      v189[1] = sub_2380E1F30;
      v190 = v22[121];

      return MEMORY[0x282200308](v190, v186, v187);
    }

    v126 = *(v122 + 8 * v119);
    ++v129;
    if (v126)
    {
      goto LABEL_36;
    }
  }

LABEL_74:
  __break(1u);
LABEL_75:
  v191 = v22[116];
  v192 = v22[102];
  v193 = v22[97];
  v194 = v22[96];
  v195 = v22[95];
  v196 = v22[92];
  v197 = v22[91];
  v198 = *(v193 + 8);
  v22[145] = v198;
  v22[146] = (v193 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v198(v192, v194);
  sub_23815302C();
  v199 = sub_238152FFC();
  v200 = *(v196 + 8);
  v22[147] = v200;
  v22[148] = (v196 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v200(v195, v197);
  if (!v199)
  {
    goto LABEL_80;
  }

  if (!*(v199 + 16))
  {

LABEL_80:
    v213 = v22[116];
    v214 = v22[94];
    v215 = v22[91];
    sub_23815302C();
    v216 = sub_238152FCC();
    v218 = v217;
    v200(v214, v215);
    if (v218)
    {
      v219 = v216;
    }

    else
    {
      v219 = 0;
    }

    if (v218)
    {
      v220 = v218;
    }

    else
    {
      v220 = 0xE000000000000000;
    }

    goto LABEL_88;
  }

  v201 = v22[90];
  v202 = v22;
  v203 = v22[89];
  v204 = v202[88];
  v205 = v202[87];
  v206 = v202[86];
  v207 = v202[85];
  (*(v203 + 16))(v201, v199 + ((*(v203 + 80) + 32) & ~*(v203 + 80)), v204);
  sub_23815333C();
  (*(v203 + 8))(v201, v204);
  v208 = sub_23815268C();
  v210 = v209;
  (*(v206 + 8))(v205, v207);
  v211 = *(v199 + 16);

  if (v211 == 1)
  {
    sub_23807CB28(73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
    v212 = swift_allocObject();
    *(v212 + 16) = xmmword_238157F20;
    *(v212 + 56) = MEMORY[0x277D837D0];
    *(v212 + 64) = sub_2380F1440();
    *(v212 + 32) = v208;
    *(v212 + 40) = v210;
  }

  else
  {
    sub_23807CB28(74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
    v221 = swift_allocObject();
    *(v221 + 16) = xmmword_238158810;
    *(v221 + 56) = MEMORY[0x277D837D0];
    v222 = sub_2380F1440();
    *(v221 + 32) = v208;
    *(v221 + 40) = v210;
    v223 = MEMORY[0x277D83C10];
    *(v221 + 96) = MEMORY[0x277D83B88];
    *(v221 + 104) = v223;
    *(v221 + 64) = v222;
    *(v221 + 72) = v211 - 1;
  }

  v219 = sub_238154C9C();
  v220 = v224;

  v22 = v288;
LABEL_88:
  v22[150] = v219;
  v22[149] = v220;
  v225 = v22[116];
  v226 = v22[93];

  sub_23815302C();
  v227 = swift_task_alloc();
  v22[151] = v227;
  *v227 = v22;
  v227[1] = sub_2380E4194;
  v228 = v22[93];

  return sub_2380F0D2C(v228);
}

uint64_t sub_2380E5BE8()
{
  v1 = v0[128];
  v2 = v0[124];
  v3 = v0[121];
  v4 = v0[120];
  v5 = v0[117];
  v6 = v0[116];
  v7 = v0[113];
  v8 = v0[112];
  v9 = v0[109];
  v10 = v0[108];
  v14 = v0[107];
  v15 = v0[106];
  v16 = v0[105];
  v17 = v0[102];
  v18 = v0[101];
  v19 = v0[100];
  v20 = v0[99];
  v21 = v0[98];
  v22 = v0[95];
  v23 = v0[94];
  v24 = v0[93];
  v25 = v0[90];
  v26 = v0[87];
  v27 = v0[84];
  v28 = v0[81];
  v29 = v0[80];
  v30 = v0[77];
  v31 = v0[76];
  v32 = v0[75];
  v33 = v0[74];
  v34 = v0[73];
  v35 = v0[72];
  v36 = v0[69];
  v37 = v0[68];
  v38 = v0[65];
  v39 = v0[62];
  v40 = v0[61];
  v41 = v0[60];
  v42 = v0[59];

  v11 = v0[1];
  v12 = v0[130];

  return v11();
}

uint64_t sub_2380E5E68@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[3];
  v30 = v1[4];
  v31 = v3;
  v5 = v1[5];
  v32 = v1[6];
  v6 = v1[1];
  v26 = *v1;
  v27 = v6;
  v7 = v1[3];
  v9 = *v1;
  v8 = v1[1];
  v28 = v1[2];
  v29 = v7;
  v10 = v1[6];
  v24[5] = v5;
  v24[6] = v10;
  v24[0] = v9;
  v24[1] = v8;
  v24[2] = v28;
  v33 = *(v1 + 14);
  v25 = *(v1 + 14);
  v24[3] = v4;
  v24[4] = v30;
  sub_2380D45B8(a1);
  v11 = swift_allocObject();
  v12 = v31;
  *(v11 + 80) = v30;
  *(v11 + 96) = v12;
  *(v11 + 112) = v32;
  *(v11 + 128) = v33;
  v13 = v27;
  *(v11 + 16) = v26;
  *(v11 + 32) = v13;
  v14 = v29;
  *(v11 + 48) = v28;
  *(v11 + 64) = v14;
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC450, &qword_23815BE98) + 36));
  v16 = *(sub_23815396C() + 20);
  sub_2380EEFF8(&v26, v23);
  sub_238154F9C();
  *v15 = &unk_23815C160;
  v15[1] = v11;
  v17 = swift_allocObject();
  v18 = v31;
  *(v17 + 80) = v30;
  *(v17 + 96) = v18;
  *(v17 + 112) = v32;
  *(v17 + 128) = v33;
  v19 = v27;
  *(v17 + 16) = v26;
  *(v17 + 32) = v19;
  v20 = v29;
  *(v17 + 48) = v28;
  *(v17 + 64) = v20;
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC458, &unk_23815BEA0) + 36));
  *v21 = 0;
  v21[1] = 0;
  v21[2] = sub_2380F1B08;
  v21[3] = v17;
  return sub_2380EEFF8(&v26, v24);
}

uint64_t sub_2380E6084()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - v3;
  v5 = sub_238152F3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238152F1C();
  v10 = sub_238152EEC();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v12 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_imageViewFrame];
    result = CGRectIsEmpty(*&v0[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_imageViewFrame]);
    if ((result & 1) == 0)
    {
      if (qword_27DEEA0B0 != -1)
      {
        swift_once();
      }

      v13 = sub_23815293C();
      __swift_project_value_buffer(v13, qword_27DEEC3F0);
      v14 = v0;
      v15 = sub_23815291C();
      v16 = sub_2381550FC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = [objc_opt_self() valueWithRect_];
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&dword_238060000, v15, v16, "Updating presenter with animationRect %@", v17, 0xCu);
        sub_238071284(v18, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v18, -1, -1);
        MEMORY[0x2383EA8A0](v17, -1, -1);
      }

      v20 = sub_238154FBC();
      (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v14;
      v22 = v14;
      sub_2380D2D4C(0, 0, v4, &unk_23815C130, v21);
    }
  }

  return result;
}

uint64_t sub_2380E63B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2380E63D0, 0, 0);
}

uint64_t sub_2380E63D0()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_airDropClient);
  v3 = (v1 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_1E333BE9CDEDD9CAE6FF0E7324E8D41C37PreviewImageFrameReportingCoordinator_imageViewFrame);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(MEMORY[0x277D549C0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *v9 = v0;
  v9[1] = sub_2380E64A4;
  v10.n128_u64[0] = v4;
  v11.n128_u64[0] = v5;
  v12.n128_u64[0] = v6;
  v13.n128_u64[0] = v7;

  return MEMORY[0x2821B5F78](v10, v11, v12, v13);
}

uint64_t sub_2380E64A4()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {

    v3 = sub_2380F1B18;
  }

  else
  {
    v3 = sub_2380E65C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_2380E6618()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreviewImageFrameReportingCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2380E6660@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_2380E66E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

uint64_t sub_2380E6764(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238085D80(a1, a2);
  }

  return a1;
}

uint64_t sub_2380E6778(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2380E6870;

  return v7(a1);
}

uint64_t sub_2380E6870()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2380E6968(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_23815568C();
  if (a1[1])
  {
    v4 = *a1;
    MEMORY[0x2383E9CD0](1);
    sub_238154C5C();
  }

  else
  {
    MEMORY[0x2383E9CD0](0);
  }

  MEMORY[0x2383E9CD0](a1[2]);
  MEMORY[0x2383E9CD0](a1[3]);
  MEMORY[0x2383E9CD0](a1[4]);
  v5 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v6 = *(v5 + 32);
  sub_238153A2C();
  sub_2380F15B0(&qword_27DEEC028, MEMORY[0x277CDFAA0]);
  sub_238154C4C();
  v7 = *(v5 + 36);
  sub_2381537EC();
  sub_2380F15B0(&qword_27DEEC030, MEMORY[0x277CDF3E0]);
  sub_238154C4C();
  v8 = sub_2381556BC();

  return sub_2380E7144(a1, v8);
}

unint64_t sub_2380E6AE8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2381527EC();
  v5 = MEMORY[0x277CC95F0];
  sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0]);
  v6 = sub_238154C3C();
  return sub_2380E7AEC(a1, v6, MEMORY[0x277CC95F0], &qword_27DEEBA30, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_2380E6BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_23815568C();
  MEMORY[0x2383E9CD0](a1);
  MEMORY[0x2383E9CD0](a2);
  MEMORY[0x2383E9CD0](a3);
  v8 = sub_2381556BC();

  return sub_2380E7350(a1, a2, a3, v8);
}

unint64_t sub_2380E6C58(unint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23815568C();
  MEMORY[0x2383E9CE0](a1 >> 14);
  MEMORY[0x2383E9CE0](a2 >> 14);
  v6 = sub_2381556BC();

  return sub_2380E73D4(a1, a2, v6);
}

unint64_t sub_2380E6CD8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23815568C();
  sub_238154C5C();
  v6 = sub_2381556BC();

  return sub_2380E745C(a1, a2, v6);
}

unint64_t sub_2380E6D50(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_238154CCC();
  sub_23815568C();
  sub_238154C5C();
  v4 = sub_2381556BC();

  return sub_2380E7514(a1, v4);
}

unint64_t sub_2380E6DE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2381536AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TransferIDStatus(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 40);
  sub_23815568C();
  sub_2380F1924(a1, v12, type metadata accessor for TransferIDStatus);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    MEMORY[0x2383E9CD0](1);
    sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
    sub_238154C4C();
    (*(v5 + 8))(v8, v4);
  }

  v15 = *(type metadata accessor for DecorationIdentifier(0) + 20);
  sub_2381527EC();
  sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0]);
  sub_238154C4C();
  v16 = sub_2381556BC();
  return sub_2380E7618(a1, v16);
}

unint64_t sub_2380E7070(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2381536AC();
  v5 = MEMORY[0x277D54BD0];
  sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
  v6 = sub_238154C3C();
  return sub_2380E7AEC(a1, v6, MEMORY[0x277D54BD0], &qword_27DEEC600, v5, MEMORY[0x277D54BE0]);
}

unint64_t sub_2380E7144(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a1;
    v14 = a1[1];
    v15 = *(v7 + 72);
    do
    {
      sub_2380F1924(*(v2 + 48) + v15 * v11, v9, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
      v16 = v9[1];
      if (v16)
      {
        if (!v14)
        {
          goto LABEL_4;
        }

        v17 = *v9 == v13 && v16 == v14;
        if (!v17 && (sub_2381555CC() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v14)
      {
        goto LABEL_4;
      }

      if (v9[2] == a1[2] && v9[3] == a1[3] && v9[4] == a1[4])
      {
        v18 = *(v5 + 32);
        if (sub_238153A1C())
        {
          v19 = *(v5 + 36);
          if (sub_2381537DC())
          {
            sub_2380F198C(v9, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
            return v11;
          }
        }
      }

LABEL_4:
      sub_2380F198C(v9, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_2380E7350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = (*(v4 + 48) + 24 * result);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      if (v10 == a1 && v11 == a2 && v12 == a3)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2380E73D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v9 = *v8 ^ a1;
      v10 = v8[1] ^ a2;
      if (v9 < 0x4000 && v10 < 0x4000)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2380E745C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2381555CC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2380E7514(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_238154CCC();
      v9 = v8;
      if (v7 == sub_238154CCC() && v9 == v10)
      {
        break;
      }

      v12 = sub_2381555CC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2380E7618(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v36 = sub_2381536AC();
  v4 = *(v36 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v36);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TransferIDStatus(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB998, &qword_23815A550);
  v11 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v13 = &v32 - v12;
  v35 = type metadata accessor for DecorationIdentifier(0);
  v14 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v2;
  v18 = -1 << *(v2 + 32);
  v19 = a2 & ~v18;
  v38 = v2 + 64;
  if ((*(v2 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v37 = ~v18;
    v33 = (v4 + 32);
    v20 = *(v15 + 72);
    v21 = (v4 + 8);
    while (1)
    {
      sub_2380F1924(*(v40 + 48) + v20 * v19, v17, type metadata accessor for DecorationIdentifier);
      v24 = *(v39 + 48);
      sub_2380F1924(v17, v13, type metadata accessor for TransferIDStatus);
      sub_2380F1924(v41, &v13[v24], type metadata accessor for TransferIDStatus);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
      v26 = *(*(v25 - 8) + 48);
      if (v26(v13, 1, v25) == 1)
      {
        break;
      }

      sub_2380F1924(v13, v10, type metadata accessor for TransferIDStatus);
      if (v26(&v13[v24], 1, v25) == 1)
      {
        sub_2380F198C(v17, type metadata accessor for DecorationIdentifier);
        (*v21)(v10, v36);
LABEL_10:
        sub_238071284(v13, &qword_27DEEB998, &qword_23815A550);
        goto LABEL_4;
      }

      v27 = v34;
      v28 = v36;
      (*v33)(v34, &v13[v24], v36);
      v29 = sub_2381527AC();
      v30 = *v21;
      (*v21)(v27, v28);
      v30(v10, v28);
      if (v29)
      {
LABEL_3:
        sub_2380F198C(v13, type metadata accessor for TransferIDStatus);
        v22 = *(v35 + 20);
        v23 = sub_2381527AC();
        sub_2380F198C(v17, type metadata accessor for DecorationIdentifier);
        if (v23)
        {
          return v19;
        }

        goto LABEL_4;
      }

      sub_2380F198C(v17, type metadata accessor for DecorationIdentifier);
      sub_2380F198C(v13, type metadata accessor for TransferIDStatus);
LABEL_4:
      v19 = (v19 + 1) & v37;
      if (((*(v38 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return v19;
      }
    }

    if (v26(&v13[v24], 1, v25) == 1)
    {
      goto LABEL_3;
    }

    sub_2380F198C(v17, type metadata accessor for DecorationIdentifier);
    goto LABEL_10;
  }

  return v19;
}

unint64_t sub_2380E7AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_2380F15B0(v24, v25);
      v20 = sub_238154C7C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_2380E7C8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_2380E6CD8(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2380E95BC();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_2380E80C8(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_2380E7D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2380E6DE4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2380E9728();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for DecorationIdentifier(0);
    sub_2380F198C(v12 + *(*(v13 - 8) + 72) * v8, type metadata accessor for DecorationIdentifier);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for _DDNodeDecoration(0);
    v22 = *(v15 - 8);
    sub_2380F19EC(v14 + *(v22 + 72) * v8, a2, type metadata accessor for _DDNodeDecoration);
    sub_2380E8278(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for _DDNodeDecoration(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2380E7EF8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_2380E6AE8(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v31 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2380E9CD4(a3, a4, a5);
      v19 = v31;
    }

    v20 = *(v19 + 48);
    v21 = sub_2381527EC();
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v22 = *(v19 + 56);
    v23 = a2(0);
    v30 = *(v23 - 8);
    (*(v30 + 32))(a6, v22 + *(v30 + 72) * v16, v23);
    sub_2380E8AC4(v16, v19, a3);
    *v11 = v19;
    v24 = *(v30 + 56);
    v25 = a6;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = a2(0);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a6;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

uint64_t sub_2380E80C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23815539C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23815568C();

      sub_238154C5C();
      v13 = sub_2381556BC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2380E8278(int64_t a1, uint64_t a2)
{
  v47 = sub_2381536AC();
  v4 = *(v47 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TransferIDStatus(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DecorationIdentifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2 + 64;
  v18 = -1 << *(a2 + 32);
  v19 = (a1 + 1) & ~v18;
  if ((*(a2 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    v48 = (sub_23815539C() + 1) & ~v18;
    v49 = v20;
    v21 = *(v12 + 72);
    v43 = (v4 + 8);
    v44 = (v4 + 32);
    v45 = v16;
    v50 = v21;
    do
    {
      v22 = v21 * v19;
      sub_2380F1924(*(a2 + 48) + v21 * v19, v16, type metadata accessor for DecorationIdentifier);
      v23 = *(a2 + 40);
      sub_23815568C();
      sub_2380F1924(v16, v10, type metadata accessor for TransferIDStatus);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
      if ((*(*(v24 - 8) + 48))(v10, 1, v24) == 1)
      {
        MEMORY[0x2383E9CD0](0);
      }

      else
      {
        v25 = a1;
        v26 = a2;
        v27 = v17;
        v28 = v11;
        v29 = v46;
        v30 = v47;
        (*v44)(v46, v10, v47);
        MEMORY[0x2383E9CD0](1);
        sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
        sub_238154C4C();
        v31 = v29;
        v11 = v28;
        v17 = v27;
        a2 = v26;
        a1 = v25;
        v16 = v45;
        (*v43)(v31, v30);
      }

      v32 = *(v11 + 20);
      sub_2381527EC();
      sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0]);
      sub_238154C4C();
      v33 = sub_2381556BC();
      result = sub_2380F198C(v16, type metadata accessor for DecorationIdentifier);
      v34 = v49;
      v35 = v33 & v49;
      if (a1 >= v48)
      {
        v21 = v50;
        if (v35 < v48)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v21 = v50;
        if (v35 >= v48)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v35)
      {
LABEL_13:
        if (v21 * a1 < v22 || *(a2 + 48) + v21 * a1 >= (*(a2 + 48) + v22 + v21))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v21 * a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v36 = *(a2 + 56);
        v37 = *(*(type metadata accessor for _DDNodeDecoration(0) - 8) + 72);
        v38 = v37 * a1;
        result = v36 + v37 * a1;
        if (v37 * a1 < (v37 * v19) || result >= v36 + v37 * v19 + v37)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          a1 = v19;
          v21 = v50;
        }

        else
        {
          a1 = v19;
          v21 = v50;
          if (v38 != v37 * v19)
          {
            result = swift_arrayInitWithTakeBackToFront();
            a1 = v19;
          }
        }
      }

LABEL_4:
      v19 = (v19 + 1) & v34;
    }

    while (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  *(v17 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v39 = *(a2 + 16);
  v40 = __OFSUB__(v39, 1);
  v41 = v39 - 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v41;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2380E87A4(int64_t a1, uint64_t a2)
{
  v43 = sub_2381527EC();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_23815539C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0]);
      v26 = sub_238154C3C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + a1);
          v33 = (v31 + v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_2380E8AC4(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_2381527EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_23815539C();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0]);
      v25 = sub_238154C3C();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2380E8E14(int64_t a1, uint64_t a2)
{
  v43 = sub_2381536AC();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_23815539C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
      v26 = sub_238154C3C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_2380E9134(int64_t a1, uint64_t a2)
{
  v44 = sub_2381536AC();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v45 = v7;
    v13 = sub_23815539C();
    v14 = v44;
    v7 = v45;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v41 = (v13 + 1) & v12;
    v42 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    v40 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v43;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v42(v43, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
      v26 = sub_238154C3C();
      result = (*v39)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v45;
          v30 = *(v45 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v45;
            v18 = v19;
            v15 = v22;
            v9 = v40;
          }

          else
          {
            v9 = v40;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v45;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 24 * a1;
          v33 = (v31 + 24 * v11);
          if (a1 != v11 || v32 >= v33 + 24)
          {
            v34 = *v33;
            *(v32 + 16) = *(v33 + 2);
            *v32 = v34;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v40;
      v18 = v19;
      v7 = v45;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v7 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v37;
    ++*(v7 + 36);
  }

  return result;
}

void *sub_2380E9458()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC100, &qword_23815B648);
  v2 = *v0;
  v3 = sub_23815550C();
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
        v18 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + v17) = v18;
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

id sub_2380E95BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0A0, &unk_23815B5E0);
  v2 = *v0;
  v3 = sub_23815550C();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_2380E9728()
{
  v1 = v0;
  v2 = type metadata accessor for _DDNodeDecoration(0);
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DecorationIdentifier(0);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC0B0, &unk_23815B5F0);
  v10 = *v0;
  v11 = sub_23815550C();
  v12 = v11;
  if (*(v10 + 16))
  {
    v29 = v1;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v14 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = *(v10 + 64);
    v19 = -1;
    if (v17 < 64)
    {
      v19 = ~(-1 << v17);
    }

    v20 = v19 & v18;
    v21 = (v17 + 63) >> 6;
    if ((v19 & v18) != 0)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_14:
        v25 = v22 | (v16 << 6);
        v26 = *(v30 + 72) * v25;
        sub_2380F1924(*(v10 + 48) + v26, v9, type metadata accessor for DecorationIdentifier);
        v27 = *(v31 + 72) * v25;
        sub_2380F1924(*(v10 + 56) + v27, v5, type metadata accessor for _DDNodeDecoration);
        sub_2380F19EC(v9, *(v12 + 48) + v26, type metadata accessor for DecorationIdentifier);
        result = sub_2380F19EC(v5, *(v12 + 56) + v27, type metadata accessor for _DDNodeDecoration);
      }

      while (v20);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v24 = *(v14 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v12;
  }

  return result;
}

char *sub_2380E9A3C()
{
  v1 = v0;
  v32 = sub_2381527EC();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0A8, &qword_23815C170);
  v4 = *v0;
  v5 = sub_23815550C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

char *sub_2380E9CD4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v48 = a1(0);
  v51 = *(v48 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v37 - v8;
  v46 = sub_2381527EC();
  v50 = *(v46 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_23815550C();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v6;
    v38 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v49 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = v50 + 16;
    v43 = v22;
    v40 = v50 + 32;
    v41 = v51 + 16;
    v39 = v51 + 32;
    v44 = v11;
    v24 = v45;
    v23 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v52 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v50;
        v30 = *(v50 + 72) * v28;
        (*(v50 + 16))(v24, *(v11 + 48) + v30, v23);
        v31 = v51;
        v32 = *(v51 + 72) * v28;
        v33 = v47;
        v34 = v48;
        (*(v51 + 16))(v47, *(v11 + 56) + v32, v48);
        v35 = v49;
        (*(v29 + 32))(*(v49 + 48) + v30, v24, v23);
        v36 = *(v35 + 56);
        v11 = v44;
        result = (*(v31 + 32))(v36 + v32, v33, v34);
        v22 = v43;
        v21 = v52;
      }

      while (v52);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v37;
        v13 = v49;
        goto LABEL_18;
      }

      v27 = *(v38 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v52 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v13;
  }

  return result;
}

void *sub_2380EA02C()
{
  v1 = v0;
  v2 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC038, &qword_23815C100);
  v6 = *v0;
  v7 = sub_23815550C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_2380F1924(*(v6 + 48) + v22, v5, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_2380F19EC(v5, *(v8 + 48) + v22, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_2380EA26C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC010, &qword_23815B520);
  v2 = *v0;
  v3 = sub_23815550C();
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(v18 + 16);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 24 * v17;
        *v21 = *v18;
        *(v21 + 16) = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

char *sub_2380EA3E0()
{
  v1 = v0;
  v2 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC020, &qword_23815B580);
  v5 = *v0;
  v6 = sub_23815550C();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v35 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v36;
        v22 = *(v37 + 72) * v20;
        sub_2380F1924(*(v5 + 48) + v22, v36, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        v23 = *(v5 + 56);
        v24 = 32 * v20;
        v25 = v23 + 32 * v20;
        v26 = *v25;
        v27 = *(v25 + 8);
        v28 = *(v25 + 16);
        v29 = *(v25 + 24);
        v30 = v38;
        sub_2380F19EC(v21, *(v38 + 48) + v22, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
        v31 = *(v30 + 56) + v24;
        v5 = v35;
        *v31 = v26;
        *(v31 + 8) = v27;
        *(v31 + 16) = v28;
        *(v31 + 24) = v29;
        result = sub_2380B3F10(v26, v27, v28, v29);
        v15 = v39;
      }

      while (v39);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v33;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v34 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_2380EA66C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC008, &qword_23815B508);
  v2 = *v0;
  v3 = sub_23815550C();
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
        v17 = v14 | (v8 << 6);
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *(v19 + 16);
        v17 *= 16;
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v4 + 48) + v18;
        *v24 = *v19;
        *(v24 + 16) = v20;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;
        result = sub_2380B3E18(v22, v23);
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

char *sub_2380EA7F4()
{
  v1 = v0;
  v34 = sub_2381536AC();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5F8, &unk_23815C2E8);
  v4 = *v0;
  v5 = sub_23815550C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

char *sub_2380EAA74()
{
  v1 = v0;
  v2 = sub_2381536AC();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0C8, &qword_23815B600);
  v6 = *v0;
  v7 = sub_23815550C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v42 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = v41 + 32;
    v37 = v41 + 16;
    v38 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v44 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v23 = v40;
        v22 = v41;
        v24 = *(v41 + 72) * v21;
        v25 = v39;
        (*(v41 + 16))(v39, *(v6 + 48) + v24, v40);
        v26 = *(v6 + 56);
        v27 = 24 * v21;
        v28 = (v26 + 24 * v21);
        v29 = v28[1];
        v43 = *v28;
        v30 = v28[2];
        v31 = v42;
        (*(v22 + 32))(*(v42 + 48) + v24, v25, v23);
        v32 = (*(v31 + 56) + v27);
        v6 = v38;
        *v32 = v43;
        v32[1] = v29;
        v32[2] = v30;

        v16 = v44;
      }

      while (v44);
    }

    v19 = v12;
    v8 = v42;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v34;
        goto LABEL_18;
      }

      v20 = *(v35 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_2380EAD18(uint64_t a1)
{
  v2 = v1;
  v50 = sub_2381536AC();
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TransferIDStatus(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DecorationIdentifier(0);
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10);
  v55 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v14 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4F8, &unk_23815C180);
  result = sub_2381553EC();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = (v13 + 56);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 56);
    v22 = (v19 + 63) >> 6;
    v48 = (v4 + 32);
    v46 = v2;
    v47 = (v4 + 8);
    v23 = result + 56;
    v24 = v53;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v29 = *(v13 + 48);
      v54 = *(v51 + 72);
      v30 = v55;
      sub_2380F19EC(v29 + v54 * (v26 | (v17 << 6)), v55, type metadata accessor for DecorationIdentifier);
      v31 = *(v16 + 40);
      sub_23815568C();
      sub_2380F1924(v30, v24, type metadata accessor for TransferIDStatus);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
      if ((*(*(v32 - 8) + 48))(v24, 1, v32) == 1)
      {
        MEMORY[0x2383E9CD0](0);
      }

      else
      {
        v33 = v13;
        v35 = v49;
        v34 = v50;
        (*v48)(v49, v53, v50);
        MEMORY[0x2383E9CD0](1);
        sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
        sub_238154C4C();
        v36 = v35;
        v13 = v33;
        v24 = v53;
        (*v47)(v36, v34);
      }

      v37 = *(v52 + 20);
      sub_2381527EC();
      sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0]);
      sub_238154C4C();
      result = sub_2381556BC();
      v38 = -1 << *(v16 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v23 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v23 + 8 * v40);
          if (v44 != -1)
          {
            v25 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v39) & ~*(v23 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      result = sub_2380F19EC(v55, *(v16 + 48) + v25 * v54, type metadata accessor for DecorationIdentifier);
      ++*(v16 + 16);
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    v45 = 1 << *(v13 + 32);
    if (v45 >= 64)
    {
      bzero(v18, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v45;
    }

    v2 = v46;
    *(v13 + 16) = 0;
  }

  *v2 = v16;
  return result;
}

uint64_t sub_2380EB278(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC640, &unk_23815C4E0);
  result = sub_2381553EC();
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
      sub_23815568C();
      sub_238154C5C();
      result = sub_2381556BC();
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

uint64_t sub_2380EB4D8(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB998, &qword_23815A550);
  v4 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v6 = &v52 - v5;
  v62 = type metadata accessor for DecorationIdentifier(0);
  v66 = *(v62 - 8);
  v7 = *(v66 + 64);
  v8 = MEMORY[0x28223BE20](v62);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v52 - v11;
  v12 = sub_2381536AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v58 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v19 = type metadata accessor for TransferIDStatus(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v68 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v52 - v23;
  v54 = v2;
  v70 = *v2;
  v25 = *(v70 + 40);
  sub_23815568C();
  v71 = a2;
  sub_2380F1924(a2, v24, type metadata accessor for TransferIDStatus);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v72 = v26;
  v59 = v27 + 48;
  v73 = v28;
  v29 = (v28)(v24, 1);
  v63 = v13;
  if (v29 == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v13 + 32))(v18, v24, v12);
    MEMORY[0x2383E9CD0](1);
    sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
    sub_238154C4C();
    (*(v13 + 8))(v18, v12);
  }

  v30 = *(v62 + 20);
  sub_2381527EC();
  sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0]);
  v60 = v30;
  sub_238154C4C();
  v31 = sub_2381556BC();
  v32 = -1 << *(v70 + 32);
  v33 = v31 & ~v32;
  v67 = v70 + 56;
  if ((*(v70 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
  {
    v64 = v12;
    v65 = ~v32;
    v66 = *(v66 + 72);
    v56 = (v63 + 4);
    ++v63;
    v57 = v6;
    v34 = v68;
    do
    {
      v37 = v66 * v33;
      sub_2380F1924(*(v70 + 48) + v66 * v33, v10, type metadata accessor for DecorationIdentifier);
      v38 = *(v69 + 48);
      sub_2380F1924(v10, v6, type metadata accessor for TransferIDStatus);
      sub_2380F1924(v71, &v6[v38], type metadata accessor for TransferIDStatus);
      if (v73(v6, 1, v72) == 1)
      {
        if (v73(&v6[v38], 1, v72) != 1)
        {
          sub_2380F198C(v10, type metadata accessor for DecorationIdentifier);
LABEL_13:
          sub_238071284(v6, &qword_27DEEB998, &qword_23815A550);
          goto LABEL_7;
        }
      }

      else
      {
        sub_2380F1924(v6, v68, type metadata accessor for TransferIDStatus);
        if (v73(&v6[v38], 1, v72) == 1)
        {
          sub_2380F198C(v10, type metadata accessor for DecorationIdentifier);
          (*v63)(v68, v64);
          goto LABEL_13;
        }

        v39 = &v6[v38];
        v40 = v10;
        v41 = v58;
        v42 = v64;
        (*v56)(v58, v39, v64);
        v43 = sub_2381527AC();
        v61 = v37;
        v44 = *v63;
        v45 = v41;
        v10 = v40;
        v6 = v57;
        (*v63)(v45, v42);
        v44(v34, v42);
        v37 = v61;
        if ((v43 & 1) == 0)
        {
          sub_2380F198C(v10, type metadata accessor for DecorationIdentifier);
          sub_2380F198C(v6, type metadata accessor for TransferIDStatus);
          goto LABEL_7;
        }
      }

      sub_2380F198C(v6, type metadata accessor for TransferIDStatus);
      v35 = &v10[*(v62 + 20)];
      v36 = sub_2381527AC();
      sub_2380F198C(v10, type metadata accessor for DecorationIdentifier);
      if (v36)
      {
        sub_2380F198C(v71, type metadata accessor for DecorationIdentifier);
        sub_2380F1924(*(v70 + 48) + v37, v55, type metadata accessor for DecorationIdentifier);
        return 0;
      }

LABEL_7:
      v33 = (v33 + 1) & v65;
    }

    while (((*(v67 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0);
  }

  v46 = v54;
  v47 = *v54;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = v71;
  v50 = v53;
  sub_2380F1924(v71, v53, type metadata accessor for DecorationIdentifier);
  v74 = *v46;
  sub_2380EBE44(v50, v33, isUniquelyReferenced_nonNull_native);
  *v46 = v74;
  sub_2380F19EC(v49, v55, type metadata accessor for DecorationIdentifier);
  return 1;
}

uint64_t sub_2380EBCF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_23815568C();
  sub_238154C5C();
  v9 = sub_2381556BC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2381555CC() & 1) != 0)
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

    sub_2380EC618(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2380EBE44(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v71 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB998, &qword_23815A550);
  v7 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v9 = &v56 - v8;
  v64 = type metadata accessor for DecorationIdentifier(0);
  v10 = *(v64 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v64);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_2381536AC();
  v14 = *(v65 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v65);
  v60 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - v18;
  v20 = type metadata accessor for TransferIDStatus(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v66 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v56 - v24;
  v26 = *(*v4 + 16);
  v27 = *(*v4 + 24);
  v56 = v4;
  v58 = v10;
  if (v27 <= v26 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v28 = v19;
      v63 = v14;
      sub_2380EAD18(v26 + 1);
    }

    else
    {
      if (v27 > v26)
      {
        sub_2380EC798();
        goto LABEL_23;
      }

      v28 = v19;
      v63 = v14;
      sub_2380ECB00(v26 + 1);
    }

    v59 = *v4;
    v29 = *(v59 + 40);
    sub_23815568C();
    sub_2380F1924(v71, v25, type metadata accessor for TransferIDStatus);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
    v31 = *(*(v30 - 8) + 48);
    if (v31(v25, 1, v30) == 1)
    {
      MEMORY[0x2383E9CD0](0);
    }

    else
    {
      v32 = v63;
      v33 = *(v63 + 32);
      v34 = v28;
      v69 = v28;
      v35 = v65;
      v33(v34, v25, v65);
      MEMORY[0x2383E9CD0](1);
      sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
      v36 = v69;
      sub_238154C4C();
      v37 = v32;
      v10 = v58;
      (*(v37 + 8))(v36, v35);
    }

    v38 = *(v64 + 20);
    sub_2381527EC();
    sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0]);
    v61 = v38;
    sub_238154C4C();
    v39 = sub_2381556BC();
    v40 = -1 << *(v59 + 32);
    a2 = v39 & ~v40;
    v69 = (v59 + 56);
    if ((*(v59 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v68 = ~v40;
      v67 = *(v10 + 72);
      v57 = (v63 + 32);
      v63 += 8;
      v41 = v66;
      v42 = v59;
      while (1)
      {
        sub_2380F1924(*(v42 + 48) + v67 * a2, v13, type metadata accessor for DecorationIdentifier);
        v45 = *(v70 + 48);
        sub_2380F1924(v13, v9, type metadata accessor for TransferIDStatus);
        sub_2380F1924(v71, &v9[v45], type metadata accessor for TransferIDStatus);
        if (v31(v9, 1, v30) == 1)
        {
          break;
        }

        sub_2380F1924(v9, v41, type metadata accessor for TransferIDStatus);
        if (v31(&v9[v45], 1, v30) == 1)
        {
          sub_2380F198C(v13, type metadata accessor for DecorationIdentifier);
          (*v63)(v41, v65);
LABEL_20:
          sub_238071284(v9, &qword_27DEEB998, &qword_23815A550);
          goto LABEL_14;
        }

        v46 = v60;
        v47 = v65;
        (*v57)(v60, &v9[v45], v65);
        v62 = sub_2381527AC();
        v48 = *v63;
        v49 = v46;
        v41 = v66;
        (*v63)(v49, v47);
        v50 = v47;
        v42 = v59;
        v48(v41, v50);
        if (v62)
        {
LABEL_13:
          sub_2380F198C(v9, type metadata accessor for TransferIDStatus);
          v43 = &v13[*(v64 + 20)];
          v44 = sub_2381527AC();
          sub_2380F198C(v13, type metadata accessor for DecorationIdentifier);
          if (v44)
          {
            goto LABEL_26;
          }

          goto LABEL_14;
        }

        sub_2380F198C(v13, type metadata accessor for DecorationIdentifier);
        sub_2380F198C(v9, type metadata accessor for TransferIDStatus);
LABEL_14:
        a2 = (a2 + 1) & v68;
        if (((*&v69[(a2 >> 3) & 0xFFFFFFFFFFFFFF8] >> a2) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      if (v31(&v9[v45], 1, v30) == 1)
      {
        goto LABEL_13;
      }

      sub_2380F198C(v13, type metadata accessor for DecorationIdentifier);
      goto LABEL_20;
    }
  }

LABEL_23:
  v51 = *v56;
  *(*v56 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2380F19EC(v71, *(v51 + 48) + *(v58 + 72) * a2, type metadata accessor for DecorationIdentifier);
  v53 = *(v51 + 16);
  v54 = __OFADD__(v53, 1);
  v55 = v53 + 1;
  if (v54)
  {
    __break(1u);
LABEL_26:
    result = sub_2381555EC();
    __break(1u);
  }

  else
  {
    *(v51 + 16) = v55;
  }

  return result;
}

uint64_t sub_2380EC618(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2380EB278(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2380EC9A4();
      goto LABEL_16;
    }

    sub_2380ED044(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_23815568C();
  sub_238154C5C();
  result = sub_2381556BC();
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

      result = sub_2381555CC();
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
  result = sub_2381555EC();
  __break(1u);
  return result;
}

void *sub_2380EC798()
{
  v1 = v0;
  v2 = type metadata accessor for DecorationIdentifier(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4F8, &unk_23815C180);
  v7 = *v0;
  v8 = sub_2381553DC();
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
        sub_2380F1924(*(v7 + 48) + v22, v6, type metadata accessor for DecorationIdentifier);
        result = sub_2380F19EC(v6, *(v9 + 48) + v22, type metadata accessor for DecorationIdentifier);
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

void *sub_2380EC9A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC640, &unk_23815C4E0);
  v2 = *v0;
  v3 = sub_2381553DC();
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

uint64_t sub_2380ECB00(uint64_t a1)
{
  v2 = v1;
  v52 = sub_2381536AC();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TransferIDStatus(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DecorationIdentifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v56 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v16 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4F8, &unk_23815C180);
  v17 = sub_2381553EC();
  result = v15;
  if (*(v15 + 16))
  {
    v47 = v2;
    v19 = 0;
    v20 = v15 + 56;
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 56);
    v24 = (v21 + 63) >> 6;
    v48 = (v4 + 8);
    v49 = (v4 + 32);
    v25 = v17 + 56;
    v50 = v12;
    v53 = result;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v55 = (v23 - 1) & v23;
LABEL_17:
      v30 = *(result + 48);
      v54 = *(v12 + 72);
      v31 = v56;
      sub_2380F1924(v30 + v54 * (v27 | (v19 << 6)), v56, type metadata accessor for DecorationIdentifier);
      v32 = *(v17 + 40);
      sub_23815568C();
      sub_2380F1924(v31, v10, type metadata accessor for TransferIDStatus);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
      if ((*(*(v33 - 8) + 48))(v10, 1, v33) == 1)
      {
        MEMORY[0x2383E9CD0](0);
      }

      else
      {
        v34 = v11;
        v35 = v10;
        v37 = v51;
        v36 = v52;
        (*v49)(v51, v35, v52);
        MEMORY[0x2383E9CD0](1);
        sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
        sub_238154C4C();
        v38 = v37;
        v10 = v35;
        v11 = v34;
        v12 = v50;
        (*v48)(v38, v36);
      }

      v39 = *(v11 + 20);
      sub_2381527EC();
      sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0]);
      sub_238154C4C();
      result = sub_2381556BC();
      v40 = -1 << *(v17 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v25 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v25 + 8 * v42);
          if (v46 != -1)
          {
            v26 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v26 = __clz(__rbit64((-1 << v41) & ~*(v25 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      sub_2380F19EC(v56, *(v17 + 48) + v26 * v54, type metadata accessor for DecorationIdentifier);
      ++*(v17 + 16);
      result = v53;
      v23 = v55;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v2 = v47;
        goto LABEL_31;
      }

      v29 = *(v20 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v55 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v17;
  }

  return result;
}

uint64_t sub_2380ED044(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC640, &unk_23815C4E0);
  result = sub_2381553EC();
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
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_23815568C();
      sub_238154C5C();
      result = sub_2381556BC();
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
      *v14 = v20;
      v14[1] = v19;
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

uint64_t sub_2380ED27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB998, &qword_23815A550);
  v4 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v6 = &v52 - v5;
  v64 = type metadata accessor for DecorationIdentifier(0);
  v55 = *(v64 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v64);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2381536AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v58 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - v15;
  v17 = type metadata accessor for TransferIDStatus(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v68 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v52 - v21;
  v53 = v2;
  v70 = *v2;
  v23 = *(v70 + 40);
  sub_23815568C();
  v71 = a1;
  sub_2380F1924(a1, v22, type metadata accessor for TransferIDStatus);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v72 = v24;
  v59 = v25 + 48;
  v73 = v26;
  v27 = (v26)(v22, 1);
  v62 = v11;
  v63 = v10;
  if (v27 == 1)
  {
    MEMORY[0x2383E9CD0](0);
  }

  else
  {
    (*(v11 + 32))(v16, v22, v10);
    MEMORY[0x2383E9CD0](1);
    sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
    sub_238154C4C();
    (*(v11 + 8))(v16, v10);
  }

  v28 = *(v64 + 20);
  sub_2381527EC();
  sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0]);
  v60 = v28;
  sub_238154C4C();
  v29 = sub_2381556BC();
  v30 = -1 << *(v70 + 32);
  v31 = v29 & ~v30;
  v67 = v70 + 56;
  if (((*(v70 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
  {
    return (*(v55 + 56))(v54, 1, 1, v64);
  }

  v65 = ~v30;
  v66 = *(v55 + 72);
  v56 = (v62 + 4);
  ++v62;
  v57 = v6;
  while (1)
  {
    v34 = v66 * v31;
    sub_2380F1924(*(v70 + 48) + v66 * v31, v9, type metadata accessor for DecorationIdentifier);
    v35 = *(v69 + 48);
    sub_2380F1924(v9, v6, type metadata accessor for TransferIDStatus);
    sub_2380F1924(v71, &v6[v35], type metadata accessor for TransferIDStatus);
    if (v73(v6, 1, v72) == 1)
    {
      if (v73(&v6[v35], 1, v72) != 1)
      {
        sub_2380F198C(v9, type metadata accessor for DecorationIdentifier);
LABEL_13:
        sub_238071284(v6, &qword_27DEEB998, &qword_23815A550);
        goto LABEL_7;
      }
    }

    else
    {
      sub_2380F1924(v6, v68, type metadata accessor for TransferIDStatus);
      if (v73(&v6[v35], 1, v72) == 1)
      {
        sub_2380F198C(v9, type metadata accessor for DecorationIdentifier);
        (*v62)(v68, v63);
        goto LABEL_13;
      }

      v36 = *v56;
      v37 = &v6[v35];
      v38 = v9;
      v61 = v34;
      v39 = v68;
      v40 = v58;
      v41 = v63;
      v36(v58, v37, v63);
      v42 = sub_2381527AC();
      v43 = *v62;
      v44 = v40;
      v9 = v38;
      v6 = v57;
      (*v62)(v44, v41);
      v45 = v39;
      v34 = v61;
      v43(v45, v41);
      if ((v42 & 1) == 0)
      {
        sub_2380F198C(v9, type metadata accessor for DecorationIdentifier);
        sub_2380F198C(v6, type metadata accessor for TransferIDStatus);
        goto LABEL_7;
      }
    }

    sub_2380F198C(v6, type metadata accessor for TransferIDStatus);
    v32 = &v9[*(v64 + 20)];
    v33 = sub_2381527AC();
    sub_2380F198C(v9, type metadata accessor for DecorationIdentifier);
    if (v33)
    {
      break;
    }

LABEL_7:
    v31 = (v31 + 1) & v65;
    if (((*(v67 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
    {
      return (*(v55 + 56))(v54, 1, 1, v64);
    }
  }

  v47 = v53;
  v48 = *v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v47;
  v74 = *v47;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2380EC798();
    v50 = v74;
  }

  v51 = v54;
  sub_2380F19EC(*(v50 + 48) + v34, v54, type metadata accessor for DecorationIdentifier);
  sub_2380EDA44(v31);
  *v47 = v74;
  return (*(v55 + 56))(v51, 0, 1, v64);
}

uint64_t sub_2380EDA44(unint64_t a1)
{
  v47 = sub_2381536AC();
  v3 = *(v47 - 8);
  v4 = *(v3 + 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TransferIDStatus(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DecorationIdentifier(0);
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v17 = *v1 + 56;
  v18 = -1 << *(*v1 + 32);
  v19 = (a1 + 1) & ~v18;
  if (((1 << v19) & *(v17 + 8 * (v19 >> 6))) != 0)
  {
    v49 = v3;
    v50 = v13;
    v20 = ~v18;

    v21 = sub_23815539C();
    if ((*(v17 + 8 * (v19 >> 6)) & (1 << v19)) != 0)
    {
      v22 = *(v50 + 72);
      v43 = (v49 + 8);
      v44 = (v49 + 32);
      v48 = (v21 + 1) & v20;
      v49 = v9;
      v45 = v15;
      v50 = v22;
      while (1)
      {
        v23 = v22 * v19;
        sub_2380F1924(*(v16 + 48) + v22 * v19, v15, type metadata accessor for DecorationIdentifier);
        v24 = *(v16 + 40);
        sub_23815568C();
        sub_2380F1924(v15, v9, type metadata accessor for TransferIDStatus);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB950, &qword_23815A128);
        if ((*(*(v25 - 8) + 48))(v9, 1, v25) == 1)
        {
          MEMORY[0x2383E9CD0](0);
        }

        else
        {
          v26 = v16;
          v27 = a1;
          v28 = v20;
          v29 = v10;
          v30 = v17;
          v31 = v46;
          v32 = v9;
          v33 = v47;
          (*v44)(v46, v32, v47);
          MEMORY[0x2383E9CD0](1);
          sub_2380F15B0(&qword_27DEEC0C0, MEMORY[0x277D54BD0]);
          sub_238154C4C();
          v34 = v31;
          v17 = v30;
          v10 = v29;
          v20 = v28;
          a1 = v27;
          v16 = v26;
          v15 = v45;
          (*v43)(v34, v33);
        }

        v35 = *(v10 + 20);
        sub_2381527EC();
        sub_2380F15B0(&qword_27DEEB990, MEMORY[0x277CC95F0]);
        sub_238154C4C();
        v36 = sub_2381556BC();
        sub_2380F198C(v15, type metadata accessor for DecorationIdentifier);
        v37 = v36 & v20;
        if (a1 >= v48)
        {
          break;
        }

        v9 = v49;
        v22 = v50;
        if (v37 < v48)
        {
          goto LABEL_14;
        }

LABEL_15:
        v38 = v22 * a1;
        if ((v22 * a1) < v23 || *(v16 + 48) + v22 * a1 >= *(v16 + 48) + v23 + v22)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v19;
          if (v38 == v23)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        v22 = v50;
        a1 = v19;
LABEL_6:
        v19 = (v19 + 1) & v20;
        if (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v9 = v49;
      v22 = v50;
      if (v37 < v48)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (a1 < v37)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_19:

    *(v17 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v17 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v39 = *(v16 + 16);
  v40 = __OFSUB__(v39, 1);
  v41 = v39 - 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v41;
    ++*(v16 + 36);
  }

  return result;
}

uint64_t sub_2380EDF54(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2380EE048;

  return v6(v2 + 32);
}

uint64_t sub_2380EE048()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_2380EE15C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC648, &unk_23815C4F0);
    v3 = sub_23815552C();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_2380E6CD8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380EE278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC100, &qword_23815B648);
  v3 = sub_23815552C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v15 = *(a1 + 48);
  result = sub_2380E6C58(v4, v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v9 = (v3[6] + 16 * result);
    *v9 = v4;
    v9[1] = v5;
    *(v3[7] + 16 * result) = v15;
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v3[2] = v12;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v13 = v8 + 2;
    v4 = *(v8 - 2);
    v5 = *(v8 - 1);
    v15 = *v8;

    result = sub_2380E6C58(v4, v5);
    v8 = v13;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2380EE3A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4C8, &qword_23815C108);
    v3 = sub_23815552C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2380712E4(v4, &v11, &unk_27DEEA870, &qword_23815C110);
      v5 = v11;
      result = sub_2380E6D50(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23807A440(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380EE4C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0A0, &unk_23815B5E0);
    v3 = sub_23815552C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2380E6CD8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380EE5CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC628, &qword_23815C480);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC0B0, &unk_23815B5F0);
    v8 = sub_23815552C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2380712E4(v10, v6, &qword_27DEEC628, &qword_23815C480);
      result = sub_2380E6DE4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for DecorationIdentifier(0);
      sub_2380F19EC(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for DecorationIdentifier);
      v17 = v8[7];
      v18 = type metadata accessor for _DDNodeDecoration(0);
      result = sub_2380F19EC(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for _DDNodeDecoration);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380EE7E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC620, &qword_23815C478);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0A8, &qword_23815C170);
    v8 = sub_23815552C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2380712E4(v10, v6, &qword_27DEEC620, &qword_23815C478);
      result = sub_2380E6AE8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2381527EC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380EE9CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC618, &qword_23815C470);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC090, &qword_23815B5D8);
    v8 = sub_23815552C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2380712E4(v10, v6, &qword_27DEEC618, &qword_23815C470);
      result = sub_2380E6AE8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2381527EC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_238152EBC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380EEBEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4D0, &qword_23815C118);
    v3 = sub_23815552C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2380712E4(v4, &v13, &qword_27DEEC4D8, &qword_23815C120);
      v5 = v13;
      v6 = v14;
      result = sub_2380E6CD8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23807A440(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380EED1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC630, &unk_23815C488);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC110, &unk_23815B6B0);
    v8 = sub_23815552C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2380712E4(v10, v6, &qword_27DEEC630, &unk_23815C488);
      result = sub_2380E6AE8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2381527EC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_23815364C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2380EEF64()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_238088780;

  return sub_2380D4DD0(v0 + 16);
}

uint64_t sub_2380EF074(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238088780;

  return sub_2380D71C0(a1, v4, v5, v1 + 32);
}

uint64_t sub_2380EF128(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238088780;

  return sub_2380D75B0(a1, v4, v5, v1 + 32);
}

uint64_t sub_2380EF1E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_2380DFD1C(a1, a2);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_2380EF27C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2380EF2C4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2380EF334()
{
  result = qword_27DEEC4B0;
  if (!qword_27DEEC4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC458, &unk_23815BEA0);
    sub_2380EF3C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC4B0);
  }

  return result;
}

unint64_t sub_2380EF3C0()
{
  result = qword_27DEEC4B8;
  if (!qword_27DEEC4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC450, &qword_23815BE98);
    sub_2380F15B0(&qword_27DEEC4C0, type metadata accessor for _DDDevicePickerView);
    sub_2380F15B0(&qword_27DEED860, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC4B8);
  }

  return result;
}

uint64_t sub_2380EF4AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_2380E63B0(a1, v4, v5, v6);
}

uint64_t sub_2380EF560(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238088780;

  return sub_2380EDF54(a1, v5);
}

uint64_t sub_2380EF618()
{
  v1 = sub_2381536AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_2381527EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);

  v10 = *(v0 + 24);

  v11 = *(v0 + 32);

  v12 = *(v0 + 40);

  v13 = *(v0 + 56);

  v14 = *(v0 + 80);

  v15 = *(v0 + 96);
  if (v15 >> 60 != 15)
  {
    sub_238085CA0(*(v0 + 88), v15);
  }

  v16 = v3 | v7;
  v17 = (v3 + 136) & ~v3;
  v18 = (v17 + v4 + v7) & ~v7;
  v19 = *(v0 + 104);

  v20 = *(v0 + 120);

  (*(v2 + 8))(v0 + v17, v1);
  (*(v6 + 8))(v0 + v18, v5);

  return MEMORY[0x2821FE8E8](v0, v18 + v8, v16 | 7);
}

uint64_t sub_2380EF7C8()
{
  v1 = *(sub_2381536AC() - 8);
  v2 = (*(v1 + 80) + 136) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2381527EC() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2380D8C30(v0 + 16, v0 + v2, v5);
}

uint64_t sub_2380EF898()
{
  v1 = sub_2381536AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  v8 = *(v0 + 40);

  v9 = *(v0 + 56);

  v10 = *(v0 + 80);

  v11 = *(v0 + 96);
  if (v11 >> 60 != 15)
  {
    sub_238085CA0(*(v0 + 88), v11);
  }

  v12 = (v3 + 136) & ~v3;
  v13 = *(v0 + 104);

  v14 = *(v0 + 120);

  (*(v2 + 8))(v0 + v12, v1);

  return MEMORY[0x2821FE8E8](v0, v12 + v4, v3 | 7);
}

uint64_t sub_2380EF9BC()
{
  v1 = *(sub_2381536AC() - 8);
  v2 = v0 + ((*(v1 + 80) + 136) & ~*(v1 + 80));

  return sub_2380D9438(v0 + 16, v2);
}

uint64_t sub_2380EFA20()
{
  v1 = sub_2381536AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);

  v9 = *(v0 + 56);

  v10 = *(v0 + 72);

  v11 = *(v0 + 96);

  v12 = *(v0 + 112);
  if (v12 >> 60 != 15)
  {
    sub_238085CA0(*(v0 + 104), v12);
  }

  v13 = (v3 + 152) & ~v3;
  v14 = *(v0 + 120);

  v15 = *(v0 + 136);

  (*(v2 + 8))(v0 + v13, v1);

  return MEMORY[0x2821FE8E8](v0, v13 + v4, v3 | 7);
}

uint64_t sub_2380EFB4C(uint64_t a1)
{
  v4 = *(sub_2381536AC() - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238088780;

  return sub_2380D9660(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_2380EFC54(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238088780;

  return sub_2380E04FC(a1, v1 + v5);
}

uint64_t sub_2380EFD3C()
{
  v1 = *(sub_23815361C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_238088780;

  return sub_2380E0D70();
}

uint64_t sub_2380EFE50(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238088780;

  return sub_2380DFF50(a1, v1 + v5);
}

uint64_t objectdestroy_79Tm()
{
  v1 = sub_23815361C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2380EFFBC()
{
  v1 = *(sub_23815361C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_238087150;

  return sub_2380E0D70();
}

uint64_t objectdestroy_75Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2380F0140(uint64_t *a1, uint64_t *a2)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_23815366C();
}

uint64_t sub_2380F0198()
{
  v1 = sub_2381536AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_2381527EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = *(v0 + 32);

  v11 = *(v0 + 40);

  v12 = *(v0 + 48);

  v13 = *(v0 + 56);

  v14 = *(v0 + 72);

  v15 = *(v0 + 96);

  v16 = *(v0 + 112);
  if (v16 >> 60 != 15)
  {
    sub_238085CA0(*(v0 + 104), v16);
  }

  v17 = v3 | v7;
  v18 = (v3 + 152) & ~v3;
  v19 = (v18 + v4 + v7) & ~v7;
  v20 = *(v0 + 120);

  v21 = *(v0 + 136);

  (*(v2 + 8))(v0 + v18, v1);
  (*(v6 + 8))(v0 + v19, v5);

  return MEMORY[0x2821FE8E8](v0, v19 + v8, v17 | 7);
}

uint64_t sub_2380F0350(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2381536AC() - 8);
  v6 = (*(v5 + 80) + 152) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2381527EC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_238088780;

  return sub_2380D8F2C(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9);
}

uint64_t sub_2380F04A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2380F04DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238088780;

  return sub_2380E6778(a1, v5);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  v7 = *(v0 + 96);

  v8 = *(v0 + 112);
  if (v8 >> 60 != 15)
  {
    sub_238085CA0(*(v0 + 104), v8);
  }

  v9 = *(v0 + 120);

  v10 = *(v0 + 136);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_2380F0634(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238087150;

  return sub_2380E1044(a1, v4, v5, v1 + 32);
}

unint64_t sub_2380F06E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC638, &unk_23815C498);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC038, &qword_23815C100);
    v8 = sub_23815552C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2380712E4(v10, v6, &qword_27DEEC638, &unk_23815C498);
      result = sub_2380E6968(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
      result = sub_2380F19EC(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
      *(v8[7] + 8 * v14) = *(v6 + v9);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2380F08C8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC010, &qword_23815B520);
  v3 = sub_23815552C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = sub_2380E6BBC(v4, v5, v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = (v3[6] + 24 * v10);
    *v13 = v4;
    v13[1] = v5;
    v13[2] = v6;
    *(v3[7] + 8 * v10) = result;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v12 + 4;
    v4 = *(v12 - 3);
    v5 = *(v12 - 2);
    v6 = *(v12 - 1);
    v18 = *v12;

    v10 = sub_2380E6BBC(v4, v5, v6);
    v12 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2380F09FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC0F8, &qword_23815B640);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC020, &qword_23815B580);
    v8 = sub_23815552C();
    v9 = v6 + *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2380712E4(v10, v6, &qword_27DEEC0F8, &qword_23815B640);
      result = sub_2380E6968(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
      result = sub_2380F19EC(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
      v17 = v8[7] + 32 * v14;
      v18 = *(v9 + 2);
      v19 = v9[24];
      *v17 = *v9;
      *(v17 + 16) = v18;
      *(v17 + 24) = v19;
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2380F0BF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC008, &qword_23815B508);
  v3 = sub_23815552C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  result = sub_2380E6BBC(v4, v5, v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v11 = (a1 + 104);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 24 * result);
    *v12 = v4;
    v12[1] = v5;
    v12[2] = v7;
    v13 = v3[7] + 16 * result;
    *v13 = v6;
    *(v13 + 8) = v8 & 1;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    sub_2380B3E18(v6, v8 & 1);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v11 - 4);
    v5 = *(v11 - 3);
    v7 = *(v11 - 2);
    v6 = *(v11 - 1);
    v8 = *v11;
    result = sub_2380E6BBC(v4, v5, v7);
    v11 += 40;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2380F0D2C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_23815334C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_2381526CC();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  sub_238154F8C();
  v1[9] = sub_238154F7C();
  v9 = sub_238154F3C();
  v1[10] = v9;
  v1[11] = v8;

  return MEMORY[0x2822009F8](sub_2380F0E7C, v9, v8);
}

uint64_t sub_2380F0E7C()
{
  v1 = v0[2];
  v2 = sub_238152FDC();
  if (v3 >> 60 != 15)
  {
    v4 = v2;
    v5 = v3;
    v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_238085D80(v4, v5);
    v7 = sub_23815274C();
    v8 = [v6 initWithData_];

    sub_238087244(v4, v5);
    if (v8)
    {
      v9 = v0[9];

      v10 = sub_23815466C();
      sub_238087244(v4, v5);
LABEL_13:
      v29 = v0[8];
      v30 = v0[5];

      v31 = v0[1];

      return v31(v10);
    }

    sub_238087244(v4, v5);
  }

  v11 = v0[2];
  v12 = sub_238152FFC();
  if (!v12)
  {
    v28 = v0[9];

    v10 = sub_23815467C();
    goto LABEL_13;
  }

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v0[7];
    v15 = v0[4];
    v43 = MEMORY[0x277D84F90];
    v16 = v12;
    sub_2380FDB18(0, v13, 0);
    v17 = v43;
    v18 = *(v15 + 16);
    v15 += 16;
    v19 = v16 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v41 = *(v15 + 56);
    v42 = v18;
    v20 = (v15 - 8);
    do
    {
      v21 = v0[8];
      v22 = v0[5];
      v23 = v0[3];
      v42(v22, v19, v23);
      sub_23815333C();
      (*v20)(v22, v23);
      v25 = *(v43 + 16);
      v24 = *(v43 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2380FDB18(v24 > 1, v25 + 1, 1);
      }

      v26 = v0[8];
      v27 = v0[6];
      *(v43 + 16) = v25 + 1;
      (*(v14 + 32))(v43 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v25, v26, v27);
      v19 += v41;
      --v13;
    }

    while (v13);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v0[12] = v17;
  sub_238154B0C();
  sub_238154AEC();
  v34 = v33;
  v36 = v35;
  v37 = *(MEMORY[0x277D54DD8] + 4);
  v38 = swift_task_alloc();
  v0[13] = v38;
  *v38 = v0;
  v38[1] = sub_2380F11D0;
  v39.n128_u64[0] = v34;
  v40.n128_u64[0] = v36;

  return MEMORY[0x2821B6378](v17, v39, v40);
}

uint64_t sub_2380F11D0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 104);
  v7 = *v2;

  v8 = v4[12];
  if (v1)
  {

    v9 = v5[10];
    v10 = v5[11];
    v11 = sub_2380F13AC;
  }

  else
  {

    v5[14] = a1;
    v9 = v5[10];
    v10 = v5[11];
    v11 = sub_2380F1324;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_2380F1324()
{
  v1 = v0[14];
  v2 = v0[9];

  v3 = sub_23815466C();
  v4 = v0[8];
  v5 = v0[5];

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_2380F13AC()
{
  v1 = v0[9];

  v2 = sub_23815467C();
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];

  return v5(v2);
}

unint64_t sub_2380F1440()
{
  result = qword_27DEEC5F0;
  if (!qword_27DEEC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEC5F0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 56);

  v6 = *(v0 + 80);

  v7 = *(v0 + 96);
  if (v7 >> 60 != 15)
  {
    sub_238085CA0(*(v0 + 88), v7);
  }

  v8 = *(v0 + 104);

  v9 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2380F152C(uint64_t a1, unint64_t a2)
{
  v8 = *(v2 + 80);
  v9 = *(v2 + 96);
  v10 = *(v2 + 112);
  v11 = *(v2 + 128);
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 64);
  return sub_2380D5B54(a1, a2);
}

uint64_t sub_2380F15B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_39Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2380F163C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_238107958(a1, v4, v5, v6);
}

uint64_t sub_2380F16F4(uint64_t a1)
{
  v4 = *(sub_2381527EC() - 8);
  v5 = (*(v4 + 80) + 160) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238088780;

  return sub_2380D61DC(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

uint64_t objectdestroy_168Tm()
{
  v1 = sub_2381527EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);

  v9 = *(v0 + 56);

  v10 = *(v0 + 64);

  v11 = *(v0 + 80);

  v12 = *(v0 + 104);

  v13 = *(v0 + 120);
  if (v13 >> 60 != 15)
  {
    sub_238085CA0(*(v0 + 112), v13);
  }

  v14 = (v3 + 160) & ~v3;
  v15 = *(v0 + 128);

  v16 = *(v0 + 144);

  (*(v2 + 8))(v0 + v14, v1);

  return MEMORY[0x2821FE8E8](v0, v14 + v4, v3 | 7);
}

uint64_t sub_2380F1924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2380F198C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2380F19EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2380F1A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEBB90, &unk_23815A7A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL _DDNodeDecoration.Kind.isInProgress.getter()
{
  v1 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2380F1BF8(v0, v4);
  v5 = (swift_getEnumCaseMultiPayload() & 0xFFFFFFFD) == 0;
  sub_2380F1D64(v4, type metadata accessor for _DDNodeDecoration.Kind);
  return v5;
}

uint64_t sub_2380F1BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DDNodeDecoration.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _DDNodeDecoration.isFinal.getter()
{
  v1 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2380F1BF8(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 1;
  v7 = type metadata accessor for _DDNodeDecoration.Kind;
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 5) >= 3)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v6 = 0;
      v7 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
LABEL_8:
      sub_2380F1D64(v4, v7);
      return v6;
    }

LABEL_7:
    v6 = 0;
    v7 = type metadata accessor for _DDNodeDecoration.Kind;
    goto LABEL_8;
  }

  return v6;
}

uint64_t sub_2380F1D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _DDNodeDecoration.init(_:preview:transferID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2380F3210(a1, a4, type metadata accessor for _DDNodeDecoration.Kind);
  v7 = type metadata accessor for _DDNodeDecoration(0);
  *(a4 + *(v7 + 20)) = a2;
  v8 = *(v7 + 24);
  v9 = sub_2381536AC();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t _DDNodeDecoration.Action.init(_:operation:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t _DDNodeDecoration.Action.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _DDNodeDecoration.Action.operation.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t static _DDNodeDecoration.Action.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2381555CC();
  }
}

uint64_t sub_2380F1F28(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2381555CC();
  }
}

uint64_t static _DDNodeDecoration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s17DeviceDiscoveryUI17_DDNodeDecorationV4KindO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for _DDNodeDecoration(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if ((sub_2381546AC() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v4 + 24);

  return sub_2381527AC();
}

uint64_t sub_2380F1FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static _DDNodeDecoration.Kind.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if ((sub_2381546AC() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a3 + 24);

  return sub_2381527AC();
}

uint64_t _s17DeviceDiscoveryUI17_DDNodeDecorationV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _DDNodeAskRequestDecorationViewModel();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v102 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v88 - v8;
  v10 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v88 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v88 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (v88 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6A8, &unk_23815C610);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = v88 - v26;
  v28 = v88 + *(v25 + 56) - v26;
  sub_2380F1BF8(a1, v88 - v26);
  sub_2380F1BF8(a2, v28);
  v29 = v27;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v31 = v27;
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v77 = swift_getEnumCaseMultiPayload();
        if (v77 != 7)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      v31 = v27;
      if (EnumCaseMultiPayload == 4)
      {
        sub_2380F1BF8(v27, v14);
        v33 = v14[1];
        v100 = *v14;
        v101 = v33;
        v34 = v14[2];
        v35 = v14[3];
        v36 = v14[5];
        v98 = v14[4];
        v99 = v34;
        v102 = v36;
        v38 = v14[7];
        v37 = v14[8];
        v39 = v14[9];
        v40 = v14[10];
        v41 = v14[11];
        v42 = v14[13];

        if (swift_getEnumCaseMultiPayload() != 4)
        {
          sub_2380F3120(v37, v39);

          v31 = v29;
          goto LABEL_41;
        }

        v90 = v35;
        v92 = v37;
        v93 = v39;
        v94 = v40;
        v95 = v41;
        v96 = v38;
        v44 = *v28;
        v43 = *(v28 + 1);
        v46 = *(v28 + 2);
        v45 = *(v28 + 3);
        v47 = *(v28 + 5);
        v89 = *(v28 + 4);
        v97 = v47;
        v48 = *(v28 + 8);
        v91 = *(v28 + 7);
        v50 = *(v28 + 9);
        v49 = *(v28 + 10);
        v51 = *(v28 + 11);
        v52 = *(v28 + 13);

        if (v100 == v44 && v101 == v43)
        {
        }

        else
        {
          v54 = sub_2381555CC();

          if ((v54 & 1) == 0)
          {
            sub_2380F3120(v92, v93);
            sub_2380F3120(v48, v50);

LABEL_73:

LABEL_74:
            v75 = 0;
            goto LABEL_75;
          }
        }

        v100 = v49;
        v101 = v48;
        v88[1] = v51;
        if (v99 == v46 && v90 == v45)
        {

          v79 = v102;
          v80 = v93;
        }

        else
        {
          v81 = sub_2381555CC();

          v79 = v102;
          v80 = v93;
          if ((v81 & 1) == 0)
          {
            sub_2380F3120(v92, v93);
            sub_2380F3120(v101, v50);

LABEL_72:

            goto LABEL_73;
          }
        }

        v82 = v50;
        if (v98 == v89 && v79 == v97 || (sub_2381555CC() & 1) != 0)
        {
          v102 = v29;
          v83 = v92;
          if (v80)
          {
            if (v50)
            {
              if (v92 == v101 && v80 == v50)
              {
                v75 = 1;
                v84 = v101;
              }

              else
              {
                v84 = v101;
                v75 = sub_2381555CC();
              }

              sub_2380F31CC(v83, v80);
              v101 = v82;
              sub_2380F31CC(v84, v82);
              sub_2380F31CC(v83, v80);

              v87 = v101;
              sub_2380F3120(v84, v101);
              sub_2380F3120(v83, v80);
              sub_2380F3120(v84, v87);

              sub_2380F3120(v83, v80);
              v29 = v102;
              goto LABEL_75;
            }

            sub_2380F31CC(v92, v80);
          }

          else
          {

            if (!v50)
            {
              sub_2380F3120(v83, 0);
              v75 = 1;
              v29 = v102;
LABEL_75:
              sub_2380F1D64(v29, type metadata accessor for _DDNodeDecoration.Kind);
              return v75 & 1;
            }
          }

          sub_2380F3120(v83, v80);
          sub_2380F3120(v101, v50);
          v75 = 0;
          v29 = v102;
          goto LABEL_75;
        }

        sub_2380F3120(v92, v80);
        sub_2380F3120(v101, v50);

        goto LABEL_72;
      }

      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_41;
      }
    }

    v32 = v31;
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v31 = v27;
      sub_2380F1BF8(v27, v17);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_2380F1D64(v17, type metadata accessor for _DDNodeAskRequestDecorationViewModel);
        goto LABEL_41;
      }

      sub_2380F3210(v17, v9, type metadata accessor for _DDNodeAskRequestDecorationViewModel);
      v76 = v102;
      sub_2380F3210(v28, v102, type metadata accessor for _DDNodeAskRequestDecorationViewModel);
      v75 = _s17DeviceDiscoveryUI36_DDNodeAskRequestDecorationViewModelV2eeoiySbAC_ACtFZ_0(v9, v76);
      sub_2380F1D64(v76, type metadata accessor for _DDNodeAskRequestDecorationViewModel);
      sub_2380F1D64(v9, type metadata accessor for _DDNodeAskRequestDecorationViewModel);
      goto LABEL_49;
    }

    sub_2380F1BF8(v27, v20);
    v55 = *v20;
    v56 = *(v20 + 1);
    v57 = v20[16];
    v58 = *(v20 + 4);
    v59 = v20[48];
    v61 = *(v20 + 7);
    v60 = *(v20 + 8);
    v101 = *(v20 + 5);
    v102 = v60;
    v62 = *(v20 + 10);
    v31 = v27;

    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_41;
    }

    v63 = *v28;
    v64 = *(v28 + 1);
    v65 = v28[16];
    v66 = *(v28 + 4);
    v67 = *(v28 + 5);
    LODWORD(v100) = v28[48];
    v68 = *(v28 + 7);
    v69 = *(v28 + 8);
    v98 = v67;
    v99 = v68;
    v70 = *(v28 + 10);

    if (v55 != v63)
    {
      goto LABEL_74;
    }

    if (v57)
    {
      if (!v65)
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v56 == v64)
      {
        v85 = v65;
      }

      else
      {
        v85 = 1;
      }

      if (v85)
      {
        goto LABEL_74;
      }
    }

    if (v59)
    {
      v86 = v100;
      if (v61 != v99)
      {
        v86 = 0;
      }

      if (v86 != 1)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v75 = 0;
      if ((v100 & 1) != 0 || v101 != v98 || v61 != v99)
      {
        goto LABEL_75;
      }
    }

    v75 = v102 == v69;
    goto LABEL_75;
  }

  if (EnumCaseMultiPayload)
  {
    v31 = v27;
    sub_2380F1BF8(v27, v22);
    v72 = *v22;
    v71 = v22[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      goto LABEL_41;
    }

    if (v72 == *v28 && v71 == *(v28 + 1))
    {
      v75 = 1;
    }

    else
    {
      v74 = *(v28 + 1);
      v75 = sub_2381555CC();
    }

LABEL_49:
    sub_2380F1D64(v31, type metadata accessor for _DDNodeDecoration.Kind);
    return v75 & 1;
  }

  v31 = v27;
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_41:
    sub_2380F3164(v31);
    v75 = 0;
    return v75 & 1;
  }

  sub_2380F1D64(v28, type metadata accessor for _DDNodeDecoration.Kind);
  v32 = v27;
LABEL_37:
  sub_2380F1D64(v32, type metadata accessor for _DDNodeDecoration.Kind);
  v75 = 1;
  return v75 & 1;
}