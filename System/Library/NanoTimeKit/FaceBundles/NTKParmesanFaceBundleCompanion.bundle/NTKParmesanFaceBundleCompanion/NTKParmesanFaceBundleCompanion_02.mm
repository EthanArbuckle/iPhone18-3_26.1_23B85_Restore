id sub_23BF56538(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    v6 = sub_23BFFA300();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *&a1[OBJC_IVAR___NTKParmesanPigmentProviderCoordinator_selectedStyle];
  v10 = a1;
  v11 = sub_23BF55EFC(v6, v8, v9);
  if (v8)
  {
    v12 = sub_23BFFA2C0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v11 *a4];

  return v13;
}

id sub_23BF568C0(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = sub_23BF56BE8(v2, a2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_23BF56BE8(uint64_t a1, void **a2)
{
  swift_getObjectType();
  v3 = *a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = v3;
  v7 = [v5 bundleForClass_];
  v8 = [objc_allocWithZone(MEMORY[0x277D2C0B8]) initWithDomain:v6 bundle:v7];

  return v8;
}

id sub_23BF56CB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanPigmentProviderCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BF56D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23BF4B33C(a3, v25 - v10, &qword_27E1E0510);
  v12 = sub_23BFFA540();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23BF4B2D4(v11, &qword_27E1E0510);
  }

  else
  {
    sub_23BFFA530();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23BFFA4C0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23BFFA380() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23BF4B2D4(a3, &qword_27E1E0510);

      return v23;
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

  sub_23BF4B2D4(a3, &qword_27E1E0510);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23BF57124()
{
  sub_23BF4BDF0(0, &qword_27E1E0B48);
  v1 = [swift_getObjCClassFromMetadata() isRestrictedForDevice_];
  v2 = *(v0 + OBJC_IVAR___NTKParmesanUpgradeManager_sourceFace);
  v3 = [v2 faceStyle];
  v4 = qword_284EBD8E0;
  v5 = [v2 bundleIdentifier];
  if (!v5)
  {
    v11 = 0;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = (v4 == v3) | v11;
    return v12 & 1;
  }

  v6 = v5;
  v7 = sub_23BFFA300();
  v9 = v8;

  v15[0] = v7;
  v15[1] = v9;
  MEMORY[0x28223BE20](v10);
  v14[2] = v15;
  v11 = sub_23BF62910(sub_23BF666D0, v14, &unk_284EBD8E8);

  if ((v1 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = 0;
  return v12 & 1;
}

uint64_t sub_23BF572AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v15;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  v10 = sub_23BFFA0E0();
  v8[22] = v10;
  v8[23] = *(v10 - 8);
  v8[24] = swift_task_alloc();
  v11 = sub_23BFFA100();
  v8[25] = v11;
  v8[26] = *(v11 - 8);
  v8[27] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[28] = v12;
  *v12 = v8;
  v12[1] = sub_23BF57410;

  return sub_23BF5D544(a5);
}

uint64_t sub_23BF57410(char a1)
{
  *(*v1 + 296) = a1;

  return MEMORY[0x2822009F8](sub_23BF57510, 0, 0);
}

uint64_t sub_23BF57510()
{
  if (*(v0 + 296) == 1)
  {
    if ([v0[17] contentType] == 3)
    {
      v1 = swift_task_alloc();
      v0[29] = v1;
      *v1 = v0;
      v1[1] = sub_23BF57A88;

      return sub_23BF5E258();
    }

    v12 = [v0[17] itemAtIndex_];
    v0[33] = v12;
    if (v12)
    {
      v13 = v12;
      v14 = swift_task_alloc();
      v0[34] = v14;
      *v14 = v0;
      v14[1] = sub_23BF57E48;
      v15 = v0[20];
      v16 = v0[21];

      return sub_23BF647CC(v13, v15, v16);
    }

    sub_23BF66068();
    v17 = swift_allocError();
    *v18 = 3;
    v19 = v0[16];
    v20 = v17;
    v21 = *(v19 + OBJC_IVAR___NTKParmesanUpgradeManager_previewAsset);
    *(v19 + OBJC_IVAR___NTKParmesanUpgradeManager_previewAsset) = 0;

    if (v17)
    {
      sub_23BF5F950();
    }

    v22 = v0[27];
    v23 = v0[24];
    v33 = v0[26];
    v35 = v0[25];
    v24 = v0[22];
    v25 = v0[23];
    v26 = v0[18];
    v27 = v0[19];
    sub_23BF4BDF0(0, &qword_27E1E0B30);
    v31 = sub_23BFFA6D0();
    v28 = swift_allocObject();
    v28[2] = v26;
    v28[3] = v27;
    v28[4] = 0;
    v28[5] = v17;
    v0[13] = v28;
    v0[12] = sub_23BF66620;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_23BF58264;
    v0[11] = &unk_284EBFB80;
    v29 = _Block_copy(v0 + 8);

    sub_23BFFA0F0();
    v0[15] = MEMORY[0x277D84F90];
    sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
    sub_23BF4A264(&qword_27E1E0B40);
    sub_23BF6636C();
    sub_23BFFA970();
    MEMORY[0x23EEC33A0](0, v22, v23, v29);
    _Block_release(v29);

    (*(v25 + 8))(v23, v24);
    (*(v33 + 8))(v22, v35);
  }

  else
  {
    v3 = v0[27];
    v4 = v0[24];
    v32 = v0[26];
    v34 = v0[25];
    v5 = v0[22];
    v6 = v0[23];
    v7 = v0[18];
    v8 = v0[19];
    sub_23BF5F950();
    sub_23BF4BDF0(0, &qword_27E1E0B30);
    v30 = sub_23BFFA6D0();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v0[6] = sub_23BF665D0;
    v0[7] = v9;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_23BF58264;
    v0[5] = &unk_284EBFB30;
    v10 = _Block_copy(v0 + 2);

    sub_23BFFA0F0();
    v0[14] = MEMORY[0x277D84F90];
    sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
    sub_23BF4A264(&qword_27E1E0B40);
    sub_23BF6636C();
    sub_23BFFA970();
    MEMORY[0x23EEC33A0](0, v3, v4, v10);
    _Block_release(v10);

    (*(v6 + 8))(v4, v5);
    (*(v32 + 8))(v3, v34);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_23BF57A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[30] = a1;
  v4[31] = a2;
  v4[32] = a3;

  return MEMORY[0x2822009F8](sub_23BF57B8C, 0, 0);
}

uint64_t sub_23BF57B8C()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[16];
  v4 = *(v3 + OBJC_IVAR___NTKParmesanUpgradeManager_memoryShuffle);
  *(v3 + OBJC_IVAR___NTKParmesanUpgradeManager_memoryShuffle) = v0[31];
  v5 = v2;

  v6 = v0[32];
  v7 = v0[30];
  v8 = v0[16];
  v9 = v1;
  v10 = *(v8 + OBJC_IVAR___NTKParmesanUpgradeManager_previewAsset);
  *(v8 + OBJC_IVAR___NTKParmesanUpgradeManager_previewAsset) = v7;
  v22 = v7;

  v11 = v6;
  if (v6)
  {
    sub_23BF5F950();
  }

  v12 = v0[27];
  v13 = v0[24];
  v25 = v0[26];
  v26 = v0[25];
  v14 = v0[22];
  v24 = v0[23];
  v15 = v0[18];
  v16 = v0[19];
  sub_23BF4BDF0(0, &qword_27E1E0B30);
  v23 = sub_23BFFA6D0();
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = v7;
  v17[5] = v6;
  v0[12] = sub_23BF66620;
  v0[13] = v17;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_23BF58264;
  v0[11] = &unk_284EBFB80;
  v18 = _Block_copy(v0 + 8);
  v19 = v22;

  sub_23BFFA0F0();
  v0[15] = MEMORY[0x277D84F90];
  sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
  sub_23BF4A264(&qword_27E1E0B40);
  sub_23BF6636C();
  sub_23BFFA970();
  MEMORY[0x23EEC33A0](0, v12, v13, v18);
  _Block_release(v18);

  (*(v24 + 8))(v13, v14);
  (*(v25 + 8))(v12, v26);

  v20 = v0[1];

  return v20();
}

uint64_t sub_23BF57E48(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = a2;

  return MEMORY[0x2822009F8](sub_23BF57F48, 0, 0);
}

uint64_t sub_23BF57F48()
{
  v2 = v0[35];
  v1 = v0[36];
  swift_unknownObjectRelease();
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[16];
  v6 = v2;
  v7 = v1;
  v8 = *(v5 + OBJC_IVAR___NTKParmesanUpgradeManager_previewAsset);
  *(v5 + OBJC_IVAR___NTKParmesanUpgradeManager_previewAsset) = v3;
  v20 = v3;

  v9 = v4;
  if (v4)
  {
    sub_23BF5F950();
  }

  v10 = v0[27];
  v11 = v0[24];
  v23 = v0[26];
  v24 = v0[25];
  v12 = v0[22];
  v22 = v0[23];
  v13 = v0[18];
  v14 = v0[19];
  sub_23BF4BDF0(0, &qword_27E1E0B30);
  v21 = sub_23BFFA6D0();
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v3;
  v15[5] = v9;
  v0[12] = sub_23BF66620;
  v0[13] = v15;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_23BF58264;
  v0[11] = &unk_284EBFB80;
  v16 = _Block_copy(v0 + 8);
  v17 = v20;

  sub_23BFFA0F0();
  v0[15] = MEMORY[0x277D84F90];
  sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
  sub_23BF4A264(&qword_27E1E0B40);
  sub_23BF6636C();
  sub_23BFFA970();
  MEMORY[0x23EEC33A0](0, v10, v11, v16);
  _Block_release(v16);

  (*(v22 + 8))(v11, v12);
  (*(v23 + 8))(v10, v24);

  v18 = v0[1];

  return v18();
}

void sub_23BF581EC(void (*a1)(void, void *))
{
  sub_23BF66068();
  v2 = swift_allocError();
  *v3 = 3;
  a1(0, v2);
}

uint64_t sub_23BF58264(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_23BF582A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[50] = v13;
  v8[51] = v14;
  v8[48] = a7;
  v8[49] = a8;
  v8[46] = a5;
  v8[47] = a6;
  v8[45] = a4;
  v9 = sub_23BFFA0E0();
  v8[52] = v9;
  v8[53] = *(v9 - 8);
  v8[54] = swift_task_alloc();
  v10 = sub_23BFFA100();
  v8[55] = v10;
  v8[56] = *(v10 - 8);
  v8[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BF583D8, 0, 0);
}

uint64_t sub_23BF583D8()
{
  v121 = v2;
  v3 = v2[45];
  v4 = OBJC_IVAR___NTKParmesanUpgradeManager_previewAsset;
  v2[58] = OBJC_IVAR___NTKParmesanUpgradeManager_previewAsset;
  if (*(v3 + v4))
  {
    v5 = v2[48];
    v2[39] = MEMORY[0x277D84F90];
    if ([v5 contentType] == 3)
    {
      v6 = v2[45];
      v7 = OBJC_IVAR___NTKParmesanUpgradeManager_memoryShuffle;
      v2[60] = OBJC_IVAR___NTKParmesanUpgradeManager_memoryShuffle;
      if (!*(v6 + v7))
      {
        v75 = swift_task_alloc();
        v2[61] = v75;
        *v75 = v2;
        v75[1] = sub_23BF5ABA4;

        return sub_23BF5E258();
      }

      v8 = *(v6 + v2[58]);
      if (v8)
      {
        v0 = v8;
        MEMORY[0x23EEC3100]();
        v9 = *((v2[39] & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 < *((v2[39] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_6:
          sub_23BFFA4A0();

          v10 = v2[39];
          goto LABEL_18;
        }

LABEL_83:
        v1 = v9;
        sub_23BFFA480();
        goto LABEL_6;
      }

LABEL_17:
      v10 = MEMORY[0x277D84F90];
LABEL_18:
      if (v10 >> 62)
      {
        v16 = sub_23BFFAAB0();
      }

      else
      {
        v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = MEMORY[0x277D84F90];
      if (v16)
      {
        if (v16 < 1)
        {
          __break(1u);
          goto LABEL_81;
        }

        for (i = 0; i != v16; ++i)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x23EEC36D0](i, v10);
          }

          else
          {
            v19 = *(v10 + 8 * i + 32);
          }

          v20 = v19;
          v21 = [v19 asDictionary];
          if (v21)
          {
            v22 = v21;
            v23 = sub_23BFFA270();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_23BF61D9C(0, v17[2] + 1, 1, v17);
            }

            v25 = v17[2];
            v24 = v17[3];
            if (v25 >= v24 >> 1)
            {
              v17 = sub_23BF61D9C((v24 > 1), v25 + 1, 1, v17);
            }

            v17[2] = v25 + 1;
            v17[v25 + 4] = v23;
          }

          else
          {
          }
        }
      }

      v1 = sub_23BF60214(v17);

      if (!v1)
      {
        sub_23BF4BDF0(0, &qword_27E1E0930);
        v58 = [swift_getObjCClassFromMetadata() identifier];
        if (!v58)
        {
          sub_23BFFA300();
          v58 = sub_23BFFA2C0();
        }

        v59 = v2[48];
        v60 = v2[45];
        sub_23BF4BDF0(0, &qword_27E1E0B48);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v62 = *&v60[OBJC_IVAR___NTKParmesanUpgradeManager_device];
        v63 = swift_allocObject();
        *(v63 + 16) = v59;
        *(v63 + 24) = v60;
        v2[12] = sub_23BF663D0;
        v2[13] = v63;
        v2[8] = MEMORY[0x277D85DD0];
        v2[9] = 1107296256;
        v2[10] = sub_23BF5D30C;
        v2[11] = &unk_284EBF978;
        v64 = _Block_copy(v2 + 8);
        swift_unknownObjectRetain();
        v65 = v60;

        v66 = [ObjCClassFromMetadata bundledFaceWithIdentifier:v58 forDevice:v62 initCustomization:v64];
        _Block_release(v64);

        if (v66)
        {
          if (qword_27E1DFDD8 != -1)
          {
            swift_once();
          }

          v67 = sub_23BFF92B0();
          sub_23BF4A22C(v67, qword_27E1EB558);

          v68 = sub_23BFF9290();
          v69 = sub_23BFFA640();

          v117 = v66;
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            v120 = v71;
            *v70 = 136315650;
            *(v70 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v120);
            *(v70 + 12) = 2048;
            if (v10 >> 62)
            {
              v72 = sub_23BFFAAB0();
            }

            else
            {
              v72 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v73 = v2[49];
            v74 = v2[50];

            *(v70 + 14) = v72;

            *(v70 + 22) = 2080;
            *(v70 + 24) = sub_23BF62294(v73, v74, &v120);
            _os_log_impl(&dword_23BF0C000, v68, v69, "%s: Created upgraded face with %ld assets, directory: %s", v70, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23EEC4DF0](v71, -1, -1);
            MEMORY[0x23EEC4DF0](v70, -1, -1);
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          v110 = v2[57];
          v112 = v2[56];
          v97 = v2[54];
          v115 = v2[55];
          v99 = v2[52];
          v98 = v2[53];
          v100 = v2[46];
          v101 = v2[47];
          v102 = v117;
          v103 = sub_23BFFA2C0();
          [v102 setResourceDirectory_];

          sub_23BF4BDF0(0, &qword_27E1E0B30);
          v104 = v102;
          v105 = sub_23BFFA6D0();
          v106 = swift_allocObject();
          v106[2] = v100;
          v106[3] = v101;
          v106[4] = v117;
          v106[5] = 0;
          v2[24] = sub_23BF669F8;
          v2[25] = v106;
          v2[20] = MEMORY[0x277D85DD0];
          v2[21] = 1107296256;
          v2[22] = sub_23BF58264;
          v2[23] = &unk_284EBFA18;
          v107 = _Block_copy(v2 + 20);

          v108 = v104;
          sub_23BFFA0F0();
          v2[41] = MEMORY[0x277D84F90];
          sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
          sub_23BF4A264(&qword_27E1E0B40);
          sub_23BF6636C();
          sub_23BFFA970();
          MEMORY[0x23EEC33A0](0, v110, v97, v107);
          _Block_release(v107);

          (*(v98 + 8))(v97, v99);
          (*(v112 + 8))(v110, v115);

          goto LABEL_74;
        }

        if (qword_27E1DFDD8 != -1)
        {
          swift_once();
        }

        v80 = sub_23BFF92B0();
        sub_23BF4A22C(v80, qword_27E1EB558);
        v81 = sub_23BFF9290();
        v82 = sub_23BFFA650();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v120 = v84;
          *v83 = 136315138;
          *(v83 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v120);
          _os_log_impl(&dword_23BF0C000, v81, v82, "%s: cannot create an empty face", v83, 0xCu);
          sub_23BF4A9A4(v84);
          MEMORY[0x23EEC4DF0](v84, -1, -1);
          MEMORY[0x23EEC4DF0](v83, -1, -1);
        }

        v85 = v2[57];
        v86 = v2[54];
        v114 = v2[56];
        v118 = v2[55];
        v88 = v2[52];
        v87 = v2[53];
        v89 = v2[46];
        v90 = v2[47];
        sub_23BF66068();
        v91 = swift_allocError();
        *v92 = 4;
        sub_23BF5F950();
        sub_23BF4BDF0(0, &qword_27E1E0B30);
        v93 = sub_23BFFA6D0();
        v94 = swift_allocObject();
        v94[2] = v89;
        v94[3] = v90;
        v94[4] = 0;
        v94[5] = v91;
        v2[18] = sub_23BF669F8;
        v2[19] = v94;
        v2[14] = MEMORY[0x277D85DD0];
        v2[15] = 1107296256;
        v2[16] = sub_23BF58264;
        v2[17] = &unk_284EBF9C8;
        v95 = _Block_copy(v2 + 14);

        v96 = v91;
        sub_23BFFA0F0();
        v2[40] = MEMORY[0x277D84F90];
        sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
        sub_23BF4A264(&qword_27E1E0B40);
        sub_23BF6636C();
        sub_23BFFA970();
        MEMORY[0x23EEC33A0](0, v85, v86, v95);
        _Block_release(v95);

        (*(v87 + 8))(v86, v88);
        (*(v114 + 8))(v85, v118);

        v49 = v91;
LABEL_39:

LABEL_74:

        v109 = v2[1];

        return v109();
      }

      v17 = v2 + 26;

      if (qword_27E1DFDD8 == -1)
      {
LABEL_36:
        v26 = sub_23BFF92B0();
        sub_23BF4A22C(v26, qword_27E1EB558);

        v27 = v1;
        v28 = sub_23BFF9290();
        v29 = sub_23BFFA650();

        v116 = v1;
        aBlock = v17;
        if (os_log_type_enabled(v28, v29))
        {
          v31 = v2[49];
          v30 = v2[50];
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v120 = v34;
          *v32 = 136315650;
          *(v32 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v120);
          *(v32 + 12) = 2080;
          *(v32 + 14) = sub_23BF62294(v31, v30, &v120);
          *(v32 + 22) = 2112;
          v35 = v1;
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v32 + 24) = v36;
          *v33 = v36;
          _os_log_impl(&dword_23BF0C000, v28, v29, "%s: cannot write plist to %s, error: %@", v32, 0x20u);
          sub_23BF4B2D4(v33, &qword_27E1E0B50);
          MEMORY[0x23EEC4DF0](v33, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x23EEC4DF0](v34, -1, -1);
          MEMORY[0x23EEC4DF0](v32, -1, -1);
        }

        v37 = v2[57];
        v38 = v2[54];
        v111 = v2[56];
        v113 = v2[55];
        v40 = v2[52];
        v39 = v2[53];
        v42 = v2[46];
        v41 = v2[47];
        sub_23BF66068();
        v43 = swift_allocError();
        *v44 = 2;
        sub_23BF5F950();
        sub_23BF4BDF0(0, &qword_27E1E0B30);
        v45 = sub_23BFFA6D0();
        v46 = swift_allocObject();
        v46[2] = v42;
        v46[3] = v41;
        v46[4] = 0;
        v46[5] = v43;
        v2[30] = sub_23BF669F8;
        v2[31] = v46;
        v2[26] = MEMORY[0x277D85DD0];
        v2[27] = 1107296256;
        v2[28] = sub_23BF58264;
        v2[29] = &unk_284EBFA68;
        v47 = _Block_copy(aBlock);

        v48 = v43;
        sub_23BFFA0F0();
        v2[42] = MEMORY[0x277D84F90];
        sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
        sub_23BF4A264(&qword_27E1E0B40);
        sub_23BF6636C();
        sub_23BFFA970();
        MEMORY[0x23EEC33A0](0, v37, v38, v47);
        _Block_release(v47);

        (*(v39 + 8))(v38, v40);
        (*(v111 + 8))(v37, v113);

        v49 = v116;
        goto LABEL_39;
      }

LABEL_81:
      swift_once();
      goto LABEL_36;
    }

    if ([v2[48] contentType] == 1)
    {
      v14 = [v2[48] numberOfItems];
      v9 = NTKMaxParmesanPhotos();
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_83;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_79;
      }

      if (v9 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v9;
      }

      if (!v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v15 = 1;
    }

    v2[65] = v15;
    if (qword_27E1DFDD8 == -1)
    {
LABEL_42:
      v1 = sub_23BFF92B0();
      v50 = 0;
      v10 = MEMORY[0x277D84F90];
      while (1)
      {
        v2[68] = v10;
        v2[67] = v10;
        v2[66] = v50;
        v2[69] = sub_23BF4A22C(v1, qword_27E1EB558);
        v52 = sub_23BFF9290();
        v53 = sub_23BFFA640();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v120 = v55;
          *v54 = 136315394;
          *(v54 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v120);
          *(v54 + 12) = 2048;
          *(v54 + 14) = v50;
          _os_log_impl(&dword_23BF0C000, v52, v53, "%s: adding item %ld to the resource directory", v54, 0x16u);
          sub_23BF4A9A4(v55);
          MEMORY[0x23EEC4DF0](v55, -1, -1);
          MEMORY[0x23EEC4DF0](v54, -1, -1);
        }

        if (v50 || (v56 = *(v2[45] + v2[58])) == 0)
        {
          v51 = [v2[48] itemAtIndex_];
          v2[70] = v51;
          if (v51)
          {
            v76 = v51;
            v77 = swift_task_alloc();
            v2[71] = v77;
            *v77 = v2;
            v77[1] = sub_23BF5BCFC;
            v78 = v2[49];
            v79 = v2[50];

            return sub_23BF647CC(v76, v78, v79);
          }
        }

        else
        {
          v57 = v56;
          MEMORY[0x23EEC3100]();
          if (*((v2[39] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[39] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23BFFA480();
          }

          sub_23BFFA4A0();

          v10 = v2[39];
        }

        v50 = v2[66] + 1;
        if (v50 == v2[65])
        {
          goto LABEL_18;
        }
      }
    }

LABEL_79:
    swift_once();
    goto LABEL_42;
  }

  v11 = swift_task_alloc();
  v2[59] = v11;
  *v11 = v2;
  v11[1] = sub_23BF59610;
  v12 = v2[48];

  return sub_23BF5D544(v12);
}

uint64_t sub_23BF59610(char a1)
{
  *(*v1 + 592) = a1;

  return MEMORY[0x2822009F8](sub_23BF59710, 0, 0);
}

uint64_t sub_23BF59710()
{
  v135 = v2;
  if (*(v2 + 592) != 1)
  {
    if (qword_27E1DFDD8 != -1)
    {
      swift_once();
    }

    v9 = sub_23BFF92B0();
    sub_23BF4A22C(v9, qword_27E1EB558);
    v10 = sub_23BFF9290();
    v11 = sub_23BFFA650();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v134 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v134);
      _os_log_impl(&dword_23BF0C000, v10, v11, "%s: Face doesn't have content, cannot upgrade", v12, 0xCu);
      sub_23BF4A9A4(v13);
      MEMORY[0x23EEC4DF0](v13, -1, -1);
      MEMORY[0x23EEC4DF0](v12, -1, -1);
    }

    v14 = v2[57];
    v15 = v2[54];
    v125 = v2[56];
    v129 = v2[55];
    v17 = v2[52];
    v16 = v2[53];
    v18 = v2[46];
    v19 = v2[47];
    sub_23BF66068();
    v20 = swift_allocError();
    *v21 = 3;
    sub_23BF5F950();
    sub_23BF4BDF0(0, &qword_27E1E0B30);
    v22 = sub_23BFFA6D0();
    v23 = swift_allocObject();
    v23[2] = v18;
    v23[3] = v19;
    v23[4] = 0;
    v23[5] = v20;
    v2[6] = sub_23BF669F8;
    v2[7] = v23;
    v2[2] = MEMORY[0x277D85DD0];
    v2[3] = 1107296256;
    v2[4] = sub_23BF58264;
    v2[5] = &unk_284EBF928;
    v24 = _Block_copy(v2 + 2);

    v25 = v20;
    sub_23BFFA0F0();
    v2[38] = MEMORY[0x277D84F90];
    sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
    sub_23BF4A264(&qword_27E1E0B40);
    sub_23BF6636C();
    sub_23BFFA970();
    MEMORY[0x23EEC33A0](0, v14, v15, v24);
    _Block_release(v24);

    (*(v16 + 8))(v15, v17);
    (*(v125 + 8))(v14, v129);
    goto LABEL_12;
  }

  v3 = v2[48];
  v2[39] = MEMORY[0x277D84F90];
  if ([v3 contentType] == 3)
  {
    v4 = v2[45];
    v5 = OBJC_IVAR___NTKParmesanUpgradeManager_memoryShuffle;
    v2[60] = OBJC_IVAR___NTKParmesanUpgradeManager_memoryShuffle;
    if (!*(v4 + v5))
    {
      v89 = swift_task_alloc();
      v2[61] = v89;
      *v89 = v2;
      v89[1] = sub_23BF5ABA4;

      return sub_23BF5E258();
    }

    v6 = *(v4 + v2[58]);
    if (v6)
    {
      v0 = v6;
      MEMORY[0x23EEC3100]();
      v7 = *((v2[39] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 < *((v2[39] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_6:
        sub_23BFFA4A0();

        v8 = v2[39];
LABEL_21:
        if (v8 >> 62)
        {
          v29 = sub_23BFFAAB0();
        }

        else
        {
          v29 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v30 = MEMORY[0x277D84F90];
        if (v29)
        {
          if (v29 < 1)
          {
            __break(1u);
            goto LABEL_84;
          }

          for (i = 0; i != v29; ++i)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x23EEC36D0](i, v8);
            }

            else
            {
              v32 = *(v8 + 8 * i + 32);
            }

            v33 = v32;
            v34 = [v32 asDictionary];
            if (v34)
            {
              v35 = v34;
              v36 = sub_23BFFA270();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v30 = sub_23BF61D9C(0, v30[2] + 1, 1, v30);
              }

              v38 = v30[2];
              v37 = v30[3];
              if (v38 >= v37 >> 1)
              {
                v30 = sub_23BF61D9C((v37 > 1), v38 + 1, 1, v30);
              }

              v30[2] = v38 + 1;
              v30[v38 + 4] = v36;
            }

            else
            {
            }
          }
        }

        v1 = sub_23BF60214(v30);

        if (v1)
        {
          v30 = v2 + 26;

          if (qword_27E1DFDD8 == -1)
          {
LABEL_39:
            v39 = sub_23BFF92B0();
            sub_23BF4A22C(v39, qword_27E1EB558);

            v40 = v1;
            v41 = sub_23BFF9290();
            v42 = sub_23BFFA650();

            v130 = v1;
            aBlock = v30;
            if (os_log_type_enabled(v41, v42))
            {
              v44 = v2[49];
              v43 = v2[50];
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              v134 = v47;
              *v45 = 136315650;
              *(v45 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v134);
              *(v45 + 12) = 2080;
              *(v45 + 14) = sub_23BF62294(v44, v43, &v134);
              *(v45 + 22) = 2112;
              v48 = v1;
              v49 = _swift_stdlib_bridgeErrorToNSError();
              *(v45 + 24) = v49;
              *v46 = v49;
              _os_log_impl(&dword_23BF0C000, v41, v42, "%s: cannot write plist to %s, error: %@", v45, 0x20u);
              sub_23BF4B2D4(v46, &qword_27E1E0B50);
              MEMORY[0x23EEC4DF0](v46, -1, -1);
              swift_arrayDestroy();
              MEMORY[0x23EEC4DF0](v47, -1, -1);
              MEMORY[0x23EEC4DF0](v45, -1, -1);
            }

            v50 = v2[57];
            v51 = v2[54];
            v123 = v2[56];
            v126 = v2[55];
            v53 = v2[52];
            v52 = v2[53];
            v55 = v2[46];
            v54 = v2[47];
            sub_23BF66068();
            v56 = swift_allocError();
            *v57 = 2;
            sub_23BF5F950();
            sub_23BF4BDF0(0, &qword_27E1E0B30);
            v58 = sub_23BFFA6D0();
            v59 = swift_allocObject();
            v59[2] = v55;
            v59[3] = v54;
            v59[4] = 0;
            v59[5] = v56;
            v2[30] = sub_23BF669F8;
            v2[31] = v59;
            v2[26] = MEMORY[0x277D85DD0];
            v2[27] = 1107296256;
            v2[28] = sub_23BF58264;
            v2[29] = &unk_284EBFA68;
            v60 = _Block_copy(aBlock);

            v61 = v56;
            sub_23BFFA0F0();
            v2[42] = MEMORY[0x277D84F90];
            sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
            sub_23BF4A264(&qword_27E1E0B40);
            sub_23BF6636C();
            sub_23BFFA970();
            MEMORY[0x23EEC33A0](0, v50, v51, v60);
            _Block_release(v60);

            (*(v52 + 8))(v51, v53);
            (*(v123 + 8))(v50, v126);

            v26 = v130;
            goto LABEL_42;
          }

LABEL_84:
          swift_once();
          goto LABEL_39;
        }

        sub_23BF4BDF0(0, &qword_27E1E0930);
        v72 = [swift_getObjCClassFromMetadata() identifier];
        if (!v72)
        {
          sub_23BFFA300();
          v72 = sub_23BFFA2C0();
        }

        v73 = v2[48];
        v74 = v2[45];
        sub_23BF4BDF0(0, &qword_27E1E0B48);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v76 = *&v74[OBJC_IVAR___NTKParmesanUpgradeManager_device];
        v77 = swift_allocObject();
        *(v77 + 16) = v73;
        *(v77 + 24) = v74;
        v2[12] = sub_23BF663D0;
        v2[13] = v77;
        v2[8] = MEMORY[0x277D85DD0];
        v2[9] = 1107296256;
        v2[10] = sub_23BF5D30C;
        v2[11] = &unk_284EBF978;
        v78 = _Block_copy(v2 + 8);
        swift_unknownObjectRetain();
        v79 = v74;

        v80 = [ObjCClassFromMetadata bundledFaceWithIdentifier:v72 forDevice:v76 initCustomization:v78];
        _Block_release(v78);

        if (v80)
        {
          if (qword_27E1DFDD8 != -1)
          {
            swift_once();
          }

          v81 = sub_23BFF92B0();
          sub_23BF4A22C(v81, qword_27E1EB558);

          v82 = sub_23BFF9290();
          v83 = sub_23BFFA640();

          v131 = v80;
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v134 = v85;
            *v84 = 136315650;
            *(v84 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v134);
            *(v84 + 12) = 2048;
            if (v8 >> 62)
            {
              v86 = sub_23BFFAAB0();
            }

            else
            {
              v86 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v87 = v2[49];
            v88 = v2[50];

            *(v84 + 14) = v86;

            *(v84 + 22) = 2080;
            *(v84 + 24) = sub_23BF62294(v87, v88, &v134);
            _os_log_impl(&dword_23BF0C000, v82, v83, "%s: Created upgraded face with %ld assets, directory: %s", v84, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23EEC4DF0](v85, -1, -1);
            MEMORY[0x23EEC4DF0](v84, -1, -1);
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          v122 = v2[57];
          v124 = v2[56];
          v110 = v2[54];
          v128 = v2[55];
          v112 = v2[52];
          v111 = v2[53];
          v113 = v2[46];
          v114 = v2[47];
          v115 = v131;
          v116 = sub_23BFFA2C0();
          [v115 setResourceDirectory_];

          sub_23BF4BDF0(0, &qword_27E1E0B30);
          v117 = v115;
          v118 = sub_23BFFA6D0();
          v119 = swift_allocObject();
          v119[2] = v113;
          v119[3] = v114;
          v119[4] = v131;
          v119[5] = 0;
          v2[24] = sub_23BF669F8;
          v2[25] = v119;
          v2[20] = MEMORY[0x277D85DD0];
          v2[21] = 1107296256;
          v2[22] = sub_23BF58264;
          v2[23] = &unk_284EBFA18;
          v120 = _Block_copy(v2 + 20);

          v121 = v117;
          sub_23BFFA0F0();
          v2[41] = MEMORY[0x277D84F90];
          sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
          sub_23BF4A264(&qword_27E1E0B40);
          sub_23BF6636C();
          sub_23BFFA970();
          MEMORY[0x23EEC33A0](0, v122, v110, v120);
          _Block_release(v120);

          (*(v111 + 8))(v110, v112);
          (*(v124 + 8))(v122, v128);

          goto LABEL_43;
        }

        if (qword_27E1DFDD8 != -1)
        {
          swift_once();
        }

        v94 = sub_23BFF92B0();
        sub_23BF4A22C(v94, qword_27E1EB558);
        v95 = sub_23BFF9290();
        v96 = sub_23BFFA650();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v134 = v98;
          *v97 = 136315138;
          *(v97 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v134);
          _os_log_impl(&dword_23BF0C000, v95, v96, "%s: cannot create an empty face", v97, 0xCu);
          sub_23BF4A9A4(v98);
          MEMORY[0x23EEC4DF0](v98, -1, -1);
          MEMORY[0x23EEC4DF0](v97, -1, -1);
        }

        v99 = v2[57];
        v100 = v2[54];
        v127 = v2[56];
        v132 = v2[55];
        v102 = v2[52];
        v101 = v2[53];
        v103 = v2[46];
        v104 = v2[47];
        sub_23BF66068();
        v20 = swift_allocError();
        *v105 = 4;
        sub_23BF5F950();
        sub_23BF4BDF0(0, &qword_27E1E0B30);
        v106 = sub_23BFFA6D0();
        v107 = swift_allocObject();
        v107[2] = v103;
        v107[3] = v104;
        v107[4] = 0;
        v107[5] = v20;
        v2[18] = sub_23BF669F8;
        v2[19] = v107;
        v2[14] = MEMORY[0x277D85DD0];
        v2[15] = 1107296256;
        v2[16] = sub_23BF58264;
        v2[17] = &unk_284EBF9C8;
        v108 = _Block_copy(v2 + 14);

        v109 = v20;
        sub_23BFFA0F0();
        v2[40] = MEMORY[0x277D84F90];
        sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
        sub_23BF4A264(&qword_27E1E0B40);
        sub_23BF6636C();
        sub_23BFFA970();
        MEMORY[0x23EEC33A0](0, v99, v100, v108);
        _Block_release(v108);

        (*(v101 + 8))(v100, v102);
        (*(v127 + 8))(v99, v132);
LABEL_12:

        v26 = v20;
LABEL_42:

LABEL_43:

        v62 = v2[1];

        return v62();
      }

LABEL_86:
      v1 = v7;
      sub_23BFFA480();
      goto LABEL_6;
    }

LABEL_20:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  if ([v2[48] contentType] == 1)
  {
    v27 = [v2[48] numberOfItems];
    v7 = NTKMaxParmesanPhotos();
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_86;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_82;
    }

    if (v7 >= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v7;
    }

    if (!v28)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v28 = 1;
  }

  v2[65] = v28;
  if (qword_27E1DFDD8 != -1)
  {
LABEL_82:
    swift_once();
  }

  v1 = sub_23BFF92B0();
  v64 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v2[68] = v8;
    v2[67] = v8;
    v2[66] = v64;
    v2[69] = sub_23BF4A22C(v1, qword_27E1EB558);
    v66 = sub_23BFF9290();
    v67 = sub_23BFFA640();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v134 = v69;
      *v68 = 136315394;
      *(v68 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v134);
      *(v68 + 12) = 2048;
      *(v68 + 14) = v64;
      _os_log_impl(&dword_23BF0C000, v66, v67, "%s: adding item %ld to the resource directory", v68, 0x16u);
      sub_23BF4A9A4(v69);
      MEMORY[0x23EEC4DF0](v69, -1, -1);
      MEMORY[0x23EEC4DF0](v68, -1, -1);
    }

    if (!v64)
    {
      v70 = *(v2[45] + v2[58]);
      if (v70)
      {
        v71 = v70;
        MEMORY[0x23EEC3100]();
        if (*((v2[39] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[39] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23BFFA480();
        }

        sub_23BFFA4A0();

        v8 = v2[39];
        goto LABEL_51;
      }
    }

    v65 = [v2[48] itemAtIndex_];
    v2[70] = v65;
    if (v65)
    {
      break;
    }

LABEL_51:
    v64 = v2[66] + 1;
    if (v64 == v2[65])
    {
      goto LABEL_21;
    }
  }

  v90 = v65;
  v91 = swift_task_alloc();
  v2[71] = v91;
  *v91 = v2;
  v91[1] = sub_23BF5BCFC;
  v92 = v2[49];
  v93 = v2[50];

  return sub_23BF647CC(v90, v92, v93);
}

uint64_t sub_23BF5ABA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[62] = a1;
  v4[63] = a2;
  v4[64] = a3;

  return MEMORY[0x2822009F8](sub_23BF5ACA8, 0, 0);
}

uint64_t sub_23BF5ACA8()
{
  v123 = v0;
  v1 = v0[64];
  if (v1)
  {
    v115 = v0[63];
    aBlockb = v0[62];
    v106 = v0[57];
    v108 = v0[56];
    v2 = v0[54];
    v111 = v0[55];
    v4 = v0[52];
    v3 = v0[53];
    v5 = v0[46];
    v6 = v0[47];
    v7 = v1;
    v8 = v1;
    sub_23BF5F950();
    sub_23BF4BDF0(0, &qword_27E1E0B30);
    v9 = sub_23BFFA6D0();
    v10 = swift_allocObject();
    v10[2] = v5;
    v10[3] = v6;
    v10[4] = 0;
    v10[5] = v1;
    v0[36] = sub_23BF669F8;
    v0[37] = v10;
    v0[32] = MEMORY[0x277D85DD0];
    v0[33] = 1107296256;
    v0[34] = sub_23BF58264;
    v0[35] = &unk_284EBFAB8;
    v11 = _Block_copy(v0 + 32);
    v12 = v1;

    sub_23BFFA0F0();
    v0[44] = MEMORY[0x277D84F90];
    sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
    sub_23BF4A264(&qword_27E1E0B40);
    sub_23BF6636C();
    sub_23BFFA970();
    MEMORY[0x23EEC33A0](0, v106, v2, v11);
    _Block_release(v11);

    (*(v3 + 8))(v2, v4);
    (*(v108 + 8))(v106, v111);

    goto LABEL_46;
  }

  v13 = v0[62];
  v14 = v0[60];
  v15 = v0[58];
  v16 = v0[45];
  v17 = *&v16[v14];
  *&v16[v14] = v0[63];

  v18 = *&v16[v15];
  *&v16[v15] = v13;

  v19 = *(v0[45] + v0[58]);
  if (v19)
  {
    v20 = v19;
    MEMORY[0x23EEC3100]();
    if (*((v0[39] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[39] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((v0[39] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_23BFFA480();
    }

    sub_23BFFA4A0();

    v21 = v0[39];
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  aBlock = (v21 >> 62);
  if (v21 >> 62)
  {
    v22 = sub_23BFFAAB0();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    if (v22 < 1)
    {
      __break(1u);
      goto LABEL_51;
    }

    v24 = 0;
    v25 = v21 & 0xC000000000000001;
    v26 = v21;
    do
    {
      if (v25)
      {
        v27 = MEMORY[0x23EEC36D0](v24, v21);
      }

      else
      {
        v27 = *(v21 + 8 * v24 + 32);
      }

      v28 = v27;
      v29 = [v27 asDictionary];
      if (v29)
      {
        v30 = v29;
        v31 = sub_23BFFA270();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_23BF61D9C(0, v23[2] + 1, 1, v23);
        }

        v33 = v23[2];
        v32 = v23[3];
        if (v33 >= v32 >> 1)
        {
          v23 = sub_23BF61D9C((v32 > 1), v33 + 1, 1, v23);
        }

        v23[2] = v33 + 1;
        v23[v33 + 4] = v31;
        v21 = v26;
      }

      else
      {
      }

      ++v24;
    }

    while (v22 != v24);
  }

  v16 = sub_23BF60214(v23);

  if (v16)
  {
    v23 = v0 + 26;

    if (qword_27E1DFDD8 == -1)
    {
LABEL_26:
      v34 = sub_23BFF92B0();
      sub_23BF4A22C(v34, qword_27E1EB558);

      v35 = v16;
      v36 = sub_23BFF9290();
      v37 = sub_23BFFA650();

      v116 = v16;
      aBlocka = v23;
      if (os_log_type_enabled(v36, v37))
      {
        v39 = v0[49];
        v38 = v0[50];
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v122 = v42;
        *v40 = 136315650;
        *(v40 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v122);
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_23BF62294(v39, v38, &v122);
        *(v40 + 22) = 2112;
        v43 = v16;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 24) = v44;
        *v41 = v44;
        _os_log_impl(&dword_23BF0C000, v36, v37, "%s: cannot write plist to %s, error: %@", v40, 0x20u);
        sub_23BF4B2D4(v41, &qword_27E1E0B50);
        MEMORY[0x23EEC4DF0](v41, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x23EEC4DF0](v42, -1, -1);
        MEMORY[0x23EEC4DF0](v40, -1, -1);
      }

      v45 = v0[57];
      v46 = v0[54];
      v109 = v0[56];
      v112 = v0[55];
      v48 = v0[52];
      v47 = v0[53];
      v50 = v0[46];
      v49 = v0[47];
      sub_23BF66068();
      v51 = swift_allocError();
      *v52 = 2;
      sub_23BF5F950();
      sub_23BF4BDF0(0, &qword_27E1E0B30);
      v53 = sub_23BFFA6D0();
      v54 = swift_allocObject();
      v54[2] = v50;
      v54[3] = v49;
      v54[4] = 0;
      v54[5] = v51;
      v0[30] = sub_23BF669F8;
      v0[31] = v54;
      v0[26] = MEMORY[0x277D85DD0];
      v0[27] = 1107296256;
      v0[28] = sub_23BF58264;
      v0[29] = &unk_284EBFA68;
      v55 = _Block_copy(aBlocka);

      v56 = v51;
      sub_23BFFA0F0();
      v0[42] = MEMORY[0x277D84F90];
      sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
      sub_23BF4A264(&qword_27E1E0B40);
      sub_23BF6636C();
      sub_23BFFA970();
      MEMORY[0x23EEC33A0](0, v45, v46, v55);
      _Block_release(v55);

      (*(v47 + 8))(v46, v48);
      (*(v109 + 8))(v45, v112);

      v57 = v116;
LABEL_29:

      goto LABEL_46;
    }

LABEL_51:
    swift_once();
    goto LABEL_26;
  }

  sub_23BF4BDF0(0, &qword_27E1E0930);
  v58 = [swift_getObjCClassFromMetadata() identifier];
  if (!v58)
  {
    sub_23BFFA300();
    v58 = sub_23BFFA2C0();
  }

  v59 = v0[48];
  v60 = v0[45];
  sub_23BF4BDF0(0, &qword_27E1E0B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v62 = *&v60[OBJC_IVAR___NTKParmesanUpgradeManager_device];
  v63 = swift_allocObject();
  *(v63 + 16) = v59;
  *(v63 + 24) = v60;
  v0[12] = sub_23BF663D0;
  v0[13] = v63;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_23BF5D30C;
  v0[11] = &unk_284EBF978;
  v64 = _Block_copy(v0 + 8);
  swift_unknownObjectRetain();
  v65 = v60;

  v66 = [ObjCClassFromMetadata bundledFaceWithIdentifier:v58 forDevice:v62 initCustomization:v64];
  _Block_release(v64);

  if (!v66)
  {

    if (qword_27E1DFDD8 != -1)
    {
      swift_once();
    }

    v75 = sub_23BFF92B0();
    sub_23BF4A22C(v75, qword_27E1EB558);
    v76 = sub_23BFF9290();
    v77 = sub_23BFFA650();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v122 = v79;
      *v78 = 136315138;
      *(v78 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v122);
      _os_log_impl(&dword_23BF0C000, v76, v77, "%s: cannot create an empty face", v78, 0xCu);
      sub_23BF4A9A4(v79);
      MEMORY[0x23EEC4DF0](v79, -1, -1);
      MEMORY[0x23EEC4DF0](v78, -1, -1);
    }

    v80 = v0[57];
    v81 = v0[54];
    v114 = v0[56];
    v117 = v0[55];
    v83 = v0[52];
    v82 = v0[53];
    v84 = v0[46];
    v85 = v0[47];
    sub_23BF66068();
    v86 = swift_allocError();
    *v87 = 4;
    sub_23BF5F950();
    sub_23BF4BDF0(0, &qword_27E1E0B30);
    v88 = sub_23BFFA6D0();
    v89 = swift_allocObject();
    v89[2] = v84;
    v89[3] = v85;
    v89[4] = 0;
    v89[5] = v86;
    v0[18] = sub_23BF669F8;
    v0[19] = v89;
    v0[14] = MEMORY[0x277D85DD0];
    v0[15] = 1107296256;
    v0[16] = sub_23BF58264;
    v0[17] = &unk_284EBF9C8;
    v90 = _Block_copy(v0 + 14);

    v91 = v86;
    sub_23BFFA0F0();
    v0[40] = MEMORY[0x277D84F90];
    sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
    sub_23BF4A264(&qword_27E1E0B40);
    sub_23BF6636C();
    sub_23BFFA970();
    MEMORY[0x23EEC33A0](0, v80, v81, v90);
    _Block_release(v90);

    (*(v82 + 8))(v81, v83);
    (*(v114 + 8))(v80, v117);

    v57 = v86;
    goto LABEL_29;
  }

  if (qword_27E1DFDD8 != -1)
  {
    swift_once();
  }

  v67 = sub_23BFF92B0();
  sub_23BF4A22C(v67, qword_27E1EB558);

  v68 = sub_23BFF9290();
  v69 = sub_23BFFA640();

  v113 = v66;
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v122 = v71;
    *v70 = 136315650;
    *(v70 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v122);
    *(v70 + 12) = 2048;
    if (aBlock)
    {
      v72 = sub_23BFFAAB0();
    }

    else
    {
      v72 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v73 = v0[49];
    v74 = v0[50];

    *(v70 + 14) = v72;

    *(v70 + 22) = 2080;
    *(v70 + 24) = sub_23BF62294(v73, v74, &v122);
    _os_log_impl(&dword_23BF0C000, v68, v69, "%s: Created upgraded face with %ld assets, directory: %s", v70, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EEC4DF0](v71, -1, -1);
    MEMORY[0x23EEC4DF0](v70, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v107 = v0[57];
  v110 = v0[56];
  v92 = v0[54];
  aBlockc = v0[55];
  v94 = v0[52];
  v93 = v0[53];
  v95 = v0[46];
  v96 = v0[47];
  v97 = v113;
  v98 = sub_23BFFA2C0();
  [v97 setResourceDirectory_];

  sub_23BF4BDF0(0, &qword_27E1E0B30);
  v99 = v97;
  v100 = sub_23BFFA6D0();
  v101 = swift_allocObject();
  v101[2] = v95;
  v101[3] = v96;
  v101[4] = v113;
  v101[5] = 0;
  v0[24] = sub_23BF669F8;
  v0[25] = v101;
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_23BF58264;
  v0[23] = &unk_284EBFA18;
  v102 = _Block_copy(v0 + 20);

  v103 = v99;
  sub_23BFFA0F0();
  v0[41] = MEMORY[0x277D84F90];
  sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
  sub_23BF4A264(&qword_27E1E0B40);
  sub_23BF6636C();
  sub_23BFFA970();
  MEMORY[0x23EEC33A0](0, v107, v92, v102);
  _Block_release(v102);

  (*(v93 + 8))(v92, v94);
  (*(v110 + 8))(v107, aBlockc);

LABEL_46:

  v104 = v0[1];

  return v104();
}

uint64_t sub_23BF5BCFC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = a2;

  return MEMORY[0x2822009F8](sub_23BF5BE00, 0, 0);
}

uint64_t sub_23BF5BE00()
{
  v129 = v0;
  v1 = v0[73];
  if (v1)
  {
    swift_unknownObjectRetain();
    v2 = v1;
    v3 = sub_23BFF9290();
    v4 = sub_23BFFA650();
    swift_unknownObjectRelease();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[72];
    if (v5)
    {
      v7 = v0[66];
      v8 = v0[48];
      v120 = v0[72];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v128 = v11;
      *v9 = 136315906;
      *(v9 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v128);
      *(v9 + 12) = 2048;
      *(v9 + 14) = v7;
      *(v9 + 22) = 2080;
      v0[43] = v8;
      swift_unknownObjectRetain();
      sub_23BF4A264(&qword_27E1E0B58);
      v12 = sub_23BFFA360();
      v14 = sub_23BF62294(v12, v13, &v128);

      *(v9 + 24) = v14;
      *(v9 + 32) = 2112;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 34) = v16;
      *v10 = v16;
      _os_log_impl(&dword_23BF0C000, v3, v4, "%s: cannot convert item %ld in context %s, error: %@", v9, 0x2Au);
      sub_23BF4B2D4(v10, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v10, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23EEC4DF0](v11, -1, -1);
      MEMORY[0x23EEC4DF0](v9, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v17 = v0[72];
    if (v17)
    {
      v18 = v17;
      MEMORY[0x23EEC3100]();
      if (*((v0[39] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[39] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23BFFA480();
      }

      sub_23BFFA4A0();
      swift_unknownObjectRelease();

      v19 = v0[39];
      v20 = v19;
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  v20 = v0[68];
  v19 = v0[67];
LABEL_11:
  v21 = qword_27E1EB558;
  while (1)
  {
    v23 = v0[66] + 1;
    if (v23 == v0[65])
    {
      break;
    }

    v0[68] = v20;
    v0[67] = v19;
    v0[66] = v23;
    v24 = sub_23BFF92B0();
    v0[69] = sub_23BF4A22C(v24, qword_27E1EB558);
    v25 = sub_23BFF9290();
    v26 = sub_23BFFA640();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v128 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v128);
      *(v27 + 12) = 2048;
      *(v27 + 14) = v23;
      _os_log_impl(&dword_23BF0C000, v25, v26, "%s: adding item %ld to the resource directory", v27, 0x16u);
      sub_23BF4A9A4(v28);
      MEMORY[0x23EEC4DF0](v28, -1, -1);
      MEMORY[0x23EEC4DF0](v27, -1, -1);
    }

    if (v23 || (v29 = *(v0[45] + v0[58])) == 0)
    {
      v22 = [v0[48] itemAtIndex_];
      v0[70] = v22;
      if (v22)
      {
        v65 = v22;
        v66 = swift_task_alloc();
        v0[71] = v66;
        *v66 = v0;
        v66[1] = sub_23BF5BCFC;
        v67 = v0[49];
        v68 = v0[50];

        return sub_23BF647CC(v65, v67, v68);
      }
    }

    else
    {
      v30 = v29;
      MEMORY[0x23EEC3100]();
      if (*((v0[39] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[39] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23BFFA480();
      }

      sub_23BFFA4A0();

      v19 = v0[39];
      v20 = v19;
    }
  }

  if (v20 >> 62)
  {
    v31 = sub_23BFFAAB0();
  }

  else
  {
    v31 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = MEMORY[0x277D84F90];
  v116 = v19;
  if (v31)
  {
    if (v31 < 1)
    {
      __break(1u);
      goto LABEL_67;
    }

    for (i = 0; i != v31; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x23EEC36D0](i, v20);
      }

      else
      {
        v34 = *(v20 + 8 * i + 32);
      }

      v35 = v34;
      v36 = [v34 asDictionary];
      if (v36)
      {
        v37 = v36;
        v38 = sub_23BFFA270();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_23BF61D9C(0, v32[2] + 1, 1, v32);
        }

        v40 = v32[2];
        v39 = v32[3];
        if (v40 >= v39 >> 1)
        {
          v32 = sub_23BF61D9C((v39 > 1), v40 + 1, 1, v32);
        }

        v32[2] = v40 + 1;
        v32[v40 + 4] = v38;
      }

      else
      {
      }
    }
  }

  v21 = sub_23BF60214(v32);

  if (v21)
  {

    if (qword_27E1DFDD8 == -1)
    {
LABEL_39:
      v41 = sub_23BFF92B0();
      sub_23BF4A22C(v41, qword_27E1EB558);

      v42 = v21;
      v43 = sub_23BFF9290();
      v44 = sub_23BFFA650();

      v121 = v21;
      if (os_log_type_enabled(v43, v44))
      {
        v46 = v0[49];
        v45 = v0[50];
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v128 = v49;
        *v47 = 136315650;
        *(v47 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v128);
        *(v47 + 12) = 2080;
        *(v47 + 14) = sub_23BF62294(v46, v45, &v128);
        *(v47 + 22) = 2112;
        v50 = v21;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 24) = v51;
        *v48 = v51;
        _os_log_impl(&dword_23BF0C000, v43, v44, "%s: cannot write plist to %s, error: %@", v47, 0x20u);
        sub_23BF4B2D4(v48, &qword_27E1E0B50);
        MEMORY[0x23EEC4DF0](v48, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x23EEC4DF0](v49, -1, -1);
        MEMORY[0x23EEC4DF0](v47, -1, -1);
      }

      v52 = v0[57];
      v117 = v0[56];
      v53 = v0[54];
      v125 = v0[55];
      v54 = v0[52];
      v55 = v0[53];
      v56 = v0[46];
      v57 = v0[47];
      sub_23BF66068();
      v58 = swift_allocError();
      *v59 = 2;
      sub_23BF5F950();
      sub_23BF4BDF0(0, &qword_27E1E0B30);
      v60 = sub_23BFFA6D0();
      v61 = swift_allocObject();
      v61[2] = v56;
      v61[3] = v57;
      v61[4] = 0;
      v61[5] = v58;
      v0[30] = sub_23BF669F8;
      v0[31] = v61;
      v0[26] = MEMORY[0x277D85DD0];
      v0[27] = 1107296256;
      v0[28] = sub_23BF58264;
      v0[29] = &unk_284EBFA68;
      v62 = _Block_copy(v0 + 26);

      v63 = v58;
      sub_23BFFA0F0();
      v0[42] = MEMORY[0x277D84F90];
      sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
      sub_23BF4A264(&qword_27E1E0B40);
      sub_23BF6636C();
      sub_23BFFA970();
      MEMORY[0x23EEC33A0](0, v52, v53, v62);
      _Block_release(v62);

      (*(v55 + 8))(v53, v54);
      v117[1](v52, v125);

      v64 = v121;
      goto LABEL_42;
    }

LABEL_67:
    swift_once();
    goto LABEL_39;
  }

  sub_23BF4BDF0(0, &qword_27E1E0930);
  v70 = [swift_getObjCClassFromMetadata() identifier];
  if (!v70)
  {
    sub_23BFFA300();
    v70 = sub_23BFFA2C0();
  }

  v71 = v0[48];
  v72 = v0[45];
  sub_23BF4BDF0(0, &qword_27E1E0B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v74 = *&v72[OBJC_IVAR___NTKParmesanUpgradeManager_device];
  v75 = swift_allocObject();
  *(v75 + 16) = v71;
  *(v75 + 24) = v72;
  v0[12] = sub_23BF663D0;
  v0[13] = v75;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_23BF5D30C;
  v0[11] = &unk_284EBF978;
  v76 = _Block_copy(v0 + 8);
  swift_unknownObjectRetain();
  v77 = v72;

  v78 = [ObjCClassFromMetadata bundledFaceWithIdentifier:v70 forDevice:v74 initCustomization:v76];
  _Block_release(v76);

  if (v78)
  {
    if (qword_27E1DFDD8 != -1)
    {
      swift_once();
    }

    v79 = sub_23BFF92B0();
    sub_23BF4A22C(v79, qword_27E1EB558);

    v80 = sub_23BFF9290();
    v81 = sub_23BFFA640();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v128 = v122;
      *v82 = 136315650;
      *(v82 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v128);
      *(v82 + 12) = 2048;
      if (v116 >> 62)
      {
        v83 = sub_23BFFAAB0();
      }

      else
      {
        v83 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v84 = v78;
      v86 = v0[49];
      v85 = v0[50];

      *(v82 + 14) = v83;

      *(v82 + 22) = 2080;
      *(v82 + 24) = sub_23BF62294(v86, v85, &v128);
      _os_log_impl(&dword_23BF0C000, v80, v81, "%s: Created upgraded face with %ld assets, directory: %s", v82, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23EEC4DF0](v122, -1, -1);
      MEMORY[0x23EEC4DF0](v82, -1, -1);
    }

    else
    {
      v84 = v78;
      swift_bridgeObjectRelease_n();
    }

    v124 = v0[56];
    v104 = v0[54];
    v127 = v0[55];
    v105 = v0[52];
    v118 = v0[57];
    aBlock = v0[53];
    v106 = v0[46];
    v107 = v0[47];
    v108 = v84;
    v109 = sub_23BFFA2C0();
    [v108 setResourceDirectory_];

    sub_23BF4BDF0(0, &qword_27E1E0B30);
    v110 = v108;
    v111 = sub_23BFFA6D0();
    v112 = swift_allocObject();
    v112[2] = v106;
    v112[3] = v107;
    v112[4] = v84;
    v112[5] = 0;
    v0[24] = sub_23BF669F8;
    v0[25] = v112;
    v0[20] = MEMORY[0x277D85DD0];
    v0[21] = 1107296256;
    v0[22] = sub_23BF58264;
    v0[23] = &unk_284EBFA18;
    v113 = _Block_copy(v0 + 20);

    v114 = v110;
    sub_23BFFA0F0();
    v0[41] = MEMORY[0x277D84F90];
    sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
    sub_23BF4A264(&qword_27E1E0B40);
    sub_23BF6636C();
    sub_23BFFA970();
    MEMORY[0x23EEC33A0](0, v118, v104, v113);
    _Block_release(v113);

    aBlock[1](v104, v105);
    (*(v124 + 8))(v118, v127);

    goto LABEL_62;
  }

  if (qword_27E1DFDD8 != -1)
  {
    swift_once();
  }

  v87 = sub_23BFF92B0();
  sub_23BF4A22C(v87, qword_27E1EB558);
  v88 = sub_23BFF9290();
  v89 = sub_23BFFA650();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v128 = v91;
    *v90 = 136315138;
    *(v90 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v128);
    _os_log_impl(&dword_23BF0C000, v88, v89, "%s: cannot create an empty face", v90, 0xCu);
    sub_23BF4A9A4(v91);
    MEMORY[0x23EEC4DF0](v91, -1, -1);
    MEMORY[0x23EEC4DF0](v90, -1, -1);
  }

  v92 = v0[57];
  v123 = v0[56];
  v93 = v0[54];
  v126 = v0[55];
  v95 = v0[52];
  v94 = v0[53];
  v97 = v0[46];
  v96 = v0[47];
  sub_23BF66068();
  v98 = swift_allocError();
  *v99 = 4;
  sub_23BF5F950();
  sub_23BF4BDF0(0, &qword_27E1E0B30);
  v100 = sub_23BFFA6D0();
  v101 = swift_allocObject();
  v101[2] = v97;
  v101[3] = v96;
  v101[4] = 0;
  v101[5] = v98;
  v0[18] = sub_23BF669F8;
  v0[19] = v101;
  v0[14] = MEMORY[0x277D85DD0];
  v0[15] = 1107296256;
  v0[16] = sub_23BF58264;
  v0[17] = &unk_284EBF9C8;
  v102 = _Block_copy(v0 + 14);

  v103 = v98;
  sub_23BFFA0F0();
  v0[40] = MEMORY[0x277D84F90];
  sub_23BF66494(&qword_27E1E04F0, MEMORY[0x277D85198]);
  sub_23BF4A264(&qword_27E1E0B40);
  sub_23BF6636C();
  sub_23BFFA970();
  MEMORY[0x23EEC33A0](0, v92, v93, v102);
  _Block_release(v102);

  (*(v94 + 8))(v93, v95);
  (*(v123 + 8))(v92, v126);

  v64 = v98;
LABEL_42:

LABEL_62:

  v115 = v0[1];

  return v115();
}

void sub_23BF5D088(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    if ([a2 contentType] == 1)
    {
      type metadata accessor for ParmesanContentEditOption();
      v6 = sub_23BF72A98(1, *(a3 + OBJC_IVAR___NTKParmesanUpgradeManager_device));
      [v5 selectOption:v6 forCustomEditMode:12 slot:0];
    }

    v7 = [a2 topComplication];
    [v5 setComplication:v7 forSlot:*MEMORY[0x277D2BF00]];

    v8 = [a2 bottomComplication];
    [v5 setComplication:v8 forSlot:*MEMORY[0x277D2BED0]];

    v9 = [a2 typeface];
    if (v9 == 3)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9 == 1;
    }

    type metadata accessor for ParmesanTypefaceEditOption();
    v11 = *(a3 + OBJC_IVAR___NTKParmesanUpgradeManager_device);
    v19 = sub_23BF72A98(v10, v11);
    if (v19)
    {
      [v5 selectOption:v19 forCustomEditMode:13 slot:0];
    }

    v12 = [a2 colorEffect] - 1;
    if (v12 <= 2 && (v13 = qword_23C002590[v12], type metadata accessor for ParmesanStyleEditOption(), (v14 = sub_23BF72A98(v13, v11)) != 0))
    {
      v15 = v14;
      [v5 selectOption:v15 forCustomEditMode:15 slot:0];
      v16 = [a2 colorOption];
      if (v16)
      {
        v17 = v16;
        v18 = @"style-color";
        [v5 selectOption:v17 forCustomEditMode:10 slot:v18];

        v5 = v17;
      }
    }

    else
    {
      v15 = v5;
    }
  }
}

void sub_23BF5D30C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_23BF5D3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_23BFF8BB0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_23BF5D544(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_23BF5D564, 0, 0);
}

uint64_t sub_23BF5D564()
{
  v44 = v0;
  if (![*(v0 + 32) numberOfItems])
  {
    if (qword_27E1DFDD8 != -1)
    {
      swift_once();
    }

    v2 = sub_23BFF92B0();
    sub_23BF4A22C(v2, qword_27E1EB558);
    swift_unknownObjectRetain();
    v3 = sub_23BFF9290();
    v4 = sub_23BFFA670();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_20;
    }

    v5 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_23BF62294(0xD000000000000012, 0x800000023C00D480, &v43);
    *(v6 + 12) = 2080;
    *(v0 + 24) = v5;
    swift_unknownObjectRetain();
    sub_23BF4A264(&qword_27E1E0B58);
    v8 = sub_23BFFA360();
    v10 = sub_23BF62294(v8, v9, &v43);

    *(v6 + 14) = v10;
    v11 = "%s: no photos in %s";
    goto LABEL_9;
  }

  v1 = [*(v0 + 32) contentType];
  if (v1 <= 1)
  {
    if (v1 < 2)
    {
LABEL_21:
      v21 = *(v0 + 8);

      return v21(v1);
    }

    goto LABEL_15;
  }

  if (v1 == 2)
  {
    if ([*(*(v0 + 40) + OBJC_IVAR___NTKParmesanUpgradeManager_device) isTinker])
    {
      v1 = 1;
      goto LABEL_21;
    }

    v22 = [*(v0 + 32) albumIdentifier];
    if (v22)
    {
      v23 = v22;
      v24 = sub_23BFFA300();
      v26 = v25;

      v27 = objc_opt_self();
      sub_23BF4A264(&unk_27E1E0990);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_23C001BB0;
      *(v28 + 32) = v24;
      *(v28 + 40) = v26;

      v29 = sub_23BFFA450();

      v30 = [v27 fetchAssetCollectionsWithLocalIdentifiers:v29 options:0];

      if (![v30 count])
      {
        if (qword_27E1DFDD8 != -1)
        {
          swift_once();
        }

        v31 = sub_23BFF92B0();
        sub_23BF4A22C(v31, qword_27E1EB558);

        v32 = sub_23BFF9290();
        v33 = sub_23BFFA670();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v43 = v35;
          *v34 = 136315394;
          *(v34 + 4) = sub_23BF62294(0xD000000000000012, 0x800000023C00D480, &v43);
          *(v34 + 12) = 2080;
          v36 = sub_23BF62294(v24, v26, &v43);

          *(v34 + 14) = v36;
          _os_log_impl(&dword_23BF0C000, v32, v33, "%s: album %s no longer exists", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23EEC4DF0](v35, -1, -1);
          MEMORY[0x23EEC4DF0](v34, -1, -1);

LABEL_39:
          v42 = [v30 count];

          v1 = v42 > 0;
          goto LABEL_21;
        }
      }

      goto LABEL_39;
    }

    if (qword_27E1DFDD8 != -1)
    {
      swift_once();
    }

    v37 = sub_23BFF92B0();
    sub_23BF4A22C(v37, qword_27E1EB558);
    swift_unknownObjectRetain();
    v3 = sub_23BFF9290();
    v4 = sub_23BFFA670();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_20;
    }

    v38 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v43 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_23BF62294(0xD000000000000012, 0x800000023C00D480, &v43);
    *(v6 + 12) = 2080;
    *(v0 + 16) = v38;
    swift_unknownObjectRetain();
    sub_23BF4A264(&qword_27E1E0B58);
    v39 = sub_23BFFA360();
    v41 = sub_23BF62294(v39, v40, &v43);

    *(v6 + 14) = v41;
    v11 = "%s: no albumIdentifier for %s";
LABEL_9:
    _os_log_impl(&dword_23BF0C000, v3, v4, v11, v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC4DF0](v7, -1, -1);
    v12 = v6;
    goto LABEL_19;
  }

  if (v1 != 3)
  {
LABEL_15:
    if (qword_27E1DFDD8 != -1)
    {
      swift_once();
    }

    v15 = sub_23BFF92B0();
    sub_23BF4A22C(v15, qword_27E1EB558);
    swift_unknownObjectRetain();
    v3 = sub_23BFF9290();
    v16 = sub_23BFFA650();
    v17 = os_log_type_enabled(v3, v16);
    v18 = *(v0 + 32);
    if (!v17)
    {
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v43 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_23BF62294(0xD000000000000012, 0x800000023C00D480, &v43);
    *(v19 + 12) = 2048;
    *(v19 + 14) = [v18 contentType];
    swift_unknownObjectRelease();
    _os_log_impl(&dword_23BF0C000, v3, v16, "%s: Unexpected content type in upgrade context: %ld", v19, 0x16u);
    sub_23BF4A9A4(v20);
    MEMORY[0x23EEC4DF0](v20, -1, -1);
    v12 = v19;
LABEL_19:
    MEMORY[0x23EEC4DF0](v12, -1, -1);
LABEL_20:

    v1 = 0;
    goto LABEL_21;
  }

  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  *v13 = v0;
  v13[1] = sub_23BF5DD30;

  return sub_23BFCEDCC();
}

uint64_t sub_23BF5DD30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_23BF5E050;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_23BF5DE58;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23BF5DE58()
{
  v15 = v0;
  v1 = v0[5];
  v2 = OBJC_IVAR___NTKParmesanUpgradeManager_galleryShuffles;
  *(v1 + OBJC_IVAR___NTKParmesanUpgradeManager_galleryShuffles) = v0[8];

  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    if (sub_23BFFAAB0())
    {
      goto LABEL_8;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  if (qword_27E1DFDD8 != -1)
  {
    swift_once();
  }

  v4 = sub_23BFF92B0();
  sub_23BF4A22C(v4, qword_27E1EB558);
  v5 = sub_23BFF9290();
  v6 = sub_23BFFA670();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_23BF62294(0xD000000000000012, 0x800000023C00D480, &v14);
    _os_log_impl(&dword_23BF0C000, v5, v6, "%s: there are no suggested shuffles to replace the memory with", v7, 0xCu);
    sub_23BF4A9A4(v8);
    MEMORY[0x23EEC4DF0](v8, -1, -1);
    MEMORY[0x23EEC4DF0](v7, -1, -1);
  }

LABEL_8:
  v9 = *(v1 + v2);
  if (v9 >> 62)
  {
    v10 = sub_23BFFAAB0();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v10 > 0;
  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_23BF5E050()
{
  v16 = v0;
  if (qword_27E1DFDD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_23BFF92B0();
  sub_23BF4A22C(v2, qword_27E1EB558);
  v3 = v1;
  v4 = sub_23BFF9290();
  v5 = sub_23BFFA670();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_23BF62294(0xD000000000000012, 0x800000023C00D480, &v15);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_23BF0C000, v4, v5, "%s: error trying to fetch suggested shuffles: %@", v8, 0x16u);
    sub_23BF4B2D4(v9, &qword_27E1E0B50);
    MEMORY[0x23EEC4DF0](v9, -1, -1);
    sub_23BF4A9A4(v10);
    MEMORY[0x23EEC4DF0](v10, -1, -1);
    MEMORY[0x23EEC4DF0](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13(0);
}

uint64_t sub_23BF5E258()
{
  v1[5] = v0;
  v2 = sub_23BFF8D10();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_23BFF8DE0();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BF5E374, 0, 0);
}

uint64_t sub_23BF5E374()
{
  v38 = v0;
  super_class = v0[2].super_class;
  v2 = OBJC_IVAR___NTKParmesanUpgradeManager_galleryShuffles;
  v3 = *(super_class + OBJC_IVAR___NTKParmesanUpgradeManager_galleryShuffles);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_24:
    if (qword_27E1DFDD8 == -1)
    {
LABEL_25:
      v15 = sub_23BFF92B0();
      sub_23BF4A22C(v15, qword_27E1EB558);
      v16 = sub_23BFF9290();
      v17 = sub_23BFFA650();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v37 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D460, &v37);
        _os_log_impl(&dword_23BF0C000, v16, v17, "%s: no shuffle content", v18, 0xCu);
        sub_23BF4A9A4(v19);
        MEMORY[0x23EEC4DF0](v19, -1, -1);
        MEMORY[0x23EEC4DF0](v18, -1, -1);
      }

      sub_23BF66068();
      v20 = swift_allocError();
      *v21 = 3;

      v22 = v0->super_class;

      return v22(0, 0, v20);
    }

LABEL_38:
    swift_once();
    goto LABEL_25;
  }

  if (!sub_23BFFAAB0())
  {
    goto LABEL_24;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v24 = MEMORY[0x23EEC36D0](0, v3);

    v4 = v24;
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v4 = *(v3 + 32);
  }

  v0[6].receiver = v4;
  v0[2].receiver = MEMORY[0x277D84FA0];
  v5 = *(super_class + v2);
  if (v5 >> 62)
  {
    v25 = v4;
    v6 = sub_23BFFAAB0();
    v36 = v25;
    if (v6)
    {
LABEL_8:
      if (v6 >= 1)
      {

        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x23EEC36D0](v10, v5);
          }

          else
          {
            v11 = *(v5 + 8 * v10 + 32);
          }

          v12 = v11;

          sub_23BF5F114(v13);
          if (v9)
          {
            v9 = 1;
            if (v8)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v9 = v12[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_pets];
            if (v8)
            {
LABEL_17:
              v8 = 1;
              if ((v7 & 1) == 0)
              {
                goto LABEL_21;
              }

              goto LABEL_10;
            }
          }

          v8 = v12[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_nature];
          if ((v7 & 1) == 0)
          {
LABEL_21:
            v7 = v12[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_cityscape];
            goto LABEL_11;
          }

LABEL_10:
          v7 = 1;
LABEL_11:
          ++v10;

          if (v6 == v10)
          {

            receiver = v0[2].receiver;
            goto LABEL_33;
          }
        }
      }

      goto LABEL_37;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v4;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  receiver = MEMORY[0x277D84FA0];
LABEL_33:
  v27 = v0[5].receiver;
  v26 = v0[5].super_class;
  v28 = v0[4].super_class;
  sub_23BFF8DD0();
  v29 = sub_23BFF8DB0();
  v31 = v30;
  v27[1](v26, v28);
  v32 = type metadata accessor for NTKShuffleID();
  v33 = objc_allocWithZone(v32);
  *&v33[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_people] = receiver;
  v33[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_pets] = v9;
  v33[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_nature] = v8;
  v33[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_cityscape] = v7;
  v34 = &v33[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_uuidString];
  *v34 = v29;
  v34[1] = v31;
  v0[1].receiver = v33;
  v0[1].super_class = v32;
  v0[6].super_class = objc_msgSendSuper2(v0 + 1, sel_init);
  v35 = swift_task_alloc();
  v0[7].receiver = v35;
  *v35 = v0;
  v35[1] = sub_23BF5E848;

  return (sub_23BFD0D38)(v36);
}

uint64_t sub_23BF5E848(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_23BF5EEA0;
  }

  else
  {
    v4 = sub_23BF5E95C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23BF5E95C()
{
  v43 = v0;
  v1 = v0[15];
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:

    if (qword_27E1DFDD8 == -1)
    {
LABEL_15:
      v28 = v0[12];
      v29 = sub_23BFF92B0();
      sub_23BF4A22C(v29, qword_27E1EB558);
      v30 = v28;
      v31 = sub_23BFF9290();
      v32 = sub_23BFFA650();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = v0[12];
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v42[0] = v36;
        *v34 = 136315394;
        *(v34 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D460, v42);
        *(v34 + 12) = 2112;
        *(v34 + 14) = v33;
        *v35 = v33;
        v37 = v33;
        _os_log_impl(&dword_23BF0C000, v31, v32, "%s: no assets in shuffle %@", v34, 0x16u);
        sub_23BF4B2D4(v35, &qword_27E1E0B50);
        MEMORY[0x23EEC4DF0](v35, -1, -1);
        sub_23BF4A9A4(v36);
        MEMORY[0x23EEC4DF0](v36, -1, -1);
        MEMORY[0x23EEC4DF0](v34, -1, -1);
      }

      v38 = v0[12];
      v25 = v0[13];
      sub_23BF66068();
      v9 = swift_allocError();
      *v39 = 3;

      goto LABEL_18;
    }

LABEL_24:
    swift_once();
    goto LABEL_15;
  }

  if (!sub_23BFFAAB0())
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x23EEC36D0](0, v0[15]);
    goto LABEL_6;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_24;
  }

  v2 = *(v0[15] + 32);
LABEL_6:
  v3 = v0[5];

  if (*(v3 + OBJC_IVAR___NTKParmesanUpgradeManager_resourceDirectory + 8))
  {
    v5 = v0[12];
    v4 = v0[13];
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];

    sub_23BFF8C20();

    sub_23BF5F218(v6);

    (*(v7 + 8))(v6, v8);
    v9 = 0;
    goto LABEL_19;
  }

  sub_23BF66068();
  v10 = swift_allocError();
  *v11 = 1;
  swift_willThrow();

  if (qword_27E1DFDD8 != -1)
  {
    swift_once();
  }

  v12 = v0[12];
  v13 = sub_23BFF92B0();
  sub_23BF4A22C(v13, qword_27E1EB558);
  v14 = v12;
  v15 = v10;
  v16 = sub_23BFF9290();
  v17 = sub_23BFFA650();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v0[12];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v42[0] = v21;
    *v19 = 136315650;
    *(v19 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D460, v42);
    *(v19 + 12) = 2112;
    *(v19 + 14) = v18;
    *v20 = v18;
    *(v19 + 22) = 2112;
    v22 = v18;
    v23 = v10;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 24) = v24;
    v20[1] = v24;
    _os_log_impl(&dword_23BF0C000, v16, v17, "%s: cannot retrieve assets for shuffle %@, error: %@", v19, 0x20u);
    sub_23BF4A264(&qword_27E1E0B50);
    swift_arrayDestroy();
    MEMORY[0x23EEC4DF0](v20, -1, -1);
    sub_23BF4A9A4(v21);
    MEMORY[0x23EEC4DF0](v21, -1, -1);
    MEMORY[0x23EEC4DF0](v19, -1, -1);
  }

  v26 = v0[12];
  v25 = v0[13];
  v9 = swift_allocError();
  *v27 = 3;

LABEL_18:
  v2 = 0;
  v4 = 0;
LABEL_19:

  v40 = v0[1];

  return v40(v2, v4, v9);
}

uint64_t sub_23BF5EEA0()
{
  v22 = v0;
  v1 = v0[16];
  if (qword_27E1DFDD8 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v3 = sub_23BFF92B0();
  sub_23BF4A22C(v3, qword_27E1EB558);
  v4 = v2;
  v5 = v1;
  v6 = sub_23BFF9290();
  v7 = sub_23BFFA650();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D460, &v21);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v8;
    *v10 = v8;
    *(v9 + 22) = 2112;
    v12 = v8;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v14;
    v10[1] = v14;
    _os_log_impl(&dword_23BF0C000, v6, v7, "%s: cannot retrieve assets for shuffle %@, error: %@", v9, 0x20u);
    sub_23BF4A264(&qword_27E1E0B50);
    swift_arrayDestroy();
    MEMORY[0x23EEC4DF0](v10, -1, -1);
    sub_23BF4A9A4(v11);
    MEMORY[0x23EEC4DF0](v11, -1, -1);
    MEMORY[0x23EEC4DF0](v9, -1, -1);
  }

  v16 = v0[12];
  v15 = v0[13];
  sub_23BF66068();
  v17 = swift_allocError();
  *v18 = 3;

  v19 = v0[1];

  return v19(0, 0, v17);
}

uint64_t sub_23BF5F114(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_23BFB9B0C(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_23BF5F218(uint64_t a1)
{
  v84 = a1;
  v2 = sub_23BFF8BF0();
  v83 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23BF4A264(&qword_27E1E0B78);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v62 - v9;
  v11 = sub_23BFF8D10();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - v15;
  v17 = OBJC_IVAR___NTKParmesanAsset_resourceDirectory;
  swift_beginAccess();
  v65 = v17;
  sub_23BF4B33C(v1 + v17, v10, &qword_27E1E0B78);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_23BF4B2D4(v10, &qword_27E1E0B78);
    return;
  }

  v66 = v12;
  (*(v12 + 32))(v16, v10, v11);
  v18 = OBJC_IVAR___NTKParmesanAsset_layouts;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v71 = v2;
  v74 = v11;
  v75 = v4;
  v20 = v16;
  v64 = v1;
  v63 = v8;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = sub_23BFFAAA0() | 0x8000000000000000;
  }

  else
  {
    v25 = -1 << *(v19 + 32);
    v22 = ~v25;
    v21 = v19 + 64;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v23 = v27 & *(v19 + 64);
    v24 = v19;
  }

  v28 = 0;
  v62 = v22;
  v29 = (v22 + 64) >> 6;
  v81 = *MEMORY[0x277CC91D8];
  v80 = (v83 + 104);
  v82 = (v66 + 8);
  v73 = v24;
  v69 = v29;
  v70 = v21;
  v68 = (v83 + 8);
  v67 = v16;
  while (1)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      v35 = v20;
      v37 = sub_23BFFAAE0();
      v33 = v75;
      v34 = v76;
      if (!v37)
      {
        goto LABEL_24;
      }

      v39 = v38;
      swift_unknownObjectRelease();
      v85 = v39;
      type metadata accessor for ParmesanAssetLayout();
      swift_dynamicCast();
      v36 = v86;
      v32 = v28;
      v83 = v23;
      goto LABEL_20;
    }

    v30 = v28;
    v31 = v23;
    v32 = v28;
    v33 = v75;
    v34 = v76;
    if (!v23)
    {
      break;
    }

LABEL_17:
    v35 = v20;
    v83 = (v31 - 1) & v31;
    v36 = *(*(v24 + 56) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
LABEL_20:
    if (!v36)
    {
LABEL_24:
      v57 = v66;
      v58 = v74;
      (*(v66 + 8))(v35, v74);
      sub_23BF0F3EC();
      v59 = v63;
      (*(v57 + 16))(v63, v84, v58);
      (*(v57 + 56))(v59, 0, 1, v58);
      v60 = v64;
      v61 = v65;
      swift_beginAccess();
      sub_23BF66660(v59, v60 + v61);
      swift_endAccess();
      return;
    }

    v40 = &v36[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName];
    v41 = *&v36[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName + 8];
    v86 = *&v36[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName];
    v87 = v41;
    v42 = v36;
    v43 = v71;
    v78 = *v80;
    v78(v33, v81, v71);
    v44 = sub_23BF66440();

    v79 = v44;
    sub_23BFF8D00();
    v77 = *v68;
    v77(v33, v43);

    v46 = *v40;
    v45 = *(v40 + 1);

    v47 = v82;
    sub_23BF60A0C(v34, v84, v46, v45);

    v48 = *v47;
    v49 = v74;
    (*v47)(v34, v74);
    v50 = v42;
    v51 = *&v42[OBJC_IVAR___NTKParmesanAssetLayout_mask];
    if (v51)
    {
      v52 = (v51 + OBJC_IVAR___NTKParmesanAssetMask_imageName);
      v72 = v48;
      v53 = v49;
      v55 = v52[1];
      v86 = *v52;
      v54 = v86;
      v87 = v55;
      v78(v33, v81, v43);

      v56 = v67;
      sub_23BFF8D00();
      v77(v33, v43);
      sub_23BF60A0C(v34, v84, v54, v55);

      v72(v34, v53);
      v28 = v32;
      v23 = v83;
      v20 = v56;
    }

    else
    {

      v28 = v32;
      v23 = v83;
      v20 = v67;
    }

    v21 = v70;
    v24 = v73;
    v29 = v69;
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      v35 = v20;
      goto LABEL_24;
    }

    v31 = *(v21 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_23BF5F950()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = (v0 + OBJC_IVAR___NTKParmesanUpgradeManager_resourceDirectory);
  if (*(v0 + OBJC_IVAR___NTKParmesanUpgradeManager_resourceDirectory + 8))
  {
    v2 = objc_opt_self();

    v3 = [v2 defaultManager];
    v4 = sub_23BFFA2C0();

    v10[0] = 0;
    v5 = [v3 removeItemAtPath:v4 error:v10];

    if (v5)
    {
      v6 = v10[0];
    }

    else
    {
      v7 = v10[0];
      v8 = sub_23BFF8BC0();

      swift_willThrow();
    }
  }

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_23BF5FA80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BFF8DE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BFE44D0(MEMORY[0x277D84F90]);
  v9 = sub_23BFFA300();
  v11 = v10;
  v104 = MEMORY[0x277D83E88];
  *&v103 = 2;
  sub_23BF66650(&v103, v106);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v105 = v8;
  sub_23BFE7F4C(v106, v9, v11, isUniquelyReferenced_nonNull_native);

  v13 = v105;
  v14 = sub_23BFFA300();
  v16 = v15;
  v104 = sub_23BF4A264(&qword_27E1E0BE8);
  *&v103 = a1;
  sub_23BF66650(&v103, v106);

  v17 = swift_isUniquelyReferenced_nonNull_native();
  v105 = v13;
  sub_23BFE7F4C(v106, v14, v16, v17);

  v18 = v105;
  v19 = *(v2 + OBJC_IVAR___NTKParmesanUpgradeManager_memoryShuffle);
  if (!v19)
  {
    v27 = *(v2 + OBJC_IVAR___NTKParmesanUpgradeManager_upgradeContext);
    if (!v27)
    {
      return v18;
    }

    v28 = [v27 albumIdentifier];
    if (!v28)
    {
      return v18;
    }

    v29 = v28;
    v30 = sub_23BFFA300();
    v32 = v31;

    v33 = sub_23BFFA300();
    v35 = v34;
    v36 = MEMORY[0x277D837D0];
    v104 = MEMORY[0x277D837D0];
    *&v103 = v30;
    *(&v103 + 1) = v32;
    sub_23BF66650(&v103, v106);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v18;
    sub_23BFE7F4C(v106, v33, v35, v37);

    v38 = v105;
    v39 = sub_23BFFA300();
    v41 = v40;
    v42 = MEMORY[0x277D839B0];
    v104 = MEMORY[0x277D839B0];
    LOBYTE(v103) = 0;
    sub_23BF66650(&v103, v106);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v38;
    sub_23BFE7F4C(v106, v39, v41, v43);

    v44 = v105;
    v45 = sub_23BFFA300();
    v47 = v46;
    v104 = v42;
    LOBYTE(v103) = 0;
    sub_23BF66650(&v103, v106);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v44;
    sub_23BFE7F4C(v106, v45, v47, v48);

    v49 = v105;
    v50 = sub_23BFFA300();
    v52 = v51;
    v104 = v42;
    LOBYTE(v103) = 0;
    sub_23BF66650(&v103, v106);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v49;
    sub_23BFE7F4C(v106, v50, v52, v53);

    v54 = v105;
    v55 = sub_23BFFA300();
    v57 = v56;
    v104 = v42;
    LOBYTE(v103) = 0;
    sub_23BF66650(&v103, v106);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v54;
    sub_23BFE7F4C(v106, v55, v57, v58);

    v59 = v105;
    v60 = sub_23BFFA300();
    v62 = v61;
    sub_23BFF8DD0();
    v63 = sub_23BFF8DB0();
    v65 = v64;
    (*(v5 + 8))(v7, v4);
    v104 = v36;
    *&v103 = v63;
    *(&v103 + 1) = v65;
    sub_23BF66650(&v103, v106);
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v59;
    sub_23BFE7F4C(v106, v60, v62, v66);

    return v105;
  }

  v20 = *&v19[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_people];
  v21 = *(v20 + 16);
  if (!v21)
  {
    v67 = v19;
    goto LABEL_9;
  }

  v101 = sub_23BFFA300();
  v102 = v22;
  v100 = sub_23BF62104(v21, 0);
  v23 = sub_23BF7AC98(&v103, v100 + 4, v21, v20);
  v24 = v19;

  result = sub_23BF0F3EC();
  if (v23 == v21)
  {
    v104 = sub_23BF4A264(&unk_27E1E0BF0);
    *&v103 = v100;
    sub_23BF66650(&v103, v106);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v18;
    sub_23BFE7F4C(v106, v101, v102, v26);

    v18 = v105;
LABEL_9:
    v68 = v21 != 0;
    v69 = sub_23BFFA300();
    v71 = v70;
    v72 = MEMORY[0x277D839B0];
    v104 = MEMORY[0x277D839B0];
    LOBYTE(v103) = v68;
    sub_23BF66650(&v103, v106);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v18;
    sub_23BFE7F4C(v106, v69, v71, v73);

    v74 = v105;
    v75 = sub_23BFFA300();
    v77 = v76;
    v78 = v19[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_pets];
    v104 = v72;
    LOBYTE(v103) = v78;
    sub_23BF66650(&v103, v106);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v74;
    sub_23BFE7F4C(v106, v75, v77, v79);

    v80 = v105;
    v81 = sub_23BFFA300();
    v83 = v82;
    v84 = v19[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_nature];
    v104 = v72;
    LOBYTE(v103) = v84;
    sub_23BF66650(&v103, v106);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v80;
    sub_23BFE7F4C(v106, v81, v83, v85);

    v86 = v105;
    v87 = sub_23BFFA300();
    v89 = v88;
    v90 = v19[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_cityscape];
    v104 = v72;
    LOBYTE(v103) = v90;
    sub_23BF66650(&v103, v106);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v86;
    sub_23BFE7F4C(v106, v87, v89, v91);

    v92 = v105;
    v93 = sub_23BFFA300();
    v95 = v94;
    v96 = *&v19[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_uuidString];
    v97 = *&v19[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID_uuidString + 8];
    v104 = MEMORY[0x277D837D0];
    *&v103 = v96;
    *(&v103 + 1) = v97;
    sub_23BF66650(&v103, v106);

    v98 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v92;
    sub_23BFE7F4C(v106, v93, v95, v98);

    return v105;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BF60214(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23BFF8D10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23BF5FA80(a1);
  sub_23BFFA300();
  sub_23BFF8C70();

  sub_23BF60424(v6);

  v7 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v8 = sub_23BFFA260();

  v9 = [v7 initWithDictionary_];

  v10 = sub_23BFF8C40();
  v16[0] = 0;
  LODWORD(v8) = [v9 writeToURL:v10 error:v16];

  if (v8)
  {
    v11 = v16[0];
    v12 = 0;
  }

  else
  {
    v13 = v16[0];
    v12 = sub_23BFF8BC0();

    swift_willThrow();
  }

  (*(v3 + 8))(v5, v2);
  return v12;
}

uint64_t sub_23BF60424(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_23BF4A264(&qword_27E1E0BE0);
    v2 = sub_23BFFAB50();
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
    sub_23BF4A6AC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_23BF66650(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_23BF66650(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_23BF66650(v31, v32);
    result = sub_23BFFA990();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_23BF66650(v32, (*(v2 + 56) + 32 * v10));
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

id sub_23BF6071C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanUpgradeManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BF60814(uint64_t a1, uint64_t a2)
{
  v3 = sub_23BFF8DE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BF4A264(&qword_27E1E0BA8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  if (!a2)
  {
    goto LABEL_5;
  }

  v10 = objc_opt_self();
  v11 = sub_23BFFA2C0();
  v12 = [v10 uuidFromLocalIdentifier_];

  if (!v12)
  {
    goto LABEL_5;
  }

  sub_23BFFA300();

  sub_23BFF8DA0();

  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_23BF4B2D4(v9, &qword_27E1E0BA8);
LABEL_5:
    sub_23BFF8DD0();
    v9 = v6;
  }

  v13 = sub_23BFF8DB0();
  (*(v4 + 8))(v9, v3);
  return v13;
}

id sub_23BF60A0C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v90 = a1;
  v92[2] = *MEMORY[0x277D85DE8];
  v6 = sub_23BFF8BF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v80[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_23BFF8D10();
  v91 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v86 = &v80[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v89 = &v80[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v80[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v80[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v80[-v21];
  v92[0] = a3;
  v92[1] = a4;
  (*(v7 + 104))(v9, *MEMORY[0x277CC91D8], v6);
  sub_23BF66440();
  sub_23BFF8CF0();
  (*(v7 + 8))(v9, v6);
  if (qword_27E1DFDD8 != -1)
  {
    swift_once();
  }

  v23 = sub_23BFF92B0();
  v24 = sub_23BF4A22C(v23, qword_27E1EB558);
  v26 = v90;
  v25 = v91;
  v27 = v91 + 2;
  isa = v91[2].isa;
  isa(v20, v90, v10);
  v83 = isa;
  v84 = v27;
  isa(v17, v22, v10);
  v85 = v24;
  v29 = sub_23BFF9290();
  v30 = sub_23BFFA630();
  v31 = v22;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v92[0] = v82;
    *v32 = 136315650;
    *(v32 + 4) = sub_23BF62294(0xD000000000000038, 0x800000023C00D420, v92);
    *(v32 + 12) = 2080;
    sub_23BF66494(&qword_27E1E0B98, MEMORY[0x277CC9260]);
    v87 = v22;
    v81 = v30;
    v33 = sub_23BFFAC70();
    v35 = v34;
    v36 = v91[1].isa;
    v36(v20, v10);
    v37 = sub_23BF62294(v33, v35, v92);

    *(v32 + 14) = v37;
    *(v32 + 22) = 2080;
    v31 = v87;
    v38 = sub_23BFFAC70();
    v40 = v39;
    v88 = v36;
    v36(v17, v10);
    v26 = v90;
    v41 = sub_23BF62294(v38, v40, v92);

    *(v32 + 24) = v41;
    _os_log_impl(&dword_23BF0C000, v29, v81, "%s: copying %s to %s", v32, 0x20u);
    v42 = v82;
    swift_arrayDestroy();
    MEMORY[0x23EEC4DF0](v42, -1, -1);
    MEMORY[0x23EEC4DF0](v32, -1, -1);
  }

  else
  {

    v43 = v25[1].isa;
    v43(v17, v10);
    v88 = v43;
    v43(v20, v10);
  }

  v44 = [objc_opt_self() defaultManager];
  v45 = sub_23BFF8C40();
  v46 = sub_23BFF8C40();
  v92[0] = 0;
  v47 = [v44 copyItemAtURL:v45 toURL:v46 error:v92];

  v48 = v89;
  if (v47)
  {
    v49 = v92[0];
    v88(v31, v10);
  }

  else
  {
    v50 = v92[0];
    v51 = sub_23BFF8BC0();

    swift_willThrow();
    v52 = v83;
    v83(v48, v26, v10);
    v53 = v86;
    v52(v86, v31, v10);
    v54 = v51;
    v55 = sub_23BFF9290();
    v56 = sub_23BFFA650();

    v57 = v48;
    if (os_log_type_enabled(v55, v56))
    {
      v58 = v10;
      v59 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v92[0] = v91;
      *v59 = 136315906;
      *(v59 + 4) = sub_23BF62294(0xD000000000000038, 0x800000023C00D420, v92);
      *(v59 + 12) = 2080;
      sub_23BF66494(&qword_27E1E0B98, MEMORY[0x277CC9260]);
      LODWORD(v85) = v56;
      v60 = v53;
      v84 = v55;
      v61 = sub_23BFFAC70();
      v87 = v31;
      v63 = v62;
      v64 = v57;
      v65 = v58;
      v66 = v58;
      v67 = v88;
      v88(v64, v65);
      v68 = sub_23BF62294(v61, v63, v92);

      *(v59 + 14) = v68;
      *(v59 + 22) = 2080;
      v69 = sub_23BFFAC70();
      v71 = v70;
      v67(v60, v66);
      v72 = sub_23BF62294(v69, v71, v92);

      *(v59 + 24) = v72;
      *(v59 + 32) = 2112;
      v73 = v51;
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 34) = v74;
      v75 = v90;
      *v90 = v74;
      v76 = v84;
      _os_log_impl(&dword_23BF0C000, v84, v85, "%s: failed to copy %s to %s, error: %@", v59, 0x2Au);
      sub_23BF4B2D4(v75, &qword_27E1E0B50);
      MEMORY[0x23EEC4DF0](v75, -1, -1);
      v77 = v91;
      swift_arrayDestroy();
      MEMORY[0x23EEC4DF0](v77, -1, -1);
      MEMORY[0x23EEC4DF0](v59, -1, -1);

      v67(v87, v66);
    }

    else
    {

      v78 = v88;
      v88(v53, v10);
      v78(v48, v10);
      v78(v31, v10);
    }
  }

  return v47;
}

uint64_t sub_23BF612CC()
{
  v1 = *(v0 + OBJC_IVAR___NTKParmesanTimeLayout_alignment);
  v2 = *(v0 + OBJC_IVAR___NTKParmesanTimeLayout_scale);
  sub_23BF4A264(&qword_27E1E0BA0);
  if (v1 == 1)
  {
    if (v2 > 1)
    {
      if (v2 == 3)
      {
        return 25196;
      }

      if (v2 == 2)
      {
        return 25197;
      }
    }

    else
    {
      if (!v2)
      {
        return 6452088;
      }

      if (v2 == 1)
      {
        return 25203;
      }
    }
  }

  else if (!v1)
  {
    if (v2 > 1)
    {
      if (v2 == 3)
      {
        return 29804;
      }

      if (v2 == 2)
      {
        return 29805;
      }
    }

    else
    {
      if (!v2)
      {
        return 7631736;
      }

      if (v2 == 1)
      {
        return 29811;
      }
    }
  }

  result = sub_23BFFACB0();
  __break(1u);
  return result;
}

uint64_t sub_23BF613EC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23BF614E4;

  return v6(a1);
}

uint64_t sub_23BF614E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23BF615DC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

char *sub_23BF6163C(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BF4A264(&qword_27E1E0BD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_23BF61740(char *result, int64_t a2, char a3, char *a4)
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

size_t sub_23BF6184C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_23BF4A264(&unk_27E1E0C10);
  v10 = *(sub_23BF4A264(&qword_27E1E0570) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23BF4A264(&qword_27E1E0570) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_23BF61A78(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BF4A264(&unk_27E1E0C00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_23BF61BC0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

void *sub_23BF61D9C(void *result, int64_t a2, char a3, void *a4)
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
    sub_23BF4A264(&qword_27E1E0BB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_23BF4A264(&qword_27E1E0BB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23BF61EE4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_23BF4A264(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *sub_23BF61FD0(void *result, int64_t a2, char a3, void *a4)
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
    sub_23BF4A264(&qword_27E1E0B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_23BF4A264(&qword_27E1E0B70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23BF62104(uint64_t a1, uint64_t a2)
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

  sub_23BF4A264(&unk_27E1E0990);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_23BF62188(uint64_t a1, uint64_t a2)
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

  sub_23BF4A264(&qword_27E1E05E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

uint64_t sub_23BF62238(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_23BF62294(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_23BF62294(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23BF62360(v11, 0, 0, 1, a1, a2);
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
    sub_23BF4A6AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_23BF4A9A4(v11);
  return v7;
}

unint64_t sub_23BF62360(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23BF6246C(a5, a6);
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
    result = sub_23BFFAA30();
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

uint64_t sub_23BF6246C(uint64_t a1, unint64_t a2)
{
  v3 = sub_23BF624B8(a1, a2);
  sub_23BF625E8(&unk_284EBA728);
  return v3;
}

uint64_t sub_23BF624B8(uint64_t a1, unint64_t a2)
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

  v6 = sub_23BF626D4(v5, 0);
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

  result = sub_23BFFAA30();
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
        v10 = sub_23BFFA3E0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23BF626D4(v10, 0);
        result = sub_23BFFA9E0();
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

uint64_t sub_23BF625E8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23BF62748(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23BF626D4(uint64_t a1, uint64_t a2)
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

  sub_23BF4A264(&qword_27E1E0BC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23BF62748(char *result, int64_t a2, char a3, char *a4)
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
    sub_23BF4A264(&qword_27E1E0BC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

_BYTE **sub_23BF6283C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_23BF6284C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_23BF6286C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_23BF6289C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_23BF62910(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_23BF629BC(void *a1, void *a2)
{
  v2[OBJC_IVAR___NTKParmesanUpgradeManager_faceUpgradeValidated] = 0;
  v4 = &v2[OBJC_IVAR___NTKParmesanUpgradeManager_resourceDirectory];
  *v4 = 0;
  v4[1] = 0;
  *&v2[OBJC_IVAR___NTKParmesanUpgradeManager_previewAsset] = 0;
  v5 = OBJC_IVAR___NTKParmesanUpgradeManager_memoryShuffle;
  *&v2[OBJC_IVAR___NTKParmesanUpgradeManager_memoryShuffle] = 0;
  *&v2[OBJC_IVAR___NTKParmesanUpgradeManager_sourceFace] = a1;
  v6 = [a1 upgradeContext];
  *&v2[OBJC_IVAR___NTKParmesanUpgradeManager_upgradeContext] = v6;
  *&v2[OBJC_IVAR___NTKParmesanUpgradeManager_device] = a2;
  v7 = a2;
  *&v2[OBJC_IVAR___NTKParmesanUpgradeManager_upgradingFaceIndex] = sub_23BFF8AF0();
  v8 = NTKPhotosCreateResourceDirectory();
  if (v8)
  {
    v9 = v8;
    v10 = sub_23BFFA300();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *v4 = v10;
  v4[1] = v12;

  *&v2[OBJC_IVAR___NTKParmesanUpgradeManager_galleryShuffles] = MEMORY[0x277D84F90];
  v13 = *&v2[v5];
  *&v2[v5] = 0;

  v15.receiver = v2;
  v15.super_class = type metadata accessor for ParmesanUpgradeManager();
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_23BF62AEC(char *a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = *&a1[OBJC_IVAR___NTKParmesanUpgradeManager_resourceDirectory + 8];
  if (v7)
  {
    v8 = *&a1[OBJC_IVAR___NTKParmesanUpgradeManager_upgradeContext];
    if (v8)
    {
      v9 = *&a1[OBJC_IVAR___NTKParmesanUpgradeManager_resourceDirectory];
      v10 = sub_23BFFA540();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = a1;
      v11[5] = v8;
      v11[6] = sub_23BF664DC;
      v11[7] = a2;
      v11[8] = v9;
      v11[9] = v7;
      swift_retain_n();

      swift_unknownObjectRetain();
      v12 = a1;
      sub_23BF56D9C(0, 0, v6, &unk_23C002438, v11);
    }

    v16 = qword_27E1DFDD8;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_23BFF92B0();
    sub_23BF4A22C(v17, qword_27E1EB558);
    v18 = sub_23BFF9290();
    v19 = sub_23BFFA650();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_23BF0C000, v18, v19, "No upgrade context provided, bailing on preview view", v20, 2u);
      MEMORY[0x23EEC4DF0](v20, -1, -1);
    }

    sub_23BF5F950();
    sub_23BF66068();
    v14 = swift_allocError();
    *v21 = 0;
  }

  else
  {
    sub_23BF66068();
    v14 = swift_allocError();
    *v15 = 1;
  }

  sub_23BFED5FC(0, v14);
}

void sub_23BF62DD8(void *a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0B78);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v249 - v5;
  v7 = sub_23BF4A264(&qword_27E1E0B80);
  MEMORY[0x28223BE20](v7 - 8);
  v253 = &v249 - v8;
  v9 = sub_23BFF8D10();
  v264 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v249 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v267 = &v249 - v13;
  v14 = sub_23BFE4298(MEMORY[0x277D84F90]);
  v15 = a1;
  v16 = [a1 localIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_23BFFA300();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v270 = sub_23BF60814(v18, v20);
  v22 = v21;

  v23 = [v15 timeAlignment];
  v24 = &OBJC_IVAR___NTKParmesanTimeLayout_alignment;
  v271 = a2;
  v269 = v15;
  v254 = v6;
  v273 = v9;
  v266 = v22;
  v263 = v14;
  v256 = v12;
  if (v23 <= 2)
  {
    if (v23 == 1)
    {
      v25 = type metadata accessor for ParmesanTimeLayout();
      v40 = objc_allocWithZone(v25);
      v27 = 0;
      *&v40[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
      *&v40[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 1;
      v274 = v40;
      i = &v274;
      goto LABEL_21;
    }

    if (v23 == 2)
    {
      v25 = type metadata accessor for ParmesanTimeLayout();
      v26 = objc_allocWithZone(v25);
      v27 = 0;
      *&v26[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
      *&v26[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 0;
      v275 = v26;
      i = &v275;
      goto LABEL_21;
    }

LABEL_11:
    if (qword_27E1DFDD8 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

  if (v23 != 3)
  {
    if (v23 == 4)
    {
      v25 = type metadata accessor for ParmesanTimeLayout();
      v29 = objc_allocWithZone(v25);
      v27 = 1;
      *&v29[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 1;
      *&v29[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 0;
      v277 = v29;
      i = &v277;
      goto LABEL_21;
    }

    goto LABEL_11;
  }

  v25 = type metadata accessor for ParmesanTimeLayout();
  v41 = objc_allocWithZone(v25);
  v27 = 1;
  *&v41[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 1;
  *&v41[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 1;
  v276 = v41;
  for (i = &v276; ; i = &v303)
  {
LABEL_21:
    i->super_class = v25;
    v265 = [(objc_super *)i init];
    v46 = v15;
    v47 = [v15 imageURL];
    v48 = v267;
    sub_23BFF8CA0();

    v49 = sub_23BFF8C00();
    v272 = v50;
    v51 = v264 + 8;
    v268 = *(v264 + 8);
    v268(v48, v273);
    type metadata accessor for ParmesanTimeLayout();
    v52 = objc_allocWithZone(v25);
    v53 = *v24;
    v259 = v27;
    *&v52[v53] = v27;
    *&v52[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 1;
    v302.receiver = v52;
    v302.super_class = v25;
    v261 = v25;
    v54 = v46;
    v55 = objc_msgSendSuper2(&v302, sel_init);
    v56 = sub_23BF612CC();
    v58 = v57;

    v281 = 0x5F65736162;
    v282 = 0xE500000000000000;
    v255 = v56;
    v262 = v58;
    MEMORY[0x23EEC3090](v56, v58);
    MEMORY[0x23EEC3090](95, 0xE100000000000000);
    MEMORY[0x23EEC3090](v270, v266);
    MEMORY[0x23EEC3090](46, 0xE100000000000000);
    v260 = v49;
    MEMORY[0x23EEC3090](v49, v272);
    v59 = v281;
    v60 = v282;
    v61 = [v54 imageURL];
    sub_23BFF8CA0();

    v62 = v273;
    v63 = v271;
    v258 = v59;
    LOBYTE(v61) = sub_23BF60A0C(v48, v271, v59, v60);
    v64 = v48;
    v65 = v51;
    v66 = v268;
    v268(v64, v62);
    if ((v61 & 1) == 0)
    {
      v66(v63, v62);

      swift_unknownObjectRelease();

LABEL_28:

      goto LABEL_47;
    }

    if (((v67 = v262, v251 = v55, v252 = v60, v68 = v269, v69 = [v269 timeAlignment], v257 = v65, v69 == 1) || objc_msgSend(v68, sel_timeAlignment) == 3) && (v70 = objc_msgSend(v68, sel_maskURL)) != 0)
    {
      v71 = v256;
      v72 = v70;
      sub_23BFF8CA0();

      v281 = 0x5F6B73616DLL;
      v282 = 0xE500000000000000;
      MEMORY[0x23EEC3090](v255, v67);

      MEMORY[0x23EEC3090](95, 0xE100000000000000);
      v73 = v266;
      MEMORY[0x23EEC3090](v270, v266);
      MEMORY[0x23EEC3090](46, 0xE100000000000000);
      v74 = sub_23BFF8C00();
      MEMORY[0x23EEC3090](v74);

      v75 = v281;
      v76 = v282;
      v77 = type metadata accessor for ParmesanAssetMask();
      v78 = objc_allocWithZone(v77);
      v79 = &v78[OBJC_IVAR___NTKParmesanAssetMask_imageName];
      *v79 = v75;
      *(v79 + 1) = v76;
      *&v78[OBJC_IVAR___NTKParmesanAssetMask_style] = 0;
      v279.receiver = v78;
      v279.super_class = v77;

      v80 = objc_msgSendSuper2(&v279, sel_init);
      LOBYTE(v75) = sub_23BF60A0C(v71, v271, v75, v76);

      v81 = v273;
      v66(v71, v273);
      v82 = v265;
      v83 = v251;
      if ((v75 & 1) == 0)
      {
        v66(v271, v81);

        swift_unknownObjectRelease();

LABEL_47:

        return;
      }
    }

    else
    {

      v80 = 0;
      v73 = v266;
      v83 = v251;
    }

    v85 = *MEMORY[0x277CBF3A0];
    v84 = *(MEMORY[0x277CBF3A0] + 8);
    v87 = *(MEMORY[0x277CBF3A0] + 16);
    v86 = *(MEMORY[0x277CBF3A0] + 24);
    v88 = type metadata accessor for ParmesanCrop();
    v89 = objc_allocWithZone(v88);
    v90 = type metadata accessor for ParmesanPoint();
    v91 = objc_allocWithZone(v90);
    *&v91[OBJC_IVAR___NTKParmesanPoint_x] = v85;
    *&v91[OBJC_IVAR___NTKParmesanPoint_y] = v84;
    v301.receiver = v91;
    v301.super_class = v90;
    v251 = v90;
    *&v89[OBJC_IVAR___NTKParmesanCrop_origin] = objc_msgSendSuper2(&v301, sel_init);
    v92 = type metadata accessor for ParmesanSize();
    v93 = objc_allocWithZone(v92);
    *&v93[OBJC_IVAR___NTKParmesanSize_width] = v87;
    *&v93[OBJC_IVAR___NTKParmesanSize_height] = v86;
    v300.receiver = v93;
    v300.super_class = v92;
    v250 = v92;
    *&v89[OBJC_IVAR___NTKParmesanCrop_size] = objc_msgSendSuper2(&v300, sel_init);
    v299.receiver = v89;
    v299.super_class = v88;
    v255 = v88;
    v94 = objc_msgSendSuper2(&v299, sel_init);
    v95 = type metadata accessor for ParmesanAssetLayout();
    v96 = objc_allocWithZone(v95);
    v97 = OBJC_IVAR___NTKParmesanAssetLayout_mask;
    *&v96[OBJC_IVAR___NTKParmesanAssetLayout_mask] = 0;
    v98 = OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis;
    *&v96[OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis] = 0;
    v99 = OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness;
    *&v96[OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness] = 0;
    *&v96[OBJC_IVAR___NTKParmesanAssetLayout_originalCrop] = v94;
    v100 = &v96[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName];
    v101 = v252;
    *v100 = v258;
    v100[1] = v101;
    *&v96[v97] = v80;
    *&v96[OBJC_IVAR___NTKParmesanAssetLayout_timeLayout] = v83;
    *&v96[v98] = 0;
    *&v96[v99] = 0;
    v96[OBJC_IVAR___NTKParmesanAssetLayout_userEdited] = 0;
    v298.receiver = v96;
    v298.super_class = v95;
    v252 = v95;
    v24 = v83;
    v15 = v80;
    v102 = objc_msgSendSuper2(&v298, sel_init);
    v103 = v102;
    v104 = v263;
    v262 = v15;
    if ((v263 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (v263 >= 0)
    {
      v104 = v263 & 0xFFFFFFFFFFFFFF8;
    }

    v105 = v102;
    v106 = sub_23BFFAAB0();
    v107 = v259;
    if (!__OFADD__(v106, 1))
    {
      v104 = sub_23BFE3834(v104, v106 + 1);
      goto LABEL_36;
    }

    __break(1u);
LABEL_57:
    swift_once();
LABEL_12:
    v30 = sub_23BFF92B0();
    sub_23BF4A22C(v30, qword_27E1EB558);
    swift_unknownObjectRetain();
    v31 = sub_23BFF9290();
    v32 = sub_23BFFA650();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v278 = v34;
      *v33 = 136315394;
      *(v33 + 4) = sub_23BF62294(0xD00000000000001DLL, 0x800000023C00D400, &v278);
      *(v33 + 12) = 2080;
      v35 = [v15 localIdentifier];
      if (v35)
      {
        v36 = v35;
        v37 = sub_23BFFA300();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      v281 = v37;
      v282 = v39;
      sub_23BF4A264(&qword_27E1E05D0);
      v42 = sub_23BFFA360();
      v44 = sub_23BF62294(v42, v43, &v278);

      *(v33 + 14) = v44;
      _os_log_impl(&dword_23BF0C000, v31, v32, "%s: bad time alignement in item %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEC4DF0](v34, -1, -1);
      MEMORY[0x23EEC4DF0](v33, -1, -1);

      v15 = v269;
      v24 = &OBJC_IVAR___NTKParmesanTimeLayout_alignment;
    }

    else
    {
    }

    v25 = type metadata accessor for ParmesanTimeLayout();
    v45 = objc_allocWithZone(v25);
    v27 = 0;
    *&v45[*v24] = 0;
    *&v45[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 0;
    v303.receiver = v45;
  }

  v108 = v102;
  v107 = v259;
LABEL_36:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v281 = v104;
  sub_23BFE7DE4(v103, v24, isUniquelyReferenced_nonNull_native);
  v263 = v281;
  v110 = v261;
  v111 = objc_allocWithZone(v261);
  *&v111[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = v107;
  *&v111[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 2;
  v297.receiver = v111;
  v297.super_class = v110;
  v112 = objc_msgSendSuper2(&v297, sel_init);

  v113 = v112;
  v114 = sub_23BF612CC();
  v116 = v115;

  v281 = 0x5F65736162;
  v282 = 0xE500000000000000;
  MEMORY[0x23EEC3090](v114, v116);

  MEMORY[0x23EEC3090](95, 0xE100000000000000);
  MEMORY[0x23EEC3090](v270, v73);
  MEMORY[0x23EEC3090](46, 0xE100000000000000);
  MEMORY[0x23EEC3090](v260, v272);
  v118 = v281;
  v117 = v282;
  v119 = [v269 imageURL];
  v120 = v267;
  sub_23BFF8CA0();

  v258 = v103;
  v121 = v271;
  v249 = v118;
  v256 = v117;
  LOBYTE(v119) = sub_23BF60A0C(v120, v271, v118, v117);

  v122 = v273;
  v123 = v268;
  v268(v120, v273);
  if ((v119 & 1) == 0)
  {
    v123(v121, v122);

    swift_unknownObjectRelease();

    goto LABEL_47;
  }

  v124 = v255;
  v125 = objc_allocWithZone(v255);
  v126 = v251;
  v127 = objc_allocWithZone(v251);
  *&v127[OBJC_IVAR___NTKParmesanPoint_x] = v85;
  *&v127[OBJC_IVAR___NTKParmesanPoint_y] = v84;
  v296.receiver = v127;
  v296.super_class = v126;
  *&v125[OBJC_IVAR___NTKParmesanCrop_origin] = objc_msgSendSuper2(&v296, sel_init);
  v128 = v250;
  v129 = objc_allocWithZone(v250);
  *&v129[OBJC_IVAR___NTKParmesanSize_width] = v87;
  *&v129[OBJC_IVAR___NTKParmesanSize_height] = v86;
  v295.receiver = v129;
  v295.super_class = v128;
  *&v125[OBJC_IVAR___NTKParmesanCrop_size] = objc_msgSendSuper2(&v295, sel_init);
  v294.receiver = v125;
  v294.super_class = v124;
  v130 = objc_msgSendSuper2(&v294, sel_init);
  v131 = v252;
  v132 = objc_allocWithZone(v252);
  v133 = OBJC_IVAR___NTKParmesanAssetLayout_mask;
  *&v132[OBJC_IVAR___NTKParmesanAssetLayout_mask] = 0;
  v134 = OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis;
  *&v132[OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis] = 0;
  v135 = OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness;
  *&v132[OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness] = 0;
  *&v132[OBJC_IVAR___NTKParmesanAssetLayout_originalCrop] = v130;
  v136 = &v132[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName];
  v137 = v256;
  *v136 = v249;
  v136[1] = v137;
  *&v132[v133] = 0;
  *&v132[OBJC_IVAR___NTKParmesanAssetLayout_timeLayout] = v113;
  *&v132[v134] = 0;
  *&v132[v135] = 0;
  v132[OBJC_IVAR___NTKParmesanAssetLayout_userEdited] = 0;
  v293.receiver = v132;
  v293.super_class = v131;
  v138 = v113;
  v139 = v130;
  v140 = objc_msgSendSuper2(&v293, sel_init);

  v141 = v263;
  v142 = v140;
  v143 = v141;
  if ((v141 & 0xC000000000000001) != 0)
  {
    v144 = sub_23BFFAAB0();
    v145 = v269;
    v146 = v272;
    if (!__OFADD__(v144, 1))
    {
      v143 = sub_23BFE3834(v143, v144 + 1);
      goto LABEL_42;
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v145 = v269;
  v146 = v272;
LABEL_42:
  v147 = swift_isUniquelyReferenced_nonNull_native();
  v281 = v143;
  sub_23BFE7DE4(v142, v138, v147);
  v263 = v281;
  v148 = v261;
  v149 = objc_allocWithZone(v261);
  *&v149[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 1;
  *&v149[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 3;
  v292.receiver = v149;
  v292.super_class = v148;
  v150 = objc_msgSendSuper2(&v292, sel_init);

  v151 = v150;
  v152 = sub_23BF612CC();
  v154 = v153;
  v256 = v151;

  v281 = 0x5F65736162;
  v282 = 0xE500000000000000;
  MEMORY[0x23EEC3090](v152, v154);

  MEMORY[0x23EEC3090](95, 0xE100000000000000);
  MEMORY[0x23EEC3090](v270, v73);
  MEMORY[0x23EEC3090](46, 0xE100000000000000);
  MEMORY[0x23EEC3090](v260, v146);
  v155 = v142;
  v157 = v281;
  v156 = v282;
  v158 = [v145 imageURL];
  v159 = v267;
  sub_23BFF8CA0();

  v160 = v271;
  v249 = v157;
  v258 = v156;
  LOBYTE(v158) = sub_23BF60A0C(v159, v271, v157, v156);
  v161 = v273;
  v262 = v155;
  v162 = v268;
  v268(v159, v273);
  if ((v158 & 1) == 0)
  {
    v162(v160, v161);

    swift_unknownObjectRelease();

    goto LABEL_47;
  }

  v163 = v255;
  v164 = objc_allocWithZone(v255);
  v165 = v251;
  v166 = objc_allocWithZone(v251);
  *&v166[OBJC_IVAR___NTKParmesanPoint_x] = v85;
  *&v166[OBJC_IVAR___NTKParmesanPoint_y] = v84;
  v291.receiver = v166;
  v291.super_class = v165;
  *&v164[OBJC_IVAR___NTKParmesanCrop_origin] = objc_msgSendSuper2(&v291, &selRef_nature);
  v167 = v250;
  v168 = objc_allocWithZone(v250);
  *&v168[OBJC_IVAR___NTKParmesanSize_width] = v87;
  *&v168[OBJC_IVAR___NTKParmesanSize_height] = v86;
  v290.receiver = v168;
  v290.super_class = v167;
  *&v164[OBJC_IVAR___NTKParmesanCrop_size] = objc_msgSendSuper2(&v290, &selRef_nature);
  v289.receiver = v164;
  v289.super_class = v163;
  v169 = objc_msgSendSuper2(&v289, &selRef_nature);
  v170 = v252;
  v171 = objc_allocWithZone(v252);
  v172 = OBJC_IVAR___NTKParmesanAssetLayout_mask;
  *&v171[OBJC_IVAR___NTKParmesanAssetLayout_mask] = 0;
  v173 = OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis;
  *&v171[OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis] = 0;
  v174 = OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness;
  *&v171[OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness] = 0;
  *&v171[OBJC_IVAR___NTKParmesanAssetLayout_originalCrop] = v169;
  v175 = &v171[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName];
  v176 = v258;
  *v175 = v249;
  v175[1] = v176;
  *&v171[v172] = 0;
  v177 = v256;
  *&v171[OBJC_IVAR___NTKParmesanAssetLayout_timeLayout] = v256;
  *&v171[v173] = 0;
  *&v171[v174] = 0;
  v171[OBJC_IVAR___NTKParmesanAssetLayout_userEdited] = 0;
  v288.receiver = v171;
  v288.super_class = v170;
  v178 = v177;
  v179 = v169;
  v180 = objc_msgSendSuper2(&v288, &selRef_nature);

  v181 = v263;
  v182 = v180;
  v183 = v181;
  if ((v181 & 0xC000000000000001) != 0)
  {
    v184 = sub_23BFFAAB0();
    v185 = v266;
    if (__OFADD__(v184, 1))
    {
      goto LABEL_59;
    }

    v183 = sub_23BFE3834(v183, v184 + 1);
  }

  else
  {
    v185 = v266;
  }

  v186 = v259;
  v187 = swift_isUniquelyReferenced_nonNull_native();
  v281 = v183;
  sub_23BFE7DE4(v182, v178, v187);
  v263 = v281;
  v188 = v261;
  v189 = objc_allocWithZone(v261);
  *&v189[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = v186;
  *&v189[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 0;
  v287.receiver = v189;
  v287.super_class = v188;
  v190 = objc_msgSendSuper2(&v287, &selRef_nature);

  v191 = v190;
  v192 = sub_23BF612CC();
  v194 = v193;
  v262 = v191;

  v281 = 0x5F65736162;
  v282 = 0xE500000000000000;
  v259 = v194;
  MEMORY[0x23EEC3090](v192, v194);
  MEMORY[0x23EEC3090](95, 0xE100000000000000);
  MEMORY[0x23EEC3090](v270, v185);
  MEMORY[0x23EEC3090](46, 0xE100000000000000);
  MEMORY[0x23EEC3090](v260, v272);
  v196 = v281;
  v195 = v282;
  v197 = [v269 imageURL];
  v198 = v267;
  sub_23BFF8CA0();

  v260 = v182;
  v261 = v195;
  v199 = v271;
  v258 = v196;
  LOBYTE(v197) = sub_23BF60A0C(v198, v271, v196, v195);
  v200 = v273;
  v201 = v268;
  v268(v198, v273);
  if ((v197 & 1) == 0)
  {
    v201(v199, v200);

    swift_unknownObjectRelease();

    goto LABEL_28;
  }

  v202 = v255;
  v203 = objc_allocWithZone(v255);
  v204 = v251;
  v205 = objc_allocWithZone(v251);
  *&v205[OBJC_IVAR___NTKParmesanPoint_x] = v85;
  *&v205[OBJC_IVAR___NTKParmesanPoint_y] = v84;
  v286.receiver = v205;
  v286.super_class = v204;
  *&v203[OBJC_IVAR___NTKParmesanCrop_origin] = objc_msgSendSuper2(&v286, &selRef_nature);
  v206 = v250;
  v207 = objc_allocWithZone(v250);
  *&v207[OBJC_IVAR___NTKParmesanSize_width] = v87;
  *&v207[OBJC_IVAR___NTKParmesanSize_height] = v86;
  v285.receiver = v207;
  v285.super_class = v206;
  *&v203[OBJC_IVAR___NTKParmesanCrop_size] = objc_msgSendSuper2(&v285, &selRef_nature);
  v284.receiver = v203;
  v284.super_class = v202;
  v208 = objc_msgSendSuper2(&v284, &selRef_nature);
  v209 = v252;
  v210 = objc_allocWithZone(v252);
  v211 = OBJC_IVAR___NTKParmesanAssetLayout_mask;
  *&v210[OBJC_IVAR___NTKParmesanAssetLayout_mask] = 0;
  v212 = OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis;
  *&v210[OBJC_IVAR___NTKParmesanAssetLayout_colorAnalysis] = 0;
  v213 = OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness;
  *&v210[OBJC_IVAR___NTKParmesanAssetLayout_imageAOTBrightness] = 0;
  *&v210[OBJC_IVAR___NTKParmesanAssetLayout_originalCrop] = v208;
  v214 = &v210[OBJC_IVAR___NTKParmesanAssetLayout_baseImageName];
  v215 = v261;
  *v214 = v258;
  v214[1] = v215;
  *&v210[v211] = 0;
  v216 = v262;
  *&v210[OBJC_IVAR___NTKParmesanAssetLayout_timeLayout] = v262;
  *&v210[v212] = 0;
  *&v210[v213] = 0;
  v210[OBJC_IVAR___NTKParmesanAssetLayout_userEdited] = 0;
  v283.receiver = v210;
  v283.super_class = v209;
  v217 = v216;

  v218 = v208;
  v219 = objc_msgSendSuper2(&v283, &selRef_nature);

  v220 = v263;
  v221 = v219;
  v222 = v220;
  if ((v220 & 0xC000000000000001) != 0)
  {
    v223 = sub_23BFFAAB0();
    if (__OFADD__(v223, 1))
    {
      goto LABEL_60;
    }

    v222 = sub_23BFE3834(v220, v223 + 1);
  }

  v224 = swift_isUniquelyReferenced_nonNull_native();
  v281 = v222;
  sub_23BFE7DE4(v221, v217, v224);
  v267 = v281;
  sub_23BF4BDF0(0, &qword_27E1E0B88);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v226 = sub_23BFFA2C0();
  v227 = [ObjCClassFromMetadata localIdentifierWithUUID_];

  v263 = v217;
  v270 = v221;
  if (v227)
  {

    v266 = sub_23BFFA300();
    v262 = v228;

    v229 = sub_23BFF8D90();
    v230 = *(*(v229 - 8) + 56);
    v230(v253, 1, 1, v229);
    v231 = v264;
    v232 = v254;
    v233 = v273;
    (*(v264 + 16))(v254, v271, v273);
    v234 = *(v231 + 56);
    v234(v232, 0, 1, v233);
    v272 = type metadata accessor for ParmesanAsset();
    v235 = objc_allocWithZone(v272);
    v236 = OBJC_IVAR___NTKParmesanAsset_modificationDate;
    v230(&v235[OBJC_IVAR___NTKParmesanAsset_modificationDate], 1, 1, v229);
    v237 = OBJC_IVAR___NTKParmesanAsset_layouts;
    *&v235[v237] = sub_23BFE4298(MEMORY[0x277D84F90]);
    v238 = &v235[OBJC_IVAR___NTKParmesanAsset_accessibilityDescription];
    *v238 = 0;
    *(v238 + 1) = 0;
    v239 = OBJC_IVAR___NTKParmesanAsset_videoInfo;
    *&v235[OBJC_IVAR___NTKParmesanAsset_videoInfo] = 0;
    v240 = OBJC_IVAR___NTKParmesanAsset_resourceDirectory;
    v234(&v235[OBJC_IVAR___NTKParmesanAsset_resourceDirectory], 1, 1, v233);
    *&v235[OBJC_IVAR___NTKParmesanAsset_photoVersion] = 10;
    v241 = &v235[OBJC_IVAR___NTKParmesanAsset_localIdentifier];
    v242 = v262;
    *v241 = v266;
    v241[1] = v242;
    swift_beginAccess();
    v243 = v253;
    sub_23BF663D8(v253, &v235[v236], &qword_27E1E0B80);
    swift_endAccess();
    v244 = &v235[OBJC_IVAR___NTKParmesanAsset_presentationSize];
    *v244 = 0;
    *(v244 + 1) = 0;
    v245 = *&v235[v239];
    *&v235[v239] = 0;

    swift_beginAccess();
    v246 = v254;
    sub_23BF663D8(v254, &v235[v240], &qword_27E1E0B78);
    swift_endAccess();
    v247 = v265;
    *&v235[OBJC_IVAR___NTKParmesanAsset_preferredTimeLayout] = v265;
    swift_beginAccess();
    *&v235[v237] = v267;
    v248 = v247;

    *v238 = 0;
    *(v238 + 1) = 0;

    v280.receiver = v235;
    v280.super_class = v272;
    objc_msgSendSuper2(&v280, sel_init);
    swift_unknownObjectRelease();

    v268(v271, v233);
    sub_23BF4B2D4(v246, &qword_27E1E0B78);
    sub_23BF4B2D4(v243, &qword_27E1E0B80);
  }

  else
  {
LABEL_61:
    __break(1u);
  }
}

uint64_t sub_23BF647CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_23BFF8D10();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23BF64860, 0, 0);
}

uint64_t sub_23BF64860()
{
  v43 = v0;
  v1 = [*(v0 + 32) localIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_23BFFA300();
    v5 = v4;

    *(v0 + 64) = v3;
    *(v0 + 72) = v5;
    sub_23BF4A264(&unk_27E1E0990);
    v6 = swift_allocObject();
    *(v0 + 80) = v6;
    *(v6 + 16) = xmmword_23C001BB0;
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;

    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_23BF64D70;
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);

    return sub_23BFD1E10(v6, v8, v9);
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = *(v0 + 32);
    swift_unknownObjectRetain();
    sub_23BFF8C20();
    sub_23BF62DD8(v12, v11);
    v14 = v13;
    if (v13)
    {
      if (qword_27E1DFDD8 != -1)
      {
        swift_once();
      }

      v15 = sub_23BFF92B0();
      sub_23BF4A22C(v15, qword_27E1EB558);
      v16 = v14;
      v17 = sub_23BFF9290();
      v18 = sub_23BFFA670();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v42 = v20;
        *v19 = 136315394;
        *(v19 + 4) = sub_23BF62294(0xD00000000000001DLL, 0x800000023C00D3E0, &v42);
        *(v19 + 12) = 2080;
        v21 = &v16[OBJC_IVAR___NTKParmesanAsset_localIdentifier];
        v22 = *&v16[OBJC_IVAR___NTKParmesanAsset_localIdentifier];
        v23 = *(v21 + 1);

        v24 = sub_23BF62294(v22, v23, &v42);

        *(v19 + 14) = v24;
        _os_log_impl(&dword_23BF0C000, v17, v18, "%s: Created a photo from legacy images for id %s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEC4DF0](v20, -1, -1);
        MEMORY[0x23EEC4DF0](v19, -1, -1);
      }

      v25 = 0;
    }

    else
    {
      if (qword_27E1DFDD8 != -1)
      {
        swift_once();
      }

      v26 = sub_23BFF92B0();
      sub_23BF4A22C(v26, qword_27E1EB558);
      swift_unknownObjectRetain();
      v27 = sub_23BFF9290();
      v28 = sub_23BFFA650();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = *(v0 + 32);
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v42 = v31;
        *v30 = 136315394;
        *(v30 + 4) = sub_23BF62294(0xD00000000000001DLL, 0x800000023C00D3E0, &v42);
        *(v30 + 12) = 2080;
        v32 = [v29 localIdentifier];
        if (v32)
        {
          v33 = v32;
          v34 = sub_23BFFA300();
          v36 = v35;
        }

        else
        {
          v34 = 0;
          v36 = 0;
        }

        *(v0 + 16) = v34;
        *(v0 + 24) = v36;
        sub_23BF4A264(&qword_27E1E05D0);
        v37 = sub_23BFFA360();
        v39 = sub_23BF62294(v37, v38, &v42);

        *(v30 + 14) = v39;
        _os_log_impl(&dword_23BF0C000, v27, v28, "%s: Cannot create a photo for %s", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EEC4DF0](v31, -1, -1);
        MEMORY[0x23EEC4DF0](v30, -1, -1);
      }

      sub_23BF66068();
      v25 = swift_allocError();
      *v40 = 3;
    }

    v41 = *(v0 + 8);

    return v41(v14, v25);
  }
}

uint64_t sub_23BF64D70(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_23BF64E90, 0, 0);
}

uint64_t sub_23BF64E90()
{
  v43 = v1;
  v2 = v1[12];
  if (v2)
  {
    if (v2 >> 62)
    {
      if (sub_23BFFAAB0())
      {
        goto LABEL_4;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v3 = v1[12];
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EEC36D0](0, v2);
        goto LABEL_7;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v2 + 32);
LABEL_7:
        v0 = v4;

        if (qword_27E1DFDD8 != -1)
        {
          swift_once();
        }

        v5 = sub_23BFF92B0();
        sub_23BF4A22C(v5, qword_27E1EB558);

        v6 = sub_23BFF9290();
        v7 = sub_23BFFA670();

        v8 = os_log_type_enabled(v6, v7);
        v9 = v1[9];
        if (!v8)
        {

          v15 = 0;
          goto LABEL_29;
        }

        v10 = v1[8];
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v42 = v12;
        *v11 = 136315394;
        *(v11 + 4) = sub_23BF62294(0xD00000000000001DLL, 0x800000023C00D3E0, &v42);
        *(v11 + 12) = 2080;
        v13 = sub_23BF62294(v10, v9, &v42);

        *(v11 + 14) = v13;
        v14 = "%s: Created a newly processed photo for id %s";
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_34;
    }
  }

  v16 = v1[7];
  v17 = v1[4];
  swift_unknownObjectRetain();
  sub_23BFF8C20();
  sub_23BF62DD8(v17, v16);
  if (v18)
  {
    v0 = v18;
    if (qword_27E1DFDD8 == -1)
    {
LABEL_17:
      v19 = sub_23BFF92B0();
      sub_23BF4A22C(v19, qword_27E1EB558);
      v20 = v0;
      v6 = sub_23BFF9290();
      v7 = sub_23BFFA670();

      if (!os_log_type_enabled(v6, v7))
      {
LABEL_20:

        v15 = 0;
        goto LABEL_29;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v42 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_23BF62294(0xD00000000000001DLL, 0x800000023C00D3E0, &v42);
      *(v11 + 12) = 2080;
      v21 = &v20[OBJC_IVAR___NTKParmesanAsset_localIdentifier];
      v22 = *&v20[OBJC_IVAR___NTKParmesanAsset_localIdentifier];
      v23 = *(v21 + 1);

      v24 = sub_23BF62294(v22, v23, &v42);

      *(v11 + 14) = v24;
      v14 = "%s: Created a photo from legacy images for id %s";
LABEL_19:
      _os_log_impl(&dword_23BF0C000, v6, v7, v14, v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEC4DF0](v12, -1, -1);
      MEMORY[0x23EEC4DF0](v11, -1, -1);
      goto LABEL_20;
    }

LABEL_34:
    swift_once();
    goto LABEL_17;
  }

  if (qword_27E1DFDD8 != -1)
  {
    swift_once();
  }

  v25 = sub_23BFF92B0();
  sub_23BF4A22C(v25, qword_27E1EB558);
  swift_unknownObjectRetain();
  v26 = sub_23BFF9290();
  v27 = sub_23BFFA650();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v1[4];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42 = v30;
    *v29 = 136315394;
    *(v29 + 4) = sub_23BF62294(0xD00000000000001DLL, 0x800000023C00D3E0, &v42);
    *(v29 + 12) = 2080;
    v31 = [v28 localIdentifier];
    if (v31)
    {
      v32 = v31;
      v33 = sub_23BFFA300();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v1[2] = v33;
    v1[3] = v35;
    sub_23BF4A264(&qword_27E1E05D0);
    v36 = sub_23BFFA360();
    v38 = sub_23BF62294(v36, v37, &v42);

    *(v29 + 14) = v38;
    _os_log_impl(&dword_23BF0C000, v26, v27, "%s: Cannot create a photo for %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEC4DF0](v30, -1, -1);
    MEMORY[0x23EEC4DF0](v29, -1, -1);
  }

  sub_23BF66068();
  v15 = swift_allocError();
  v0 = 0;
  *v39 = 3;
LABEL_29:

  v40 = v1[1];

  return v40(v0, v15);
}

uint64_t sub_23BF6544C(char *a1, void (**a2)(void, void, void))
{
  v4 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - v5;
  v7 = sub_23BFF8D10();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  v15 = *&a1[OBJC_IVAR___NTKParmesanUpgradeManager_upgradeContext];
  if (v15)
  {
    v43 = v14;
    v16 = *&a1[OBJC_IVAR___NTKParmesanUpgradeManager_resourceDirectory + 8];
    if (v16)
    {
      v42 = *&a1[OBJC_IVAR___NTKParmesanUpgradeManager_resourceDirectory];
      _Block_copy(a2);
      swift_unknownObjectRetain();

      sub_23BFF8C20();
      v17 = sub_23BFFA540();
      (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
      (*(v8 + 16))(v11, v13, v7);
      v18 = *(v8 + 80);
      v41 = v6;
      v19 = (v18 + 80) & ~v18;
      v20 = swift_allocObject();
      *(v20 + 2) = 0;
      *(v20 + 3) = 0;
      *(v20 + 4) = a1;
      *(v20 + 5) = sub_23BF66728;
      v21 = v42;
      *(v20 + 6) = v43;
      *(v20 + 7) = v15;
      *(v20 + 8) = v21;
      *(v20 + 9) = v16;
      (*(v8 + 32))(&v20[v19], v11, v7);
      swift_unknownObjectRetain();
      v22 = a1;

      sub_23BF56D9C(0, 0, v41, &unk_23C002470, v20);
      swift_unknownObjectRelease();

      (*(v8 + 8))(v13, v7);
    }

    else
    {
      _Block_copy(a2);
      v32 = qword_27E1DFDD8;
      swift_unknownObjectRetain();
      if (v32 != -1)
      {
        swift_once();
      }

      v33 = sub_23BFF92B0();
      sub_23BF4A22C(v33, qword_27E1EB558);
      v34 = sub_23BFF9290();
      v35 = sub_23BFFA650();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v44 = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v44);
        _os_log_impl(&dword_23BF0C000, v34, v35, "%s: no resource directory", v36, 0xCu);
        sub_23BF4A9A4(v37);
        MEMORY[0x23EEC4DF0](v37, -1, -1);
        MEMORY[0x23EEC4DF0](v36, -1, -1);
      }

      sub_23BF66068();
      v38 = swift_allocError();
      *v39 = 1;
      v40 = sub_23BFF8BB0();
      (a2)[2](a2, 0, v40);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    _Block_copy(a2);
    if (qword_27E1DFDD8 != -1)
    {
      swift_once();
    }

    v24 = sub_23BFF92B0();
    sub_23BF4A22C(v24, qword_27E1EB558);
    v25 = sub_23BFF9290();
    v26 = sub_23BFFA650();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v44);
      _os_log_impl(&dword_23BF0C000, v25, v26, "%s: no upgrade context", v27, 0xCu);
      sub_23BF4A9A4(v28);
      MEMORY[0x23EEC4DF0](v28, -1, -1);
      MEMORY[0x23EEC4DF0](v27, -1, -1);
    }

    sub_23BF66068();
    v29 = swift_allocError();
    *v30 = 0;
    v31 = sub_23BFF8BB0();
    (a2)[2](a2, 0, v31);
  }
}

uint64_t sub_23BF65A78(char *a1, uint64_t a2)
{
  v40 = a2;
  v3 = sub_23BF4A264(&qword_27E1E0510);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38 - v4;
  v6 = sub_23BFF8D10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = *&a1[OBJC_IVAR___NTKParmesanUpgradeManager_upgradeContext];
  if (v13)
  {
    v14 = *&a1[OBJC_IVAR___NTKParmesanUpgradeManager_resourceDirectory + 8];
    if (v14)
    {
      v39 = *&a1[OBJC_IVAR___NTKParmesanUpgradeManager_resourceDirectory];

      swift_unknownObjectRetain();

      sub_23BFF8C20();
      v15 = sub_23BFFA540();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      (*(v7 + 16))(v9, v12, v6);
      v16 = *(v7 + 80);
      v38 = v5;
      v17 = v40;
      v18 = (v16 + 80) & ~v16;
      v19 = swift_allocObject();
      *(v19 + 2) = 0;
      *(v19 + 3) = 0;
      *(v19 + 4) = a1;
      *(v19 + 5) = sub_23BF66060;
      *(v19 + 6) = v17;
      *(v19 + 7) = v13;
      *(v19 + 8) = v39;
      *(v19 + 9) = v14;
      (*(v7 + 32))(&v19[v18], v9, v6);
      swift_unknownObjectRetain();
      v20 = a1;

      sub_23BF56D9C(0, 0, v38, &unk_23C002390, v19);
      swift_unknownObjectRelease();

      (*(v7 + 8))(v12, v6);
    }

    else
    {
      v30 = qword_27E1DFDD8;

      swift_unknownObjectRetain();
      if (v30 != -1)
      {
        swift_once();
      }

      v31 = sub_23BFF92B0();
      sub_23BF4A22C(v31, qword_27E1EB558);
      v32 = sub_23BFF9290();
      v33 = sub_23BFFA650();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v41 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v41);
        _os_log_impl(&dword_23BF0C000, v32, v33, "%s: no resource directory", v34, 0xCu);
        sub_23BF4A9A4(v35);
        MEMORY[0x23EEC4DF0](v35, -1, -1);
        MEMORY[0x23EEC4DF0](v34, -1, -1);
      }

      sub_23BF66068();
      v36 = swift_allocError();
      *v37 = 1;
      sub_23BFEDEC8(0, v36);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v22 = qword_27E1DFDD8;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_23BFF92B0();
    sub_23BF4A22C(v23, qword_27E1EB558);
    v24 = sub_23BFF9290();
    v25 = sub_23BFFA650();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_23BF62294(0xD000000000000018, 0x800000023C00D3A0, &v41);
      _os_log_impl(&dword_23BF0C000, v24, v25, "%s: no upgrade context", v26, 0xCu);
      sub_23BF4A9A4(v27);
      MEMORY[0x23EEC4DF0](v27, -1, -1);
      MEMORY[0x23EEC4DF0](v26, -1, -1);
    }

    sub_23BF66068();
    v28 = swift_allocError();
    *v29 = 0;
    sub_23BFEDEC8(0, v28);
  }
}

unint64_t sub_23BF66068()
{
  result = qword_27E1E0B28;
  if (!qword_27E1E0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0B28);
  }

  return result;
}

uint64_t sub_23BF660BC(uint64_t a1)
{
  sub_23BFF8D10();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23BF4BF18;

  return sub_23BF582A8(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_23BF661E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23BF4BF18;

  return sub_23BF613EC(a1, v4);
}

uint64_t sub_23BF6629C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23BF4A414;

  return sub_23BF613EC(a1, v4);
}

uint64_t sub_23BF66354(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23BF6636C()
{
  result = qword_27E1E0500;
  if (!qword_27E1E0500)
  {
    sub_23BF4A2D0(&qword_27E1E0B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0500);
  }

  return result;
}

uint64_t sub_23BF663D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_23BF4A264(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

unint64_t sub_23BF66440()
{
  result = qword_27E1E0B90;
  if (!qword_27E1E0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0B90);
  }

  return result;
}

uint64_t sub_23BF66494(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23BF664E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23BF4A414;

  return sub_23BF572AC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_23BF665D8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

_OWORD *sub_23BF66650(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23BF66660(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0B78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BF666D0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23BFFACC0() & 1;
  }
}

uint64_t sub_23BF66730()
{
  v1 = sub_23BFF8D10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t getEnumTagSinglePayload for ParmesanUpgradeError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ParmesanUpgradeError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23BF66968()
{
  result = qword_27E1E0C28;
  if (!qword_27E1E0C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0C28);
  }

  return result;
}

id sub_23BF669FC()
{
  v1 = *(v0 + 16);
  if (v1 != 2 && v1 != 1)
  {
    v2 = *(v0 + 40);
    CLKCompressFraction();
    if (v1)
    {
      *&v3 = 1.0 - v3;
      [v1 _solveForInput_];
    }

    result = CLKCompressFraction();
    if (v2)
    {
      *&v5 = v5;
      return [v2 _solveForInput_];
    }
  }

  return result;
}

uint64_t sub_23BF66AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_23BF66B20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23BF66B34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 48))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BF66B9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

double sub_23BF66BF4(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 16) = a2;
  }

  return result;
}

BOOL sub_23BF66C40(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_23BF66C88(v7, v8);
}

BOOL sub_23BF66C88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if ((v3 - 1) < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (!v2)
  {
    result = 0;
    if (v3)
    {
      return result;
    }

    if (v7 != v10 || v6 != v9)
    {
      return result;
    }

LABEL_26:
    if (v8)
    {
      if (v11)
      {
        sub_23BF66DDC();
        v16 = v11;
        v17 = v8;
        v18 = sub_23BFFA880();

        if (v18)
        {
          return 1;
        }
      }
    }

    else if (!v11)
    {
      return 1;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  sub_23BF66DDC();
  v12 = v3;
  v13 = v2;
  v14 = sub_23BFFA880();

  result = 0;
  if ((v14 & 1) != 0 && v7 == v10 && v6 == v9)
  {
    goto LABEL_26;
  }

  return result;
}

unint64_t sub_23BF66DDC()
{
  result = qword_27E1E0C30;
  if (!qword_27E1E0C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E0C30);
  }

  return result;
}

unint64_t sub_23BF66E3C()
{
  result = qword_27E1E0C38;
  if (!qword_27E1E0C38)
  {
    sub_23BF4A2D0(&qword_27E1E0C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0C38);
  }

  return result;
}

uint64_t sub_23BF66EA0(uint64_t a1)
{
  sub_23BFFA9F0();

  if (a1 == 2 || a1 == 1 || !a1)
  {
    v2 = sub_23BFFA370();
    v4 = v3;

    MEMORY[0x23EEC3090](v2, v4);

    return 0xD00000000000001ELL;
  }

  else
  {
    result = sub_23BFFACF0();
    __break(1u);
  }

  return result;
}

uint64_t *sub_23BF66FB4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_23BF66FE0(uint64_t a1)
{
  *(a1 + 8) = sub_23BF67010();
  result = sub_23BF67064();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23BF67010()
{
  result = qword_27E1E0C48;
  if (!qword_27E1E0C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0C48);
  }

  return result;
}

unint64_t sub_23BF67064()
{
  result = qword_27E1E0C50;
  if (!qword_27E1E0C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0C50);
  }

  return result;
}

unint64_t sub_23BF670BC()
{
  result = qword_27E1E0C58;
  if (!qword_27E1E0C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0C58);
  }

  return result;
}

uint64_t sub_23BF67110(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (qword_27E1DFE18 == -1)
  {
    if (a4 != 2)
    {
      goto LABEL_3;
    }

LABEL_11:
    v13 = objc_opt_self();
    sub_23BF674DC();
    v7 = sub_23BFFA260();
    v10 = [v13 tokyoFontDescriptorWithAttributes_];
    goto LABEL_12;
  }

  v11 = a2;
  v12 = a4;
  swift_once();
  a4 = v12;
  a2 = v11;
  if (v12 == 2)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (a4 == 1)
  {
    v4 = a2;
    v5 = byte_27E1E1D60;
    v6 = objc_opt_self();
    sub_23BF674DC();
    v7 = sub_23BFFA260();
    if (v5 != 1 || v4)
    {
      v8 = [v6 newYorkFontDescriptorWithAttributes_];
    }

    else
    {
      v8 = [v6 newYorkSoftFontDescriptorWithAttributes_];
    }

    goto LABEL_13;
  }

  if (!a4)
  {
    v9 = objc_opt_self();
    sub_23BF674DC();
    v7 = sub_23BFFA260();
    v10 = [v9 softFontDescriptorWithAttributes_];
LABEL_12:
    v8 = v10;
LABEL_13:
    v14 = v8;

    return v14;
  }

  sub_23BF4A264(&qword_27E1E0C60);
  result = sub_23BFFACB0();
  __break(1u);
  return result;
}

id sub_23BF672DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device);
  v5 = type metadata accessor for ParmesanTypefaceMetrics();
  v6 = objc_allocWithZone(v5);
  v7 = v4;
  v8 = sub_23BFEA418(v7);

  sub_23BFE5D8C(a1, a2);
  v10 = v9;
  if ([objc_opt_self() isPartiallySupported_])
  {
    v11 = [objc_opt_self() numericSoftFontOfSize:v10 weight:*MEMORY[0x277D74410]];
  }

  else
  {
    v12 = objc_allocWithZone(v5);
    v13 = v7;
    v14 = sub_23BFEA418(v13);

    v15 = sub_23BFE6000(a1, a2);
    v16 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface);
    v17 = a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style;
    v18 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style);
    LOBYTE(v13) = *(v17 + 8);
    sub_23BF674B4(v18, v13);
    v19 = sub_23BF6B70C();
    v20 = sub_23BF67110(v18, v13, v19, v16);

    sub_23BF674C8(v18, v13);
    v11 = [objc_opt_self() fontWithDescriptor:v20 size:v10];

    v8 = v20;
  }

  return v11;
}

id sub_23BF674B4(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

void sub_23BF674C8(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

unint64_t sub_23BF674DC()
{
  result = qword_27E1E0C68;
  if (!qword_27E1E0C68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E0C68);
  }

  return result;
}

id sub_23BF67528(uint64_t a1, uint64_t a2)
{
  sub_23BFEA968(a1);
  v5 = v4;
  if ([objc_opt_self() isPartiallySupported_])
  {
    v6 = [objc_opt_self() numericSoftFontOfSize:v5 weight:*MEMORY[0x277D74410]];

    return v6;
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_device);
    v9 = objc_allocWithZone(type metadata accessor for ParmesanTypefaceMetrics());
    v10 = v8;
    v11 = sub_23BFEA418(v10);

    v12 = sub_23BFE6000(a1, a2);
    v13 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_typeface);
    v14 = a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style;
    v15 = *(a1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance_style);
    LOBYTE(v10) = *(v14 + 8);
    sub_23BF674B4(v15, v10);
    v16 = sub_23BF6B70C();
    v17 = sub_23BF67110(v15, v10, v16, v13);

    sub_23BF674C8(v15, v10);
    v18 = [objc_opt_self() fontWithDescriptor:v17 size:v5];

    return v18;
  }
}

void sub_23BF676E4()
{
  v1 = v0;
  v2 = sub_23BF4A264(&qword_27E1E0D00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-v3 - 8];
  v5 = sub_23BFFA200();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7);
  v11 = &v21[-v10 - 8];
  v22 = &type metadata for LemonadeFeatureFlags;
  v23 = sub_23BF68B88();
  v21[0] = 1;
  v12 = sub_23BFF9210();
  sub_23BF4A9A4(v21);
  if (v12)
  {
    v13 = [objc_opt_self() sharedPhotoLibrary];
    sub_23BFFA1A0();
    sub_23BFFA190();
    sub_23BFFA230();
    v14 = sub_23BFFA240();
    (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
    sub_23BFFA160();
    sub_23BFFA1C0();
    sub_23BFFA1E0();
    sub_23BF4BDF0(0, &qword_27E1E05C0);
    (*(v6 + 16))(v9, v11, v5);
    v15 = sub_23BFFA780();
    sub_23BF68BDC();
    swift_unknownObjectRetain();
    sub_23BFFA790();
    if (qword_27E1DFDC8 != -1)
    {
      swift_once();
    }

    v16 = sub_23BFF92B0();
    sub_23BF4A22C(v16, qword_27E1EB528);
    v17 = sub_23BFF9290();
    v18 = sub_23BFFA670();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23BF0C000, v17, v18, "Presenting collections picker", v19, 2u);
      MEMORY[0x23EEC4DF0](v19, -1, -1);
    }

    [v1 presentViewController:v15 animated:1 completion:0];
    (*(v6 + 8))(v11, v5);
  }

  else
  {
    sub_23BF67A2C();
  }
}

void sub_23BF67A2C()
{
  v1 = v0;
  v6 = [objc_allocWithZone(MEMORY[0x277D2BF78]) initWithPhotosEditor:*&v0[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor] forFace:*&v1[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_face] inGallery:v1[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_inGallery]];
  [v6 setDelegate_];
  if (qword_27E1DFDC8 != -1)
  {
    swift_once();
  }

  v2 = sub_23BFF92B0();
  sub_23BF4A22C(v2, qword_27E1EB528);
  v3 = sub_23BFF9290();
  v4 = sub_23BFFA670();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23BF0C000, v3, v4, "Presenting album picker", v5, 2u);
    MEMORY[0x23EEC4DF0](v5, -1, -1);
  }

  [v1 presentViewController:v6 animated:1 completion:0];
}

void sub_23BF67B9C()
{
  v1 = objc_opt_self();
  v2 = [v1 parmesanConfigurationWithLimit_];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_23BF68B68;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_23BF502C4;
  v6[3] = &unk_284EBFD90;
  v4 = _Block_copy(v6);
  v5 = v2;

  [v1 presentPhotosAddControllerFromViewController:v0 configuration:v5 withCompletion:v4];
  _Block_release(v4);
}

id sub_23BF67CCC(void *a1)
{
  v2 = v1;
  v4 = [a1 editor];
  v5 = [v4 albumIdentifier];

  if (v5)
  {
    v6 = sub_23BFFA300();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  if (qword_27E1DFDC8 != -1)
  {
    swift_once();
  }

  v9 = sub_23BFF92B0();
  sub_23BF4A22C(v9, qword_27E1EB528);

  v10 = sub_23BFF9290();
  v11 = sub_23BFFA630();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    if (v8)
    {
      v14 = v6;
    }

    else
    {
      v14 = 7104878;
    }

    if (v8)
    {
      v15 = v8;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_23BF62294(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_23BF0C000, v10, v11, "Selected collection with identifier: %s", v12, 0xCu);
    sub_23BF4A9A4(v13);
    MEMORY[0x23EEC4DF0](v13, -1, -1);
    MEMORY[0x23EEC4DF0](v12, -1, -1);
  }

  if (v8)
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0xD8))(v6, v8);
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

id sub_23BF67F18(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23BFFA150();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BFFA200();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFFA770();
  v13 = sub_23BFFA180();
  (*(v10 + 8))(v12, v9);
  if (qword_27E1DFDC8 != -1)
  {
    swift_once();
  }

  v14 = sub_23BFF92B0();
  v15 = sub_23BF4A22C(v14, qword_27E1EB528);

  v16 = sub_23BFF9290();
  v17 = sub_23BFFA670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = v13;
    *(v18 + 12) = 2048;
    *(v18 + 14) = *(a2 + 16);

    _os_log_impl(&dword_23BF0C000, v16, v17, "Did finish picking content, sourceType = %ld, resultsCount = %ld", v18, 0x16u);
    MEMORY[0x23EEC4DF0](v18, -1, -1);

    if (v13 != 1)
    {
      goto LABEL_5;
    }

LABEL_12:
    v49[1] = v15;
    v50 = v3;
    v51 = a1;
    v28 = *(a2 + 16);
    if (v28)
    {
      v29 = v53 + 16;
      v30 = *(v53 + 16);
      v31 = a2 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v52 = *(v53 + 72);
      v53 = v30;
      v32 = (v29 - 8);
      v33 = MEMORY[0x277D84F90];
      do
      {
        v35 = v54;
        (v53)(v8, v31, v54);
        v36 = sub_23BFFA140();
        v38 = v37;
        (*v32)(v8, v35);
        if (v38)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_23BF61740(0, *(v33 + 2) + 1, 1, v33);
          }

          v40 = *(v33 + 2);
          v39 = *(v33 + 3);
          if (v40 >= v39 >> 1)
          {
            v33 = sub_23BF61740((v39 > 1), v40 + 1, 1, v33);
          }

          *(v33 + 2) = v40 + 1;
          v34 = &v33[16 * v40];
          *(v34 + 4) = v36;
          *(v34 + 5) = v38;
        }

        v31 += v52;
        --v28;
      }

      while (v28);
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    v45 = sub_23BFF9290();
    v46 = sub_23BFFA630();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = *(v33 + 2);

      _os_log_impl(&dword_23BF0C000, v45, v46, "Selected [%ld] people", v47, 0xCu);
      MEMORY[0x23EEC4DF0](v47, -1, -1);
    }

    else
    {
    }

    a1 = v51;
    (*((*MEMORY[0x277D85000] & *v50) + 0xE0))(v33);
    goto LABEL_29;
  }

  if (v13 == 1)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v13 == 5)
  {
    if (*(a2 + 16))
    {
      v19 = v3;
      v20 = sub_23BFFA140();
      if (v21)
      {
        v22 = v20;
        v23 = v21;
        v24 = sub_23BFF9290();
        v25 = sub_23BFFA630();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v55 = v27;
          *v26 = 136315138;
          *(v26 + 4) = sub_23BF62294(v22, v23, &v55);
          _os_log_impl(&dword_23BF0C000, v24, v25, "Selected collection with identifier: %s", v26, 0xCu);
          sub_23BF4A9A4(v27);
          MEMORY[0x23EEC4DF0](v27, -1, -1);
          MEMORY[0x23EEC4DF0](v26, -1, -1);
        }

        (*((*MEMORY[0x277D85000] & *v19) + 0xD8))(v22, v23);
LABEL_29:
      }
    }
  }

  else
  {
    v41 = a1;
    v42 = sub_23BFF9290();
    v43 = sub_23BFFA650();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134217984;
      *(v44 + 4) = v13;
      _os_log_impl(&dword_23BF0C000, v42, v43, "Picker configured with unsupported _sourceType: %ld", v44, 0xCu);
      MEMORY[0x23EEC4DF0](v44, -1, -1);
    }

    a1 = v41;
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

const char *sub_23BF68578()
{
  if (*v0)
  {
    return "LemonadePicker";
  }

  else
  {
    return "Lemonade";
  }
}

uint64_t sub_23BF68740(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = sub_23BF4F29C(a2);
      if (v5)
      {
        v28 = v4;
        v6 = *(v5 + 16);
        if (v6)
        {
          v7 = *MEMORY[0x277D76A88];
          v8 = MEMORY[0x277D84F90];
          v9 = v5 + 32;
          v10 = 0x277CD97A8uLL;
          do
          {
            v11 = *v9;
            if (*(*v9 + 16))
            {

              v12 = sub_23BFE5720(v7);
              if (v13)
              {
                sub_23BF4A6AC(*(v11 + 56) + 32 * v12, v31);

                sub_23BF4BDF0(0, &qword_27E1E0B88);
                if (swift_dynamicCast())
                {
                  v14 = v10;
                  v15 = [v29 localIdentifier];
                  v16 = sub_23BFFA300();
                  v18 = v17;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v8 = sub_23BF61740(0, *(v8 + 2) + 1, 1, v8);
                  }

                  v20 = *(v8 + 2);
                  v19 = *(v8 + 3);
                  if (v20 >= v19 >> 1)
                  {
                    v8 = sub_23BF61740((v19 > 1), v20 + 1, 1, v8);
                  }

                  *(v8 + 2) = v20 + 1;
                  v21 = &v8[16 * v20];
                  *(v21 + 4) = v16;
                  *(v21 + 5) = v18;
                  v10 = v14;
                }
              }

              else
              {
              }
            }

            v9 += 8;
            --v6;
          }

          while (v6);
        }

        else
        {
          v8 = MEMORY[0x277D84F90];
        }

        v22 = type metadata accessor for ParmesanShuffleSelection();
        v23 = objc_allocWithZone(v22);
        *&v23[OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes] = 0;
        *&v23[OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers] = 0;
        v24 = &v23[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier];
        *v24 = 0;
        v24[1] = 0;
        *&v23[OBJC_IVAR___NTKParmesanShuffleSelection_manualSelection] = v8;
        v23[OBJC_IVAR___NTKParmesanShuffleSelection_isDaily] = 0;
        v30.receiver = v23;
        v30.super_class = v22;
        v25 = objc_msgSendSuper2(&v30, sel_init);
        v26 = swift_unknownObjectWeakLoadStrong();
        if (v26)
        {
          [v26 shuffleSelectionViewController:v28 didFinishWithSelection:v25];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

id sub_23BF68AB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanShuffleSelectionBaseViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23BF68B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23BF68B88()
{
  result = qword_27E1E0D08;
  if (!qword_27E1E0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0D08);
  }

  return result;
}

unint64_t sub_23BF68BDC()
{
  result = qword_27E1E0D18;
  if (!qword_27E1E0D18)
  {
    type metadata accessor for ParmesanShuffleSelectionBaseViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0D18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LemonadeFeatureFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LemonadeFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23BF68D90()
{
  result = qword_27E1E0D20;
  if (!qword_27E1E0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0D20);
  }

  return result;
}

id sub_23BF68DE4()
{
  if ([v0 isVibrantOption])
  {
    return 0;
  }

  if (![v0 isGlassOption])
  {
    return [v0 primaryColor];
  }

  [v0 frostAmount];
  *&v2 = v2;
  return LODWORD(v2);
}

unint64_t sub_23BF68E80@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23BF68FAC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_23BF68EB4()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 1701736302;
    }

    if (v1 == 1)
    {
      return 0x6D6F74746F62;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 7368564;
  }

  if (v1 != 3)
  {
LABEL_11:
    result = sub_23BFFACF0();
    __break(1u);
    return result;
  }

  return 1752461154;
}

unint64_t sub_23BF68F58()
{
  result = qword_27E1E0D30;
  if (!qword_27E1E0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0D30);
  }

  return result;
}

unint64_t sub_23BF68FAC(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

void sub_23BF69088(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 16);
    sub_23BF674B4(v2, 1);
    sub_23BF698C4(v2, &v18);
    v3 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v4 = [objc_opt_self() valueWithCAColorMatrix_];
    [v3 setValue:v4 forKey:*MEMORY[0x277CDA440]];

    sub_23BF4A264(&qword_27E1E05E0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_23C001BA0;
    *(v5 + 32) = v3;
    sub_23BF674C8(v2, 1);
  }

  else
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = [v6 isBright];
      if (v7)
      {
        v8 = 0.7;
      }

      else
      {
        v8 = 1.1;
      }

      if (v7)
      {
        v9 = -0.1;
      }

      else
      {
        v9 = -0.13;
      }

      v10 = 1.15;
      if (v7)
      {
        v10 = 0.75;
      }

      v11 = 0.8;
      if (v7)
      {
        v11 = 0.4;
      }
    }

    else
    {
      v11 = 0.8;
      v10 = 1.15;
      v9 = -0.13;
      v8 = 1.1;
    }

    *&v18 = v8;
    *(&v18 + 4) = 0xBD4CCCCDBECCCCCDLL;
    HIDWORD(v18) = 0;
    v19 = v11;
    v20 = v9;
    v21 = v11;
    v22 = 3175926989;
    v23 = v11;
    v24 = v9;
    v25 = -1093874483;
    v26 = v10;
    v27 = 0;
    v28 = v11;
    v29 = xmmword_23C002A20;
    v30 = 0;
    sub_23BF6997C(&v18);
    v5 = v12;
  }

  *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_backdropFilters] = v5;

  v17.receiver = v1;
  v17.super_class = type metadata accessor for ParmesanBackdropView();
  v13 = objc_msgSendSuper2(&v17, sel_layer);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClassUnconditional();

  sub_23BFEADF4(v15);

  v16 = sub_23BFFA450();

  [v14 setFilters_];
}

void sub_23BF69384(uint64_t a1, uint64_t a2)
{
  if (sub_23BF8E604(a1, a2))
  {

    sub_23BF69088(a2);
  }

  else
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = *(a2 + 24);
    v8 = *(a2 + 16);
    CLKInterpolateBetweenFloatsUnclipped();
    CLKInterpolateBetweenFloatsUnclipped();
    if (v6 == 1)
    {
      sub_23BF674B4(v5, 1);
      sub_23BF698C4(v5, v47);
      v42 = v47[1];
      v44 = v47[0];
      v9 = v48;
      v38 = v50;
      v40 = v49;
      v36 = v51;
      v10 = v52;
      sub_23BF674C8(v5, 1);
      v11 = v36;
      v12 = v38;
      v14 = v40;
      v13 = v42;
      v15 = v44;
    }

    else
    {
      v16 = *(a1 + 32);
      v10 = 1065353216;
      v9 = 0;
      if (v16)
      {
        v17 = [v16 isBright];
        if (v17)
        {
          *&v15 = 0.7;
        }

        else
        {
          *&v15 = 1.1;
        }

        if (v17)
        {
          v14 = 0.4;
        }

        else
        {
          v14 = 0.8;
        }

        if (v17)
        {
          *&v12 = -0.1;
        }

        else
        {
          *&v12 = -0.13;
        }

        v19 = 1.15;
        if (v17)
        {
          v19 = 0.75;
        }

        DWORD1(v15) = -1093874483;
        v18.i32[0] = -1119040307;
        *(&v15 + 1) = 3175926989;
        v13 = vdupq_lane_s32(v18, 0);
        v13.i64[0] = __PAIR64__(v12, LODWORD(v14));
        *&v13.i32[2] = v14;
        DWORD1(v12) = -1093874483;
        *(&v12 + 1) = LODWORD(v19);
        v11 = LODWORD(v14);
      }

      else
      {
        v11 = xmmword_23C002A30;
        v12 = xmmword_23C002A40;
        v13 = xmmword_23C002A50;
        v15 = xmmword_23C002A60;
        v14 = 0.8;
      }
    }

    v59[5] = v15;
    v59[6] = v13;
    v60 = v9;
    v61 = v14;
    v62 = v12;
    v63 = v11;
    v64 = v10;
    if (v7 == 1)
    {
      sub_23BF674B4(v8, 1);
      sub_23BF698C4(v8, v53);
      v43 = v53[1];
      v45 = v53[0];
      v20 = v54;
      v39 = v56;
      v41 = v55;
      v37 = v57;
      v21 = v58;
      sub_23BF674C8(v8, 1);
      v22 = v37;
      v23 = v39;
      v25 = v41;
      v24 = v43;
      v26 = v45;
    }

    else
    {
      v27 = *(a2 + 32);
      v21 = 1065353216;
      v20 = 0;
      if (v27)
      {
        v28 = [v27 isBright];
        if (v28)
        {
          *&v26 = 0.7;
        }

        else
        {
          *&v26 = 1.1;
        }

        if (v28)
        {
          v25 = 0.4;
        }

        else
        {
          v25 = 0.8;
        }

        if (v28)
        {
          *&v23 = -0.1;
        }

        else
        {
          *&v23 = -0.13;
        }

        v30 = 1.15;
        if (v28)
        {
          v30 = 0.75;
        }

        DWORD1(v26) = -1093874483;
        v29.i32[0] = -1119040307;
        *(&v26 + 1) = 3175926989;
        v24 = vdupq_lane_s32(v29, 0);
        v24.i64[0] = __PAIR64__(v23, LODWORD(v25));
        *&v24.i32[2] = v25;
        DWORD1(v23) = -1093874483;
        *(&v23 + 1) = LODWORD(v30);
        v22 = LODWORD(v25);
      }

      else
      {
        v22 = xmmword_23C002A30;
        v23 = xmmword_23C002A40;
        v24 = xmmword_23C002A50;
        v26 = xmmword_23C002A60;
        v25 = 0.8;
      }
    }

    v65 = v26;
    v66 = v24;
    v67 = v20;
    v68 = v25;
    v69 = v23;
    v70 = v22;
    v71 = v21;
    sub_23BFD99D0(v59);
    sub_23BF6997C(v59);
    *&v2[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanMaskedBackdropView_backdropFilters] = v31;

    v46.receiver = v2;
    v46.super_class = type metadata accessor for ParmesanBackdropView();
    v32 = objc_msgSendSuper2(&v46, sel_layer);
    objc_opt_self();
    v33 = swift_dynamicCastObjCClassUnconditional();

    sub_23BFEADF4(v34);

    v35 = sub_23BFFA450();

    [v33 setFilters_];
  }
}

id sub_23BF6986C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanVibrantEffectView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_23BF698C4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = 0.0;
  v10[0] = 0.0;
  v7 = 0;
  v8 = 0.0;
  [a1 getRed:v10 green:&v9 blue:&v8 alpha:&v7];
  v3 = v10[0];
  v4 = v9;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v3;
  *(a2 + 28) = 0;
  *(a2 + 20) = 0;
  *(a2 + 36) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v5;
  result = 0.0;
  *(a2 + 60) = xmmword_23C002A20;
  *(a2 + 76) = 0;
  return result;
}

double sub_23BF6997C(_OWORD *a1)
{
  v1 = a1[3];
  v15 = a1[2];
  v16 = v1;
  v17 = a1[4];
  v2 = a1[1];
  v14[0] = *a1;
  v14[1] = v2;
  v3 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v4 = sub_23BFF91F0();
  [v3 setValue:v4 forKey:*MEMORY[0x277CDA4F0]];

  v5 = sub_23BFFA4B0();
  v6 = sub_23BFFA2C0();
  [v3 setValue:v5 forKey:v6];

  v7 = sub_23BFFA4B0();
  [v3 setValue:v7 forKey:*MEMORY[0x277CDA448]];

  v8 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v9 = sub_23BFF91F0();
  [v8 setValue:v9 forKey:*MEMORY[0x277CDA360]];

  v10 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v11 = [objc_opt_self() valueWithCAColorMatrix_];
  [v10 setValue:v11 forKey:*MEMORY[0x277CDA440]];

  sub_23BF4A264(&qword_27E1E05E0);
  v12 = swift_allocObject();
  *&result = 3;
  *(v12 + 16) = xmmword_23C001B90;
  *(v12 + 32) = v3;
  *(v12 + 40) = v8;
  *(v12 + 48) = v10;
  return result;
}

uint64_t sub_23BF69B94@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

BOOL sub_23BF69BA0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_23BF6B2A0(v8, v9);
}

id sub_23BF69BFC()
{
  v1 = *&v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_CCA0DA31BB871EB560D99E844C31548824ParmesanCroppedImageView_image];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v2 CGImage];
  if (!v3)
  {
    v4 = v2;
    goto LABEL_7;
  }

  v4 = v3;
  [v2 size];
  if (v6 == 0.0 && v5 == 0.0)
  {

LABEL_7:
LABEL_8:
    v7 = [v0 layer];
    v32.a = 1.0;
    v32.b = 0.0;
    v32.c = 0.0;
    v32.d = 1.0;
    v32.tx = 0.0;
    v32.ty = 0.0;
    [v7 setAffineTransform_];

    v8 = [v0 layer];
    [v8 setContents_];

    v4 = [v0 layer];
    [v4 setContentsRect_];
    goto LABEL_9;
  }

  v11 = &v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_CCA0DA31BB871EB560D99E844C31548824ParmesanCroppedImageView_crop];
  if (v0[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_CCA0DA31BB871EB560D99E844C31548824ParmesanCroppedImageView_crop + 32])
  {
    v12 = 1.0;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 1.0;
  }

  else
  {
    width = v11[2];
    height = v11[3];
    x = *v11;
    y = v11[1];
    v20 = [v2 CGImage];
    if (v20)
    {
      v21 = v20;
      CGImageGetWidth(v20);
      CGImageGetHeight(v21);
      [v2 imageOrientation];
      NTKImagePresentationTransform();
      CGAffineTransformInvert(&v31, &v32);
      v32 = v31;
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v34 = CGRectApplyAffineTransform(v33, &v32);
      x = v34.origin.x;
      y = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
    }

    v22 = CGImageGetWidth(v4);
    v23 = CGImageGetHeight(v4);
    v13 = x / v22;
    v14 = y / v23;
    v12 = width / v22;
    v15 = height / v23;
  }

  v24 = [v0 layer];
  [v24 setContents_];

  v25 = [v0 layer];
  [v25 setContentsRect_];

  [v2 imageOrientation];
  CGImageGetWidth(v4);
  CGImageGetHeight(v4);
  NTKImagePresentationTransform();
  tx = v32.tx;
  ty = v32.ty;
  v29 = *&v32.c;
  v30 = *&v32.a;
  v28 = [v0 layer];
  *&v32.a = v30;
  *&v32.c = v29;
  v32.tx = tx;
  v32.ty = ty;
  [v28 setAffineTransform_];

LABEL_9:
  v9 = [v0 layer];
  [v9 setContentsGravity_];

  return [v0 setNeedsDisplay];
}

char *sub_23BF6A110(double a1, double a2, double a3, double a4)
{
  v9 = sub_23BF4A264(&qword_27E1E0B80);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = &v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_configuration];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  *(v15 + 4) = 0u;
  result = [objc_allocWithZone(MEMORY[0x277CBBAE8]) initWithSizeClass_];
  if (result)
  {
    v17 = result;
    if (qword_27E1DFD78 != -1)
    {
      swift_once();
    }

    v18 = qword_27E1EB458;
    v19 = objc_allocWithZone(type metadata accessor for ParmesanTimeView());
    *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_timeView] = sub_23BF7BE14(v18, 0.0, 0.0, 0.0, 0.0);
    *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_cropView] = [objc_allocWithZone(type metadata accessor for ParmesanCroppedImageView()) initWithFrame_];
    v20 = type metadata accessor for ParmesanPreviewContentView();
    v39.receiver = v4;
    v39.super_class = v20;
    v21 = objc_msgSendSuper2(&v39, sel_initWithFrame_, a1, a2, a3, a4);
    v22 = [v21 layer];
    v23 = 1;
    [v22 setMasksToBounds_];

    v24 = [v21 layer];
    [v17 screenCornerRadius];
    v26 = v25;
    [v17 screenScale];
    [v24 setCornerRadius_];

    v28 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_timeView;
    v29 = *&v21[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_timeView];
    v30 = NTKIdealizedDate();
    if (v30)
    {
      v31 = v30;
      sub_23BFF8D80();

      v23 = 0;
    }

    v32 = sub_23BFF8D90();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v14, v23, 1, v32);
    v34 = *&v29[OBJC_IVAR___NTKParmesanTimeView_timeFormatter];
    sub_23BF4B33C(v14, v12, &qword_27E1E0B80);
    v35 = 0;
    if ((*(v33 + 48))(v12, 1, v32) != 1)
    {
      v35 = sub_23BFF8D60();
      (*(v33 + 8))(v12, v32);
    }

    [v34 setOverrideDate_];

    sub_23BF4B2D4(v14, &qword_27E1E0B80);
    v36 = *&v21[v28];
    [v21 bounds];
    [v36 setFrame_];

    v37 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_cropView;
    v38 = *&v21[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_cropView];
    [v21 bounds];
    [v38 setFrame_];

    [v21 addSubview_];
    [v21 setIsAccessibilityElement_];

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_23BF6A6B0(void *result)
{
  if (result[1])
  {
    v2 = v1;
    v3 = result;
    v4 = result[8];
    v5 = result[9];
    v6 = result[7];
    v7 = result[2];
    v8 = v6;
    v16 = *(v3 + 40);
    v17 = *(v3 + 24);
    sub_23BF4B33C(v3, v19, &qword_27E1E0980);
    sub_23BF7C32C(v6, v4, 0, v5, 0);

    v9 = *&v1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_cropView];
    v19[0] = v7;
    v10 = *(v9 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_CCA0DA31BB871EB560D99E844C31548824ParmesanCroppedImageView_image);
    *(v9 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_CCA0DA31BB871EB560D99E844C31548824ParmesanCroppedImageView_image) = v7;
    sub_23BF4B33C(v19, v18, &qword_27E1E0518);
    sub_23BF4B33C(v19, v18, &qword_27E1E0518);

    sub_23BF69BFC();
    sub_23BF4B2D4(v19, &qword_27E1E0518);
    v11 = v9 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanionP33_CCA0DA31BB871EB560D99E844C31548824ParmesanCroppedImageView_crop;
    *v11 = v17;
    *(v11 + 16) = v16;
    *(v11 + 32) = 0;
    sub_23BF69BFC();
    sub_23BF4BDF0(0, &qword_27E1E0930);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = sub_23BFFA2C0();
    v14 = sub_23BFFA2C0();
    v15 = [ObjCClassFromMetadata localizedStringForKey:v13 comment:v14];

    if (!v15)
    {
      sub_23BFFA300();
      v15 = sub_23BFFA2C0();
    }

    [v2 setAccessibilityLabel_];

    return sub_23BF4B2D4(v3, &qword_27E1E0980);
  }

  return result;
}

char *sub_23BF6A978(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_selectionAccessoryPadding] = 0x4018000000000000;
  v9 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_selectionAccessory;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v10 = &v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_itemIdentifier];
  v11 = type metadata accessor for ParmesanPreviewContentView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v12 = [objc_allocWithZone(v11) initWithFrame_];
  *&v4[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_previewContentView] = v12;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for ParmesanFacePreviewCell();
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 addSubview_];

  v15 = [v13 contentView];
  v16 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_selectionAccessory;
  [v15 addSubview_];

  v17 = *&v13[v16];
  [v17 constrainToSuperviewWithEdges:12 insets:0 useLayoutMargins:{0.0, 0.0, 6.0, 6.0}];

  return v13;
}

void sub_23BF6ACB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_previewContentView);
  [v1 setAccessibilityTraits_];
  if (sub_23BFF9380())
  {
    sub_23BFF9360();
    v2 = sub_23BFFA2C0();

    v3 = [objc_opt_self() _systemImageNamed_];

    v4 = *MEMORY[0x277D76918];
    v5 = objc_opt_self();
    v6 = [v5 configurationWithTextStyle:v4 scale:3];
    sub_23BF4A264(&qword_27E1E05E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_23C002030;
    v8 = objc_opt_self();
    *(v7 + 32) = [v8 whiteColor];
    *(v7 + 40) = [v8 tintColor];
    sub_23BF4BDF0(0, &qword_27E1E0D80);
    v9 = sub_23BFFA450();

    v17 = [v5 configurationWithPaletteColors_];

    v10 = [v6 configurationByApplyingConfiguration_];
    v11 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_selectionAccessory;
    v12 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_selectionAccessory);
    if (v3)
    {
      v13 = [v3 imageWithConfiguration_];
    }

    else
    {
      v13 = 0;
    }

    [v12 setImage_];

    v15 = *(v0 + v11);
    v16 = [v5 configurationPreferringMulticolor];
    [v15 setPreferredSymbolConfiguration_];

    if (sub_23BFF9360())
    {
      [v1 setAccessibilityTraits_];
    }
  }

  else
  {
    v14 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_selectionAccessory);

    [v14 setImage_];
  }
}

id sub_23BF6B110(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

__n128 sub_23BF6B1CC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_23BF6B1E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_23BF6B230(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

BOOL sub_23BF6B2A0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23BFFACC0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    sub_23BF4BDF0(0, &qword_27E1E1170);
    v7 = v6;
    v8 = v5;
    v9 = sub_23BFFA880();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  result = CGRectEqualToRect(*(a1 + 24), *(a2 + 24));
  if (!result)
  {
    return result;
  }

  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  if (*(v11 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) == *(v12 + OBJC_IVAR___NTKParmesanTimeLayout_alignment) && *(v11 + OBJC_IVAR___NTKParmesanTimeLayout_scale) == *(v12 + OBJC_IVAR___NTKParmesanTimeLayout_scale) && *(a1 + 64) == *(a2 + 64))
  {
    return *(a1 + 72) == *(a2 + 72);
  }

  return 0;
}

void sub_23BF6B3D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a2)
  {
  }
}

id sub_23BF6B468@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E1DFE00 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1DFE08;
  v3 = qword_27E1EB5B0;
  if (v2 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_27E1EB5B8;
  *a1 = xmmword_23C002C00;
  *(a1 + 16) = v3;
  *(a1 + 24) = xmmword_23C001020;
  *(a1 + 40) = v4;

  return v4;
}

double sub_23BF6B570()
{
  if (qword_27E1DFE00 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1DFE08;
  v1 = qword_27E1EB5B0;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_27E1EB5B8;
  CLKCompressFraction();
  v4 = 1.0 - v3;
  *&v4 = v4;
  [v1 _solveForInput_];
  v6 = v5;
  CLKCompressFraction();
  *&v7 = v7;
  [v2 _solveForInput_];

  return v6;
}

unint64_t sub_23BF6B70C()
{
  v1 = v0;
  sub_23BFF9200();
  sub_23BF4A264(&qword_27E1E0DB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C002D30;
  *(inited + 32) = 1752458359;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = sub_23BFF91F0();
  *(inited + 56) = 1952999287;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = sub_23BFF91F0();
  v3 = sub_23BFE4134(inited);
  swift_setDeallocating();
  sub_23BF4A264(&qword_27E1E0DC0);
  swift_arrayDestroy();
  if ((*(v1 + OBJC_IVAR___NTKParmesanFontAttributes_soft + 8) & 1) == 0)
  {
    v4 = sub_23BFF91F0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23BFE7C90(v4, 1952870259, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  }

  if ((*(v1 + OBJC_IVAR___NTKParmesanFontAttributes_grad + 8) & 1) == 0)
  {
    v6 = sub_23BFF91F0();
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_23BFE7C90(v6, 1684107879, 0xE400000000000000, v7);
  }

  if ((*(v1 + OBJC_IVAR___NTKParmesanFontAttributes_opticalSize + 8) & 1) == 0)
  {
    v8 = sub_23BFF91F0();
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_23BFE7C90(v8, 2054385775, 0xE400000000000000, v9);
  }

  return v3;
}

id sub_23BF6B930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanFontAttributes();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BF6B988(uint64_t a1, uint64_t a2)
{
  sub_23BFF9200();
  v5 = v4;
  sub_23BFF9200();
  v7 = v6;
  sub_23BFF9200();
  v9 = v8;
  if (*(a1 + OBJC_IVAR___NTKParmesanFontAttributes_soft + 8))
  {
    v10 = *(a2 + OBJC_IVAR___NTKParmesanFontAttributes_soft);
  }

  else
  {
    v10 = *(a1 + OBJC_IVAR___NTKParmesanFontAttributes_soft);
  }

  v11 = *(a1 + OBJC_IVAR___NTKParmesanFontAttributes_soft + 8) & *(a2 + OBJC_IVAR___NTKParmesanFontAttributes_soft + 8);
  if ((*(a1 + OBJC_IVAR___NTKParmesanFontAttributes_soft + 8) & 1) == 0 && (*(a2 + OBJC_IVAR___NTKParmesanFontAttributes_soft + 8) & 1) == 0)
  {
    sub_23BFF9200();
    v11 = 0;
    v10 = v12;
  }

  if (*(a1 + OBJC_IVAR___NTKParmesanFontAttributes_grad + 8))
  {
    v13 = *(a2 + OBJC_IVAR___NTKParmesanFontAttributes_grad);
  }

  else
  {
    v13 = *(a1 + OBJC_IVAR___NTKParmesanFontAttributes_grad);
  }

  v14 = *(a1 + OBJC_IVAR___NTKParmesanFontAttributes_grad + 8) & *(a2 + OBJC_IVAR___NTKParmesanFontAttributes_grad + 8);
  if ((*(a1 + OBJC_IVAR___NTKParmesanFontAttributes_grad + 8) & 1) == 0 && (*(a2 + OBJC_IVAR___NTKParmesanFontAttributes_grad + 8) & 1) == 0)
  {
    sub_23BFF9200();
    v14 = 0;
    v13 = v15;
  }

  v16 = *(a1 + OBJC_IVAR___NTKParmesanFontAttributes_opticalSize + 8);
  if (v16)
  {
    v17 = *(a2 + OBJC_IVAR___NTKParmesanFontAttributes_opticalSize);
  }

  else
  {
    v17 = *(a1 + OBJC_IVAR___NTKParmesanFontAttributes_opticalSize);
  }

  v18 = v16 & *(a2 + OBJC_IVAR___NTKParmesanFontAttributes_opticalSize + 8);
  if ((v16 & 1) == 0 && (*(a2 + OBJC_IVAR___NTKParmesanFontAttributes_opticalSize + 8) & 1) == 0)
  {
    sub_23BFF9200();
    v18 = 0;
    v17 = v19;
  }

  v20 = type metadata accessor for ParmesanFontAttributes();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR___NTKParmesanFontAttributes_soft];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v21[OBJC_IVAR___NTKParmesanFontAttributes_grad];
  *v23 = 0;
  v23[8] = 1;
  v24 = &v21[OBJC_IVAR___NTKParmesanFontAttributes_opticalSize];
  *v24 = 0;
  v24[8] = 1;
  *&v21[OBJC_IVAR___NTKParmesanFontAttributes_activeWeight] = v5;
  *&v21[OBJC_IVAR___NTKParmesanFontAttributes_tritiumWeight] = v7;
  *&v21[OBJC_IVAR___NTKParmesanFontAttributes_width] = v9;
  *v22 = v10;
  v22[8] = v11;
  *v23 = v13;
  v23[8] = v14;
  *v24 = v17;
  v24[8] = v18;
  v26.receiver = v21;
  v26.super_class = v20;
  return objc_msgSendSuper2(&v26, sel_init);
}

id sub_23BF6BBB8()
{
  v0 = type metadata accessor for ParmesanTimeLayout();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
  *&v1[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 1;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, sel_init);
  qword_27E1EB458 = result;
  return result;
}

id sub_23BF6BD50(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t))
{
  a3();
  a5(a4);
  v7 = sub_23BFFA450();

  return v7;
}

uint64_t *sub_23BF6BDC0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_23BF6BF3C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C616373;
  }

  else
  {
    v3 = 0x6E656D6E67696C61;
  }

  if (v2)
  {
    v4 = 0xE900000000000074;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C616373;
  }

  else
  {
    v5 = 0x6E656D6E67696C61;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE900000000000074;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23BFFACC0();
  }

  return v8 & 1;
}