uint64_t sub_236EC0220(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_236ECF6B4();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236EC02E8, 0, 0);
}

uint64_t sub_236EC02E8()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 isiOSAppOnMac];

  if (!v2)
  {
    goto LABEL_10;
  }

  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v3 = sub_236ECF764();
  __swift_project_value_buffer(v3, qword_27DE8BD48);
  v4 = sub_236ECF744();
  v5 = sub_236ECF8F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_236EBF000, v4, v5, "This feature is not supported on this platform", v6, 2u);
    MEMORY[0x2383C2210](v6, -1, -1);
  }

  sub_236ECA420();
  v7 = swift_allocError();
  *v8 = 12;
  swift_willThrow();
  if (v7)
  {
    v9 = *(v0 + 64);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
LABEL_10:
    if (qword_27DE8BD60 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 64);
    v13 = *(v0 + 96);
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);
    v20 = *(v0 + 16);
    v16 = sub_236ECF6E4();
    __swift_project_value_buffer(v16, qword_27DE8BD68);
    sub_236ECF6D4();
    sub_236ECF694();
    v17 = swift_task_alloc();
    *(v0 + 72) = v17;
    *(v17 + 16) = v14;
    *(v17 + 24) = v20;
    *(v17 + 40) = v15;
    *(v17 + 48) = v13 & 1;
    v18 = swift_task_alloc();
    *(v0 + 80) = v18;
    *v18 = v0;
    v18[1] = sub_236EC05BC;
    v19 = *(v0 + 64);

    return sub_236EC0F10("Start Session", 13, 2, v19, &unk_236ED02F0, v17);
  }
}

uint64_t sub_236EC05BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  v7 = v4[9];
  (*(v4[7] + 8))(v4[8], v4[6]);

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_236EC0788, 0, 0);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_236EC0788()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_236EC07EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 200) = a6;
  *(v6 + 104) = a4;
  *(v6 + 112) = a5;
  *(v6 + 88) = a2;
  *(v6 + 96) = a3;
  *(v6 + 80) = a1;
  v7 = sub_236ECF914();
  *(v6 + 120) = v7;
  v8 = *(v7 - 8);
  *(v6 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  v10 = sub_236ECF904();
  *(v6 + 144) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  v12 = *(*(sub_236ECF794() - 8) + 64) + 15;
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236EC0914, 0, 0);
}

uint64_t sub_236EC0914()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 88);
  }

  else
  {
    v3 = *(v0 + 152);
    v14 = *(v0 + 160);
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
    v6 = *(v0 + 128);
    v15 = *(v0 + 120);
    sub_236ECF438(0, &qword_27DE8BCC0, 0x277D85C78);
    sub_236ECF784();
    *(v0 + 56) = MEMORY[0x277D84F90];
    sub_236ECF480(&qword_27DE8BCC8, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCD0, &qword_236ED0E48);
    sub_236ECF4C8(&qword_27DE8BCD8, &qword_27DE8BCD0, &qword_236ED0E48);
    sub_236ECF984();
    (*(v6 + 104))(v5, *MEMORY[0x277D85260], v15);
    v2 = sub_236ECF934();
    v1 = 0;
  }

  *(v0 + 168) = v2;
  v7 = *(v0 + 200);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  sub_236ECF51C(*(v0 + 96), v0 + 16);
  type metadata accessor for CarKeyRemoteControlSession();
  v10 = swift_allocObject();
  *(v0 + 176) = v10;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  sub_236ECF580((v0 + 16), v10 + 40);
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *(v10 + 32) = v7 & 1;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 80) = v2;
  v11 = v1;
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_236EC0B6C;

  return sub_236EC223C();
}

uint64_t sub_236EC0B6C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_236EC0D1C;
  }

  else
  {
    v3 = sub_236EC0C80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236EC0C80()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 80);

  *v5 = v1;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_236EC0D1C()
{
  v1 = *(v0 + 192);
  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
  sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 72);
    if ([v3 code] == 5)
    {
      v5 = *(v0 + 168);
      v4 = *(v0 + 176);

      sub_236ECA420();
      swift_allocError();
      v7 = 5;
LABEL_6:
      *v6 = v7;
      swift_willThrow();

      goto LABEL_9;
    }

    if ([v3 code] == 17)
    {
      v5 = *(v0 + 168);
      v8 = *(v0 + 176);

      sub_236ECA420();
      swift_allocError();
      v7 = 11;
      goto LABEL_6;
    }
  }

  v9 = *(v0 + 192);
  v11 = *(v0 + 168);
  v10 = *(v0 + 176);

  sub_236ECA420();
  swift_allocError();
  *v12 = 0;
  swift_willThrow();

LABEL_9:
  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  v15 = *(v0 + 136);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_236EC0F10(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = a6;
  *(v7 + 72) = v6;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 128) = a3;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = sub_236ECF6B4();
  *(v7 + 80) = v8;
  v9 = *(v8 - 8);
  *(v7 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236EC0FDC, 0, 0);
}

uint64_t sub_236EC0FDC()
{
  v1 = *(v0 + 72);
  v2 = sub_236ECF6D4();
  v3 = sub_236ECF954();
  result = sub_236ECF964();
  if (result)
  {
    v5 = *(v0 + 32);
    if ((*(v0 + 128) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v0 + 48);
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = sub_236ECF6A4();
        _os_signpost_emit_with_name_impl(&dword_236EBF000, v2, v3, v8, v5, "", v7, 2u);
        MEMORY[0x2383C2210](v7, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v9 = *(v0 + 56);
  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 48), *(v0 + 80));
  v10 = sub_236ECF724();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 104) = sub_236ECF714();
  v16 = (v9 + *v9);
  v13 = v9[1];
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = sub_236EC11EC;
  v15 = *(v0 + 64);

  return v16(v0 + 16);
}

uint64_t sub_236EC11EC()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_236EC138C;
  }

  else
  {
    v3 = sub_236EC1300;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236EC1300()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_236ECA474(*(v0 + 72), *(v0 + 32), *(v0 + 128));

  v3 = *(v0 + 16);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_236EC138C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_236ECA474(*(v0 + 72), *(v0 + 32), *(v0 + 128));

  v3 = *(v0 + 8);
  v4 = *(v0 + 120);

  return v3();
}

void sub_236EC1410()
{
  v1 = *MEMORY[0x277D85DE8];
  sub_236EC14B0(1);
  v0 = *MEMORY[0x277D85DE8];
}

void sub_236EC1460()
{
  v1 = *MEMORY[0x277D85DE8];
  sub_236EC14B0(0);
  v0 = *MEMORY[0x277D85DE8];
}

void sub_236EC14B0(char a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  if ([objc_opt_self() registerCarKeyAppForLaunch:a1 & 1 error:v11])
  {
    v1 = v11[0];
    v2 = *MEMORY[0x277D85DE8];
    return;
  }

  v3 = v11[0];
  v4 = sub_236ECF664();

  swift_willThrow();
  v11[0] = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
  sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  if ([v10 code] != 5)
  {

LABEL_7:
    sub_236ECA420();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v7 = v4;
    goto LABEL_8;
  }

  sub_236ECA420();
  swift_allocError();
  *v6 = 5;
  swift_willThrow();

  v7 = v11[0];
LABEL_8:

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_236EC1694(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_236EC19CC()
{
  v1 = v0;
  v2 = sub_236ECF6B4();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20]();
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_236ECF6E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_27DE8BD68);
  (*(v7 + 16))(v10, v11, v6);
  sub_236ECF6D4();
  sub_236ECF694();
  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = sub_236ECF6D4();
  v14 = sub_236ECF954();
  v15 = sub_236ECF6A4();
  v38 = v13;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v13, v14, v15, "Get Vehicle Reports", "", v12, 2u);
  v16 = v0[12];
  if (v16)
  {
    v42 = 0;
    v17 = v16;
    v18 = [v17 getVehicleReports_];
    v19 = v42;
    if (!v18)
    {
      v27 = v42;
      v24 = sub_236ECF664();

      swift_willThrow();
LABEL_10:
      v42 = v24;
      v28 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
      sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v1 = v41;
        if ([v41 code] == 12)
        {

          sub_236ECA420();
          v29 = swift_allocError();
          *v30 = 3;
          swift_willThrow();

          if (!v29)
          {
            goto LABEL_15;
          }

LABEL_18:

          (*(v39 + 8))(v5, v40);
          (*(v7 + 8))(v10, v6);
          return v1;
        }
      }

      sub_236ECA420();
      v34 = swift_allocError();
      *v35 = 0;
      swift_willThrow();

      if (!v34)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    v1 = v18;
    sub_236ECF438(0, &qword_27DE8BC90, 0x277D493C0);
    v20 = sub_236ECF7B4();
    v21 = v19;

    v22 = v37[1];
    v23 = sub_236EC1EB8(v20);
    v24 = v22;
    if (v22)
    {

      goto LABEL_10;
    }

    v1 = v23;
  }

  else
  {
    sub_236ECA420();
    v25 = swift_allocError();
    *v26 = 3;
    swift_willThrow();
    if (v25)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  v31 = sub_236ECF944();
  v32 = sub_236ECF6A4();
  v33 = v38;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v38, v31, v32, "Get Vehicle Reports", "", v12, 2u);

  MEMORY[0x2383C2210](v12, -1, -1);
  (*(v39 + 8))(v5, v40);
  (*(v7 + 8))(v10, v6);
  return v1;
}

uint64_t sub_236EC1EB8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = a1;
    v55 = MEMORY[0x277D84F90];
    sub_236ECC380(0, v3, 0);
    v6 = v55;
    v7 = v5 + 64;
    v8 = -1 << *(v5 + 32);
    result = sub_236ECF994();
    v10 = result;
    v11 = 0;
    v12 = *(v5 + 36);
    v41 = v5 + 72;
    v42 = v3;
    v43 = v12;
    v44 = v5 + 64;
    v45 = v5;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v5 + 32))
    {
      if ((*(v7 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      if (v12 != *(v5 + 36))
      {
        goto LABEL_24;
      }

      v48 = v10 >> 6;
      v46 = v11;
      v14 = *(*(v5 + 48) + 16 * v10 + 8);
      v15 = *(*(v5 + 56) + 8 * v10);

      v16 = [v15 readerIdentifier];
      v17 = sub_236ECF7D4();
      v19 = v18;

      v49 = v17;
      v50 = v19;
      v51 = 0;
      v52 = v4;
      v53 = sub_236ECD4C0(v4);
      v54 = sub_236ECD59C(v4);
      v20 = [v15 getSupportedRKEFunctions];
      sub_236ECF438(0, &qword_27DE8BC98, 0x277CCABB0);
      v21 = sub_236ECF814();

      v22 = v15;
      v23 = sub_236ECD6A8(v21, v22, &v49);
      v47 = v2;

      v52 = v23;
      v24 = v53;
      v25 = *(v53 + 16);

      v26 = v25 != 0;
      v28 = v49;
      v27 = v50;
      v29 = v54;
      v55 = v6;
      v31 = *(v6 + 16);
      v30 = *(v6 + 24);
      if (v31 >= v30 >> 1)
      {
        v40 = v26;
        result = sub_236ECC380((v30 > 1), v31 + 1, 1);
        v26 = v40;
        v6 = v55;
      }

      *(v6 + 16) = v31 + 1;
      v32 = v6 + 48 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v27;
      *(v32 + 48) = v26;
      *(v32 + 56) = v23;
      *(v32 + 64) = v24;
      *(v32 + 72) = v29;
      v5 = v45;
      v13 = 1 << *(v45 + 32);
      if (v10 >= v13)
      {
        goto LABEL_25;
      }

      v7 = v44;
      v33 = *(v44 + 8 * v48);
      if ((v33 & (1 << v10)) == 0)
      {
        goto LABEL_26;
      }

      v12 = v43;
      if (v43 != *(v45 + 36))
      {
        goto LABEL_27;
      }

      v34 = v33 & (-2 << (v10 & 0x3F));
      if (v34)
      {
        v13 = __clz(__rbit64(v34)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v4 = MEMORY[0x277D84F90];
      }

      else
      {
        v35 = v48 << 6;
        v36 = v48 + 1;
        v37 = (v41 + 8 * v48);
        v4 = MEMORY[0x277D84F90];
        while (v36 < (v13 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_236ECF42C(v10, v43, 0);
            v13 = __clz(__rbit64(v38)) + v35;
            goto LABEL_4;
          }
        }

        result = sub_236ECF42C(v10, v43, 0);
      }

LABEL_4:
      v2 = v47;
      v11 = v46 + 1;
      v10 = v13;
      if (v46 + 1 == v42)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_236EC225C()
{
  v0[12] = 0;
  v1 = v0[14];
  if ((*(v1 + 32) & 1) == 0)
  {
    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC40, &qword_236ED0DE8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_236ED02B0;
    *(inited + 32) = 0x61745365676E6172;
    *(inited + 40) = 0xEA00000000007472;
    *(inited + 48) = v3;
    *(inited + 56) = 0x646E4565676E6172;
    *(inited + 64) = 0xE800000000000000;
    *(inited + 72) = v2;
    v5 = sub_236ECCDAC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC48, &qword_236ED0DF0);
    swift_arrayDestroy();
    v0[12] = v5;
    v1 = v0[14];
  }

  v6 = swift_task_alloc();
  v0[15] = v6;
  *(v6 + 16) = v0 + 12;
  *(v6 + 24) = v1;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[16] = v8;
  v9 = sub_236ECF438(0, &qword_27DE8BC38, 0x277D49398);
  *v8 = v0;
  v8[1] = sub_236EC242C;

  return MEMORY[0x2822008A0](v0 + 13, 0, 0, 0xD000000000000014, 0x8000000236ED13A0, sub_236ECE77C, v6, v9);
}

uint64_t sub_236EC242C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_236EC25BC;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_236EC2548;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_236EC2548()
{
  v1 = v0[14];
  v2 = *(v1 + 96);
  *(v1 + 96) = v0[13];

  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_236EC25BC()
{
  v1 = v0[15];

  v2 = v0[12];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

void sub_236EC2628(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC58, &qword_236ED0E00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [objc_opt_self() sharedInstance];
  v12 = *a2;
  if (v12)
  {

    sub_236EC2894(v13);

    v12 = sub_236ECF7A4();
  }

  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  *(v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_236ECE82C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236EC2B48;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);

  v17 = [v11 startRKESessionWithOptions:v12 startCallback:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();
}

uint64_t sub_236EC2894(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC60, &qword_236ED0E08);
    v2 = sub_236ECFA44();
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
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_236ECEA14(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_236ECEA14(v32, v33);
    v17 = *(v2 + 40);
    result = sub_236ECF9A4();
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
    result = sub_236ECEA14(v33, (*(v2 + 56) + 32 * v10));
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

void sub_236EC2B48(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_236EC2BD4()
{
  v20 = sub_236ECF6B4();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_236ECF6E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27DE8BD68);
  (*(v5 + 16))(v8, v9, v4);
  sub_236ECF6D4();
  sub_236ECF694();
  v10 = swift_slowAlloc();
  *v10 = 0;
  v11 = sub_236ECF6D4();
  v12 = sub_236ECF954();
  v13 = sub_236ECF6A4();
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v11, v12, v13, "End Session", "", v10, 2u);
  v14 = *(v19[1] + 96);
  if (v14)
  {
    [v14 endSession];
    v15 = sub_236ECF944();
    v16 = sub_236ECF6A4();
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v11, v15, v16, "End Session", "", v10, 2u);

    MEMORY[0x2383C2210](v10, -1, -1);
  }

  else
  {
    sub_236ECA420();
    swift_allocError();
    *v18 = 3;
    swift_willThrow();
  }

  (*(v0 + 8))(v3, v20);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_236EC2EE8(uint64_t *a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAB8, &qword_236ED0308) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v33 - v3;
  v40 = sub_236ECF6B4();
  v39 = *(v40 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_236ECF6E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v35 = a1[1];
  v36 = v13;
  v14 = a1[3];
  v34 = a1[2];
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_27DE8BD68);
  (*(v9 + 16))(v12, v15, v8);
  sub_236ECF6D4();
  sub_236ECF694();
  v16 = swift_slowAlloc();
  *v16 = 0;
  v17 = sub_236ECF6D4();
  v18 = sub_236ECF954();
  v38 = v8;
  v19 = v18;
  v20 = sub_236ECF6A4();
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v17, v19, v20, "Perform Remote Keyless Entry Action", "", v16, 2u);
  v21 = *(v37 + 96);
  if (v21)
  {
    v22 = sub_236ECF864();
    (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v25 = v35;
    v24 = v36;
    v23[4] = v21;
    v23[5] = v24;
    v26 = v34;
    v23[6] = v25;
    v23[7] = v26;
    v23[8] = v14;
    v27 = v21;

    v28 = sub_236EC36B0(0, 0, v4, &unk_236ED0318, v23);
    type metadata accessor for RemoteKeylessEntryAction.ExecutionRequest();
    v14 = swift_allocObject();
    *(v14 + 16) = v28;
    v29 = sub_236ECF944();
    v30 = sub_236ECF6A4();
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v17, v29, v30, "Perform Remote Keyless Entry Action", "", v16, 2u);

    MEMORY[0x2383C2210](v16, -1, -1);
  }

  else
  {
    sub_236ECA420();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();
  }

  (*(v39 + 8))(v7, v40);
  (*(v9 + 8))(v12, v38);
  return v14;
}

uint64_t sub_236EC3320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[19] = a1;
  v8[20] = a4;
  return MEMORY[0x2822009F8](sub_236EC3348, 0, 0);
}

uint64_t sub_236EC3348()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v6 = sub_236ECF8C4();
  v0[25] = v6;
  v7 = sub_236ECF8C4();
  v0[26] = v7;
  v8 = sub_236ECF7C4();
  v0[27] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_236EC34C8;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC88, &qword_236ED0E20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_236EC35D8;
  v0[13] = &block_descriptor_190;
  v0[14] = v9;
  [v5 sendRKEFunction:v6 action:v7 readerIdentifier:v8 authorization:0 isEnduring:0 isHandlingExternal:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_236EC34C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_236ECF5E4;
  }

  else
  {
    v3 = sub_236ECF5D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236EC35D8(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_236EC36B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAB8, &qword_236ED0308) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = v23 - v9;
  sub_236ECF364(a3, v23 - v9, &qword_27DE8BAB8, &qword_236ED0308);
  v11 = sub_236ECF864();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_236ECF3CC(v10, &qword_27DE8BAB8, &qword_236ED0308);
  }

  else
  {
    sub_236ECF854();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_236ECF824();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_236ECF7E4() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_236ECF3CC(a3, &qword_27DE8BAB8, &qword_236ED0308);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_236ECF3CC(a3, &qword_27DE8BAB8, &qword_236ED0308);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

char *sub_236EC3954(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAB8, &qword_236ED0308) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v54 - v7;
  v60 = sub_236ECF6B4();
  v63 = *(v60 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20]();
  v64 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_236ECF6E4();
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v58 = a1[1];
  v16 = a1[3];
  v57 = a1[2];
  v56 = *a2;
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_27DE8BD68);
  (*(v69 + 16))(v14, v17, v11);
  sub_236ECF6D4();
  sub_236ECF694();
  v18 = swift_slowAlloc();
  v61 = v11;
  v62 = v14;
  v19 = v18;
  *v18 = 0;
  v20 = sub_236ECF6D4();
  v21 = sub_236ECF954();
  v22 = sub_236ECF6A4();
  v59 = v20;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v20, v21, v22, "Perform Remote Keyless Entry Enduring Action", "", v19, 2u);
  v23 = *(v3 + 96);
  if (v23)
  {
    v24 = sub_236ECF864();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v23;
    *(v25 + 40) = v15;
    v26 = v15;
    v27 = v58;
    v55 = v19;
    v28 = v57;
    *(v25 + 48) = v58;
    *(v25 + 56) = v28;
    *(v25 + 64) = v16;
    *(v25 + 72) = v56;
    v29 = v23;

    v30 = sub_236EC36B0(0, 0, v8, &unk_236ED0328, v25);
    v31 = objc_allocWithZone(type metadata accessor for RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest());

    ObjectType = swift_getObjectType();
    v33 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStream;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAE0, &qword_236ED0370);
    (*(*(v34 - 8) + 56))(&v31[v33], 1, 1, v34);
    v35 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStreamContinuation;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD0, &qword_236ED0360);
    (*(*(v36 - 8) + 56))(&v31[v35], 1, 1, v36);
    v37 = &v31[OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_action];
    *v37 = v26;
    *(v37 + 1) = v27;
    *(v37 + 2) = v28;
    *(v37 + 3) = v16;
    *&v31[OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_session] = v29;
    *&v31[OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_task] = v30;
    v38 = type metadata accessor for SESRKESessionContinuationDelegateHandler();
    v39 = objc_allocWithZone(v38);
    v40 = &v39[OBJC_IVAR____TtC6CarKeyP33_86CE746C1DFB40AB47D6F76682ACEEE140SESRKESessionContinuationDelegateHandler_delegate];
    *v40 = 0u;
    *(v40 + 1) = 0u;
    *(v40 + 4) = 0;
    *&v39[OBJC_IVAR____TtC6CarKeyP33_86CE746C1DFB40AB47D6F76682ACEEE140SESRKESessionContinuationDelegateHandler_session] = v29;
    v68.receiver = v39;
    v68.super_class = v38;
    v41 = v29;

    v42 = objc_msgSendSuper2(&v68, sel_init);
    [v41 setContinuationDelegate_];
    *&v31[OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_continuationDelegateHandler] = v42;
    v67.receiver = v31;
    v67.super_class = ObjectType;
    v43 = objc_msgSendSuper2(&v67, sel_init);
    v44 = *&v43[OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_continuationDelegateHandler];
    v66[3] = ObjectType;
    v66[4] = &off_2849E2848;
    v23 = v43;
    v45 = v44;

    v66[0] = v23;
    sub_236ECF51C(v66, v65);
    v46 = OBJC_IVAR____TtC6CarKeyP33_86CE746C1DFB40AB47D6F76682ACEEE140SESRKESessionContinuationDelegateHandler_delegate;
    swift_beginAccess();
    sub_236ECF2FC(v65, v45 + v46, &qword_27DE8BC28, &qword_236ED0DD8);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    LOBYTE(v46) = sub_236ECF944();
    v47 = v64;
    v48 = sub_236ECF6A4();
    v49 = v46;
    v50 = v59;
    v51 = v55;
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v59, v49, v48, "Perform Remote Keyless Entry Enduring Action", "", v55, 2u);

    MEMORY[0x2383C2210](v51, -1, -1);
    (*(v63 + 8))(v47, v60);
  }

  else
  {
    sub_236ECA420();
    swift_allocError();
    *v52 = 3;
    swift_willThrow();

    (*(v63 + 8))(v64, v60);
  }

  (*(v69 + 8))(v62, v61);
  return v23;
}

uint64_t sub_236EC3FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v10;
  *(v8 + 184) = a7;
  *(v8 + 192) = a8;
  *(v8 + 168) = a5;
  *(v8 + 176) = a6;
  *(v8 + 152) = a1;
  *(v8 + 160) = a4;
  return MEMORY[0x2822009F8](sub_236EC4030, 0, 0);
}

uint64_t sub_236EC4030()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[21];
  v8 = v0[22];
  v9 = v0[20];
  v10 = *(v1 + 232);
  v11 = sub_236ECF8C4();
  v1[25] = v11;
  v12 = sub_236ECF8C4();
  v1[26] = v12;
  v13 = sub_236ECF7C4();
  v1[27] = v13;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_236EC41B8;
  v14 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC88, &qword_236ED0E20);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_236EC35D8;
  v1[13] = &block_descriptor_186;
  v1[14] = v14;
  [v9 sendRKEFunction:v11 action:v12 readerIdentifier:v13 authorization:0 isEnduring:1 isHandlingExternal:v10 & 1 completion:v3];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_236EC41B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_236EC4358;
  }

  else
  {
    v3 = sub_236EC42C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236EC42C8()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);

  v5 = sub_236ECF8B4();
  *v4 = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_236EC4358()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[28];

  return v5();
}

void *sub_236EC43F4(uint64_t *a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAB8, &qword_236ED0308) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v35 - v3;
  v44 = sub_236ECF6B4();
  v43 = *(v44 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_236ECF6E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v39 = a1[1];
  v40 = v13;
  v14 = a1[3];
  v38 = a1[2];
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_27DE8BD68);
  (*(v9 + 16))(v12, v15, v8);
  sub_236ECF6D4();
  sub_236ECF694();
  v16 = swift_slowAlloc();
  *v16 = 0;
  v17 = sub_236ECF6D4();
  v18 = sub_236ECF954();
  v42 = v8;
  v19 = v18;
  v20 = sub_236ECF6A4();
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v17, v19, v20, "Perform Remote Keyless Entry Enduring Action", "", v16, 2u);
  v21 = *(v41 + 12);
  if (v21)
  {
    v22 = sub_236ECF864();
    (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v41 = v12;
    v24 = v9;
    v25 = v40;
    v23[4] = v21;
    v23[5] = v25;
    v36 = v7;
    v37 = v17;
    v26 = v38;
    v27 = v39;
    v23[6] = v39;
    v23[7] = v26;
    v23[8] = v14;
    v28 = v21;

    v29 = sub_236EC36B0(0, 0, v4, &unk_236ED0338, v23);
    type metadata accessor for RemoteKeylessEntryEnduringAction.EnduringExecutionRequest();
    v19 = swift_allocObject();
    v19[2] = v25;
    v19[3] = v27;
    v19[4] = v26;
    v19[5] = v14;
    v19[6] = v29;
    v19[7] = v28;

    LOBYTE(v29) = sub_236ECF944();
    v30 = v36;
    v31 = sub_236ECF6A4();
    v32 = v37;
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v37, v29, v31, "Perform Remote Keyless Entry Enduring Action", "", v16, 2u);

    MEMORY[0x2383C2210](v16, -1, -1);
    (*(v43 + 8))(v30, v44);
    (*(v24 + 8))(v41, v42);
  }

  else
  {
    sub_236ECA420();
    swift_allocError();
    *v33 = 3;
    swift_willThrow();

    (*(v43 + 8))(v7, v44);
    (*(v9 + 8))(v12, v42);
  }

  return v19;
}

uint64_t sub_236EC4850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[19] = a1;
  v8[20] = a4;
  return MEMORY[0x2822009F8](sub_236EC4878, 0, 0);
}

uint64_t sub_236EC4878()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v6 = sub_236ECF8C4();
  v0[25] = v6;
  v7 = sub_236ECF8C4();
  v0[26] = v7;
  v8 = sub_236ECF7C4();
  v0[27] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_236EC34C8;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC88, &qword_236ED0E20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_236EC35D8;
  v0[13] = &block_descriptor_182;
  v0[14] = v9;
  [v5 sendRKEFunction:v6 action:v7 readerIdentifier:v8 authorization:0 isEnduring:1 isHandlingExternal:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_236EC49F8(uint64_t a1, uint8_t *a2, uint8_t *a3, uint8_t *a4)
{
  v6 = v5;
  v50[2] = a3;
  v50[3] = a4;
  v50[1] = a2;
  v7 = sub_236ECF6B4();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  MEMORY[0x28223BE20]();
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_236ECF6E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20]();
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_27DE8BD68);
  v52 = v12;
  v53 = v11;
  (*(v12 + 16))(v15, v16, v11);
  sub_236ECF6D4();
  sub_236ECF694();
  v17 = swift_slowAlloc();
  *v17 = 0;
  v18 = v15;
  v19 = sub_236ECF6D4();
  v20 = sub_236ECF954();
  v21 = sub_236ECF6A4();
  v51 = v19;
  v50[0] = v17;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v19, v20, v21, "Send Passthrough Data", "", v17, 2u);
  v22 = *(v4 + 96);
  v23 = v10;
  if (!v22)
  {
    v28 = v10;
    sub_236ECA420();
    v30 = swift_allocError();
    *v31 = 3;
    swift_willThrow();
    v33 = v52;
    v32 = v53;
    if (!v30)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v24 = v22;
  v25 = sub_236ECF674();
  v26 = sub_236ECF7C4();
  v57 = 0;
  v27 = [v24 sendPassthroughMessage:v25 readerIdentifier:v26 error:&v57];

  if (v27)
  {
    v28 = v10;
    v29 = v57;
    goto LABEL_21;
  }

  v34 = v57;
  v35 = sub_236ECF664();

  swift_willThrow();
  v57 = v35;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
  sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v37 = v56;
    if ([v37 code] == 19)
    {
      v28 = v23;

      sub_236ECA420();
      v39 = swift_allocError();
      v40 = 6;
      goto LABEL_17;
    }

    if ([v37 code] == 12)
    {
      v28 = v23;

      sub_236ECA420();
      v39 = swift_allocError();
      v40 = 3;
      goto LABEL_17;
    }

    v41 = [v37 code];

    if (v41 == 1)
    {
      v28 = v23;

      sub_236ECA420();
      v39 = swift_allocError();
      v40 = 7;
      goto LABEL_17;
    }

    if ([v37 code] == 13)
    {
      v28 = v23;

      sub_236ECA420();
      v39 = swift_allocError();
      v40 = 1;
LABEL_17:
      *v38 = v40;
      swift_willThrow();

      v33 = v52;
      v32 = v53;
      if (!v39)
      {
        goto LABEL_18;
      }

LABEL_22:

      (*(v54 + 8))(v28, v55);
      return (*(v33 + 8))(v18, v32);
    }
  }

  v28 = v23;

  sub_236ECA420();
  v6 = swift_allocError();
  *v48 = 0;
  swift_willThrow();

LABEL_21:
  v33 = v52;
  v32 = v53;
  if (v6)
  {
    goto LABEL_22;
  }

LABEL_18:
  v42 = sub_236ECF944();
  v43 = v28;
  v44 = sub_236ECF6A4();
  v45 = v42;
  v46 = v51;
  v47 = v50[0];
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v51, v45, v44, "Send Passthrough Data", "", v50[0], 2u);

  MEMORY[0x2383C2210](v47, -1, -1);
  (*(v54 + 8))(v43, v55);
  return (*(v33 + 8))(v18, v32);
}

uint64_t sub_236EC4F98(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v41[1] = a1;
  v41[2] = a2;
  v6 = sub_236ECF6B4();
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20]();
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_236ECF6E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_27DE8BD68);
  v16 = *(v11 + 16);
  v42 = v10;
  v16(v14, v15, v10);
  sub_236ECF6D4();
  sub_236ECF694();
  v17 = swift_slowAlloc();
  *v17 = 0;
  v18 = sub_236ECF6D4();
  v19 = sub_236ECF954();
  LOBYTE(v20) = v9;
  v21 = sub_236ECF6A4();
  v22 = v19;
  v23 = v18;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v18, v22, v21, "Querying Passive Entry Availability", "", v17, 2u);
  v24 = *(v5 + 96);
  if (!v24)
  {
    sub_236ECA420();
    v29 = swift_allocError();
    *v30 = 3;
    swift_willThrow();
    if (!v29)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v20 = v24;
  LOBYTE(v46) = 0;
  v25 = sub_236ECF7C4();
  v47 = 0;
  v26 = [v20 isPassiveEntryAvailable:v25 isAvailable:&v46 error:&v47];

  if (v26)
  {
    LOBYTE(v27) = v46;
    v28 = v47;
    if (!v3)
    {
      goto LABEL_13;
    }

LABEL_10:
    v47 = v4;
    v31 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
    sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v32 = v46;
      if ([v46 code] == 19)
      {

        sub_236ECA420();
        v34 = swift_allocError();
        v35 = 6;
        goto LABEL_16;
      }

      if ([v32 code] == 12)
      {

        sub_236ECA420();
        v34 = swift_allocError();
        v35 = 3;
LABEL_16:
        *v33 = v35;
        swift_willThrow();

        if (!v34)
        {
          goto LABEL_17;
        }

LABEL_20:

        (*(v43 + 8))(v9, v44);
        (*(v11 + 8))(v14, v42);
        return v20 & 1;
      }
    }

    sub_236ECA420();
    v38 = swift_allocError();
    *v39 = 0;
    swift_willThrow();

    if (!v38)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v27 = v47;
  v4 = sub_236ECF664();

  swift_willThrow();
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_13:

  v45 = v27 & 1;
LABEL_17:
  v36 = sub_236ECF944();
  v37 = sub_236ECF6A4();
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v23, v36, v37, "Querying Passive Entry Availability", "", v17, 2u);

  LOBYTE(v20) = v45;
  MEMORY[0x2383C2210](v17, -1, -1);
  (*(v43 + 8))(v9, v44);
  (*(v11 + 8))(v14, v42);
  return v20 & 1;
}

void sub_236EC5494(uint64_t *a1@<X8>)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 96);
  if (!v3)
  {
    sub_236ECA420();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();
    goto LABEL_15;
  }

  v4 = v3;
  v5 = sub_236ECF674();
  v6 = sub_236ECF7C4();
  v38[0] = 0;
  v7 = [v4 sign:v5 readerIdentifier:v6 error:v38];

  if (!v7)
  {
    v24 = v38[0];
    v25 = sub_236ECF664();

    swift_willThrow();
    v38[0] = v25;
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
    sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v27 = v37;
      if ([v27 code] == 12)
      {

        sub_236ECA420();
        swift_allocError();
        v29 = 3;
LABEL_12:
        *v28 = v29;
        swift_willThrow();

        goto LABEL_15;
      }

      v30 = [v27 code];

      if (v30 == 17)
      {

        sub_236ECA420();
        swift_allocError();
        v29 = 11;
        goto LABEL_12;
      }

      if ([v27 code] == 19)
      {

        sub_236ECA420();
        swift_allocError();
        v29 = 6;
        goto LABEL_12;
      }
    }

    sub_236ECA420();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();

    goto LABEL_15;
  }

  v8 = v38[0];
  v9 = [v7 appBundleID];
  v10 = sub_236ECF7D4();
  v35 = v11;
  v36 = v10;

  v12 = [v7 nonce];
  v13 = sub_236ECF684();
  v33 = v14;
  v34 = v13;

  v15 = [v7 signedData];
  v16 = sub_236ECF684();
  v18 = v17;

  v19 = [v7 signature];
  v20 = sub_236ECF684();
  v22 = v21;

  *a1 = v36;
  a1[1] = v35;
  a1[2] = v34;
  a1[3] = v33;
  a1[4] = v16;
  a1[5] = v18;
  a1[6] = v20;
  a1[7] = v22;
LABEL_15:
  v32 = *MEMORY[0x277D85DE8];
}

uint64_t CarKeyRemoteControlSession.Attestation.appBundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CarKeyRemoteControlSession.Attestation.nonce.getter()
{
  v1 = *(v0 + 16);
  sub_236ECAA74(v1, *(v0 + 24));
  return v1;
}

uint64_t CarKeyRemoteControlSession.Attestation.signedData.getter()
{
  v1 = *(v0 + 32);
  sub_236ECAA74(v1, *(v0 + 40));
  return v1;
}

uint64_t CarKeyRemoteControlSession.Attestation.signature.getter()
{
  v1 = *(v0 + 48);
  sub_236ECAA74(v1, *(v0 + 56));
  return v1;
}

uint64_t CarKeyRemoteControlSession.ContinuationStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_236ECFAD4();
  MEMORY[0x2383C1D50](v1);
  return sub_236ECFAF4();
}

uint64_t sub_236EC59A4()
{
  v1 = *v0;
  sub_236ECFAD4();
  MEMORY[0x2383C1D50](v1);
  return sub_236ECFAF4();
}

uint64_t sub_236EC5A18()
{
  v1 = *v0;
  sub_236ECFAD4();
  MEMORY[0x2383C1D50](v1);
  return sub_236ECFAF4();
}

uint64_t CarKeyRemoteControlSession.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return v0;
}

uint64_t CarKeyRemoteControlSession.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t VehicleReport.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

CarKey::FunctionStatus_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VehicleReport.status(for:)(CarKey::FunctionIdentifier a1)
{
  v43 = v1;
  v4 = sub_236ECF6B4();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_236ECF6E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1.rawValue;
  v15 = *(v2 + 24);
  v14 = *(v2 + 32);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, qword_27DE8BD68);
  v44 = v9;
  v17 = *(v9 + 16);
  v47 = v8;
  v17(v12, v16, v8);
  sub_236ECF6D4();
  sub_236ECF694();
  v18 = swift_slowAlloc();
  *v18 = 0;
  v19 = sub_236ECF6D4();
  v20 = sub_236ECF954();
  v21 = sub_236ECF6A4();
  v45 = v19;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v19, v20, v21, "Getting Function Status", "", v18, 2u);
  v22 = *(v15 + 16);
  v23 = (v15 + 32);
  v24 = v46;
  do
  {
    if (!v22)
    {
      if (qword_27DE8BD40 != -1)
      {
        swift_once();
      }

      v29 = sub_236ECF764();
      __swift_project_value_buffer(v29, qword_27DE8BD48);
      v30 = sub_236ECF744();
      v31 = sub_236ECF8F4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        *(v32 + 4) = v13;
        _os_log_impl(&dword_236EBF000, v30, v31, "Unknown function %ld", v32, 0xCu);
        MEMORY[0x2383C2210](v32, -1, -1);
      }

      sub_236ECA420();
      v33 = swift_allocError();
      *v34 = 4;
      swift_willThrow();
      v27 = v47;
      if (!v33)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    v25 = *v23++;
    --v22;
  }

  while (v25 != v13);
  if (*(v14 + 16))
  {
    v26 = sub_236ECC128(v13);
    v27 = v47;
    if (v28)
    {
      v13 = *(*(v14 + 56) + 8 * v26);
      v50 = 0;
      if (!v24)
      {
        goto LABEL_19;
      }

LABEL_17:

      goto LABEL_20;
    }

    v13 = 0;
    v50 = 1;
    if (v24)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v13 = 0;
    v27 = v47;
    v50 = 1;
    if (v46)
    {
      goto LABEL_17;
    }
  }

LABEL_19:
  v35 = sub_236ECF944();
  v36 = sub_236ECF6A4();
  v37 = v35;
  v38 = v45;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v45, v37, v36, "Getting Function Status", "", v18, 2u);

  LOBYTE(v38) = v50;
  MEMORY[0x2383C2210](v18, -1, -1);
  v39 = v43;
  *v43 = v13;
  *(v39 + 8) = v38;
LABEL_20:
  (*(v48 + 8))(v7, v49);
  v40 = (*(v44 + 8))(v12, v27);
  result.value.rawValue = v40;
  result.is_nil = v41;
  return result;
}

NSObject *VehicleReport.proprietaryData(for:)(uint64_t *a1)
{
  v43 = sub_236ECF6B4();
  v42 = *(v43 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_236ECF6E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(v1 + 24);
  v13 = *(v1 + 40);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_27DE8BD68);
  v38 = v7;
  v15 = *(v7 + 16);
  v41 = v6;
  v15(v10, v14, v6);
  sub_236ECF6D4();
  sub_236ECF694();
  v16 = swift_slowAlloc();
  *v16 = 0;
  v17 = sub_236ECF6D4();
  v18 = sub_236ECF954();
  v19 = sub_236ECF6A4();
  v39 = v17;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v17, v18, v19, "Getting Function Proprietary Data", "", v16, 2u);
  v20 = *(v12 + 16);
  v21 = (v12 + 32);
  v22 = v40;
  do
  {
    if (!v20)
    {
      if (qword_27DE8BD40 != -1)
      {
        swift_once();
      }

      v28 = sub_236ECF764();
      __swift_project_value_buffer(v28, qword_27DE8BD48);
      v27 = sub_236ECF744();
      v29 = sub_236ECF8F4();
      if (os_log_type_enabled(v27, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = v11;
        _os_log_impl(&dword_236EBF000, v27, v29, "Unknown function %ld", v30, 0xCu);
        MEMORY[0x2383C2210](v30, -1, -1);
      }

      sub_236ECA420();
      v31 = swift_allocError();
      *v32 = 4;
      swift_willThrow();
      if (!v31)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v23 = *v21++;
    --v20;
  }

  while (v23 != v11);
  if (*(v13 + 16))
  {
    v24 = sub_236ECC128(v11);
    if (v25)
    {
      v26 = *(v13 + 56) + 16 * v24;
      v27 = *v26;
      sub_236ECAA74(*v26, *(v26 + 8));
      if (!v22)
      {
        goto LABEL_18;
      }

LABEL_17:

      (*(v42 + 8))(v5, v43);
      (*(v38 + 8))(v10, v41);
      return v27;
    }
  }

  v27 = 0;
  if (v22)
  {
    goto LABEL_17;
  }

LABEL_18:
  v33 = sub_236ECF944();
  v34 = sub_236ECF6A4();
  v35 = v39;
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v39, v33, v34, "Getting Function Proprietary Data", "", v16, 2u);

  MEMORY[0x2383C2210](v16, -1, -1);
  (*(v42 + 8))(v5, v43);
  (*(v38 + 8))(v10, v41);
  return v27;
}

uint64_t RemoteKeylessEntryAction.recipientVehicleID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

CarKey::RemoteKeylessEntryAction __swiftcall RemoteKeylessEntryAction.init(functionID:actionID:vehicleID:)(CarKey::FunctionIdentifier functionID, CarKey::ActionIdentifier actionID, Swift::String vehicleID)
{
  v4 = *actionID.rawValue;
  v3->_countAndFlagsBits = *functionID.rawValue;
  v3->_object = v4;
  v3[1] = vehicleID;
  result.recipientVehicleID = vehicleID;
  result.actionID = actionID;
  result.functionID = functionID;
  return result;
}

uint64_t RemoteKeylessEntryAction.ExecutionRequest.results()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_236ECF6B4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236EC64F4, 0, 0);
}

uint64_t sub_236EC64F4()
{
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_236ECF6E4();
  v0[8] = __swift_project_value_buffer(v3, qword_27DE8BD68);
  sub_236ECF6D4();
  sub_236ECF694();

  v4 = sub_236ECF6D4();
  v5 = sub_236ECF954();
  if (sub_236ECF964())
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_236ECF6A4();
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v4, v5, v8, " Waiting for Remote Keyless Entry Action Results", "", v7, 2u);
    MEMORY[0x2383C2210](v7, -1, -1);
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[4];
  v12 = v0[5];

  (*(v12 + 16))(v10, v9, v11);
  v13 = sub_236ECF724();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[9] = sub_236ECF714();
  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_236EC66C8;
  v17 = v0[2];
  v18 = v0[3];

  return sub_236EC696C(v17, v18);
}

uint64_t sub_236EC66C8()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_236EC68A4;
  }

  else
  {
    v3 = sub_236EC67DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236EC67DC()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  sub_236ECA474(v0[8], " Waiting for Remote Keyless Entry Action Results", 2);

  (*(v5 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_236EC68A4()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  sub_236ECA474(v0[8], " Waiting for Remote Keyless Entry Action Results", 2);

  (*(v5 + 8))(v2, v4);

  v7 = v0[1];
  v8 = v0[11];

  return v7();
}

uint64_t sub_236EC696C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_236EC698C, 0, 0);
}

uint64_t sub_236EC698C()
{
  v1 = *(v0[5] + 16);
  v2 = *(MEMORY[0x277D857C8] + 4);
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
  v0[7] = v4;
  *v3 = v0;
  v3[1] = sub_236EC6A5C;
  v5 = v0[4];
  v6 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v5, v1, &type metadata for ExecutionStatus, v4, v6);
}

uint64_t sub_236EC6A5C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236EC6B90, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_236EC6B90()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = v1;
  v2 = *(v0 + 56);
  v3 = v1;
  sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 24);
    if ([v4 code] == 19)
    {
      v5 = *(v0 + 64);

      sub_236ECA420();
      swift_allocError();
      v7 = 6;
LABEL_14:
      *v6 = v7;
      swift_willThrow();

      v12 = *(v0 + 16);
      goto LABEL_17;
    }

    if ([v4 code] == 12)
    {
      v8 = *(v0 + 64);

      sub_236ECA420();
      swift_allocError();
      v7 = 3;
      goto LABEL_14;
    }

    if ([v4 code] == 13)
    {
      v9 = *(v0 + 64);

      sub_236ECA420();
      swift_allocError();
      v7 = 1;
      goto LABEL_14;
    }

    if ([v4 code] == 18)
    {
      v10 = *(v0 + 64);

      sub_236ECA420();
      swift_allocError();
      v7 = 2;
      goto LABEL_14;
    }

    v11 = [v4 code];

    if (v11 == 14)
    {

      sub_236ECA420();
      swift_allocError();
      v7 = 8;
      goto LABEL_14;
    }

    if ([v4 code] == 15)
    {

      sub_236ECA420();
      swift_allocError();
      v7 = 9;
      goto LABEL_14;
    }
  }

  v13 = *(v0 + 64);

  sub_236ECA420();
  swift_allocError();
  *v14 = 0;
  swift_willThrow();
  v12 = v13;
LABEL_17:

  v15 = *(v0 + 8);

  return v15();
}

uint64_t RemoteKeylessEntryAction.ExecutionRequest.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t RemoteKeylessEntryAction.ExecutionRequest.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest.eventStream.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAC0, &qword_236ED0350);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAC8, &qword_236ED0358);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD0, &qword_236ED0360);
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD8, &qword_236ED0368);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  v21 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStream;
  swift_beginAccess();
  sub_236ECF364(v1 + v21, v20, &qword_27DE8BAD8, &qword_236ED0368);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAE0, &qword_236ED0370);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v20, 1, v22) != 1)
  {
    return (*(v23 + 32))(v33, v20, v22);
  }

  sub_236ECF3CC(v20, &qword_27DE8BAD8, &qword_236ED0368);
  (*(v6 + 104))(v9, *MEMORY[0x277D85778], v5);
  v24 = v33;
  sub_236EC72E8(v33, v13, v9);
  (*(v6 + 8))(v9, v5);
  (*(v23 + 16))(v18, v24, v22);
  (*(v23 + 56))(v18, 0, 1, v22);
  swift_beginAccess();
  sub_236ECF2FC(v18, v1 + v21, &qword_27DE8BAD8, &qword_236ED0368);
  swift_endAccess();
  v26 = v30;
  v25 = v31;
  v27 = v32;
  (*(v30 + 32))(v32, v13, v31);
  (*(v26 + 56))(v27, 0, 1, v25);
  v28 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStreamContinuation;
  swift_beginAccess();
  sub_236ECF2FC(v27, v1 + v28, &qword_27DE8BAC0, &qword_236ED0350);
  return swift_endAccess();
}

uint64_t sub_236EC72E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAC8, &qword_236ED0358);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAE0, &qword_236ED0370);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v12 = &v22 - v11;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAC0, &qword_236ED0350) - 8) + 64);
  v14 = (MEMORY[0x28223BE20])();
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD0, &qword_236ED0360);
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  (*(v4 + 16))(v7, v24, v3);
  v26 = v18;
  sub_236ECF894();
  (*(v9 + 16))(v25, v12, v8);
  sub_236ECF364(v18, v16, &qword_27DE8BAC0, &qword_236ED0350);
  result = (*(v20 + 48))(v16, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    (*(v20 + 32))(v23, v16, v19);
    return sub_236ECF3CC(v18, &qword_27DE8BAC0, &qword_236ED0350);
  }

  return result;
}

uint64_t sub_236EC760C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD8, &qword_236ED0368);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = &v32 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAC8, &qword_236ED0358);
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v32 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAE0, &qword_236ED0370);
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v33);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAC0, &qword_236ED0350);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  v20 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStreamContinuation;
  swift_beginAccess();
  v34 = v1;
  sub_236ECF364(v1 + v20, v19, &qword_27DE8BAC0, &qword_236ED0350);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD0, &qword_236ED0360);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v19, 1, v21) != 1)
  {
    return (*(v22 + 32))(v37, v19, v21);
  }

  sub_236ECF3CC(v19, &qword_27DE8BAC0, &qword_236ED0350);
  v23 = v5;
  v24 = *(v5 + 104);
  v25 = v35;
  v24(v8, *MEMORY[0x277D85778], v35);
  v26 = v37;
  sub_236EC72E8(v12, v37, v8);
  (*(v23 + 8))(v8, v25);
  v27 = v36;
  v28 = v33;
  (*(v9 + 32))(v36, v12, v33);
  (*(v9 + 56))(v27, 0, 1, v28);
  v29 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStream;
  v30 = v34;
  swift_beginAccess();
  sub_236ECF2FC(v27, v30 + v29, &qword_27DE8BAD8, &qword_236ED0368);
  swift_endAccess();
  (*(v22 + 16))(v17, v26, v21);
  (*(v22 + 56))(v17, 0, 1, v21);
  swift_beginAccess();
  sub_236ECF2FC(v17, v30 + v20, &qword_27DE8BAC0, &qword_236ED0350);
  return swift_endAccess();
}

uint64_t sub_236EC7A50(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC30, &qword_236ED0DE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD0, &qword_236ED0360);
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v15 = sub_236ECF764();
  __swift_project_value_buffer(v15, qword_27DE8BD48);
  v16 = sub_236ECF744();
  v17 = sub_236ECF8E4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v11;
    v19 = v10;
    v20 = a1;
    v21 = v7;
    v22 = a2;
    v23 = v6;
    v24 = v18;
    *v18 = 0;
    _os_log_impl(&dword_236EBF000, v16, v17, "Sending ContinuationRequest over the AsyncStream", v18, 2u);
    v25 = v24;
    v6 = v23;
    a2 = v22;
    v7 = v21;
    a1 = v20;
    v10 = v19;
    v11 = v32;
    MEMORY[0x2383C2210](v25, -1, -1);
  }

  sub_236EC760C(v14);
  v26 = *(v3 + OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_session);
  v27 = *(v3 + OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_action + 16);
  v28 = *(v3 + OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_action + 24);
  v34 = a1;
  v35 = a2;
  v36 = *(v3 + OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_action);
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v29 = v26;

  sub_236ECAAC8(a1, a2);
  sub_236ECF874();
  (*(v7 + 8))(v10, v6);
  return (*(v33 + 8))(v14, v11);
}

uint64_t RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest.results()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_236ECF6B4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236EC7DEC, 0, 0);
}

uint64_t sub_236EC7DEC()
{
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_236ECF6E4();
  v0[8] = __swift_project_value_buffer(v3, qword_27DE8BD68);
  sub_236ECF6D4();
  sub_236ECF694();
  v4 = v2;
  v5 = sub_236ECF6D4();
  v6 = sub_236ECF954();
  if (sub_236ECF964())
  {
    v7 = v0[7];
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_236ECF6A4();
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v5, v6, v9, " Waiting for Remote Keyless Entry Enduring Action Results", "", v8, 2u);
    MEMORY[0x2383C2210](v8, -1, -1);
  }

  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[4];
  v13 = v0[5];

  (*(v13 + 16))(v11, v10, v12);
  v14 = sub_236ECF724();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v0[9] = sub_236ECF714();
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_236EC7FBC;
  v18 = v0[2];
  v19 = v0[3];

  return sub_236EC8268(v18, v19);
}

uint64_t sub_236EC7FBC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_236EC819C;
  }

  else
  {
    v3 = sub_236EC80D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236EC80D0()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  sub_236ECA474(v0[8], " Waiting for Remote Keyless Entry Enduring Action Results", 2);

  (*(v5 + 8))(v2, v4);
  sub_236EC881C(v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_236EC819C()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  sub_236ECA474(v0[8], " Waiting for Remote Keyless Entry Enduring Action Results", 2);

  (*(v5 + 8))(v2, v4);
  sub_236EC881C(v6);

  v7 = v0[1];
  v8 = v0[11];

  return v7();
}

uint64_t sub_236EC8268(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_236EC8288, 0, 0);
}

uint64_t sub_236EC8288()
{
  v1 = *(v0[5] + OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_task);
  v2 = *(MEMORY[0x277D857C8] + 4);
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
  v0[7] = v4;
  *v3 = v0;
  v3[1] = sub_236EC8360;
  v5 = v0[4];
  v6 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v5, v1, &type metadata for ExecutionStatus, v4, v6);
}

uint64_t sub_236EC8360()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236ECF644, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest.stop()()
{
  v1 = v0;
  v2 = sub_236ECF6B4();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_236ECF6E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_27DE8BD68);
  (*(v7 + 16))(v10, v11, v6);
  sub_236ECF6D4();
  sub_236ECF694();
  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = sub_236ECF6D4();
  v14 = sub_236ECF954();
  v15 = sub_236ECF6A4();
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v13, v14, v15, " Waiting for Remote Keyless Entry Action Results", "", v12, 2u);
  v16 = *(v0 + OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_session);
  v37 = v1;
  v17 = (v1 + OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_action);
  v18 = *v17;
  v19 = sub_236ECF8C4();
  v20 = v17[2];
  v21 = v17[3];
  v22 = sub_236ECF7C4();
  v23 = [v16 cancelRKEFunction:v19 readerIdentifier:v22];

  if (v23)
  {
    v24 = v23;
    v25 = sub_236ECF654();
    v26 = [v25 code];

    sub_236ECA420();
    v27 = swift_allocError();
    v29 = v26 - 12;
    v30 = v27;
    if (v29 >= 8)
    {
      v31 = 0;
    }

    else
    {
      v31 = 0x600000A00000003uLL >> (8 * v29);
    }

    *v28 = v31;
    swift_willThrow();

    if (v30)
    {
      goto LABEL_8;
    }

LABEL_10:
    v32 = sub_236ECF944();
    v33 = sub_236ECF6A4();
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v13, v32, v33, " Waiting for Remote Keyless Entry Action Results", "", v12, 2u);

    MEMORY[0x2383C2210](v12, -1, -1);
    goto LABEL_11;
  }

  if (!v34[1])
  {
    goto LABEL_10;
  }

LABEL_8:

LABEL_11:
  (*(v35 + 8))(v5, v36);
  (*(v7 + 8))(v10, v6);
  sub_236EC881C(v37);
}

uint64_t sub_236EC881C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD8, &qword_236ED0368);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAC0, &qword_236ED0350);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v26[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD0, &qword_236ED0360);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26[-v16];
  v18 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStreamContinuation;
  swift_beginAccess();
  sub_236ECF364(a1 + v18, v12, &qword_27DE8BAC0, &qword_236ED0350);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_236ECF3CC(v12, &qword_27DE8BAC0, &qword_236ED0350);
  }

  (*(v14 + 32))(v17, v12, v13);
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v20 = sub_236ECF764();
  __swift_project_value_buffer(v20, qword_27DE8BD48);
  v21 = sub_236ECF744();
  v22 = sub_236ECF8E4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_236EBF000, v21, v22, "Finishing event stream", v23, 2u);
    MEMORY[0x2383C2210](v23, -1, -1);
  }

  sub_236ECF884();
  (*(v14 + 8))(v17, v13);
  (*(v14 + 56))(v10, 1, 1, v13);
  swift_beginAccess();
  sub_236ECF2FC(v10, a1 + v18, &qword_27DE8BAC0, &qword_236ED0350);
  swift_endAccess();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAE0, &qword_236ED0370);
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV6CarKey44RemoteKeylessEntryConfigurableEnduringAction24EnduringExecutionRequest_currentEventStream;
  swift_beginAccess();
  sub_236ECF2FC(v5, a1 + v25, &qword_27DE8BAD8, &qword_236ED0368);
  return swift_endAccess();
}

uint64_t RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest.ContinuationRequest.data.getter()
{
  v1 = *v0;
  sub_236ECAAC8(*v0, *(v0 + 8));
  return v1;
}

id RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest.ContinuationRequest.confirm(_:)(uint64_t a1, unint64_t a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = sub_236ECF8C4();
  v10 = sub_236ECF8C4();
  v11 = a2;
  v12 = v10;
  if (v11 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_236ECF674();
  }

  v14 = sub_236ECF7C4();
  v19[0] = 0;
  v15 = [v6 continueExecutingRKEFunction:v9 action:v12 arbitraryData:v13 readerIdentifier:v14 error:v19];

  if (v15)
  {
    result = v19[0];
  }

  else
  {
    v17 = v19[0];
    sub_236ECF664();

    result = swift_willThrow();
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

id RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RemoteKeylessEntryEnduringAction.EnduringExecutionRequest.results()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_236ECF6B4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236EC8FB0, 0, 0);
}

uint64_t sub_236EC8FB0()
{
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_236ECF6E4();
  v0[8] = __swift_project_value_buffer(v3, qword_27DE8BD68);
  sub_236ECF6D4();
  sub_236ECF694();

  v4 = sub_236ECF6D4();
  v5 = sub_236ECF954();
  if (sub_236ECF964())
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_236ECF6A4();
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v4, v5, v8, " Waiting for Remote Keyless Entry Enduring Action Results", "", v7, 2u);
    MEMORY[0x2383C2210](v7, -1, -1);
  }

  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[4];
  v12 = v0[5];

  (*(v12 + 16))(v10, v9, v11);
  v13 = sub_236ECF724();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[9] = sub_236ECF714();
  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_236EC9184;
  v17 = v0[2];
  v18 = v0[3];

  return sub_236EC9428(v17, v18);
}

uint64_t sub_236EC9184()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_236EC9360;
  }

  else
  {
    v3 = sub_236EC9298;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_236EC9298()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  sub_236ECA474(v0[8], " Waiting for Remote Keyless Entry Enduring Action Results", 2);

  (*(v5 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_236EC9360()
{
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  sub_236ECA474(v0[8], " Waiting for Remote Keyless Entry Enduring Action Results", 2);

  (*(v5 + 8))(v2, v4);

  v7 = v0[1];
  v8 = v0[11];

  return v7();
}

uint64_t sub_236EC9428(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_236EC9448, 0, 0);
}

uint64_t sub_236EC9448()
{
  v1 = *(v0[5] + 48);
  v2 = *(MEMORY[0x277D857C8] + 4);
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAA0, &qword_236ED0300);
  v0[7] = v4;
  *v3 = v0;
  v3[1] = sub_236EC9518;
  v5 = v0[4];
  v6 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v5, v1, &type metadata for ExecutionStatus, v4, v6);
}

uint64_t sub_236EC9518()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236EC964C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_236EC964C()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = v1;
  v2 = *(v0 + 56);
  v3 = v1;
  sub_236ECF438(0, &qword_27DE8BAA8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 24);
    if ([v4 code] == 19)
    {
      v5 = *(v0 + 64);

      sub_236ECA420();
      swift_allocError();
      v7 = 6;
LABEL_12:
      *v6 = v7;
      swift_willThrow();

      v11 = *(v0 + 16);
      goto LABEL_15;
    }

    if ([v4 code] == 12)
    {
      v8 = *(v0 + 64);

      sub_236ECA420();
      swift_allocError();
      v7 = 3;
      goto LABEL_12;
    }

    if ([v4 code] == 13)
    {
      v9 = *(v0 + 64);

      sub_236ECA420();
      swift_allocError();
      v7 = 1;
      goto LABEL_12;
    }

    v10 = [v4 code];

    if (v10 == 18)
    {

      sub_236ECA420();
      swift_allocError();
      v7 = 2;
      goto LABEL_12;
    }

    if ([v4 code] == 14)
    {

      sub_236ECA420();
      swift_allocError();
      v7 = 8;
      goto LABEL_12;
    }
  }

  v12 = *(v0 + 64);

  sub_236ECA420();
  swift_allocError();
  *v13 = 0;
  swift_willThrow();
  v11 = v12;
LABEL_15:

  v14 = *(v0 + 8);

  return v14();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RemoteKeylessEntryEnduringAction.EnduringExecutionRequest.stop()()
{
  v33 = sub_236ECF6B4();
  v32 = *(v33 - 8);
  v1 = *(v32 + 64);
  MEMORY[0x28223BE20](v33);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_236ECF6E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DE8BD60 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27DE8BD68);
  v10 = *(v5 + 16);
  v31 = v4;
  v10(v8, v9, v4);
  sub_236ECF6D4();
  sub_236ECF694();
  v11 = swift_slowAlloc();
  *v11 = 0;
  v12 = sub_236ECF6D4();
  v13 = sub_236ECF954();
  v14 = sub_236ECF6A4();
  _os_signpost_emit_with_name_impl(&dword_236EBF000, v12, v13, v14, " Waiting for Remote Keyless Entry Action Results", "", v11, 2u);
  v15 = v0[7];
  v16 = v0[2];
  v17 = sub_236ECF8C4();
  v18 = v0[4];
  v19 = v0[5];
  v20 = sub_236ECF7C4();
  v21 = [v15 cancelRKEFunction:v17 readerIdentifier:v20];

  if (v21)
  {
    v22 = v21;
    v23 = sub_236ECF654();
    v24 = [v23 code];

    sub_236ECA420();
    v26 = swift_allocError();
    if ((v24 - 12) >= 8)
    {
      v27 = 0;
    }

    else
    {
      v27 = 0x600000A00000003uLL >> (8 * (v24 - 12));
    }

    *v25 = v27;
    swift_willThrow();

    if (v26)
    {
      goto LABEL_8;
    }

LABEL_10:
    v28 = sub_236ECF944();
    v29 = sub_236ECF6A4();
    _os_signpost_emit_with_name_impl(&dword_236EBF000, v12, v28, v29, " Waiting for Remote Keyless Entry Action Results", "", v11, 2u);

    MEMORY[0x2383C2210](v11, -1, -1);
    goto LABEL_11;
  }

  if (!v30[1])
  {
    goto LABEL_10;
  }

LABEL_8:

LABEL_11:
  (*(v32 + 8))(v3, v33);
  (*(v5 + 8))(v8, v31);
}

uint64_t RemoteKeylessEntryEnduringAction.EnduringExecutionRequest.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t RemoteKeylessEntryEnduringAction.EnduringExecutionRequest.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

id sub_236EC9DF4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_236EC9E98@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_236EC9EB8()
{
  v1 = *v0;
  sub_236ECFAD4();
  MEMORY[0x2383C1D50](v1);
  return sub_236ECFAF4();
}

uint64_t sub_236EC9F30()
{
  v1 = *v0;
  sub_236ECFAD4();
  MEMORY[0x2383C1D50](v1);
  return sub_236ECFAF4();
}

uint64_t CarKeyErrorCode.hashValue.getter()
{
  v1 = *v0;
  sub_236ECFAD4();
  MEMORY[0x2383C1D50](v1);
  return sub_236ECFAF4();
}

uint64_t sub_236ECA034()
{
  v0 = sub_236ECF764();
  __swift_allocate_value_buffer(v0, qword_27DE8BD48);
  __swift_project_value_buffer(v0, qword_27DE8BD48);
  return sub_236ECF754();
}

uint64_t sub_236ECA0A8()
{
  v0 = sub_236ECF764();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_236ECF6E4();
  __swift_allocate_value_buffer(v5, qword_27DE8BD68);
  __swift_project_value_buffer(v5, qword_27DE8BD68);
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_27DE8BD48);
  (*(v1 + 16))(v4, v6, v0);
  return sub_236ECF6C4();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_236ECA21C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_236ECA2E4;

  return sub_236EC07EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_236ECA2E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
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

unint64_t sub_236ECA420()
{
  result = qword_27DE8BAB0;
  if (!qword_27DE8BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE8BAB0);
  }

  return result;
}

uint64_t sub_236ECA474(uint64_t a1, const char *a2, char a3)
{
  v22 = a2;
  v4 = sub_236ECF6F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_236ECF6B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_236ECF6D4();
  sub_236ECF704();
  v21 = sub_236ECF944();
  result = sub_236ECF964();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v13, v9);
  }

  if ((a3 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_236ECF734();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_236ECF6A4();
      _os_signpost_emit_with_name_impl(&dword_236EBF000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x2383C2210](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_236ECA718(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_236ECF628;

  return sub_236EC3320(a1, v9, v10, v4, v5, v6, v7, v8);
}

uint64_t sub_236ECA80C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_236ECF628;

  return sub_236EC3FFC(a1, v10, v11, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for RemoteKeylessEntryConfigurableEnduringAction.EnduringExecutionRequest()
{
  result = qword_27DE8C520;
  if (!qword_27DE8C520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  v4 = *(v1 + 64);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_236ECA988(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_236ECF628;

  return sub_236EC4850(a1, v9, v10, v4, v5, v6, v7, v8);
}

uint64_t sub_236ECAA74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_236ECAAC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_236ECAA74(a1, a2);
  }

  return a1;
}

unint64_t sub_236ECAAE0()
{
  result = qword_27DE8BAE8;
  if (!qword_27DE8BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE8BAE8);
  }

  return result;
}

unint64_t sub_236ECAB38()
{
  result = qword_27DE8BAF0;
  if (!qword_27DE8BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE8BAF0);
  }

  return result;
}

unint64_t sub_236ECAB90()
{
  result = qword_27DE8BAF8;
  if (!qword_27DE8BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE8BAF8);
  }

  return result;
}

unint64_t sub_236ECABE8()
{
  result = qword_27DE8BB00;
  if (!qword_27DE8BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE8BB00);
  }

  return result;
}

unint64_t sub_236ECAC40()
{
  result = qword_27DE8BB08;
  if (!qword_27DE8BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE8BB08);
  }

  return result;
}

uint64_t dispatch thunk of static CarKeyRemoteControl.start(delegate:subscriptionRange:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v12 = *(v5 + 80);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_236ECAE10;

  return (v16)(a1, a2, a3, a4 & 1, a5);
}

uint64_t sub_236ECAE10(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of CarKeyRemoteControlSession.perform(_:)()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 216))();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_236ECB1B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_236ECB1F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarKeyRemoteControlSession.ContinuationStrategy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CarKeyRemoteControlSession.ContinuationStrategy(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_236ECB430(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_236ECB478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_236ECB528()
{
  sub_236ECB6A8(319, &qword_27DE8BBA0, &qword_27DE8BAE0, &qword_236ED0370);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_236ECB6A8(319, &qword_27DE8BBA8, &qword_27DE8BAD0, &qword_236ED0360);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
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

void sub_236ECB6A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_236ECF974();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_236ECB758(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_236ECB7A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_236ECB804(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_236ECB84C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FunctionStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FunctionStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CarKeyErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CarKeyErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_236ECBAC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_236ECBB90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_236ECECA0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_236ECBB90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_236ECBC9C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_236ECF9F4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_236ECBC9C(uint64_t a1, unint64_t a2)
{
  v4 = sub_236ECBCE8(a1, a2);
  sub_236ECBE18(&unk_2849E27A8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_236ECBCE8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_236ECBF04(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_236ECF9F4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_236ECF804();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_236ECBF04(v10, 0);
        result = sub_236ECF9D4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_236ECBE18(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_236ECBF78(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_236ECBF04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC80, &qword_236ED0E18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_236ECBF78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC80, &qword_236ED0E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_236ECC06C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_236ECFAD4();
  sub_236ECF7F4();
  v6 = sub_236ECFAF4();

  return sub_236ECC194(a1, a2, v6);
}

unint64_t sub_236ECC0E4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_236ECF9A4();

  return sub_236ECC24C(a1, v5);
}

unint64_t sub_236ECC128(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_236ECFAD4();
  MEMORY[0x2383C1D50](a1);
  v4 = sub_236ECFAF4();

  return sub_236ECC314(a1, v4);
}

unint64_t sub_236ECC194(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_236ECFA54())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_236ECC24C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_236ECEA70(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2383C1C20](v9, a1);
      sub_236ECEACC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_236ECC314(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

char *sub_236ECC380(char *a1, int64_t a2, char a3)
{
  result = sub_236ECC3C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_236ECC3A0(char *a1, int64_t a2, char a3)
{
  result = sub_236ECC4E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_236ECC3C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCB8, &qword_236ED0E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_236ECC4E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCB0, &qword_236ED0E38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_236ECC5E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCA8, &qword_236ED0E30);
  result = sub_236ECFA34();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        sub_236ECAA74(v32, *(&v32 + 1));
      }

      v22 = *(v8 + 40);
      sub_236ECFAD4();
      MEMORY[0x2383C1D50](v21);
      result = sub_236ECFAF4();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_236ECC878(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCA0, &qword_236ED0E28);
  result = sub_236ECFA34();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_236ECFAD4();
      MEMORY[0x2383C1D50](v21);
      result = sub_236ECFAF4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

void *sub_236ECCAF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCA8, &qword_236ED0E30);
  v2 = *v0;
  v3 = sub_236ECFA24();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_236ECAA74(v18, *(&v18 + 1));
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

void *sub_236ECCC60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCA0, &qword_236ED0E28);
  v2 = *v0;
  v3 = sub_236ECFA24();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

unint64_t sub_236ECCDAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC50, &qword_236ED0DF8);
    v3 = sub_236ECFA44();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_236ECC06C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_236ECCEA8()
{
  v0 = sub_236ECF774();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_236ECF794();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_236ECF654();
    v13 = [v12 code];

    if (v13 == 17)
    {
      v14 = 11;
    }

    else
    {
      v14 = 0;
    }

    v20 = *(v11 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 24) = v14;
    aBlock[4] = sub_236ECF084;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_236EC1694;
    aBlock[3] = &block_descriptor_173;
    v18 = _Block_copy(aBlock);
    v19 = v5;

    sub_236ECF784();
    v21 = MEMORY[0x277D84F90];
    sub_236ECF480(&qword_27DE8BC68, MEMORY[0x277D85198]);
    v16 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC70, &qword_236ED0E10);
    sub_236ECF4C8(&qword_27DE8BC78, &qword_27DE8BC70, &qword_236ED0E10);
    sub_236ECF984();
    v17 = v18;
    MEMORY[0x2383C1B90](0, v16, v4, v18);
    _Block_release(v17);
    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v16, v19);
  }

  return result;
}

uint64_t sub_236ECD1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_236ECF774();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_236ECF794();
  v23 = *(v13 - 8);
  v14 = *(v23 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = *(result + 80);
    v22 = v13;
    v18 = result;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;
    v19[5] = a3;
    v19[6] = a4;
    aBlock[4] = sub_236ECEF14;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_236EC1694;
    aBlock[3] = &block_descriptor_167;
    v20 = _Block_copy(aBlock);

    sub_236ECF784();
    v24 = MEMORY[0x277D84F90];
    sub_236ECF480(&qword_27DE8BC68, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC70, &qword_236ED0E10);
    sub_236ECF4C8(&qword_27DE8BC78, &qword_27DE8BC70, &qword_236ED0E10);
    sub_236ECF984();
    MEMORY[0x2383C1B90](0, v16, v12, v20);
    _Block_release(v20);
    (*(v9 + 8))(v12, v8);
    (*(v23 + 8))(v16, v22);
  }

  return result;
}

unint64_t sub_236ECD4C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCA0, &qword_236ED0E28);
    v3 = sub_236ECFA44();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_236ECC128(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_236ECD59C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BCA8, &qword_236ED0E30);
  v3 = sub_236ECFA44();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  result = sub_236ECC128(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = a1 + 9;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v10 = (v3[7] + 16 * result);
    *v10 = v4;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_236ECAA74(v4, v6);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v9 - 2);
    v4 = *(v9 - 1);
    v6 = *v9;
    result = sub_236ECC128(v5);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_236ECD6A8(unint64_t a1, void *a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v7 = a1;
  v69 = MEMORY[0x277D84F90];
  a1 = sub_236ECC3A0(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v69;
    v9 = v7;
    v63 = v7;
    v64 = v7 & 0xC000000000000001;
    v60 = v3;
    v61 = v7 & 0xFFFFFFFFFFFFFF8;
    v62 = v5;
    while (1)
    {
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v59 = a1;
        v5 = sub_236ECFA14();
        a1 = v59;
        goto LABEL_3;
      }

      v66 = v6;
      if (v64)
      {
        v10 = MEMORY[0x2383C1C50](v8, v9);
      }

      else
      {
        if (v8 >= *(v61 + 16))
        {
          goto LABEL_45;
        }

        v10 = *(v9 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 integerValue];
      v13 = [a2 getStatusForRKEFunction_];
      v67 = v11;
      if (v13)
      {
        break;
      }

LABEL_23:
      v31 = [a2 getProprietaryDataForRKEFunction_];
      v65 = v8 + 1;
      if (!v31)
      {

        v46 = v62;
        v9 = v63;
        v6 = v66;
        goto LABEL_36;
      }

      v32 = a2;
      v33 = v31;
      v34 = sub_236ECF684();
      a2 = v35;

      v36 = *(a3 + 40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(a3 + 40);
      *(a3 + 40) = 0x8000000000000000;
      v39 = v12;
      v41 = sub_236ECC128(v12);
      v42 = v38[2];
      v43 = (v40 & 1) == 0;
      a1 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_44;
      }

      v44 = v40;
      if (v38[3] >= a1)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v47 = a2;
          a1 = sub_236ECCAF8();
          goto LABEL_31;
        }
      }

      else
      {
        sub_236ECC5E4(a1, isUniquelyReferenced_nonNull_native);
        a1 = sub_236ECC128(v39);
        if ((v44 & 1) != (v45 & 1))
        {
          goto LABEL_50;
        }

        v41 = a1;
      }

      v47 = a2;
LABEL_31:
      a2 = v32;
      if (v44)
      {
        v48 = (v38[7] + 16 * v41);
        v49 = *v48;
        v50 = v48[1];
        *v48 = v34;
        v48[1] = v47;
        sub_236ECE6C4(v49, v50);
      }

      else
      {
        v38[(v41 >> 6) + 8] |= 1 << v41;
        *(v38[6] + 8 * v41) = v39;
        v51 = (v38[7] + 16 * v41);
        *v51 = v34;
        v51[1] = v47;
        v52 = v38[2];
        v23 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v23)
        {
          goto LABEL_47;
        }

        v38[2] = v53;
      }

      *(a3 + 40) = v38;

      v46 = v62;
      v9 = v63;
      v6 = v66;
      v12 = v39;
LABEL_36:
      v70 = v6;
      v55 = *(v6 + 16);
      v54 = *(v6 + 24);
      if (v55 >= v54 >> 1)
      {
        v56 = v12;
        v57 = v9;
        a1 = sub_236ECC3A0((v54 > 1), v55 + 1, 1);
        v9 = v57;
        v12 = v56;
        v6 = v70;
      }

      *(v6 + 16) = v55 + 1;
      *(v6 + 8 * v55 + 32) = v12;
      ++v8;
      if (v65 == v46)
      {
        return v6;
      }
    }

    v14 = v13;
    v15 = a2;
    v16 = [v13 integerValue];
    v17 = *(a3 + 32);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a3 + 32);
    *(a3 + 32) = 0x8000000000000000;
    a2 = v12;
    a1 = sub_236ECC128(v12);
    v21 = v19[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_43;
    }

    v25 = v20;
    if (v19[3] >= v24)
    {
      if ((v18 & 1) == 0)
      {
        v27 = a1;
        sub_236ECCC60();
        a1 = v27;
        if (v25)
        {
          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_236ECC878(v24, v18);
      a1 = sub_236ECC128(a2);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_50;
      }
    }

    if (v25)
    {
LABEL_18:
      *(v19[7] + 8 * a1) = v16;
      v12 = a2;
LABEL_22:

      v30 = *(a3 + 32);
      *(a3 + 32) = v19;

      a2 = v15;
      v11 = v67;
      goto LABEL_23;
    }

LABEL_20:
    v19[(a1 >> 6) + 8] |= 1 << a1;
    *(v19[6] + 8 * a1) = a2;
    *(v19[7] + 8 * a1) = v16;
    v28 = v19[2];
    v23 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v23)
    {
      goto LABEL_46;
    }

    v12 = a2;
    v19[2] = v29;
    goto LABEL_22;
  }

  __break(1u);
LABEL_50:
  result = sub_236ECFA74();
  __break(1u);
  return result;
}

void sub_236ECDB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_236ECF774();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_236ECF794();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    strcpy(v39, "xpcEventName");
    BYTE5(v39[1]) = 0;
    HIWORD(v39[1]) = -5120;
    sub_236ECF9C4();
    if (*(a1 + 16) && (v17 = sub_236ECC0E4(&v40), (v18 & 1) != 0))
    {
      sub_236ECECA0(*(a1 + 56) + 32 * v17, aBlock);
      sub_236ECEACC(&v40);
      if (swift_dynamicCast())
      {
        v36 = v7;
        v20 = v39[0];
        v19 = v39[1];
        if (v39[0] == 0xD000000000000042 && 0x8000000236ED1430 == v39[1] || (sub_236ECFA54() & 1) != 0 || v20 == 0xD00000000000003FLL && 0x8000000236ED1480 == v19)
        {
        }

        else
        {
          v34 = sub_236ECFA54();

          if ((v34 & 1) == 0)
          {
LABEL_29:

            return;
          }
        }

        v25 = sub_236EC19CC();
        v26 = v25[2] + 1;
        v27 = 4;
        while (--v26)
        {
          v28 = *&v25[v27 + 2];
          v29 = *&v25[v27];
          v42 = *&v25[v27 + 4];
          v40 = v29;
          v41 = v28;
          if (v29 != a2 || *(&v29 + 1) != a3)
          {
            v27 += 6;
            if ((sub_236ECFA54() & 1) == 0)
            {
              continue;
            }
          }

          sub_236ECECFC(&v40, aBlock);

          v35 = *(v16 + 80);
          v31 = swift_allocObject();
          v32 = v41;
          *(v31 + 24) = v40;
          *(v31 + 16) = v16;
          *(v31 + 40) = v32;
          *(v31 + 56) = v42;
          aBlock[4] = sub_236ECED8C;
          aBlock[5] = v31;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_236EC1694;
          aBlock[3] = &block_descriptor_161;
          v33 = _Block_copy(aBlock);

          sub_236ECF784();
          v39[0] = MEMORY[0x277D84F90];
          sub_236ECF480(&qword_27DE8BC68, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC70, &qword_236ED0E10);
          sub_236ECF4C8(&qword_27DE8BC78, &qword_27DE8BC70, &qword_236ED0E10);
          sub_236ECF984();
          MEMORY[0x2383C1B90](0, v14, v10, v33);
          _Block_release(v33);
          (*(v36 + 8))(v10, v6);
          (*(v37 + 8))(v14, v11);

          return;
        }

        goto LABEL_29;
      }
    }

    else
    {
      sub_236ECEACC(&v40);
    }

    if (qword_27DE8BD40 != -1)
    {
      swift_once();
    }

    v21 = sub_236ECF764();
    __swift_project_value_buffer(v21, qword_27DE8BD48);
    v22 = sub_236ECF744();
    v23 = sub_236ECF8D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_236EBF000, v22, v23, "Unable to convert event name to string, dropping event", v24, 2u);
      MEMORY[0x2383C2210](v24, -1, -1);
    }
  }
}

uint64_t sub_236ECE210(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_236ECF774();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_236ECF794();
  v23 = *(v13 - 8);
  v14 = *(v23 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = *(result + 80);
    v22 = v13;
    v18 = result;
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;
    v19[5] = a3;
    v19[6] = a4;
    aBlock[4] = sub_236ECEB68;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_236EC1694;
    aBlock[3] = &block_descriptor_155;
    v20 = _Block_copy(aBlock);

    sub_236ECAA74(a1, a2);

    sub_236ECF784();
    v24 = MEMORY[0x277D84F90];
    sub_236ECF480(&qword_27DE8BC68, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC70, &qword_236ED0E10);
    sub_236ECF4C8(&qword_27DE8BC78, &qword_27DE8BC70, &qword_236ED0E10);
    sub_236ECF984();
    MEMORY[0x2383C1B90](0, v16, v12, v20);
    _Block_release(v20);
    (*(v9 + 8))(v12, v8);
    (*(v23 + 8))(v16, v22);
  }

  return result;
}

uint64_t sub_236ECE518(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v6 = sub_236ECF764();
  __swift_project_value_buffer(v6, qword_27DE8BD48);
  v7 = sub_236ECF744();
  v8 = sub_236ECF8E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_236EBF000, v7, v8, "Received continuation request", v9, 2u);
    MEMORY[0x2383C2210](v9, -1, -1);
  }

  v10 = OBJC_IVAR____TtC6CarKeyP33_86CE746C1DFB40AB47D6F76682ACEEE140SESRKESessionContinuationDelegateHandler_delegate;
  swift_beginAccess();
  sub_236ECF364(v3 + v10, v14, &qword_27DE8BC28, &qword_236ED0DD8);
  if (!v15)
  {
    return sub_236ECF3CC(v14, &qword_27DE8BC28, &qword_236ED0DD8);
  }

  sub_236ECF51C(v14, v13);
  sub_236ECF3CC(v14, &qword_27DE8BC28, &qword_236ED0DD8);
  v11 = *__swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
  sub_236EC7A50(a1, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t sub_236ECE6B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_236ECE6C4(a1, a2);
  }

  return a1;
}

uint64_t sub_236ECE6C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

uint64_t sub_236ECE784()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC58, &qword_236ED0E00);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_236ECE82C(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC58, &qword_236ED0E00) - 8);
  if (a2)
  {
    v15.receiver = a2;
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC58, &qword_236ED0E00);
    return sub_236ECF834();
  }

  else if (a1)
  {
    v8 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
    v9 = type metadata accessor for RKESessionDelegate();
    v10 = objc_allocWithZone(v9);
    swift_weakInit();
    swift_weakAssign();
    v15.receiver = v10;
    v15.super_class = v9;
    v11 = a1;
    v12 = objc_msgSendSuper2(&v15, sel_init);
    v13 = *(v8 + 88);
    *(v8 + 88) = v12;
    v14 = v12;

    [v11 setDelegate_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BC58, &qword_236ED0E00);
    return sub_236ECF844();
  }

  else
  {
    result = sub_236ECFA04();
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_236ECEA14(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

uint64_t sub_236ECEB20()
{
  v1 = v0[2];

  sub_236ECE6C4(v0[3], v0[4]);
  v2 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_236ECEB68()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v6 = sub_236ECF764();
  __swift_project_value_buffer(v6, qword_27DE8BD48);
  v7 = sub_236ECF744();
  v8 = sub_236ECF8D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_236EBF000, v7, v8, "Calling delegate didReceivePassthroughData", v9, 2u);
    MEMORY[0x2383C2210](v9, -1, -1);
  }

  v10 = v1[8];
  v11 = v1[9];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 5, v10);
  return (*(v11 + 32))(v1, v2, v3, v4, v5, v10, v11);
}

uint64_t sub_236ECECA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_236ECED34()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_236ECED8C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v3 = sub_236ECF764();
  __swift_project_value_buffer(v3, qword_27DE8BD48);
  v4 = sub_236ECF744();
  v5 = sub_236ECF8D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_236EBF000, v4, v5, "Calling delegate vehicleDidUpdateReport", v6, 2u);
    MEMORY[0x2383C2210](v6, -1, -1);
  }

  v7 = v2[8];
  v8 = v2[9];
  __swift_project_boxed_opaque_existential_1Tm(v2 + 5, v7);
  v9 = *(v1 + 40);
  v11[0] = *(v1 + 24);
  v11[1] = v9;
  v11[2] = *(v1 + 56);
  return (*(v8 + 24))(v2, v11, v7, v8);
}

uint64_t sub_236ECEECC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_236ECEF14()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v6 = sub_236ECF764();
  __swift_project_value_buffer(v6, qword_27DE8BD48);
  v7 = sub_236ECF744();
  v8 = sub_236ECF8D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_236EBF000, v7, v8, "Calling delegate didCreateKey", v9, 2u);
    MEMORY[0x2383C2210](v9, -1, -1);
  }

  v10 = v1[8];
  v11 = v1[9];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 5, v10);
  return (*(v11 + 16))(v1, v2, v3, v4, v5, v10, v11);
}

uint64_t sub_236ECF04C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_236ECF084()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (qword_27DE8BD40 != -1)
  {
    swift_once();
  }

  v3 = sub_236ECF764();
  __swift_project_value_buffer(v3, qword_27DE8BD48);
  v4 = sub_236ECF744();
  v5 = sub_236ECF8D4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_236EBF000, v4, v5, "Calling delegate didInvalidateWithError", v6, 2u);
    MEMORY[0x2383C2210](v6, -1, -1);
  }

  v7 = v1[8];
  v8 = v1[9];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 5, v7);
  v10 = v2;
  return (*(v8 + 8))(v1, &v10, v7, v8);
}

uint64_t sub_236ECF1B0(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_236ECF3CC(v3, &qword_27DE8BAC0, &qword_236ED0350);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE8BAD0, &qword_236ED0360);
  v7 = *(v4 - 8);
  (*(v7 + 16))(v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v3, 0, 1, v4);
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_236ECF2FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_236ECF364(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_236ECF3CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_236ECF42C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_236ECF438(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_236ECF480(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_236ECF4C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_236ECF51C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_236ECF580(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}