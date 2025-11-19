uint64_t sub_23BFCBB18()
{
  v1 = v0[35];
  sub_23BFD333C();
  v2 = swift_allocError();
  *v3 = 2;
  swift_willThrow();

  v4 = v0[16];
  v5 = v2;
  v4(0, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_23BFCBC38()
{
  v1 = v0[12];
  sub_23BF4A9A4((v0 + 2));
  sub_23BF4A9A4((v0 + 7));
  v2 = v0[16];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23BFCBF88(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23BFCC030;

  return sub_23BFCEDCC();
}

uint64_t sub_23BFCC030()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;

  if (v2)
  {
    v5 = sub_23BFF8BB0();

    v6 = v5;
    v7 = 0;
  }

  else
  {
    type metadata accessor for NTKShuffleID();
    v8 = sub_23BFFA450();

    v7 = v8;
    v6 = 0;
    v5 = v8;
  }

  v9 = *(v3 + 16);
  (v9)[2](v9, v7, v6);

  _Block_release(v9);
  v10 = *(v4 + 8);

  return v10();
}

uint64_t sub_23BFCC328(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  v4 = a1;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_23BFCC3F0;

  return sub_23BFD0D38(v4);
}

uint64_t sub_23BFCC3F0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v2)
  {
    v6 = sub_23BFF8BB0();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    type metadata accessor for ParmesanAsset();
    v9 = sub_23BFFA450();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v3 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_23BFCC5C4(int a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  v10 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v10;
  swift_getObjCClassMetadata();
  v11 = a3;
  a8();
}

uint64_t sub_23BFCC6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v16;
  *(v8 + 136) = v15;
  *(v8 + 120) = a6;
  *(v8 + 128) = a8;
  *(v8 + 104) = a4;
  *(v8 + 112) = a5;
  v9 = sub_23BFF8FF0();
  *(v8 + 160) = v9;
  *(v8 + 168) = *(v9 - 8);
  *(v8 + 176) = swift_task_alloc();
  sub_23BF4A264(&qword_27E1E1B00);
  *(v8 + 184) = swift_task_alloc();
  v10 = sub_23BFF9130();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();
  v11 = sub_23BFF8DE0();
  *(v8 + 216) = v11;
  *(v8 + 224) = *(v11 - 8);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v8 + 248) = v12;
  *v12 = v8;
  v12[1] = sub_23BFCC8D4;

  return MEMORY[0x28219B688]();
}

uint64_t sub_23BFCC8D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_23BFCD678;
  }

  else
  {
    v4 = sub_23BFCC9E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23BFCC9E8()
{
  v1 = v0[32];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[28];
    v4 = v0[25];
    v52 = MEMORY[0x277D84F90];
    sub_23BFCE1FC(0, v2, 0);
    v5 = v52;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v50 = *(v4 + 56);
    v51 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[26];
      v10 = v0[24];
      v51(v9, v7, v10);
      sub_23BFF9110();
      (*v8)(v9, v10);
      v12 = *(v52 + 16);
      v11 = *(v52 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_23BFCE1FC(v11 > 1, v12 + 1, 1);
      }

      v13 = v0[30];
      v14 = v0[27];
      *(v52 + 16) = v12 + 1;
      (*(v3 + 32))(v52 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v13, v14);
      v7 += v50;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v15 = sub_23BFC7DEC(v0[14], v5, MEMORY[0x277CC95F0], &qword_27E1E2658, MEMORY[0x277CC95F0]);

  if (v15)
  {
    if (qword_27E1DFDD0 != -1)
    {
      swift_once();
    }

    v16 = v0[15];
    v17 = sub_23BFF92B0();
    sub_23BF4A22C(v17, qword_27E1EB540);
    v18 = v16;
    v19 = sub_23BFF9290();
    v20 = sub_23BFFA640();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[15];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v21;
      *v23 = v21;
      v24 = v21;
      _os_log_impl(&dword_23BF0C000, v19, v20, "streamAssets(daily: already tracking %@; streaming the assets", v22, 0xCu);
      sub_23BF4B2D4(v23, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v23, -1, -1);
      MEMORY[0x23EEC4DF0](v22, -1, -1);
    }

    v0[5] = sub_23BF4A264(&qword_27E1E1AF8);
    v0[6] = swift_getOpaqueTypeConformance2();
    sub_23BF4AD24(v0 + 2);
    sub_23BFF8EF0();
  }

  else
  {
    if (qword_27E1DFDD0 != -1)
    {
      swift_once();
    }

    v25 = v0[15];
    v26 = sub_23BFF92B0();
    sub_23BF4A22C(v26, qword_27E1EB540);
    v27 = v25;
    v28 = sub_23BFF9290();
    v29 = sub_23BFFA640();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v0[15];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v30;
      *v32 = v30;
      v33 = v30;
      _os_log_impl(&dword_23BF0C000, v28, v29, "streamAssets(daily: start tracking %@; new album", v31, 0xCu);
      sub_23BF4B2D4(v32, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v32, -1, -1);
      MEMORY[0x23EEC4DF0](v31, -1, -1);
    }

    v35 = v0[28];
    v34 = v0[29];
    v37 = v0[26];
    v36 = v0[27];
    v38 = v0[24];
    v39 = v0[25];
    v40 = v0[14];

    (*(v35 + 16))(v34, v40, v36);
    sub_23BFF9120();
    v0[5] = sub_23BF4A264(&qword_27E1E2650);
    v0[6] = swift_getOpaqueTypeConformance2();
    sub_23BF4AD24(v0 + 2);
    sub_23BFF8F30();
    (*(v39 + 8))(v37, v38);
  }

  v41 = v0[5];
  v42 = sub_23BF4C484(v0 + 2, v41);
  v43 = *(v41 - 8);
  v44 = swift_task_alloc();
  (*(v43 + 16))(v44, v42, v41);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_23BF4AD24(v0 + 7);
  sub_23BFFA560();

  v45 = v0[10];
  v46 = v0[11];
  sub_23BF4C520((v0 + 7), v45);
  v47 = swift_task_alloc();
  v0[34] = v47;
  *v47 = v0;
  v47[1] = sub_23BFCD064;
  v48 = v0[23];

  return MEMORY[0x282200310](v48, 0, 0, v0 + 12, v45, v46);
}

uint64_t sub_23BFCD064()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_23BFCD778;
  }

  else
  {
    v2 = sub_23BFCD178;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23BFCD178()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_23BF4A9A4((v0 + 7));
    if (qword_27E1DFDD0 != -1)
    {
      swift_once();
    }

    v4 = v0[15];
    v5 = sub_23BFF92B0();
    sub_23BF4A22C(v5, qword_27E1EB540);
    v6 = v4;
    v7 = sub_23BFF9290();
    v8 = sub_23BFFA630();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[15];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v9;
      *v11 = v9;
      v12 = v9;
      _os_log_impl(&dword_23BF0C000, v7, v8, "streamAssetsInDaily: finished streaming assets for daily: %@", v10, 0xCu);
      sub_23BF4B2D4(v11, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v11, -1, -1);
      MEMORY[0x23EEC4DF0](v10, -1, -1);
    }

    v13 = v0[18];

    v13();
    sub_23BF4A9A4((v0 + 2));
    goto LABEL_13;
  }

  (*(v3 + 32))(v0[22], v1, v2);
  if (qword_27E1DFDD0 != -1)
  {
    swift_once();
  }

  v14 = v0[15];
  v15 = sub_23BFF92B0();
  sub_23BF4A22C(v15, qword_27E1EB540);
  v16 = v14;
  v17 = sub_23BFF9290();
  v18 = sub_23BFFA630();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[15];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v19;
    *v21 = v19;
    v22 = v19;
    _os_log_impl(&dword_23BF0C000, v17, v18, "streamAssets(album: received asset from daemon for daily: %@", v20, 0xCu);
    sub_23BF4B2D4(v21, &qword_27E1E0B50);
    MEMORY[0x23EEC4DF0](v21, -1, -1);
    MEMORY[0x23EEC4DF0](v20, -1, -1);
  }

  v23 = v0[35];
  v24 = v0[22];

  v25 = sub_23BFD05EC(v24);
  if (v23)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);
    sub_23BF4A9A4((v0 + 2));
    sub_23BF4A9A4((v0 + 7));
    v26 = v0[16];
    v27 = v23;
    v26(0, v23);

LABEL_13:

    v28 = v0[1];

    return v28();
  }

  v30 = v0[16];
  if (v25)
  {
    v31 = v25;
    sub_23BF4A264(&qword_27E1E05E0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_23C001BA0;
    *(v32 + 32) = v31;
    v33 = v31;
    v30(v32, 0);
  }

  else
  {
    sub_23BFD333C();
    v34 = swift_allocError();
    *v35 = 4;
    v30(0, v34);
  }

  (*(v0[21] + 8))(v0[22], v0[20]);
  v36 = v0[10];
  v37 = v0[11];
  sub_23BF4C520((v0 + 7), v36);
  v38 = swift_task_alloc();
  v0[34] = v38;
  *v38 = v0;
  v38[1] = sub_23BFCD064;
  v39 = v0[23];

  return MEMORY[0x282200310](v39, 0, 0, v0 + 12, v36, v37);
}

uint64_t sub_23BFCD678()
{
  v1 = v0[33];
  sub_23BFD333C();
  v2 = swift_allocError();
  *v3 = 3;
  swift_willThrow();

  v4 = v0[16];
  v5 = v2;
  v4(0, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_23BFCD778()
{
  v1 = v0[12];
  sub_23BF4A9A4((v0 + 2));
  sub_23BF4A9A4((v0 + 7));
  v2 = v0[16];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

id sub_23BFCD97C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanPhotoProcessor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BFCD9D8(uint64_t a1)
{
  result = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v3 = type metadata accessor for ParmesanTimeLayout();
        v12 = objc_allocWithZone(v3);
        *&v12[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
        *&v12[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 0;
        v19.receiver = v12;
        v5 = &v19;
      }

      else
      {
        if (a1 != 8)
        {
          return result;
        }

        v3 = type metadata accessor for ParmesanTimeLayout();
        v8 = objc_allocWithZone(v3);
        *&v8[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 1;
        *&v8[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 0;
        v20 = v8;
        v5 = &v20;
      }
    }

    else if (a1 == 5)
    {
      v3 = type metadata accessor for ParmesanTimeLayout();
      v10 = objc_allocWithZone(v3);
      *&v10[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
      *&v10[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 3;
      v17 = v10;
      v5 = &v17;
    }

    else
    {
      v3 = type metadata accessor for ParmesanTimeLayout();
      v6 = objc_allocWithZone(v3);
      *&v6[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 1;
      *&v6[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 3;
      v18 = v6;
      v5 = &v18;
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      v3 = type metadata accessor for ParmesanTimeLayout();
      v11 = objc_allocWithZone(v3);
      *&v11[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
      *&v11[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 2;
      v15 = v11;
      v5 = &v15;
    }

    else
    {
      v3 = type metadata accessor for ParmesanTimeLayout();
      v7 = objc_allocWithZone(v3);
      *&v7[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 1;
      *&v7[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 2;
      v16 = v7;
      v5 = &v16;
    }
  }

  else if (a1 == 1)
  {
    v3 = type metadata accessor for ParmesanTimeLayout();
    v9 = objc_allocWithZone(v3);
    *&v9[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
    *&v9[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 1;
    v13 = v9;
    v5 = &v13;
  }

  else
  {
    if (a1 != 2)
    {
      return result;
    }

    v3 = type metadata accessor for ParmesanTimeLayout();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 1;
    *&v4[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 1;
    v14 = v4;
    v5 = &v14;
  }

  v5->super_class = v3;
  return [(objc_super *)v5 init];
}

uint64_t sub_23BFCDC6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23BF4BF18;

  return v6();
}

uint64_t sub_23BFCDD54(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23BF4A414;

  return v7();
}

uint64_t sub_23BFCDE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_23BF4B33C(a3, v23 - v10, &qword_27E1E0510);
  v12 = sub_23BFFA540();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23BF4B2D4(v11, &qword_27E1E0510);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23BFFA530();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_23BFFA4C0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_23BFFA380() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_23BF4B2D4(a3, &qword_27E1E0510);

    return v21;
  }

LABEL_8:
  sub_23BF4B2D4(a3, &qword_27E1E0510);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

char *sub_23BFCE138(char *a1, int64_t a2, char a3)
{
  result = sub_23BFCE2C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23BFCE158(char *a1, int64_t a2, char a3)
{
  result = sub_23BFCE3CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23BFCE178(void *a1, int64_t a2, char a3)
{
  result = sub_23BFCE6D0(a1, a2, a3, *v3, &qword_27E1E2690, &unk_23C008A68, &qword_27E1E0928);
  *v3 = result;
  return result;
}

size_t sub_23BFCE1B8(size_t a1, int64_t a2, char a3)
{
  result = sub_23BFCE4F4(a1, a2, a3, *v3, &qword_27E1E0B60, &unk_23C0023E0, MEMORY[0x277D3B350]);
  *v3 = result;
  return result;
}

size_t sub_23BFCE1FC(size_t a1, int64_t a2, char a3)
{
  result = sub_23BFCE4F4(a1, a2, a3, *v3, &qword_27E1E2640, &unk_23C008918, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_23BFCE240(void *a1, int64_t a2, char a3)
{
  result = sub_23BFCE6D0(a1, a2, a3, *v3, &qword_27E1E2698, &unk_23C008A78, &unk_27E1E09B0);
  *v3 = result;
  return result;
}

char *sub_23BFCE280(char *a1, int64_t a2, char a3)
{
  result = sub_23BFCE804(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23BFCE2A0(void *a1, int64_t a2, char a3)
{
  result = sub_23BFCE914(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23BFCE2C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BF4A264(&unk_27E1E0990);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23BFCE3CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BF4A264(&qword_27E1E26A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

size_t sub_23BFCE4F4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_23BF4A264(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_23BFCE6D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_23BF4A264(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_23BF4A264(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_23BFCE804(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BF4A264(&qword_27E1E11E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23BFCE914(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_23BF4A264(&qword_27E1E2688);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_23BF4A264(&qword_27E1E25D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_23BFCEA64(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_23BFE2D80(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_23BFE6B90(v16, v6 & 1);
    v11 = sub_23BFE2D80(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for ParmesanTimeLayout();
    v11 = sub_23BFFAD10();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_23BFE88AC();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_23BF4A264(&qword_27E1E0538);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_23BFFA9F0();
    MEMORY[0x23EEC3090](0xD00000000000001BLL, 0x800000023C0121C0);
    type metadata accessor for ParmesanTimeLayout();
    sub_23BFFAA90();
    MEMORY[0x23EEC3090](39, 0xE100000000000000);
    sub_23BFFAB00();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = sub_23BFE2D80(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_23BFE6B90(v32, 1);
        v28 = sub_23BFE2D80(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v9;
      *(v34[7] + 8 * v28) = v10;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_23BFCEDCC()
{
  v1 = sub_23BFF8DE0();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v2 = sub_23BFF91A0();
  v0[7] = v2;
  v0[8] = *(v2 - 8);
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BFCEEF0, 0, 0);
}

uint64_t sub_23BFCEEF0()
{
  if (qword_27E1DFE20 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_23BFCEFB8;

  return MEMORY[0x28219B6A0]();
}

uint64_t sub_23BFCEFB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_23BFCF114, 0, 0);
}

uint64_t sub_23BFCF114()
{
  receiver = v0[6].receiver;
  v2 = receiver[2];
  if (v2)
  {
    v3 = v0[4].receiver;
    super_class = v0[2].super_class;
    v27 = MEMORY[0x277D84F90];
    sub_23BFFAA60();
    v5 = v3[2];
    v3 += 2;
    v6 = receiver + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v23 = v3[7];
    v24 = v5;
    v21 = (v3 - 1);
    v22 = (super_class + 8);
    do
    {
      v26 = v2;
      v8 = v0[4].super_class;
      v7 = v0[5].receiver;
      v10 = v0[3].receiver;
      v9 = v0[3].super_class;
      v25 = v0[2].receiver;
      v24(v7, v6, v9);
      v24(v8, v7, v9);
      v11 = type metadata accessor for NTKShuffleID();
      v12 = objc_allocWithZone(v11);
      *&v12[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_people] = sub_23BFF9180();
      v12[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_pets] = sub_23BFF9160() & 1;
      v12[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_nature] = sub_23BFF9170() & 1;
      v12[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_cityscape] = sub_23BFF9190() & 1;
      sub_23BFF9140();
      v13 = sub_23BFF8DB0();
      v15 = v14;
      (*v22)(v10, v25);
      v16 = &v12[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_uuidString];
      *v16 = v13;
      v16[1] = v15;
      v0[1].receiver = v12;
      v0[1].super_class = v11;
      objc_msgSendSuper2(v0 + 1, sel_init);
      v17 = *v21;
      (*v21)(v8, v9);
      v17(v7, v9);
      sub_23BFFAA40();
      sub_23BFFAA70();
      sub_23BFFAA80();
      sub_23BFFAA50();
      v6 += v23;
      v2 = v26 - 1;
    }

    while (v26 != 1);

    v18 = v27;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v19 = v0->super_class;

  return v19(v18);
}

id sub_23BFCF3BC(uint64_t a1, char *a2)
{
  v86 = a2;
  v81 = sub_23BFF90C0();
  v80 = *(v81 - 8);
  v3 = MEMORY[0x28223BE20](v81);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v77 - v6;
  v84 = sub_23BFF90A0();
  v8 = *(v84 - 8);
  v9 = MEMORY[0x28223BE20](v84);
  v83 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v82 = &v77 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v77 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v77 - v16;
  v18 = sub_23BFF8DE0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23BFF9040();
  v85 = sub_23BFCD9D8(v22);
  if (v85)
  {
    sub_23BFF8F90();
    v23 = sub_23BFF9020();
    v25 = v24;
    v26 = *(v19 + 8);
    v81 = v18;
    v80 = v19 + 8;
    v79 = v26;
    v26(v21, v18);
    if (v25)
    {
      v27 = type metadata accessor for ParmesanAssetMask();
      v28 = objc_allocWithZone(v27);
      v29 = &v28[OBJC_IVAR___NTKParmesanAssetMask_imageName];
      *v29 = v23;
      v29[1] = v25;
      *&v28[OBJC_IVAR___NTKParmesanAssetMask_style] = 0;
      v87.receiver = v28;
      v87.super_class = v27;
      v78 = objc_msgSendSuper2(&v87, sel_init);
    }

    else
    {
      v78 = 0;
    }

    sub_23BFF9030();
    sub_23BFF9060();
    v46 = v45;
    v47 = *(v8 + 8);
    v48 = v84;
    v47(v17, v84);
    sub_23BFF9030();
    sub_23BFF9070();
    v50 = v49;
    v47(v15, v48);
    v51 = v82;
    sub_23BFF9030();
    sub_23BFF9080();
    v53 = v52;
    v47(v51, v48);
    v54 = v83;
    sub_23BFF9030();
    sub_23BFF9090();
    v56 = v55;
    v47(v54, v48);
    v57 = type metadata accessor for ParmesanCrop();
    v58 = objc_allocWithZone(v57);
    v59 = type metadata accessor for ParmesanPoint();
    v60 = objc_allocWithZone(v59);
    *&v60[OBJC_IVAR___NTKParmesanPoint_x] = v46;
    *&v60[OBJC_IVAR___NTKParmesanPoint_y] = v50;
    v91.receiver = v60;
    v91.super_class = v59;
    *&v58[OBJC_IVAR___NTKParmesanCrop_origin] = objc_msgSendSuper2(&v91, sel_init);
    v61 = type metadata accessor for ParmesanSize();
    v62 = objc_allocWithZone(v61);
    *&v62[OBJC_IVAR___NTKParmesanSize_width] = v53;
    *&v62[OBJC_IVAR___NTKParmesanSize_height] = v56;
    v90.receiver = v62;
    v90.super_class = v61;
    *&v58[OBJC_IVAR___NTKParmesanCrop_size] = objc_msgSendSuper2(&v90, sel_init);
    v89.receiver = v58;
    v89.super_class = v57;
    v63 = objc_msgSendSuper2(&v89, sel_init);
    sub_23BFF8F90();
    v64 = sub_23BFF9010();
    v66 = v65;
    v79(v21, v81);
    v38 = v85;
    v67 = v85;
    sub_23BFF9050();
    v69 = v68;
    LOBYTE(v58) = sub_23BFF9000();
    v70 = type metadata accessor for ParmesanAssetLayout();
    v71 = objc_allocWithZone(v70);
    v72 = OBJC_IVAR___NTKParmesanAssetLayout_mask;
    *&v71[OBJC_IVAR___NTKParmesanAssetLayout_mask] = 0;
    v73 = OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis;
    *&v71[OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis] = 0;
    v74 = OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness;
    *&v71[OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness] = 0;
    *&v71[OBJC_IVAR___NTKParmesanAssetLayout_originalCrop] = v63;
    v75 = &v71[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName];
    *v75 = v64;
    v75[1] = v66;
    *&v71[v72] = v78;
    *&v71[OBJC_IVAR___NTKParmesanAssetLayout_timeLayout] = v67;
    *&v71[v73] = 0;
    *&v71[v74] = v69;
    v71[OBJC_IVAR___NTKParmesanAssetLayout_userEdited] = v58 & 1;
    v88.receiver = v71;
    v88.super_class = v70;
    objc_msgSendSuper2(&v88, &selRef_nature);
  }

  else
  {
    v86 = v5;
    v30 = v7;
    v31 = v80;
    v32 = v81;
    if (qword_27E1DFDD0 != -1)
    {
      swift_once();
    }

    v33 = sub_23BFF92B0();
    sub_23BF4A22C(v33, qword_27E1EB540);
    v34 = *(v31 + 16);
    v34(v30, a1, v32);
    v35 = sub_23BFF9290();
    v36 = sub_23BFFA650();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v85;
    if (v37)
    {
      v39 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v92[0] = v84;
      *v39 = 136315394;
      *(v39 + 4) = sub_23BF62294(0xD000000000000024, 0x800000023C0124C0, v92);
      *(v39 + 12) = 2080;
      v34(v86, v30, v32);
      v40 = sub_23BFFA360();
      v42 = v41;
      (*(v31 + 8))(v30, v32);
      v43 = sub_23BF62294(v40, v42, v92);

      *(v39 + 14) = v43;
      _os_log_impl(&dword_23BF0C000, v35, v36, "%s: no timeLayout found on storedLayout: [%s]", v39, 0x16u);
      v44 = v84;
      swift_arrayDestroy();
      MEMORY[0x23EEC4DF0](v44, -1, -1);
      MEMORY[0x23EEC4DF0](v39, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
    }
  }

  return v38;
}

id sub_23BFCFB68(char *a1, uint64_t a2)
{
  v99 = a2;
  v97 = sub_23BFF8FF0();
  v94 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v90 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v4 - 8);
  v96 = &v88 - v5;
  v6 = sub_23BF4A264(&qword_27E1E0B80);
  MEMORY[0x28223BE20](v6 - 8);
  v95 = &v88 - v7;
  v8 = sub_23BFF8DE0();
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x28223BE20](v8);
  v91 = (&v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_23BF4A264(&qword_27E1E2628);
  MEMORY[0x28223BE20](v10);
  v12 = &v88 - v11;
  v13 = sub_23BFF8FE0();
  v14 = v13;
  v15 = v13 + 64;
  v16 = 1 << *(v13 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v13 + 64);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  v98 = MEMORY[0x277D84F90];
  v100 = a1;
  if (!v18)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v22 = v21 | (v20 << 6);
      v23 = *(v14 + 56);
      v24 = *(*(v14 + 48) + 8 * v22);
      v25 = sub_23BFF90C0();
      v26 = *(v25 - 8);
      v27 = v23 + *(v26 + 72) * v22;
      v28 = *(v10 + 48);
      (*(v26 + 16))(&v12[v28], v27, v25);
      *v12 = v24;
      a1 = v100;
      v29 = sub_23BFCF3BC(&v12[v28], v100);
      v31 = v30;
      sub_23BF4B2D4(v12, &qword_27E1E2628);
      if (v29)
      {
        break;
      }

      if (!v18)
      {
        goto LABEL_6;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = sub_23BF61FD0(0, v98[2] + 1, 1, v98);
    }

    v34 = v98[2];
    v33 = v98[3];
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v88 = v98[2];
      v89 = v34 + 1;
      v38 = sub_23BF61FD0((v33 > 1), v34 + 1, 1, v98);
      v34 = v88;
      v35 = v89;
      v98 = v38;
    }

    v36 = v98;
    v98[2] = v35;
    v37 = &v36[2 * v34];
    v37[4] = v29;
    v37[5] = v31;
  }

  while (v18);
  while (1)
  {
LABEL_6:
    v32 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_20;
    }

    if (v32 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v32);
    ++v20;
    if (v18)
    {
      v20 = v32;
      goto LABEL_4;
    }
  }

  v39 = sub_23BFF8FB0();
  v40 = sub_23BFCD9D8(v39);
  if (v40)
  {
    v41 = v40;
    v42 = v91;
    sub_23BFF8F90();
    v43 = sub_23BFF8FA0();
    v89 = v44;
    v90 = v43;
    (*(v92 + 8))(v42, v93);
    v45 = sub_23BFF8D90();
    v46 = *(*(v45 - 8) + 56);
    v46(v95, 1, 1, v45);
    v47 = sub_23BFF8D10();
    v48 = *(v47 - 8);
    v49 = v96;
    (*(v48 + 16))(v96, v99, v47);
    v50 = *(v48 + 56);
    v93 = v47;
    v50(v49, 0, 1, v47);
    if (v98[2])
    {
      sub_23BF4A264(&qword_27E1E2638);
      v51 = sub_23BFFAB50();
    }

    else
    {
      v51 = MEMORY[0x277D84F98];
    }

    v102[0] = v51;

    sub_23BFCEA64(v67, 1, v102);

    v88 = v102[0];
    v98 = sub_23BFF8FC0();
    v92 = v68;
    v91 = type metadata accessor for ParmesanAsset();
    v69 = objc_allocWithZone(v91);
    v70 = OBJC_IVAR___NTKParmesanAsset_modificationDate;
    v46(&v69[OBJC_IVAR___NTKParmesanAsset_modificationDate], 1, 1, v45);
    v71 = OBJC_IVAR___NTKParmesanAsset_layouts;
    v72 = v41;
    *&v69[v71] = sub_23BFE4298(MEMORY[0x277D84F90]);
    v73 = &v69[OBJC_IVAR___NTKParmesanAsset_accessibilityDescription];
    *v73 = 0;
    *(v73 + 1) = 0;
    v74 = OBJC_IVAR___NTKParmesanAsset_videoInfo;
    *&v69[OBJC_IVAR___NTKParmesanAsset_videoInfo] = 0;
    v75 = OBJC_IVAR___NTKParmesanAsset_resourceDirectory;
    v50(&v69[OBJC_IVAR___NTKParmesanAsset_resourceDirectory], 1, 1, v93);
    *&v69[OBJC_IVAR___NTKParmesanAsset_photoVersion] = 10;
    v76 = &v69[OBJC_IVAR___NTKParmesanAsset_localIdentifier];
    v77 = v89;
    *v76 = v90;
    v76[1] = v77;
    swift_beginAccess();
    v78 = v95;
    sub_23BF663D8(v95, &v69[v70], &qword_27E1E0B80);
    swift_endAccess();
    v79 = &v69[OBJC_IVAR___NTKParmesanAsset_presentationSize];
    *v79 = 0;
    *(v79 + 1) = 0;
    v80 = *&v69[v74];
    *&v69[v74] = 0;

    swift_beginAccess();
    v81 = v96;
    sub_23BF663D8(v96, &v69[v75], &qword_27E1E0B78);
    swift_endAccess();
    *&v69[OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout] = v72;
    swift_beginAccess();
    *&v69[v71] = v88;
    v82 = v72;

    v83 = v92;
    *v73 = v98;
    *(v73 + 1) = v83;

    v101.receiver = v69;
    v84 = v100;
    v101.super_class = v91;
    v85 = objc_msgSendSuper2(&v101, sel_init);

    sub_23BF4B2D4(v81, &qword_27E1E0B78);
    sub_23BF4B2D4(v78, &qword_27E1E0B80);
    v66 = v85;
    sub_23BFDDE0C();

    (*(v48 + 8))(v99, v93);
    (*(v94 + 8))(v84, v97);
    return v66;
  }

  if (qword_27E1DFDD0 != -1)
  {
    goto LABEL_28;
  }

LABEL_20:
  v52 = sub_23BFF92B0();
  sub_23BF4A22C(v52, qword_27E1EB540);
  v53 = v94;
  v54 = v90;
  v55 = v97;
  (*(v94 + 16))(v90, a1, v97);
  v56 = sub_23BFF9290();
  v57 = sub_23BFFA650();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v102[0] = v59;
    *v58 = 136315394;
    *(v58 + 4) = sub_23BF62294(0xD000000000000024, 0x800000023C0124C0, v102);
    *(v58 + 12) = 2080;
    sub_23BFD460C(&qword_27E1E2630, MEMORY[0x277D3B350]);
    v60 = sub_23BFFAC70();
    v62 = v61;
    v63 = *(v53 + 8);
    v63(v54, v97);
    v64 = sub_23BF62294(v60, v62, v102);
    v55 = v97;

    *(v58 + 14) = v64;
    _os_log_impl(&dword_23BF0C000, v56, v57, "%s: No preferredLayout found on storedPhoto [%s]", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC4DF0](v59, -1, -1);
    MEMORY[0x23EEC4DF0](v58, -1, -1);

    v65 = sub_23BFF8D10();
    (*(*(v65 - 8) + 8))(v99, v65);
  }

  else
  {

    v86 = sub_23BFF8D10();
    (*(*(v86 - 8) + 8))(v99, v86);
    v63 = *(v53 + 8);
    v63(v54, v55);
  }

  v66 = 0;
  v63(a1, v55);
  return v66;
}

NSObject *sub_23BFD05EC(uint64_t a1)
{
  v2 = sub_23BFF8FF0();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v58 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23BFF8DE0();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_23BFF90C0();
  v6 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BFF8D10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v50 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v51 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v51);
  v50 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v57 = &v50 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - v24;
  v26 = sub_23BFF8FB0();
  v62 = a1;
  v27 = sub_23BFF8FE0();
  if (*(v27 + 16) && (v28 = sub_23BFE571C(v26), (v29 & 1) != 0))
  {
    v30 = v8;
    (*(v6 + 16))(v8, *(v27 + 56) + *(v6 + 72) * v28, v61);

    v31 = v52;
    sub_23BFF8F90();
    sub_23BFF90B0();
    (*(v53 + 8))(v31, v54);
    (*(v6 + 8))(v30, v61);
    v32 = v25;
    sub_23BFF8C80();
    (*(v10 + 8))(v16, v9);
    (*(v10 + 56))(v25, 0, 1, v9);
  }

  else
  {

    v32 = v25;
    (*(v10 + 56))(v25, 1, 1, v9);
  }

  sub_23BF4B33C(v32, v22, &qword_27E1E0B78);
  if ((*(v10 + 48))(v22, 1, v9) == 1)
  {
    sub_23BF4B2D4(v22, &qword_27E1E0B78);
    if (qword_27E1DFDD0 != -1)
    {
      swift_once();
    }

    v33 = sub_23BFF92B0();
    sub_23BF4A22C(v33, qword_27E1EB540);
    v34 = v57;
    sub_23BF4B33C(v32, v57, &qword_27E1E0B78);
    v35 = sub_23BFF9290();
    v36 = sub_23BFFA650();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v63 = v38;
      *v37 = 136315138;
      sub_23BF4B33C(v34, v50, &qword_27E1E0B78);
      v39 = sub_23BFFA360();
      v40 = v34;
      v41 = v39;
      v43 = v42;
      sub_23BF4B2D4(v40, &qword_27E1E0B78);
      v44 = sub_23BF62294(v41, v43, &v63);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_23BF0C000, v35, v36, "processStoredPhoto: daemon provided StoredPhoto is not on disk: [%s]", v37, 0xCu);
      sub_23BF4A9A4(v38);
      MEMORY[0x23EEC4DF0](v38, -1, -1);
      MEMORY[0x23EEC4DF0](v37, -1, -1);
    }

    else
    {

      sub_23BF4B2D4(v34, &qword_27E1E0B78);
    }

    sub_23BFD333C();
    swift_allocError();
    *v48 = 5;
    swift_willThrow();
    sub_23BF4B2D4(v32, &qword_27E1E0B78);
  }

  else
  {
    v45 = v56;
    (*(v10 + 32))(v56, v22, v9);
    v46 = v58;
    (*(v59 + 16))(v58, v62, v60);
    v47 = v55;
    (*(v10 + 16))(v55, v45, v9);
    v35 = sub_23BFCFB68(v46, v47);
    (*(v10 + 8))(v45, v9);
    sub_23BF4B2D4(v32, &qword_27E1E0B78);
  }

  return v35;
}

uint64_t sub_23BFD0D38(uint64_t a1)
{
  v1[2] = a1;
  sub_23BF4A264(&qword_27E1E1B00);
  v1[3] = swift_task_alloc();
  v2 = sub_23BFF8FF0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = sub_23BF4A264(&qword_27E1E2678);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_23BF4A264(&qword_27E1E2680);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_23BF4A264(&qword_27E1E0BA8);
  v1[16] = swift_task_alloc();
  v5 = sub_23BFF8DE0();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BFD0FC4, 0, 0);
}

uint64_t sub_23BFD0FC4()
{
  v43 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];

  sub_23BFF8DA0();

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_23BF4B2D4(v0[16], &qword_27E1E0BA8);
    if (qword_27E1DFDD0 != -1)
    {
      swift_once();
    }

    v4 = v0[2];
    v5 = sub_23BFF92B0();
    sub_23BF4A22C(v5, qword_27E1EB540);
    v6 = v4;
    v7 = sub_23BFF9290();
    v8 = sub_23BFFA650();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[2];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v9;
      *v11 = v9;
      v12 = v9;
      _os_log_impl(&dword_23BF0C000, v7, v8, "fetchAssetsInGalleryShuffle: bad uuid! %@", v10, 0xCu);
      sub_23BF4B2D4(v11, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v11, -1, -1);
      MEMORY[0x23EEC4DF0](v10, -1, -1);
    }

    v13 = v0[1];
    v14 = MEMORY[0x277D84F90];

    return v13(v14);
  }

  else
  {
    (*(v0[18] + 32))(v0[20], v0[16], v0[17]);
    if (qword_27E1DFDD0 != -1)
    {
      swift_once();
    }

    v16 = v0[19];
    v17 = v0[20];
    v18 = v0[17];
    v19 = v0[18];
    v20 = sub_23BFF92B0();
    v0[21] = sub_23BF4A22C(v20, qword_27E1EB540);
    (*(v19 + 16))(v16, v17, v18);
    v21 = sub_23BFF9290();
    v22 = sub_23BFFA640();
    v23 = os_log_type_enabled(v21, v22);
    v25 = v0[18];
    v24 = v0[19];
    v26 = v0[17];
    if (v23)
    {
      v27 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v41;
      *v27 = 136315138;
      sub_23BFD460C(&qword_27E1E2668, MEMORY[0x277CC95F0]);
      v28 = sub_23BFFAC70();
      v30 = v29;
      v31 = *(v25 + 8);
      v31(v24, v26);
      v32 = sub_23BF62294(v28, v30, &v42);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_23BF0C000, v21, v22, "fetchAssetsInGalleryShuffle: fetching assets for %s", v27, 0xCu);
      sub_23BF4A9A4(v41);
      MEMORY[0x23EEC4DF0](v41, -1, -1);
      MEMORY[0x23EEC4DF0](v27, -1, -1);
    }

    else
    {

      v31 = *(v25 + 8);
      v31(v24, v26);
    }

    v0[22] = v31;
    if (qword_27E1DFE20 != -1)
    {
      swift_once();
    }

    v34 = v0[14];
    v33 = v0[15];
    v35 = v0[12];
    v36 = v0[13];
    sub_23BFF8F00();
    (*(v36 + 16))(v34, v33, v35);
    v0[23] = swift_getOpaqueTypeConformance2();
    sub_23BFFA560();
    v0[24] = MEMORY[0x277D84F90];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v38 = swift_task_alloc();
    v0[25] = v38;
    *v38 = v0;
    v38[1] = sub_23BFD1578;
    v39 = v0[9];
    v40 = v0[3];

    return MEMORY[0x282200308](v40, v39, AssociatedConformanceWitness);
  }
}

uint64_t sub_23BFD1578()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v3 = sub_23BFD1CE8;
  }

  else
  {
    v3 = sub_23BFD16B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23BFD16B0()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v5 = v0[15];
    v6 = v0[12];
    v7 = v0[13];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v7 + 8))(v5, v6);
    sub_23BF4B2D4(v4, &qword_27E1E1B00);

    v8 = sub_23BFF9290();
    v9 = sub_23BFFA640();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[24];
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = *(v11 + 16);

      _os_log_impl(&dword_23BF0C000, v8, v9, "fetchAssetsInGalleryShuffle: daemon returned %ld assets", v12, 0xCu);
      MEMORY[0x23EEC4DF0](v12, -1, -1);
    }

    else
    {
    }

    v26 = v0[24];
    v16 = MEMORY[0x277D84F90];
    v44 = MEMORY[0x277D84F90];
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = 0;
      v29 = v0[26];
      while (1)
      {
        if (v28 >= *(v26 + 16))
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v30 = v0[6];
        (*(v0[5] + 16))(v30, v0[24] + ((*(v0[5] + 80) + 32) & ~*(v0[5] + 80)) + *(v0[5] + 72) * v28, v0[4]);
        v31 = sub_23BFD05EC(v30);
        if (v29)
        {
          break;
        }

        while (1)
        {
          v32 = v31;
          ++v28;
          v33 = (*(v0[5] + 8))(v0[6], v0[4]);
          if (v32)
          {
            break;
          }

          if (v27 == v28)
          {
            goto LABEL_22;
          }

          if (v28 >= *(v26 + 16))
          {
            goto LABEL_28;
          }

          v34 = v0[6];
          (*(v0[5] + 16))(v34, v0[24] + ((*(v0[5] + 80) + 32) & ~*(v0[5] + 80)) + *(v0[5] + 72) * v28, v0[4]);
          v31 = sub_23BFD05EC(v34);
        }

        MEMORY[0x23EEC3100](v33);
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23BFFA480();
        }

        sub_23BFFA4A0();
        v29 = 0;
        v16 = v44;
        if (v28 == v27)
        {
          goto LABEL_22;
        }
      }

      v36 = v0[22];
      v37 = v0[20];
      v38 = v0[17];
      v40 = v0[5];
      v39 = v0[6];
      v41 = v0[4];

      (*(v40 + 8))(v39, v41);
      v36(v37, v38);

      v42 = v0[1];

      return v42();
    }

    else
    {
LABEL_22:
      (v0[22])(v0[20], v0[17]);

      v35 = v0[1];

      return v35(v16);
    }
  }

  else
  {
    v14 = v0[7];
    v13 = v0[8];
    v1 = *(v2 + 32);
    v1(v13, v4, v3);
    (*(v2 + 16))(v14, v13, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v0[24];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_29:
      v16 = sub_23BF61B98(0, v16[2] + 1, 1, v16);
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_23BF61B98(v17 > 1, v18 + 1, 1, v16);
    }

    v19 = v0[7];
    v20 = v0[4];
    v21 = v0[5];
    (*(v21 + 8))(v0[8], v20);
    v16[2] = v18 + 1;
    v1(v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v19, v20);
    v0[24] = v16;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v23 = swift_task_alloc();
    v0[25] = v23;
    *v23 = v0;
    v23[1] = sub_23BFD1578;
    v24 = v0[9];
    v25 = v0[3];

    return MEMORY[0x282200308](v25, v24, AssociatedConformanceWitness);
  }
}

uint64_t sub_23BFD1CE8()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[17];
  (*(v0[13] + 8))(v0[15], v0[12]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23BFD1E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_23BF4A264(&qword_27E1E1B00);
  v3[10] = swift_task_alloc();
  v4 = sub_23BFF8FF0();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = sub_23BF4A264(&qword_27E1E2618);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = sub_23BFF8DE0();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();
  v7 = sub_23BF4A264(&qword_27E1E2620);
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v8 = sub_23BFF8D10();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BFD20E4, 0, 0);
}

uint64_t sub_23BFD20E4()
{
  sub_23BFF8C20();
  v1 = [objc_opt_self() defaultManager];
  v2 = sub_23BFF8C40();
  v0[5] = 0;
  v3 = [v1 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:v0 + 5];

  v4 = v0[5];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v6 = v4;
    v7 = sub_23BFF8BC0();

    swift_willThrow();
  }

  if (qword_27E1DFE20 != -1)
  {
    swift_once();
  }

  v8 = v0[7];
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = v0[19];
    v26 = MEMORY[0x277D84F90];
    sub_23BFCE1FC(0, v9, 0);
    v12 = v8 + 40;
    do
    {

      sub_23BFF8FD0();

      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_23BFCE1FC(v13 > 1, v14 + 1, 1);
      }

      v15 = v0[20];
      v16 = v0[18];
      *(v26 + 16) = v14 + 1;
      (*(v11 + 32))(v26 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v14, v15, v16);
      v12 += 16;
      --v9;
    }

    while (v9);
    v10 = MEMORY[0x277D84F90];
  }

  v18 = v0[23];
  v17 = v0[24];
  v19 = v0[21];
  v20 = v0[22];
  sub_23BFF8F50();

  (*(v20 + 16))(v18, v17, v19);
  v0[29] = swift_getOpaqueTypeConformance2();
  sub_23BFFA560();
  v0[30] = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_task_alloc();
  v0[31] = v22;
  *v22 = v0;
  v22[1] = sub_23BFD278C;
  v23 = v0[15];
  v24 = v0[10];

  return MEMORY[0x282200308](v24, v23, AssociatedConformanceWitness);
}

uint64_t sub_23BFD278C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    (*(v2[16] + 8))(v2[17], v2[15]);

    v3 = sub_23BFD2F74;
  }

  else
  {
    v3 = sub_23BFD28F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23BFD28F8()
{
  v62 = v0;
  v61[1] = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[32];
    v5 = v0[30];
    v6 = v0[28];
    v7 = v0[24];
    v8 = v0[21];
    v9 = v0[22];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v9 + 8))(v7, v8);
    sub_23BF4B2D4(v3, &qword_27E1E1B00);
    v10 = swift_task_alloc();
    *(v10 + 16) = v6;
    v11 = sub_23BFC7EF4(sub_23BFD3300, v10, v5);
    if (v4)
    {

      if (qword_27E1DFDC0 != -1)
      {
        swift_once();
      }

      v12 = v0[27];
      v13 = v0[28];
      v14 = v0[25];
      v15 = v0[26];
      v16 = sub_23BFF92B0();
      sub_23BF4A22C(v16, qword_27E1EB510);
      (*(v15 + 16))(v12, v13, v14);

      v17 = v4;
      v18 = sub_23BFF9290();
      v19 = sub_23BFFA650();

      v20 = os_log_type_enabled(v18, v19);
      v22 = v0[26];
      v21 = v0[27];
      v23 = v0[25];
      if (v20)
      {
        v24 = v0[7];
        v58 = v0[25];
        v25 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v61[0] = v59;
        *v25 = 136315650;
        v26 = MEMORY[0x23EEC3130](v24, MEMORY[0x277D837D0]);
        v28 = sub_23BF62294(v26, v27, v61);

        *(v25 + 4) = v28;
        *(v25 + 12) = 2080;
        v29 = sub_23BFF8CB0();
        v31 = v30;
        v32 = *(v22 + 8);
        v32(v21, v58);
        v33 = sub_23BF62294(v29, v31, v61);

        *(v25 + 14) = v33;
        *(v25 + 22) = 2080;
        swift_getErrorValue();
        v34 = sub_23BFFAD20();
        v36 = sub_23BF62294(v34, v35, v61);

        *(v25 + 24) = v36;
        _os_log_impl(&dword_23BF0C000, v18, v19, "Failed to process images with identifiers = %s to destination = %s: %s", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x23EEC4DF0](v59, -1, -1);
        MEMORY[0x23EEC4DF0](v25, -1, -1);

        v37 = v32;
      }

      else
      {

        v55 = *(v22 + 8);
        v55(v21, v23);
        v37 = v55;
      }

      v60 = 0;
    }

    else
    {
      v52 = v0[28];
      v53 = v0[26];

      v54 = swift_task_alloc();
      *(v54 + 16) = v52;
      v60 = sub_23BFC80AC(sub_23BFD3320, v54, v11);

      v37 = *(v53 + 8);
    }

    v37(v0[28], v0[25]);

    v56 = v0[1];

    return v56(v60);
  }

  else
  {
    v39 = v0[13];
    v38 = v0[14];
    v40 = *(v2 + 32);
    v40(v38, v3, v1);
    (*(v2 + 16))(v39, v38, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v0[30];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_23BF61B98(0, v42[2] + 1, 1, v0[30]);
    }

    v44 = v42[2];
    v43 = v42[3];
    if (v44 >= v43 >> 1)
    {
      v42 = sub_23BF61B98(v43 > 1, v44 + 1, 1, v42);
    }

    v45 = v0[13];
    v46 = v0[11];
    v47 = v0[12];
    (*(v47 + 8))(v0[14], v46);
    v42[2] = v44 + 1;
    v40(v42 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v44, v45, v46);
    v0[30] = v42;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v49 = swift_task_alloc();
    v0[31] = v49;
    *v49 = v0;
    v49[1] = sub_23BFD278C;
    v50 = v0[15];
    v51 = v0[10];

    return MEMORY[0x282200308](v51, v50, AssociatedConformanceWitness);
  }
}

uint64_t sub_23BFD2F74()
{
  v31 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  (*(v0[22] + 8))(v0[24], v0[21]);
  v1 = v0[32];
  if (qword_27E1DFDC0 != -1)
  {
    swift_once();
  }

  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v5 = v0[26];
  v6 = sub_23BFF92B0();
  sub_23BF4A22C(v6, qword_27E1EB510);
  (*(v5 + 16))(v3, v2, v4);

  v7 = v1;
  v8 = sub_23BFF9290();
  v9 = sub_23BFFA650();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[26];
  v11 = v0[27];
  v13 = v0[25];
  if (v10)
  {
    v14 = v0[7];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30[0] = v28;
    *v15 = 136315650;
    v16 = MEMORY[0x23EEC3130](v14, MEMORY[0x277D837D0]);
    v18 = sub_23BF62294(v16, v17, v30);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = sub_23BFF8CB0();
    v21 = v20;
    v29 = *(v12 + 8);
    v29(v11, v13);
    v22 = sub_23BF62294(v19, v21, v30);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2080;
    swift_getErrorValue();
    v23 = sub_23BFFAD20();
    v25 = sub_23BF62294(v23, v24, v30);

    *(v15 + 24) = v25;
    _os_log_impl(&dword_23BF0C000, v8, v9, "Failed to process images with identifiers = %s to destination = %s: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEC4DF0](v28, -1, -1);
    MEMORY[0x23EEC4DF0](v15, -1, -1);
  }

  else
  {

    v29 = *(v12 + 8);
    v29(v11, v13);
  }

  v29(v0[28], v0[25]);

  v26 = v0[1];

  return v26(0);
}

unint64_t sub_23BFD333C()
{
  result = qword_27E1E2648;
  if (!qword_27E1E2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2648);
  }

  return result;
}

uint64_t sub_23BFD3390(uint64_t a1)
{
  v3 = *(sub_23BFF8DE0() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23BF4BF18;

  return sub_23BFCC6CC(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_23BFD350C(uint64_t a1)
{
  v3 = *(sub_23BFF8DE0() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23BF4BF18;

  return sub_23BFCA938(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_23BFD3688()
{
  v1 = sub_23BFF8DE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_23BFD37A0(uint64_t a1)
{
  v3 = *(sub_23BFF8DE0() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23BF4A414;

  return sub_23BFC8F40(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_23BFD3934()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23BF4BF18;

  return sub_23BFCC328(v2, v3);
}

uint64_t sub_23BFD39E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23BF4BF18;

  return sub_23BFCDC6C(v2, v3, v4);
}

uint64_t sub_23BFD3AA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23BF4BF18;

  return sub_23BFCDD54(a1, v4, v5, v6);
}

uint64_t sub_23BFD3B74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23BF4BF18;

  return sub_23BF613EC(a1, v4);
}

uint64_t sub_23BFD3C2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23BF4A414;

  return sub_23BF613EC(a1, v4);
}

uint64_t sub_23BFD3CE4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23BF4BF18;

  return sub_23BFCBF88(v2);
}

uint64_t sub_23BFD3D90()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23BFD3DD0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23BF4BF18;

  return sub_23BFC8BC8(v2, v3);
}

unint64_t sub_23BFD3E84(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_23BFD3E94(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_23BFF8DE0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BFD3F54, 0, 0);
}

uint64_t sub_23BFD3F54()
{
  if (qword_27E1DFE20 != -1)
  {
    swift_once();
  }

  sub_23BFF8FD0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_23BFD41B8;
  v2 = *(v0 + 48);

  return MEMORY[0x28219B698](v2);
}

uint64_t sub_23BFD41B8()
{
  v2 = *v1;
  v3 = *v1;
  v2[8] = v0;

  (*(v2[5] + 8))(v2[6], v2[4]);
  if (!v0)
  {

    v4 = v3[1];

    __asm { BRAA            X3, X16 }
  }

  return MEMORY[0x2822009F8](sub_23BFD436C, 0, 0);
}

uint64_t sub_23BFD436C()
{
  v12 = v0;
  v1 = v0[8];
  if (qword_27E1DFDC0 != -1)
  {
    swift_once();
  }

  v2 = sub_23BFF92B0();
  sub_23BF4A22C(v2, qword_27E1EB510);

  v3 = sub_23BFF9290();
  v4 = sub_23BFFA650();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23BF62294(v6, v5, &v11);
    _os_log_impl(&dword_23BF0C000, v3, v4, "Failed to retrieve mask for identifier %s", v7, 0xCu);
    sub_23BF4A9A4(v8);
    MEMORY[0x23EEC4DF0](v8, -1, -1);
    MEMORY[0x23EEC4DF0](v7, -1, -1);
  }

  v9 = v0[1];

  return v9(0, 0xF000000000000000);
}

uint64_t sub_23BFD450C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23BF4BF18;

  return sub_23BFC87C8(v2, v3, v4);
}

uint64_t sub_23BFD45CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23BFD460C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23BFD466C()
{
  result = qword_27E1E26A8;
  if (!qword_27E1E26A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E26A8);
  }

  return result;
}

unint64_t sub_23BFD46C0()
{
  result = qword_27E1E26B0;
  if (!qword_27E1E26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E26B0);
  }

  return result;
}

unint64_t sub_23BFD4714()
{
  result = qword_27E1E26B8;
  if (!qword_27E1E26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E26B8);
  }

  return result;
}

void sub_23BFD47CC(void *a1)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for ParmesanDebugStoredPhotoListViewController();
  v1 = v8.receiver;
  objc_msgSendSuper2(&v8, sel_loadView);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
    sub_23BF7AC4C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = NSStringFromClass(ObjCClassFromMetadata);
    sub_23BFFA300();

    v7 = sub_23BFFA2C0();

    [v4 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v7];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23BFD48EC()
{
  sub_23BFF8FF0();
  sub_23BFD58D4(&qword_27E1E26D8, MEMORY[0x277D3B350]);
  sub_23BFF9500();
  sub_23BF4A264(&unk_27E1E26E0);
  sub_23BFF94E0();
  return sub_23BFF94A0();
}

id sub_23BFD49CC(uint64_t a1)
{
  v22 = a1;
  v2 = sub_23BFF8DE0();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BFF9490();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 view];
  if (result)
  {
    v11 = result;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClassUnconditional();
    sub_23BF7AC4C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = NSStringFromClass(ObjCClassFromMetadata);
    sub_23BFFA300();

    v15 = sub_23BFFA2C0();

    v16 = sub_23BFF8DF0();
    v17 = [v12 dequeueReusableCellWithReuseIdentifier:v15 forIndexPath:v16];

    objc_opt_self();
    v18 = swift_dynamicCastObjCClassUnconditional();

    MEMORY[0x23EEC3480]();
    sub_23BFD5180();
    sub_23BFF9460();
    v19 = sub_23BFF9420();
    sub_23BFF9400();
    v19(v25, 0);
    sub_23BFF8F90();
    sub_23BFF8DB0();
    (*(v23 + 8))(v4, v24);
    sub_23BFF9450();
    v25[3] = v5;
    v25[4] = MEMORY[0x277D74C30];
    v20 = sub_23BF4AD24(v25);
    (*(v6 + 16))(v20, v9, v5);
    v21 = v17;
    MEMORY[0x23EEC3420](v25);

    (*(v6 + 8))(v9, v5);
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23BFD4CF8()
{
  v0 = sub_23BFF8DE0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_23BFF8D10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_23BFFA9F0();

  v16 = 0xD000000000000014;
  v17 = 0x800000023C012670;
  sub_23BFF8F90();
  sub_23BFD58D4(&qword_27E1E2668, MEMORY[0x277CC95F0]);
  v11 = sub_23BFFAC70();
  MEMORY[0x23EEC3090](v11);

  (*(v1 + 8))(v3, v0);
  sub_23BFF8CE0();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_23BF4B2D4(v6, &qword_27E1E0B78);
  }

  (*(v8 + 32))(v10, v6, v7);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v13 = result;
    v14 = sub_23BFF8C40();
    sub_23BFE44D0(MEMORY[0x277D84F90]);
    v15 = sub_23BFFA260();

    [v13 openSensitiveURL:v14 withOptions:v15];

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23BFD509C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanDebugStoredPhotoListViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ParmesanDebugStoredPhotoListViewController()
{
  result = qword_27E1E26C8;
  if (!qword_27E1E26C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_23BFD5180()
{
  v24 = sub_23BFF8FF0();
  v22[11] = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v22[10] = v22 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_23BFF8DE0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23BFF8D10();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v26 = sub_23BFF90C0();
  v8 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23BFF8FB0();
  v12 = sub_23BFF8FE0();
  if (*(v12 + 16) && (v13 = sub_23BFE571C(v11), (v14 & 1) != 0))
  {
    (*(v8 + 16))(v10, *(v12 + 56) + *(v8 + 72) * v13, v26);

    sub_23BFF8F90();
    sub_23BFF90B0();
    (*(v2 + 8))(v4, v1);
    v15 = sub_23BFF8D20();
    v17 = v16;
    v18 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v19 = sub_23BFF8D30();
    v20 = [v18 initWithData_];

    sub_23BF94C00(v15, v17);
    (*(v23 + 8))(v7, v25);
    (*(v8 + 8))(v10, v26);
    return v20;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_23BFD58D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BFD591C()
{
  v1 = [v0 bundleIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_23BFFA300();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_23BF4BDF0(0, &qword_27E1E0930);
  v6 = [swift_getObjCClassFromMetadata() identifier];
  v7 = sub_23BFFA300();
  v9 = v8;

  if (v5)
  {
    if (v3 == v7 && v5 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_23BFFACC0();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

id sub_23BFD5AC0(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___NTKCParmesanFaceDetailViewController_contentSection] = 0;
  result = [objc_allocWithZone(MEMORY[0x277D3D040]) initWithStyle_];
  if (result)
  {
    *&v2[OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator] = result;
    [a1 copy];
    sub_23BFFA960();
    swift_unknownObjectRelease();
    sub_23BF4BDF0(0, &unk_27E1E2780);
    if (swift_dynamicCast())
    {
      v6 = v17;
      v7 = [v17 selectedOptionForCustomEditMode:12 slot:0];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for ParmesanContentEditOption();
        v9 = swift_dynamicCastClass();
        if (v9 && [v9 _value] == 2)
        {
          v10 = [v17 _defaultOptionForCustomEditMode_slot_];
          [v17 selectOption:v10 forCustomEditMode:12 slot:0];

          v8 = v10;
        }
      }

      v11 = [type metadata accessor for ParmesanGalleryPlaceholderDataSource() placeholderCustomDataKey];
      [v17 setCustomData:0 forKey:v11];

      if (a2)
      {
        v12 = sub_23BFFA450();
      }

      else
      {
        v12 = 0;
      }

      v15.receiver = v2;
      v15.super_class = type metadata accessor for ParmesanFaceDetailViewController();
      v14 = objc_msgSendSuper2(&v15, sel_initWithCandidateFace_externalAssets_, v17, v12);

      v13 = a1;
    }

    else
    {
      if (a2)
      {
        v13 = sub_23BFFA450();
      }

      else
      {
        v13 = 0;
      }

      v16.receiver = v2;
      v16.super_class = type metadata accessor for ParmesanFaceDetailViewController();
      v14 = objc_msgSendSuper2(&v16, sel_initWithCandidateFace_externalAssets_, a1, v13);
      v6 = a1;
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23BFD5D88()
{
  v45.receiver = v0;
  v45.super_class = type metadata accessor for ParmesanFaceDetailViewController();
  objc_msgSendSuper2(&v45, sel_viewDidLayoutSubviews);
  if ([v0 inGallery])
  {
    v1 = [v0 faceName];
    [v1 frame];
    v3 = v2;

    v4 = OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator;
    [*&v0[OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator] bounds];
    v5 = v3 + CGRectGetWidth(v46) * 0.5;
    v6 = [v0 faceName];
    [v6 center];
    v8 = v7;

    v9 = [v0 faceName];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v47.origin.x = v11;
    v47.origin.y = v13;
    v47.size.width = v15;
    v47.size.height = v17;
    v18 = v8 + CGRectGetHeight(v47) * 0.5;
    [*&v0[v4] bounds];
    v19 = v18 + CGRectGetHeight(v48) * 0.5 + 20.0;
  }

  else
  {
    v20 = [v0 headerView];
    [v20 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v49.origin.x = v22;
    v49.origin.y = v24;
    v49.size.width = v26;
    v49.size.height = v28;
    v5 = CGRectGetWidth(v49) * 0.5;
    v29 = [v0 headerView];
    [v29 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v50.origin.x = v31;
    v50.origin.y = v33;
    v50.size.width = v35;
    v50.size.height = v37;
    v19 = CGRectGetHeight(v50) * 0.5;
  }

  result = [v0 view];
  if (result)
  {
    v39 = result;
    v40 = [v0 headerView];
    [v39 convertPoint:v40 fromCoordinateSpace:{v5, v19}];
    v42 = v41;
    v44 = v43;

    return [*&v0[OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator] setCenter_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23BFD6078(void *a1)
{
  v2 = v1;
  v4 = [v1 face];
  if (!v4)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = sub_23BFD591C();

  if ((v6 & 1) == 0)
  {
    v33.receiver = v2;
    v33.super_class = type metadata accessor for ParmesanFaceDetailViewController();
    v19 = objc_msgSendSuper2(&v33, sel__sectionForEditOptionCollection_, a1);
LABEL_12:
    v20 = v19;
    return;
  }

  v7 = [v2 face];
  if (!v7)
  {
LABEL_11:
    v32.receiver = v2;
    v32.super_class = type metadata accessor for ParmesanFaceDetailViewController();
    v19 = objc_msgSendSuper2(&v32, sel__sectionForEditOptionCollection_, a1);
    goto LABEL_12;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    goto LABEL_11;
  }

  v10 = v9;
  if ([a1 mode] != 12)
  {
    v31.receiver = v2;
    v31.super_class = type metadata accessor for ParmesanFaceDetailViewController();
    objc_msgSendSuper2(&v31, sel__sectionForEditOptionCollection_, a1);

    return;
  }

  v11 = [v2 inGallery];
  v12 = [v2 faceVC];
  v13 = [v12 faceView];

  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = [v2 externalAssets];
  if (v14)
  {
    v15 = v14;
    sub_23BFFA460();

    v16 = v2;
    v17 = v8;
    v18 = sub_23BFFA450();
  }

  else
  {
    v21 = v2;
    v22 = v8;
    v18 = 0;
  }

  v23 = [objc_allocWithZone(NTKCParmesanFaceDetailContentSectionController) initWithTableViewController:v2 face:v10 inGallery:v11 editOptionCollection:a1 faceView:v13 externalAssets:v18];

  v24 = OBJC_IVAR___NTKCParmesanFaceDetailViewController_contentSection;
  v25 = *&v2[OBJC_IVAR___NTKCParmesanFaceDetailViewController_contentSection];
  *&v2[OBJC_IVAR___NTKCParmesanFaceDetailViewController_contentSection] = v23;
  v26 = v23;

  if (v26)
  {
    [v26 setParentViewController_];
  }

  v27 = *&v2[v24];
  if (v27)
  {
    v28 = v27;
    [v28 setDelegate_];
  }

  v29 = *&v2[v24];
  if (v29)
  {
    v30 = v29;
  }
}

id sub_23BFD63AC()
{
  v1 = *&v0[OBJC_IVAR___NTKCParmesanFaceDetailViewController_contentSection];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (![v2 canAddFace])
  {
    goto LABEL_10;
  }

  result = [v0 face];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  v5 = [result resourceDirectory];

  if (v5)
  {
    sub_23BFFA300();

    v5 = sub_23BFFA2C0();
  }

  v6 = [objc_opt_self() readerForResourceDirectory_];

  if (!v6)
  {
LABEL_10:
    v8 = 0;
    v6 = v2;
LABEL_14:

    return v8;
  }

  if (![v6 count])
  {
    v8 = 0;
    goto LABEL_13;
  }

  result = [v0 face];
  if (result)
  {
    v7 = result;
    v8 = [result isValidConfigurationToAddToLibrary];

LABEL_13:
    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_23BFD6544()
{
  v1 = *&v0[OBJC_IVAR___NTKCParmesanFaceDetailViewController_contentSection];
  if (v1)
  {
    v2 = v1;
    if ([v2 hasChanges])
    {
      sub_23BFD687C();
      v3 = swift_allocObject();
      *(v3 + 16) = v0;
      v6[4] = sub_23BFD7370;
      v6[5] = v3;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 1107296256;
      v6[2] = sub_23BF58264;
      v6[3] = &unk_284EC2320;
      v4 = _Block_copy(v6);
      v5 = v0;

      [v2 saveChangesWithCompletion_];
      _Block_release(v4);

      return;
    }
  }

  sub_23BFD69E0();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ParmesanFaceDetailViewController();
  objc_msgSendSuper2(&v7, sel__addFace);
}

uint64_t sub_23BFD672C()
{
  v1 = *&v0[OBJC_IVAR___NTKCParmesanFaceDetailViewController_contentSection];
  if (v1)
  {
    v2 = v1;
    if ([v2 canAddFace])
    {
      v10.receiver = v0;
      v10.super_class = type metadata accessor for ParmesanFaceDetailViewController();
      v3 = objc_msgSendSuper2(&v10, sel_reasonFaceCanNotBeAddedToLibrary);
      if (v3)
      {
        v4 = v3;
LABEL_8:
        v6 = sub_23BFFA300();

        goto LABEL_9;
      }
    }

    else
    {
      v7 = sub_23BFFA2C0();
      v8 = sub_23BFFA2C0();
      v4 = NTKClockFaceLocalizedString();

      if (v4)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for ParmesanFaceDetailViewController();
  v5 = objc_msgSendSuper2(&v11, sel_reasonFaceCanNotBeAddedToLibrary);
  if (!v5)
  {
    return 0;
  }

  v2 = v5;
  v6 = sub_23BFFA300();
LABEL_9:

  return v6;
}

void sub_23BFD687C()
{
  sub_23BFD6CF0();
  v1 = OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator;
  [*&v0[OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator] setHidden_];
  [*&v0[v1] beginShowingProgressImmediately:1 animated:1];
  v2 = [v0 addButton];
  [v2 setHidden_];

  if (([v0 inGallery] & 1) == 0)
  {
    v3 = [v0 faceVC];
    v4 = [v3 view];

    if (!v4)
    {
      __break(1u);
      return;
    }

    [v4 setAlpha_];
  }

  v5 = [v0 view];
  [v5 setNeedsLayout];

  v6 = [v0 view];
  [v6 layoutIfNeeded];
}

void sub_23BFD69E0()
{
  if (![v0 inGallery] || (v1 = objc_msgSend(v0, sel_addButton), v2 = objc_msgSend(v1, sel_isHidden), v1, v2))
  {
    v3 = OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator;
    v4 = [*&v0[OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator] isShowingProgress];
    v5 = *&v0[v3];
    if (v4)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v0;
      aBlock[4] = sub_23BFD7368;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23BF58264;
      aBlock[3] = &unk_284EC22D0;
      v7 = _Block_copy(aBlock);
      v8 = v5;
      v9 = v0;

      [v8 endShowingProgressImmediately:1 animated:1 withCompletionHandler:v7];
      _Block_release(v7);
    }

    else
    {
      [v5 setHidden_];
      if ([v0 inGallery])
      {
        v11 = [v0 addButton];
        [v11 setHidden_];
      }

      else
      {
        v10 = [v0 faceVC];
        v11 = [v10 view];

        if (!v11)
        {
          __break(1u);
          return;
        }

        [v11 setAlpha_];
      }
    }
  }
}

void sub_23BFD6C00(char *a1)
{
  [*&a1[OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator] setHidden_];
  if ([a1 inGallery])
  {
    v3 = [a1 addButton];
    [v3 setHidden_];
  }

  else
  {
    v2 = [a1 faceVC];
    v3 = [v2 view];

    if (!v3)
    {
      __break(1u);
      return;
    }

    [v3 setAlpha_];
  }
}

id sub_23BFD6CF0()
{
  v1 = OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator;
  if ([*&v0[OBJC_IVAR___NTKCParmesanFaceDetailViewController_progressIndicator] isShowingProgress])
  {
    v2 = *&v0[v1];
    v9[4] = nullsub_2;
    v9[5] = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_23BF58264;
    v9[3] = &unk_284EC2280;
    v3 = _Block_copy(v9);
    v4 = v2;
    [v4 endShowingProgressImmediately:1 animated:1 withCompletionHandler:v3];
    _Block_release(v3);
  }

  [*&v0[v1] removeFromSuperview];
  result = [objc_allocWithZone(MEMORY[0x277D3D040]) initWithStyle_];
  if (result)
  {
    v6 = *&v0[v1];
    *&v0[v1] = result;

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubview_];
    }

    [*&v0[v1] setDeterminate_];
    [*&v0[v1] setShowsBackground_];
    [*&v0[v1] setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v0[v1] sizeToFit];
    return [*&v0[v1] setHidden_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23BFD6EA0(id a1)
{
  v3 = sub_23BFF8BE0();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v20 - v7;
  v9 = [v1 editOptionSections];
  sub_23BFFA830();

  sub_23BFF8BD0();
  if (!v26)
  {
LABEL_8:
    (*(v21 + 8))(v8, v22);
    return;
  }

  while (1)
  {
    sub_23BF66650(&v25, v24);
    sub_23BF4BDF0(0, &qword_27E1E2768);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_3:
    sub_23BFF8BD0();
    if (!v26)
    {
      goto LABEL_8;
    }
  }

  v10 = v23;
  v11 = [v23 collection];
  if (!v11)
  {
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  v13 = [v11 mode];

  if (v13 != a1)
  {

    goto LABEL_3;
  }

  v14 = v22;
  v15 = *(v21 + 8);
  v15(v8, v22);
  v16 = [v10 rows];
  if (!v16)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = v20;
  sub_23BFFA830();

  sub_23BFF8BD0();
  while (v26)
  {
    sub_23BF66650(&v25, v24);
    sub_23BF4BDF0(0, &unk_27E1E2770);
    if (swift_dynamicCast())
    {
      v19 = v23;
      [v23 reloadVisibleCells];
    }

    sub_23BFF8BD0();
  }

  v15(v18, v14);
}

id sub_23BFD72AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanFaceDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BFD7350(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_23BFD7584(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = &v5[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_mainSectionIdentifier];
  *v11 = 0x746365536E69614DLL;
  *(v11 + 1) = 0xEB000000006E6F69;
  *&v5[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_dataSource] = 0;
  *&v5[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_selectedLayout] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_options] = a1;
  *&v5[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_itemHeight] = a2;
  v12 = &v5[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_deviceSize];
  *v12 = a3;
  v12[1] = a4;
  *&v5[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_deviceScreenRadius] = a5;
  v14.receiver = v5;
  v14.super_class = type metadata accessor for ParmesanTimeLayoutSelectionViewController();
  return objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
}

id sub_23BFD7798()
{
  v1 = v0;
  v2 = sub_23BF4A264(&qword_27E1E2858);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  v9 = *&v1[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_itemHeight];
  v10 = v9 + 12.0;
  if (qword_27E1DFE38 != -1)
  {
    swift_once();
  }

  [qword_27E1EB690 lineHeight];
  v12 = sub_23BF89694(*&v1[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_deviceSize] * (v9 / *&v1[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_deviceSize + 8]), v10 + v11 + v11 + 12.0);
  v13 = objc_allocWithZone(MEMORY[0x277D752A0]);
  v44 = v12;
  v14 = [v13 initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  [v1 setView_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23BF4BDF0(0, &qword_27E1E2860);
  type metadata accessor for ParmesanTimeLayout();
  sub_23BFFA690();
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  (*(v3 + 16))(v5, v8, v2);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v16, v5, v2);
  v18 = objc_allocWithZone(sub_23BF4A264(&unk_27E1E2868));
  v19 = sub_23BFF9540();
  v20 = OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_dataSource;
  v21 = *&v1[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_dataSource];
  *&v1[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_dataSource] = v19;

  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = result;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setDataSource_];

  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = result;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setDelegate_];

  result = [v1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = result;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setAllowsSelection_];

  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = result;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClassUnconditional();
  v27 = [objc_opt_self() clearColor];
  [v26 setBackgroundColor_];

  result = [v1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = result;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setShowsHorizontalScrollIndicator_];

  result = [v1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = result;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setShowsVerticalScrollIndicator_];

  result = [v1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v30 = result;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setBouncesVertically_];

  result = [v1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = result;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setContentInsetAdjustmentBehavior_];

  result = [v1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v32 = result;
  objc_opt_self();
  v33 = [swift_dynamicCastObjCClassUnconditional() heightAnchor];

  [qword_27E1EB690 lineHeight];
  v35 = [v33 constraintEqualToConstant_];

  [v35 setActive_];
  result = [v1 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = result;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setAccessibilityContainerType_];

  result = [v1 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v37 = result;
  objc_opt_self();
  v38 = swift_dynamicCastObjCClassUnconditional();
  sub_23BF4BDF0(0, &qword_27E1E0930);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = sub_23BFFA2C0();
  v41 = sub_23BFFA2C0();
  v42 = [ObjCClassFromMetadata localizedStringForKey:v40 comment:v41];

  if (!v42)
  {
    sub_23BFFA300();
    v42 = sub_23BFFA2C0();
  }

  [v38 setAccessibilityLabel_];

  return (*(v3 + 8))(v8, v2);
}

void sub_23BFD7FDC(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_itemHeight);
    v7 = *(Strong + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_deviceSize);
    v6 = *(Strong + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_deviceSize + 8);
    v8 = v5 / v6 * *(Strong + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_deviceScreenRadius);
    v9 = Strong;
    v10 = objc_opt_self();
    *&v15 = v3;
    *(&v15 + 1) = v5 / v6 * v7;
    *&v16 = v5;
    *(&v16 + 1) = v7;
    *&v17 = v6;
    *(&v17 + 1) = v8;
    *&v18 = [v10 whiteColor];
    *(&v18 + 1) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.6 alpha:1.0];
    v19 = 0uLL;
    v20 = v15;
    v21 = v5;
    v22 = v7;
    v23 = v6;
    v24 = v8;
    v25 = v18;
    v26 = 0;
    v27 = 0;
    sub_23BFD9878(&v15, v14);
    sub_23BFD98D4(&v20);
    v14[3] = &type metadata for TimeLayoutOptionCellConfiguration;
    v14[4] = sub_23BFD9928();
    v11 = swift_allocObject();
    v14[0] = v11;
    v12 = v18;
    v11[3] = v17;
    v11[4] = v12;
    v11[5] = v19;
    v13 = v16;
    v11[1] = v15;
    v11[2] = v13;
    MEMORY[0x23EEC3420](v14);
  }
}

uint64_t sub_23BFD8184(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  sub_23BF4BDF0(0, &qword_27E1E2860);
  type metadata accessor for ParmesanTimeLayout();
  v4 = v3;
  v5 = sub_23BFFA6B0();

  return v5;
}

void sub_23BFD82DC()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ParmesanTimeLayoutSelectionViewController();
  objc_msgSendSuper2(&v10, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    v4 = v3;

    v5 = *&v0[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_itemHeight];
    v7 = *&v0[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_deviceSize];
    v6 = *&v0[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_deviceSize + 8];
    v8 = [v0 view];
    if (v8)
    {
      v9 = v8;
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setContentInset_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23BFD8444()
{
  v1 = sub_23BF4A264(&qword_27E1E2840);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - v3;
  type metadata accessor for ParmesanTimeLayout();
  sub_23BFD9794(&unk_27E1E2848, type metadata accessor for ParmesanTimeLayout);
  sub_23BFF9500();
  sub_23BF4A264(&unk_27E1E0990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23C001BB0;
  v6 = *(v0 + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_mainSectionIdentifier + 8);
  *(v5 + 32) = *(v0 + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_mainSectionIdentifier);
  *(v5 + 40) = v6;

  sub_23BFF94E0();

  v10[0] = 0;
  v10[1] = 0;

  sub_23BFF94A0();

  v8 = *(v0 + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_dataSource);
  if (v8)
  {
    v9 = v8;
    sub_23BFF95C0();

    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23BFD8634(void *a1)
{
  v2 = v1;
  v4 = sub_23BFF8DF0();
  [a1 scrollToItemAtIndexPath:v4 atScrollPosition:16 animated:1];

  v5 = *(v1 + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_dataSource);
  if (v5)
  {
    v6 = v5;
    sub_23BFF9570();

    if (v10)
    {
      v7 = *(v1 + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_selectedLayout);
      *(v2 + OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_selectedLayout) = v10;
      v8 = v10;

      sub_23BFD882C();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong timeLayoutSelectionController:v2 didChangeSelection:v8];
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_23BFD882C()
{
  v1 = v0;
  v2 = sub_23BF4A264(&qword_27E1E0920);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v55 - v3;
  v5 = sub_23BFF8E50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v55 - v14;
  v16 = *&v1[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_selectedLayout];
  if (v16)
  {
    v17 = *&v1[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_dataSource];
    if (!v17)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v64 = *&v1[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_selectedLayout];
    v18 = v16;
    v19 = v17;
    sub_23BFF95F0();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      sub_23BFD920C(v4);
      return;
    }

    v56 = v18;
    v57 = v15;
    v63 = v6;
    (*(v6 + 32))(v15, v4, v5);
    v32 = [v1 view];
    if (!v32)
    {
      goto LABEL_33;
    }

    v33 = v32;
    objc_opt_self();
    v34 = [swift_dynamicCastObjCClassUnconditional() indexPathsForSelectedItems];

    if (!v34)
    {
      (*(v63 + 8))(v57, v5);
      goto LABEL_18;
    }

    v35 = sub_23BFFA460();

    sub_23BF4A264(&unk_27E1E2830);
    v36 = v63;
    v37 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    v60 = *(v63 + 72);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_23C001BB0;
    v39 = v57;
    v61 = *(v36 + 16);
    v62 = (v36 + 16);
    v61(v38 + v37, v57, v5);
    v40 = sub_23BFD9580(v35, v38);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v40)
    {
      (*(v36 + 8))(v39, v5);

LABEL_18:

      return;
    }

    v58 = *(v35 + 16);
    v59 = v5;
    if (v58)
    {
      v41 = 0;
      v42 = v35 + v37;
      v43 = (v63 + 8);
      while (v41 < *(v35 + 16))
      {
        v44 = v59;
        v61(v11, v42, v59);
        v45 = v1;
        v46 = [v1 view];
        if (!v46)
        {
          goto LABEL_30;
        }

        v47 = v46;
        ++v41;
        objc_opt_self();
        v48 = swift_dynamicCastObjCClassUnconditional();
        v49 = sub_23BFF8DF0();
        [v48 deselectItemAtIndexPath:v49 animated:0];

        (*v43)(v11, v44);
        v42 += v60;
        v1 = v45;
        if (v58 == v41)
        {
          goto LABEL_24;
        }
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_24:

    v50 = [v1 view];
    if (!v50)
    {
LABEL_34:
      __break(1u);
      return;
    }

    v51 = v50;
    objc_opt_self();
    v52 = swift_dynamicCastObjCClassUnconditional();
    v53 = v57;
    v54 = sub_23BFF8DF0();
    [v52 selectItemAtIndexPath:v54 animated:0 scrollPosition:16];

    (*(v63 + 8))(v53, v59);
  }

  else
  {
    v63 = v6;
    v20 = v5;
    v21 = [v1 view];
    if (!v21)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v22 = v21;
    objc_opt_self();
    v23 = [swift_dynamicCastObjCClassUnconditional() indexPathsForSelectedItems];

    if (v23)
    {
      v62 = v1;
      v24 = sub_23BFFA460();

      v25 = *(v24 + 16);
      if (!v25)
      {
LABEL_12:

        return;
      }

      v26 = 0;
      v27 = (v63 + 8);
      while (v26 < *(v24 + 16))
      {
        (*(v63 + 16))(v8, v24 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v26, v20);
        v28 = [v62 view];
        if (!v28)
        {
          goto LABEL_29;
        }

        v29 = v28;
        ++v26;
        objc_opt_self();
        v30 = swift_dynamicCastObjCClassUnconditional();
        v31 = sub_23BFF8DF0();
        [v30 deselectItemAtIndexPath:v31 animated:0];

        (*v27)(v8, v20);
        if (v25 == v26)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_28;
    }
  }
}

void sub_23BFD8EC4(char a1)
{
  v2 = v1;
  v4 = sub_23BF4A264(&qword_27E1E0920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = sub_23BFF8E50();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_selectedLayout];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR___NTKParmesanTimeLayoutSelectionViewController_dataSource];
    if (v12)
    {
      v19[1] = v11;
      v13 = v11;
      v14 = v12;
      sub_23BFF95F0();

      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_23BFD920C(v6);
        return;
      }

      (*(v8 + 32))(v10, v6, v7);
      v15 = [v2 view];
      if (v15)
      {
        v16 = v15;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClassUnconditional();
        v18 = sub_23BFF8DF0();
        [v17 scrollToItemAtIndexPath:v18 atScrollPosition:16 animated:a1 & 1];

        (*(v8 + 8))(v10, v7);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_23BFD9134()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanTimeLayoutSelectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BFD920C(uint64_t a1)
{
  v2 = sub_23BF4A264(&qword_27E1E0920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23BFD9274(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23BFFACC0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_23BFD9304(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23BFD9360(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v32 = v2;
  v33 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v22 = *v5;
    v23 = v8;
    v9 = v5[3];
    v24 = v5[2];
    v25 = v9;
    v10 = v5[4];
    v11 = v6[3];
    v29 = v6[2];
    v30 = v11;
    v31 = v6[4];
    v12 = *v6;
    v28 = v6[1];
    v26 = v10;
    v27 = v12;
    if (v22 != v12 && (sub_23BFFACC0() & 1) == 0)
    {
      return 0;
    }

    v13 = v23;
    v14 = v28;
    if (v23)
    {
      if (!v28)
      {
        return 0;
      }

      sub_23BF4BDF0(0, &qword_27E1E1170);
      sub_23BF4A518(&v22, v21);
      sub_23BF4A518(&v27, v21);
      v15 = v14;
      v16 = v13;
      v17 = sub_23BFFA880();

      if ((v17 & 1) == 0)
      {
LABEL_21:
        sub_23BF4A574(&v27);
        sub_23BF4A574(&v22);
        return 0;
      }
    }

    else
    {
      if (v28)
      {
        return 0;
      }

      sub_23BF4A518(&v22, v21);
      sub_23BF4A518(&v27, v21);
    }

    v34.origin.x = *(&v23 + 1);
    *&v34.origin.y = v24;
    *&v34.size.height = v25;
    v35.origin.x = *(&v28 + 1);
    *&v35.origin.y = v29;
    *&v35.size.height = v30;
    if (!CGRectEqualToRect(v34, v35) || *(*(&v25 + 1) + OBJC_IVAR___NTKParmesanTimeLayout_alignment) != *(*(&v30 + 1) + OBJC_IVAR___NTKParmesanTimeLayout_alignment))
    {
      goto LABEL_21;
    }

    v18 = *(*(&v25 + 1) + OBJC_IVAR___NTKParmesanTimeLayout_scale);
    v19 = *(*(&v30 + 1) + OBJC_IVAR___NTKParmesanTimeLayout_scale);
    sub_23BF4A574(&v27);
    sub_23BF4A574(&v22);
    if (v18 != v19 || v26 != v31)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 5;
    v5 += 5;
  }

  return 1;
}

uint64_t sub_23BFD9580(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BFF8E50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_23BFD9794(&qword_27E1E1850, MEMORY[0x277CC9AF8]);
    v22 = sub_23BFFA2B0();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BFD9794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BFD97E4(uint64_t a1, uint64_t a2, void **a3)
{
  sub_23BF4A264(&qword_27E1E2858);

  return sub_23BFD8184(a1, a2, a3);
}

unint64_t sub_23BFD9928()
{
  result = qword_27E1E2878;
  if (!qword_27E1E2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2878);
  }

  return result;
}

__n128 sub_23BFD997C()
{
  sub_23BF4A264(&qword_27E1E2880);
  v1 = swift_allocObject();
  v2 = *v0;
  v3 = v0[1];
  *(v1 + 16) = xmmword_23C008D00;
  *(v1 + 32) = v2;
  v4 = v0[2];
  v5 = v0[3];
  *(v1 + 48) = v3;
  *(v1 + 64) = v4;
  result = v0[4];
  *(v1 + 80) = v5;
  *(v1 + 96) = result;
  return result;
}

float sub_23BFD99D0@<S0>(uint64_t a1@<X8>)
{
  CLKInterpolateBetweenFloatsUnclipped();
  *&v2 = v2;
  v41 = LODWORD(v2);
  CLKInterpolateBetweenFloatsUnclipped();
  *&v3 = v3;
  v40 = LODWORD(v3);
  CLKInterpolateBetweenFloatsUnclipped();
  *&v4 = v4;
  v39 = LODWORD(v4);
  CLKInterpolateBetweenFloatsUnclipped();
  *&v5 = v5;
  v38 = LODWORD(v5);
  CLKInterpolateBetweenFloatsUnclipped();
  *&v6 = v6;
  v37 = LODWORD(v6);
  CLKInterpolateBetweenFloatsUnclipped();
  *&v7 = v7;
  v36 = LODWORD(v7);
  CLKInterpolateBetweenFloatsUnclipped();
  *&v8 = v8;
  v35 = LODWORD(v8);
  CLKInterpolateBetweenFloatsUnclipped();
  *&v9 = v9;
  v34 = LODWORD(v9);
  CLKInterpolateBetweenFloatsUnclipped();
  *&v10 = v10;
  v33 = LODWORD(v10);
  CLKInterpolateBetweenFloatsUnclipped();
  *&v11 = v11;
  v32 = LODWORD(v11);
  CLKInterpolateBetweenFloatsUnclipped();
  *&v12 = v12;
  v31 = LODWORD(v12);
  CLKInterpolateBetweenFloatsUnclipped();
  *&v13 = v13;
  v30 = LODWORD(v13);
  CLKInterpolateBetweenFloatsUnclipped();
  v15 = v14;
  CLKInterpolateBetweenFloatsUnclipped();
  v17 = v16;
  CLKInterpolateBetweenFloatsUnclipped();
  v19 = v18;
  CLKInterpolateBetweenFloatsUnclipped();
  v21 = v20;
  CLKInterpolateBetweenFloatsUnclipped();
  v23 = v22;
  CLKInterpolateBetweenFloatsUnclipped();
  v25 = v24;
  CLKInterpolateBetweenFloatsUnclipped();
  v27 = v26;
  CLKInterpolateBetweenFloatsUnclipped();
  result = v28;
  *a1 = v41;
  *(a1 + 4) = v40;
  *(a1 + 8) = v39;
  *(a1 + 12) = v38;
  *(a1 + 16) = v37;
  *(a1 + 20) = v36;
  *(a1 + 24) = v35;
  *(a1 + 28) = v34;
  *(a1 + 32) = v33;
  *(a1 + 36) = v32;
  *(a1 + 40) = v31;
  *(a1 + 44) = v30;
  *(a1 + 48) = v15;
  *(a1 + 52) = v17;
  *(a1 + 56) = v19;
  *(a1 + 60) = v21;
  *(a1 + 64) = v23;
  *(a1 + 68) = v25;
  *(a1 + 72) = v27;
  *(a1 + 76) = result;
  return result;
}

int *sub_23BFD9CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 20)
  {
    v2 = (a1 + 32);
    v3 = (a1 + 36);
    v4 = (a1 + 40);
    v5 = (a1 + 44);
    v6 = (a1 + 48);
    v7 = (a1 + 52);
    v8 = (a1 + 56);
    v9 = (a1 + 60);
    v10 = (a1 + 64);
    v11 = (a1 + 68);
    v12 = (a1 + 72);
    v13 = (a1 + 80);
    v14 = (a1 + 84);
    v15 = (a1 + 88);
    v16 = (a1 + 92);
    v17 = (a1 + 96);
    v18 = (a1 + 100);
    v19 = (a1 + 104);
    v20 = vld1_dup_f32(v13);
    result = (a1 + 108);
  }

  else
  {
    v2 = MEMORY[0x277CD9DA0];
    result = (MEMORY[0x277CD9DA0] + 76);
    v19 = (MEMORY[0x277CD9DA0] + 72);
    v18 = (MEMORY[0x277CD9DA0] + 68);
    v17 = (MEMORY[0x277CD9DA0] + 64);
    v16 = (MEMORY[0x277CD9DA0] + 60);
    v15 = (MEMORY[0x277CD9DA0] + 56);
    v14 = (MEMORY[0x277CD9DA0] + 52);
    v12 = (MEMORY[0x277CD9DA0] + 40);
    v11 = (MEMORY[0x277CD9DA0] + 36);
    v10 = (MEMORY[0x277CD9DA0] + 32);
    v9 = (MEMORY[0x277CD9DA0] + 28);
    v8 = (MEMORY[0x277CD9DA0] + 24);
    v7 = (MEMORY[0x277CD9DA0] + 20);
    v6 = (MEMORY[0x277CD9DA0] + 16);
    v5 = (MEMORY[0x277CD9DA0] + 12);
    v4 = (MEMORY[0x277CD9DA0] + 8);
    v3 = (MEMORY[0x277CD9DA0] + 4);
    v20 = *(MEMORY[0x277CD9DA0] + 44);
  }

  v22 = *result;
  v23 = *v19;
  v24 = *v18;
  v25 = *v17;
  v26 = *v16;
  v27 = *v15;
  v28 = *v14;
  v29 = *v12;
  v30 = *v11;
  v31 = *v10;
  v32 = *v9;
  v33 = *v8;
  v34 = *v7;
  v35 = *v6;
  v36 = *v5;
  v37 = *v4;
  v38 = *v3;
  *a2 = *v2;
  *(a2 + 4) = v38;
  *(a2 + 8) = v37;
  *(a2 + 12) = v36;
  *(a2 + 16) = v35;
  *(a2 + 20) = v34;
  *(a2 + 24) = v33;
  *(a2 + 28) = v32;
  *(a2 + 32) = v31;
  *(a2 + 36) = v30;
  *(a2 + 40) = v29;
  *(a2 + 44) = v20;
  *(a2 + 52) = v28;
  *(a2 + 56) = v27;
  *(a2 + 60) = v26;
  *(a2 + 64) = v25;
  *(a2 + 68) = v24;
  *(a2 + 72) = v23;
  *(a2 + 76) = v22;
  return result;
}

uint64_t sub_23BFDA100()
{
  sub_23BFFA9F0();
  MEMORY[0x23EEC3090](0xD000000000000010, 0x800000023C012B80);
  v1 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_uuidString);
  v2 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_uuidString + 8);

  MEMORY[0x23EEC3090](v1, v2);

  MEMORY[0x23EEC3090](0x656C706F6570202CLL, 0xEE003D746E756F43);
  v3 = sub_23BFFAC70();
  MEMORY[0x23EEC3090](v3);

  MEMORY[0x23EEC3090](0x3D73746570202CLL, 0xE700000000000000);
  if (*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_pets))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_pets))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x23EEC3090](v4, v5);

  MEMORY[0x23EEC3090](0x65727574616E202CLL, 0xE90000000000003DLL);
  if (*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_nature))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_nature))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x23EEC3090](v6, v7);

  MEMORY[0x23EEC3090](0x637379746963202CLL, 0xEC0000003D657061);
  if (*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_cityscape))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_cityscape))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x23EEC3090](v8, v9);

  MEMORY[0x23EEC3090](41, 0xE100000000000000);
  return 0;
}

id sub_23BFDA358()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NTKShuffleID();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BFDA400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion41ParmesanFacePreviewTitleSupplementaryView_titleLabel];
  v7 = sub_23BFFA2C0();
  [v6 setText_];

  v8 = *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion41ParmesanFacePreviewTitleSupplementaryView_subtitleLabel];
  if (a4)
  {
    v9 = sub_23BFFA2C0();
  }

  else
  {
    v9 = 0;
  }

  [v8 setText_];

  [v8 setHidden_];

  return [v4 invalidateIntrinsicContentSize];
}

char *sub_23BFDA4D4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion41ParmesanFacePreviewTitleSupplementaryView_titleLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion41ParmesanFacePreviewTitleSupplementaryView_subtitleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v4[v10] = v11;
  sub_23BF4A264(&qword_27E1E05E0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23C002030;
  v13 = *&v4[v9];
  *(v12 + 32) = v13;
  *(v12 + 40) = v11;
  v14 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_23BF4BDF0(0, &qword_27E1E1998);
  v15 = v13;
  v16 = v11;
  v17 = sub_23BFFA450();

  v18 = [v14 initWithArrangedSubviews_];

  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion41ParmesanFacePreviewTitleSupplementaryView_stackView] = v18;
  v51.receiver = v4;
  v51.super_class = type metadata accessor for ParmesanFacePreviewTitleSupplementaryView();
  v19 = objc_msgSendSuper2(&v51, sel_initWithFrame_, a1, a2, a3, a4);
  [v19 setClipsToBounds_];
  v20 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion41ParmesanFacePreviewTitleSupplementaryView_stackView;
  [*&v19[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion41ParmesanFacePreviewTitleSupplementaryView_stackView] setAxis_];
  [*&v19[v20] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v19[v20] setSpacing_];
  v21 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion41ParmesanFacePreviewTitleSupplementaryView_titleLabel;
  v22 = *&v19[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion41ParmesanFacePreviewTitleSupplementaryView_titleLabel];
  v23 = objc_opt_self();
  v24 = *MEMORY[0x277D76950];
  v25 = v22;
  v26 = [v23 preferredFontForTextStyle_];
  [v25 setFont_];

  [*&v19[v21] setAdjustsFontForContentSizeCategory_];
  [*&v19[v21] setTextAlignment_];
  [*&v19[v21] setNumberOfLines_];
  v27 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion41ParmesanFacePreviewTitleSupplementaryView_subtitleLabel;
  v28 = *MEMORY[0x277D76918];
  v29 = *&v19[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion41ParmesanFacePreviewTitleSupplementaryView_subtitleLabel];
  v30 = [v23 preferredFontForTextStyle_];
  [v29 setFont_];

  [*&v19[v27] setAdjustsFontForContentSizeCategory_];
  [*&v19[v27] setNumberOfLines_];
  [*&v19[v27] setTextAlignment_];
  [v19 addSubview_];
  v31 = [v19 bottomAnchor];
  v32 = [*&v19[v20] bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:12.0];

  LODWORD(v34) = 1132068864;
  [v33 setPriority_];
  v35 = objc_opt_self();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_23C008D50;
  v37 = [*&v19[v20] leadingAnchor];
  v38 = [v19 layoutMarginsGuide];
  v39 = [v38 leadingAnchor];

  v40 = [v37 constraintEqualToAnchor_];
  *(v36 + 32) = v40;
  v41 = [*&v19[v20] trailingAnchor];
  v42 = [v19 layoutMarginsGuide];
  v43 = [v42 trailingAnchor];

  v44 = [v41 constraintEqualToAnchor_];
  *(v36 + 40) = v44;
  v45 = [*&v19[v20] topAnchor];
  v46 = [v19 topAnchor];

  v47 = [v45 constraintEqualToAnchor_];
  *(v36 + 48) = v47;
  *(v36 + 56) = v33;
  sub_23BF4BDF0(0, &qword_27E1E0610);
  v48 = v33;
  v49 = sub_23BFFA450();

  [v35 activateConstraints_];

  return v19;
}

id sub_23BFDAB0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanFacePreviewTitleSupplementaryView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_23BFDABC0()
{
  xmmword_27E1E28C8 = xmmword_23C008DB0;
  unk_27E1E28D8 = xmmword_23C008DC0;
  xmmword_27E1E28E8 = xmmword_23C008DD0;
  unk_27E1E28F8 = xmmword_23C008DE0;
  result = 4.42378164e-12;
  xmmword_27E1E2908 = xmmword_23C008DF0;
  unk_27E1E2918 = xmmword_23C008E00;
  xmmword_27E1E2928 = xmmword_23C008E10;
  unk_27E1E2938 = xmmword_23C008E20;
  xmmword_27E1E2948 = xmmword_23C008DE0;
  unk_27E1E2958 = xmmword_23C008DF0;
  byte_27E1E2968 = 0;
  unk_27E1E296C = xmmword_23C008E30;
  unk_27E1E297C = xmmword_23C008E40;
  unk_27E1E298C = xmmword_23C008E50;
  unk_27E1E299C = xmmword_23C008E60;
  unk_27E1E29AC = xmmword_23C008DF0;
  return result;
}

double sub_23BFDAC64()
{
  xmmword_27E1E29BC = xmmword_23C008E70;
  *algn_27E1E29CC = xmmword_23C008E80;
  xmmword_27E1E29DC = xmmword_23C008E90;
  dword_27E1E29EC = 1065118335;
  unk_27E1E29F8 = 0;
  unk_27E1E29F0 = 0;
  *(&xmmword_27E1E29FC + 4) = 0x3F80000000000000;
  *(&xmmword_27E1E29FC + 12) = 0u;
  unk_27E1E2A18 = 0u;
  *(&xmmword_27E1E2A1C + 12) = 0u;
  unk_27E1E2A38 = 0u;
  *(&xmmword_27E1E2A3C + 12) = 0u;
  dword_27E1E2A58 = 0;
  byte_27E1E2A5C = 1;
  unk_27E1E2A60 = xmmword_23C008EA0;
  unk_27E1E2A70 = xmmword_23C008EB0;
  unk_27E1E2A80 = xmmword_23C008EC0;
  dword_27E1E2A90 = 1065269330;
  qword_27E1E2A94 = 0;
  unk_27E1E2A9C = 0;
  dword_27E1E2AA4 = 0;
  *&result = 1065353216;
  unk_27E1E2AA8 = 1065353216;
  return result;
}

uint64_t sub_23BFDAD20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_23BFDAD68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23BFDADCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_23BF4A264(&qword_27E1E2AB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_23BFF9390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFA8544(a1, v45);
  sub_23BF4A264(&qword_27E1E2AB8);
  v13 = swift_dynamicCast();
  v14 = *(v10 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
    v15 = *(v3 + 48);
    v16 = *(v3 + 64);
    v52 = *(v3 + 72);
    v53 = v15;
    v51 = v16;
    v17 = *(v3 + 16);
    v42 = *v3;
    v43 = v17;
    v44 = *(v3 + 32);
    sub_23BFD9878(v3, v45);
    if (sub_23BFF9360())
    {
      v18 = objc_opt_self();
      *&v37 = [v18 systemGreenColor];
      sub_23BF4B2D4(&v51, &qword_27E1E2AC0);
      v19 = [v18 systemGreenColor];
      sub_23BF4B2D4(&v52, &qword_27E1E2AC0);
      v20 = v18;
      v21 = &selRef_blackColor;
      v22 = 0.4;
    }

    else
    {
      sub_23BF4B2D4(&v51, &qword_27E1E2AC0);
      sub_23BF4B2D4(&v52, &qword_27E1E2AC0);
      v20 = objc_opt_self();
      v19 = 0;
      *&v37 = 0;
      v21 = &selRef_whiteColor;
      v22 = 0.6;
    }

    v32 = [v20 *v21];
    sub_23BF4B2D4(&v53, &qword_27E1E2AC0);
    v50 = *(v3 + 56);
    v33 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v22 alpha:1.0];
    (*(v10 + 8))(v12, v9);
    sub_23BF4B2D4(&v50, &qword_27E1E2AC0);
    v39[0] = v42;
    v39[1] = v43;
    v39[2] = v44;
    *&v40 = v32;
    *(&v40 + 1) = v33;
    *&v41 = v37;
    *(&v41 + 1) = v19;
    v45[0] = v42;
    v45[1] = v43;
    v45[2] = v44;
    v46 = v32;
    v47 = v33;
    v48 = v37;
    v49 = v19;
    sub_23BFD9878(v39, &v38);
    result = sub_23BFD98D4(v45);
    v31 = v40;
    v30 = v41;
    v24 = *(&v39[2] + 1);
    v28 = *(&v39[1] + 8);
    v29 = *(v39 + 8);
    v26 = *&v39[0];
  }

  else
  {
    v14(v8, 1, 1, v9);
    sub_23BF4B2D4(v8, &qword_27E1E2AB0);
    v23 = *(v3 + 64);
    v36 = *(v3 + 48);
    v37 = v23;
    v24 = *(v3 + 40);
    v25 = *(v3 + 24);
    v34 = *(v3 + 8);
    v35 = v25;
    v26 = *v3;
    result = sub_23BFD9878(v3, v45);
    v29 = v34;
    v28 = v35;
    v31 = v36;
    v30 = v37;
  }

  *a2 = v26;
  *(a2 + 8) = v29;
  *(a2 + 24) = v28;
  *(a2 + 40) = v24;
  *(a2 + 48) = v31;
  *(a2 + 64) = v30;
  return result;
}

id sub_23BFDB1D4()
{
  v1 = v0[3];
  v7[2] = v0[2];
  v7[3] = v1;
  v7[4] = v0[4];
  v2 = v0[1];
  v7[0] = *v0;
  v7[1] = v2;
  v3 = objc_allocWithZone(type metadata accessor for TimeLayoutOptionContentView());
  sub_23BFD9878(v7, &v6);
  v4 = sub_23BFF56D0(v7);
  sub_23BFDB2A8();
  return v4;
}

__n128 sub_23BFDB244@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  v8[7] = v2[2];
  v8[8] = v4;
  v8[9] = v2[4];
  v5 = v2[1];
  v8[5] = *v2;
  v8[6] = v5;
  sub_23BFDADCC(a1, v8);
  v6 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v8[4];
  result = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_23BFDB2A8()
{
  result = qword_27E1E2AC8;
  if (!qword_27E1E2AC8)
  {
    type metadata accessor for TimeLayoutOptionContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2AC8);
  }

  return result;
}

id sub_23BFDB300()
{
  *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_resourceDirectory];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_reader] = 0;
  *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_currentIndex] = 0;
  v2 = &v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_contentOption];
  *v2 = 0;
  v2[8] = 1;
  *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_previousAsset] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ParmesanGalleryReaderDataSource();
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_23BFDB3BC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_resourceDirectory);
  v6 = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_resourceDirectory + 8);
  if (!v6)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!a2 || (*v5 == a1 ? (v7 = v6 == a2) : (v7 = 0), !v7 && (sub_23BFFACC0() & 1) == 0))
  {
LABEL_10:
    *v5 = a1;
    v5[1] = a2;

    sub_23BFDB46C();
  }
}

void sub_23BFDB46C()
{
  if (*(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_contentOption + 8))
  {
    if (qword_27E1DFDB0 != -1)
    {
      swift_once();
    }

    v1 = sub_23BFF92B0();
    sub_23BF4A22C(v1, qword_27E1EB4E0);
    oslog = sub_23BFF9290();
    v2 = sub_23BFFA630();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_23BF0C000, oslog, v2, "No contentOption to load reader from", v3, 2u);
      MEMORY[0x23EEC4DF0](v3, -1, -1);
    }

LABEL_42:

    return;
  }

  v4 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_resourceDirectory + 8);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_contentOption);
    v6 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_resourceDirectory);
    v7 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_reader;
    v8 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_reader);
    if (v8)
    {

      oslog = v8;
      v9 = [oslog resourceDirectory];
      if (v9)
      {
        v10 = v9;
        v11 = sub_23BFFA300();
        v13 = v12;

        if (v11 == v6 && v4 == v13)
        {

LABEL_37:

          if (qword_27E1DFDB0 != -1)
          {
            swift_once();
          }

          v35 = sub_23BFF92B0();
          sub_23BF4A22C(v35, qword_27E1EB4E0);
          v36 = sub_23BFF9290();
          v37 = sub_23BFFA630();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_23BF0C000, v36, v37, "Reader is not nil and pointing to the same resource directory; nothing to load", v38, 2u);
            MEMORY[0x23EEC4DF0](v38, -1, -1);
          }

          goto LABEL_42;
        }

        v15 = sub_23BFFACC0();

        if (v15)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
    }

    v22 = sub_23BFDB9D8(v6, v4, v5);

    if (v22)
    {
      v23 = v0;
      if (qword_27E1DFDB0 != -1)
      {
        swift_once();
      }

      v24 = sub_23BFF92B0();
      sub_23BF4A22C(v24, qword_27E1EB4E0);
      v25 = sub_23BFF9290();
      v26 = sub_23BFFA630();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_23BF0C000, v25, v26, "Loaded new reader", v27, 2u);
        MEMORY[0x23EEC4DF0](v27, -1, -1);
      }

      [v22 setDelegate_];
      v28 = *(v23 + v7);
      *(v23 + v7) = v22;
      oslog = v22;

      sub_23BFDBA84();
      goto LABEL_42;
    }

    v29 = v0;
    if (qword_27E1DFDB0 != -1)
    {
      swift_once();
    }

    v30 = sub_23BFF92B0();
    sub_23BF4A22C(v30, qword_27E1EB4E0);
    v31 = sub_23BFF9290();
    v32 = sub_23BFFA630();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_23BF0C000, v31, v32, "Content option doesn't require an asset reader", v33, 2u);
      MEMORY[0x23EEC4DF0](v33, -1, -1);
    }

    v34 = *(v29 + v7);
    *(v29 + v7) = 0;
  }

  else
  {
    v16 = v0;
    if (qword_27E1DFDB0 != -1)
    {
      swift_once();
    }

    v17 = sub_23BFF92B0();
    sub_23BF4A22C(v17, qword_27E1EB4E0);
    v18 = sub_23BFF9290();
    v19 = sub_23BFFA630();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_23BF0C000, v18, v19, "No resource directory to point load reader from", v20, 2u);
      MEMORY[0x23EEC4DF0](v20, -1, -1);
    }

    v21 = *(v16 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_reader);
    *(v16 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_reader) = 0;
  }

  sub_23BFDBA84();
}

uint64_t sub_23BFDB9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 0:
      v4 = &selRef_readerForAlbumWithResourceDirectory_;
LABEL_7:
      v5 = sub_23BFFA2C0();
      v3 = [objc_opt_self() *v4];

      return v3;
    case 2:
      return 0;
    case 1:
      v4 = &selRef_readerForResourceDirectory_;
      goto LABEL_7;
  }

  result = sub_23BFFACF0();
  __break(1u);
  return result;
}

uint64_t sub_23BFDBA84()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_reader;
  v3 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_reader];
  if (!v3)
  {
    if (qword_27E1DFDB0 == -1)
    {
LABEL_16:
      v18 = sub_23BFF92B0();
      sub_23BF4A22C(v18, qword_27E1EB4E0);
      v19 = sub_23BFF9290();
      v20 = sub_23BFFA630();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_23BF0C000, v19, v20, "Asset reader is nil; clearing previous asset and resetting position", v21, 2u);
        MEMORY[0x23EEC4DF0](v21, -1, -1);
      }

      v22 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_previousAsset;
      goto LABEL_23;
    }

LABEL_58:
    swift_once();
    goto LABEL_16;
  }

  v4 = [v3 count];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v5 = &qword_27E1E2000;
  if (!v4)
  {
    if (qword_27E1DFDB0 == -1)
    {
LABEL_20:
      v23 = sub_23BFF92B0();
      sub_23BF4A22C(v23, qword_27E1EB4E0);
      v24 = sub_23BFF9290();
      v25 = sub_23BFFA630();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_23BF0C000, v24, v25, "Asset reader is empty; clearing previous asset and resetting position", v26, 2u);
        MEMORY[0x23EEC4DF0](v26, -1, -1);
      }

      v22 = v5[351];
LABEL_23:
      v27 = *&v1[v22];
      *&v1[v22] = 0;

      goto LABEL_24;
    }

LABEL_60:
    swift_once();
    goto LABEL_20;
  }

  v5 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_previousAsset;
  v6 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_previousAsset];
  if (!v6)
  {
    if (qword_27E1DFDB0 != -1)
    {
      goto LABEL_62;
    }

    goto LABEL_34;
  }

  v7 = *&v0[v2];
  if (!v7)
  {
    goto LABEL_64;
  }

  v8 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_currentIndex;
  v9 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_currentIndex];
  v10 = v6;
  result = [v7 count];
  if (result < 0)
  {
    goto LABEL_57;
  }

  if (!result)
  {
LABEL_65:
    __break(1u);
    return result;
  }

  v12 = v9 % result;
  *&v1[v8] = v9 % result;
  v13 = *&v1[v2];
  if (!v13)
  {
LABEL_29:
    if (qword_27E1DFDB0 != -1)
    {
      swift_once();
    }

    v28 = sub_23BFF92B0();
    sub_23BF4A22C(v28, qword_27E1EB4E0);
    v29 = v1;
    v30 = sub_23BFF9290();
    v31 = sub_23BFFA650();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = *&v1[v8];

      _os_log_impl(&dword_23BF0C000, v30, v31, "Asset in reader does not exist at index: %ld", v32, 0xCu);
      MEMORY[0x23EEC4DF0](v32, -1, -1);
    }

    else
    {

      v30 = v10;
      v10 = v29;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      goto LABEL_26;
    }

    return result;
  }

  v14 = [v13 count];
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  if (v12 >= v14)
  {
    goto LABEL_29;
  }

  v15 = *&v1[v2];
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = [v15 objectAtIndexedSubscript_];
  if (!v16)
  {
    goto LABEL_29;
  }

  v17 = v16;
  type metadata accessor for ParmesanAsset();
  if (sub_23BFFA880())
  {

    goto LABEL_25;
  }

  v49 = v17;
  v37 = *&v1[v2];
  if (!v37)
  {
    goto LABEL_55;
  }

  v38 = [v37 count];
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_64:
    result = v6;
    goto LABEL_65;
  }

  if (!v38)
  {
LABEL_55:
    v48 = *(v5 + v1);
    *(v5 + v1) = 0;

    sub_23BFDC298();
    goto LABEL_25;
  }

  v39 = 0;
  v50 = v38;
  while (1)
  {
    v40 = *&v1[v2];
    if (!v40)
    {
      v43 = v10;
LABEL_44:

      goto LABEL_45;
    }

    v41 = v10;
    v42 = [v40 count];
    if ((v42 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v39 >= v42)
    {
      goto LABEL_44;
    }

    v44 = *&v1[v2];
    if (!v44)
    {
      goto LABEL_44;
    }

    v45 = [v44 objectAtIndexedSubscript_];
    if (!v45)
    {
      goto LABEL_44;
    }

    v46 = v45;
    v47 = sub_23BFFA880();

    if (v47)
    {

      *&v1[v8] = v39;
      goto LABEL_25;
    }

LABEL_45:
    if (v50 == ++v39)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_62:
  swift_once();
LABEL_34:
  v33 = sub_23BFF92B0();
  sub_23BF4A22C(v33, qword_27E1EB4E0);
  v34 = sub_23BFF9290();
  v35 = sub_23BFFA630();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_23BF0C000, v34, v35, "no previous asset, starting at index 0", v36, 2u);
    MEMORY[0x23EEC4DF0](v36, -1, -1);
  }

LABEL_24:
  sub_23BFDC298();
LABEL_25:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
LABEL_26:
    sub_23BFC17B4();

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_23BFDC088(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_reader;
  result = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_reader);
  if (result)
  {
    v7 = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_currentIndex);
    result = [result count];
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 >= result)
    {
      return 0;
    }

    else
    {
      result = *(v2 + v4);
      if (result)
      {
        result = [result objectAtIndexedSubscript_];
        if (result)
        {
          v8 = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_previousAsset);
          *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_previousAsset) = result;
          v9 = result;

          v10 = objc_allocWithZone(type metadata accessor for ParmesanAssetComposition());
          return sub_23BF8B178(v9, a1, a2);
        }
      }
    }
  }

  return result;
}

unint64_t sub_23BFDC160(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_reader;
  result = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_reader);
  if (!result)
  {
    return result;
  }

  result = [result count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (!result)
  {
    return result;
  }

  v7 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_currentIndex;
  v8 = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_currentIndex);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_18;
  }

  result = *(v2 + v4);
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  result = [result count];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = result;
  if (!result)
  {
    goto LABEL_20;
  }

  result = *(v2 + v4);
  if (!result)
  {
    return result;
  }

  result = [result count];
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  v11 = v9 % v10;
  if (v11 >= result)
  {
    return 0;
  }

  result = *(v2 + v4);
  if (result)
  {
    result = [result objectAtIndexedSubscript_];
    if (result)
    {
      *(v2 + v7) = v11;
      v12 = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_previousAsset);
      *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_previousAsset) = result;
      v13 = result;

      v14 = objc_allocWithZone(type metadata accessor for ParmesanAssetComposition());
      return sub_23BF8B178(v13, a1, a2);
    }
  }

  return result;
}

void sub_23BFDC298()
{
  v1 = v0;
  if (qword_27E1DFDB0 != -1)
  {
    swift_once();
  }

  v2 = sub_23BFF92B0();
  sub_23BF4A22C(v2, qword_27E1EB4E0);
  v3 = sub_23BFF9290();
  v4 = sub_23BFFA650();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_23BF62294(0x736F507465736572, 0xEF29286E6F697469, &v7);
    _os_log_impl(&dword_23BF0C000, v3, v4, "%s", v5, 0xCu);
    sub_23BF4A9A4(v6);
    MEMORY[0x23EEC4DF0](v6, -1, -1);
    MEMORY[0x23EEC4DF0](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_currentIndex) = 0;
}

unint64_t sub_23BFDC458()
{
  sub_23BFFA9F0();
  MEMORY[0x23EEC3090](0xD000000000000029, 0x800000023C012CF0);
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_reader;
  v2 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_reader);
  if (v2 && (result = [v2 count], (result & 0x8000000000000000) != 0))
  {
    __break(1u);
  }

  else
  {
    v4 = sub_23BFFAC70();
    MEMORY[0x23EEC3090](v4);

    MEMORY[0x23EEC3090](0xD000000000000011, 0x800000023C012D20);
    v5 = sub_23BFFAC70();
    MEMORY[0x23EEC3090](v5);

    MEMORY[0x23EEC3090](0xD000000000000012, 0x800000023C012D40);
    sub_23BF4A264(&unk_27E1E2B68);
    v6 = sub_23BFFA360();
    MEMORY[0x23EEC3090](v6);

    MEMORY[0x23EEC3090](0xD000000000000016, 0x800000023C012D60);

    sub_23BF4A264(&qword_27E1E05D0);
    v7 = sub_23BFFA360();
    MEMORY[0x23EEC3090](v7);

    MEMORY[0x23EEC3090](0x726564616572202CLL, 0xEB00000000203D20);
    v8 = *(v0 + v1);
    sub_23BF4A264(&qword_27E1E2B78);
    v9 = sub_23BFFA360();
    MEMORY[0x23EEC3090](v9);

    return 0;
  }

  return result;
}

id sub_23BFDC6C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanGalleryReaderDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BFDC78C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_23BFDC7D8(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_contentOption;
  v4 = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_contentOption);
  v5 = *(v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion31ParmesanGalleryReaderDataSource_contentOption + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  if (a2)
  {
    if (v5)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v4 != a1)
  {
    LOBYTE(v5) = 1;
  }

  if (v5)
  {
LABEL_3:
    sub_23BFDB46C();
  }
}

uint64_t sub_23BFDC858(uint64_t a1)
{
  v2 = sub_23BFF96E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFA8DB4(v19);

  sub_23BF9C60C(v19);
  v6 = *(a1 + 32);
  if (!v6)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v2);
    goto LABEL_9;
  }

  v7 = (v3 + 104);
  if (!*(a1 + 24))
  {
    v11 = [v6 isBrightForGlass];
    v9 = *v7;
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = MEMORY[0x277CDF3C0];
    goto LABEL_8;
  }

  v8 = [v6 isBrightForVibrant];
  v9 = *v7;
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = MEMORY[0x277CDF3D0];
LABEL_8:
  v9(v5, *v10, v2);
LABEL_9:
  sub_23BFB1630(v5);

  v12 = *(a1 + 16);
  if (*(a1 + 24))
  {
    if (*(a1 + 24) == 1)
    {

      sub_23BF674B4(v12, 1);
      v13 = sub_23BFF9DD0();
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    else
    {

      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0x200000000;
    }
  }

  else
  {
    v15 = v12;

    v16 = 0x100000000;
    v14 = 0xEF736F746F685065;
    v13 = 0x6361466863746177;
  }

  sub_23BFB0F14(v13, v14, v16 | v15);
}

uint64_t sub_23BFDCA58(uint64_t a1, uint64_t a2, double a3)
{
  v7 = sub_23BFF96E0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v44 = v9;
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = v12;
      v15 = sub_23BFF9DD0();
      v46 = 0;
      v47 = v15;
      v12 = 0;
      v45 = 0;
      goto LABEL_7;
    }

    v46 = 0;
    v47 = 0;
    v12 = 0;
    v16 = v13;
  }

  else
  {
    v46 = 0xEF736F746F685065;
    v47 = 0x6361466863746177;
    v16 = 1;
  }

  v45 = v16;
LABEL_7:
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  if (*(a2 + 24))
  {
    if (v18 == 1)
    {
      v19 = v17;
      v20 = sub_23BFF9DD0();
      v42 = 0;
      v43 = v20;
      v17 = 0;
      v21 = 0;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v17 = 0;
      v21 = v18;
    }
  }

  else
  {
    v42 = 0xEF736F746F685065;
    v43 = 0x6361466863746177;
    v21 = 1;
  }

  v48 = v3;
  sub_23BFA8DB4(v49);

  sub_23BF9C60C(v49);
  if (a3 >= 0.5)
  {
    v27 = *(a2 + 32);
    if (!v27)
    {
      goto LABEL_21;
    }

    v28 = (v8 + 104);
    if (v18)
    {
      v29 = [v27 isBrightForVibrant];
      v25 = *v28;
      if (v29)
      {
LABEL_20:
        v26 = MEMORY[0x277CDF3D0];
        goto LABEL_26;
      }
    }

    else
    {
      v31 = [v27 isBrightForGlass];
      v25 = *v28;
      if (v31)
      {
        goto LABEL_20;
      }
    }

    v26 = MEMORY[0x277CDF3C0];
    goto LABEL_26;
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = (v8 + 104);
    if (v13)
    {
      v24 = [v22 isBrightForVibrant];
      v25 = *v23;
      if (v24)
      {
LABEL_16:
        v26 = MEMORY[0x277CDF3D0];
LABEL_26:
        v25(v11, *v26, v44);
        goto LABEL_27;
      }
    }

    else
    {
      v30 = [v22 isBrightForGlass];
      v25 = *v23;
      if (v30)
      {
        goto LABEL_16;
      }
    }

    v26 = MEMORY[0x277CDF3C0];
    goto LABEL_26;
  }

LABEL_21:
  (*(v8 + 104))(v11, *MEMORY[0x277CDF3C0], v44);
LABEL_27:
  sub_23BFB1630(v11);

  v33 = v45;

  v35 = v42;
  v34 = v43;
  v32 = a3;
  v37 = v46;
  v36 = v47;
  sub_23BFB2A60(v43, v42, v17 | (v21 << 32), v47, v46, v12 | (v33 << 32), v32);
  sub_23BFB0F14(v39, v40, v38 & 0xFFFFFFFFFFLL);

  sub_23BFA85DC(v34, v35, v17, v21);
  return sub_23BFA85DC(v36, v37, v12, v33);
}

id sub_23BFDCDEC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BFDCEA4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_23BFFA920();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23BFDCF30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5)
  {
    v7 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v9 = v7 + ((v6 + *(v4 + 80) + ((v6 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80));
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_25;
  }

LABEL_14:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_23BFDD090(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = (v7 + *(v5 + 80) + ((v7 + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80);
  if (!v6)
  {
    ++v7;
  }

  v9 = v7 + v8;
  v10 = a3 >= v6;
  v11 = a3 - v6;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 < a2)
  {
    v13 = ~v6 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_41:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_38;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_41;
      }
    }

LABEL_38:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_30;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return result;
  }

LABEL_30:
  v20 = *(v5 + 56);

  return v20();
}

uint64_t sub_23BFDD2D0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_23BFDD340()
{
  result = qword_27E1E2C28;
  if (!qword_27E1E2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2C28);
  }

  return result;
}

BOOL sub_23BFDD3A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  v6 = *(v4 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier) == *(v5 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier) && *(v4 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier + 8) == *(v5 + OBJC_IVAR___NTKParmesanGalleryComposition_localIdentifier + 8);
  if (v6 || (sub_23BFFACC0()) && (v7 = *(v4 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout), v8 = *(v5 + OBJC_IVAR___NTKParmesanGalleryComposition_timeLayout), *(v7 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) == *(v8 + OBJC_IVAR___NTKParmesanTimeLayout_alignment)) && *(v7 + OBJC_IVAR___NTKParmesanTimeLayout_scale) == *(v8 + OBJC_IVAR___NTKParmesanTimeLayout_scale) && *(v4 + OBJC_IVAR___NTKParmesanGalleryComposition_numerals) == *(v5 + OBJC_IVAR___NTKParmesanGalleryComposition_numerals) && *(a1 + 24) == *(a2 + 24))
  {
    return *(a1 + 25) == *(a2 + 25);
  }

  else
  {
    return 0;
  }
}

char *sub_23BFDD498(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  *&v6[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryContentContainerView_opacityPairMatrixFilter] = 0;
  *&v6[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryContentContainerView_contentView] = a1;
  v13 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v14 = a1;
  v15 = [v13 initWithFrame_];
  *&v6[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryContentContainerView_legibilityCurtainView] = v15;
  v6[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryContentContainerView_useOpacityPairFilter] = a2;
  v18.receiver = v6;
  v18.super_class = type metadata accessor for ParmesanGalleryContentContainerView();
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a3, a4, a5, a6);
  [v16 addSubview_];
  [v16 insertSubview:*&v16[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryContentContainerView_legibilityCurtainView] aboveSubview:*&v16[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryContentContainerView_contentView]];
  sub_23BFDD640();

  return v16;
}

void sub_23BFDD640()
{
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryContentContainerView_opacityPairMatrixFilter;
  if (!*&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion35ParmesanGalleryContentContainerView_opacityPairMatrixFilter])
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v3 = sub_23BFF91F0();
    [v2 setValue:v3 forKey:*MEMORY[0x277CDA360]];

    v4 = *&v0[v1];
    *&v0[v1] = v2;
    v5 = v2;

    v6 = [v0 layer];
    sub_23BF4A264(&qword_27E1E11E8);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_23C001BB0;
    *(v7 + 56) = sub_23BFC5488();
    *(v7 + 32) = v5;
    v8 = v5;
    v9 = sub_23BFFA450();

    [v6 setFilters_];
  }
}

id sub_23BFDD7F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanGalleryContentContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_23BFDD8E4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_23BFFAAC0();

    if (v4)
    {
      type metadata accessor for ParmesanAssetLayout();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_23BFE2D80(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_23BFDD998()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

uint64_t sub_23BFDDADC()
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  return sub_23BFFADF0();
}

void sub_23BFDDC24(uint64_t a1)
{
  v3 = OBJC_IVAR___NTKParmesanAsset_layouts;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = sub_23BFFAAA0() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = ~v9;
    v5 = v4 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v4 + 64);
    v8 = v4;
  }

  swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = (v6 + 64) >> 6;
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (sub_23BFFAAF0())
  {
    type metadata accessor for ParmesanTimeLayout();
    swift_dynamicCast();
    v14 = v19;
    v15 = v12;
    v16 = v7;
    if (v19)
    {
      while (*&v14[OBJC_IVAR___NTKParmesanTimeLayout_scale] != a1)
      {

        v12 = v15;
        v7 = v16;
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_8;
        }

LABEL_11:
        v17 = v12;
        v18 = v7;
        v15 = v12;
        if (!v7)
        {
          while (1)
          {
            v15 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              goto LABEL_19;
            }

            v18 = *(v5 + 8 * v15);
            ++v17;
            if (v18)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          return;
        }

LABEL_15:
        v16 = (v18 - 1) & v18;
        v14 = *(*(v8 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v18)))));
        if (!v14)
        {
          break;
        }
      }
    }
  }

LABEL_19:
  sub_23BF669D8();
}

void sub_23BFDDE0C()
{
  v1 = v0;
  v2 = [v0 layoutForScale_];
  if (v2)
  {
  }

  else
  {
    v3 = [v0 layoutForScale_];
    if (v3)
    {
      v4 = v3;
      v5 = *(*&v3[OBJC_IVAR___NTKParmesanAssetLayout_timeLayout] + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
      v6 = type metadata accessor for ParmesanTimeLayout();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = v5;
      *&v7[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 0;
      v31.receiver = v7;
      v31.super_class = v6;
      v8 = objc_msgSendSuper2(&v31, sel_init);
      v9 = *&v4[OBJC_IVAR___NTKParmesanAssetLayout_originalCrop];
      v10 = *&v4[OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness];
      v12 = *&v4[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName];
      v11 = *&v4[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName + 8];
      v13 = v4[OBJC_IVAR___NTKParmesanAssetLayout_userEdited];
      v14 = type metadata accessor for ParmesanAssetLayout();
      v15 = objc_allocWithZone(v14);
      v16 = OBJC_IVAR___NTKParmesanAssetLayout_mask;
      *&v15[OBJC_IVAR___NTKParmesanAssetLayout_mask] = 0;
      v17 = OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis;
      *&v15[OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis] = 0;
      v18 = OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness;
      *&v15[OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness] = 0;
      *&v15[OBJC_IVAR___NTKParmesanAssetLayout_originalCrop] = v9;
      v19 = &v15[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName];
      *v19 = v12;
      v19[1] = v11;
      *&v15[v16] = 0;
      *&v15[OBJC_IVAR___NTKParmesanAssetLayout_timeLayout] = v8;
      *&v15[v17] = 0;
      *&v15[v18] = v10;
      v15[OBJC_IVAR___NTKParmesanAssetLayout_userEdited] = v13;
      v30.receiver = v15;
      v30.super_class = v14;
      v20 = v8;
      v21 = v9;

      v22 = objc_msgSendSuper2(&v30, sel_init);
      v23 = OBJC_IVAR___NTKParmesanAsset_layouts;
      swift_beginAccess();
      if (v22)
      {
        v24 = *&v1[v23];
        if ((v24 & 0xC000000000000001) != 0)
        {
          if (v24 < 0)
          {
            v25 = *&v1[v23];
          }

          else
          {
            v25 = v24 & 0xFFFFFFFFFFFFFF8;
          }

          v26 = sub_23BFFAAB0();
          if (__OFADD__(v26, 1))
          {
            __break(1u);
            return;
          }

          *&v1[v23] = sub_23BFE3834(v25, v26 + 1);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *&v1[v23];
        sub_23BFE7DE4(v22, v20, isUniquelyReferenced_nonNull_native);
        *&v1[v23] = v29;
      }

      else
      {
        v28 = sub_23BFE3650(v20);
      }

      swift_endAccess();
    }
  }
}

id sub_23BFDED34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanAsset();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ParmesanAsset()
{
  result = qword_27E1E2C58;
  if (!qword_27E1E2C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23BFDEE78()
{
  sub_23BFDF4C0(319, &qword_27E1E24A0, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_23BFDF4C0(319, &qword_27E1E1A28, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_23BFDEFCC(void *a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E0B80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15[-v6];
  v8 = sub_23BF4A264(&qword_27E1E2D00);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15[-v10];
  sub_23BF4C484(a1, a1[3]);
  sub_23BFE4390();
  sub_23BFFAE40();
  v17 = 0;

  sub_23BFFAC10();
  if (!v2)
  {

    v13 = OBJC_IVAR___NTKParmesanAsset_modificationDate;
    swift_beginAccess();
    sub_23BF4B33C(v3 + v13, v7, &qword_27E1E0B80);
    LOBYTE(v16) = 1;
    sub_23BFF8D90();
    sub_23BFE5284(&qword_27E1E2D08, MEMORY[0x277CC9578]);
    sub_23BFFAC00();
    sub_23BF4B2D4(v7, &qword_27E1E0B80);
    v16 = *(v3 + OBJC_IVAR___NTKParmesanAsset_presentationSize);
    LOBYTE(v18) = 2;
    type metadata accessor for CGSize(0);
    sub_23BFE5284(&qword_27E1E2D10, type metadata accessor for CGSize);
    sub_23BFFAC50();
    *&v16 = *(v3 + OBJC_IVAR___NTKParmesanAsset_videoInfo);
    LOBYTE(v18) = 3;
    type metadata accessor for ParmesanAssetVideoInfo();
    sub_23BFE5284(&qword_27E1E2D18, type metadata accessor for ParmesanAssetVideoInfo);
    sub_23BFFAC00();
    *&v16 = *(v3 + OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout);
    LOBYTE(v18) = 4;
    type metadata accessor for ParmesanTimeLayout();
    sub_23BFE5284(&qword_27E1E2340, type metadata accessor for ParmesanTimeLayout);
    sub_23BFFAC50();
    v14 = OBJC_IVAR___NTKParmesanAsset_layouts;
    swift_beginAccess();
    v18 = *(v3 + v14);
    v15[15] = 5;
    sub_23BF4A264(&qword_27E1E2C90);
    sub_23BFE5198();
    sub_23BFFAC50();
    LOBYTE(v18) = 6;

    sub_23BFFABF0();
  }

  (*(v9 + 8))(v11, v8);
}

void sub_23BFDF4C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23BFFA920();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_23BFDF514(uint64_t a1)
{
  v3 = v1;
  v5 = sub_23BF4A264(&qword_27E1E0B80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v40 - v6;
  v8 = sub_23BF4A264(&qword_27E1E2C68);
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v40 - v9;
  v11 = OBJC_IVAR___NTKParmesanAsset_modificationDate;
  v12 = sub_23BFF8D90();
  v13 = *(*(v12 - 8) + 56);
  v44 = v11;
  v13(&v3[v11], 1, 1, v12);
  v14 = OBJC_IVAR___NTKParmesanAsset_layouts;
  *&v3[v14] = sub_23BFE4298(MEMORY[0x277D84F90]);
  v15 = &v3[OBJC_IVAR___NTKParmesanAsset_accessibilityDescription];
  *v15 = 0;
  v15[1] = 0;
  v47 = v14;
  v48 = v15;
  v46 = OBJC_IVAR___NTKParmesanAsset_videoInfo;
  *&v3[OBJC_IVAR___NTKParmesanAsset_videoInfo] = 0;
  v16 = OBJC_IVAR___NTKParmesanAsset_resourceDirectory;
  v17 = sub_23BFF8D10();
  v18 = *(*(v17 - 8) + 56);
  v43 = v16;
  v18(&v3[v16], 1, 1, v17);
  *&v3[OBJC_IVAR___NTKParmesanAsset_photoVersion] = 10;
  v19 = *(a1 + 24);
  v45 = a1;
  v20 = a1;
  v21 = v10;
  sub_23BF4C484(v20, v19);
  sub_23BFE4390();
  sub_23BFFAE20();
  if (v2)
  {
    v25 = v44;
    sub_23BF4A9A4(v45);
    sub_23BF4B2D4(&v3[v25], &qword_27E1E0B80);
    v26 = v46;

    sub_23BF4B2D4(&v3[v43], &qword_27E1E0B78);
    type metadata accessor for ParmesanAsset();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v41;
    v22 = v42;
    LOBYTE(v50) = 0;
    v24 = sub_23BFFABA0();
    v28 = &v3[OBJC_IVAR___NTKParmesanAsset_localIdentifier];
    *v28 = v24;
    v28[1] = v29;
    v40[1] = v28;
    LOBYTE(v50) = 1;
    sub_23BFE5284(&qword_27E1E2C78, MEMORY[0x277CC9578]);
    v30 = v7;
    sub_23BFFAB90();
    v31 = v44;
    swift_beginAccess();
    sub_23BFE4B60(v30, &v3[v31], &qword_27E1E0B80);
    swift_endAccess();
    type metadata accessor for CGSize(0);
    LOBYTE(v51) = 2;
    sub_23BFE5284(&qword_27E1E2C80, type metadata accessor for CGSize);
    sub_23BFFABE0();
    v32 = v46;
    *&v3[OBJC_IVAR___NTKParmesanAsset_presentationSize] = v50;
    type metadata accessor for ParmesanAssetVideoInfo();
    LOBYTE(v51) = 3;
    sub_23BFE5284(&qword_27E1E2C88, type metadata accessor for ParmesanAssetVideoInfo);
    v40[0] = v21;
    sub_23BFFAB90();
    v33 = v47;
    v34 = *&v3[v32];
    *&v3[v32] = v50;

    type metadata accessor for ParmesanTimeLayout();
    LOBYTE(v51) = 4;
    sub_23BFE5284(&qword_27E1E2318, type metadata accessor for ParmesanTimeLayout);
    sub_23BFFABE0();
    *&v3[OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout] = v50;
    sub_23BF4A264(&qword_27E1E2C90);
    LOBYTE(v50) = 5;
    sub_23BFE43E4();
    sub_23BFFABE0();
    v35 = v51;
    swift_beginAccess();
    *&v3[v33] = v35;

    LOBYTE(v51) = 6;
    v36 = sub_23BFFAB80();
    v37 = v48;
    *v48 = v36;
    v37[1] = v38;

    v39 = type metadata accessor for ParmesanAsset();
    v49.receiver = v3;
    v49.super_class = v39;
    v3 = objc_msgSendSuper2(&v49, sel_init);
    (*(v23 + 8))(v40[0], v22);
    sub_23BF4A9A4(v45);
  }

  return v3;
}

char *sub_23BFDFC5C@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ParmesanAsset());
  result = sub_23BFDF514(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23BFDFCF0()
{
  sub_23BFFA3A0();
}

uint64_t sub_23BFDFE28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BFE56D0();
  *a1 = result;
  return result;
}

void sub_23BFDFE58(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEF7265696669746ELL;
    v9 = 0x800000023C00BB40;
    if (v2 != 1)
    {
      v9 = 0x800000023C00BB60;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0x6564496C61636F6CLL;
    }

    if (!v10)
    {
      v8 = v9;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x7374756F79616CLL;
    if (v2 != 5)
    {
      v4 = 0xD000000000000018;
      v3 = 0x800000023C00BBA0;
    }

    v5 = 0xE90000000000006FLL;
    v6 = 0xD000000000000013;
    if (v2 == 3)
    {
      v6 = 0x666E496F65646976;
    }

    else
    {
      v5 = 0x800000023C00BB80;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_23BFDFF5C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0x6564496C61636F6CLL;
    }
  }

  else
  {
    v2 = 0x7374756F79616CLL;
    if (v1 != 5)
    {
      v2 = 0xD000000000000018;
    }

    v3 = 0xD000000000000013;
    if (v1 == 3)
    {
      v3 = 0x666E496F65646976;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_23BFE0058@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23BFE56D0();
  *a1 = result;
  return result;
}

uint64_t sub_23BFE0080(uint64_t a1)
{
  v2 = sub_23BFE4390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23BFE00BC(uint64_t a1)
{
  v2 = sub_23BFE4390();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23BFE00F8@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR___NTKParmesanAsset_localIdentifier);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_23BFE0114()
{
  v1 = v0;
  v2 = sub_23BF4A264(&qword_27E1E0B80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v34 - v3;
  v5 = sub_23BFF8D90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = (v1 + OBJC_IVAR___NTKParmesanAsset_localIdentifier);

  v11 = sub_23BFFA2C0();

  v12 = [v9 uuidFromLocalIdentifier_];

  if (v12)
  {
    v13 = sub_23BFFA300();
    v15 = v14;
  }

  else
  {
    v13 = *v10;
    v15 = v10[1];
  }

  v16 = OBJC_IVAR___NTKParmesanAsset_modificationDate;
  swift_beginAccess();
  sub_23BF4B33C(v1 + v16, v4, &qword_27E1E0B80);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_23BF4B2D4(v4, &qword_27E1E0B80);
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v35 = 45;
    v36 = 0xE100000000000000;
    sub_23BFF8D70();
    v19 = sub_23BFFA580();
    MEMORY[0x23EEC3090](v19);

    v17 = v35;
    v18 = v36;
    (*(v6 + 8))(v8, v5);
  }

  v20 = [*(v1 + OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout) description];
  v21 = sub_23BFFA300();
  v23 = v22;

  v24 = sub_23BFA41AC();
  v25 = sub_23BFA3D38(v24);
  v26 = OBJC_IVAR___NTKParmesanAsset_layouts;
  swift_beginAccess();
  v27 = *(v1 + v26);

  v28 = sub_23BFDD8E4(v25, v27);

  if (v28)
  {
    v29 = [v28 uniqueSnapshotIdentifier];

    v30 = sub_23BFFA300();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  v34[0] = v13;
  v34[1] = v15;
  MEMORY[0x23EEC3090](45, 0xE100000000000000);
  MEMORY[0x23EEC3090](v21, v23);

  MEMORY[0x23EEC3090](45, 0xE100000000000000);
  MEMORY[0x23EEC3090](v30, v32);

  MEMORY[0x23EEC3090](v17, v18);

  return v34[0];
}

void sub_23BFE0654(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v4 = a1;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        a1 = a2;
      }

      else
      {
        a1 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      a2 = v4;

LABEL_39:
      MEMORY[0x2821FD6E8](a1, a2);
      return;
    }

    v5 = v4;
    goto LABEL_17;
  }

  if (v3)
  {
    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = v2;
LABEL_17:

    sub_23BFE3D94(v5, a2);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v6 = a2;
    v7 = 0;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_32:
      v15 = v12 | (v7 << 6);
      v16 = *(*(v2 + 56) + 8 * v15);
      v17 = *(*(v2 + 48) + 8 * v15);
      v18 = v16;
      v19 = sub_23BFE2D80(v17);
      v21 = v20;

      if ((v21 & 1) == 0)
      {

        return;
      }

      type metadata accessor for ParmesanAssetLayout();
      v22 = *(*(v6 + 56) + 8 * v19);
      v23 = sub_23BFFA880();

      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return;
      }

      v14 = *(v2 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_39;
  }
}

uint64_t sub_23BFE0858@<X0>(void *a1@<X8>)
{
  v54 = a1;
  v2 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v43 - v3;
  v51 = &v43 - v3;
  v5 = sub_23BF4A264(&qword_27E1E0B80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v9 = *(v1 + OBJC_IVAR___NTKParmesanAsset_localIdentifier);
  v8 = *(v1 + OBJC_IVAR___NTKParmesanAsset_localIdentifier + 8);
  v49 = v7;
  v50 = v9;
  v46 = v8;
  v10 = OBJC_IVAR___NTKParmesanAsset_modificationDate;
  swift_beginAccess();
  sub_23BF4B33C(v1 + v10, v7, &qword_27E1E0B80);
  v11 = *(v1 + OBJC_IVAR___NTKParmesanAsset_presentationSize);
  v12 = *(v1 + OBJC_IVAR___NTKParmesanAsset_presentationSize + 8);
  v43 = *(v1 + OBJC_IVAR___NTKParmesanAsset_videoInfo);
  v13 = v43;
  v14 = sub_23BFF8D10();
  v15 = *(*(v14 - 8) + 56);
  v15(v4, 1, 1, v14);
  v16 = *(v1 + OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout);
  v17 = OBJC_IVAR___NTKParmesanAsset_layouts;
  swift_beginAccess();
  v18 = *(v1 + v17);
  v19 = *(v1 + OBJC_IVAR___NTKParmesanAsset_accessibilityDescription);
  v20 = *(v1 + OBJC_IVAR___NTKParmesanAsset_accessibilityDescription + 8);
  v53 = v19;
  v47 = v18;
  v48 = v20;
  v52 = type metadata accessor for ParmesanAsset();
  v21 = objc_allocWithZone(v52);
  v22 = OBJC_IVAR___NTKParmesanAsset_modificationDate;
  v23 = sub_23BFF8D90();
  (*(*(v23 - 8) + 56))(&v21[v22], 1, 1, v23);
  v24 = OBJC_IVAR___NTKParmesanAsset_layouts;

  v25 = v46;

  v44 = v13;
  v45 = v16;

  *&v21[v24] = sub_23BFE4298(MEMORY[0x277D84F90]);
  v26 = &v21[OBJC_IVAR___NTKParmesanAsset_accessibilityDescription];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = OBJC_IVAR___NTKParmesanAsset_videoInfo;
  *&v21[OBJC_IVAR___NTKParmesanAsset_videoInfo] = 0;
  v28 = OBJC_IVAR___NTKParmesanAsset_resourceDirectory;
  v15(&v21[OBJC_IVAR___NTKParmesanAsset_resourceDirectory], 1, 1, v14);
  *&v21[OBJC_IVAR___NTKParmesanAsset_photoVersion] = 10;
  v29 = &v21[OBJC_IVAR___NTKParmesanAsset_localIdentifier];
  *v29 = v50;
  *(v29 + 1) = v25;
  swift_beginAccess();
  v30 = v49;
  sub_23BF663D8(v49, &v21[v22], &qword_27E1E0B80);
  swift_endAccess();
  v31 = &v21[OBJC_IVAR___NTKParmesanAsset_presentationSize];
  *v31 = v11;
  *(v31 + 1) = v12;
  v32 = *&v21[v27];
  *&v21[v27] = v43;
  v33 = v44;

  swift_beginAccess();
  v34 = &v21[v28];
  v35 = v51;
  sub_23BF663D8(v51, v34, &qword_27E1E0B78);
  swift_endAccess();
  v36 = v45;
  *&v21[OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout] = v45;
  swift_beginAccess();
  *&v21[v24] = v47;
  v37 = v36;

  v38 = v48;
  *v26 = v53;
  *(v26 + 1) = v38;

  v39 = v52;
  v55.receiver = v21;
  v55.super_class = v52;
  v40 = objc_msgSendSuper2(&v55, sel_init);

  sub_23BF4B2D4(v35, &qword_27E1E0B78);
  result = sub_23BF4B2D4(v30, &qword_27E1E0B80);
  v42 = v54;
  v54[3] = v39;
  *v42 = v40;
  return result;
}

uint64_t sub_23BFE0D7C()
{
  v1 = v0;
  sub_23BFFA9F0();

  v2 = *&v0[OBJC_IVAR___NTKParmesanAsset_localIdentifier];
  v3 = *&v0[OBJC_IVAR___NTKParmesanAsset_localIdentifier + 8];

  MEMORY[0x23EEC3090](v2, v3);

  MEMORY[0x23EEC3090](0x616C209480E2205DLL, 0xAE005B3A74756F79);
  v4 = *&v0[OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout];
  v5 = [v4 description];
  v6 = sub_23BFFA300();
  v8 = v7;

  MEMORY[0x23EEC3090](v6, v8);

  MEMORY[0x23EEC3090](8236, 0xE200000000000000);
  v9 = [v1 preferredLayout];
  if (v9)
  {
    v10 = v9;
  }

  sub_23BF4A264(&qword_27E1E05D0);
  v11 = sub_23BFFA360();
  MEMORY[0x23EEC3090](v11);

  MEMORY[0x23EEC3090](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_23BFE0F34()
{
  v11[4] = *MEMORY[0x277D85DE8];
  sub_23BFF8B50();
  swift_allocObject();
  sub_23BFF8B40();
  type metadata accessor for ParmesanAsset();
  sub_23BFE5284(&qword_27E1E2CE8, type metadata accessor for ParmesanAsset);
  v1 = sub_23BFF8B30();
  v3 = v2;

  v4 = objc_opt_self();
  v5 = sub_23BFF8D30();
  v11[0] = 0;
  v6 = [v4 JSONObjectWithData:v5 options:4 error:v11];

  if (v6)
  {
    v7 = v11[0];
    sub_23BFFA960();
    sub_23BF94C00(v1, v3);
    swift_unknownObjectRelease();
    sub_23BF4A264(&qword_27E1E0BB8);
    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
    v8 = v11[0];
    v9 = sub_23BFF8BC0();

    swift_willThrow();
    sub_23BF94C00(v1, v3);
  }

  return 0;
}

id sub_23BFE1264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[0] = a3;
  v23[3] = *MEMORY[0x277D85DE8];
  v3 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_23BFF8D10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = sub_23BFFA260();
  v23[0] = 0;
  v12 = [v10 dataWithJSONObject:v11 options:1 error:v23];

  v13 = v23[0];
  if (v12)
  {
    v14 = sub_23BFF8D40();
    v16 = v15;

    sub_23BFF8B20();
    swift_allocObject();
    sub_23BFF8B10();
    sub_23BFE5284(&qword_27E1E2CE0, type metadata accessor for ParmesanAsset);
    sub_23BFF8B00();
    v19 = v23[0];
    if (v22[0])
    {
      sub_23BFF8C10();
      (*(v7 + 32))(v5, v9, v6);
      (*(v7 + 56))(v5, 0, 1, v6);
      v20 = OBJC_IVAR___NTKParmesanAsset_resourceDirectory;
      swift_beginAccess();
      sub_23BFE4B60(v5, v19 + v20, &qword_27E1E0B78);
      swift_endAccess();
    }

    sub_23BFDDE0C();

    sub_23BF94C00(v14, v16);
  }

  else
  {
    v17 = v13;
    v18 = sub_23BFF8BC0();

    swift_willThrow();
    return 0;
  }

  return v19;
}

id sub_23BFE194C(uint64_t a1)
{
  if (*(*&v1[OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout] + OBJC_IVAR___NTKParmesanTimeLayout_scale) == a1)
  {
    return [v1 preferredLayout];
  }

  v4 = type metadata accessor for ParmesanTimeLayout();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
  *&v5[OBJC_IVAR___NTKParmesanTimeLayout_scale] = a1;
  v15.receiver = v5;
  v15.super_class = v4;
  v6 = objc_msgSendSuper2(&v15, sel_init);
  v7 = OBJC_IVAR___NTKParmesanAsset_layouts;
  swift_beginAccess();
  v8 = *&v1[v7];

  v9 = sub_23BFDD8E4(v6, v8);

  result = v9;
  if (!v9)
  {
    v10 = objc_allocWithZone(v4);
    *&v10[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 1;
    *&v10[OBJC_IVAR___NTKParmesanTimeLayout_scale] = a1;
    v14.receiver = v10;
    v14.super_class = v4;
    v11 = objc_msgSendSuper2(&v14, sel_init);
    v12 = *&v1[v7];

    v13 = sub_23BFDD8E4(v11, v12);

    return v13;
  }

  return result;
}

uint64_t sub_23BFE1B08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v56 = a2;
  v3 = sub_23BFF8BF0();
  v54 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - v7;
  v9 = sub_23BFF8D10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___NTKParmesanAsset_resourceDirectory;
  swift_beginAccess();
  sub_23BF4B33C(v2 + v13, v8, &qword_27E1E0B78);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_23BF4B2D4(v8, &qword_27E1E0B78);
    if (qword_27E1DFD90 != -1)
    {
      swift_once();
    }

    v14 = sub_23BFF92B0();
    sub_23BF4A22C(v14, qword_27E1EB480);
    v15 = v2;
    v16 = sub_23BFF9290();
    v17 = sub_23BFFA640();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v56;
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v15;
      *v21 = v15;
      v22 = v15;
      _os_log_impl(&dword_23BF0C000, v16, v17, "No resourceDirectory on asset; cannot make imageURL for layout; (asset: %@)", v20, 0xCu);
      sub_23BF4B2D4(v21, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v21, -1, -1);
      MEMORY[0x23EEC4DF0](v20, -1, -1);
    }

LABEL_21:
    v32 = 1;
    return (*(v10 + 56))(v19, v32, 1, v9);
  }

  v53 = v10;
  (*(v10 + 32))(v12, v8, v9);
  v23 = v55;
  if (!v55)
  {
    if (qword_27E1DFD90 != -1)
    {
      swift_once();
    }

    v33 = sub_23BFF92B0();
    sub_23BF4A22C(v33, qword_27E1EB480);
    v34 = v2;
    v35 = sub_23BFF9290();
    v36 = sub_23BFFA640();

    v37 = os_log_type_enabled(v35, v36);
    v19 = v56;
    v10 = v53;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v34;
      *v39 = v34;
      v40 = v34;
      _os_log_impl(&dword_23BF0C000, v35, v36, "Provided time layout is nil; cannot fetch asset's layout; (asset: %@)", v38, 0xCu);
      sub_23BF4B2D4(v39, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v39, -1, -1);
      MEMORY[0x23EEC4DF0](v38, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    goto LABEL_21;
  }

  v24 = v55;
  v25 = [v2 layoutFor_];
  if (!v25)
  {
    v41 = v12;
    if (qword_27E1DFD90 != -1)
    {
      swift_once();
    }

    v42 = sub_23BFF92B0();
    sub_23BF4A22C(v42, qword_27E1EB480);
    v43 = v24;
    v44 = v2;
    v45 = sub_23BFF9290();
    v46 = sub_23BFFA640();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412546;
      *(v47 + 4) = v43;
      *(v47 + 12) = 2112;
      *(v47 + 14) = v44;
      *v48 = v23;
      v48[1] = v44;
      v49 = v43;
      v50 = v44;
      _os_log_impl(&dword_23BF0C000, v45, v46, "No layout found for provided time layout (%@) on asset (%@)", v47, 0x16u);
      sub_23BF4A264(&qword_27E1E0B50);
      swift_arrayDestroy();
      MEMORY[0x23EEC4DF0](v48, -1, -1);
      MEMORY[0x23EEC4DF0](v47, -1, -1);
    }

    else
    {
      v49 = v45;
      v45 = v43;
    }

    v19 = v56;

    v10 = v53;
    (*(v53 + 8))(v41, v9);
    goto LABEL_21;
  }

  v26 = *&v25[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName + 8];
  v57 = *&v25[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName];
  v58 = v26;
  v27 = v54;
  v28 = v9;
  v29 = v12;
  v30 = v25;
  (*(v54 + 104))(v5, *MEMORY[0x277CC91D8], v3);
  sub_23BF66440();

  v19 = v56;
  sub_23BFF8CF0();

  (*(v27 + 8))(v5, v3);

  v10 = v53;
  v31 = v29;
  v9 = v28;
  (*(v53 + 8))(v31, v28);
  v32 = 0;
  return (*(v10 + 56))(v19, v32, 1, v9);
}

uint64_t sub_23BFE2218@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v4 = sub_23BFF8BF0();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v67 - v8;
  v10 = sub_23BFF8D10();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___NTKParmesanAsset_resourceDirectory;
  swift_beginAccess();
  sub_23BF4B33C(v2 + v14, v9, &qword_27E1E0B78);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_23BF4B2D4(v9, &qword_27E1E0B78);
    if (qword_27E1DFD90 != -1)
    {
      swift_once();
    }

    v15 = sub_23BFF92B0();
    sub_23BF4A22C(v15, qword_27E1EB480);
    v16 = v2;
    v17 = sub_23BFF9290();
    v18 = sub_23BFFA640();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_23BF0C000, v17, v18, "No resourceDirectory on asset; cannot make imageMaskURL; (asset: %@)", v19, 0xCu);
      sub_23BF4B2D4(v20, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v20, -1, -1);
      MEMORY[0x23EEC4DF0](v19, -1, -1);
    }

    goto LABEL_27;
  }

  (*(v11 + 32))(v13, v9, v10);
  if (!a1)
  {
    if (qword_27E1DFD90 != -1)
    {
      swift_once();
    }

    v32 = sub_23BFF92B0();
    sub_23BF4A22C(v32, qword_27E1EB480);
    v33 = v2;
    v34 = sub_23BFF9290();
    v35 = sub_23BFFA640();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&dword_23BF0C000, v34, v35, "Provided time layout is nil; cannot fetch asset's layout; (asset: %@)", v36, 0xCu);
      sub_23BF4B2D4(v37, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v37, -1, -1);
      MEMORY[0x23EEC4DF0](v36, -1, -1);
    }

    goto LABEL_25;
  }

  v22 = a1;
  v23 = a1;
  v24 = [v2 layoutFor_];
  if (!v24)
  {
    if (qword_27E1DFD90 != -1)
    {
      swift_once();
    }

    v39 = sub_23BFF92B0();
    sub_23BF4A22C(v39, qword_27E1EB480);
    v40 = v23;
    v41 = v2;
    v34 = sub_23BFF9290();
    v42 = sub_23BFFA640();

    if (os_log_type_enabled(v34, v42))
    {
      v43 = swift_slowAlloc();
      v44 = v11;
      v45 = v10;
      v46 = v13;
      v47 = swift_slowAlloc();
      *v43 = 138412546;
      *(v43 + 4) = v40;
      *(v43 + 12) = 2112;
      *(v43 + 14) = v41;
      *v47 = v22;
      v47[1] = v41;
      v48 = v40;
      v49 = v41;
      _os_log_impl(&dword_23BF0C000, v34, v42, "No layout found for provided time layout (%@) on asset (%@)", v43, 0x16u);
      sub_23BF4A264(&qword_27E1E0B50);
      swift_arrayDestroy();
      v50 = v47;
      v13 = v46;
      v10 = v45;
      v11 = v44;
      MEMORY[0x23EEC4DF0](v50, -1, -1);
      MEMORY[0x23EEC4DF0](v43, -1, -1);
    }

    else
    {
      v48 = v34;
      v34 = v40;
    }

LABEL_25:
    goto LABEL_26;
  }

  v25 = v24;
  v26 = *&v24[OBJC_IVAR___NTKParmesanAssetLayout_mask];
  if (!v26)
  {
    if (qword_27E1DFD90 != -1)
    {
      swift_once();
    }

    v51 = sub_23BFF92B0();
    sub_23BF4A22C(v51, qword_27E1EB480);
    v52 = v23;
    v53 = v2;
    v54 = sub_23BFF9290();
    v55 = sub_23BFFA640();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v68 = v54;
      v69 = v13;
      v58 = v57;
      v59 = swift_slowAlloc();
      v71[0] = v59;
      *v56 = 138412802;
      *(v56 + 4) = v53;
      *(v56 + 12) = 2112;
      *(v56 + 14) = v52;
      *v58 = v53;
      v58[1] = v22;
      *(v56 + 22) = 2080;
      v60 = v52;
      v71[2] = [v53 preferredLayout];
      sub_23BF4A264(&qword_27E1E19E0);
      v61 = sub_23BFFA360();
      v63 = sub_23BF62294(v61, v62, v71);

      *(v56 + 24) = v63;
      v64 = v55;
      v65 = v68;
      _os_log_impl(&dword_23BF0C000, v68, v64, "No mask found on asset's layout at the provided layout index; (asset: %@); (timeLayout: (%@); (layout: %s); ", v56, 0x20u);
      sub_23BF4A264(&qword_27E1E0B50);
      swift_arrayDestroy();
      MEMORY[0x23EEC4DF0](v58, -1, -1);
      sub_23BF4A9A4(v59);
      MEMORY[0x23EEC4DF0](v59, -1, -1);
      MEMORY[0x23EEC4DF0](v56, -1, -1);

      (*(v11 + 8))(v69, v10);
LABEL_27:
      v31 = 1;
      return (*(v11 + 56))(v70, v31, 1, v10);
    }

LABEL_26:
    (*(v11 + 8))(v13, v10);
    goto LABEL_27;
  }

  v27 = (v26 + OBJC_IVAR___NTKParmesanAssetMask_imageName);
  v28 = v27[1];
  v71[0] = *v27;
  v71[1] = v28;
  v30 = v68;
  v29 = v69;
  (v68[13].isa)(v6, *MEMORY[0x277CC91D8], v69);
  sub_23BF66440();

  sub_23BFF8CF0();

  (v30[1].isa)(v6, v29);

  (*(v11 + 8))(v13, v10);
  v31 = 0;
  return (*(v11 + 56))(v70, v31, 1, v10);
}

id sub_23BFE2B0C(void *a1, uint64_t a2, void *a3, void (*a4)(void *))
{
  v7 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = a3;
  v11 = a1;
  a4(a3);

  v12 = sub_23BFF8D10();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v9, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_23BFF8C40();
    (*(v13 + 8))(v9, v12);
    v15 = v16;
  }

  return v15;
}

unint64_t sub_23BFE2C5C(uint64_t a1)
{
  v2 = sub_23BFFA990();

  return sub_23BFE2FB8(a1, v2);
}

unint64_t sub_23BFE2CA0(uint64_t a1)
{
  sub_23BFFAD90();
  MEMORY[0x23EEC3A60](a1);
  v2 = sub_23BFFADF0();
  return sub_23BFE35E4(a1, v2);
}

unint64_t sub_23BFE2D08(uint64_t a1, uint64_t a2)
{
  sub_23BFFAD90();
  sub_23BFFA3A0();
  v4 = sub_23BFFADF0();

  return sub_23BFE3080(a1, a2, v4);
}

unint64_t sub_23BFE2D80(uint64_t a1)
{
  v2 = sub_23BFFA870();

  return sub_23BFE3138(a1, v2);
}

unint64_t sub_23BFE2DC4(uint64_t a1)
{
  sub_23BFFA300();
  sub_23BFFAD90();
  sub_23BFFA3A0();
  v2 = sub_23BFFADF0();

  return sub_23BFE34E0(a1, v2);
}

unint64_t sub_23BFE2E54(unsigned __int8 a1)
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  v2 = sub_23BFFADF0();

  return sub_23BFE31FC(a1, v2);
}

unint64_t sub_23BFE2EFC(unsigned __int8 a1)
{
  sub_23BFFAD90();
  sub_23BFFA3A0();

  v2 = sub_23BFFADF0();

  return sub_23BFE335C(a1, v2);
}

unint64_t sub_23BFE2FB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23BFE555C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEC3660](v9, a1);
      sub_23BF4A658(v9);
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

unint64_t sub_23BFE3080(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23BFFACC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23BFE3138(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for ParmesanTimeLayout();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23BFFA880();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23BFE31FC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0xE200000000000000;
        if (*(*(v2 + 48) + v4) == 1)
        {
          v8 = 26466;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v8 = 26470;
          v9 = a1;
          if (!a1)
          {
LABEL_14:
            v11 = 0xE400000000000000;
            if (v8 != 1952541798)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1952541798;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_14;
        }
      }

      if (v9 == 1)
      {
        v10 = 26466;
      }

      else
      {
        v10 = 26470;
      }

      v11 = 0xE200000000000000;
      if (v8 != v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_16:
      v12 = sub_23BFFACC0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_23BFE335C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE700000000000000;
          v8 = 0x6C61727475656ELL;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE400000000000000;
          v8 = 1802658148;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE500000000000000;
            if (v8 != 0x746867696CLL)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE500000000000000;
        v8 = 0x746867696CLL;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6C61727475656ELL;
      }

      else
      {
        v10 = 1802658148;
      }

      if (v9 == 1)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_23BFFACC0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_23BFE34E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23BFFA300();
      v8 = v7;
      if (v6 == sub_23BFFA300() && v8 == v9)
      {
        break;
      }

      v11 = sub_23BFFACC0();

      if ((v11 & 1) == 0)
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

unint64_t sub_23BFE35E4(uint64_t a1, uint64_t a2)
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

uint64_t sub_23BFE3650(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_23BFE2D80(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_23BFE3A58(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_23BFE88AC();
      v8 = v17;
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
  v6 = sub_23BFFAAC0();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_23BFFAAB0();
  v8 = sub_23BFE3834(v4, v7);

  v9 = sub_23BFE2D80(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_23BFE3A58(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_23BFE379C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_23BFE2D08(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_23BFE8BB0();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_23BFE3BE4(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_23BFE3834(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_23BF4A264(&qword_27E1E2638);
    v2 = sub_23BFFAB40();
    v19 = v2;
    sub_23BFFAAA0();
    v3 = sub_23BFFAAE0();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for ParmesanTimeLayout();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for ParmesanAssetLayout();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_23BFE6B90(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_23BFFA870();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_23BFFAAE0();
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

void sub_23BFE3A58(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23BFFA980() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_23BFFA870();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_23BFE3BE4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23BFFA980() + 1) & ~v5;
    do
    {
      sub_23BFFAD90();

      sub_23BFFA3A0();
      v9 = sub_23BFFADF0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_23BFE3D94(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_23BFFAAB0())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a2 + 56) + 8 * v12);
      v14 = *(*(a2 + 48) + 8 * v12);
      v15 = v13;
      v16 = sub_23BFFAAC0();

      if (!v16)
      {

        return;
      }

      type metadata accessor for ParmesanAssetLayout();
      swift_dynamicCast();
      v17 = sub_23BFFA880();

      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_23BFE3F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BF4A264(&qword_27E1E2CA8);
    v3 = sub_23BFFAB50();
    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_23BFE2CA0(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v12 = v3[7] + 32 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void *sub_23BFE4034(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  sub_23BF4A264(a2);
  v4 = sub_23BFFAB50();
  v5 = a1[4];
  v6 = a1[5];
  v7 = sub_23BFE2CA0(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 7;
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + 8 * v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 1);
    v16 = *v11;

    v9 = sub_23BFE2CA0(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23BFE4194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BF4A264(&qword_27E1E2D80);
    v3 = sub_23BFFAB50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_23BFE2D08(v5, v6);
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

unint64_t sub_23BFE4298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BF4A264(&qword_27E1E2638);
    v3 = sub_23BFFAB50();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_23BFE2D80(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_23BFE4390()
{
  result = qword_27E1E2C70;
  if (!qword_27E1E2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2C70);
  }

  return result;
}

unint64_t sub_23BFE43E4()
{
  result = qword_27E1E2C98;
  if (!qword_27E1E2C98)
  {
    sub_23BF4A2D0(&qword_27E1E2C90);
    sub_23BFE5284(&qword_27E1E2318, type metadata accessor for ParmesanTimeLayout);
    sub_23BFE5284(&qword_27E1E2CA0, type metadata accessor for ParmesanAssetLayout);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E2C98);
  }

  return result;
}

unint64_t sub_23BFE44D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_23BF4A264(&qword_27E1E2D30);
    v3 = sub_23BFFAB50();
    v4 = a1 + 32;

    while (1)
    {
      sub_23BF4B33C(v4, &v13, &qword_27E1E2D38);
      v5 = v13;
      v6 = v14;
      result = sub_23BFE2D08(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23BF66650(&v15, (v3[7] + 32 * result));
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

unint64_t sub_23BFE4624(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_23BF4A264(a2);
    v7 = sub_23BFFAB50();
    v8 = a1 + 32;

    while (1)
    {
      sub_23BF4B33C(v8, &v15, a4);
      v9 = v15;
      result = sub_23BFE2DC4(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_23BF66650(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_23BFE4750(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_23BF4A264(a2);
    v4 = sub_23BFFAB50();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_23BFE2D08(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_23BFE4888(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_23BF4A264(a2);
    v4 = sub_23BFFAB50();
    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v7 = *i;
      result = sub_23BFE2CA0(v6);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v6;
      *(v4[7] + 8 * result) = v7;
      v10 = v4[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v4[2] = v12;
      if (!--v2)
      {
        return v4;
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