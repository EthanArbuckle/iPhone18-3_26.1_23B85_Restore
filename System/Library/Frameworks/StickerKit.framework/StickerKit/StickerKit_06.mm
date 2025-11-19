uint64_t sub_19A6865A8()
{

  if (v0)
  {

    v1 = sub_19A6868D0;
  }

  else
  {

    v1 = sub_19A6866F0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_19A686710()
{
  v1 = *(v0 + 128);

  if (v1)
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    v14 = *(v0 + 88);
    v5 = *(v0 + 48);
    v6 = [v2 itk_HEICData];
    sub_19A7A8E34();

    sub_19A7A92B4();
    [v2 size];
    sub_19A7AB014();
    v7 = objc_allocWithZone(sub_19A7AAD24());
    v8 = sub_19A7AACE4();
    sub_19A5F5028(0, &qword_1ED8B2000);
    v9 = v8;
    v10 = sub_19A682698(v9);
    [v5 setBakedInRep_];
  }

  else
  {
    v2 = *(v0 + 96);
    v11 = *(v0 + 88);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_19A6868E8()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A68696C(void *a1, uint64_t a2, const void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_19A7AB394();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = sub_19A6A1328;
  v11[6] = v9;
  v12 = a1;
  sub_19A6816F0(0, 0, v7, &unk_19A7BB998, v11);
}

id sub_19A686AC0()
{
  v0 = sub_19A7AB234();

  return v0;
}

void sub_19A686AF8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = (a2 + 56);
  v7 = *(a2 + 16) + 1;
  while (--v7)
  {
    v9 = *(v6 - 3);
    v8 = *(v6 - 2);
    v10 = *(v6 - 1);
    v11 = *v6;
    if (v9 == v4 && v8 == v5)
    {
      v9 = v4;
LABEL_15:
      *a3 = v9;
      a3[1] = v8;
      a3[2] = v10;
      a3[3] = v11;

      sub_19A612F68(v10, v11);
      return;
    }

    v6 += 4;
    if (sub_19A7AC064())
    {
      goto LABEL_15;
    }
  }

  if (qword_1EAFCB1C8 != -1)
  {
    swift_once();
  }

  v13 = sub_19A7A9384();
  __swift_project_value_buffer(v13, qword_1EAFCB1D0);

  v14 = sub_19A7A9364();
  v15 = sub_19A7AB584();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_19A62540C(v4, v5, &v18);
    _os_log_impl(&dword_19A5EE000, v14, v15, "missing emoji rep for role %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x19A907A30](v17, -1, -1);
    MEMORY[0x19A907A30](v16, -1, -1);
  }

  *a3 = 0u;
  *(a3 + 1) = 0u;
}

uint64_t sub_19A686CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9A8);
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A686DE8, 0, 0);
}

uint64_t sub_19A686DE8()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = (v0 + 16);
    v31 = **(v0 + 96);
    v30 = sub_19A7AB394();
    v3 = *(v30 - 8);
    v29 = *(v3 + 56);
    v28 = (v3 + 48);
    v26 = (v3 + 8);
    v4 = (v1 + 56);
    v35 = v0;
    do
    {
      v34 = v2;
      v7 = *(v0 + 152);
      v6 = *(v0 + 160);
      v8 = *(v4 - 3);
      v9 = *(v4 - 2);
      v11 = *(v4 - 1);
      v10 = *v4;
      v32 = v4;
      v36 = *(v35 + 112);
      v29(v6, 1, 1, v30);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      *(v12 + 48) = v11;
      *(v12 + 56) = v10;
      *(v12 + 64) = v36;
      sub_19A60F0CC(v6, v7, &unk_1EAFCD690);
      LODWORD(v7) = (*v28)(v7, 1, v30);

      sub_19A612F68(v11, v10);

      v33 = v11;
      v14 = v11;
      v0 = v35;
      sub_19A612F68(v14, v10);

      v15 = *(v35 + 152);
      if (v7 == 1)
      {
        sub_19A5F2B54(*(v35 + 152), &unk_1EAFCD690);
        if (*v13)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_19A7AB384();
        (*v26)(v15, v30);
        if (*v13)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v16 = sub_19A7AB2E4();
          v17 = v18;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v16 = 0;
      v17 = 0;
LABEL_9:
      v19 = swift_allocObject();
      *(v19 + 16) = &unk_19A7BB8C8;
      *(v19 + 24) = v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD998);
      v20 = (v17 | v16);
      if (v17 | v16)
      {
        v20 = v27;
        *v27 = 0;
        v27[1] = 0;
        *(v35 + 32) = v16;
        *(v35 + 40) = v17;
      }

      v4 = v32 + 4;
      v5 = *(v35 + 160);
      *(v35 + 48) = 1;
      *(v35 + 56) = v20;
      *(v35 + 64) = v31;
      swift_task_create();

      sub_19A612F14(v33, v10);
      sub_19A5F2B54(v5, &unk_1EAFCD690);
      v2 = v34 - 1;
    }

    while (v34 != 1);
  }

  v21 = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD998);
  sub_19A7AB324();
  *(v0 + 168) = v21;
  *(v0 + 176) = v21;
  v22 = sub_19A623714(&qword_1EAFCD9B0, &qword_1EAFCD9A8);
  v23 = swift_task_alloc();
  *(v0 + 184) = v23;
  *v23 = v0;
  v23[1] = sub_19A687214;
  v24 = *(v0 + 128);

  return MEMORY[0x1EEE6D8C8](v0 + 80, v24, v22);
}

uint64_t sub_19A687214()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[17];
    v3 = v2[18];
    v5 = v2[16];

    (*(v4 + 8))(v3, v5);

    v6 = CGPointMake;
  }

  else
  {
    v6 = sub_19A687368;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_19A687368()
{
  v1 = v0[10];
  if (v1 == 1)
  {
    v2 = v0[21];
    v3 = v0[11];
    (*(v0[17] + 8))(v0[18], v0[16]);
    *v3 = v2;

    v4 = v0[1];

    return v4();
  }

  else
  {
    if (v1)
    {
      v6 = (v0 + 9);
      v7 = v1;
      MEMORY[0x19A905660]();
      if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A7AB274();
      }

      sub_19A7AB2A4();
      sub_19A6A0EF8(v1);
      v8 = vld1q_dup_f64(v6);
    }

    else
    {
      v8 = *(v0 + 21);
    }

    *(v0 + 21) = v8;
    v9 = sub_19A623714(&qword_1EAFCD9B0, &qword_1EAFCD9A8);
    v10 = swift_task_alloc();
    v0[23] = v10;
    *v10 = v0;
    v10[1] = sub_19A687214;
    v11 = v0[16];

    return MEMORY[0x1EEE6D8C8](v0 + 10, v11, v9);
  }
}

uint64_t sub_19A687544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a1;
  v8[3] = a6;
  return MEMORY[0x1EEE6DFA0](sub_19A68756C, 0, 0);
}

uint64_t sub_19A68756C()
{
  v1 = sub_19A7A8E14();
  v2 = CGImageSourceCreateWithData(v1, 0);

  if (v2)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v2, 0, 0);

    if (ImageAtIndex)
    {
      v4 = *(v0 + 40);
      v5 = objc_opt_self();
      sub_19A64EC2C(v4);
      v6 = sub_19A7AAF34();

      v2 = [v5 createEmojiStrikeWithImage:ImageAtIndex metadata:v6];
    }

    else
    {
      v2 = 0;
    }
  }

  **(v0 + 16) = v2;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_19A687690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = swift_task_alloc();
  v6[14] = v7;
  *v7 = v6;
  v7[1] = sub_19A687728;

  return sub_19A69E5D8();
}

uint64_t sub_19A687728(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A687828, 0, 0);
}

uint64_t sub_19A687828()
{
  v1 = *(v0 + 120);
  if (!v1)
  {
    (*(v0 + 96))(0, 0);
LABEL_68:
    v102 = *(v0 + 8);

    return v102();
  }

  *(v0 + 64) = v1;

  v2 = sub_19A7AAEF4();
  v4 = v3;
  v5 = _s10StickerKit19EmojiMetadataHelperC18metadataDictionary8fromDataSDySSypGSg10Foundation0I0VSg_tFZ_0(v2, v3);
  sub_19A612F00(v2, v4);
  if (!v5)
  {
    v5 = sub_19A69C220(MEMORY[0x1E69E7CC0]);
  }

  *(v0 + 128) = v5;
  v6 = *(v0 + 120);
  v7 = sub_19A782734();
  *(v0 + 136) = v7;
  if (v6 >> 62)
  {
    v62 = v7;
    v8 = sub_19A7ABBE4();
    v7 = v62;
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v7;

  if (v8 || (v23 = sub_19A7AAC84(), v25 = Sticker.stk_representationForRole(_:)(v23, v24), *(v0 + 144) = v25, , !v25))
  {
LABEL_7:
    *(v0 + 176) = v1;
    if (v1 >> 62)
    {
      if (sub_19A7ABBE4())
      {
        goto LABEL_9;
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    v63 = sub_19A7AACB4();
    v65 = Sticker.stk_representationForRole(_:)(v63, v64);
    *(v0 + 184) = v65;

    if (v65)
    {
      v66 = sub_19A7AACC4();
      v68 = v67;
      v69 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v70 = sub_19A7A8E14();
      v71 = [v69 initWithData_];
      *(v0 + 192) = v71;

      sub_19A612F14(v66, v68);
      if (v71)
      {
        v72 = *(v0 + 136);
        v73 = OBJC_IVAR___STKStickerEffect_type;
        swift_beginAccess();
        v74 = *(v72 + v73) - 1;
        v75 = v71;
        v76 = v75;
        if (v74 < 4)
        {
          v77 = *(v0 + 136);
          v36 = swift_task_alloc();
          *(v0 + 200) = v36;
          *(v36 + 16) = v77;
          *(v36 + 24) = v76;
          v78 = swift_task_alloc();
          *(v0 + 208) = v78;
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD7F8);
          *v78 = v0;
          v78[1] = sub_19A6898DC;
          v39 = v0 + 72;
          goto LABEL_48;
        }

        v79 = [v75 itk_cgImageGeneratingIfNecessary];
        if (v79)
        {
          v80 = v79;
          v81 = *(v0 + 128);
          v82 = objc_opt_self();
          sub_19A64EC2C(v81);
          v83 = sub_19A7AAF34();

          v84 = [v82 createEmojiStrikeWithImage:v80 metadata:v83];

          v85 = v84;
          MEMORY[0x19A905660]();
          if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_19A7AB274();
          }

          sub_19A7AB2A4();
          v1 = *(v0 + 64);
          if (qword_1EAFCB1C8 != -1)
          {
            swift_once();
          }

          v86 = sub_19A7A9384();
          __swift_project_value_buffer(v86, qword_1EAFCB1D0);
          v87 = sub_19A7A9364();
          v88 = sub_19A7AB584();
          v89 = os_log_type_enabled(v87, v88);
          v91 = *(v0 + 184);
          v90 = *(v0 + 192);
          if (v89)
          {
            v92 = swift_slowAlloc();
            *v92 = 0;
            _os_log_impl(&dword_19A5EE000, v87, v88, "Still No Sticker still rep available, falling back to default.", v92, 2u);
            MEMORY[0x19A907A30](v92, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          v93 = *(v0 + 184);

          v1 = *(v0 + 176);
        }
      }

      else
      {
      }
    }

LABEL_9:
    v10 = sub_19A7AADC4();
    if (v11 || (v10 = sub_19A7AADA4(), v11))
    {
      v12 = v10;
      v13 = v11;
    }

    else
    {
      v40 = sub_19A7AABF4();
      v13 = v41;
      if (!v41)
      {
        goto LABEL_15;
      }

      v12 = v40;
    }

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
LABEL_16:
      if (v1 >> 62)
      {
        if (sub_19A7ABBE4())
        {
          goto LABEL_18;
        }
      }

      else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_18:
        v15 = *(v0 + 136);
        v16 = *(v0 + 96);
        sub_19A683808();

        v17 = objc_allocWithZone(MEMORY[0x1E69655E0]);
        v18 = sub_19A7AAFE4();

        v19 = sub_19A7AAFE4();
        sub_19A5F5028(0, &qword_1EAFCA4E0);
        v20 = sub_19A7AB234();

        v21 = [v17 initWithContentIdentifier:v18 shortDescription:v19 strikeImages:v20];

        v22 = v21;
        v16(v21, 0);

LABEL_67:

        goto LABEL_68;
      }

      if (qword_1EAFCB1C8 != -1)
      {
        swift_once();
      }

      v94 = sub_19A7A9384();
      __swift_project_value_buffer(v94, qword_1EAFCB1D0);
      v95 = sub_19A7A9364();
      v96 = sub_19A7AB584();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_19A5EE000, v95, v96, "Attempted to create EmojiImageAsset, but there are no valid representations to generate strikes, returning error.", v97, 2u);
        MEMORY[0x19A907A30](v97, -1, -1);
      }

      v98 = *(v0 + 136);
      v99 = *(v0 + 96);

      sub_19A69DE7C();
      v100 = swift_allocError();
      *v101 = 0;
      v99(0, v100);

      goto LABEL_67;
    }

LABEL_15:
    sub_19A7AB0A4();

    goto LABEL_16;
  }

  v26 = sub_19A7AACC4();
  v28 = v27;
  v29 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v30 = sub_19A7A8E14();
  v31 = [v29 initWithData_];
  *(v0 + 152) = v31;

  sub_19A612F14(v26, v28);
  if (!v31)
  {

    goto LABEL_7;
  }

  v32 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  v33 = *&v9[v32] - 1;
  v34 = v31;
  v35 = v34;
  if (v33 >= 4)
  {
    v42 = [v34 itk_squareStickerImageWithEdgeLength:160.0];
    if (v42)
    {
      v43 = v35;
      v35 = v42;
    }

    else
    {
      if (qword_1EAFCB1C8 != -1)
      {
        swift_once();
      }

      v44 = sub_19A7A9384();
      __swift_project_value_buffer(v44, qword_1EAFCB1D0);
      v43 = sub_19A7A9364();
      v45 = sub_19A7AB5A4();
      if (os_log_type_enabled(v43, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_19A5EE000, v43, v45, "error creating square image", v46, 2u);
        MEMORY[0x19A907A30](v46, -1, -1);
      }
    }

    v47 = [v35 itk_cgImageGeneratingIfNecessary];
    if (v47)
    {
      v48 = v47;
      v49 = *(v0 + 128);
      v50 = objc_opt_self();
      sub_19A64EC2C(v49);
      v51 = sub_19A7AAF34();

      v52 = [v50 createEmojiStrikeWithImage:v48 metadata:v51];

      v53 = v52;
      MEMORY[0x19A905660]();
      if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A7AB274();
      }

      sub_19A7AB2A4();
      v1 = *(v0 + 64);
      if (qword_1EAFCB1C8 != -1)
      {
        swift_once();
      }

      v54 = sub_19A7A9384();
      __swift_project_value_buffer(v54, qword_1EAFCB1D0);
      v55 = sub_19A7A9364();
      v56 = sub_19A7AB584();
      v57 = os_log_type_enabled(v55, v56);
      v59 = *(v0 + 144);
      v58 = *(v0 + 152);
      if (v57)
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_19A5EE000, v55, v56, "No Sticker rep available, falling back to still.", v60, 2u);
        MEMORY[0x19A907A30](v60, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v61 = *(v0 + 144);

      v1 = *(v0 + 120);
    }

    goto LABEL_7;
  }

  v36 = swift_task_alloc();
  *(v0 + 160) = v36;
  *(v36 + 16) = v9;
  *(v36 + 24) = v35;
  v37 = swift_task_alloc();
  *(v0 + 168) = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD7F8);
  *v37 = v0;
  v37[1] = sub_19A68840C;
  v39 = v0 + 80;
LABEL_48:

  return MEMORY[0x1EEE6DE38](v39, 0, 0, 0x707041636E797361, 0xEF293A6F7428796CLL, sub_19A6A16A0, v36, v38);
}

uint64_t sub_19A68840C()
{

  if (v0)
  {

    v1 = sub_19A688F20;
  }

  else
  {

    v1 = sub_19A688554;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_19A688554()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 152);
  if (v1)
  {

    v2 = v1;
  }

  v3 = [v2 itk_squareStickerImageWithEdgeLength:160.0];
  v4 = &unk_1EAFCB000;
  if (v3)
  {
    v5 = v2;
    v2 = v3;
  }

  else
  {
    if (qword_1EAFCB1C8 != -1)
    {
      swift_once();
    }

    v6 = sub_19A7A9384();
    __swift_project_value_buffer(v6, qword_1EAFCB1D0);
    v5 = sub_19A7A9364();
    v7 = sub_19A7AB5A4();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_19A5EE000, v5, v7, "error creating square image", v8, 2u);
      MEMORY[0x19A907A30](v8, -1, -1);
    }
  }

  v9 = [v2 itk_cgImageGeneratingIfNecessary];
  if (v9)
  {
    v10 = v9;
    v11 = *(v0 + 128);
    v12 = objc_opt_self();
    sub_19A64EC2C(v11);
    v13 = sub_19A7AAF34();

    v14 = [v12 createEmojiStrikeWithImage:v10 metadata:v13];

    v15 = v14;
    MEMORY[0x19A905660]();
    if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19A7AB274();
    }

    sub_19A7AB2A4();
    v16 = *(v0 + 64);
    if (qword_1EAFCB1C8 != -1)
    {
      swift_once();
    }

    v17 = sub_19A7A9384();
    __swift_project_value_buffer(v17, qword_1EAFCB1D0);
    v18 = sub_19A7A9364();
    v19 = sub_19A7AB584();
    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 144);
    v21 = *(v0 + 152);
    if (v20)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_19A5EE000, v18, v19, "No Sticker rep available, falling back to still.", v23, 2u);
      v24 = v23;
      v4 = &unk_1EAFCB000;
      MEMORY[0x19A907A30](v24, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v25 = *(v0 + 144);

    v16 = *(v0 + 120);
  }

  *(v0 + 176) = v16;
  if (v16 >> 62)
  {
    if (sub_19A7ABBE4())
    {
      goto LABEL_20;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  v41 = sub_19A7AACB4();
  v43 = Sticker.stk_representationForRole(_:)(v41, v42);
  *(v0 + 184) = v43;

  if (!v43)
  {
    goto LABEL_20;
  }

  v44 = sub_19A7AACC4();
  v46 = v45;
  v47 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v48 = sub_19A7A8E14();
  v49 = [v47 initWithData_];
  *(v0 + 192) = v49;

  sub_19A612F14(v44, v46);
  if (!v49)
  {

    goto LABEL_20;
  }

  v50 = *(v0 + 136);
  v51 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  v52 = *(v50 + v51) - 1;
  v53 = v49;
  v54 = v53;
  if (v52 >= 4)
  {
    v59 = [v53 itk_cgImageGeneratingIfNecessary];
    if (v59)
    {
      v60 = v59;
      v61 = *(v0 + 128);
      v62 = objc_opt_self();
      sub_19A64EC2C(v61);
      v63 = sub_19A7AAF34();

      v64 = [v62 createEmojiStrikeWithImage:v60 metadata:v63];

      v65 = v64;
      MEMORY[0x19A905660]();
      if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A7AB274();
      }

      sub_19A7AB2A4();
      v16 = *(v0 + 64);
      if (v4[57] != -1)
      {
        swift_once();
      }

      v66 = sub_19A7A9384();
      __swift_project_value_buffer(v66, qword_1EAFCB1D0);
      v67 = sub_19A7A9364();
      v68 = sub_19A7AB584();
      v69 = os_log_type_enabled(v67, v68);
      v71 = *(v0 + 184);
      v70 = *(v0 + 192);
      if (v69)
      {
        v86 = v65;
        v72 = v4;
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_19A5EE000, v67, v68, "Still No Sticker still rep available, falling back to default.", v73, 2u);
        v74 = v73;
        v4 = v72;
        MEMORY[0x19A907A30](v74, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v75 = *(v0 + 184);

      v16 = *(v0 + 176);
    }

LABEL_20:
    v26 = sub_19A7AADC4();
    if (v27 || (v26 = sub_19A7AADA4(), v27))
    {
      v28 = v26;
      v29 = v27;
    }

    else
    {
      v39 = sub_19A7AABF4();
      v29 = v40;
      if (!v40)
      {
        goto LABEL_26;
      }

      v28 = v39;
    }

    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
LABEL_27:
      if (v16 >> 62)
      {
        if (sub_19A7ABBE4())
        {
          goto LABEL_29;
        }
      }

      else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_29:
        v31 = *(v0 + 136);
        v32 = *(v0 + 96);
        sub_19A683808();

        v33 = objc_allocWithZone(MEMORY[0x1E69655E0]);
        v34 = sub_19A7AAFE4();

        v35 = sub_19A7AAFE4();
        sub_19A5F5028(0, &qword_1EAFCA4E0);
        v36 = sub_19A7AB234();

        v37 = [v33 initWithContentIdentifier:v34 shortDescription:v35 strikeImages:v36];

        v38 = v37;
        v32(v37, 0);

LABEL_55:

        v84 = *(v0 + 8);

        return v84();
      }

      if (v4[57] != -1)
      {
        swift_once();
      }

      v76 = sub_19A7A9384();
      __swift_project_value_buffer(v76, qword_1EAFCB1D0);
      v77 = sub_19A7A9364();
      v78 = sub_19A7AB584();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_19A5EE000, v77, v78, "Attempted to create EmojiImageAsset, but there are no valid representations to generate strikes, returning error.", v79, 2u);
        MEMORY[0x19A907A30](v79, -1, -1);
      }

      v80 = *(v0 + 136);
      v81 = *(v0 + 96);

      sub_19A69DE7C();
      v82 = swift_allocError();
      *v83 = 0;
      v81(0, v82);

      goto LABEL_55;
    }

LABEL_26:
    sub_19A7AB0A4();

    goto LABEL_27;
  }

  v55 = *(v0 + 136);
  v56 = swift_task_alloc();
  *(v0 + 200) = v56;
  *(v56 + 16) = v55;
  *(v56 + 24) = v54;
  v57 = swift_task_alloc();
  *(v0 + 208) = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD7F8);
  *v57 = v0;
  v57[1] = sub_19A6898DC;

  return MEMORY[0x1EEE6DE38](v0 + 72, 0, 0, 0x707041636E797361, 0xEF293A6F7428796CLL, sub_19A6A16A0, v56, v58);
}

uint64_t sub_19A688F20()
{
  v1 = *(v0 + 152);
  v2 = [v1 itk_squareStickerImageWithEdgeLength:160.0];
  v3 = &unk_1EAFCB000;
  if (v2)
  {
    v4 = v1;
    v1 = v2;
  }

  else
  {
    if (qword_1EAFCB1C8 != -1)
    {
      swift_once();
    }

    v5 = sub_19A7A9384();
    __swift_project_value_buffer(v5, qword_1EAFCB1D0);
    v4 = sub_19A7A9364();
    v6 = sub_19A7AB5A4();
    if (os_log_type_enabled(v4, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_19A5EE000, v4, v6, "error creating square image", v7, 2u);
      MEMORY[0x19A907A30](v7, -1, -1);
    }
  }

  v8 = [v1 itk_cgImageGeneratingIfNecessary];
  if (v8)
  {
    v9 = v8;
    v10 = *(v0 + 128);
    v11 = objc_opt_self();
    sub_19A64EC2C(v10);
    v12 = sub_19A7AAF34();

    v13 = [v11 createEmojiStrikeWithImage:v9 metadata:v12];

    v14 = v13;
    MEMORY[0x19A905660]();
    if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19A7AB274();
    }

    sub_19A7AB2A4();
    v15 = *(v0 + 64);
    if (qword_1EAFCB1C8 != -1)
    {
      swift_once();
    }

    v16 = sub_19A7A9384();
    __swift_project_value_buffer(v16, qword_1EAFCB1D0);
    v17 = sub_19A7A9364();
    v18 = sub_19A7AB584();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_19A5EE000, v17, v18, "No Sticker rep available, falling back to still.", v22, 2u);
      v23 = v22;
      v3 = &unk_1EAFCB000;
      MEMORY[0x19A907A30](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v24 = *(v0 + 144);

    v15 = *(v0 + 120);
  }

  *(v0 + 176) = v15;
  if (v15 >> 62)
  {
    if (sub_19A7ABBE4())
    {
      goto LABEL_18;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

  v40 = sub_19A7AACB4();
  v42 = Sticker.stk_representationForRole(_:)(v40, v41);
  *(v0 + 184) = v42;

  if (!v42)
  {
    goto LABEL_18;
  }

  v43 = sub_19A7AACC4();
  v45 = v44;
  v46 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v47 = sub_19A7A8E14();
  v48 = [v46 initWithData_];
  *(v0 + 192) = v48;

  sub_19A612F14(v43, v45);
  if (!v48)
  {

    goto LABEL_18;
  }

  v49 = *(v0 + 136);
  v50 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  v51 = *(v49 + v50) - 1;
  v52 = v48;
  v53 = v52;
  if (v51 >= 4)
  {
    v58 = [v52 itk_cgImageGeneratingIfNecessary];
    if (v58)
    {
      v59 = v58;
      v60 = *(v0 + 128);
      v61 = objc_opt_self();
      sub_19A64EC2C(v60);
      v62 = sub_19A7AAF34();

      v63 = [v61 createEmojiStrikeWithImage:v59 metadata:v62];

      v64 = v63;
      MEMORY[0x19A905660]();
      if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A7AB274();
      }

      sub_19A7AB2A4();
      v15 = *(v0 + 64);
      if (v3[57] != -1)
      {
        swift_once();
      }

      v65 = sub_19A7A9384();
      __swift_project_value_buffer(v65, qword_1EAFCB1D0);
      v66 = sub_19A7A9364();
      v67 = sub_19A7AB584();
      v68 = os_log_type_enabled(v66, v67);
      v70 = *(v0 + 184);
      v69 = *(v0 + 192);
      if (v68)
      {
        v85 = v64;
        v71 = v3;
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_19A5EE000, v66, v67, "Still No Sticker still rep available, falling back to default.", v72, 2u);
        v73 = v72;
        v3 = v71;
        MEMORY[0x19A907A30](v73, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v74 = *(v0 + 184);

      v15 = *(v0 + 176);
    }

LABEL_18:
    v25 = sub_19A7AADC4();
    if (v26 || (v25 = sub_19A7AADA4(), v26))
    {
      v27 = v25;
      v28 = v26;
    }

    else
    {
      v38 = sub_19A7AABF4();
      v28 = v39;
      if (!v39)
      {
        goto LABEL_24;
      }

      v27 = v38;
    }

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
LABEL_25:
      if (v15 >> 62)
      {
        if (sub_19A7ABBE4())
        {
          goto LABEL_27;
        }
      }

      else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_27:
        v30 = *(v0 + 136);
        v31 = *(v0 + 96);
        sub_19A683808();

        v32 = objc_allocWithZone(MEMORY[0x1E69655E0]);
        v33 = sub_19A7AAFE4();

        v34 = sub_19A7AAFE4();
        sub_19A5F5028(0, &qword_1EAFCA4E0);
        v35 = sub_19A7AB234();

        v36 = [v32 initWithContentIdentifier:v33 shortDescription:v34 strikeImages:v35];

        v37 = v36;
        v31(v36, 0);

LABEL_53:

        v83 = *(v0 + 8);

        return v83();
      }

      if (v3[57] != -1)
      {
        swift_once();
      }

      v75 = sub_19A7A9384();
      __swift_project_value_buffer(v75, qword_1EAFCB1D0);
      v76 = sub_19A7A9364();
      v77 = sub_19A7AB584();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_19A5EE000, v76, v77, "Attempted to create EmojiImageAsset, but there are no valid representations to generate strikes, returning error.", v78, 2u);
        MEMORY[0x19A907A30](v78, -1, -1);
      }

      v79 = *(v0 + 136);
      v80 = *(v0 + 96);

      sub_19A69DE7C();
      v81 = swift_allocError();
      *v82 = 0;
      v80(0, v81);

      goto LABEL_53;
    }

LABEL_24:
    sub_19A7AB0A4();

    goto LABEL_25;
  }

  v54 = *(v0 + 136);
  v55 = swift_task_alloc();
  *(v0 + 200) = v55;
  *(v55 + 16) = v54;
  *(v55 + 24) = v53;
  v56 = swift_task_alloc();
  *(v0 + 208) = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD7F8);
  *v56 = v0;
  v56[1] = sub_19A6898DC;

  return MEMORY[0x1EEE6DE38](v0 + 72, 0, 0, 0x707041636E797361, 0xEF293A6F7428796CLL, sub_19A6A16A0, v55, v57);
}

uint64_t sub_19A6898DC()
{

  if (v0)
  {

    v1 = sub_19A689F30;
  }

  else
  {

    v1 = sub_19A689A24;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_19A689A24()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 192);
  if (v1)
  {

    v2 = v1;
  }

  v3 = [v2 itk_cgImageGeneratingIfNecessary];
  v4 = &unk_1EAFCB000;
  if (v3)
  {
    v5 = v3;
    v6 = *(v0 + 128);
    v7 = objc_opt_self();
    sub_19A64EC2C(v6);
    v8 = sub_19A7AAF34();

    v9 = [v7 createEmojiStrikeWithImage:v5 metadata:v8];

    v10 = v9;
    MEMORY[0x19A905660]();
    if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19A7AB274();
    }

    sub_19A7AB2A4();
    v11 = *(v0 + 64);
    if (qword_1EAFCB1C8 != -1)
    {
      swift_once();
    }

    v12 = sub_19A7A9384();
    __swift_project_value_buffer(v12, qword_1EAFCB1D0);
    v13 = sub_19A7A9364();
    v14 = sub_19A7AB584();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 184);
    v17 = *(v0 + 192);
    if (v15)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_19A5EE000, v13, v14, "Still No Sticker still rep available, falling back to default.", v18, 2u);
      v19 = v18;
      v4 = &unk_1EAFCB000;
      MEMORY[0x19A907A30](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v20 = *(v0 + 184);

    v11 = *(v0 + 176);
  }

  v21 = sub_19A7AADC4();
  if (v22 || (v21 = sub_19A7AADA4(), v22))
  {
    v23 = v21;
    v24 = v22;
  }

  else
  {
    v34 = sub_19A7AABF4();
    v24 = v35;
    if (!v35)
    {
LABEL_18:
      sub_19A7AB0A4();

      goto LABEL_19;
    }

    v23 = v34;
  }

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v11 >> 62)
  {
    if (sub_19A7ABBE4())
    {
      goto LABEL_21;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    v26 = *(v0 + 136);
    v27 = *(v0 + 96);
    sub_19A683808();

    v28 = objc_allocWithZone(MEMORY[0x1E69655E0]);
    v29 = sub_19A7AAFE4();

    v30 = sub_19A7AAFE4();
    sub_19A5F5028(0, &qword_1EAFCA4E0);
    v31 = sub_19A7AB234();

    v32 = [v28 initWithContentIdentifier:v29 shortDescription:v30 strikeImages:v31];

    v33 = v32;
    v27(v32, 0);

    goto LABEL_30;
  }

  if (v4[57] != -1)
  {
    swift_once();
  }

  v36 = sub_19A7A9384();
  __swift_project_value_buffer(v36, qword_1EAFCB1D0);
  v37 = sub_19A7A9364();
  v38 = sub_19A7AB584();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_19A5EE000, v37, v38, "Attempted to create EmojiImageAsset, but there are no valid representations to generate strikes, returning error.", v39, 2u);
    MEMORY[0x19A907A30](v39, -1, -1);
  }

  v40 = *(v0 + 136);
  v41 = *(v0 + 96);

  sub_19A69DE7C();
  v42 = swift_allocError();
  *v43 = 0;
  v41(0, v42);

LABEL_30:

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_19A689F30()
{
  v1 = *(v0 + 192);
  v2 = [v1 itk_cgImageGeneratingIfNecessary];
  v3 = &unk_1EAFCB000;
  if (v2)
  {
    v4 = v2;
    v5 = *(v0 + 128);
    v6 = objc_opt_self();
    sub_19A64EC2C(v5);
    v7 = sub_19A7AAF34();

    v8 = [v6 createEmojiStrikeWithImage:v4 metadata:v7];

    v9 = v8;
    MEMORY[0x19A905660]();
    if (*((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19A7AB274();
    }

    sub_19A7AB2A4();
    v10 = *(v0 + 64);
    if (qword_1EAFCB1C8 != -1)
    {
      swift_once();
    }

    v11 = sub_19A7A9384();
    __swift_project_value_buffer(v11, qword_1EAFCB1D0);
    v12 = sub_19A7A9364();
    v13 = sub_19A7AB584();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 192);
    if (v14)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_19A5EE000, v12, v13, "Still No Sticker still rep available, falling back to default.", v17, 2u);
      v18 = v17;
      v3 = &unk_1EAFCB000;
      MEMORY[0x19A907A30](v18, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v19 = *(v0 + 184);

    v10 = *(v0 + 176);
  }

  v20 = sub_19A7AADC4();
  if (v21 || (v20 = sub_19A7AADA4(), v21))
  {
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v33 = sub_19A7AABF4();
    v23 = v34;
    if (!v34)
    {
LABEL_16:
      sub_19A7AB0A4();

      goto LABEL_17;
    }

    v22 = v33;
  }

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v10 >> 62)
  {
    if (sub_19A7ABBE4())
    {
      goto LABEL_19;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    v25 = *(v0 + 136);
    v26 = *(v0 + 96);
    sub_19A683808();

    v27 = objc_allocWithZone(MEMORY[0x1E69655E0]);
    v28 = sub_19A7AAFE4();

    v29 = sub_19A7AAFE4();
    sub_19A5F5028(0, &qword_1EAFCA4E0);
    v30 = sub_19A7AB234();

    v31 = [v27 initWithContentIdentifier:v28 shortDescription:v29 strikeImages:v30];

    v32 = v31;
    v26(v31, 0);

    goto LABEL_28;
  }

  if (v3[57] != -1)
  {
    swift_once();
  }

  v35 = sub_19A7A9384();
  __swift_project_value_buffer(v35, qword_1EAFCB1D0);
  v36 = sub_19A7A9364();
  v37 = sub_19A7AB584();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_19A5EE000, v36, v37, "Attempted to create EmojiImageAsset, but there are no valid representations to generate strikes, returning error.", v38, 2u);
    MEMORY[0x19A907A30](v38, -1, -1);
  }

  v39 = *(v0 + 136);
  v40 = *(v0 + 96);

  sub_19A69DE7C();
  v41 = swift_allocError();
  *v42 = 0;
  v40(0, v41);

LABEL_28:

  v43 = *(v0 + 8);

  return v43();
}

void sub_19A68A42C(void *a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  if (a1 && (v5 = [a1 imageData]) != 0)
  {
    v6 = v5;
    v7 = sub_19A7A8E34();
    v9 = v8;

    sub_19A612F68(v7, v9);
    a3(v7, v9, a2);
    sub_19A612F14(v7, v9);

    sub_19A612F14(v7, v9);
  }

  else
  {
    sub_19A69DE7C();
    v10 = swift_allocError();
    *v11 = 1;
    a3(0, 0xF000000000000000, v10);
  }
}

uint64_t sub_19A68A53C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_19A6A0B60;
  *(v10 + 24) = v9;
  v11 = sub_19A7AB394();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  v12[5] = sub_19A6A0B68;
  v12[6] = v10;
  v12[7] = ObjectType;

  v13 = v2;
  sub_19A6816F0(0, 0, v8, &unk_19A7BB878, v12);
}

void sub_19A68A6C0(uint64_t a1, unint64_t a2, void *a3, void (*a4)(id, void *))
{
  if (a2 >> 60 == 15)
  {
    sub_19A69DE7C();
    v5 = swift_allocError();
    *v6 = 1;
    a4(0, v5);
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x1E69DB7B0]);
    sub_19A69E0F4(a1, a2);
    sub_19A612F68(a1, a2);
    v11 = sub_19A7A8E14();
    v12 = [v10 initWithData_];

    sub_19A612F00(a1, a2);
    a4(v12, a3);

    sub_19A612F00(a1, a2);
  }
}

uint64_t sub_19A68A808(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAA8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  (*(v9 + 16))(&v20 - v10, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_19A6A1478;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_19A6A169C;
  *(v15 + 24) = v14;
  v16 = sub_19A7AB394();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a2;
  v17[5] = sub_19A6A1670;
  v17[6] = v15;
  v17[7] = ObjectType;
  v18 = a2;
  sub_19A6816F0(0, 0, v7, &unk_19A7BBA28, v17);
}

uint64_t sub_19A68AA88(void *a1, uint64_t a2)
{
  if (a2)
  {
    sub_19A69DE7C();
    swift_allocError();
    *v2 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAA8);
    return sub_19A7AB2F4();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAA8);
    return sub_19A7AB304();
  }
}

uint64_t sub_19A68AB28()
{
  result = sub_19A7AAD84();
  if (result)
  {
    v1 = result;
    v2 = MEMORY[0x1E69E7CC8];
    v18 = MEMORY[0x1E69E7CC8];
    v3 = sub_19A7AAD64();
    if (v3)
    {
      v4 = v3;
      v17 = sub_19A5F5028(0, &qword_1ED8B1FE0);
      *&v16 = v4;
      sub_19A625DC4(&v16, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_19A650474(v15, 0x64692D6D616461, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v18 = v2;
    }

    else
    {
      sub_19A6960F0(0x64692D6D616461, 0xE700000000000000, &v16);
      sub_19A5F2B54(&v16, &unk_1EAFCD750);
    }

    v6 = sub_19A7AAD34();
    v8 = MEMORY[0x1E69E6158];
    if (v7)
    {
      v17 = MEMORY[0x1E69E6158];
      *&v16 = v6;
      *(&v16 + 1) = v7;
      sub_19A625DC4(&v16, v15);
      v9 = v18;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      sub_19A650474(v15, 0x692D656C646E7562, 0xE900000000000064, v10);
      v18 = v9;
    }

    else
    {
      sub_19A6960F0(0x692D656C646E7562, 0xE900000000000064, &v16);
      sub_19A5F2B54(&v16, &unk_1EAFCD750);
    }

    v11 = sub_19A7AAD44();
    if (v12)
    {
      v17 = v8;
      *&v16 = v11;
      *(&v16 + 1) = v12;
      sub_19A625DC4(&v16, v15);
      v13 = v18;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      sub_19A650474(v15, 1701667182, 0xE400000000000000, v14);

      return v13;
    }

    else
    {
      sub_19A6960F0(1701667182, 0xE400000000000000, &v16);

      sub_19A5F2B54(&v16, &unk_1EAFCD750);
      return v18;
    }
  }

  return result;
}

uint64_t sub_19A68AD44()
{
  v0 = sub_19A7AAA14();
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D4638]);
  sub_19A7AAAC4();
  swift_allocObject();
  sub_19A7AAA04();
  sub_19A7AA9E4();
}

uint64_t sub_19A68B010()
{
  v0 = sub_19A7AB6F4();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_19A7AB774();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A7AA7B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_19A5F5028(0, &qword_1ED8B2040);
  sub_19A7AA794();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v1);
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_19A6A1110(&unk_1ED8B2050, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF150);
  sub_19A623714(&unk_1ED8B2070, &unk_1EAFCF150);
  sub_19A7ABB54();
  result = sub_19A7AB7B4();
  qword_1EAFDD4F8 = result;
  return result;
}

id sub_19A68B284()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EAFDD6D8 = result;
  return result;
}

uint64_t sub_19A68B2D8()
{
  v0 = sub_19A7AAD94();
  v1 = v0;
  if (v0 >> 62)
  {
LABEL_16:
    v2 = sub_19A7ABBE4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:

    v12 = sub_19A7AAD94();
    v13 = v12;
    if (v12 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
    {
      v15 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x19A906130](v15, v13);
        }

        else
        {
          if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v5 = v16;
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (sub_19A7AACF4() == 0xD000000000000028 && 0x800000019A7C50A0 == v18)
        {
          goto LABEL_96;
        }

        v19 = sub_19A7AC064();

        if (v19)
        {
          goto LABEL_94;
        }

        ++v15;
        if (v17 == i)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

LABEL_33:

    v20 = sub_19A7AAD94();
    v21 = v20;
    if (v20 >> 62)
    {
      goto LABEL_48;
    }

    for (j = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_19A7ABBE4())
    {
      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x19A906130](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v5 = v24;
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (sub_19A7AACF4() == 0xD000000000000028 && 0x800000019A7C4FE0 == v26)
        {
          goto LABEL_96;
        }

        v27 = sub_19A7AC064();

        if (v27)
        {
          goto LABEL_94;
        }

        ++v23;
        if (v25 == j)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      ;
    }

LABEL_49:

    v28 = sub_19A7AAD94();
    v29 = v28;
    if (v28 >> 62)
    {
      goto LABEL_64;
    }

    for (k = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_19A7ABBE4())
    {
      v31 = 0;
      while (1)
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x19A906130](v31, v29);
        }

        else
        {
          if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_63;
          }

          v32 = *(v29 + 8 * v31 + 32);
        }

        v5 = v32;
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (sub_19A7AACF4() == 0xD000000000000027 && 0x800000019A7C5070 == v34)
        {
          goto LABEL_96;
        }

        v35 = sub_19A7AC064();

        if (v35)
        {
          goto LABEL_94;
        }

        ++v31;
        if (v33 == k)
        {
          goto LABEL_65;
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      ;
    }

LABEL_65:

    v36 = sub_19A7AAD94();
    v37 = v36;
    if (v36 >> 62)
    {
      goto LABEL_80;
    }

    for (m = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); m; m = sub_19A7ABBE4())
    {
      v39 = 0;
      while (1)
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x19A906130](v39, v37);
        }

        else
        {
          if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_79;
          }

          v40 = *(v37 + 8 * v39 + 32);
        }

        v5 = v40;
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (sub_19A7AACF4() == 0xD000000000000027 && 0x800000019A7C5040 == v42)
        {
          goto LABEL_96;
        }

        v43 = sub_19A7AC064();

        if (v43)
        {
          goto LABEL_94;
        }

        ++v39;
        if (v41 == m)
        {
          goto LABEL_81;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      ;
    }

LABEL_81:

    v44 = sub_19A7AAD94();
    v45 = v44;
    if (v44 >> 62)
    {
      goto LABEL_109;
    }

    for (n = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); n; n = sub_19A7ABBE4())
    {
      v47 = 0;
      while (1)
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x19A906130](v47, v45);
        }

        else
        {
          if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_108;
          }

          v48 = *(v45 + 8 * v47 + 32);
        }

        v5 = v48;
        v49 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        v50 = sub_19A7AACF4();
        v52 = v51;
        if (v50 == sub_19A7AACA4() && v52 == v53)
        {
          goto LABEL_95;
        }

        v54 = sub_19A7AC064();

        if (v54)
        {
          goto LABEL_94;
        }

        ++v47;
        if (v49 == n)
        {
          goto LABEL_110;
        }
      }

      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      ;
    }

LABEL_110:

    v62 = 0;
    v55 = v73;
    goto LABEL_104;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_17;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x19A906130](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v7 = sub_19A7AACF4();
    v9 = v8;
    if (v7 == sub_19A7AAC84() && v9 == v10)
    {
      break;
    }

    v11 = sub_19A7AC064();

    if (v11)
    {
LABEL_94:
      v55 = v73;
      goto LABEL_97;
    }

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_17;
    }
  }

LABEL_95:

LABEL_96:
  v55 = v73;

LABEL_97:
  v55[7] = v5;

  v56 = v5;
  v57 = sub_19A7AACC4();
  v59 = v58;
  v60 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v61 = sub_19A7A8E14();
  v62 = [v60 initWithData_];
  v55[8] = v62;

  sub_19A612F14(v57, v59);
  if (!v62)
  {

LABEL_104:
    v71 = v55[1];

    return v71(v62);
  }

  v63 = v62;
  v64 = sub_19A782734();
  v65 = OBJC_IVAR___STKStickerEffect_type;
  swift_beginAccess();
  if ((*(v64 + v65) - 1) >= 4)
  {

    goto LABEL_104;
  }

  v66 = sub_19A782734();
  v55[9] = v66;
  v67 = v66;
  v68 = swift_task_alloc();
  v55[10] = v68;
  *(v68 + 16) = v67;
  *(v68 + 24) = v63;
  v69 = swift_task_alloc();
  v55[11] = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD7F8);
  *v69 = v55;
  v69[1] = sub_19A68BB2C;

  return MEMORY[0x1EEE6DE38](v55 + 5, 0, 0, 0x707041636E797361, 0xEF293A6F7428796CLL, sub_19A6A16A0, v68, v70);
}

uint64_t sub_19A68BB2C()
{

  if (v0)
  {

    v1 = sub_19A68BCF8;
  }

  else
  {

    v1 = sub_19A68BC74;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_19A68BC74()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_19A68BCF8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3(0);
}

void sub_19A68BD70(uint64_t a1, void *a2, void (*a3)(id), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v36 = a4;
  v37 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  v39 = 0;
  sub_19A5F5028(0, &qword_1ED8B2040);
  v14 = sub_19A7AB794();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = &v39;
  v15[4] = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_19A6A12F4;
  *(v16 + 24) = v15;
  aBlock[4] = sub_19A6A1300;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A68C320;
  aBlock[3] = &block_descriptor_126;
  v17 = _Block_copy(aBlock);

  v18 = a2;

  dispatch_sync(v14, v17);

  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else if (v39 == 1)
  {
    v19 = ITKMainScreenScale() * 32.0;
    sub_19A60F0CC(v18 + OBJC_IVAR___STKImageGlyph_stickerUUID, v13, &qword_1EAFCD800);
    v34 = objc_allocWithZone(type metadata accessor for AnimatedImage());
    if (v19 <= 0.0)
    {
      v19 = 1024.0;
    }

    v20 = objc_allocWithZone(STKImageData);
    v21 = sub_19A7A8E14();
    v22 = [v20 initWithData_];

    v23 = [v22 thumbnailsFitToSize:60 maxCount:{CGPointMake(v19, v19)}];
    v24 = sub_19A7AB254();

    sub_19A623FA4(v24);

    v25 = [v22 durationsWithMaxCount_];
    v26 = sub_19A7AB254();

    sub_19A6240A8(v26);

    sub_19A5F5028(0, &unk_1EAFCC1A0);
    v27 = sub_19A7AB234();

    sub_19A5F5028(0, &qword_1ED8B1FE0);
    v28 = sub_19A7AB234();

    sub_19A60F0CC(v13, v11, &qword_1EAFCD800);
    v29 = sub_19A7A8F64();
    v30 = *(v29 - 8);
    v31 = 0;
    if ((*(v30 + 48))(v11, 1, v29) != 1)
    {
      v31 = sub_19A7A8F24();
      (*(v30 + 8))(v11, v29);
    }

    v32 = [v34 initWithImages:v27 durations:v28 identifier:v31];

    sub_19A5F2B54(v13, &qword_1EAFCD800);
    v37(v32);
  }

  else
  {
    v37(0);
  }
}

void sub_19A68C248(uint64_t a1, _BYTE *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR___STKStickerView_imageGlyph;
    swift_beginAccess();
    v8 = *&v6[v7];
    if (v8)
    {
      type metadata accessor for ImageGlyph(0);
      v9 = v8;
      v10 = a3;
      v11 = sub_19A7AB924();
    }

    else
    {
      v11 = 0;
    }

    *a2 = v11 & 1;
  }
}

uint64_t sub_19A68C348(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v3[16] = swift_getObjectType();
  v4 = sub_19A7AA764();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = sub_19A7AA7B4();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA28);
  v3[23] = swift_task_alloc();
  v6 = sub_19A7A8DF4();
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v7 = sub_19A7A8F64();
  v3[34] = v7;
  v3[35] = *(v7 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A68C608, 0, 0);
}

uint64_t sub_19A68C608()
{
  v125 = v0;
  v1 = v0;
  v2 = sub_19A7AAD94();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_49;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_50:

LABEL_51:
    v121 = 0;
    goto LABEL_52;
  }

LABEL_3:
  v5 = 0;
  v123 = v1;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x19A906130](v5, v3);
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
    v1[40] = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v4 = sub_19A7ABBE4();
      if (!v4)
      {
        goto LABEL_50;
      }

      goto LABEL_3;
    }

    v9 = sub_19A7AACF4();
    v11 = v10;
    if (v9 == sub_19A7AAC94() && v11 == v12)
    {

      goto LABEL_16;
    }

    v13 = sub_19A7AC064();

    if (v13)
    {
      break;
    }

    ++v5;
    v1 = v123;
    if (v8 == v4)
    {
      goto LABEL_50;
    }
  }

  v1 = v123;
LABEL_16:
  v14 = v1[14];

  *(v1 + 408) = itk_isMacOS();
  if (!v14)
  {

    goto LABEL_51;
  }

  v15 = v1[34];
  v16 = v1[35];
  v17 = v1[33];
  v18 = v1[14];
  v19 = OBJC_IVAR___STKImageGlyph_stickerUUID;
  v1[41] = OBJC_IVAR___STKImageGlyph_stickerUUID;
  sub_19A60F0CC(v18 + v19, v17, &qword_1EAFCD800);
  v20 = *(v16 + 48);
  v1[42] = v20;
  v1[43] = (v16 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v20(v17, 1, v15) == 1)
  {
    v21 = v1[33];

    sub_19A5F2B54(v21, &qword_1EAFCD800);
    goto LABEL_51;
  }

  v22 = v1[39];
  v23 = v1[34];
  v24 = v1[35];
  v25 = v1[33];
  v26 = *(v24 + 32);
  v1[44] = v26;
  v1[45] = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v26(v22, v25, v23);
  v27 = v18;
  sub_19A7A8F14();
  v28 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  v29 = sub_19A7AAFE4();

  v30 = [v28 initWithUUIDString_];
  v1[46] = v30;

  if (!v30)
  {
    (*(v1[35] + 8))(v1[39], v1[34]);

    goto LABEL_51;
  }

  if (qword_1EAFCB578 != -1)
  {
    swift_once();
  }

  v31 = [qword_1EAFDD6D8 objectForKey_];
  if (v31)
  {
    v32 = v31;
    v33 = v1[39];
    v35 = v1[34];
    v34 = v1[35];

    (*(v34 + 8))(v33, v35);
    v121 = v32;
    goto LABEL_52;
  }

  if (itk_isMacOS())
  {
LABEL_29:
    v41 = v1[13];
    if (v41)
    {
      v42 = *(v1 + 408);
      v43 = v1[40];
      v45 = v1[14];
      v44 = v1[15];
      *(v1 + 4) = xmmword_19A7BB5E0;
      v46 = swift_task_alloc();
      v1[49] = v46;
      *(v46 + 16) = v42;
      *(v46 + 24) = v44;
      *(v46 + 32) = v41;
      *(v46 + 40) = v45;
      *(v46 + 48) = v43;
      *(v46 + 56) = v1 + 8;
      v47 = v41;
      v48 = swift_task_alloc();
      v1[50] = v48;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDA30);
      *v48 = v1;
      v48[1] = sub_19A68DFD8;
      v50 = sub_19A6A10E8;
      v51 = v1 + 10;
      v52 = 0xD00000000000002CLL;
      v53 = 0x800000019A7C8550;
      v54 = v46;
      goto LABEL_44;
    }

    v119 = v1[42];
    v55 = v1[41];
    v116 = v1[34];
    v56 = v1;
    v59 = v1 + 28;
    v58 = v1[28];
    v57 = v59[1];
    v60 = v56[14];
    v61 = sub_19A7AACC4();
    v63 = v62;
    sub_19A60F0CC(v60 + v55, v57, &qword_1EAFCD800);
    v117 = objc_allocWithZone(type metadata accessor for AnimatedImage());
    v64 = objc_allocWithZone(STKImageData);
    sub_19A612F68(v61, v63);
    v65 = sub_19A7A8E14();
    v66 = [v64 initWithData_];

    sub_19A612F14(v61, v63);
    v67 = [v66 thumbnailsFitToSize:60 maxCount:{CGPointMake(32.0, 32.0)}];
    v68 = sub_19A7AB254();

    sub_19A623FA4(v68);

    v69 = [v66 durationsWithMaxCount_];
    v70 = sub_19A7AB254();

    sub_19A6240A8(v70);

    sub_19A5F5028(0, &unk_1EAFCC1A0);
    v71 = sub_19A7AB234();

    sub_19A5F5028(0, &qword_1ED8B1FE0);
    v72 = sub_19A7AB234();

    sub_19A60F0CC(v57, v58, &qword_1EAFCD800);
    v73 = 0;
    if (v119(v58, 1, v116) != 1)
    {
      v74 = v56[34];
      v75 = v56[35];
      v76 = v56[28];
      v73 = sub_19A7A8F24();
      (*(v75 + 8))(v76, v74);
    }

    v77 = v56[29];
    v78 = [v117 initWithImages:v71 durations:v72 identifier:v73];

    sub_19A612F14(v61, v63);
    sub_19A5F2B54(v77, &qword_1EAFCD800);
    v79 = OBJC_IVAR___STKAnimatedImage_images;
    v80 = *&v78[OBJC_IVAR___STKAnimatedImage_images];
    if (v80 >> 62)
    {
      v81 = sub_19A7ABBE4();
    }

    else
    {
      v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1 = v123;
    if (v81 >= 1)
    {
      v82 = OBJC_IVAR___STKAnimatedImage_durations;
      v83 = *&v78[OBJC_IVAR___STKAnimatedImage_durations];
      if (v83 >> 62)
      {
        if (sub_19A7ABBE4() >= 1)
        {
LABEL_38:
          v84 = *&v78[v79];
          if (v84 >> 62)
          {
            v85 = sub_19A7ABBE4();
          }

          else
          {
            v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v86 = *&v78[v82];
          if (v86 >> 62)
          {
            if (v85 == sub_19A7ABBE4())
            {
              goto LABEL_42;
            }
          }

          else if (v85 == *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_42:
            v87 = v123[46];
            v88 = v123[40];
            v89 = v123[14];
            (*(v123[35] + 8))(v123[39], v123[34]);

            v121 = v78;
            goto LABEL_52;
          }
        }
      }

      else if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
        goto LABEL_38;
      }
    }

    v94 = v123[42];
    v95 = v123[34];
    v96 = v123[27];
    sub_19A60F0CC(&v78[OBJC_IVAR___STKAnimatedImage_identifier], v96, &qword_1EAFCD800);
    if (v94(v96, 1, v95) == 1)
    {
      sub_19A5F2B54(v123[27], &qword_1EAFCD800);
      v97 = 0xE300000000000000;
      v98 = 7104878;
    }

    else
    {
      v100 = v123[34];
      v99 = v123[35];
      v101 = v123[27];
      v98 = sub_19A7A8F14();
      v97 = v102;
      (*(v99 + 8))(v101, v100);
    }

    if (qword_1EAFCB1C8 != -1)
    {
      swift_once();
    }

    v103 = sub_19A7A9384();
    __swift_project_value_buffer(v103, qword_1EAFCB1D0);

    v104 = sub_19A7A9364();
    v105 = sub_19A7AB584();

    v106 = os_log_type_enabled(v104, v105);
    v107 = v123[46];
    v109 = v123[39];
    v108 = v123[40];
    v110 = v123[35];
    v120 = v123[34];
    v111 = v123[14];
    if (v106)
    {
      v122 = v78;
      v112 = swift_slowAlloc();
      v118 = v109;
      v113 = swift_slowAlloc();
      v124 = v113;
      *v112 = 136315138;
      v114 = sub_19A62540C(v98, v97, &v124);

      *(v112 + 4) = v114;
      _os_log_impl(&dword_19A5EE000, v104, v105, "Attempting to make a new animatedImage but is invalid after creation: %s", v112, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v113);
      MEMORY[0x19A907A30](v113, -1, -1);
      MEMORY[0x19A907A30](v112, -1, -1);

      (*(v110 + 8))(v118, v120);
    }

    else
    {

      (*(v110 + 8))(v109, v120);
    }

    v121 = 0;
    v1 = v123;
LABEL_52:

    v93 = v1[1];

    return v93(v121);
  }

  v36 = v1[24];
  v37 = v1[25];
  v38 = v1[23];
  v39 = v27;
  sub_19A6900A8(v39, v38);
  if ((*(v37 + 48))(v38, 1, v36) == 1)
  {
    v40 = v1[23];

    sub_19A5F2B54(v40, &qword_1EAFCDA28);
    goto LABEL_29;
  }

  v90 = v1[26];
  (*(v1[25] + 32))(v90, v1[23], v1[24]);
  v91 = swift_task_alloc();
  v1[47] = v91;
  *(v91 + 16) = v90;
  *(v91 + 24) = v39;
  v92 = swift_task_alloc();
  v1[48] = v92;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDA30);
  *v92 = v1;
  v92[1] = sub_19A68D25C;
  v50 = sub_19A6A1108;
  v51 = v1 + 12;
  v53 = 0x800000019A7C8580;
  v52 = 0xD000000000000027;
  v54 = v91;
LABEL_44:

  return MEMORY[0x1EEE6DDE0](v51, 0, 0, v52, v53, v50, v54, v49);
}

uint64_t sub_19A68D25C()
{

  return MEMORY[0x1EEE6DFA0](sub_19A68D374, 0, 0);
}

uint64_t sub_19A68D374()
{
  v116 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 112);

  v5 = *(v0 + 96);
  (*(v1 + 8))(v2, v3);

  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = OBJC_IVAR___STKAnimatedImage_images;
  v7 = *&v5[OBJC_IVAR___STKAnimatedImage_images];
  if (v7 >> 62)
  {
    if (sub_19A7ABBE4() < 1)
    {
      goto LABEL_17;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_17;
  }

  v8 = OBJC_IVAR___STKAnimatedImage_durations;
  v9 = *&v5[OBJC_IVAR___STKAnimatedImage_durations];
  if (v9 >> 62)
  {
    if (sub_19A7ABBE4() >= 1)
    {
LABEL_6:
      v10 = *&v5[v6];
      if (v10 >> 62)
      {
        v11 = sub_19A7ABBE4();
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = *&v5[v8];
      if (v12 >> 62)
      {
        if (v11 == sub_19A7ABBE4())
        {
          goto LABEL_10;
        }
      }

      else if (v11 == *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_10:
        v13 = *(v0 + 368);
        v15 = *(v0 + 312);
        v14 = *(v0 + 320);
        v16 = *(v0 + 272);
        v17 = *(v0 + 280);
        v18 = *(v0 + 112);
        [qword_1EAFDD6D8 setObject:v5 forKey:v13];

        (*(v17 + 8))(v15, v16);
        v113 = v5;
LABEL_58:

        v105 = *(v0 + 8);

        return v105(v113);
      }
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_6;
  }

LABEL_17:
  v19 = *(v0 + 336);
  v20 = *(v0 + 272);
  v21 = *(v0 + 256);
  sub_19A60F0CC(&v5[OBJC_IVAR___STKAnimatedImage_identifier], v21, &qword_1EAFCD800);
  LODWORD(v20) = v19(v21, 1, v20);
  v22 = v5;
  if (v20 == 1)
  {
    v23 = 7104878;
    sub_19A5F2B54(*(v0 + 256), &qword_1EAFCD800);
    v24 = 0xE300000000000000;
  }

  else
  {
    v25 = *(v0 + 272);
    v26 = *(v0 + 280);
    v27 = *(v0 + 256);
    v23 = sub_19A7A8F14();
    v24 = v28;
    (*(v26 + 8))(v27, v25);
  }

  if (qword_1EAFCB1C8 != -1)
  {
    swift_once();
  }

  v29 = sub_19A7A9384();
  __swift_project_value_buffer(v29, qword_1EAFCB1D0);

  v30 = sub_19A7A9364();
  v31 = sub_19A7AB584();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v115 = v33;
    *v32 = 136315138;
    v34 = sub_19A62540C(v23, v24, &v115);

    *(v32 + 4) = v34;
    _os_log_impl(&dword_19A5EE000, v30, v31, "Received invalid cached animatedImage: %s removingFromCache", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x19A907A30](v33, -1, -1);
    MEMORY[0x19A907A30](v32, -1, -1);
  }

  else
  {
  }

  v35 = *(v0 + 336);
  v36 = *(v0 + 272);
  v37 = *(v0 + 248);
  sub_19A60F0CC(*(v0 + 112) + *(v0 + 328), v37, &qword_1EAFCD800);
  if (v35(v37, 1, v36) != 1)
  {
    v48 = *(v0 + 304);
    v49 = *(v0 + 272);
    v50 = *(v0 + 280);
    (*(v0 + 352))(v48, *(v0 + 248), v49);
    sub_19A7AAF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECB0);
    v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_19A7B6C30;
    (*(v50 + 16))(v52 + v51, v48, v49);
    sub_19A68EE64(v52);

    (*(v50 + 8))(v48, v49);
    v39 = *(v0 + 104);
    if (v39)
    {
      goto LABEL_28;
    }

LABEL_32:
    v111 = *(v0 + 336);
    v53 = *(v0 + 328);
    v107 = *(v0 + 272);
    v54 = *(v0 + 224);
    v55 = *(v0 + 232);
    v56 = *(v0 + 112);
    v57 = sub_19A7AACC4();
    v59 = v58;
    sub_19A60F0CC(v56 + v53, v55, &qword_1EAFCD800);
    v109 = objc_allocWithZone(type metadata accessor for AnimatedImage());
    v60 = objc_allocWithZone(STKImageData);
    sub_19A612F68(v57, v59);
    v61 = sub_19A7A8E14();
    v62 = [v60 initWithData_];

    sub_19A612F14(v57, v59);
    v63 = [v62 thumbnailsFitToSize:60 maxCount:{CGPointMake(32.0, 32.0)}];
    v64 = sub_19A7AB254();

    sub_19A623FA4(v64);

    v65 = [v62 durationsWithMaxCount_];
    v66 = sub_19A7AB254();

    sub_19A6240A8(v66);

    sub_19A5F5028(0, &unk_1EAFCC1A0);
    v67 = sub_19A7AB234();

    sub_19A5F5028(0, &qword_1ED8B1FE0);
    v68 = sub_19A7AB234();

    sub_19A60F0CC(v55, v54, &qword_1EAFCD800);
    v69 = 0;
    if (v111(v54, 1, v107) != 1)
    {
      v70 = *(v0 + 272);
      v71 = *(v0 + 280);
      v72 = *(v0 + 224);
      v69 = sub_19A7A8F24();
      (*(v71 + 8))(v72, v70);
    }

    v73 = *(v0 + 232);
    v74 = [v109 initWithImages:v67 durations:v68 identifier:v69];

    sub_19A612F14(v57, v59);
    sub_19A5F2B54(v73, &qword_1EAFCD800);
    v75 = OBJC_IVAR___STKAnimatedImage_images;
    v76 = *&v74[OBJC_IVAR___STKAnimatedImage_images];
    if (v76 >> 62)
    {
      if (sub_19A7ABBE4() < 1)
      {
        goto LABEL_49;
      }
    }

    else if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_49;
    }

    v77 = OBJC_IVAR___STKAnimatedImage_durations;
    v78 = *&v74[OBJC_IVAR___STKAnimatedImage_durations];
    if (v78 >> 62)
    {
      if (sub_19A7ABBE4() < 1)
      {
        goto LABEL_49;
      }
    }

    else if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_49;
    }

    v79 = *&v74[v75];
    if (v79 >> 62)
    {
      v80 = sub_19A7ABBE4();
    }

    else
    {
      v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v81 = *&v74[v77];
    if (v81 >> 62)
    {
      if (v80 == sub_19A7ABBE4())
      {
        goto LABEL_42;
      }
    }

    else if (v80 == *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_42:
      v82 = *(v0 + 368);
      v83 = *(v0 + 320);
      v84 = *(v0 + 112);
      (*(*(v0 + 280) + 8))(*(v0 + 312), *(v0 + 272));

      v113 = v74;
      goto LABEL_58;
    }

LABEL_49:
    v85 = *(v0 + 336);
    v86 = *(v0 + 272);
    v87 = *(v0 + 216);
    sub_19A60F0CC(&v74[OBJC_IVAR___STKAnimatedImage_identifier], v87, &qword_1EAFCD800);
    if (v85(v87, 1, v86) == 1)
    {
      v88 = 7104878;
      sub_19A5F2B54(*(v0 + 216), &qword_1EAFCD800);
      v89 = 0xE300000000000000;
    }

    else
    {
      v91 = *(v0 + 272);
      v90 = *(v0 + 280);
      v92 = *(v0 + 216);
      v88 = sub_19A7A8F14();
      v89 = v93;
      (*(v90 + 8))(v92, v91);
    }

    if (qword_1EAFCB1C8 != -1)
    {
      swift_once();
    }

    v94 = sub_19A7A9384();
    __swift_project_value_buffer(v94, qword_1EAFCB1D0);

    v95 = sub_19A7A9364();
    v96 = sub_19A7AB584();

    v97 = os_log_type_enabled(v95, v96);
    v98 = *(v0 + 368);
    v100 = *(v0 + 312);
    v99 = *(v0 + 320);
    v101 = *(v0 + 280);
    v110 = *(v0 + 112);
    v112 = *(v0 + 272);
    if (v97)
    {
      v114 = v74;
      v102 = swift_slowAlloc();
      v108 = v100;
      v103 = swift_slowAlloc();
      v115 = v103;
      *v102 = 136315138;
      v104 = sub_19A62540C(v88, v89, &v115);

      *(v102 + 4) = v104;
      _os_log_impl(&dword_19A5EE000, v95, v96, "Attempting to make a new animatedImage but is invalid after creation: %s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      MEMORY[0x19A907A30](v103, -1, -1);
      MEMORY[0x19A907A30](v102, -1, -1);

      (*(v101 + 8))(v108, v112);
    }

    else
    {

      (*(v101 + 8))(v100, v112);
    }

    v113 = 0;
    goto LABEL_58;
  }

  v38 = *(v0 + 248);

  sub_19A5F2B54(v38, &qword_1EAFCD800);
LABEL_27:
  v39 = *(v0 + 104);
  if (!v39)
  {
    goto LABEL_32;
  }

LABEL_28:
  v40 = *(v0 + 408);
  v41 = *(v0 + 320);
  v43 = *(v0 + 112);
  v42 = *(v0 + 120);
  *(v0 + 64) = xmmword_19A7BB5E0;
  v44 = swift_task_alloc();
  *(v0 + 392) = v44;
  *(v44 + 16) = v40;
  *(v44 + 24) = v42;
  *(v44 + 32) = v39;
  *(v44 + 40) = v43;
  *(v44 + 48) = v41;
  *(v44 + 56) = v0 + 64;
  v45 = v39;
  v46 = swift_task_alloc();
  *(v0 + 400) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDA30);
  *v46 = v0;
  v46[1] = sub_19A68DFD8;

  return MEMORY[0x1EEE6DDE0](v0 + 80, 0, 0, 0xD00000000000002CLL, 0x800000019A7C8550, sub_19A6A10E8, v44, v47);
}

uint64_t sub_19A68DFD8()
{

  return MEMORY[0x1EEE6DFA0](sub_19A68E0F0, 0, 0);
}

uint64_t sub_19A68E0F0()
{
  v131 = v0;
  v1 = *(v0 + 80);
  if (!v1)
  {

    goto LABEL_32;
  }

  v2 = OBJC_IVAR___STKAnimatedImage_images;
  v3 = *&v1[OBJC_IVAR___STKAnimatedImage_images];
  if (v3 >> 62)
  {
    if (sub_19A7ABBE4() < 1)
    {
      goto LABEL_24;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_24;
  }

  v4 = OBJC_IVAR___STKAnimatedImage_durations;
  v5 = *&v1[OBJC_IVAR___STKAnimatedImage_durations];
  if (v5 >> 62)
  {
    if (sub_19A7ABBE4() >= 1)
    {
LABEL_6:
      v6 = *&v1[v2];
      if (v6 >> 62)
      {
        v7 = sub_19A7ABBE4();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = *&v1[v4];
      if (v8 >> 62)
      {
        if (v7 == sub_19A7ABBE4())
        {
LABEL_10:
          v9 = *(v0 + 368);
          v10 = *(v0 + 408);
          v11 = qword_1EAFDD6D8;
          v12 = v1;
          [v11 setObject:v12 forKey:v9];
          v127 = v1;
          if ((v10 & 1) != 0 || (v13 = *(v0 + 72), v13 >> 60 == 15))
          {
            v14 = *(v0 + 104);
          }

          else
          {
            v15 = *(v0 + 64);
            sub_19A612F68(v15, *(v0 + 72));
            if (qword_1EAFCA620 != -1)
            {
              swift_once();
            }

            v16 = *(v0 + 176);
            v119 = *(v0 + 168);
            v123 = *(v0 + 160);
            v112 = *(v0 + 152);
            v113 = *(v0 + 136);
            v17 = *(v0 + 128);
            v18 = *(v0 + 112);
            v114 = *(v0 + 144);
            v116 = *(v0 + 104);
            v19 = swift_allocObject();
            v19[2] = v15;
            v19[3] = v13;
            v19[4] = v18;
            v19[5] = v17;
            *(v0 + 48) = sub_19A6A10FC;
            *(v0 + 56) = v19;
            *(v0 + 16) = MEMORY[0x1E69E9820];
            *(v0 + 24) = 1107296256;
            *(v0 + 32) = sub_19A6815D4;
            *(v0 + 40) = &block_descriptor_87;
            v20 = _Block_copy((v0 + 16));
            v21 = v18;
            sub_19A69E0F4(v15, v13);
            sub_19A7AA784();
            *(v0 + 88) = MEMORY[0x1E69E7CC0];
            sub_19A6A1110(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
            sub_19A623714(&qword_1ED8B2090, &unk_1EAFCECD0);
            sub_19A7ABB54();
            MEMORY[0x19A905BE0](0, v16, v112, v20);

            _Block_release(v20);
            sub_19A612F00(v15, v13);
            (*(v114 + 8))(v112, v113);
            v119[1](v16, v123);
          }

          v22 = *(v0 + 368);
          v23 = *(v0 + 312);
          v24 = *(v0 + 320);
          v25 = *(v0 + 272);
          v26 = *(v0 + 280);
          v27 = *(v0 + 112);
          sub_19A612F00(*(v0 + 64), *(v0 + 72));

          (*(v26 + 8))(v23, v25);
          goto LABEL_58;
        }
      }

      else if (v7 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_6;
  }

LABEL_24:
  v28 = *(v0 + 336);
  v29 = *(v0 + 272);
  v30 = *(v0 + 240);
  sub_19A60F0CC(&v1[OBJC_IVAR___STKAnimatedImage_identifier], v30, &qword_1EAFCD800);
  if (v28(v30, 1, v29) == 1)
  {
    v31 = *(v0 + 240);
    v32 = *(v0 + 104);

    sub_19A5F2B54(v31, &qword_1EAFCD800);
  }

  else
  {
    (*(v0 + 352))(*(v0 + 296), *(v0 + 240), *(v0 + 272));
    v33 = qword_1EAFCB1C8;
    v34 = v1;
    if (v33 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 288);
    v35 = *(v0 + 296);
    v37 = *(v0 + 272);
    v38 = *(v0 + 280);
    v39 = sub_19A7A9384();
    __swift_project_value_buffer(v39, qword_1EAFCB1D0);
    v128 = *(v38 + 16);
    v128(v36, v35, v37);
    v40 = sub_19A7A9364();
    v41 = sub_19A7AB584();
    v42 = os_log_type_enabled(v40, v41);
    v43 = *(v0 + 280);
    v44 = *(v0 + 288);
    v45 = *(v0 + 272);
    if (v42)
    {
      v46 = swift_slowAlloc();
      v120 = v34;
      v47 = swift_slowAlloc();
      v130 = v47;
      *v46 = 136315138;
      v115 = sub_19A7A8F14();
      v49 = v48;
      v124 = *(v43 + 8);
      v124(v44, v45);
      v50 = sub_19A62540C(v115, v49, &v130);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_19A5EE000, v40, v41, "Received invalid cached animatedImage after creation: %s: removingFromCache", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      v51 = v47;
      v34 = v120;
      MEMORY[0x19A907A30](v51, -1, -1);
      MEMORY[0x19A907A30](v46, -1, -1);
    }

    else
    {

      v124 = *(v43 + 8);
      v124(v44, v45);
    }

    v52 = *(v0 + 296);
    v54 = *(v0 + 272);
    v53 = *(v0 + 280);
    v55 = *(v0 + 104);
    sub_19A7AAF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECB0);
    v56 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_19A7B6C30;
    v128(v57 + v56, v52, v54);
    sub_19A68EE64(v57);

    v124(v52, v54);
  }

LABEL_32:
  sub_19A612F00(*(v0 + 64), *(v0 + 72));
  v125 = *(v0 + 336);
  v58 = *(v0 + 328);
  v117 = *(v0 + 272);
  v59 = *(v0 + 224);
  v60 = *(v0 + 232);
  v61 = *(v0 + 112);
  v62 = sub_19A7AACC4();
  v64 = v63;
  sub_19A60F0CC(v61 + v58, v60, &qword_1EAFCD800);
  v121 = objc_allocWithZone(type metadata accessor for AnimatedImage());
  v65 = objc_allocWithZone(STKImageData);
  sub_19A612F68(v62, v64);
  v66 = sub_19A7A8E14();
  v67 = [v65 initWithData_];

  sub_19A612F14(v62, v64);
  v68 = [v67 thumbnailsFitToSize:60 maxCount:{CGPointMake(32.0, 32.0)}];
  v69 = sub_19A7AB254();

  sub_19A623FA4(v69);

  v70 = [v67 durationsWithMaxCount_];
  v71 = sub_19A7AB254();

  sub_19A6240A8(v71);

  sub_19A5F5028(0, &unk_1EAFCC1A0);
  v72 = sub_19A7AB234();

  sub_19A5F5028(0, &qword_1ED8B1FE0);
  v73 = sub_19A7AB234();

  sub_19A60F0CC(v60, v59, &qword_1EAFCD800);
  v74 = 0;
  if (v125(v59, 1, v117) != 1)
  {
    v75 = *(v0 + 272);
    v76 = *(v0 + 280);
    v77 = *(v0 + 224);
    v74 = sub_19A7A8F24();
    (*(v76 + 8))(v77, v75);
  }

  v78 = *(v0 + 232);
  v79 = [v121 initWithImages:v72 durations:v73 identifier:v74];

  sub_19A612F14(v62, v64);
  sub_19A5F2B54(v78, &qword_1EAFCD800);
  v80 = OBJC_IVAR___STKAnimatedImage_images;
  v81 = *&v79[OBJC_IVAR___STKAnimatedImage_images];
  if (v81 >> 62)
  {
    if (sub_19A7ABBE4() < 1)
    {
      goto LABEL_49;
    }
  }

  else if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_49;
  }

  v82 = OBJC_IVAR___STKAnimatedImage_durations;
  v83 = *&v79[OBJC_IVAR___STKAnimatedImage_durations];
  if (v83 >> 62)
  {
    if (sub_19A7ABBE4() < 1)
    {
      goto LABEL_49;
    }
  }

  else if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_49;
  }

  v84 = *&v79[v80];
  if (v84 >> 62)
  {
    v85 = sub_19A7ABBE4();
  }

  else
  {
    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v86 = *&v79[v82];
  if (v86 >> 62)
  {
    if (v85 == sub_19A7ABBE4())
    {
      goto LABEL_42;
    }
  }

  else if (v85 == *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_42:
    v87 = *(v0 + 368);
    v88 = *(v0 + 320);
    v89 = *(v0 + 112);
    (*(*(v0 + 280) + 8))(*(v0 + 312), *(v0 + 272));

    v127 = v79;
    goto LABEL_58;
  }

LABEL_49:
  v90 = *(v0 + 336);
  v91 = *(v0 + 272);
  v92 = *(v0 + 216);
  sub_19A60F0CC(&v79[OBJC_IVAR___STKAnimatedImage_identifier], v92, &qword_1EAFCD800);
  if (v90(v92, 1, v91) == 1)
  {
    sub_19A5F2B54(*(v0 + 216), &qword_1EAFCD800);
    v93 = 0xE300000000000000;
    v94 = 7104878;
  }

  else
  {
    v96 = *(v0 + 272);
    v95 = *(v0 + 280);
    v97 = *(v0 + 216);
    v94 = sub_19A7A8F14();
    v93 = v98;
    (*(v95 + 8))(v97, v96);
  }

  if (qword_1EAFCB1C8 != -1)
  {
    swift_once();
  }

  v99 = sub_19A7A9384();
  __swift_project_value_buffer(v99, qword_1EAFCB1D0);

  v100 = sub_19A7A9364();
  v101 = sub_19A7AB584();

  v102 = os_log_type_enabled(v100, v101);
  v103 = *(v0 + 368);
  v105 = *(v0 + 312);
  v104 = *(v0 + 320);
  v106 = *(v0 + 280);
  v122 = *(v0 + 112);
  v126 = *(v0 + 272);
  if (v102)
  {
    v129 = v79;
    v107 = swift_slowAlloc();
    v118 = v105;
    v108 = swift_slowAlloc();
    v130 = v108;
    *v107 = 136315138;
    v109 = sub_19A62540C(v94, v93, &v130);

    *(v107 + 4) = v109;
    _os_log_impl(&dword_19A5EE000, v100, v101, "Attempting to make a new animatedImage but is invalid after creation: %s", v107, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v108);
    MEMORY[0x19A907A30](v108, -1, -1);
    MEMORY[0x19A907A30](v107, -1, -1);

    (*(v106 + 8))(v118, v126);
  }

  else
  {

    (*(v106 + 8))(v105, v126);
  }

  v127 = 0;
LABEL_58:

  v110 = *(v0 + 8);

  return v110(v127);
}

uint64_t sub_19A68EE64(uint64_t a1)
{
  v3 = sub_19A7AA764();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_19A7AA7B4();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAFCA620 != -1)
  {
    swift_once();
  }

  v13[1] = qword_1EAFDD4F8;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_19A6A1158;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_94;
  v11 = _Block_copy(aBlock);

  sub_19A7AA784();
  v15 = MEMORY[0x1E69E7CC0];
  sub_19A6A1110(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A623714(&qword_1ED8B2090, &unk_1EAFCECD0);
  sub_19A7ABB54();
  MEMORY[0x19A905BE0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_19A68F168(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7)
{
  v58 = a5;
  v11 = sub_19A7AA764();
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19A7AA7B4();
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA40);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - v18;
  if (a2)
  {
    v20 = sub_19A7AACC4();
    v22 = v21;
    (*(v17 + 16))(v19, a1, v16);
    v23 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v24 = swift_allocObject();
    (*(v17 + 32))(v24 + v23, v19, v16);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (qword_1EAFCA620 != -1)
    {
      swift_once();
    }

    v57 = qword_1EAFDD4F8;
    v26 = swift_allocObject();
    v56 = v25;
    v27 = v58;
    v26[2] = v25;
    v26[3] = v27;
    v26[4] = sub_19A6A11EC;
    v26[5] = v24;
    v26[6] = v20;
    v26[7] = v22;
    v69 = sub_19A6A1674;
    v70 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v66 = 1107296256;
    v67 = sub_19A6815D4;
    v68 = &block_descriptor_117;
    v28 = _Block_copy(&aBlock);

    v29 = v27;

    sub_19A612F68(v20, v22);
    sub_19A7AA784();
    v64 = MEMORY[0x1E69E7CC0];
    sub_19A6A1110(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
    v30 = v22;
    v31 = v15;
    sub_19A623714(&qword_1ED8B2090, &unk_1EAFCECD0);
    v32 = v59;
    v33 = v63;
    sub_19A7ABB54();
    MEMORY[0x19A905BE0](0, v31, v32, v28);
    _Block_release(v28);

    sub_19A612F14(v20, v30);
    (*(v62 + 8))(v32, v33);
    (*(v60 + 8))(v31, v61);
    goto LABEL_11;
  }

  v56 = a4;
  v57 = v15;
  v34 = objc_opt_self();
  v35 = sub_19A7AACC4();
  v37 = v36;
  v38 = sub_19A7A8E14();
  sub_19A612F14(v35, v37);
  v39 = ITKMainScreenScale() * 32.0;
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v39 < 9.22337204e18)
  {
    v40 = [v34 downSampledHeicsDataFromData:v38 maxLength:v39];

    v41 = sub_19A7A8E34();
    v43 = v42;

    v44 = *a7;
    v45 = a7[1];
    *a7 = v41;
    a7[1] = v43;
    result = sub_19A612F00(v44, v45);
    v34 = a7[1];
    if (v34 >> 60 == 15)
    {
      return result;
    }

    v38 = *a7;
    (*(v17 + 16))(v19, a1, v16);
    v47 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    a1 = swift_allocObject();
    (*(v17 + 32))(a1 + v47, v19, v16);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_19A612F68(v38, v34);
    if (qword_1EAFCA620 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  swift_once();
LABEL_10:
  v56 = qword_1EAFDD4F8;
  v48 = swift_allocObject();
  v55 = v16;
  v49 = v58;
  v48[2] = v16;
  v48[3] = v49;
  v48[4] = sub_19A6A11D0;
  v48[5] = a1;
  v48[6] = v38;
  v48[7] = v34;
  v69 = sub_19A6A11E8;
  v70 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v66 = 1107296256;
  v67 = sub_19A6815D4;
  v68 = &block_descriptor_106;
  v50 = _Block_copy(&aBlock);
  v51 = v49;
  sub_19A69E0F4(v38, v34);

  v52 = v57;
  sub_19A7AA784();
  v64 = MEMORY[0x1E69E7CC0];
  sub_19A6A1110(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A623714(&qword_1ED8B2090, &unk_1EAFCECD0);
  v53 = v59;
  v54 = v63;
  sub_19A7ABB54();
  MEMORY[0x19A905BE0](0, v52, v53, v50);
  _Block_release(v50);

  sub_19A612F00(v38, v34);
  (*(v62 + 8))(v53, v54);
  (*(v60 + 8))(v52, v61);
LABEL_11:
}

uint64_t sub_19A68F9AC(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA40);
  return sub_19A7AB304();
}

uint64_t sub_19A68F9FC(void *a1)
{
  if (a1)
  {
    sub_19A6239D0();
  }

  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA40);
  return sub_19A7AB304();
}

void *sub_19A68FA5C(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = sub_19A7A8D44();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_19A7A8DF4();
  v6 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_19A7A8F64();
  v9 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_19A69F360();
  if (result)
  {
    v66 = v8;
    v13 = *(a2 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v56 = result;
      v57 = v6;
      v58 = v4;
      v59 = v3;
      v69 = MEMORY[0x1E69E7CC0];
      sub_19A5F6074(0, v13, 0);
      v14 = v69;
      v16 = *(v9 + 16);
      v15 = v9 + 16;
      v17 = a2 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v60 = *(v15 + 56);
      v61 = v16;
      v62 = v15;
      v18 = (v15 - 8);
      do
      {
        v19 = v63;
        v61(v11, v17, v63);
        v20 = sub_19A7A8F14();
        v22 = v21;
        (*v18)(v11, v19);
        v69 = v14;
        v24 = *(v14 + 16);
        v23 = *(v14 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_19A5F6074((v23 > 1), v24 + 1, 1);
          v14 = v69;
        }

        *(v14 + 16) = v24 + 1;
        v25 = v14 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        v17 += v60;
        --v13;
      }

      while (v13);
      v4 = v58;
      v3 = v59;
      v6 = v57;
      result = v56;
    }

    v26 = sub_19A69DDE4(result);

    v68 = v26;
    sub_19A69002C(v14);

    if (qword_1EAFCB1C8 != -1)
    {
      swift_once();
    }

    v27 = sub_19A7A9384();
    __swift_project_value_buffer(v27, qword_1EAFCB1D0);
    v28 = v68;

    v29 = sub_19A7A9364();
    v30 = sub_19A7AB564();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = *(v28 + 16);

      _os_log_impl(&dword_19A5EE000, v29, v30, "Removing %ld cached animated identifiers.", v31, 0xCu);
      MEMORY[0x19A907A30](v31, -1, -1);
    }

    else
    {
    }

    v32 = v66;
    v33 = -1 << *(v28 + 32);
    v34 = *(v28 + 56);
    v35 = ~v33;
    v36 = -v33;
    v69 = v28;
    v70 = v28 + 56;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v71 = v35;
    v72 = 0;
    v73 = v37 & v34;
    v74 = 0;
    sub_19A681618();
    if (v39)
    {
      v40 = v38;
      v41 = v39;
      v42 = *MEMORY[0x1E6968F70];
      v43 = (v4 + 104);
      v44 = (v4 + 8);
      v45 = (v6 + 8);
      do
      {
        sub_19A6906D0(v32);
        v67[0] = v40;
        v67[1] = v41;
        v50 = v65;
        (*v43)(v65, v42, v3);
        sub_19A639920();
        sub_19A7A8DC4();
        (*v44)(v50, v3);

        sub_19A7A8D74();
        v51 = [objc_opt_self() defaultManager];
        sub_19A7A8DB4();
        v52 = sub_19A7AAFE4();

        v67[0] = 0;
        v53 = [v51 removeItemAtPath:v52 error:v67];

        if (v53)
        {
          v54 = v67[0];
        }

        else
        {
          v46 = v67[0];
          v47 = sub_19A7A8D34();

          swift_willThrow();
        }

        v32 = v66;
        (*v45)(v66, v64);
        sub_19A681618();
        v40 = v48;
        v41 = v49;
      }

      while (v49);
    }

    return sub_19A62B858();
  }

  return result;
}

uint64_t sub_19A69002C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = *(result + 16);
    if (v2)
    {
      v3 = (result + 40);
      do
      {
        v5 = *(v3 - 1);
        v4 = *v3;

        sub_19A69B5D0(v5, v4);

        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_19A6900A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_19A7A8D44();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  sub_19A60F0CC(a1 + OBJC_IVAR___STKImageGlyph_stickerUUID, v19 - v9, &qword_1EAFCD800);
  v11 = sub_19A7A8F64();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_19A5F2B54(v10, &qword_1EAFCD800);
    v13 = 1;
  }

  else
  {
    v14 = sub_19A7A8F14();
    v16 = v15;
    (*(v12 + 8))(v10, v11);
    sub_19A6906D0(a2);
    v19[0] = v14;
    v19[1] = v16;
    (*(v5 + 104))(v7, *MEMORY[0x1E6968F70], v4);
    sub_19A639920();
    sub_19A7A8DC4();
    (*(v5 + 8))(v7, v4);

    sub_19A7A8D74();
    v13 = 0;
  }

  v17 = sub_19A7A8DF4();
  return (*(*(v17 - 8) + 56))(a2, v13, 1, v17);
}

uint64_t sub_19A69034C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v26 - v10;
  v12 = sub_19A7A8DF4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a2, v12);
  sub_19A60F0CC(a3 + OBJC_IVAR___STKImageGlyph_stickerUUID, v11, &qword_1EAFCD800);
  v16 = objc_allocWithZone(type metadata accessor for AnimatedImage());
  v17 = sub_19A7A8E04();
  v26[1] = a1;
  v27 = v18;
  v28 = v17;
  v19 = sub_19A7A8E14();
  sub_19A60F0CC(v11, v9, &qword_1EAFCD800);
  v20 = sub_19A7A8F64();
  v21 = *(v20 - 8);
  v22 = 0;
  if ((*(v21 + 48))(v9, 1, v20) != 1)
  {
    v22 = sub_19A7A8F24();
    (*(v21 + 8))(v9, v20);
  }

  v23 = [v16 initWithData:v19 maxCount:60 maxDimension:v22 identifier:0.0];
  sub_19A612F14(v28, v27);

  sub_19A5F2B54(v11, &qword_1EAFCD800);
  (*(v13 + 8))(v15, v12);
  if (v23)
  {
    v24 = v23;
    sub_19A6239D0();
  }

  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA40);
  return sub_19A7AB304();
}

uint64_t sub_19A6906D0@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_19A7A8D44();
  v27 = *(v1 - 8);
  v2 = v27;
  v28 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA28);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_19A7A8DF4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = NSTemporaryDirectory();
  sub_19A7AB014();

  v29 = v9;
  (*(v9 + 56))(v7, 1, 1, v8);
  v13 = *MEMORY[0x1E6968F70];
  v14 = *(v2 + 104);
  v15 = v28;
  v14(v4, v13, v28);
  sub_19A7A8DE4();
  strcpy(v31, "animatedImages");
  HIBYTE(v31[1]) = -18;
  v14(v4, v13, v15);
  v16 = v8;
  sub_19A639920();
  sub_19A7A8DC4();
  (*(v27 + 8))(v4, v15);
  if ((byte_1EAFCA618 & 1) == 0)
  {
    if ([objc_opt_self() isInternalBuild])
    {
      if (qword_1EAFCB1C8 != -1)
      {
        swift_once();
      }

      v17 = sub_19A7A9384();
      __swift_project_value_buffer(v17, qword_1EAFCB1D0);
      v18 = sub_19A7A9364();
      v19 = sub_19A7AB5A4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v31[0] = v21;
        *v20 = 136315138;
        swift_beginAccess();
        sub_19A6A1110(&qword_1EAFCB098, MEMORY[0x1E6968FB0]);
        v22 = sub_19A7AC024();
        v24 = sub_19A62540C(v22, v23, v31);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_19A5EE000, v18, v19, "base cached animated image URL: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x19A907A30](v21, -1, -1);
        MEMORY[0x19A907A30](v20, -1, -1);
      }
    }

    byte_1EAFCA618 = 1;
  }

  swift_beginAccess();
  v25 = v29;
  (*(v29 + 16))(v30, v11, v16);
  return (*(v25 + 8))(v11, v16);
}

uint64_t sub_19A690B38(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 48) = a3;
  *(v5 + 56) = v4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 24) = a4;
  v6 = sub_19A7A9304();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A690C0C, 0, 0);
}

uint64_t sub_19A690C0C()
{
  v1 = sub_19A7AACF4();
  v3 = v2;
  if (v1 == sub_19A7AAC94() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_19A7AC064();

    if ((v6 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v8 = *(v0 + 10);
  v7 = *(v0 + 11);
  v9 = *(v0 + 8);
  v10 = *(v0 + 9);
  sub_19A7AAC74();
  sub_19A7A92D4();
  v11 = sub_19A7A9294();
  v12 = *(v10 + 8);
  v12(v8, v9);
  v12(v7, v9);
  if ((v11 & 1) == 0)
  {
LABEL_14:
    v31 = sub_19A7AACF4();
    v33 = v32;
    if (v31 == sub_19A7AAC84() && v33 == v34)
    {

      goto LABEL_24;
    }

    v35 = sub_19A7AC064();

    if (v35)
    {
LABEL_24:
      v51 = *(v0 + 3);
      v52 = sub_19A7AACC4();
      v54 = v53;
      v55 = sub_19A7A8E14();
      sub_19A612F14(v52, v54);
      ImageFromData = _UIStickerCreateImageFromData();
      *(v0 + 12) = ImageFromData;

      v18 = ImageFromData;
      if ((v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v57 = v0[3];
        if (v57 > -9.22337204e18)
        {
          if (v57 < 9.22337204e18)
          {
            v58 = v18;
            DownsampledImage = _UIStickerCreateDownsampledImage();
            *(v0 + 13) = DownsampledImage;
            v60 = DownsampledImage;
            v61 = [objc_opt_self() itk:v60 imageWithCGImage:?];
            *(v0 + 14) = v61;
            if (v61)
            {
              v62 = v61;
              v63 = *(v0 + 4);
              v64 = swift_task_alloc();
              *(v0 + 15) = v64;
              *(v64 + 16) = v63;
              *(v64 + 24) = v62;
              v65 = swift_task_alloc();
              *(v0 + 16) = v65;
              v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD7F8);
              *v65 = v0;
              v65[1] = sub_19A691154;
              v23 = sub_19A6A16A0;
              v21 = 0x707041636E797361;
              v22 = 0xEF293A6F7428796CLL;
              v18 = v0 + 2;
              v19 = 0;
              v20 = 0;
              v24 = v64;

              return MEMORY[0x1EEE6DE38](v18, v19, v20, v21, v22, v23, v24, v25);
            }

            goto LABEL_32;
          }

          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v36 = sub_19A7AACF4();
    v38 = v37;
    if (v36 == sub_19A7AACB4() && v38 == v39)
    {
    }

    else
    {
      v40 = sub_19A7AC064();

      if ((v40 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v42 = *(v0 + 10);
    v41 = *(v0 + 11);
    v43 = *(v0 + 8);
    v44 = *(v0 + 9);
    sub_19A7AAC74();
    sub_19A7A92A4();
    v45 = sub_19A7A9294();
    v46 = *(v44 + 8);
    v46(v42, v43);
    v46(v41, v43);
    if (v45)
    {
      goto LABEL_24;
    }

    v48 = *(v0 + 10);
    v47 = *(v0 + 11);
    v49 = *(v0 + 8);
    sub_19A7AAC74();
    sub_19A7A92B4();
    v50 = sub_19A7A9294();
    v46(v48, v49);
    v46(v47, v49);
    if (v50)
    {
      goto LABEL_24;
    }

LABEL_36:
    v28 = sub_19A7AACC4();
    v30 = v68;
    goto LABEL_33;
  }

  v13 = *(v0 + 3);
  v14 = sub_19A7AACC4();
  v16 = v15;
  v17 = sub_19A7A8E14();
  v18 = sub_19A612F14(v14, v16);
  if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v26 = v0[3];
  if (v26 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
    return MEMORY[0x1EEE6DE38](v18, v19, v20, v21, v22, v23, v24, v25);
  }

  v27 = _UIStickerCreateDownsampledHEICS();

  if (!v27)
  {
LABEL_32:
    v28 = 0;
    v30 = 0xF000000000000000;
    goto LABEL_33;
  }

  v28 = sub_19A7A8E34();
  v30 = v29;

LABEL_33:

  v66 = *(v0 + 1);

  return v66(v28, v30);
}

uint64_t sub_19A691154()
{

  if (v0)
  {

    v1 = sub_19A6919F8;
  }

  else
  {

    v1 = sub_19A69129C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_19A69129C()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v92 = 0;
LABEL_20:
    v11 = 0;
    v13 = 0xF000000000000000;
    goto LABEL_21;
  }

  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = v1;
  sub_19A7AAC74();
  sub_19A7A92A4();
  v7 = sub_19A7A9294();
  v8 = *(v5 + 8);
  v8(v3, v4);
  v8(v2, v4);
  if (v7)
  {
    v9 = *(v0 + 48);
    v10 = [v6 itk_PNGData];
    v11 = sub_19A7A8E34();
    v13 = v12;

    if (v9 >> 60 == 15)
    {
      v15 = *(v0 + 96);
      v14 = *(v0 + 104);

LABEL_15:
      goto LABEL_38;
    }

    v27 = *(v0 + 40);
    v26 = *(v0 + 48);
    sub_19A612F68(v11, v13);
    sub_19A612F68(v11, v13);
    sub_19A69E0F4(v27, v26);
  }

  else
  {
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 64);
    sub_19A7AAC74();
    sub_19A7A92B4();
    v19 = sub_19A7A9294();
    v8(v17, v18);
    v8(v16, v18);
    if ((v19 & 1) == 0)
    {
LABEL_19:
      v92 = v1;

      goto LABEL_20;
    }

    v20 = *(v0 + 48);
    v21 = [v6 itk_HEICData];
    v11 = sub_19A7A8E34();
    v13 = v22;

    if (v20 >> 60 == 15)
    {
      v24 = *(v0 + 104);
      v23 = *(v0 + 112);
      v25 = *(v0 + 96);

      v6 = v23;
      goto LABEL_38;
    }

    v29 = *(v0 + 40);
    v28 = *(v0 + 48);
    sub_19A612F68(v11, v13);
    sub_19A69E0F4(v29, v28);
    sub_19A612F68(v11, v13);
  }

  v30 = sub_19A7A8E14();
  v31 = CGImageSourceCreateWithData(v30, 0);

  v33 = *(v0 + 40);
  v32 = *(v0 + 48);
  if (!v31)
  {
    sub_19A612F14(v11, v13);
    sub_19A612F00(v33, v32);
LABEL_18:
    sub_19A612F14(v11, v13);
    sub_19A612F14(v11, v13);
    goto LABEL_19;
  }

  sub_19A612F68(*(v0 + 40), *(v0 + 48));
  v34 = _s10StickerKit19EmojiMetadataHelperC18metadataDictionary8fromDataSDySSypGSg10Foundation0I0VSg_tFZ_0(v33, v32);
  sub_19A612F00(v33, v32);
  v36 = *(v0 + 40);
  v35 = *(v0 + 48);
  if (!v34)
  {
    sub_19A612F14(v11, v13);
    sub_19A612F00(v36, v35);

    goto LABEL_18;
  }

  v92 = v1;
  v37 = sub_19A7472D0(v31);
  v39 = v38;
  sub_19A612F14(v11, v13);
  sub_19A612F00(v36, v35);

  sub_19A612F14(v11, v13);
  sub_19A612F14(v11, v13);
  v11 = v37;
  v13 = v39;

  if (v39 >> 60 != 15)
  {
    v15 = *(v0 + 96);
    v14 = *(v0 + 104);
    goto LABEL_15;
  }

LABEL_21:
  v41 = *(v0 + 80);
  v40 = *(v0 + 88);
  v42 = *(v0 + 64);
  v43 = *(v0 + 72);
  sub_19A7AAC74();
  sub_19A7A92A4();
  v44 = sub_19A7A9294();
  v45 = *(v43 + 8);
  v45(v41, v42);
  v45(v40, v42);
  if (v44)
  {
    v46 = *(v0 + 48);
    v47 = [*(v0 + 112) itk_PNGData];
    v48 = sub_19A7A8E34();
    v50 = v49;

    if (v46 >> 60 == 15)
    {
LABEL_36:
      v71 = v92;
      goto LABEL_37;
    }

    v52 = *(v0 + 40);
    v51 = *(v0 + 48);
    sub_19A612F68(v48, v50);
    sub_19A69E0F4(v52, v51);
    sub_19A612F68(v48, v50);
    v53 = sub_19A7A8E14();
    v54 = CGImageSourceCreateWithData(v53, 0);

    v56 = *(v0 + 40);
    v55 = *(v0 + 48);
    if (v54)
    {
      sub_19A612F68(*(v0 + 40), *(v0 + 48));
      v57 = _s10StickerKit19EmojiMetadataHelperC18metadataDictionary8fromDataSDySSypGSg10Foundation0I0VSg_tFZ_0(v56, v55);
      sub_19A612F00(v56, v55);
      v59 = *(v0 + 40);
      v58 = *(v0 + 48);
      if (v57)
      {
        v90 = *(v0 + 48);
        v60 = sub_19A7472D0(v54);
        v62 = v61;
        sub_19A612F14(v48, v50);
        sub_19A612F00(v59, v90);

LABEL_35:
        sub_19A612F14(v48, v50);
        sub_19A612F14(v48, v50);
        v48 = v60;
        v50 = v62;
        goto LABEL_36;
      }

      sub_19A612F14(v48, v50);
      sub_19A612F00(v59, v58);
    }

    else
    {
      sub_19A612F14(v48, v50);
      sub_19A612F00(v56, v55);
    }

    v60 = 0;
    v62 = 0xF000000000000000;
    goto LABEL_35;
  }

  v64 = *(v0 + 80);
  v63 = *(v0 + 88);
  v65 = *(v0 + 64);
  sub_19A7AAC74();
  sub_19A7A92B4();
  v66 = sub_19A7A9294();
  v45(v64, v65);
  v45(v63, v65);
  v67 = *(v0 + 112);
  if ((v66 & 1) == 0)
  {
    v84 = *(v0 + 96);

    v6 = v92;
    goto LABEL_38;
  }

  v68 = *(v0 + 48);
  v69 = [*(v0 + 112) itk_HEICData];
  v48 = sub_19A7A8E34();
  v50 = v70;

  v71 = v92;
  if (v68 >> 60 != 15)
  {
    v73 = *(v0 + 40);
    v72 = *(v0 + 48);
    sub_19A612F68(v48, v50);
    sub_19A69E0F4(v73, v72);
    sub_19A612F68(v48, v50);
    v74 = sub_19A7A8E14();
    v75 = CGImageSourceCreateWithData(v74, 0);

    v77 = *(v0 + 40);
    v76 = *(v0 + 48);
    if (v75)
    {
      sub_19A612F68(v77, v76);
      v78 = _s10StickerKit19EmojiMetadataHelperC18metadataDictionary8fromDataSDySSypGSg10Foundation0I0VSg_tFZ_0(v77, v76);
      sub_19A612F00(v77, v76);
      v80 = *(v0 + 40);
      v79 = *(v0 + 48);
      if (v78)
      {
        v91 = *(v0 + 48);
        v81 = sub_19A7472D0(v75);
        v83 = v82;
        sub_19A612F14(v48, v50);
        sub_19A612F00(v80, v91);
      }

      else
      {
        sub_19A612F14(v48, v50);
        sub_19A612F00(v80, v79);

        v81 = 0;
        v83 = 0xF000000000000000;
      }

      v71 = v92;
    }

    else
    {
      sub_19A612F14(v48, v50);
      sub_19A612F00(v77, v76);
      v81 = 0;
      v83 = 0xF000000000000000;
    }

    sub_19A612F14(v48, v50);
    sub_19A612F14(v48, v50);
    v48 = v81;
    v50 = v83;
  }

LABEL_37:
  v86 = *(v0 + 104);
  v85 = *(v0 + 112);
  v87 = *(v0 + 96);
  sub_19A612F00(v11, v13);

  v6 = v71;
  v11 = v48;
  v13 = v50;
LABEL_38:

  v88 = *(v0 + 8);

  return v88(v11, v13);
}

uint64_t sub_19A6919F8()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  sub_19A7AAC74();
  sub_19A7A92A4();
  v5 = sub_19A7A9294();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = *(v0 + 48);
    v8 = [*(v0 + 112) itk_PNGData];
  }

  else
  {
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    v11 = *(v0 + 64);
    sub_19A7AAC74();
    sub_19A7A92B4();
    v12 = sub_19A7A9294();
    v6(v10, v11);
    v6(v9, v11);
    v13 = *(v0 + 112);
    if ((v12 & 1) == 0)
    {
      v15 = 0;
      v32 = *(v0 + 96);
      v17 = 0xF000000000000000;

      goto LABEL_15;
    }

    v7 = *(v0 + 48);
    v8 = [*(v0 + 112) itk_HEICData];
  }

  v14 = v8;
  v15 = sub_19A7A8E34();
  v17 = v16;

  if (v7 >> 60 != 15)
  {
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
    sub_19A612F68(v15, v17);
    sub_19A69E0F4(v19, v18);
    sub_19A612F68(v15, v17);
    v20 = sub_19A7A8E14();
    v21 = CGImageSourceCreateWithData(v20, 0);

    v23 = *(v0 + 40);
    v22 = *(v0 + 48);
    if (v21)
    {
      sub_19A612F68(*(v0 + 40), *(v0 + 48));
      v24 = _s10StickerKit19EmojiMetadataHelperC18metadataDictionary8fromDataSDySSypGSg10Foundation0I0VSg_tFZ_0(v23, v22);
      sub_19A612F00(v23, v22);
      v26 = *(v0 + 40);
      v25 = *(v0 + 48);
      if (v24)
      {
        v27 = sub_19A7472D0(v21);
        v29 = v28;
        sub_19A612F14(v15, v17);
        sub_19A612F00(v26, v25);

LABEL_13:
        sub_19A612F14(v15, v17);
        sub_19A612F14(v15, v17);
        v15 = v27;
        v17 = v29;
        goto LABEL_14;
      }

      sub_19A612F14(v15, v17);
      sub_19A612F00(v26, v25);
    }

    else
    {
      sub_19A612F14(v15, v17);
      sub_19A612F00(v23, v22);
    }

    v27 = 0;
    v29 = 0xF000000000000000;
    goto LABEL_13;
  }

LABEL_14:
  v13 = *(v0 + 112);
  v32 = *(v0 + 96);
  sub_19A612F00(0, 0xF000000000000000);

LABEL_15:

  v30 = *(v0 + 8);

  return v30(v15, v17);
}

unint64_t sub_19A691CF8()
{
  v0 = sub_19A7A9304();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19A69C220(MEMORY[0x1E69E7CC0]);
  sub_19A7AAC74();
  v5 = sub_19A7A9284();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = MEMORY[0x1E69E6158];
  v28 = MEMORY[0x1E69E6158];
  *&v27 = v5;
  *(&v27 + 1) = v7;
  sub_19A625DC4(&v27, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v4;
  sub_19A650474(v26, 1701869940, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v10 = v25;
  sub_19A7AAD14();
  v13 = [objc_opt_self() valueWithSize_];
  v28 = sub_19A5F5028(0, &qword_1EAFCDAD0);
  *&v27 = v13;
  sub_19A625DC4(&v27, v26);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v25 = v10;
  sub_19A650474(v26, 1702521203, 0xE400000000000000, v14);
  v15 = v25;
  v16 = sub_19A7AACC4();
  v28 = MEMORY[0x1E6969080];
  *&v27 = v16;
  *(&v27 + 1) = v17;
  sub_19A625DC4(&v27, v26);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v25 = v15;
  sub_19A650474(v26, 1635017060, 0xE400000000000000, v18);
  v19 = v25;
  v20 = sub_19A7AACF4();
  v28 = v8;
  *&v27 = v20;
  *(&v27 + 1) = v21;
  sub_19A625DC4(&v27, v26);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v25 = v19;
  sub_19A650474(v26, 1701605234, 0xE400000000000000, v22);
  return v25;
}

uint64_t sub_19A691FF8()
{
  result = sub_19A7AAFE4();
  qword_1EAFDD4F0 = result;
  return result;
}

id Sticker.imageGlyph.getter()
{
  v0 = sub_19A7A9094();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v30 - v10;
  sub_19A7AAEB4();
  v12 = sub_19A7AAEA4();
  v13 = v12 & ~(v12 >> 63);
  MEMORY[0x19A905020]();
  v14 = sub_19A7A8F64();
  (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  v15 = Sticker.sourceType.getter();
  (*(v1 + 56))(v8, 1, 1, v0);
  v16 = type metadata accessor for ImageGlyph(0);
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR___STKImageGlyph_optionalData];
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  *&v17[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
  v17[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
  sub_19A60F0CC(v11, &v17[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800);
  *&v17[OBJC_IVAR___STKImageGlyph_stickerEffectType] = v13;
  *&v17[OBJC_IVAR___STKImageGlyph_stickerSourceType] = v15;
  v19 = &v17[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v17[OBJC_IVAR___STKImageGlyph_poseIdentifier];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v17[OBJC_IVAR___STKImageGlyph_emoji];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 24) = 0;
  v22 = &v17[OBJC_IVAR___STKImageGlyph_emojiString];
  *v22 = 0;
  v22[1] = 0;
  sub_19A60F0CC(v8, v6, &unk_1EAFCF110);
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_19A5F2B54(v6, &unk_1EAFCF110);
  }

  else
  {
    v23 = v31;
    (*(v1 + 32))(v31, v6, v0);
    v24 = sub_19A76DC5C();
    v26 = v25;
    (*(v1 + 8))(v23, v0);
    *v18 = v24;
    v18[1] = v26;
  }

  v27 = &v17[OBJC_IVAR___STKImageGlyph_character];
  *v27 = 0;
  v27[1] = 0;
  v32.receiver = v17;
  v32.super_class = v16;
  v28 = objc_msgSendSuper2(&v32, sel_init);
  sub_19A5F2B54(v8, &unk_1EAFCF110);
  sub_19A5F2B54(v11, &qword_1EAFCD800);
  return v28;
}

uint64_t Sticker.sourceType.getter()
{
  v0 = sub_19A7AABF4();
  if (v1)
  {
    v2 = v0;
    v3 = v1;

    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      return 6;
    }
  }

  sub_19A7AAC04();
  if (!v6)
  {
    return 0;
  }

  sub_19A69E04C();
  sub_19A69E0A0();
  if (sub_19A7AAF84())
  {

    return 1;
  }

  if (sub_19A7AAF84())
  {

    return 3;
  }

  if (sub_19A7AAF84())
  {

    return 4;
  }

  v7 = sub_19A7AAF84();

  if (v7)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

void static Sticker.createStickerWithRepresentations(_:searchText:captionText:metadata:addToStore:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8, void (*a9)(uint64_t, void), uint64_t a10)
{
  v20 = a8;
  v19 = a4;
  v21 = a9;
  v22 = a10;
  v12 = sub_19A7AABD4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7AAF14();
  (*(v13 + 104))(v15, *MEMORY[0x1E69D46E8], v12);

  sub_19A69E0F4(a6, a7);

  v16 = sub_19A7AAE54();
  v17 = v16;
  if (v20)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v21;
    *(v18 + 24) = v22;

    Sticker.saveToStore(completionHandler:)(sub_19A69E108, v18);
  }

  else
  {
    v21(v16, 0);
  }
}

uint64_t Sticker.saveToStore(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_19A7AA764();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19A7AA7B4();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19A7AA774();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A5F5028(0, &qword_1ED8B2040);
  (*(v11 + 104))(v13, *MEMORY[0x1E69E7F98], v10);
  v14 = sub_19A7AB7C4();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v21;
  v15[2] = v2;
  v15[3] = v16;
  v15[4] = a2;
  aBlock[4] = sub_19A69E130;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19A6815D4;
  aBlock[3] = &block_descriptor_6;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  sub_19A7AA784();
  v25 = MEMORY[0x1E69E7CC0];
  sub_19A6A1110(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A623714(&qword_1ED8B2090, &unk_1EAFCECD0);
  sub_19A7ABB54();
  MEMORY[0x19A905BE0](0, v9, v6, v17);
  _Block_release(v17);

  (*(v24 + 8))(v6, v4);
  (*(v22 + 8))(v9, v23);
}

void static Sticker.createStickerWithRepresentations(_:searchText:captionText:metadata:addToStore:sanitizedPrompt:promptLocale:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(void *, void), uint64_t a13)
{
  v35 = a8;
  v32 = a2;
  v33 = a4;
  v36 = a12;
  v34 = a11;
  v30 = a7;
  v31 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD818);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - v15;
  v17 = sub_19A7AABD4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7AAF14();
  (*(v18 + 104))(v20, *MEMORY[0x1E69D46E8], v17);

  sub_19A69E0F4(a6, v30);

  v21 = sub_19A7AAE44();
  v22 = sub_19A7A90A4();
  sub_19A60F0CC(v34, v16, &qword_1EAFCD818);
  v23 = sub_19A7A8FB4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v16, 1, v23) == 1)
  {
    sub_19A5F2B54(v16, &qword_1EAFCD818);
  }

  else
  {
    sub_19A7A8F84();
    (*(v24 + 8))(v16, v23);
    v25 = v21;
    if ([v25 respondsToSelector_])
    {
      v26 = sub_19A7AAFE4();

      [v25 performSelector:v22 withObject:v26];

      v27 = v25;
    }

    else
    {
    }
  }

  if (v35)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v36;
    *(v28 + 24) = a13;

    Sticker.saveToStore(completionHandler:)(sub_19A6A166C, v28);
  }

  else
  {
    v36(v21, 0);
  }
}

uint64_t sub_19A692F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v4 = sub_19A7AA764();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19A7AA7B4();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - v9;
  v11 = sub_19A7A8F64();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v52 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - v19;
  v21 = sub_19A7AAA14();
  MEMORY[0x1EEE9AC00](v21);
  (*(v23 + 104))(&v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D4638]);
  sub_19A7AAAC4();
  swift_allocObject();
  v24 = sub_19A7AAA04();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v57 = v24;
  v26 = sub_19A7AA9A4();
  v54 = v15;
  *(v25 + 16) = v26;
  v27 = v26;
  v28 = sub_19A69C220(MEMORY[0x1E69E7CC0]);
  v56 = v27;
  if (!v27)
  {
    v36 = a3;
LABEL_7:
    v37 = v58;
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_8;
  }

  v55 = a3;
  v29 = v27;
  MEMORY[0x19A905020]();

  v53 = *(v12 + 32);
  v53(v20, v18, v11);
  v69 = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  v52 = *(v12 + 16);
  v52(boxed_opaque_existential_1, v20, v11);
  sub_19A625DC4(&aBlock, v66);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v28;
  sub_19A650474(v66, 0xD000000000000029, 0x800000019A7C8610, isUniquelyReferenced_nonNull_native);
  v32 = *(v12 + 8);
  v32(v20, v11);
  v28 = v65;
  v33 = *(v25 + 16);
  if (!v33)
  {
    v36 = v55;
    goto LABEL_7;
  }

  v34 = v32;
  v35 = v33;
  sub_19A7AADD4();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v36 = v55;
    v37 = v58;
LABEL_8:
    sub_19A5F2B54(v10, &qword_1EAFCD800);
    goto LABEL_9;
  }

  v49 = v54;
  v53(v54, v10, v11);
  v69 = v11;
  v50 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  v52(v50, v49, v11);
  sub_19A625DC4(&aBlock, v66);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v65 = v28;
  sub_19A650474(v66, 0xD000000000000028, 0x800000019A7C8640, v51);
  v34(v49, v11);
  v28 = v65;
  v36 = v55;
  v37 = v58;
LABEL_9:
  v38 = [objc_opt_self() defaultCenter];
  if (qword_1EAFCA4D0 != -1)
  {
    swift_once();
  }

  v39 = qword_1EAFDD4F0;
  sub_19A64EC2C(v28);

  v40 = sub_19A7AAF34();

  [v38 postNotificationName:v39 object:0 userInfo:v40];

  sub_19A5F5028(0, &qword_1ED8B2040);
  v41 = sub_19A7AB794();
  v42 = swift_allocObject();
  v42[2] = v37;
  v42[3] = v36;
  v42[4] = v25;
  v42[5] = 0;
  v70 = sub_19A6A1558;
  v71 = v42;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v68 = sub_19A6815D4;
  v69 = &block_descriptor_173;
  v43 = _Block_copy(&aBlock);

  v44 = 0;

  v45 = v59;
  sub_19A7AA784();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_19A6A1110(&qword_1ED8B20A0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0);
  sub_19A623714(&qword_1ED8B2090, &unk_1EAFCECD0);
  v46 = v62;
  v47 = v64;
  sub_19A7ABB54();
  MEMORY[0x19A905BE0](0, v45, v46, v43);
  _Block_release(v43);

  (*(v63 + 8))(v46, v47);
  (*(v60 + 8))(v45, v61);
}

void sub_19A693930(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  v8 = v7;
  a1(v7, a4);
}

void static Sticker.createStickerWithUIRepresentations(_:searchText:captionText:addToStore:completion:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t, void *), uint64_t a8)
{
  v48 = a7;
  v49 = a8;
  v47 = a6;
  v45 = a5;
  v46 = a4;
  v43 = a3;
  v44 = a2;
  v41 = sub_19A7AABD4();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD820);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_19A7A9304();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v39 - v17;
  v61 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
  {
    v19 = 0;
    v56 = a1 & 0xFFFFFFFFFFFFFF8;
    v57 = a1 & 0xC000000000000001;
    v55 = (v14 + 48);
    v52 = (v14 + 16);
    v53 = (v14 + 32);
    v51 = (v14 + 8);
    v14 = MEMORY[0x1E69E7CC0];
    v54 = a1;
    v50 = v12;
    while (1)
    {
      if (v57)
      {
        v20 = MEMORY[0x19A906130](v19, a1);
      }

      else
      {
        if (v19 >= *(v56 + 16))
        {
          goto LABEL_19;
        }

        v20 = *(a1 + 8 * v19 + 32);
      }

      v21 = v20;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v58 = v19 + 1;
      v22 = i;
      v23 = [v20 type];
      sub_19A7AB014();

      sub_19A7A9314();
      if ((*v55)(v12, 1, v13) == 1)
      {

        sub_19A5F2B54(v12, &qword_1EAFCD820);
        type metadata accessor for AddStickerError();
        sub_19A6A1110(&qword_1EAFCD828, type metadata accessor for AddStickerError);
        v30 = swift_allocError();
        v32 = v31;
        v33 = [v21 type];
        v34 = sub_19A7AB014();
        v36 = v35;

        *v32 = v34;
        v32[1] = v36;
        swift_storeEnumTagMultiPayload();
        v48(0, v30);

        goto LABEL_24;
      }

      v24 = v59;
      (*v53)(v59, v12, v13);
      v25 = [v21 data];
      sub_19A7A8E34();

      (*v52)(v60, v24, v13);
      [v21 size];
      v26 = [v21 role];
      if (v26)
      {
        v27 = v26;
        sub_19A7AB014();
      }

      else
      {
        sub_19A7AACB4();
      }

      v28 = objc_allocWithZone(sub_19A7AAD24());
      v29 = sub_19A7AACE4();
      MEMORY[0x19A905660]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A7AB274();
      }

      sub_19A7AB2A4();

      (*v51)(v59, v13);
      v14 = v61;
      ++v19;
      i = v22;
      a1 = v54;
      v12 = v50;
      if (v58 == v22)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:
  sub_19A7AAF14();
  (*(v40 + 104))(v42, *MEMORY[0x1E69D46E8], v41);

  v37 = sub_19A7AAE54();
  v21 = v37;
  if (v47)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v48;
    *(v38 + 24) = v49;

    Sticker.saveToStore(completionHandler:)(sub_19A6A166C, v38);
  }

  else
  {
    v48(v37, 0);
  }

LABEL_24:
}

uint64_t static Sticker.donateExistingStickerToRecents(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A60F860;

  return (sub_19A6A0544)(a1, a2);
}

uint64_t Sticker.uiSticker()()
{
  v1[23] = v0;
  v2 = sub_19A7A9304();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = sub_19A7A8F64();
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A69422C, 0, 0);
}

uint64_t sub_19A69422C()
{
  v37 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD750]) init];
  v0[30] = v4;
  MEMORY[0x19A905020]();
  sub_19A7A8F14();
  (*(v1 + 8))(v2, v3);
  v5 = sub_19A7AAFE4();

  [v4 setIdentifier_];

  sub_19A7AAD94();

  v36 = sub_19A69BAD8(v6, sub_19A740B4C, sub_19A73F0E8);
  sub_19A68261C(&v36);

  v7 = v36;
  if (v36 < 0 || (v36 & 0x4000000000000000) != 0)
  {
    v8 = sub_19A7ABBE4();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_12:

    goto LABEL_13;
  }

  v8 = *(v36 + 16);
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_4:
  v32 = v4;
  v36 = MEMORY[0x1E69E7CC0];
  v9 = sub_19A7ABD84();
  if (v8 < 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  v12 = 0;
  v34 = v7;
  v35 = v0;
  v33 = v7 & 0xC000000000000001;
  v13 = (v0[25] + 8);
  do
  {
    if (v33)
    {
      v14 = MEMORY[0x19A906130](v12, v7);
    }

    else
    {
      v14 = *(v7 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = v35[26];
    v17 = v35[24];
    ++v12;
    v18 = [objc_allocWithZone(MEMORY[0x1E69DD760]) init];
    v19 = sub_19A7AACC4();
    v21 = v20;
    v22 = sub_19A7A8E14();
    sub_19A612F14(v19, v21);
    [v18 setData_];

    sub_19A7AAC74();
    sub_19A7A9284();
    (*v13)(v16, v17);
    v23 = sub_19A7AAFE4();

    [v18 setType_];

    sub_19A7AAD14();
    [v18 setSize_];
    sub_19A7AACF4();
    v24 = sub_19A7AAFE4();

    [v18 setRole_];

    sub_19A7ABD64();
    sub_19A7ABD94();
    sub_19A7ABDA4();
    sub_19A7ABD74();
    v7 = v34;
  }

  while (v8 != v12);

  v0 = v35;
  v4 = v32;
LABEL_13:
  sub_19A5F5028(0, &qword_1ED8B2000);
  v25 = sub_19A7AB234();

  [v4 setRepresentations_];

  sub_19A7AAEB4();
  [v4 setEffectType_];
  sub_19A7AAE34();
  v26 = sub_19A7AAFE4();

  [v4 setName_];

  sub_19A7AAC04();
  v27 = sub_19A7AAFE4();

  [v4 setExternalURI_];

  sub_19A7AB354();
  v0[31] = sub_19A7AB344();
  v28 = sub_19A7AB2E4();
  v30 = v29;
  v9 = sub_19A6946F0;
  v10 = v28;
  v11 = v30;

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_19A6946F0()
{
  v1 = *(v0 + 184);

  *(v0 + 256) = [v1 accessibilityLabel];

  return MEMORY[0x1EEE6DFA0](sub_19A694778, 0, 0);
}

uint64_t sub_19A694778()
{
  v1 = *(v0 + 256);
  [*(v0 + 240) setAccessibilityLabel_];

  v2 = sub_19A7AAEF4();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    v4 = sub_19A7A8E14();
    sub_19A612F00(v5, v6);
  }

  [*(v0 + 240) setMetadata_];

  sub_19A7AADC4();
  if (v7)
  {
    v8 = sub_19A7AAFE4();
  }

  else
  {
    v8 = 0;
  }

  [*(v0 + 240) setAccessibilityName_];

  sub_19A7AABF4();
  if (v9)
  {
    v10 = sub_19A7AAFE4();
  }

  else
  {
    v10 = 0;
  }

  [*(v0 + 240) setSearchText_];

  sub_19A7AADA4();
  if (v11)
  {
    v12 = sub_19A7AAFE4();
  }

  else
  {
    v12 = 0;
  }

  [*(v0 + 240) setSanitizedPrompt_];

  v13 = swift_task_alloc();
  *(v0 + 264) = v13;
  *v13 = v0;
  v13[1] = sub_19A69493C;

  return _UISticker.stk_renderBakedInRepIfNecessary()();
}

uint64_t sub_19A69493C()
{

  return MEMORY[0x1EEE6DFA0](sub_19A694A38, 0, 0);
}

unint64_t sub_19A694A38()
{
  v1 = sub_19A68AB28();
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = v1 + 64;
    v5 = -1;
    v6 = -1 << *(v1 + 32);
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & *(v1 + 64);
    v8 = (63 - v6) >> 6;
    v9 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v10 = v3;
      if (!v7)
      {
        break;
      }

      v11 = v3;
LABEL_14:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = v13 | (v11 << 6);
      v15 = (*(v2 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      sub_19A6120B4(*(v2 + 56) + 32 * v14, v0 + 112);
      *(v0 + 64) = v17;
      *(v0 + 72) = v16;
      sub_19A625DC4((v0 + 112), (v0 + 80));

      v3 = v11;
LABEL_15:
      v18 = *(v0 + 80);
      *(v0 + 16) = *(v0 + 64);
      *(v0 + 32) = v18;
      *(v0 + 48) = *(v0 + 96);
      v19 = *(v0 + 24);
      if (!v19)
      {
        v35 = *(v0 + 240);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD8F0);
        v36 = sub_19A7AAF34();

        [v35 setAttributionInfo_];

        goto LABEL_30;
      }

      v20 = *(v0 + 16);
      sub_19A625DC4((v0 + 32), (v0 + 144));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD8F0);
      if (swift_dynamicCast())
      {
        v41 = *(v0 + 176);
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        result = sub_19A6956AC(v20, v19, sub_19A695A80);
        v24 = v9[2];
        v25 = (v23 & 1) == 0;
        v26 = __OFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          __break(1u);
LABEL_38:
          __break(1u);
          return result;
        }

        if (v9[3] >= v27)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v40 = result;
            v34 = v23;
            sub_19A699BD8();
            v23 = v34;
            result = v40;
          }
        }

        else
        {
          v39 = v23;
          sub_19A697824(v27, isUniquelyReferenced_nonNull_native);
          result = sub_19A6956AC(v20, v19, sub_19A695A80);
          v29 = v28 & 1;
          v23 = v39;
          if ((v39 & 1) != v29)
          {
            goto LABEL_34;
          }
        }

        if (v23)
        {
          v30 = result;

          *(v9[7] + 8 * v30) = v41;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          v9[(result >> 6) + 8] |= 1 << result;
          v31 = (v9[6] + 16 * result);
          *v31 = v20;
          v31[1] = v19;
          *(v9[7] + 8 * result) = v41;
          result = swift_unknownObjectRelease();
          v32 = v9[2];
          v26 = __OFADD__(v32, 1);
          v33 = v32 + 1;
          if (v26)
          {
            goto LABEL_38;
          }

          v9[2] = v33;
        }
      }

      else
      {
      }
    }

    if (v8 <= v3 + 1)
    {
      v12 = v3 + 1;
    }

    else
    {
      v12 = v8;
    }

    v3 = v12 - 1;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        v7 = 0;
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
        *(v0 + 64) = 0u;
        goto LABEL_15;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_34:

    return sub_19A7AC0C4();
  }

  else
  {
LABEL_30:

    v37 = *(v0 + 8);
    v38 = *(v0 + 240);

    return v37(v38);
  }
}

Swift::OpaquePointer_optional __swiftcall Sticker.asDictionaryPayload()()
{
  v0 = sub_19A7A8F64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E7CC0];
  v57 = sub_19A69C220(MEMORY[0x1E69E7CC0]);
  MEMORY[0x19A905020]();
  v5 = sub_19A7A8F14();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = MEMORY[0x1E69E6158];
  v56 = MEMORY[0x1E69E6158];
  *&v55 = v5;
  *(&v55 + 1) = v7;
  sub_19A625DC4(&v55, v54);
  v9 = v57;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v9;
  sub_19A650474(v54, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  v11 = v53;
  v12 = sub_19A7AAE34();
  v56 = v8;
  *&v55 = v12;
  *(&v55 + 1) = v13;
  sub_19A625DC4(&v55, v54);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v11;
  sub_19A650474(v54, 1701667182, 0xE400000000000000, v14);
  v15 = v53;
  v57 = v53;
  v16 = sub_19A7AAC04();
  if (v17)
  {
    v56 = v8;
    *&v55 = v16;
    *(&v55 + 1) = v17;
    sub_19A625DC4(&v55, v54);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v15;
    sub_19A650474(v54, 0x6C616E7265747865, 0xEB00000000495255, v18);
    v57 = v53;
  }

  else
  {
    sub_19A6960F0(0x6C616E7265747865, 0xEB00000000495255, &v55);
    sub_19A5F2B54(&v55, &unk_1EAFCD750);
  }

  v19 = sub_19A7AABF4();
  if (v20)
  {
    v56 = v8;
    *&v55 = v19;
    *(&v55 + 1) = v20;
    sub_19A625DC4(&v55, v54);
    v21 = v57;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v21;
    sub_19A650474(v54, 0x6554686372616573, 0xEA00000000007478, v22);
    v57 = v53;
  }

  else
  {
    sub_19A6960F0(0x6554686372616573, 0xEA00000000007478, &v55);
    sub_19A5F2B54(&v55, &unk_1EAFCD750);
  }

  v23 = sub_19A7AADC4();
  if (v24)
  {
    v56 = v8;
    *&v55 = v23;
    *(&v55 + 1) = v24;
    sub_19A625DC4(&v55, v54);
    v25 = v57;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v25;
    sub_19A650474(v54, 0xD000000000000011, 0x800000019A7C8490, v26);
    v57 = v53;
  }

  else
  {
    sub_19A6960F0(0xD000000000000011, 0x800000019A7C8490, &v55);
    sub_19A5F2B54(&v55, &unk_1EAFCD750);
  }

  v27 = sub_19A7AAEF4();
  if (v28 >> 60 == 15)
  {
    sub_19A6960F0(0x617461646174656DLL, 0xE800000000000000, &v55);
    sub_19A5F2B54(&v55, &unk_1EAFCD750);
    v29 = v57;
  }

  else
  {
    v56 = MEMORY[0x1E6969080];
    *&v55 = v27;
    *(&v55 + 1) = v28;
    sub_19A625DC4(&v55, v54);
    v30 = v57;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v30;
    sub_19A650474(v54, 0x617461646174656DLL, 0xE800000000000000, v31);
    v29 = v53;
  }

  sub_19A7AAEB4();
  v32 = sub_19A7AAEA4();
  v56 = MEMORY[0x1E69E6530];
  *&v55 = v32;
  sub_19A625DC4(&v55, v54);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v29;
  sub_19A650474(v54, 0x7954746365666665, 0xEA00000000006570, v33);
  v34 = v53;
  v57 = v53;
  v35 = sub_19A68AB28();
  if (v35)
  {
    v36 = v35;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCFD8);
    *&v55 = v36;
    sub_19A625DC4(&v55, v54);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v34;
    sub_19A650474(v54, 0x7475626972747461, 0xEF6F666E496E6F69, v37);
    v57 = v53;
  }

  else
  {
    sub_19A6960F0(0x7475626972747461, 0xEF6F666E496E6F69, &v55);
    sub_19A5F2B54(&v55, &unk_1EAFCD750);
  }

  sub_19A7AAD94();

  *&v55 = sub_19A69BAD8(v38, sub_19A740B4C, sub_19A73F0E8);
  sub_19A68261C(&v55);

  v39 = v55;
  if ((v55 & 0x8000000000000000) != 0 || (v55 & 0x4000000000000000) != 0)
  {
    v40 = sub_19A7ABBE4();
    if (v40)
    {
      goto LABEL_19;
    }

LABEL_29:

    v42 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v40 = *(v55 + 16);
  if (!v40)
  {
    goto LABEL_29;
  }

LABEL_19:
  *&v55 = v4;
  sub_19A65AE0C(0, v40 & ~(v40 >> 63), 0);
  if (v40 < 0)
  {
    __break(1u);

    __break(1u);
    goto LABEL_32;
  }

  v41 = 0;
  v42 = v55;
  do
  {
    if ((v39 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x19A906130](v41, v39);
    }

    else
    {
      v43 = *(v39 + 8 * v41 + 32);
    }

    v44 = v43;
    v45 = sub_19A691CF8();

    *&v55 = v42;
    v47 = *(v42 + 16);
    v46 = *(v42 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_19A65AE0C((v46 > 1), v47 + 1, 1);
      v42 = v55;
    }

    ++v41;
    *(v42 + 16) = v47 + 1;
    *(v42 + 8 * v47 + 32) = v45;
  }

  while (v40 != v41);

LABEL_30:
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD900);
  *&v55 = v42;
  sub_19A625DC4(&v55, v54);
  v48 = v57;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v48;
  sub_19A650474(v54, 0xD000000000000019, 0x800000019A7C84B0, v49);
  v51 = v53;
LABEL_32:
  result.value._rawValue = v51;
  result.is_nil = v50;
  return result;
}

void sub_19A695524(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t sub_19A6955D8(uint64_t a1)
{
  v2 = sub_19A7ABC34();

  return sub_19A695B38(a1, v2);
}

unint64_t sub_19A69561C(uint64_t a1)
{
  sub_19A7AB014();
  sub_19A7AC184();
  sub_19A7AB0B4();
  v2 = sub_19A7AC1B4();

  return sub_19A695FEC(a1, v2);
}

uint64_t sub_19A6956AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_19A7AC184();
  sub_19A7AB0B4();
  v5 = sub_19A7AC1B4();

  return a3(a1, a2, v5);
}

unint64_t sub_19A695730(uint64_t a1)
{
  v2 = sub_19A7AC174();

  return sub_19A695C00(a1, v2);
}

unint64_t sub_19A695774(uint64_t a1)
{
  sub_19A7AC184();
  MEMORY[0x19A9065D0](a1);
  v2 = sub_19A7AC1B4();

  return sub_19A695C00(a1, v2);
}

unint64_t sub_19A6957E0(uint64_t a1)
{
  sub_19A7A8F64();
  v2 = MEMORY[0x1E69695A8];
  sub_19A6A1110(&qword_1EAFCB3B8, MEMORY[0x1E69695A8]);
  v3 = sub_19A7AAF64();
  return sub_19A695C6C(a1, v3, MEMORY[0x1E69695A8], &qword_1EAFCB3B0, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_19A6958B4(uint64_t a1)
{
  sub_19A7A8FF4();
  v2 = MEMORY[0x1E6969B50];
  sub_19A6A1110(&qword_1EAFCDA00, MEMORY[0x1E6969B50]);
  v3 = sub_19A7AAF64();
  return sub_19A695C6C(a1, v3, MEMORY[0x1E6969B50], &qword_1EAFCDA08, v2, MEMORY[0x1E6969B70]);
}

unint64_t sub_19A695988(uint64_t a1)
{
  v2 = sub_19A7AB914();

  return sub_19A695E0C(a1, v2);
}

unint64_t sub_19A6959CC(uint64_t a1)
{
  sub_19A7AC184();
  type metadata accessor for CFString(0);
  sub_19A6A1110(&qword_1EAFCD970, type metadata accessor for CFString);
  sub_19A7A91B4();
  v2 = sub_19A7AC1B4();

  return sub_19A695EE0(a1, v2);
}

unint64_t sub_19A695A80(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_19A7AC064())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_19A695B38(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_19A6A0AB0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x19A906080](v9, a1);
      sub_19A6A0B0C(v9);
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

unint64_t sub_19A695C00(uint64_t a1, uint64_t a2)
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

unint64_t sub_19A695C6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_19A6A1110(v23, v24);
      v19 = sub_19A7AAFD4();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_19A695E0C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_19A5F5028(0, &qword_1EAFCB0E0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_19A7AB924();

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

unint64_t sub_19A695EE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_19A6A1110(&qword_1EAFCD970, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_19A7A91A4();

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

unint64_t sub_19A695FEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_19A7AB014();
      v8 = v7;
      if (v6 == sub_19A7AB014() && v8 == v9)
      {
        break;
      }

      v11 = sub_19A7AC064();

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

double sub_19A6960F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_19A6956AC(a1, a2, sub_19A695A80);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19A699A34();
      v10 = v12;
    }

    sub_19A625DC4((*(v10 + 56) + 32 * v8), a3);
    sub_19A73E20C(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_19A6961A8(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_19A695988(a1);
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
        sub_19A73E3BC(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_19A699FEC();
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
  v6 = sub_19A7ABE14();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_19A7ABBE4();
  v8 = sub_19A6962F4(v4, v7);

  v9 = sub_19A695988(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_19A73E3BC(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_19A6962F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDA10);
    v2 = sub_19A7ABE84();
    v19 = v2;
    sub_19A7ABDF4();
    v3 = sub_19A7ABE24();
    if (v3)
    {
      v4 = v3;
      sub_19A5F5028(0, &qword_1EAFCB0E0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_19A697EE4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_19A7AB914();
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
        v5 = sub_19A7ABE24();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_19A696520(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA48);
  v35 = a2;
  result = sub_19A7ABE74();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_19A7AC184();
      sub_19A7AB0B4();
      result = sub_19A7AC1B4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19A6967C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA50);
  v36 = a2;
  result = sub_19A7ABE74();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_19A7AB014();
      sub_19A7AC184();
      sub_19A7AB0B4();
      v25 = sub_19A7AC1B4();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19A696A88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD940);
  v35 = a2;
  result = sub_19A7ABE74();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v25 = v24;
      }

      sub_19A7AC184();
      sub_19A7AB0B4();
      result = sub_19A7AC1B4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19A696D2C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA58);
  result = sub_19A7ABE74();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_19A7AC174();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_19A696F94(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for EmojiKeyboardWaypoint();
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD990);
  v36 = a2;
  result = sub_19A7ABE74();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_19A62D7FC(v24, v37);
      }

      else
      {
        sub_19A6A0F08(v24, v37, type metadata accessor for EmojiKeyboardWaypoint);
      }

      sub_19A7AC184();
      MEMORY[0x19A9065D0](v22);
      result = sub_19A7AC1B4();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      result = sub_19A62D7FC(v37, *(v9 + 56) + v23 * v17);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_19A6972C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAF0);
  v33 = a2;
  result = sub_19A7ABE74();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_19A7AC184();
      sub_19A7AB0B4();
      result = sub_19A7AC1B4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19A69756C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAD8);
  v33 = a2;
  result = sub_19A7ABE74();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_19A625DC4(v24, v34);
      }

      else
      {
        sub_19A6120B4(v24, v34);
      }

      sub_19A7AC184();
      sub_19A7AB0B4();
      result = sub_19A7AC1B4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_19A625DC4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_19A697824(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDAE0);
  v34 = a2;
  result = sub_19A7ABE74();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_19A7AC184();
      sub_19A7AB0B4();
      result = sub_19A7AC1B4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19A697ACC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_19A7A8FF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9F8);
  v46 = a2;
  result = sub_19A7ABE74();
  v11 = result;
  if (*(v9 + 16))
  {
    v52 = v8;
    v42 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v51 = *(v45 + 72);
      v27 = v26 + v51 * v25;
      if (v46)
      {
        (*v47)(v52, v27, v5);
        v28 = *(v9 + 56) + 40 * v25;
        v48 = *v28;
        v29 = *(v28 + 24);
        v49 = *(v28 + 8);
        v50 = v29;
      }

      else
      {
        (*v43)(v52, v27, v5);
        v30 = *(v9 + 56) + 40 * v25;
        v31 = *v30;
        v32 = *(v30 + 24);
        v49 = *(v30 + 8);
        v50 = v32;
        v48 = v31;
      }

      sub_19A6A1110(&qword_1EAFCDA00, MEMORY[0x1E6969B50]);
      result = sub_19A7AAF64();
      v33 = -1 << *(v11 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v47)(*(v11 + 48) + v51 * v19, v52, v5);
      v20 = *(v11 + 56) + 40 * v19;
      *v20 = v48;
      v21 = v49;
      *(v20 + 24) = v50;
      *(v20 + 8) = v21;
      ++*(v11 + 16);
      v9 = v44;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_19A697EE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDA10);
  result = sub_19A7ABE74();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_19A7AB914();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_19A69814C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_19A7A8F64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9D0);
  v40 = a2;
  result = sub_19A7ABE74();
  v11 = result;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v6 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
        v26 = v42;
      }

      sub_19A6A1110(&qword_1EAFCB3B8, MEMORY[0x1E69695A8]);
      result = sub_19A7AAF64();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v43 * v19, v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_19A698524(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_19A7A8F64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9C0);
  v39 = a2;
  result = sub_19A7ABE74();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_19A6A1110(&qword_1EAFCB3B8, MEMORY[0x1E69695A8]);
      result = sub_19A7AAF64();
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
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_19A698900(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9E8);
  v34 = a2;
  result = sub_19A7ABE74();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_19A7AC184();
      sub_19A7AB0B4();
      result = sub_19A7AC1B4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19A698BBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9E0);
  v35 = a2;
  result = sub_19A7ABE74();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_19A7AC184();
      sub_19A7AB0B4();
      result = sub_19A7AC1B4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_19A698E74(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_19A7ABE74();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_19A7AC184();
      sub_19A7AB0B4();
      result = sub_19A7AC1B4();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

id sub_19A699114()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA48);
  v2 = *v0;
  v3 = sub_19A7ABE64();
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

id sub_19A699280()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA50);
  v2 = *v0;
  v3 = sub_19A7ABE64();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_19A6993E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD940);
  v2 = *v0;
  v3 = sub_19A7ABE64();
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
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        v23 = v21;
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

id sub_19A699550()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA58);
  v2 = *v0;
  v3 = sub_19A7ABE64();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_19A6996AC()
{
  v1 = v0;
  v2 = type metadata accessor for EmojiKeyboardWaypoint();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD990);
  v5 = *v0;
  v6 = sub_19A7ABE64();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_19A6A0F08(*(v5 + 56) + v22, v4, type metadata accessor for EmojiKeyboardWaypoint);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = sub_19A62D7FC(v4, *(v7 + 56) + v22);
      }

      while (v15);
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

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_19A6998CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAF0);
  v2 = *v0;
  v3 = sub_19A7ABE64();
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

void *sub_19A699A34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAD8);
  v2 = *v0;
  v3 = sub_19A7ABE64();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_19A6120B4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_19A625DC4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_19A699BD8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDAE0);
  v2 = *v0;
  v3 = sub_19A7ABE64();
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

        result = swift_unknownObjectRetain();
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

id sub_19A699D48()
{
  v1 = v0;
  v34 = sub_19A7A8FF4();
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD9F8);
  v3 = *v0;
  v4 = sub_19A7ABE64();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v35 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31[1] = v36 + 32;
    v31[2] = v36 + 16;
    v32 = v3;
    v15 = v5;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v39 = (v13 - 1) & v13;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v3 + 48) + v21, v34);
        v19 *= 40;
        v24 = *(v3 + 56) + v19;
        v25 = *v24;
        v26 = *(v15 + 48);
        v27 = *(v20 + 32);
        v28 = *(v24 + 8);
        v37 = *(v24 + 24);
        v38 = v28;
        v27(v26 + v21, v23, v22);
        v29 = *(v15 + 56) + v19;
        *v29 = v25;
        v30 = v38;
        *(v29 + 24) = v37;
        *(v29 + 8) = v30;
        result = v25;
        v3 = v32;
        v13 = v39;
      }

      while (v39);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v31[0];
        v5 = v35;
        goto LABEL_18;
      }

      v18 = *(v7 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_19A699FEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCDA10);
  v2 = *v0;
  v3 = sub_19A7ABE64();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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