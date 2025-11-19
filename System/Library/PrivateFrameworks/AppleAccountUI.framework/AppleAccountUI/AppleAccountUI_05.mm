uint64_t sub_1C548ED00()
{
  swift_beginAccess();
  v2 = *(v0 + 80);
  sub_1C5594CF4();
  swift_endAccess();
  return v2;
}

uint64_t sub_1C548ED68(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;

  swift_endAccess();
}

uint64_t sub_1C548EE60()
{
  swift_getKeyPath();
  (*(*v0 + 648))();

  return sub_1C548ED00();
}

uint64_t sub_1C548EEE4(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v15 = a1;
  v21[2] = 0;
  v13 = 0;
  v21[3] = a1;
  v21[4] = a2;
  v21[0] = sub_1C548ED00();
  v21[1] = v2;
  v19 = v15;
  v20 = v16;
  v17 = v21;
  v18 = sub_1C542908C();
  sub_1C5401ECC();
  if (v18)
  {
    v3 = v14;
    v4 = v13;
    KeyPath = swift_getKeyPath();
    v9 = KeyPath;

    sub_1C5594CF4();
    v11 = &v7;
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 656))(v5, sub_1C5498F68);
    v12 = v4;

    v8 = v12;
  }

  else
  {
    sub_1C5594CF4();
    sub_1C548ED68(v15, v16);
    v8 = v13;
  }
}

void (*sub_1C548F158(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 648))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C548EDFC();
  return sub_1C548F338;
}

void sub_1C548F338(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548F3F4(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548F3F4(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C548F3F4(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C548F530()
{
  swift_beginAccess();
  v2 = *(v0 + 96);
  sub_1C5594CF4();
  swift_endAccess();
  return v2;
}

uint64_t sub_1C548F598(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  swift_beginAccess();
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;

  swift_endAccess();
}

uint64_t sub_1C548F690()
{
  swift_getKeyPath();
  (*(*v0 + 648))();

  return sub_1C548F530();
}

uint64_t sub_1C548F714(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v15 = a1;
  v21[2] = 0;
  v13 = 0;
  v21[3] = a1;
  v21[4] = a2;
  v21[0] = sub_1C548F530();
  v21[1] = v2;
  v19 = v15;
  v20 = v16;
  v17 = v21;
  v18 = sub_1C542908C();
  sub_1C5401ECC();
  if (v18)
  {
    v3 = v14;
    v4 = v13;
    KeyPath = swift_getKeyPath();
    v9 = KeyPath;

    sub_1C5594CF4();
    v11 = &v7;
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 656))(v5, sub_1C5498F98);
    v12 = v4;

    v8 = v12;
  }

  else
  {
    sub_1C5594CF4();
    sub_1C548F598(v15, v16);
    v8 = v13;
  }
}

void (*sub_1C548F988(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 648))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C548F62C();
  return sub_1C548FB68;
}

void sub_1C548FB68(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548FC24(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C548FC24(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C548FC24(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1C548FD60()
{
  swift_beginAccess();
  v2 = *(v0 + 112);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1C548FDBC(char a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1 & 1;
  return swift_endAccess();
}

uint64_t sub_1C548FE98()
{
  swift_getKeyPath();
  (*(*v0 + 648))();

  return sub_1C548FD60() & 1;
}

uint64_t sub_1C548FF20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 488))(v2) & 1;
}

uint64_t sub_1C548FFAC(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 496))(v4 & 1);
}

uint64_t sub_1C5490034(int a1)
{
  v17 = 0;
  v11 = 0;
  v12 = a1;
  v14 = a1 & 1;
  v18 = a1 & 1;
  v16 = sub_1C548FD60() & 1;
  v15 = v14;
  sub_1C5498EC0();
  if (sub_1C542908C())
  {
    v1 = v13;
    v2 = v11;
    KeyPath = swift_getKeyPath();
    v7 = KeyPath;

    v9 = &v5;
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 656))(v3, sub_1C5498FC8);
    v10 = v2;

    return v10;
  }

  else
  {
    sub_1C548FDBC(v12 & 1);
    return v11;
  }
}

void (*sub_1C5490240(void *a1))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_1C5594B24();
  v4 = *(v6 - 8);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 648))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594B04();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_1C548FE34();
  return sub_1C5490420;
}

void sub_1C5490420(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54904DC(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_1C54904DC(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_1C54904DC(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_1C5594B24();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_1C5498AE0();
  sub_1C5594AF4();

  return (*(v7 + 8))(v9, v10);
}

id sub_1C5490618()
{
  v15 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D1E8);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v12 = &v4 - v8;
  v15 = v0;
  v9 = objc_opt_self();
  v14 = sub_1C5594834();
  v10 = *(v14 - 8);
  v11 = v14 - 8;
  v2 = *(v10 + 56);
  v13 = 1;
  v2(v12, 1);
  if ((*(v10 + 48))(v12, v13, v14) == 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = sub_1C5594814();
    (*(v10 + 8))(v12, v14);
    v7 = v6;
  }

  v5 = [v9 contactsNameOrderFromPersonNameComponents_];
  MEMORY[0x1E69E5920](v4);
  return v5;
}

id sub_1C54907D0()
{
  v1 = [objc_opt_self() currentEnvironment];
  v2 = [v1 nicknameProvider];
  MEMORY[0x1E69E5920](v1);
  return v2;
}

id sub_1C5490840()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

uint64_t sub_1C549093C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = 0;
  sub_1C548E554(0, (v4 + 72));
  v5 = sub_1C55965F4();
  sub_1C541D40C(v5, v6, (v4 + 80));
  v7 = sub_1C55965F4();
  sub_1C541D40C(v7, v8, (v4 + 96));
  sub_1C548E554(0, (v4 + 112));
  sub_1C5594B14();
  swift_unknownObjectRetain();
  *(v4 + 16) = a1;
  MEMORY[0x1E69E5928](a2);
  *(v4 + 24) = a2;
  MEMORY[0x1E69E5928](a3);
  *(v4 + 32) = a3;
  swift_getObjectType();
  sub_1C548D38C([a1 sharingAudience], (v4 + 56));
  swift_getObjectType();
  sub_1C541E120([a1 isNicknameSharingEnabled], (v4 + 48));
  MEMORY[0x1E69E5928](a4);
  *(v4 + 40) = a4;
  sub_1C548DDF0(0);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](a2);
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1C5490BE4()
{
  v2 = v0[2];
  swift_unknownObjectRetain();
  swift_getObjectType();
  (*(*v0 + 208))([v2 isNicknameSharingEnabled]);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5490C60(char a1)
{
  (*(*v1 + 208))(a1 & 1);
  v5 = *(v3 + 16);
  swift_unknownObjectRetain();
  swift_getObjectType();
  [v5 setSharingEnabled_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5490D0C()
{
  v2 = v0[2];
  swift_unknownObjectRetain();
  swift_getObjectType();
  (*(*v0 + 256))([v2 sharingAudience]);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5490D90(uint64_t a1)
{
  (*(*v1 + 256))();
  v5 = *(v3 + 16);
  swift_unknownObjectRetain();
  swift_getObjectType();
  [v5 setSharingAudience_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5490E34(uint64_t a1)
{
  v2[55] = v1;
  v2[54] = a1;
  v2[48] = v2;
  v2[49] = 0;
  v2[50] = 0;
  v2[52] = 0;
  v2[40] = 0;
  v2[41] = 0;
  v3 = sub_1C5594C74();
  v2[56] = v3;
  v2[57] = *(v3 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[49] = a1;
  v2[50] = v1;
  sub_1C55967E4();
  v2[61] = sub_1C55967D4();
  v7 = sub_1C55967A4();
  v2[62] = v7;
  v2[63] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C5490FC0, v7, v4);
}

uint64_t sub_1C5490FC0()
{
  v1 = *(v0 + 440);
  *(v0 + 384) = v0;
  v4 = *(v1 + 16);
  *(v0 + 512) = v4;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *(v0 + 16) = *(v0 + 384);
  *(v0 + 56) = v0 + 408;
  *(v0 + 24) = sub_1C549110C;
  v3 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15D200);
  *(v0 + 176) = v3;
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 156) = 0;
  *(v0 + 160) = sub_1C5492C88;
  *(v0 + 168) = &block_descriptor_10;
  [v4 fetchPersonalNicknameAsContactWithCompletion_];
  swift_unknownObjectRetain();

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C549110C()
{
  v4 = *v0;
  *(*v0 + 384) = *v0;
  v1 = *(v4 + 504);
  v2 = *(v4 + 496);

  return MEMORY[0x1EEE6DFA0](sub_1C5491224, v2, v1);
}

uint64_t sub_1C5491224()
{
  v99 = v0;
  v78 = v0[55];
  v0[48] = v0;
  v79 = v0[51];
  v0[65] = v79;
  v0[52] = v79;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v77 = *(v78 + 32);
  MEMORY[0x1E69E5928](v77);
  [v77 setStyle_];
  MEMORY[0x1E69E5920](v77);
  v80 = *(v78 + 32);
  MEMORY[0x1E69E5928](v80);
  v81 = [v80 stringFromContact_];
  MEMORY[0x1E69E5920](v80);
  if (v81)
  {
    v72 = sub_1C5596574();
    v73 = v1;
    MEMORY[0x1E69E5920](v81);
    v74 = v72;
    v75 = v73;
  }

  else
  {
    v74 = 0;
    v75 = 0;
  }

  *(v76 + 304) = v74;
  *(v76 + 312) = v75;
  if (*(v76 + 312))
  {
    v82 = *(v76 + 304);
    v83 = *(v76 + 312);
  }

  else
  {
    v82 = sub_1C55965F4();
    v83 = v2;
    if (*(v76 + 312))
    {
      sub_1C5401ECC();
    }
  }

  v70 = *(v76 + 432);
  *(v76 + 528) = v83;
  *(v76 + 320) = v82;
  *(v76 + 328) = v83;
  sub_1C5594CF4();
  sub_1C5594CF4();
  v71 = [v70 aa_fullName];
  if (v71)
  {
    v66 = sub_1C5596574();
    v67 = v3;
    MEMORY[0x1E69E5920](v71);
    v68 = v66;
    v69 = v67;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  sub_1C5594CF4();
  *(v76 + 272) = v82;
  *(v76 + 280) = v83;
  *(v76 + 288) = v68;
  *(v76 + 296) = v69;
  if (!*(v76 + 280))
  {
    if (!*(v76 + 296))
    {
      sub_1C5401ECC();

      goto LABEL_24;
    }

    goto LABEL_20;
  }

  sub_1C5402BDC((v76 + 272), (v76 + 336));
  if (!*(v76 + 296))
  {
    sub_1C5401ECC();
LABEL_20:
    sub_1C54876D8();

    goto LABEL_23;
  }

  *(v76 + 352) = *(v76 + 336);
  *(v76 + 368) = *(v76 + 288);
  v65 = MEMORY[0x1C69471A0](*(v76 + 352), *(v76 + 360), *(v76 + 368), *(v76 + 376));
  sub_1C5401ECC();
  sub_1C5401ECC();
  sub_1C5401ECC();

  if (v65)
  {
    goto LABEL_24;
  }

LABEL_23:
  if (sub_1C5596614())
  {
LABEL_24:
    (*(**(v76 + 440) + 352))(0);
    goto LABEL_26;
  }

  (*(**(v76 + 440) + 352))(1);
LABEL_26:
  v4 = *(v76 + 480);
  v55 = *(v76 + 448);
  v54 = *(v76 + 456);
  v5 = sub_1C54B05F8();
  v56 = *(v54 + 16);
  v56(v4, v5, v55);
  sub_1C5594CF4();
  v57 = swift_allocObject();
  *(v57 + 16) = v82;
  *(v57 + 24) = v83;
  oslog = sub_1C5594C54();
  v64 = sub_1C5596944();
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v60 = swift_allocObject();
  *(v60 + 16) = 8;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1C5499100;
  *(v58 + 24) = v57;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1C5473EFC;
  *(v61 + 24) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  sub_1C5596E04();
  v62 = v6;

  *v62 = sub_1C545C6D4;
  v62[1] = v59;

  v62[2] = sub_1C545C6D4;
  v62[3] = v60;

  v62[4] = sub_1C5473FA4;
  v62[5] = v61;
  sub_1C540FCD8();

  if (os_log_type_enabled(oslog, v64))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v52 = sub_1C5419DC0(0);
    v53 = sub_1C5419DC0(1);
    v94 = buf;
    v95 = v52;
    v96 = v53;
    sub_1C5419E14(2, &v94);
    sub_1C5419E14(1, &v94);
    v97 = sub_1C545C6D4;
    v98 = v59;
    sub_1C5419E28(&v97, &v94, &v95, &v96);
    v97 = sub_1C545C6D4;
    v98 = v60;
    sub_1C5419E28(&v97, &v94, &v95, &v96);
    v97 = sub_1C5473FA4;
    v98 = v61;
    sub_1C5419E28(&v97, &v94, &v95, &v96);
    _os_log_impl(&dword_1C5355000, oslog, v64, "snapName: %s", buf, 0xCu);
    sub_1C5419E74(v52);
    sub_1C5419E74(v53);
    sub_1C5596A54();
  }

  else
  {
  }

  v39 = *(v76 + 480);
  v7 = *(v76 + 472);
  v41 = *(v76 + 448);
  v42 = *(v76 + 432);
  v38 = *(v76 + 456);
  v8 = MEMORY[0x1E69E5920](oslog);
  v40 = *(v38 + 8);
  v40(v39, v41, v8);
  v9 = sub_1C54B05F8();
  v56(v7, v9, v41);
  MEMORY[0x1E69E5928](v42);
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  log = sub_1C5594C54();
  v50 = sub_1C5596944();
  v45 = swift_allocObject();
  *(v45 + 16) = 32;
  v46 = swift_allocObject();
  *(v46 + 16) = 8;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1C54993E0;
  *(v44 + 24) = v43;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_1C5473EFC;
  *(v47 + 24) = v44;
  sub_1C5596E04();
  v48 = v10;

  *v48 = sub_1C545C6D4;
  v48[1] = v45;

  v48[2] = sub_1C545C6D4;
  v48[3] = v46;

  v48[4] = sub_1C5473FA4;
  v48[5] = v47;
  sub_1C540FCD8();

  if (os_log_type_enabled(log, v50))
  {
    v35 = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v36 = sub_1C5419DC0(0);
    v37 = sub_1C5419DC0(1);
    v89 = v35;
    v90 = v36;
    v91 = v37;
    sub_1C5419E14(2, &v89);
    sub_1C5419E14(1, &v89);
    v92 = sub_1C545C6D4;
    v93 = v45;
    sub_1C5419E28(&v92, &v89, &v90, &v91);
    v92 = sub_1C545C6D4;
    v93 = v46;
    sub_1C5419E28(&v92, &v89, &v90, &v91);
    v92 = sub_1C5473FA4;
    v93 = v47;
    sub_1C5419E28(&v92, &v89, &v90, &v91);
    _os_log_impl(&dword_1C5355000, log, v50, "fullName: %s", v35, 0xCu);
    sub_1C5419E74(v36);
    sub_1C5419E74(v37);
    sub_1C5596A54();
  }

  else
  {
  }

  v25 = *(v76 + 472);
  v11 = *(v76 + 464);
  v26 = *(v76 + 448);
  v27 = *(v76 + 440);
  v12 = MEMORY[0x1E69E5920](log);
  v40(v25, v26, v12);
  v13 = sub_1C54B05F8();
  v56(v11, v13, v26);

  v33 = sub_1C5594C54();
  v34 = sub_1C5596944();
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1C54993E8;
  *(v28 + 24) = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1C5473EFC;
  *(v31 + 24) = v28;
  sub_1C5596E04();
  v32 = v14;

  *v32 = sub_1C545C6D4;
  v32[1] = v29;

  v32[2] = sub_1C545C6D4;
  v32[3] = v30;

  v32[4] = sub_1C5473FA4;
  v32[5] = v31;
  sub_1C540FCD8();

  if (os_log_type_enabled(v33, v34))
  {
    v22 = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v23 = sub_1C5419DC0(0);
    v24 = sub_1C5419DC0(1);
    v84 = v22;
    v85 = v23;
    v86 = v24;
    sub_1C5419E14(2, &v84);
    sub_1C5419E14(1, &v84);
    v87 = sub_1C545C6D4;
    v88 = v29;
    sub_1C5419E28(&v87, &v84, &v85, &v86);
    v87 = sub_1C545C6D4;
    v88 = v30;
    sub_1C5419E28(&v87, &v84, &v85, &v86);
    v87 = sub_1C5473FA4;
    v88 = v31;
    sub_1C5419E28(&v87, &v84, &v85, &v86);
    _os_log_impl(&dword_1C5355000, v33, v34, "sharedNameType: %s", v22, 0xCu);
    sub_1C5419E74(v23);
    sub_1C5419E74(v24);
    sub_1C5596A54();
  }

  else
  {
  }

  v17 = *(v76 + 464);
  v18 = *(v76 + 448);
  v19 = *(v76 + 440);
  v15 = MEMORY[0x1E69E5920](v33);
  v40(v17, v18, v15);
  v21 = *(v19 + 24);
  *(v76 + 536) = v21;
  MEMORY[0x1E69E5928](v21);
  *(v76 + 80) = *(v76 + 384);
  *(v76 + 120) = v76 + 424;
  *(v76 + 88) = sub_1C5492A28;
  v20 = swift_continuation_init();
  *(v76 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15D210);
  *(v76 + 240) = v20;
  *(v76 + 208) = MEMORY[0x1E69E9820];
  *(v76 + 216) = 1107296256;
  *(v76 + 220) = 0;
  *(v76 + 224) = sub_1C5492EBC;
  *(v76 + 232) = &block_descriptor_65;
  [v21 fetchPersonalNicknameWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v76 + 80);
}

uint64_t sub_1C5492A28()
{
  v4 = *v0;
  *(*v0 + 384) = *v0;
  v1 = *(v4 + 504);
  v2 = *(v4 + 496);

  return MEMORY[0x1EEE6DFA0](sub_1C5492B40, v2, v1);
}

uint64_t sub_1C5492B40()
{
  v4 = v0[67];
  v5 = v0[65];
  v1 = v0[55];
  v0[48] = v0;
  (*(*v1 + 304))(v0[53]);
  MEMORY[0x1E69E5920](v4);

  MEMORY[0x1E69E5920](v5);

  v2 = *(v0[48] + 8);

  return v2();
}

double sub_1C5492C88(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2);
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  MEMORY[0x1E69E5928](a2);
  v7 = a2;
  v2 = sub_1C5499650();
  sub_1C5405D08(v5, &v7, v2);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1C5492D54(void *a1)
{
  v7 = [a1 aa_fullName];
  if (v7)
  {
    v3 = sub_1C5596574();
    v4 = v1;
    MEMORY[0x1E69E5920](v7);
    v5 = v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return sub_1C55965F4();
  }
}

double sub_1C5492EBC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2);
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  MEMORY[0x1E69E5928](a2);
  v7 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D1C0);
  sub_1C5405D08(v5, &v7, v2);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1C5492F60(void *a1)
{
  v13 = (*(*v1 + 296))();
  if (v13)
  {
    v9 = [v13 firstName];
    v10 = sub_1C5596574();
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v13);
    return v10;
  }

  else
  {
    v8 = [a1 aa_firstName];
    if (v8)
    {
      v4 = sub_1C5596574();
      v5 = v2;
      MEMORY[0x1E69E5920](v8);
      v6 = v4;
      v7 = v5;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (v7)
    {
      return v6;
    }

    else
    {
      return sub_1C55965F4();
    }
  }
}

uint64_t sub_1C5493150(void *a1)
{
  v13 = (*(*v1 + 296))();
  if (v13)
  {
    v9 = [v13 lastName];
    v10 = sub_1C5596574();
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v13);
    return v10;
  }

  else
  {
    v8 = [a1 aa_lastName];
    if (v8)
    {
      v4 = sub_1C5596574();
      v5 = v2;
      MEMORY[0x1E69E5920](v8);
      v6 = v4;
      v7 = v5;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (v7)
    {
      return v6;
    }

    else
    {
      return sub_1C55965F4();
    }
  }
}

uint64_t sub_1C5493340(void *a1)
{
  v51 = a1;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v52 = sub_1C5594834();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v51);
  v56 = &v19 - v55;
  v57 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v58 = &v19 - v57;
  v79 = &v19 - v57;
  v78 = v4;
  v77 = v1;
  v5 = (*(*v1 + 344))();
  v60 = &v76;
  v76 = v5 & 1;
  v59 = &v75;
  v75 = 0;
  sub_1C543F61C();
  if (sub_1C5596E24())
  {
    v49 = [v51 aa_fullName];
    if (v49)
    {
      v48 = v49;
      v43 = v49;
      v44 = sub_1C5596574();
      v45 = v6;
      MEMORY[0x1E69E5920](v43);
      v46 = v44;
      v47 = v45;
    }

    else
    {
      v46 = 0;
      v47 = 0;
    }

    v61 = v46;
    v62 = v47;
    if (v47)
    {
      v63 = v61;
      v64 = v62;
    }

    else
    {
      v63 = sub_1C55965F4();
      v64 = v7;
      if (v62)
      {
        sub_1C5401ECC();
      }
    }

    v41 = v63;
    v42 = v64;
  }

  else
  {
    v8 = v50;
    v9 = sub_1C5594824();
    v72 = (*(*v8 + 296))(v9);
    if (v72)
    {
      v34 = &v72;
      v35 = v72;
      MEMORY[0x1E69E5928](v72);
      sub_1C5401EF8(v34);
      v36 = [v35 firstName];
      v37 = sub_1C5596574();
      v38 = v10;
      MEMORY[0x1E69E5920](v35);
      MEMORY[0x1E69E5920](v36);
      v39 = v37;
      v40 = v38;
    }

    else
    {
      sub_1C5401EF8(&v72);
      v39 = 0;
      v40 = 0;
    }

    v70 = v39;
    v71 = v40;
    if (v40)
    {
      v73 = v70;
      v74 = v71;
    }

    else
    {
      v73 = sub_1C55965F4();
      v74 = v11;
      if (v71)
      {
        sub_1C5401ECC();
      }
    }

    v12 = sub_1C55947E4();
    v67 = (*(*v50 + 296))(v12);
    if (v67)
    {
      v27 = &v67;
      v28 = v67;
      MEMORY[0x1E69E5928](v67);
      sub_1C5401EF8(v27);
      v29 = [v28 lastName];
      v30 = sub_1C5596574();
      v31 = v13;
      MEMORY[0x1E69E5920](v28);
      MEMORY[0x1E69E5920](v29);
      v32 = v30;
      v33 = v31;
    }

    else
    {
      sub_1C5401EF8(&v67);
      v32 = 0;
      v33 = 0;
    }

    v65 = v32;
    v66 = v33;
    if (v33)
    {
      v68 = v65;
      v69 = v66;
    }

    else
    {
      v68 = sub_1C55965F4();
      v69 = v14;
      if (v66)
      {
        sub_1C5401ECC();
      }
    }

    sub_1C55947F4();
    v15 = v56;
    v19 = v50[5];
    MEMORY[0x1E69E5928](v19);
    [v19 setStyle_];
    MEMORY[0x1E69E5920](v19);
    v21 = v50[5];
    MEMORY[0x1E69E5928](v21);
    (*(v53 + 16))(v15, v58, v52);
    v20 = sub_1C5594814();
    v24 = *(v53 + 8);
    v23 = v53 + 8;
    v24(v56, v52);
    v22 = [v21 stringFromPersonNameComponents_];
    MEMORY[0x1E69E5920](v20);
    MEMORY[0x1E69E5920](v21);
    v25 = sub_1C5596574();
    v26 = v16;
    v17 = MEMORY[0x1E69E5920](v22);
    (v24)(v58, v52, v17);
    v41 = v25;
    v42 = v26;
  }

  return v41;
}

uint64_t sub_1C5493B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 320) = v6;
  *(v7 + 429) = a6;
  *(v7 + 312) = a5;
  *(v7 + 304) = a4;
  *(v7 + 296) = a3;
  *(v7 + 288) = a2;
  *(v7 + 280) = a1;
  *(v7 + 208) = v7;
  *(v7 + 216) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 424) = 0;
  *(v7 + 224) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  v8 = sub_1C5594C74();
  *(v7 + 328) = v8;
  *(v7 + 336) = *(v8 - 8);
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  *(v7 + 216) = a1;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 424) = a6 & 1;
  *(v7 + 224) = v6;
  sub_1C55967E4();
  *(v7 + 360) = sub_1C55967D4();
  v17 = sub_1C55967A4();
  *(v7 + 368) = v17;
  *(v7 + 376) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C5493D28, v17, v9);
}

uint64_t sub_1C5493D28()
{
  v120 = v0;
  v1 = *(v0 + 352);
  v81 = *(v0 + 336);
  v82 = *(v0 + 328);
  v88 = *(v0 + 429);
  v87 = *(v0 + 312);
  v86 = *(v0 + 304);
  v85 = *(v0 + 296);
  v84 = *(v0 + 288);
  *(v0 + 208) = v0;
  v2 = sub_1C54B05F8();
  v83 = *(v81 + 16);
  v83(v1, v2, v82);
  sub_1C5594CF4();
  v89 = swift_allocObject();
  *(v89 + 16) = v84;
  *(v89 + 24) = v85;
  sub_1C5594CF4();
  v91 = swift_allocObject();
  *(v91 + 16) = v86;
  *(v91 + 24) = v87;
  v93 = swift_allocObject();
  *(v93 + 16) = v88 & 1;
  v105 = sub_1C5594C54();
  v106 = sub_1C5596944();
  v95 = swift_allocObject();
  *(v95 + 16) = 32;
  v96 = swift_allocObject();
  *(v96 + 16) = 8;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1C5499100;
  *(v90 + 24) = v89;
  v97 = swift_allocObject();
  *(v97 + 16) = sub_1C5473EFC;
  *(v97 + 24) = v90;
  v98 = swift_allocObject();
  *(v98 + 16) = 32;
  v99 = swift_allocObject();
  *(v99 + 16) = 8;
  v92 = swift_allocObject();
  *(v92 + 16) = sub_1C5499100;
  *(v92 + 24) = v91;
  v100 = swift_allocObject();
  *(v100 + 16) = sub_1C5473EFC;
  *(v100 + 24) = v92;
  v101 = swift_allocObject();
  *(v101 + 16) = 32;
  v102 = swift_allocObject();
  *(v102 + 16) = 8;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_1C5499430;
  *(v94 + 24) = v93;
  v103 = swift_allocObject();
  *(v103 + 16) = sub_1C5473EFC;
  *(v103 + 24) = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  sub_1C5596E04();
  v104 = v3;

  *v104 = sub_1C545C6D4;
  v104[1] = v95;

  v104[2] = sub_1C545C6D4;
  v104[3] = v96;

  v104[4] = sub_1C5473FA4;
  v104[5] = v97;

  v104[6] = sub_1C545C6D4;
  v104[7] = v98;

  v104[8] = sub_1C545C6D4;
  v104[9] = v99;

  v104[10] = sub_1C5473FA4;
  v104[11] = v100;

  v104[12] = sub_1C545C6D4;
  v104[13] = v101;

  v104[14] = sub_1C545C6D4;
  v104[15] = v102;

  v104[16] = sub_1C5473FA4;
  v104[17] = v103;
  sub_1C540FCD8();

  if (os_log_type_enabled(v105, v106))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v78 = sub_1C5419DC0(0);
    v79 = sub_1C5419DC0(3);
    v115 = buf;
    v116 = v78;
    v117 = v79;
    sub_1C5419E14(2, &v115);
    sub_1C5419E14(3, &v115);
    v118 = sub_1C545C6D4;
    v119 = v95;
    sub_1C5419E28(&v118, &v115, &v116, &v117);
    v118 = sub_1C545C6D4;
    v119 = v96;
    sub_1C5419E28(&v118, &v115, &v116, &v117);
    v118 = sub_1C5473FA4;
    v119 = v97;
    sub_1C5419E28(&v118, &v115, &v116, &v117);
    v118 = sub_1C545C6D4;
    v119 = v98;
    sub_1C5419E28(&v118, &v115, &v116, &v117);
    v118 = sub_1C545C6D4;
    v119 = v99;
    sub_1C5419E28(&v118, &v115, &v116, &v117);
    v118 = sub_1C5473FA4;
    v119 = v100;
    sub_1C5419E28(&v118, &v115, &v116, &v117);
    v118 = sub_1C545C6D4;
    v119 = v101;
    sub_1C5419E28(&v118, &v115, &v116, &v117);
    v118 = sub_1C545C6D4;
    v119 = v102;
    sub_1C5419E28(&v118, &v115, &v116, &v117);
    v118 = sub_1C5473FA4;
    v119 = v103;
    sub_1C5419E28(&v118, &v115, &v116, &v117);
    _os_log_impl(&dword_1C5355000, v105, v106, "Attempting to update snap name with firstName: %s, lastName: %s and type: %s", buf, 0x20u);
    sub_1C5419E74(v78);
    sub_1C5419E74(v79);
    sub_1C5596A54();
  }

  else
  {
  }

  v74 = *(v80 + 352);
  v75 = *(v80 + 328);
  v4 = *(v80 + 320);
  v73 = *(v80 + 336);
  v5 = MEMORY[0x1E69E5920](v105);
  v76 = *(v73 + 8);
  v6 = v76(v74, v75, v5);
  *(v80 + 232) = (*(*v4 + 296))(v6);
  if (*(v80 + 232))
  {
    v67 = *(v80 + 232);
    MEMORY[0x1E69E5928](v67);
    sub_1C5401EF8((v80 + 232));
    v68 = [v67 firstName];
    v69 = sub_1C5596574();
    v70 = v7;
    MEMORY[0x1E69E5920](v67);
    v8 = MEMORY[0x1E69E5920](v68);
    v71 = v69;
    v72 = v70;
  }

  else
  {
    sub_1C5401EF8((v80 + 232));
    v71 = 0;
    v72 = 0;
  }

  *(v80 + 48) = v71;
  *(v80 + 56) = v72;
  if (*(v80 + 56))
  {
    v107 = *(v80 + 48);
    v108 = *(v80 + 56);
  }

  else
  {
    v107 = sub_1C55965F4();
    v108 = v9;
    if (*(v80 + 56))
    {
      sub_1C5401ECC();
    }
  }

  v10 = *(v80 + 320);
  *(v80 + 384) = v108;
  *(v80 + 64) = v107;
  *(v80 + 72) = v108;
  *(v80 + 240) = (*(*v10 + 296))(v8);
  if (*(v80 + 240))
  {
    v61 = *(v80 + 240);
    MEMORY[0x1E69E5928](v61);
    sub_1C5401EF8((v80 + 240));
    v62 = [v61 lastName];
    v63 = sub_1C5596574();
    v64 = v11;
    MEMORY[0x1E69E5920](v61);
    MEMORY[0x1E69E5920](v62);
    v65 = v63;
    v66 = v64;
  }

  else
  {
    sub_1C5401EF8((v80 + 240));
    v65 = 0;
    v66 = 0;
  }

  *(v80 + 80) = v65;
  *(v80 + 88) = v66;
  if (*(v80 + 88))
  {
    v109 = *(v80 + 80);
    v110 = *(v80 + 88);
  }

  else
  {
    v109 = sub_1C55965F4();
    v110 = v12;
    if (*(v80 + 88))
    {
      sub_1C5401ECC();
    }
  }

  v13 = *(v80 + 429);
  *(v80 + 392) = v110;
  *(v80 + 96) = v109;
  *(v80 + 104) = v110;
  *(v80 + 425) = v13 & 1;
  *(v80 + 426) = 0;
  sub_1C543F61C();
  if (sub_1C5596E24())
  {
    v60 = [*(v80 + 280) aa_firstName];
    if (v60)
    {
      v56 = sub_1C5596574();
      v57 = v14;
      MEMORY[0x1E69E5920](v60);
      v58 = v56;
      v59 = v57;
    }

    else
    {
      v58 = 0;
      v59 = 0;
    }

    *(v80 + 176) = v58;
    *(v80 + 184) = v59;
    if (*(v80 + 184))
    {
      v111 = *(v80 + 176);
      v112 = *(v80 + 184);
    }

    else
    {
      v111 = sub_1C55965F4();
      v112 = v15;
      if (*(v80 + 184))
      {
        sub_1C5401ECC();
      }
    }

    v54 = *(v80 + 280);
    sub_1C5594CF4();
    *(v80 + 112) = v111;
    *(v80 + 120) = v112;
    v55 = [v54 aa_lastName];
    if (v55)
    {
      v50 = sub_1C5596574();
      v51 = v16;
      MEMORY[0x1E69E5920](v55);
      v52 = v50;
      v53 = v51;
    }

    else
    {
      v52 = 0;
      v53 = 0;
    }

    *(v80 + 192) = v52;
    *(v80 + 200) = v53;
    if (*(v80 + 200))
    {
      v113 = *(v80 + 192);
      v114 = *(v80 + 200);
    }

    else
    {
      v113 = sub_1C55965F4();
      v114 = v17;
      if (*(v80 + 200))
      {
        sub_1C5401ECC();
      }
    }

    *(v80 + 128) = v113;
    *(v80 + 136) = v114;
  }

  else
  {
    v49 = *(v80 + 312);
    v48 = *(v80 + 304);
    v47 = *(v80 + 296);
    v46 = *(v80 + 288);
    sub_1C5594CF4();
    sub_1C5594CF4();
    *(v80 + 112) = v46;
    *(v80 + 120) = v47;
    sub_1C5594CF4();
    *(v80 + 128) = v48;
    *(v80 + 136) = v49;
  }

  *(v80 + 427) = *(v80 + 429) & 1;
  *(v80 + 428) = 0;
  if (sub_1C5596E24())
  {
  }

  else
  {
    sub_1C5594CF4();
    sub_1C5594CF4();
    v45 = sub_1C5596614();

    if (v45)
    {
      goto LABEL_47;
    }
  }

  v40 = *(v80 + 112);
  v41 = *(v80 + 120);
  sub_1C5594CF4();
  *(v80 + 144) = v40;
  *(v80 + 152) = v41;
  v44 = MEMORY[0x1C69471A0](*(v80 + 144), *(v80 + 152), v107, v108);
  sub_1C5401ECC();
  v42 = *(v80 + 128);
  v43 = *(v80 + 136);
  sub_1C5594CF4();
  sub_1C5594CF4();
  if ((v44 & 1) == 0)
  {

LABEL_44:
    v37 = *(v80 + 429);
    v38 = *(v80 + 112);
    v34 = *(v80 + 120);
    *(v80 + 400) = v34;
    sub_1C5594CF4();
    v35 = *(v80 + 128);
    v36 = *(v80 + 136);
    *(v80 + 408) = v36;
    sub_1C5594CF4();
    v18 = swift_task_alloc();
    *(v80 + 416) = v18;
    *v18 = *(v80 + 208);
    v18[1] = sub_1C5495C54;

    return sub_1C5495F24(v38, v34, v35, v36, v37 & 1);
  }

  sub_1C5594CF4();
  sub_1C5594CF4();
  *(v80 + 160) = v42;
  *(v80 + 168) = v43;
  v39 = MEMORY[0x1C69471A0](*(v80 + 160), *(v80 + 168), v109, v110);
  sub_1C5401ECC();

  if ((v39 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_47:
  v20 = *(v80 + 344);
  v30 = *(v80 + 328);
  v21 = sub_1C54B05F8();
  v83(v20, v21, v30);
  oslog = sub_1C5594C54();
  v31 = sub_1C5596944();
  v33 = sub_1C5596E04();
  if (os_log_type_enabled(oslog, v31))
  {
    v26 = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v27 = sub_1C5419DC0(0);
    v28 = sub_1C5419DC0(0);
    *(v80 + 248) = v26;
    *(v80 + 256) = v27;
    *(v80 + 264) = v28;
    sub_1C5419E14(0, (v80 + 248));
    sub_1C5419E14(0, (v80 + 248));
    *(v80 + 272) = v33;
    v29 = swift_task_alloc();
    v29[2] = v80 + 248;
    v29[3] = v80 + 256;
    v29[4] = v80 + 264;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();

    _os_log_impl(&dword_1C5355000, oslog, v31, "Snap name value unchanged. Skipping IMNicknameController write operation and sharedNameType update.", v26, 2u);
    sub_1C5419E74(v27);
    sub_1C5419E74(v28);
    sub_1C5596A54();
  }

  v24 = *(v80 + 344);
  v25 = *(v80 + 328);
  v22 = MEMORY[0x1E69E5920](oslog);
  v76(v24, v25, v22);
  sub_1C5401ECC();
  sub_1C5401ECC();

  v23 = *(*(v80 + 208) + 8);

  return v23();
}

uint64_t sub_1C5495C54()
{
  v4 = *v0;
  *(*v0 + 208) = *v0;

  v1 = *(v4 + 376);
  v2 = *(v4 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1C5495DD4, v2, v1);
}

uint64_t sub_1C5495DD4()
{
  *(v0 + 208) = v0;
  sub_1C5401ECC();
  sub_1C5401ECC();

  v1 = *(*(v0 + 208) + 8);

  return v1();
}

uint64_t sub_1C5495F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 120) = v5;
  *(v6 + 169) = a5;
  *(v6 + 112) = a4;
  *(v6 + 104) = a3;
  *(v6 + 96) = a2;
  *(v6 + 88) = a1;
  *(v6 + 48) = v6;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 168) = 0;
  *(v6 + 56) = 0;
  *(v6 + 80) = 0;
  v7 = sub_1C5594C74();
  *(v6 + 128) = v7;
  *(v6 + 136) = *(v7 - 8);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 168) = a5 & 1;
  *(v6 + 56) = v5;
  sub_1C55967E4();
  *(v6 + 160) = sub_1C55967D4();
  v15 = sub_1C55967A4();

  return MEMORY[0x1EEE6DFA0](sub_1C54960FC, v15, v8);
}

uint64_t sub_1C54960FC()
{
  v84 = v0;
  v1 = *(v0 + 152);
  v48 = *(v0 + 136);
  v49 = *(v0 + 128);
  v55 = *(v0 + 169);
  v54 = *(v0 + 112);
  v53 = *(v0 + 104);
  v52 = *(v0 + 96);
  v51 = *(v0 + 88);
  *(v0 + 48) = v0;
  v2 = sub_1C54B05F8();
  v50 = *(v48 + 16);
  v50(v1, v2, v49);
  sub_1C5594CF4();
  v56 = swift_allocObject();
  *(v56 + 16) = v51;
  *(v56 + 24) = v52;
  sub_1C5594CF4();
  v58 = swift_allocObject();
  *(v58 + 16) = v53;
  *(v58 + 24) = v54;
  v60 = swift_allocObject();
  *(v60 + 16) = v55 & 1;
  v72 = sub_1C5594C54();
  v73 = sub_1C5596944();
  v62 = swift_allocObject();
  *(v62 + 16) = 32;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1C5499100;
  *(v57 + 24) = v56;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1C5473EFC;
  *(v64 + 24) = v57;
  v65 = swift_allocObject();
  *(v65 + 16) = 32;
  v66 = swift_allocObject();
  *(v66 + 16) = 8;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_1C5499100;
  *(v59 + 24) = v58;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1C5473EFC;
  *(v67 + 24) = v59;
  v68 = swift_allocObject();
  *(v68 + 16) = 32;
  v69 = swift_allocObject();
  *(v69 + 16) = 8;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1C5499430;
  *(v61 + 24) = v60;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_1C5473EFC;
  *(v70 + 24) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  sub_1C5596E04();
  v71 = v3;

  *v71 = sub_1C545C6D4;
  v71[1] = v62;

  v71[2] = sub_1C545C6D4;
  v71[3] = v63;

  v71[4] = sub_1C5473FA4;
  v71[5] = v64;

  v71[6] = sub_1C545C6D4;
  v71[7] = v65;

  v71[8] = sub_1C545C6D4;
  v71[9] = v66;

  v71[10] = sub_1C5473FA4;
  v71[11] = v67;

  v71[12] = sub_1C545C6D4;
  v71[13] = v68;

  v71[14] = sub_1C545C6D4;
  v71[15] = v69;

  v71[16] = sub_1C5473FA4;
  v71[17] = v70;
  sub_1C540FCD8();

  if (os_log_type_enabled(v72, v73))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v45 = sub_1C5419DC0(0);
    v46 = sub_1C5419DC0(3);
    v79 = buf;
    v80 = v45;
    v81 = v46;
    sub_1C5419E14(2, &v79);
    sub_1C5419E14(3, &v79);
    v82 = sub_1C545C6D4;
    v83 = v62;
    sub_1C5419E28(&v82, &v79, &v80, &v81);
    v82 = sub_1C545C6D4;
    v83 = v63;
    sub_1C5419E28(&v82, &v79, &v80, &v81);
    v82 = sub_1C5473FA4;
    v83 = v64;
    sub_1C5419E28(&v82, &v79, &v80, &v81);
    v82 = sub_1C545C6D4;
    v83 = v65;
    sub_1C5419E28(&v82, &v79, &v80, &v81);
    v82 = sub_1C545C6D4;
    v83 = v66;
    sub_1C5419E28(&v82, &v79, &v80, &v81);
    v82 = sub_1C5473FA4;
    v83 = v67;
    sub_1C5419E28(&v82, &v79, &v80, &v81);
    v82 = sub_1C545C6D4;
    v83 = v68;
    sub_1C5419E28(&v82, &v79, &v80, &v81);
    v82 = sub_1C545C6D4;
    v83 = v69;
    sub_1C5419E28(&v82, &v79, &v80, &v81);
    v82 = sub_1C5473FA4;
    v83 = v70;
    sub_1C5419E28(&v82, &v79, &v80, &v81);
    _os_log_impl(&dword_1C5355000, v72, v73, "Updating snap info. First name: %s, last name: %s, sharing type: %s.", buf, 0x20u);
    sub_1C5419E74(v45);
    sub_1C5419E74(v46);
    sub_1C5596A54();
  }

  else
  {
  }

  v39 = *(v47 + 152);
  v40 = *(v47 + 128);
  v4 = *(v47 + 120);
  v43 = *(v47 + 112);
  v42 = *(v47 + 96);
  v38 = *(v47 + 136);
  v5 = MEMORY[0x1E69E5920](v72);
  v41 = *(v38 + 8);
  v41(v39, v40, v5);
  sub_1C5498E30();
  sub_1C5594CF4();
  v6 = sub_1C5594CF4();
  *(v47 + 64) = (*(*v4 + 296))(v6);
  if (*(v47 + 64))
  {
    v35 = *(v47 + 64);
    MEMORY[0x1E69E5928](v35);
    sub_1C5401EF8((v47 + 64));
    v36 = [v35 avatar];
    v7 = MEMORY[0x1E69E5920](v35);
    v37 = v36;
  }

  else
  {
    sub_1C5401EF8((v47 + 64));
    v37 = 0;
  }

  *(v47 + 72) = (*(**(v47 + 120) + 296))(v7);
  if (*(v47 + 72))
  {
    v32 = *(v47 + 72);
    MEMORY[0x1E69E5928](v32);
    sub_1C5401EF8((v47 + 72));
    v33 = [v32 pronouns];
    MEMORY[0x1E69E5920](v32);
    v34 = v33;
  }

  else
  {
    sub_1C5401EF8((v47 + 72));
    v34 = 0;
  }

  v22 = *(v47 + 144);
  v23 = *(v47 + 128);
  v24 = *(v47 + 120);
  v21 = sub_1C549764C(*(v47 + 88), v42, *(v47 + 104), v43, v37, v34);
  *(v47 + 80) = v21;
  v20 = v24[3];
  MEMORY[0x1E69E5928](v20);
  [v20 setPersonalNickname_];
  MEMORY[0x1E69E5920](v20);
  MEMORY[0x1E69E5928](v21);
  (*(*v24 + 304))(v21);
  v8 = sub_1C54B05F8();
  v50(v22, v8, v23);

  oslog = sub_1C5594C54();
  v31 = sub_1C5596944();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1C54993E8;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1C5473EFC;
  *(v28 + 24) = v25;
  sub_1C5596E04();
  v29 = v9;

  *v29 = sub_1C545C6D4;
  v29[1] = v26;

  v29[2] = sub_1C545C6D4;
  v29[3] = v27;

  v29[4] = sub_1C5473FA4;
  v29[5] = v28;
  sub_1C540FCD8();

  if (os_log_type_enabled(oslog, v31))
  {
    v17 = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v18 = sub_1C5419DC0(0);
    v19 = sub_1C5419DC0(1);
    v74 = v17;
    v75 = v18;
    v76 = v19;
    sub_1C5419E14(2, &v74);
    sub_1C5419E14(1, &v74);
    v77 = sub_1C545C6D4;
    v78 = v26;
    sub_1C5419E28(&v77, &v74, &v75, &v76);
    v77 = sub_1C545C6D4;
    v78 = v27;
    sub_1C5419E28(&v77, &v74, &v75, &v76);
    v77 = sub_1C5473FA4;
    v78 = v28;
    sub_1C5419E28(&v77, &v74, &v75, &v76);
    _os_log_impl(&dword_1C5355000, oslog, v31, "Updating sharedNameType to: %s because nickname value changed.", v17, 0xCu);
    sub_1C5419E74(v18);
    sub_1C5419E74(v19);
    sub_1C5596A54();
  }

  else
  {
  }

  v16 = *(v47 + 144);
  v14 = *(v47 + 128);
  v10 = *(v47 + 120);
  v15 = *(v47 + 169);
  v11 = MEMORY[0x1E69E5920](oslog);
  v41(v16, v14, v11);
  (*(*v10 + 352))(v15 & 1);
  MEMORY[0x1E69E5920](v21);

  v12 = *(*(v47 + 48) + 8);

  return v12();
}

uint64_t sub_1C54976B4(uint64_t a1)
{
  v2 = (*(*v1 + 568))();
  (*(*v8 + 400))(v2);
  v3 = (*(*v8 + 576))(a1);
  v4 = (*(*v8 + 448))(v3);
  v5 = (*(*v8 + 344))(v4);
  return (*(*v8 + 496))(v5 & 1);
}

uint64_t sub_1C5497834(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  sub_1C55967E4();
  v2[7] = sub_1C55967D4();
  v5 = sub_1C55967A4();
  v2[8] = v5;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C5497904, v5, v3);
}

uint64_t sub_1C5497904()
{
  v6 = v0[6];
  v0[2] = v0;
  v8 = (*(*v6 + 392))();
  v9 = v1;
  v0[10] = v1;
  v10 = (*(*v6 + 440))();
  v11 = v2;
  v0[11] = v2;
  v12 = (*(*v6 + 488))();
  v13 = (*(*v6 + 592) + **(*v6 + 592));
  v3 = swift_task_alloc();
  v7[12] = v3;
  *v3 = v7[2];
  v3[1] = sub_1C5497B18;
  v4 = v7[5];

  return v13(v4, v8, v9, v10, v11, v12 & 1);
}

uint64_t sub_1C5497B18()
{
  v4 = *v0;
  *(*v0 + 16) = *v0;

  v1 = *(v4 + 72);
  v2 = *(v4 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1C5497C98, v2, v1);
}

uint64_t sub_1C5497C98()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_1C5497D28(uint64_t a1)
{
  v43 = a1;
  v63 = 0;
  v62 = 0;
  v57 = 0;
  v58 = 0;
  v40 = 0;
  v38 = (*(*(sub_1C55949C4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v39 = &v13[-v38];
  v41 = (*(*(sub_1C5596544() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v13[-v41];
  v44 = sub_1C5596524();
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v43);
  v48 = &v13[-v47];
  v49 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v50 = &v13[-v49];
  v51 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v52 = &v13[-v51];
  v63 = v6;
  v62 = v1;
  v53 = [v6 aa_fullName];
  if (v53)
  {
    v37 = v53;
    v32 = v53;
    v33 = sub_1C5596574();
    v34 = v7;
    MEMORY[0x1E69E5920](v32);
    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v30 = v36;
  v31 = v35;
  if (v36)
  {
    v28 = v31;
    v29 = v30;
    v23 = v30;
    v18 = v31;
    v57 = v31;
    v58 = v30;
    sub_1C5596514();
    *&v20[1] = 1;
    sub_1C55965F4();
    v17 = v8;
    sub_1C5596504();

    sub_1C55964F4();
    sub_1C55965F4();
    v19 = v9;
    sub_1C5596504();

    (*(v45 + 16))(v50, v52, v44);
    (*(v45 + 32))(v48, v50, v44);
    (*(v45 + 8))(v52, v44);
    sub_1C5596534();
    v21 = 0;
    sub_1C5439370();
    v22 = sub_1C5576C44();
    sub_1C54982B4();
    v54 = 0;
    v55 = 0;
    v56 = *v20 & 0x100;
    v24 = sub_1C5596594();
    v25 = v10;

    v26 = v24;
    v27 = v25;
  }

  else
  {
    *&v14[1] = 1;
    sub_1C55965F4();
    sub_1C55964E4();
    v15 = 0;
    sub_1C5439370();
    v16 = sub_1C5576C44();
    sub_1C54982B4();
    v59 = 0;
    v60 = 0;
    v61 = *v14 & 0x100;
    v26 = sub_1C5596594();
    v27 = v11;
  }

  return v26;
}

uint64_t sub_1C54982CC()
{
  v20 = 0;
  v9 = 0;
  v10 = (*(*(sub_1C55949C4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4[-v10];
  v1 = sub_1C5596544();
  v12 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v13 = &v4[-v12];
  v20 = v0;
  (*(*v0 + 392))();
  v14 = v2;
  v15 = sub_1C5596614();

  if ((v15 & 1) == 0)
  {
    return sub_1C55965F4();
  }

  v5 = 1;
  sub_1C55965F4();
  sub_1C55964E4();
  v6 = 0;
  sub_1C5439370();
  v7 = sub_1C5576C44();
  sub_1C54982B4();
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v5 & 1;
  return sub_1C5596594();
}

uint64_t sub_1C54984C0()
{
  v20 = 0;
  v9 = 0;
  v10 = (*(*(sub_1C55949C4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v11 = &v4[-v10];
  v1 = sub_1C5596544();
  v12 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v13 = &v4[-v12];
  v20 = v0;
  (*(*v0 + 440))();
  v14 = v2;
  v15 = sub_1C5596614();

  if ((v15 & 1) == 0)
  {
    return sub_1C55965F4();
  }

  v5 = 1;
  sub_1C55965F4();
  sub_1C55964E4();
  v6 = 0;
  sub_1C5439370();
  v7 = sub_1C5576C44();
  sub_1C54982B4();
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v5 & 1;
  return sub_1C5596594();
}

uint64_t sub_1C54986B4@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar;
  v2 = sub_1C5594B24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5498728(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = sub_1C5594B24();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_1C5498AE0();
  sub_1C5594AE4();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1C5498898@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_1C5594B24();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + *MEMORY[0x1E69E77B0] + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_1C5498AE0();
  v8 = v22;
  sub_1C5594AD4();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

unint64_t sub_1C5498AE0()
{
  v2 = qword_1EC15D1B0;
  if (!qword_1EC15D1B0)
  {
    type metadata accessor for NameAndPhotoSharingViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D1B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for NameAndPhotoSharingViewModel()
{
  v1 = qword_1EC1631F0;
  if (!qword_1EC1631F0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata accessor for CNMeCardSharingAudience()
{
  v4 = qword_1EC15E1D0;
  if (!qword_1EC15E1D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EC15E1D0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1C5498C6C()
{
  v2 = qword_1EC15D1B8;
  if (!qword_1EC15D1B8)
  {
    type metadata accessor for CNMeCardSharingAudience();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D1B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5498D18()
{
  v2 = qword_1EC15D1C8;
  if (!qword_1EC15D1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D1C0);
    sub_1C5498DB0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D1C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5498DB0()
{
  v2 = qword_1EC15D1D0;
  if (!qword_1EC15D1D0)
  {
    sub_1C5498E30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D1D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5498E30()
{
  v2 = qword_1EC15D1D8;
  if (!qword_1EC15D1D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D1D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C5498EC0()
{
  v2 = qword_1EC15D1E0;
  if (!qword_1EC15D1E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D1E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5498FF8()
{
  v2 = qword_1EC15D1F0;
  if (!qword_1EC15D1F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D1F0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C549905C()
{
  v2 = qword_1EC15D1F8;
  if (!qword_1EC15D1F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D1F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C5499100()
{
  result = *(v0 + 16);
  sub_1C5492D20();
  return result;
}

uint64_t NameAndPhotoSharingViewModel.deinit()
{
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 3));
  MEMORY[0x1E69E5920](*(v0 + 4));
  MEMORY[0x1E69E5920](*(v0 + 5));
  sub_1C5401EF8(v0 + 8);
  sub_1C5401ECC();
  sub_1C5401ECC();
  v3 = OBJC_IVAR____TtC14AppleAccountUI28NameAndPhotoSharingViewModel___observationRegistrar;
  v1 = sub_1C5594B24();
  (*(*(v1 - 8) + 8))(&v0[v3]);
  return v4;
}

id sub_1C5499238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = sub_1C5596554();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (a4)
  {
    v10 = sub_1C5596554();

    v6 = [v16 initWithFirstName:v12 lastName:v10 avatar:? pronouns:?];
  }

  else
  {
    v6 = [v16 initWithFirstName:v12 lastName:0 avatar:? pronouns:?];
  }

  v9 = v6;
  MEMORY[0x1E69E5920](a6);
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v12);
  return v9;
}

uint64_t sub_1C5499458()
{
  updated = sub_1C5594B24();
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

unint64_t sub_1C54995D0()
{
  v2 = qword_1EC15D230;
  if (!qword_1EC15D230)
  {
    type metadata accessor for CNMeCardSharingAudience();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C5499650()
{
  v2 = qword_1EC15D240;
  if (!qword_1EC15D240)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15D240);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_1C54996B4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  v7 = v4;
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x60))(v2);
  sub_1C5458604(v6, a2);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1C549975C(uint64_t a1, void *a2)
{
  sub_1C5432498(a1, v5);
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x68))(v5);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C5499804@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC14AppleAccountUI40ExampleActionInvokingOBWelcomeController_flowDirector;
  swift_beginAccess();
  sub_1C5432498(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1C5499868(uint64_t a1)
{
  v6 = 0;
  v7 = a1;
  sub_1C5432498(a1, v5);
  __dst = (v1 + OBJC_IVAR____TtC14AppleAccountUI40ExampleActionInvokingOBWelcomeController_flowDirector);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(__dst);
  sub_1C5458604(v5, __dst);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1C5499960@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928](*a1);
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x78))(v2);
  return MEMORY[0x1E69E5920](v4);
}

double sub_1C5499A00(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x80))(v5);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1C5499AAC()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI40ExampleActionInvokingOBWelcomeController_stage);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1C5499B1C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI40ExampleActionInvokingOBWelcomeController_stage);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *ExampleActionInvokingOBWelcomeController.init(model:stage:flowDirector:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v14 = a1;
  v13 = a2;
  v12 = a3;
  MEMORY[0x1E69E5928](a2);
  *OBJC_IVAR____TtC14AppleAccountUI40ExampleActionInvokingOBWelcomeController_stage = a2;
  v4 = v15;
  sub_1C5432498(a3, v11);
  sub_1C5458604(v11, &v4[OBJC_IVAR____TtC14AppleAccountUI40ExampleActionInvokingOBWelcomeController_flowDirector]);
  v10.receiver = v15;
  v10.super_class = type metadata accessor for ExampleActionInvokingOBWelcomeController();
  v9 = objc_msgSendSuper2(&v10, sel_initWithViewModel_, a1);
  MEMORY[0x1E69E5928](v9);
  v15 = v9;
  MEMORY[0x1E69E5928](v9);
  v5 = [v9 navigationItem];
  [v5 setHidesBackButton_];
  MEMORY[0x1E69E5920](v5);
  ExampleActionInvokingOBWelcomeController.setupInvokingActions()();
  __swift_destroy_boxed_opaque_existential_0(a3);
  MEMORY[0x1E69E5920](a2);
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v15);
  return v9;
}

Swift::Void __swiftcall ExampleActionInvokingOBWelcomeController.setupInvokingActions()()
{
  v75 = 0;
  v60 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v61 = sub_1C5594C74();
  v62 = *(v61 - 8);
  v63 = v62;
  MEMORY[0x1EEE9AC00](v61 - 8);
  v64 = v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v0;
  v2 = v0;
  v66 = [v65 primaryButton];
  if (v66)
  {
    v59 = v66;
    v57 = v66;
    v70 = v66;

    v3 = v65;
    v4 = [v65 secondaryButton];
    v58 = v4;
    if (v4)
    {
      v56 = v58;
      v54 = v58;
      v69 = v58;

      v48 = 0;
      v42 = sub_1C545C6F4();
      v5 = v65;
      v43 = 24;
      v44 = 7;
      v38 = swift_allocObject();
      *(v38 + 16) = v65;
      v41 = sub_1C54398B0();
      v40 = v6;
      v39 = sub_1C545B878();
      sub_1C53FE664();
      v53 = sub_1C5596A44();
      v68 = v53;
      v7 = v65;
      v45 = swift_allocObject();
      *(v45 + 16) = v65;
      v49 = sub_1C54398B0();
      v47 = v8;
      v46 = sub_1C545B878();
      v9 = sub_1C53FE664();
      v17 = v45;
      v16 = sub_1C549B9D8;
      v15 = v9;
      v14[1] = v46;
      v14[0] = v48;
      v52 = sub_1C5596A44();
      v67 = v52;
      v50 = 0x1FB0D4000uLL;
      v51 = 64;
      [v57 0x1FB0D4EF8];
      [v54 (v50 + 3832)];

      v55 = v60;
      return;
    }
  }

  else
  {
  }

  v10 = v64;
  v11 = sub_1C54B05F8();
  (*(v63 + 16))(v10, v11, v61);
  v36 = sub_1C5594C54();
  v33 = v36;
  v35 = sub_1C5596954();
  v34 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v37 = sub_1C5596E04();
  if (os_log_type_enabled(v36, v35))
  {
    v12 = v60;
    v24 = sub_1C5596A74();
    v20 = v24;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v22 = 0;
    v25 = sub_1C5419DC0(0);
    v23 = v25;
    v26 = sub_1C5419DC0(v22);
    v74 = v24;
    v73 = v25;
    v72 = v26;
    v27 = 0;
    v28 = &v74;
    sub_1C5419E14(0, &v74);
    sub_1C5419E14(v27, v28);
    v71 = v37;
    v29 = v18;
    MEMORY[0x1EEE9AC00](v18);
    v30 = v14;
    v15 = v13;
    v16 = &v73;
    v17 = &v72;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v32 = v12;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v33, v34, "Failed to create buttons.", v20, 2u);
      v18[2] = 0;
      sub_1C5419E74(v23);
      sub_1C5419E74(v26);
      sub_1C5596A54();

      v19 = v32;
    }
  }

  else
  {

    v19 = v60;
  }

  v18[1] = v19;

  (*(v63 + 8))(v64, v61);
}

id ExampleActionInvokingOBWelcomeController.__allocating_init(viewModel:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(v1) initWithViewModel_];
  swift_unknownObjectRelease();
  return v3;
}

id ExampleActionInvokingOBWelcomeController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

id ExampleActionInvokingOBWelcomeController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

id ExampleActionInvokingOBWelcomeController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExampleActionInvokingOBWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1C549AEA4(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((**v1 & *MEMORY[0x1E69E7D40]) + 0x70))();
  return sub_1C545A074;
}

uint64_t sub_1C549AF78(uint64_t a1, uint64_t *a2)
{
  v41 = a2;
  v40 = a1;
  v50 = 0;
  v64 = 0;
  v63 = 0;
  v39 = 0;
  v47 = sub_1C5594C74();
  v42 = v47;
  v43 = *(v47 - 8);
  v46 = v43;
  v44 = v43;
  v2 = MEMORY[0x1EEE9AC00](v40);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v4;
  v64 = v2;
  v63 = v5;
  v6 = sub_1C54B05F8();
  (*(v46 + 16))(v4, v6, v47);
  v52 = sub_1C5594C54();
  v48 = v52;
  v51 = sub_1C5596974();
  v49 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v53 = sub_1C5596E04();
  if (os_log_type_enabled(v52, v51))
  {
    v7 = v39;
    v30 = sub_1C5596A74();
    v26 = v30;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v28 = 0;
    v31 = sub_1C5419DC0(0);
    v29 = v31;
    v32 = sub_1C5419DC0(v28);
    v57 = v30;
    v56 = v31;
    v55 = v32;
    v33 = 0;
    v34 = &v57;
    sub_1C5419E14(0, &v57);
    sub_1C5419E14(v33, v34);
    v54 = v53;
    v35 = &v17;
    MEMORY[0x1EEE9AC00](&v17);
    v36 = &v17 - 6;
    *(&v17 - 4) = v8;
    *(&v17 - 3) = &v56;
    *(&v17 - 2) = &v55;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v38 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v48, v49, "Advancing action.", v26, 2u);
      v24 = 0;
      sub_1C5419E74(v29);
      sub_1C5419E74(v32);
      sub_1C5596A54();

      v25 = v38;
    }
  }

  else
  {

    v25 = v39;
  }

  v9 = v41;

  v10 = (*(v44 + 8))(v45, v42);
  v11 = *v9;
  v18 = MEMORY[0x1E69E7D40];
  v12 = *((v11 & *MEMORY[0x1E69E7D40]) + 0x60);
  v23 = &v60;
  v12(v10);
  v13 = v41;
  v20 = v61;
  v21 = v62;
  v19 = __swift_project_boxed_opaque_existential_0(v23, v61);
  v14 = (*((*v13 & *v18) + 0x78))();
  v58[0] = 0;
  v58[1] = v14;
  v59 = 0;
  v15 = *(v21 + 32);
  v22 = v58;
  v15();
  sub_1C545CDC0(v22);
  return __swift_destroy_boxed_opaque_existential_0(v23);
}

uint64_t sub_1C549B4A4(uint64_t a1, uint64_t *a2)
{
  v41 = a2;
  v40 = a1;
  v50 = 0;
  v64 = 0;
  v63 = 0;
  v39 = 0;
  v47 = sub_1C5594C74();
  v42 = v47;
  v43 = *(v47 - 8);
  v46 = v43;
  v44 = v43;
  v2 = MEMORY[0x1EEE9AC00](v40);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v4;
  v64 = v2;
  v63 = v5;
  v6 = sub_1C54B05F8();
  (*(v46 + 16))(v4, v6, v47);
  v52 = sub_1C5594C54();
  v48 = v52;
  v51 = sub_1C5596974();
  v49 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v53 = sub_1C5596E04();
  if (os_log_type_enabled(v52, v51))
  {
    v7 = v39;
    v30 = sub_1C5596A74();
    v26 = v30;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v28 = 0;
    v31 = sub_1C5419DC0(0);
    v29 = v31;
    v32 = sub_1C5419DC0(v28);
    v57 = v30;
    v56 = v31;
    v55 = v32;
    v33 = 0;
    v34 = &v57;
    sub_1C5419E14(0, &v57);
    sub_1C5419E14(v33, v34);
    v54 = v53;
    v35 = &v17;
    MEMORY[0x1EEE9AC00](&v17);
    v36 = &v17 - 6;
    *(&v17 - 4) = v8;
    *(&v17 - 3) = &v56;
    *(&v17 - 2) = &v55;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1F0);
    sub_1C5419F0C();
    sub_1C55966B4();
    v38 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1C5355000, v48, v49, "Declining action.", v26, 2u);
      v24 = 0;
      sub_1C5419E74(v29);
      sub_1C5419E74(v32);
      sub_1C5596A54();

      v25 = v38;
    }
  }

  else
  {

    v25 = v39;
  }

  v9 = v41;

  v10 = (*(v44 + 8))(v45, v42);
  v11 = *v9;
  v18 = MEMORY[0x1E69E7D40];
  v12 = *((v11 & *MEMORY[0x1E69E7D40]) + 0x60);
  v23 = &v60;
  v12(v10);
  v13 = v41;
  v20 = v61;
  v21 = v62;
  v19 = __swift_project_boxed_opaque_existential_0(v23, v61);
  v14 = (*((*v13 & *v18) + 0x78))();
  v58[0] = 0;
  v58[1] = v14;
  v59 = 1;
  v15 = *(v21 + 32);
  v22 = v58;
  v15();
  sub_1C545CDC0(v22);
  return __swift_destroy_boxed_opaque_existential_0(v23);
}

uint64_t sub_1C549BBFC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for AppleAccountBirthdayPickerRow() + 20);
  v2 = sub_1C5596384();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for AppleAccountBirthdayPickerRow()
{
  v1 = qword_1EC163D20;
  if (!qword_1EC163D20)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C549BD14()
{
  type metadata accessor for AppleAccountBirthdayPickerRow();

  sub_1C55963A4();
  sub_1C549BD98();
  v1 = sub_1C5595284();

  return v1;
}

unint64_t sub_1C549BD98()
{
  v2 = qword_1EC15D260;
  if (!qword_1EC15D260)
  {
    sub_1C55963A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D260);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C549BE18()
{
  sub_1C55963A4();
  sub_1C549BD98();
  return sub_1C55952A4();
}

uint64_t sub_1C549BE50()
{
  type metadata accessor for AppleAccountBirthdayPickerRow();

  sub_1C55963A4();
  sub_1C549BD98();
  v1 = sub_1C5595294();

  return v1;
}

uint64_t sub_1C549BED4()
{
  v2 = *(v0 + *(type metadata accessor for AppleAccountBirthdayPickerRow() + 28));

  return v2;
}

uint64_t sub_1C549BF1C(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for AppleAccountBirthdayPickerRow() + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C549BF74()
{
  v1 = v0 + *(type metadata accessor for AppleAccountBirthdayPickerRow() + 32);
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 17);
  sub_1C549C060(*v1, v4, *(v1 + 16), v6 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D268);
  sub_1C5595004();
  sub_1C549C0AC(v3, v4, v5, v6 & 1);
  return v7;
}

uint64_t sub_1C549C060(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_1C549C0AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_1C549C0F8()
{
  swift_getKeyPath();
  sub_1C5595024();
  return v1;
}

uint64_t sub_1C549C144@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = a2;
  v12[1] = a1;
  v18 = sub_1C5595324();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v13 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v17 = v12 - v13;
  (*(v15 + 16))(v12 - v13);
  v2 = sub_1C55952E4();
  v3 = v14;
  v4 = v15;
  v5 = v2;
  v6 = v17;
  v8 = v7;
  v9 = v18;
  *v14 = v5;
  v3[1] = v8;
  *(v3 + 16) = v10 & 1;
  return (*(v4 + 8))(v6, v9);
}

uint64_t sub_1C549C294()
{
  v1 = v0 + *(type metadata accessor for AppleAccountBirthdayPickerRow() + 32);
  v3 = *v1;
  sub_1C549C060(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 17) & 1);
  return v3;
}

uint64_t sub_1C549C31C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v12 = a3;
  v13 = HIBYTE(a3);
  sub_1C549C060(a1, a2, a3, HIBYTE(a3) & 1);
  v4 = v3 + *(type metadata accessor for AppleAccountBirthdayPickerRow() + 32);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 17);
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = v12;
  *(v4 + 17) = v13 & 1;
  sub_1C549C0AC(v5, v6, v7, v8 & 1);
  return sub_1C549C0AC(a1, a2, v12, v13 & 1);
}

uint64_t sub_1C549C3D4()
{

  type metadata accessor for BirthdayPickerRowViewModel();
  sub_1C5595F74();

  return v1;
}

uint64_t sub_1C549C44C()
{
  type metadata accessor for AppleAccountBirthdayPickerRow();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270);
  sub_1C5595F84();

  return v1;
}

uint64_t sub_1C549C4E8()
{
  type metadata accessor for AppleAccountBirthdayPickerRow();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270);
  sub_1C5595F94();
  sub_1C5436F54();
}

uint64_t sub_1C549C5BC()
{
  type metadata accessor for AppleAccountBirthdayPickerRow();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C549C670()
{
  v2 = *(v0 + *(type metadata accessor for AppleAccountBirthdayPickerRow() + 36));

  return v2;
}

uint64_t sub_1C549C6C0(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for AppleAccountBirthdayPickerRow() + 36));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C549C738@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v43 = MEMORY[0x1E69E85E0];
  v51 = sub_1C549CD38;
  v48 = sub_1C549CEA8;
  v57 = 0;
  v56 = 0;
  v34 = 0;
  v50 = sub_1C5594924();
  v29 = *(v50 - 8);
  v30 = v50 - 8;
  v20 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v31 = &v20 - v20;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278);
  v21 = *(v2 - 8);
  v36 = v21;
  v40 = *(v21 + 64);
  v22 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v20 - v22;
  v23 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v20 - v22);
  v52 = &v20 - v23;
  v57 = &v20 - v23;
  v56 = v1;
  v4 = sub_1C549BD14();
  v5 = v24;
  v33 = v4;
  v28 = *v24;
  v32 = v24[1];
  sub_1C5594CF4();
  v6 = (v5 + *(type metadata accessor for AppleAccountBirthdayPickerRow() + 36));
  v25 = *v6;
  v26 = v6[1];

  v54 = v25;
  v55 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270);
  sub_1C5595F84();
  v7 = v53;
  v27 = v53;

  (*(*v7 + 232))(v8);

  sub_1C5596394();
  (*(v29 + 8))(v31, v50);

  sub_1C549CBC4(v52, v45);
  v35 = sub_1C55967E4();
  v37 = sub_1C55967D4();
  v39 = *(v36 + 80);
  v38 = (v39 + 32) & ~v39;
  v41 = 7;
  v9 = swift_allocObject();
  v10 = v38;
  v11 = v43;
  v12 = v9;
  v13 = v45;
  v47 = v12;
  *(v12 + 16) = v37;
  *(v12 + 24) = v11;
  sub_1C549CC90(v13, (v12 + v10));
  sub_1C549CBC4(v52, v45);
  v42 = sub_1C55967D4();
  v44 = (v39 + 32) & ~v39;
  v14 = swift_allocObject();
  v15 = v43;
  v16 = v44;
  v17 = v14;
  v18 = v45;
  v49 = v17;
  *(v17 + 16) = v42;
  *(v17 + 24) = v15;
  sub_1C549CC90(v18, (v17 + v16));
  sub_1C55960D4();
  return sub_1C549CF34(v52);
}

char *sub_1C549CBC4(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278) + 32);
  v2 = sub_1C5594924();
  (*(*(v2 - 8) + 16))(&a2[v6], &a1[v6]);
  return a2;
}

char *sub_1C549CC90(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278) + 32);
  v2 = sub_1C5594924();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

uint64_t sub_1C549CD38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278);

  return sub_1C549CB70();
}

uint64_t sub_1C549CDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v13 = 0;
  v12 = 0;
  v5 = sub_1C5594924();
  v10 = *(v5 - 8);
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v8 - v9;
  v13 = v6;
  v12 = a4;
  (*(v10 + 16))(&v8 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278);
  return sub_1C55960A4();
}

uint64_t sub_1C549CEA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));

  return sub_1C549CDC0(a1, v3, v4, v5);
}

uint64_t sub_1C549CF34(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278) + 32);
  v1 = sub_1C5594924();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1C549CFC8@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v141 = sub_1C549E560;
  v80 = MEMORY[0x1E6981420];
  v81 = sub_1C549F22C;
  v82 = MEMORY[0x1E697D510];
  v83 = sub_1C54A0B98;
  v84 = MEMORY[0x1E6981448];
  v85 = MEMORY[0x1E69811C8];
  v86 = MEMORY[0x1E697D248];
  v238 = 0;
  v237 = 0;
  v140 = 0;
  v87 = sub_1C55956B4();
  v88 = *(v87 - 8);
  v89 = v87 - 8;
  v90 = (*(v88 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v91 = v25 - v90;
  v92 = sub_1C5594924();
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v140);
  v96 = v25 - v95;
  v168 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v97 = *(v168 - 8);
  v98 = v97;
  v99 = *(v97 + 64);
  v100 = (v99 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v140);
  v101 = v25 - v100;
  v102 = type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture();
  v103 = (*(*(v102 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v102);
  v104 = v25 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D280);
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v105);
  v109 = v25 - v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D288);
  v111 = (*(*(v110 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v110);
  v112 = v25 - v111;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D290);
  v114 = *(v113 - 8);
  v115 = v113 - 8;
  v116 = (*(v114 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v113);
  v117 = v25 - v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D298);
  v119 = *(v118 - 8);
  v120 = v118 - 8;
  v121 = (*(v119 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v118);
  v122 = v25 - v121;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2A0);
  v124 = *(v123 - 8);
  v125 = v123 - 8;
  v126 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v123);
  v127 = v25 - v126;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2A8);
  v129 = (*(*(v128 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v128);
  v130 = v25 - v129;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2B0);
  v132 = *(v131 - 8);
  v133 = v131 - 8;
  v134 = (*(v132 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v131);
  v135 = v25 - v134;
  v136 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25 - v134);
  v137 = v25 - v136;
  v138 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25 - v136);
  v139 = v25 - v138;
  v238 = v25 - v138;
  v237 = v1;
  v142 = &v174;
  v175 = v1;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2B8);
  v144 = sub_1C549E5D4();
  sub_1C544B78C();
  v145 = &v233;
  sub_1C5596064();
  v146 = v239;
  v147 = 81;
  memcpy(v239, v145, 0x51uLL);
  v153 = v232;
  memcpy(v232, v239, 0x51uLL);
  v4 = (v1 + *(v168 + 36));
  v148 = *v4;
  v149 = v4[1];

  v230 = v148;
  v231 = v149;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270);
  sub_1C5595F84();
  v5 = v229;
  v150 = v229;

  v152 = (*(*v5 + 528))(v6);

  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2D0);
  sub_1C549E6F4();
  v154 = &v234;
  sub_1C5595BD4();
  v7 = v163;
  sub_1C5409FBC();
  v155 = __dst;
  v156 = 82;
  memcpy(__dst, v154, 0x52uLL);
  v164 = v228;
  memcpy(v228, __dst, 0x52uLL);
  v162 = sub_1C55957A4();
  v8 = &v7[*(v168 + 36)];
  v157 = *v8;
  v158 = *(v8 + 1);

  v226 = v157;
  v227 = v158;
  sub_1C5595F84();
  v159 = v225;

  v160 = *(v159 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_horizontalPadding);

  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2E0);
  sub_1C549E77C();
  v165 = &v235;
  sub_1C5595D84();
  v9 = v163;
  sub_1C5409FBC();
  v166 = v241;
  v167 = 129;
  memcpy(v241, v165, 0x81uLL);
  memcpy(v224, v241, 0x81uLL);
  v10 = &v9[*(v168 + 36)];
  v170 = *v10;
  v171 = *(v10 + 1);

  v222 = v170;
  v223 = v171;
  sub_1C5595F84();
  v11 = v221;
  v172 = v221;

  v173 = (*(*v11 + 576))(v12);

  if (v173)
  {
    v13 = [objc_opt_self() separatorColor];
  }

  else
  {
    v14 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  }

  v78 = sub_1C5595E44();
  v25[5] = &v219;
  v219 = v78;
  v25[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2F0);
  v25[3] = sub_1C549E820();
  v25[2] = MEMORY[0x1E69815C0];
  v25[4] = MEMORY[0x1E6981568];
  sub_1C5410CE8();
  v26 = &v236;
  v25[6] = v224;
  sub_1C5595A74();
  sub_1C5410D10();
  sub_1C5409FBC();
  v27 = v220;
  v28 = 145;
  memcpy(v220, v26, 0x91uLL);
  v32 = v218;
  memcpy(v218, v220, 0x91uLL);
  v15 = &v163[*(v168 + 36)];
  v29 = *v15;
  v30 = *(v15 + 1);

  v216 = v29;
  v217 = v30;
  sub_1C5595F84();
  v31 = v215;

  sub_1C549E8C4(v31, v104);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D300);
  v38 = sub_1C549E9BC();
  v39 = sub_1C549EA64();
  sub_1C549E994();
  sub_1C5595D54();
  sub_1C549EAE4(v104);
  sub_1C549EB4C();
  v41 = sub_1C5596224();
  v16 = &v163[*(v168 + 36)];
  v33 = *v16;
  v34 = *(v16 + 1);

  v213 = v33;
  v214 = v34;
  sub_1C5595F84();
  v17 = v212;
  v35 = v212;

  v36 = (*(*v17 + 576))(v18);

  v40 = &v211;
  v211 = v36 & 1;
  v207 = v37;
  v208 = v102;
  v209 = v38;
  v210 = v39;
  v74 = 1;
  swift_getOpaqueTypeConformance2();
  sub_1C5595DF4();

  (*(v106 + 8))(v109, v105);
  v19 = &v163[*(v168 + 36)];
  v42 = *v19;
  v43 = *(v19 + 1);

  v205 = v42;
  v206 = v43;
  sub_1C5595FA4();
  v44 = v202;
  v45 = v203;
  v46 = v204;

  KeyPath = swift_getKeyPath();
  v199 = v44;
  v200 = v45;
  v201 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D320);
  sub_1C55960B4();
  v50 = v196;
  v51 = v197;
  v48 = v198;

  sub_1C549EF2C(v163, v101);
  v56 = *(v98 + 80);
  v47 = (v56 + 16) & ~v56;
  v57 = 7;
  v49 = swift_allocObject();
  sub_1C549F11C(v101, (v49 + v47));
  v65 = 0;
  v59 = type metadata accessor for BirthdayPickerSheet();
  v60 = sub_1C549F314();
  v61 = sub_1C549F4BC();
  sub_1C5595D34();

  sub_1C53644DC(v112);
  v20 = &v163[*(v168 + 36)];
  v53 = *v20;
  v54 = *(v20 + 1);

  v194 = v53;
  v195 = v54;
  sub_1C5595F84();
  v21 = v193;
  v55 = v193;

  (*(*v21 + 264))(v22);

  sub_1C549EF2C(v163, v101);
  v58 = (v56 + 16) & ~v56;
  v62 = swift_allocObject();
  sub_1C549F11C(v101, (v62 + v58));
  v189 = v110;
  v190 = v59;
  v191 = v60;
  v192 = v61;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = sub_1C54290E8();
  sub_1C543AE1C();
  sub_1C5595DE4();

  (*(v93 + 8))(v96, v92);
  (*(v114 + 8))(v117, v113);
  v23 = &v163[*(v168 + 36)];
  v63 = *v23;
  v64 = *(v23 + 1);

  v187 = v63;
  v188 = v64;
  sub_1C5595F84();
  v68 = v186;

  v69 = type metadata accessor for BirthdayPickerRowViewModel();
  v182 = v113;
  v183 = v92;
  v184 = OpaqueTypeConformance2;
  v185 = v67;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = sub_1C5429194();
  sub_1C5595AF4();

  (*(v119 + 8))(v122, v118);
  v72 = v163[*(v168 + 24)];
  v178 = v118;
  v179 = v69;
  v180 = v70;
  v181 = v71;
  swift_getOpaqueTypeConformance2();
  sub_1C5595DA4();
  (*(v124 + 8))(v127, v123);
  sub_1C55956A4();
  v73 = sub_1C54A0C5C();
  sub_1C5595C44();
  (*(v88 + 8))(v91, v87);
  sub_1C53646D4(v130);
  v176 = v128;
  v177 = v73;
  v75 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v137, v131, v139);
  v77 = *(v132 + 8);
  v76 = v132 + 8;
  v77(v137, v131);
  (*(v132 + 16))(v135, v139, v131);
  sub_1C540EFD8(v135, v131, v79);
  v77(v135, v131);
  return (v77)(v139, v131);
}

uint64_t type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture()
{
  v1 = qword_1EC163D30;
  if (!qword_1EC163D30)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

_BYTE *sub_1C549E3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  type metadata accessor for AppleAccountBirthdayPickerRow();
  sub_1C549E568();
  sub_1C549E5A8();
  v13 = v2;
  v14 = v3;
  v10 = v2;
  v11 = v3 & 0xFF01;
  v12 = BYTE2(v3);
  sub_1C5595804();
  sub_1C549E678();
  sub_1C5595D84();
  sub_1C5410D10();
  memcpy(__dst, v15, sizeof(__dst));
  memcpy(v9, __dst, 0x39uLL);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2B8);
  sub_1C549E5D4();
  sub_1C540EFD8(v9, v6, v16);
  sub_1C5410D10();
  memcpy(v19, v16, 0x39uLL);
  sub_1C54AFE0C(v19, v8);
  memcpy(v7, v19, 0x39uLL);
  sub_1C540EFD8(v7, v6, a2);
  sub_1C5410D10();
  result = v16;
  sub_1C5410D10();
  return result;
}

uint64_t sub_1C549E568()
{
  type metadata accessor for BirthdayPickerRowViewModel();
  sub_1C5429194();
  return sub_1C5595034();
}

unint64_t sub_1C549E5D4()
{
  v2 = qword_1EC15D2C0;
  if (!qword_1EC15D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D2B8);
    sub_1C549E678();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D2C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C549E678()
{
  v2 = qword_1EC15D2C8;
  if (!qword_1EC15D2C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D2C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C549E6F4()
{
  v2 = qword_1EC15D2D8;
  if (!qword_1EC15D2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D2D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D2D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C549E77C()
{
  v2 = qword_1EC15D2E8;
  if (!qword_1EC15D2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D2E0);
    sub_1C549E6F4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D2E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C549E820()
{
  v2 = qword_1EC15D2F8;
  if (!qword_1EC15D2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D2F0);
    sub_1C549E77C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D2F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C549E8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v4 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v3 - v5;
  sub_1C54A0E74();
  return (*(v6 + 32))(v8, v9, v10);
}

unint64_t sub_1C549E9BC()
{
  v2 = qword_1EC15D308;
  if (!qword_1EC15D308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D300);
    sub_1C549E820();
    sub_1C5410EE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D308);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C549EA64()
{
  v2 = qword_1EC15D310;
  if (!qword_1EC15D310)
  {
    type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D310);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C549EAE4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C549EB84@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v22 = a1;
  v29 = sub_1C54AFB7C;
  v31 = sub_1C54AFBE0;
  v43 = 0;
  v42 = 0;
  v9[1] = 0;
  v18 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v10 = *(v18 - 8);
  v19 = v10;
  v24 = *(v10 + 64);
  v11 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v27 = v9 - v11;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v21 = v9 - v12;
  v35 = type metadata accessor for BirthdayPickerSheet();
  v14 = *(*(v35 - 8) + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v22);
  v37 = v9 - v13;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v38 = v9 - v15;
  v43 = v9 - v15;
  v42 = v5;
  v7 = (v5 + *(v6 + 36));
  v16 = *v7;
  v17 = v7[1];

  v40 = v16;
  v41 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270);
  sub_1C5595F84();
  v33 = v39;

  v28 = v22[*(v18 + 24)];
  sub_1C549EF2C(v22, v21);
  v23 = *(v19 + 80);
  v20 = (v23 + 16) & ~v23;
  v25 = 7;
  v30 = swift_allocObject();
  sub_1C549F11C(v21, (v30 + v20));
  sub_1C549EF2C(v22, v27);
  v26 = (v23 + 16) & ~v23;
  v32 = swift_allocObject();
  sub_1C549F11C(v27, (v32 + v26));
  sub_1C549FDF4(v33, v28 & 1, v29, v30, v31, v32, v37);
  v36 = sub_1C549F4BC();
  sub_1C540EFD8(v37, v35, v38);
  sub_1C54AFC44(v37);
  sub_1C54AFCE8(v38, v37);
  sub_1C540EFD8(v37, v35, v34);
  sub_1C54AFC44(v37);
  return sub_1C54AFC44(v38);
}

char *sub_1C549EF2C(char *a1, char *a2)
{
  *a2 = *a1;
  v6 = *(a1 + 1);
  sub_1C5594CF4();
  *(a2 + 1) = v6;
  v15 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v7 = v15[5];
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 16))(&a2[v7], &a1[v7]);
  a2[v15[6]] = a1[v15[6]];
  v8 = v15[7];
  v9 = *&a1[v8];

  v3 = &a2[v8];
  *v3 = v9;
  *(v3 + 1) = *&a1[v8 + 8];
  v10 = v15[8];
  v11 = *&a1[v10];
  v12 = *&a1[v10 + 8];
  v13 = a1[v10 + 16];
  v14 = a1[v10 + 17];
  sub_1C549C060(v11, v12, v13, v14 & 1);
  v4 = &a2[v10];
  *v4 = v11;
  *(v4 + 1) = v12;
  v4[16] = v13;
  v4[17] = v14 & 1;
  v17 = v15[9];
  v18 = *&a1[v17];

  *&a2[v17] = v18;
  v20 = *&a1[v17 + 8];

  result = a2;
  *&a2[v17 + 8] = v20;
  return result;
}

__n128 sub_1C549F11C(char *a1, char *a2)
{
  *a2 = *a1;
  v7 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v6 = v7[5];
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 32))(&a2[v6], &a1[v6]);
  a2[v7[6]] = a1[v7[6]];
  *&a2[v7[7]] = *&a1[v7[7]];
  v3 = v7[8];
  v4 = &a2[v3];
  *v4 = *&a1[v3];
  *(v4 + 8) = *&a1[v3 + 16];
  result = *&a1[v7[9]];
  *&a2[v7[9]] = result;
  return result;
}

uint64_t sub_1C549F22C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v3 = (v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)));

  return sub_1C549EB84(v3, a1);
}

uint64_t type metadata accessor for BirthdayPickerSheet()
{
  v1 = qword_1EC163D40;
  if (!qword_1EC163D40)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1C549F314()
{
  v2 = qword_1EC15D328;
  if (!qword_1EC15D328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D288);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D300);
    type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture();
    sub_1C549E9BC();
    sub_1C549EA64();
    swift_getOpaqueTypeConformance2();
    sub_1C549F434();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D328);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C549F434()
{
  v2 = qword_1EC15D330;
  if (!qword_1EC15D330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D338);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D330);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C549F4BC()
{
  v2 = qword_1EC15D340;
  if (!qword_1EC15D340)
  {
    type metadata accessor for BirthdayPickerSheet();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D340);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C549F53C()
{
  sub_1C549F65C();
  type metadata accessor for AppleAccountBirthdayPickerRow();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270);
  sub_1C5595F84();

  v1 = (*(*v2 + 688))();
  sub_1C5596794();
  v1();
}

uint64_t sub_1C549F65C()
{
  v41 = 0;
  v16 = 0;
  v1 = sub_1C5594924();
  v14 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v14 - v14;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278);
  v15 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v21 = &v14 - v15;
  v41 = v0;
  sub_1C549C738(&v14 - v15);
  v2 = v22;
  v25 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v3 = (v2 + *(v25 + 36));
  v17 = *v3;
  v18 = v3[1];

  v39 = v17;
  v40 = v18;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270);
  sub_1C5595F84();
  v4 = v38;
  v19 = v38;

  (*(*v4 + 232))(v5);

  sub_1C55960A4();
  v6 = v22;
  sub_1C549CF34(v21);
  v7 = (v6 + *(v25 + 36));
  v23 = *v7;
  v24 = v7[1];

  v36 = v23;
  v37 = v24;
  sub_1C5595F84();
  v8 = v22;
  v31 = v35;

  v9 = (v8 + *(v25 + 36));
  v27 = *v9;
  v28 = v9[1];

  v33 = v27;
  v34 = v28;
  sub_1C5595F84();
  v10 = v32;
  v29 = v32;

  (*(*v10 + 232))(v11);
  v12 = v31;

  (*(*v12 + 272))(v30);
}

uint64_t sub_1C549F954()
{
  sub_1C549FA74();
  type metadata accessor for AppleAccountBirthdayPickerRow();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270);
  sub_1C5595F84();

  v1 = (*(*v2 + 688))();
  sub_1C5596794();
  v1();
}

uint64_t sub_1C549FA74()
{
  v32 = MEMORY[0x1E69E85E0];
  v37 = &unk_1C55B1EA8;
  v46 = 0;
  v35 = 0;
  v23 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v17 = *(v23 - 8);
  v29 = v17;
  v30 = *(v17 + 64);
  v18 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v34 = &v17 - v18;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v23);
  v36 = &v17 - v19;
  v46 = v0;
  v2 = (v0 + *(v1 + 36));
  v20 = *v2;
  v21 = v2[1];

  v44 = v20;
  v45 = v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270);
  sub_1C5595F84();
  v3 = v43;
  v22 = v43;

  v4 = *(*v3 + 488);
  v27 = 1;
  v4(1);
  v5 = v28;

  v6 = &v5[*(v23 + 36)];
  v25 = *v6;
  v26 = *(v6 + 1);

  v41 = v25;
  v42 = v26;
  sub_1C5595F84();
  v39 = v40;

  v7 = sub_1C5596814();
  (*(*(v7 - 8) + 56))(v36, v27);
  sub_1C549EF2C(v28, v34);
  sub_1C55967E4();
  v8 = sub_1C55967D4();
  v9 = v39;
  v31 = v8;
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v10 = swift_allocObject();
  v11 = v32;
  v12 = v33;
  v13 = v10;
  v14 = v34;
  v38 = v13;
  *(v13 + 16) = v31;
  *(v13 + 24) = v11;
  sub_1C549F11C(v14, (v13 + v12));
  v15 = sub_1C54A6274(v35, v35, v36, v37, v38, MEMORY[0x1E69E7CA8] + 8);
  (*(*v9 + 440))(v15);
}

int *sub_1C549FDF4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a7;
  v15 = a1;
  v26 = a2;
  v21 = a3;
  v22 = a4;
  v24 = a5;
  v25 = a6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v16 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v15 - v16;
  sub_1C54A0E74();
  (*(v17 + 32))(v23, v19, v20);
  result = type metadata accessor for BirthdayPickerSheet();
  v8 = v21;
  v9 = v22;
  v10 = v23;
  v11 = v24;
  v12 = v25;
  *(v23 + result[5]) = v26;
  v13 = (v10 + result[6]);
  *v13 = v8;
  v13[1] = v9;
  v14 = (v10 + result[7]);
  *v14 = v11;
  v14[1] = v12;
  return result;
}

uint64_t sub_1C549FF24(uint64_t a1)
{
  v50 = a1;
  v72 = sub_1C54AF918;
  v75 = sub_1C54AF98C;
  v79 = sub_1C5473EFC;
  v81 = sub_1C545C6D4;
  v83 = sub_1C545C6D4;
  v86 = sub_1C5473FA4;
  v107 = 0;
  v106 = 0;
  v36 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278);
  v38 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v28 - v38;
  v41 = 0;
  v61 = sub_1C5594C74();
  v59 = *(v61 - 8);
  v60 = v61 - 8;
  v40 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v55 = v28 - v40;
  v71 = sub_1C5594924();
  v67 = *(v71 - 8);
  v68 = v71 - 8;
  v65 = v67;
  v66 = *(v67 + 64);
  v42 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v41);
  v70 = v28 - v42;
  v43 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v62 = v28 - v43;
  v107 = v28 - v43;
  v106 = v2;
  v49 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v3 = (v50 + *(v49 + 36));
  v44 = *v3;
  v45 = v3[1];

  v104 = v44;
  v105 = v45;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270);
  sub_1C5595F84();
  v4 = v103;
  v46 = v103;

  (*(*v4 + 632))(1);

  v5 = (v50 + *(v49 + 36));
  v47 = *v5;
  v48 = v5[1];

  v101 = v47;
  v102 = v48;
  sub_1C5595F84();
  v58 = v100;

  v6 = (v50 + *(v49 + 36));
  v52 = *v6;
  v53 = v6[1];

  v98 = v52;
  v99 = v53;
  sub_1C5595F84();
  v7 = v97;
  v54 = v97;

  (*(*v7 + 264))(v8);
  v9 = v58;

  (*(*v9 + 872))(v70);
  v10 = v55;
  v56 = *(v67 + 8);
  v57 = v67 + 8;
  v56(v70, v71);

  v11 = sub_1C54B05F8();
  (*(v59 + 16))(v10, v11, v61);
  v63 = *(v67 + 16);
  v64 = v67 + 16;
  v63(v70, v62, v71);
  v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v77 = 7;
  v73 = swift_allocObject();
  (*(v67 + 32))(v73 + v69, v70, v71);

  v76 = 32;
  v12 = swift_allocObject();
  v13 = v73;
  v78 = v12;
  *(v12 + 16) = v72;
  *(v12 + 24) = v13;

  v90 = sub_1C5594C54();
  v91 = sub_1C5596934();
  v74 = 17;
  v82 = swift_allocObject();
  *(v82 + 16) = 32;
  v84 = swift_allocObject();
  *(v84 + 16) = 8;
  v14 = swift_allocObject();
  v15 = v78;
  v80 = v14;
  *(v14 + 16) = v75;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v80;
  v87 = v16;
  *(v16 + 16) = v79;
  *(v16 + 24) = v17;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  v85 = sub_1C5596E04();
  v88 = v18;

  v19 = v82;
  v20 = v88;
  *v88 = v81;
  v20[1] = v19;

  v21 = v84;
  v22 = v88;
  v88[2] = v83;
  v22[3] = v21;

  v23 = v87;
  v24 = v88;
  v88[4] = v86;
  v24[5] = v23;
  sub_1C540FCD8();

  if (os_log_type_enabled(v90, v91))
  {
    v25 = v36;
    v29 = sub_1C5596A74();
    v28[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v30 = sub_1C5419DC0(0);
    v31 = sub_1C5419DC0(1);
    v32 = &v96;
    v96 = v29;
    v33 = &v95;
    v95 = v30;
    v34 = &v94;
    v94 = v31;
    sub_1C5419E14(2, &v96);
    sub_1C5419E14(1, v32);
    v92 = v81;
    v93 = v82;
    sub_1C5419E28(&v92, v32, v33, v34);
    v35 = v25;
    if (v25)
    {

      __break(1u);
    }

    else
    {
      v92 = v83;
      v93 = v84;
      sub_1C5419E28(&v92, &v96, &v95, &v94);
      v28[0] = 0;
      v92 = v86;
      v93 = v87;
      sub_1C5419E28(&v92, &v96, &v95, &v94);
      _os_log_impl(&dword_1C5355000, v90, v91, "AppleAccountBirthdayPicker - Birthday changed to %s", v29, 0xCu);
      sub_1C5419E74(v30);
      sub_1C5419E74(v31);
      sub_1C5596A54();
    }
  }

  else
  {
  }

  v26 = MEMORY[0x1E69E5920](v90);
  (*(v59 + 8))(v55, v61, v26);
  sub_1C549C738(v39);
  v63(v70, v62, v71);
  sub_1C55960A4();
  sub_1C549CF34(v39);
  return (v56)(v62, v71);
}

uint64_t sub_1C54A0B98()
{
  v1 = *(type metadata accessor for AppleAccountBirthdayPickerRow() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1C549FF24(v2);
}

unint64_t sub_1C54A0C5C()
{
  v2 = qword_1EC15D348;
  if (!qword_1EC15D348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D2A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D298);
    type metadata accessor for BirthdayPickerRowViewModel();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D290);
    sub_1C5594924();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D288);
    type metadata accessor for BirthdayPickerSheet();
    sub_1C549F314();
    sub_1C549F4BC();
    swift_getOpaqueTypeConformance2();
    sub_1C54290E8();
    swift_getOpaqueTypeConformance2();
    sub_1C5429194();
    swift_getOpaqueTypeConformance2();
    sub_1C5430A44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D348);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54A0E74()
{
  type metadata accessor for BirthdayPickerRowViewModel();
  sub_1C5429194();
  return sub_1C55961D4();
}

uint64_t sub_1C54A0EC4()
{
  v10 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v6 = &v2 - v3;
  v10 = v0;
  (*(v4 + 16))(&v2 - v3);
  sub_1C55961A4();
  v8 = v9;
  (*(v4 + 8))(v6, v7);
  return v8;
}

uint64_t sub_1C54A0FDC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  sub_1C55961B4();
}

void (*sub_1C54A1050(void *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  v2[4] = sub_1C5596194();
  return sub_1C54A10E4;
}

void sub_1C54A10E4(void **a1)
{
  v1 = *a1;
  v1[4](v1, 0);
  free(v1);
}

uint64_t sub_1C54A1160@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v10 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v8 = &v3 - v4;
  v10 = v1;
  (*(v6 + 16))(&v3 - v4);
  sub_1C55961C4();
  return (*(v6 + 8))(v8, v9);
}

uint64_t sub_1C54A12DC(uint64_t a1)
{
  v9 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t sub_1C54A13FC@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v14 = sub_1C54A9D34;
  v27 = sub_1C54A9EAC;
  v33 = 0;
  v4 = 0;
  v2 = *(type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture() - 8);
  v11 = v2;
  v22 = *(v2 + 64);
  v3 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v25 = &v2 - v3;
  v9 = sub_1C55954F4();
  v5 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v2 - v5;
  v19 = sub_1C5594FF4();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v6 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v18 = &v2 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D350);
  v29 = *(v32 - 8);
  v30 = v32 - 8;
  v7 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v2 - v7;
  v33 = v20;
  v10 = MEMORY[0x1E697FA08];
  sub_1C54A17CC();
  sub_1C5594FD4();
  sub_1C54A9C54(v20, v25);
  v21 = *(v11 + 80);
  v12 = (v21 + 16) & ~v21;
  v23 = 7;
  v15 = swift_allocObject();
  sub_1C54A9CC4(v25, v15 + v12);
  v13 = sub_1C54A9DAC();
  sub_1C54A9E2C();
  sub_1C5596144();

  (*(v16 + 8))(v18, v19);
  sub_1C54A9C54(v20, v25);
  v24 = (v21 + 16) & ~v21;
  v28 = swift_allocObject();
  sub_1C54A9CC4(v25, v28 + v24);
  sub_1C54A9F24();
  sub_1C5596134();

  return (*(v29 + 8))(v31, v32);
}

uint64_t sub_1C54A17F0()
{
  v2 = sub_1C54A0EC4();
  v3 = (*(*v2 + 576))(v2);

  result = v3;
  if ((v3 & 1) == 0)
  {
    v1 = sub_1C54A0EC4();
    (*(*v1 + 584))(1);
  }

  return result;
}

uint64_t sub_1C54A18E0()
{
  v1 = sub_1C54A0EC4();
  (*(*v1 + 584))(0);

  v3 = sub_1C54A0EC4();
  v2 = (*(*v3 + 688))();
  sub_1C5596794();
  v2();
}

uint64_t sub_1C54A1A1C()
{
  sub_1C5596E04();
  *v0 = "id";
  *(v0 + 8) = 2;
  *(v0 + 16) = 2;
  *(v0 + 24) = "disabled";
  *(v0 + 32) = 8;
  *(v0 + 40) = 2;
  *(v0 + 48) = "value";
  *(v0 + 56) = 5;
  *(v0 + 64) = 2;
  *(v0 + 72) = "maxValue";
  *(v0 + 80) = 8;
  *(v0 + 88) = 2;
  *(v0 + 96) = "label";
  *(v0 + 104) = 5;
  *(v0 + 112) = 2;
  sub_1C540FCD8();
  v4 = sub_1C5596D64();

  switch(v4)
  {
    case 0:
      v3 = 0;
LABEL_12:

      return v3;
    case 1:
      v3 = 1;
      goto LABEL_12;
    case 2:
      v3 = 2;
      goto LABEL_12;
    case 3:
      v3 = 3;
      goto LABEL_12;
    case 4:
      v3 = 4;
      goto LABEL_12;
  }

  return 5;
}

uint64_t sub_1C54A1C28()
{
  sub_1C5594CF4();
  v2 = sub_1C54A1A1C();

  if (v2 == 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C54A1F60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C54A1A1C();
  *a1 = result;
  return result;
}

uint64_t sub_1C54A1F98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C54A1CD8();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1C54A1FE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C54A1C28();
  *a1 = result;
  return result;
}

uint64_t sub_1C54A2014@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C54A1CC0();
  *a1 = result;
  return result;
}

uint64_t sub_1C54A20A0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v134 = a2;
  v181 = a1;
  v210 = 0;
  v209 = 0;
  v208 = 0;
  v207 = 0;
  v206 = 0;
  v198 = 0;
  v195 = 0;
  v196 = 0;
  v194 = 0;
  v191 = 0;
  v192 = 0;
  v188 = 0;
  v189 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370);
  v135 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v136 = &v58 - v135;
  v137 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v58 - v135);
  v138 = &v58 - v137;
  v174 = 0;
  v139 = sub_1C5594924();
  v140 = *(v139 - 8);
  v141 = v139 - 8;
  v142 = (*(v140 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v174);
  v143 = &v58 - v142;
  v144 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v145 = &v58 - v144;
  v210 = &v58 - v144;
  v146 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v147 = &v58 - v146;
  v148 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v149 = &v58 - v148;
  v209 = &v58 - v148;
  v150 = sub_1C55949D4();
  v151 = *(v150 - 8);
  v152 = v150 - 8;
  v153 = (*(v151 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v174);
  v154 = &v58 - v153;
  v155 = sub_1C5594A74();
  v156 = *(v155 - 8);
  v157 = v155 - 8;
  v158 = (*(v156 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v174);
  v159 = &v58 - v158;
  v160 = sub_1C55962E4();
  v161 = *(v160 - 8);
  v162 = v160 - 8;
  v163 = (*(v161 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v174);
  v164 = &v58 - v163;
  v165 = sub_1C5596384();
  v166 = *(v165 - 8);
  v167 = v165 - 8;
  v168 = (*(v166 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v165);
  v169 = &v58 - v168;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D380);
  v171 = *(v170 - 8);
  v172 = v170 - 8;
  v173 = (*(v171 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v174);
  v182 = &v58 - v173;
  v208 = &v58 - v173;
  v178 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v175 = (*(*(v178 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v174);
  v179 = &v58 - v175;
  v207 = &v58 - v175;
  v206 = v181;
  v177 = *(v10 + 28);
  v176 = sub_1C55963A4();
  sub_1C549BD98();
  v11 = sub_1C55952A4();
  v12 = v178;
  v13 = &v179[v177];
  *v13 = v11;
  *(v13 + 1) = v14;
  v180 = v12[8];
  swift_getKeyPath();
  sub_1C5595024();
  v15 = v181;
  v16 = v203;
  v17 = v204;
  v18 = v205;
  v19 = &v179[v180];
  *v19 = v202;
  *(v19 + 1) = v16;
  v19[16] = v17;
  v19[17] = v18 & 1;
  v184 = v15[3];
  v185 = v15[4];
  __swift_project_boxed_opaque_existential_0(v15, v184);
  sub_1C54AA028();
  v20 = v183;
  sub_1C5596F24();
  v186 = v20;
  v187 = v20;
  if (v20)
  {
    v99 = v187;
    v100 = 24;
    goto LABEL_27;
  }

  v129 = v181[3];
  v128 = v181[4];
  __swift_project_boxed_opaque_existential_0(v181, v129);
  v21 = v186;
  v22 = sub_1C5596F04();
  v130 = v21;
  v131 = v22;
  v132 = v23;
  v133 = v21;
  if (v21)
  {
    v63 = v133;
    (*(v171 + 8))(v182, v170);
    v99 = v63;
    v100 = 24;
    goto LABEL_27;
  }

  v24 = v179;
  v25 = v132;
  *v179 = v131;
  *(v24 + 1) = v25;
  v201 = 1;
  v26 = sub_1C5596D84();
  v125 = 0;
  v126 = v26;
  v127 = 0;
  v200 = v26;
  if (v26 == 2)
  {
    v124 = 0;
  }

  else
  {
    v124 = v200;
  }

  v27 = v181;
  v179[v178[6]] = v124 & 1;
  v121 = v199;
  sub_1C5432498(v27, v199);
  v28 = v125;
  sub_1C5596374();
  v122 = v28;
  v123 = v28;
  if (v28)
  {
    v62 = v123;
    (*(v171 + 8))(v182, v170);
    v99 = v62;
    v100 = 25;
    goto LABEL_27;
  }

  (*(v166 + 32))(&v179[v178[5]], v169, v165);
  v114 = v181[3];
  v113 = v181[4];
  __swift_project_boxed_opaque_existential_0(v181, v114);
  sub_1C5596F14();
  v115 = sub_1C55962D4();
  (*(v161 + 8))(v164, v160);
  v116 = RUIDecodingUserInfo.account.getter();
  v198 = v116;
  MEMORY[0x1E69E5920](v115);
  v29 = v122;
  v197 = 2;
  v30 = sub_1C5596D94();
  v117 = v29;
  v118 = v30;
  v119 = v31;
  v120 = v29;
  if (v29)
  {
    v61 = v120;
    v56 = MEMORY[0x1E69E5920](v116);
    (*(v171 + 8))(v182, v170, v56);
    v99 = v61;
    v100 = 27;
    goto LABEL_27;
  }

  v109 = v119;
  v108 = v118;
  v195 = v118;
  v196 = v119;
  sub_1C5429F54();
  v110 = sub_1C5404B48();
  v194 = v110;
  sub_1C55965F4();
  v105 = v32;
  v106 = sub_1C5596554();

  [v110 setDateFormat_];
  v33 = MEMORY[0x1E69E5920](v106);
  (*(v151 + 104))(v154, *MEMORY[0x1E6969868], v150, v33);
  sub_1C55949E4();
  (*(v151 + 8))(v154, v150);
  v107 = sub_1C5594A14();
  (*(v156 + 8))(v159, v155);
  [v110 setCalendar_];
  MEMORY[0x1E69E5920](v107);
  sub_1C5594CF4();
  v111 = sub_1C5596554();

  v112 = [v110 dateFromString_];
  v34 = MEMORY[0x1E69E5920](v111);
  if (v112)
  {
    v104 = v112;
    v103 = v112;
    sub_1C5594904();
    (*(v140 + 32))(v138, v147, v139);
    (*(v140 + 56))(v138, 0, 1, v139);
    v35 = MEMORY[0x1E69E5920](v103);
  }

  else
  {
    (*(v140 + 56))(v138, 1, 1, v139, v34);
  }

  v101 = *(v140 + 48);
  v102 = v140 + 48;
  if (v101(v138, 1, v139, v35) == 1)
  {
    sub_1C541A9D8(v138);
    v93 = 0;
    v97 = sub_1C5596BD4();
    v92 = 1;
    v98 = swift_allocError();
    v96 = v36;
    v91 = v181[3];
    v90 = v181[4];
    __swift_project_boxed_opaque_existential_0(v181, v91);
    v94 = sub_1C5596EF4();
    v95 = sub_1C55965F4();
    sub_1C5596BC4();
    (*(*(v97 - 8) + 104))(v96, *MEMORY[0x1E69E6B00]);
    swift_willThrow();
    MEMORY[0x1E69E5920](v110);

    v37 = MEMORY[0x1E69E5920](v116);
    (*(v171 + 8))(v182, v170, v37);
    v99 = v98;
    v100 = 27;
LABEL_27:
    v59 = v100;
    v58 = v99;
    __swift_destroy_boxed_opaque_existential_0(v181);
    if (v59)
    {
      sub_1C5401ECC();
    }

    if ((v59 & 2) != 0)
    {
      (*(v166 + 8))(&v179[v178[5]], v165);
    }

    sub_1C5410D10();
    return sub_1C54AA0A4(&v179[v178[8]]);
  }

  v84 = *(v140 + 32);
  v85 = v140 + 32;
  v84(v149, v138, v139);
  v38 = v117;
  v193 = 3;
  v39 = sub_1C5596D94();
  v86 = v38;
  v87 = v39;
  v88 = v40;
  v89 = v38;
  if (v38)
  {
    v60 = v89;
    (*(v140 + 8))(v149, v139);
    MEMORY[0x1E69E5920](v110);

    v57 = MEMORY[0x1E69E5920](v116);
    (*(v171 + 8))(v182, v170, v57);
    v99 = v60;
    v100 = 27;
    goto LABEL_27;
  }

  v78 = v88;
  v79 = v87;
  v191 = v87;
  v192 = v88;
  v190 = 4;
  v41 = sub_1C5596D94();
  v80 = 0;
  v81 = v41;
  v82 = v42;
  v83 = 0;
  v74 = v42;
  v75 = v41;
  v188 = v41;
  v189 = v42;
  sub_1C5594CF4();
  v76 = sub_1C5596554();

  v77 = [v110 dateFromString_];
  v43 = MEMORY[0x1E69E5920](v76);
  if (v77)
  {
    v73 = v77;
    v72 = v77;
    sub_1C5594904();
    v84(v136, v147, v139);
    (*(v140 + 56))(v136, 0, 1, v139);
    v44 = MEMORY[0x1E69E5920](v72);
  }

  else
  {
    (*(v140 + 56))(v136, 1, 1, v139, v43);
  }

  if (v101(v136, 1, v139, v44) == 1)
  {
    sub_1C5594914();
    if ((v101)(v136, 1, v139) != 1)
    {
      sub_1C541A9D8(v136);
    }
  }

  else
  {
    v84(v145, v136, v139);
  }

  v66 = 0;
  v67 = type metadata accessor for BirthdayPickerRowViewModel();
  v65 = *(v140 + 16);
  v64 = v140 + 16;
  v65(v147, v149, v139);
  v65(v143, v145, v139);
  sub_1C5594CF4();
  type metadata accessor for PendingBirthdayModel();
  MEMORY[0x1E69E5928](v116);
  v68 = sub_1C551D1B8(v116);
  v45 = sub_1C5422DF0();
  sub_1C5422E1C(v147, v143, v75, v74, v68, v45);
  v69 = &v179[v178[9]];
  v46 = sub_1C549C3D4();
  v47 = v69;
  v48 = v140;
  v49 = v46;
  v50 = v145;
  v52 = v51;
  v53 = v139;
  *v69 = v49;
  *(v47 + 1) = v52;
  v71 = *(v48 + 8);
  v70 = v48 + 8;
  v71(v50, v53);

  v71(v149, v139);
  MEMORY[0x1E69E5920](v110);

  v54 = MEMORY[0x1E69E5920](v116);
  (*(v171 + 8))(v182, v170, v54);
  sub_1C549EF2C(v179, v134);
  __swift_destroy_boxed_opaque_existential_0(v181);
  return sub_1C54AA0E4(v179);
}

uint64_t sub_1C54A3BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v4[12] = v4;
  v4[13] = 0;
  v4[15] = 0;
  v5 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v4[21] = v5;
  v11 = *(v5 - 8);
  v4[22] = v11;
  v4[23] = *(v11 + 64);
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860);
  v4[25] = swift_task_alloc();
  v6 = sub_1C5596384();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v7 = sub_1C5594C74();
  v4[29] = v7;
  v4[30] = *(v7 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278);
  v4[35] = swift_task_alloc();
  v8 = sub_1C5594924();
  v4[36] = v8;
  v12 = *(v8 - 8);
  v4[37] = v12;
  v4[38] = *(v12 + 64);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[13] = a4;
  v4[41] = sub_1C55967E4();
  v4[42] = sub_1C55967D4();
  v14 = sub_1C55967A4();
  v4[43] = v14;
  v4[44] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1C54A3F1C, v14, v9);
}

uint64_t sub_1C54A3F1C()
{
  v55 = v0;
  v36 = *(v0 + 320);
  v39 = *(v0 + 312);
  v37 = *(v0 + 296);
  v40 = *(v0 + 288);
  v33 = *(v0 + 280);
  v31 = *(v0 + 272);
  v32 = *(v0 + 264);
  v34 = *(v0 + 240);
  v35 = *(v0 + 232);
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  *(v0 + 96) = v0;
  v3 = (v2 + *(v1 + 36));
  v29 = *v3;
  v30 = v3[1];

  *(v0 + 16) = v29;
  *(v0 + 24) = v30;
  *(v0 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270);
  sub_1C5595F84();
  v4 = *(v0 + 112);

  (*(*v4 + 536))(0);

  sub_1C549C738(v33);
  MEMORY[0x1C6946C30](v31);
  sub_1C549CF34(v33);
  v5 = sub_1C54B05F8();
  v6 = *(v34 + 16);
  *(v0 + 368) = v6;
  *(v0 + 376) = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v32, v5, v35);
  v7 = *(v37 + 16);
  *(v0 + 384) = v7;
  *(v0 + 392) = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v39, v36, v40);
  v8 = *(v37 + 80);
  *(v0 + 456) = v8;
  v38 = (v8 + 16) & ~v8;
  v41 = swift_allocObject();
  v9 = *(v37 + 32);
  *(v0 + 400) = v9;
  *(v0 + 408) = (v37 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v41 + v38, v39, v40);

  v42 = swift_allocObject();
  *(v42 + 16) = sub_1C54AF918;
  *(v42 + 24) = v41;

  v48 = sub_1C5594C54();
  v49 = sub_1C5596934();
  v44 = swift_allocObject();
  *(v44 + 16) = 32;
  v45 = swift_allocObject();
  *(v45 + 16) = 8;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1C54AF98C;
  *(v43 + 24) = v42;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1C5473EFC;
  *(v46 + 24) = v43;
  *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E1E0);
  sub_1C5596E04();
  v47 = v10;

  *v47 = sub_1C545C6D4;
  v47[1] = v44;

  v47[2] = sub_1C545C6D4;
  v47[3] = v45;

  v47[4] = sub_1C5473FA4;
  v47[5] = v46;
  sub_1C540FCD8();

  if (os_log_type_enabled(v48, v49))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v26 = sub_1C5419DC0(0);
    v27 = sub_1C5419DC0(1);
    v50 = buf;
    v51 = v26;
    v52 = v27;
    sub_1C5419E14(2, &v50);
    sub_1C5419E14(1, &v50);
    v53 = sub_1C545C6D4;
    v54 = v44;
    sub_1C5419E28(&v53, &v50, &v51, &v52);
    v53 = sub_1C545C6D4;
    v54 = v45;
    sub_1C5419E28(&v53, &v50, &v51, &v52);
    v53 = sub_1C5473FA4;
    v54 = v46;
    sub_1C5419E28(&v53, &v50, &v51, &v52);
    _os_log_impl(&dword_1C5355000, v48, v49, "AppleAccountBirthdayPicker - Posting birthday %s", buf, 0xCu);
    sub_1C5419E74(v26);
    sub_1C5419E74(v27);
    sub_1C5596A54();
  }

  else
  {
  }

  v18 = v28[33];
  v19 = v28[29];
  v23 = v28[28];
  v24 = v28[26];
  v20 = v28[21];
  v21 = v28[20];
  v17 = v28[30];
  v22 = v28[27];
  v11 = MEMORY[0x1E69E5920](v48);
  v12 = *(v17 + 8);
  v28[53] = v12;
  v28[54] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v18, v19, v11);
  (*(v22 + 16))(v23, v21 + *(v20 + 20), v24);
  v13 = swift_task_alloc();
  v28[55] = v13;
  *v13 = v28[12];
  v13[1] = sub_1C54A4778;
  v14 = v28[26];
  v15 = MEMORY[0x1E69C7000];

  return MEMORY[0x1EEE321B0](v14, v15);
}

uint64_t sub_1C54A4778()
{
  v6 = *v1;
  v6[12] = *v1;
  v6[56] = v0;

  if (v0)
  {
    v2 = v6[44];
    v3 = v6[43];
    v4 = sub_1C54A52E0;
  }

  else
  {
    (*(v6[27] + 8))(v6[28], v6[26]);
    v2 = v6[44];
    v3 = v6[43];
    v4 = sub_1C54A4910;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1C54A4910()
{
  v58 = v0;
  v24 = MEMORY[0x1E69E85E0];
  v43 = *(v0 + 400);
  v40 = *(v0 + 456);
  v39 = *(v0 + 384);
  v37 = *(v0 + 368);
  v38 = *(v0 + 320);
  v41 = *(v0 + 312);
  v42 = *(v0 + 288);
  v35 = *(v0 + 256);
  v36 = *(v0 + 232);
  v27 = *(v0 + 200);
  v26 = *(v0 + 192);
  v22 = *(v0 + 176);
  v31 = *(v0 + 168);
  v32 = *(v0 + 160);
  *(v0 + 96) = v0;
  v1 = sub_1C5596814();
  (*(*(v1 - 8) + 56))(v27, 1);
  sub_1C549EF2C(v32, v26);
  v23 = sub_1C55967D4();
  v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  *(v28 + 24) = v24;
  sub_1C549F11C(v26, (v28 + v25));
  sub_1C54061EC(0, 0, v27, &unk_1C55B2628, v28, MEMORY[0x1E69E7CA8] + 8);

  v2 = *(v31 + 36);
  v29 = *&v32[v2];
  v30 = *&v32[v2 + 8];

  *(v0 + 64) = v29;
  *(v0 + 72) = v30;
  sub_1C5595F84();
  v3 = *(v0 + 144);

  (*(*v3 + 536))(1);

  v4 = *(v31 + 36);
  v33 = *&v32[v4];
  v34 = *&v32[v4 + 8];

  *(v0 + 80) = v33;
  *(v0 + 88) = v34;
  sub_1C5595F84();
  v5 = *(v0 + 152);

  (*(*v5 + 488))(0);

  v6 = sub_1C54B05F8();
  v37(v35, v6, v36);
  v39(v41, v38, v42);
  v44 = swift_allocObject();
  v43(v44 + ((v40 + 16) & ~v40), v41, v42);

  v45 = swift_allocObject();
  *(v45 + 16) = sub_1C54AF918;
  *(v45 + 24) = v44;

  v51 = sub_1C5594C54();
  v52 = sub_1C5596934();
  v47 = swift_allocObject();
  *(v47 + 16) = 32;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1C54AF98C;
  *(v46 + 24) = v45;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1C5473EFC;
  *(v49 + 24) = v46;
  sub_1C5596E04();
  v50 = v7;

  *v50 = sub_1C545C6D4;
  v50[1] = v47;

  v50[2] = sub_1C545C6D4;
  v50[3] = v48;

  v50[4] = sub_1C5473FA4;
  v50[5] = v49;
  sub_1C540FCD8();

  if (os_log_type_enabled(v51, v52))
  {
    v8 = v21[56];
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v19 = sub_1C5419DC0(0);
    v20 = sub_1C5419DC0(1);
    v53 = buf;
    v54 = v19;
    v55 = v20;
    sub_1C5419E14(2, &v53);
    sub_1C5419E14(1, &v53);
    v56 = sub_1C545C6D4;
    v57 = v47;
    sub_1C5419E28(&v56, &v53, &v54, &v55);
    if (v8)
    {
    }

    v56 = sub_1C545C6D4;
    v57 = v48;
    sub_1C5419E28(&v56, &v53, &v54, &v55);
    v56 = sub_1C5473FA4;
    v57 = v49;
    sub_1C5419E28(&v56, &v53, &v54, &v55);
    _os_log_impl(&dword_1C5355000, v51, v52, "AppleAccountBirthdayPicker - Posted birthday %s", buf, 0xCu);
    sub_1C5419E74(v19);
    sub_1C5419E74(v20);
    sub_1C5596A54();
  }

  else
  {
  }

  v14 = v21[53];
  v16 = v21[40];
  v17 = v21[36];
  v12 = v21[32];
  v13 = v21[29];
  v15 = v21[37];
  v10 = MEMORY[0x1E69E5920](v51);
  v14(v12, v13, v10);
  (*(v15 + 8))(v16, v17);

  v11 = *(v21[12] + 8);

  return v11();
}

uint64_t sub_1C54A52E0()
{
  v50 = v0;
  v35 = v0[56];
  v34 = v0[46];
  v24 = v0[40];
  v23 = v0[37];
  v25 = v0[36];
  v32 = v0[31];
  v33 = v0[29];
  v1 = v0[28];
  v2 = v0[27];
  v3 = v0[26];
  v28 = v0[21];
  v29 = v0[20];
  v0[12] = v0;
  (*(v2 + 8))(v1, v3);
  (*(v23 + 8))(v24, v25);
  v4 = v35;
  v0[15] = v35;
  v5 = (v29 + *(v28 + 36));
  v26 = *v5;
  v27 = v5[1];

  v0[4] = v26;
  v0[5] = v27;
  sub_1C5595F84();
  v6 = v0[16];

  (*(*v6 + 488))(0);

  v7 = *(v28 + 36);
  v30 = *(v29 + v7);
  v31 = *(v29 + v7 + 8);

  v0[6] = v30;
  v0[7] = v31;
  sub_1C5595F84();
  v8 = v0[17];

  (*(*v8 + 536))(1);

  v9 = sub_1C54B05F8();
  v34(v32, v9, v33);
  v10 = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  sub_1C54398B0();

  v43 = sub_1C5594C54();
  v44 = sub_1C5596954();
  v39 = swift_allocObject();
  *(v39 + 16) = 64;
  v40 = swift_allocObject();
  *(v40 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1C5467F9C;
  *(v37 + 24) = v36;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1C5467FA4;
  *(v38 + 24) = v37;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1C545C6DC;
  *(v41 + 24) = v38;
  sub_1C5596E04();
  v42 = v11;

  *v42 = sub_1C545C6D4;
  v42[1] = v39;

  v42[2] = sub_1C545C6D4;
  v42[3] = v40;

  v42[4] = sub_1C545C6E8;
  v42[5] = v41;
  sub_1C540FCD8();

  if (os_log_type_enabled(v43, v44))
  {
    buf = sub_1C5596A74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15C940);
    v20 = sub_1C5419DC0(1);
    v21 = sub_1C5419DC0(0);
    v45 = buf;
    v46 = v20;
    v47 = v21;
    sub_1C5419E14(2, &v45);
    sub_1C5419E14(1, &v45);
    v48 = sub_1C545C6D4;
    v49 = v39;
    sub_1C5419E28(&v48, &v45, &v46, &v47);
    v48 = sub_1C545C6D4;
    v49 = v40;
    sub_1C5419E28(&v48, &v45, &v46, &v47);
    v48 = sub_1C545C6E8;
    v49 = v41;
    sub_1C5419E28(&v48, &v45, &v46, &v47);
    _os_log_impl(&dword_1C5355000, v43, v44, "AppleAccountBirthdayPicker - Failed to post updated birthday with error: %@", buf, 0xCu);
    sub_1C5419E74(v20);
    sub_1C5419E74(v21);
    sub_1C5596A54();
  }

  else
  {
  }

  v18 = v22[56];
  v17 = v22[53];
  v15 = v22[31];
  v16 = v22[29];
  v12 = MEMORY[0x1E69E5920](v43);
  v17(v15, v16, v12);
  sub_1C549F65C();

  v13 = *(v22[12] + 8);

  return v13();
}

uint64_t sub_1C54A5B98(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for AppleAccountBirthdayPickerRow() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return sub_1C54A3BC8(a1, v7, v8, v1 + v9);
}

uint64_t sub_1C54A5CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[6] = v4;
  v4[7] = 0;
  v5 = sub_1C5594924();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[7] = a4;
  sub_1C55967E4();
  v4[14] = sub_1C55967D4();
  v9 = sub_1C55967A4();
  v4[15] = v9;
  v4[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C54A5DE4, v9, v6);
}

uint64_t sub_1C54A5DE4()
{
  v12 = v0[10];
  v0[6] = v0;
  v11 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v1 = *(v11 + 36);
  v9 = *(v12 + v1);
  v10 = *(v12 + v1 + 8);

  v0[2] = v9;
  v0[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D270);
  sub_1C5595F84();
  v2 = v0[8];

  (*(*v2 + 264))(v3);

  v4 = (v12 + *(v11 + 36));
  v13 = *v4;
  v14 = v4[1];

  v0[4] = v13;
  v0[5] = v14;
  sub_1C5595F84();
  v5 = v0[9];
  v0[17] = v5;

  v16 = (*(*v5 + 880) + **(*v5 + 880));
  v6 = swift_task_alloc();
  v15[18] = v6;
  *v6 = v15[6];
  v6[1] = sub_1C54A6054;
  v7 = v15[13];

  return v16(v7);
}

uint64_t sub_1C54A6054()
{
  v4 = *v0;
  *(*v0 + 48) = *v0;

  v1 = *(v4 + 128);
  v2 = *(v4 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1C54A61B4, v2, v1);
}

uint64_t sub_1C54A61B4()
{
  v1 = *(v0 + 96);
  *(v0 + 48) = v0;
  (*(v1 + 8))();

  v2 = *(*(v0 + 48) + 8);

  return v2();
}

uint64_t sub_1C54A6274(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a1;
  v40 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  v41 = a6;
  v42 = "Fatal error";
  v43 = "Unexpectedly found nil while unwrapping an Optional value";
  v44 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v45 = 0;
  v58 = a6;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v9 - v46;

  v56 = v48;
  v57 = v49;
  sub_1C5408B78(v47, v50);
  v51 = sub_1C5596814();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  if ((*(v52 + 48))(v50, 1) == 1)
  {
    sub_1C5408CA0(v50);
    v38 = 0;
  }

  else
  {
    v37 = sub_1C5596804();
    (*(v52 + 8))(v50, v51);
    v38 = v37;
  }

  v34 = v38 | 0x1C00;
  v36 = *(v49 + 16);
  v35 = *(v49 + 24);
  swift_unknownObjectRetain();

  if (v36)
  {
    v32 = v36;
    v33 = v35;
    v26 = v35;
    v27 = v36;
    swift_getObjectType();
    v28 = sub_1C55967A4();
    v29 = v6;
    swift_unknownObjectRelease();
    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v24 = v31;
  v25 = v30;
  sub_1C5594CF4();
  if (v40)
  {
    v22 = v39;
    v23 = v40;
    v7 = v45;
    v19 = v40;
    v20 = sub_1C55965C4();

    sub_1C54AEA1C(v20 + 32, &v54);
    if (v7)
    {
      __break(1u);
    }

    v18 = v54;

    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  v17 = v21;
  if (v21)
  {
    v12 = v17;
    v11 = v17;
    sub_1C5408CA0(v47);

    v13 = v11;
  }

  else
  {

    sub_1C5408CA0(v47);
    v14 = v56;
    v15 = v57;

    v16 = 0;
    if (v25 != 0 || v24 != 0)
    {
      v55[0] = 0;
      v55[1] = 0;
      v55[2] = v25;
      v55[3] = v24;
      v16 = v55;
    }

    v13 = swift_task_create();
  }

  v10 = v13;

  return v10;
}

uint64_t sub_1C54A67DC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D388);
  sub_1C5595004();

  return v1;
}

uint64_t sub_1C54A68E4(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_1C54A6994@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v14 = sub_1C54AA1D0;
  v30 = 0;
  memset(v29, 0, 11);
  v31 = a1;
  v32 = a2;
  v18 = a1;
  v10 = a2;
  v11 = BYTE1(a2);
  v12 = BYTE2(a2);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D390);
  v9 = *(*(v20 - 8) + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v8 - v8;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v23 = &v8 - v5;
  v30 = &v8 - v5;
  v29[0] = v4;
  v13 = 1;
  LOBYTE(v29[1]) = v10 & 1;
  BYTE1(v29[1]) = v11;
  BYTE2(v29[1]) = v6;

  v15 = &v24;
  v25 = v18;
  v26 = v10 & 1 & v13;
  v27 = v11;
  v28 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D398);
  v17 = sub_1C54AA20C();
  sub_1C5412C88();
  sub_1C5596024();

  v21 = sub_1C54AA294();
  sub_1C540EFD8(v22, v20, v23);
  sub_1C5364AC8(v22);
  sub_1C5364DB4(v23, v22);
  sub_1C540EFD8(v22, v20, v19);
  sub_1C5364AC8(v22);
  return sub_1C5364AC8(v23);
}

uint64_t sub_1C54A6BB4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v104 = a3;
  v105 = MEMORY[0x1E6981198];
  v266 = 0;
  v265 = 0;
  v264 = 0;
  v263 = 0;
  v262 = 0;
  memset(&v261[5], 0, 11);
  memset(v261, 0, 32);
  v239 = 0;
  v240 = 0;
  memset(v232, 0, sizeof(v232));
  v194 = 0;
  v192 = 0u;
  v193 = 0u;
  v181 = 0u;
  v182 = 0u;
  v174 = 0;
  v171 = 0;
  v267 = a1;
  v268 = a2;
  v151 = a1;
  v159 = a2;
  v166 = BYTE1(a2);
  v152 = BYTE2(a2);
  v106 = sub_1C5595F34();
  v107 = *(v106 - 8);
  v108 = v106 - 8;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v106);
  v110 = &v44 - v109;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20);
  v112 = (*(*(v111 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v44 - v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008);
  v115 = *(v114 - 8);
  v116 = v114 - 8;
  v117 = (*(v115 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v114);
  v118 = &v44 - v117;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D020);
  v120 = *(v119 - 8);
  v121 = v119 - 8;
  v122 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v119);
  v123 = &v44 - v122;
  v124 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v44 - v122);
  v125 = &v44 - v124;
  v126 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v44 - v124);
  v127 = &v44 - v126;
  v266 = &v44 - v126;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E0);
  v129 = (*(*(v128 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v128);
  v130 = &v44 - v129;
  v131 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v44 - v129);
  v132 = &v44 - v131;
  v133 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v44 - v131);
  v134 = &v44 - v133;
  v265 = &v44 - v133;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0);
  v136 = (*(*(v135 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v135);
  v137 = &v44 - v136;
  v138 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v44 - v136);
  v139 = &v44 - v138;
  v140 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v44 - v138);
  v141 = &v44 - v140;
  v264 = &v44 - v140;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C0);
  v143 = *(v142 - 8);
  v144 = v142 - 8;
  v145 = (*(v143 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v142);
  v146 = &v44 - v145;
  v147 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v44 - v145);
  v148 = (&v44 - v147);
  v149 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v44 - v147);
  v150 = (&v44 - v149);
  v263 = &v44 - v149;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D8);
  v157 = *(*(v153 - 8) + 64);
  v154 = (v157 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v153);
  v155 = &v44 - v154;
  v156 = (v157 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v44 - v154);
  v158 = (&v44 - v156);
  MEMORY[0x1EEE9AC00](&v44 - v156);
  v160 = (&v44 - v11);
  v262 = &v44 - v11;
  v261[5] = v12;
  LOBYTE(v261[6]) = v159 & 1;
  BYTE1(v261[6]) = v166;
  BYTE2(v261[6]) = v13;
  v257[2] = v12;
  v258 = v159 & 1;
  v259 = v166;
  v260 = v13;
  v161 = sub_1C54A67DC();
  v162 = (*(*v161 + 408))(v161);
  v163 = v14;

  v164 = v257;
  v257[0] = v162;
  v257[1] = v163;
  v165 = sub_1C54141E8();
  v253 = sub_1C5595A04();
  v254 = v15;
  v255 = v16;
  v256 = v17;
  v167 = v253;
  v168 = v15;
  v169 = v16;
  v170 = v17;
  if (v166)
  {
    v103 = sub_1C5430454();
  }

  else
  {
    v103 = sub_1C55955E4();
  }

  v252 = v103;
  v248 = v167;
  v249 = v168;
  v100 = 1;
  v250 = v169 & 1;
  v251 = v170;
  v244 = sub_1C5595994();
  v245 = v18;
  v246 = v19;
  v247 = v20;
  v95 = v244;
  v96 = v18;
  v97 = v19;
  v98 = v20;
  sub_1C5412EA0(v167, v168, v169 & 1);

  v99 = v241;
  v241[0] = v95;
  v241[1] = v96;
  v242 = v97 & 1 & v100;
  v243 = v98;
  sub_1C540EFD8(v241, MEMORY[0x1E6981148], v261);
  sub_1C5414260(v99);
  v237 = sub_1C5596044();
  v238 = v21 & 1 & v100;
  sub_1C540EFD8(&v237, MEMORY[0x1E6981840], &v239);
  v233 = v151;
  v234 = v159 & 1 & v100;
  v235 = v166;
  v236 = v152;
  v101 = sub_1C54A67DC();
  v102 = (*(*v101 + 720))(v101);

  if (v102)
  {
    if (v152)
    {
      v22 = sub_1C54A7FAC();
      v93 = v173;
      v173[0] = v22;
      v173[1] = v23;
      sub_1C55965F4();
      v89 = v24;
      v90 = sub_1C54637B4();
      v91 = v25;

      v92 = v172;
      v172[0] = v90;
      v172[1] = v91;
      sub_1C54AECD8();
      sub_1C5595C04();
      sub_1C5401ECC();
      sub_1C5436F54();
      v94 = sub_1C54AEC30();
      sub_1C540EFD8(v139, v135, v141);
      sub_1C54AF7B8(v139);
      v171 = v139;
      sub_1C54AF84C(v141, v137);
      sub_1C540EFD8(v137, v135, v139);
      sub_1C54AF7B8(v137);
      sub_1C54AF84C(v139, v137);
      sub_1C540FD1C(v137, v135, MEMORY[0x1E6981148], v94, MEMORY[0x1E6981138], v148);
      sub_1C54AF7B8(v137);
      sub_1C54AF420(v148, v150);
      sub_1C54AF7B8(v139);
      sub_1C54AF7B8(v141);
    }

    else
    {
      v26 = sub_1C541DE30();
      v73 = *v26;
      v74 = v26[1];
      sub_1C5594CF4();
      v190 = v73;
      v191 = v74;
      v186 = sub_1C5595A04();
      v187 = v27;
      v188 = v28;
      v189 = v29;
      v75 = v183;
      v183[0] = v186;
      v183[1] = v27;
      v82 = 1;
      v184 = v28 & 1;
      v185 = v29;
      v88 = &v192;
      v84 = MEMORY[0x1E6981148];
      v85 = MEMORY[0x1E6981138];
      sub_1C540EFD8(v183, MEMORY[0x1E6981148], &v192);
      sub_1C5414260(v75);
      v76 = v192;
      v77 = v193;
      v78 = *(&v193 + 1);
      sub_1C54130AC(v192, *(&v192 + 1), v193 & 1);
      sub_1C5594CF4();
      v79 = &v178;
      v178 = v76;
      v179 = v77 & 1 & v82;
      v180 = v78;
      v87 = &v181;
      sub_1C540EFD8(&v178, v84, &v181);
      sub_1C5414260(v79);
      v80 = v181;
      v81 = v182;
      v83 = *(&v182 + 1);
      sub_1C54130AC(v181, *(&v181 + 1), v182 & 1);
      sub_1C5594CF4();
      v86 = &v175;
      v175 = v80;
      v176 = v81 & 1 & v82;
      v177 = v83;
      v30 = sub_1C54AEC30();
      sub_1C54108A0(v86, v135, v84, v30, v85, v148);
      sub_1C5414260(v86);
      sub_1C54AF420(v148, v150);
      sub_1C5414260(v87);
      sub_1C5414260(v88);
    }

    v174 = v148;
    sub_1C54AF534(v150, v146);
    v72 = sub_1C54AEB8C();
    sub_1C540EFD8(v146, v142, v148);
    sub_1C54AF6C8(v146);
    sub_1C54AF534(v148, v155);
    (*(v143 + 56))(v155, 0, 1, v142);
    sub_1C540F554(v155, v142, v158);
    sub_1C54AED54(v155);
    sub_1C54AEE98(v158, v160);
    sub_1C54AF6C8(v148);
    sub_1C54AF6C8(v150);
  }

  else
  {
    (*(v143 + 56))(v155, 1, 1, v142);
    sub_1C54AEB8C();
    sub_1C540F554(v155, v142, v158);
    sub_1C54AED54(v155);
    sub_1C54AEE98(v158, v160);
  }

  v226 = v151;
  v227 = v159 & 1;
  v228 = v166;
  v229 = v152;
  v69 = sub_1C54A67DC();
  v70 = (*(*v69 + 936))(v69);
  v71 = v31;

  v224 = v70;
  v225 = v71;
  if (v71)
  {
    v230 = v224;
    v231 = v225;
  }

  else
  {
    v230 = sub_1C55965F4();
    v231 = v32;
    if (v225)
    {
      sub_1C5401ECC();
    }
  }

  v222 = v230;
  v223 = v231;
  v218 = sub_1C5595A04();
  v219 = v33;
  v220 = v34;
  v221 = v35;
  v61 = v218;
  v59 = v33;
  v60 = v34;
  v62 = v35;
  v36 = sub_1C5410CD0();
  v58 = &v217;
  v217 = v36;
  v213 = v61;
  v214 = v59;
  v66 = 1;
  v215 = v60 & 1;
  v216 = v62;
  v209 = sub_1C5595994();
  v210 = v37;
  v211 = v38;
  v212 = v39;
  v63 = v209;
  v64 = v37;
  v65 = v38;
  v67 = v39;
  sub_1C5410D10();
  sub_1C5412EA0(v61, v59, v60 & 1);

  v68 = v206;
  v206[0] = v63;
  v206[1] = v64;
  v207 = v65 & 1 & v66;
  v208 = v67;
  sub_1C540EFD8(v206, MEMORY[0x1E6981148], v232);
  sub_1C5414260(v68);
  if (v152)
  {
    sub_1C55965F4();
    v40 = sub_1C5595EF4();
    v53 = &v198;
    v198 = v40;
    (*(v107 + 104))(v110, *MEMORY[0x1E69816C8], v106);
    sub_1C5595AA4();
    (*(v107 + 8))(v110, v106);
    sub_1C5410D10();
    sub_1C5595864();
    v54 = v41;
    v55 = sub_1C547EEF0();
    sub_1C5595A94();
    sub_1C547EF94(v113);
    v42 = sub_1C5485DB0();
    v56 = &v197;
    v197 = v42;
    v195 = v111;
    v196 = v55;
    swift_getOpaqueTypeConformance2();
    sub_1C5595BA4();
    (*(v115 + 8))(v118, v114);
    v57 = sub_1C54893F8();
    sub_1C540EFD8(v125, v119, v127);
    sub_1C5362FB4(v125);
    v194 = v125;
    sub_1C536301C(v127, v123);
    sub_1C540EFD8(v123, v119, v125);
    sub_1C5362FB4(v123);
    sub_1C536301C(v125, v130);
    (*(v120 + 56))(v130, 0, 1, v119);
    sub_1C540F554(v130, v119, v132);
    sub_1C5365FF8(v130);
    sub_1C53660B4(v132, v134);
    sub_1C5362FB4(v125);
    sub_1C5362FB4(v127);
  }

  else
  {
    (*(v120 + 56))(v130, 1, 1, v119);
    sub_1C54893F8();
    sub_1C540F554(v130, v119, v132);
    sub_1C5365FF8(v130);
    sub_1C53660B4(v132, v134);
  }

  v52 = v261;
  v50 = v204;
  sub_1C54142A8(v261, v204);
  v48 = v205;
  v205[0] = v50;
  v202 = v239;
  v203 = v240;
  v205[1] = &v202;
  sub_1C54AF084(v160, v158);
  v205[2] = v158;
  v51 = v232;
  v49 = v201;
  sub_1C54142A8(v232, v201);
  v205[3] = v49;
  sub_1C5366210(v134, v132);
  v205[4] = v132;
  v46 = v200;
  v200[0] = MEMORY[0x1E6981148];
  v200[1] = MEMORY[0x1E6981840];
  v200[2] = v153;
  v200[3] = MEMORY[0x1E6981148];
  v200[4] = v128;
  v47 = v199;
  v45 = MEMORY[0x1E6981138];
  v199[0] = MEMORY[0x1E6981138];
  v199[1] = MEMORY[0x1E6981838];
  v199[2] = sub_1C54AF2F0();
  v199[3] = v45;
  v199[4] = sub_1C54AF388();
  sub_1C540F5A0(v48, 5uLL, v46, v104);
  sub_1C5365FF8(v132);
  sub_1C5414260(v49);
  sub_1C54AED54(v158);
  sub_1C5414260(v50);
  sub_1C5365FF8(v134);
  sub_1C5414260(v51);
  sub_1C54AED54(v160);
  return sub_1C5414260(v52);
}

uint64_t sub_1C54A7FAC()
{
  type metadata accessor for BirthdayUpdatePendingTipViewModel();
  sub_1C5522AC0();
  v1 = sub_1C54A807C();

  nullsub_1(v1);
  sub_1C5436F54();
  return v1;
}

uint64_t sub_1C54A802C@<X0>(uint64_t a1@<X8>)
{
  LOBYTE(v3) = *(v1 + 8) & 1;
  BYTE1(v3) = *(v1 + 9);
  BYTE2(v3) = *(v1 + 10);
  return sub_1C54A6994(*v1, v3, a1);
}

uint64_t sub_1C54A807C()
{

  type metadata accessor for BirthdayUpdatePendingTipViewModel();
  sub_1C5595F74();

  return v1;
}

uint64_t sub_1C54A80F4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8);
  sub_1C5595F84();

  return v1;
}

uint64_t sub_1C54A8178()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8);
  sub_1C5595F94();
  sub_1C5436F54();
}

uint64_t sub_1C54A8264()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C54A8338(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1C54A83A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a3;
  v93 = a1;
  v94 = a2;
  v40 = 0;
  v41 = sub_1C54AA31C;
  v39 = sub_1C54A9370;
  v60 = MEMORY[0x1E6982BA0];
  v61 = sub_1C54AA3E8;
  v72 = MEMORY[0x1E6982B90];
  v73 = sub_1C54AA3F4;
  v83 = MEMORY[0x1E6981440];
  v85 = sub_1C54AA400;
  v95 = &unk_1C55B1F88;
  v137 = 0;
  v135 = 0;
  v136 = 0;
  v29[1] = 0;
  v101 = sub_1C5596814();
  v98 = *(v101 - 8);
  v99 = v101 - 8;
  v30 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v100 = v29 - v30;
  v49 = sub_1C5595624();
  v46 = *(v49 - 8);
  v47 = v49 - 8;
  v31 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v48 = (v29 - v31);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC8);
  v55 = *(v58 - 8);
  v56 = v58 - 8;
  v32 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v57 = v29 - v32;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3F0);
  v63 = *(v70 - 8);
  v64 = v70 - 8;
  v33 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70);
  v65 = v29 - v33;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3F8);
  v76 = *(v79 - 8);
  v77 = v79 - 8;
  v34 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v79);
  v78 = v29 - v34;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D400);
  v87 = *(v90 - 8);
  v88 = v90 - 8;
  v35 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v90);
  v89 = v29 - v35;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D408);
  v36 = (*(*(v96 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v96);
  v103 = v29 - v36;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D410);
  v37 = (*(*(v105 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v93);
  v107 = v29 - v37;
  v38 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v108 = v29 - v38;
  v137 = v29 - v38;
  v135 = v5;
  v136 = v6;

  v91 = 32;
  v92 = 7;
  v7 = swift_allocObject();
  v8 = v94;
  *(v7 + 16) = v93;
  *(v7 + 24) = v8;
  sub_1C5595FD4();
  v54 = &v132;
  v133 = &unk_1F447D1A8;
  v134 = sub_1C54AA328();

  v130 = v93;
  v131 = v94;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8);
  sub_1C5595FA4();
  v42 = v127;
  v43 = v128;
  v44 = v129;

  KeyPath = swift_getKeyPath();
  v124 = v42;
  v125 = v43;
  v126 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D420);
  sub_1C55960B4();
  v50 = v121;
  v51 = v122;
  v52 = v123;

  v59 = sub_1C547070C();
  sub_1C54A95EC(v48);
  sub_1C54A9668();
  v45 = v9;
  v68 = 1;
  sub_1C5595A34();

  (*(v46 + 8))(v48, v49);
  sub_1C54AA3A0(v50, v51);

  sub_1C544435C(v54);
  (*(v55 + 8))(v57, v58);

  v10 = swift_allocObject();
  v11 = v58;
  v12 = v59;
  v13 = v94;
  *(v10 + 16) = v93;
  *(v10 + 24) = v13;
  v62 = v10;
  v119 = v11;
  v120 = v12;
  v84 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C5595A24();
  sub_1C5411348(v61);
  (*(v63 + 8))(v65, v70);

  v117 = v93;
  v118 = v94;
  sub_1C5595F84();
  v14 = v116;
  v67 = v116;

  v69 = (*(*v14 + 136))(v15);

  v74 = &v115;
  v115 = v69 & v68;

  v16 = swift_allocObject();
  v17 = v70;
  v18 = OpaqueTypeConformance2;
  v19 = v94;
  v75 = v16;
  *(v16 + 16) = v93;
  *(v16 + 24) = v19;
  v113 = v17;
  v114 = v18;
  v81 = swift_getOpaqueTypeConformance2();
  v80 = MEMORY[0x1E69E6370];
  v82 = MEMORY[0x1E69E6388];
  sub_1C543AE1C();
  sub_1C5595DD4();

  (*(v76 + 8))(v78, v79);

  v20 = swift_allocObject();
  v21 = v79;
  v22 = v80;
  v23 = v81;
  v24 = v82;
  v25 = v94;
  *(v20 + 16) = v93;
  *(v20 + 24) = v25;
  v86 = v20;
  v109 = v21;
  v110 = v22;
  v111 = v23;
  v112 = v24;
  swift_getOpaqueTypeConformance2();
  sub_1C5595DC4();
  sub_1C5411348(v85);
  (*(v87 + 8))(v89, v90);

  v26 = swift_allocObject();
  v27 = v94;
  v102 = v26;
  *(v26 + 16) = v93;
  *(v26 + 24) = v27;
  v97 = sub_1C54AA4D0();
  sub_1C545EBE4();
  sub_1C5595CE4();
  (*(v98 + 8))(v100, v101);

  sub_1C536551C(v103);
  v106 = sub_1C54AA678();
  sub_1C540EFD8(v107, v105, v108);
  sub_1C53655FC(v107);
  sub_1C5365760(v108, v107);
  sub_1C540EFD8(v107, v105, v104);
  sub_1C53655FC(v107);
  return sub_1C53655FC(v108);
}

uint64_t sub_1C54A92AC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8);
  sub_1C5595F84();

  (*(*v2 + 208))(v0);
}

uint64_t sub_1C54A9370@<X0>(uint64_t a1@<X8>)
{
  v25 = 0u;
  v26 = 0u;
  v1 = sub_1C541DE30();
  v6 = *v1;
  v7 = v1[1];
  sub_1C5594CF4();
  v23 = v6;
  v24 = v7;
  sub_1C54141E8();
  v19 = sub_1C5595A04();
  v20 = v2;
  v21 = v3;
  v22 = v4;
  v16[0] = v19;
  v16[1] = v2;
  v17 = v3 & 1;
  v18 = v4;
  v12 = MEMORY[0x1E6981148];
  sub_1C540EFD8(v16, MEMORY[0x1E6981148], &v25);
  sub_1C5414260(v16);
  v8 = v25;
  v9 = v26;
  v10 = *(&v26 + 1);
  sub_1C54130AC(v25, *(&v25 + 1), v26 & 1);
  sub_1C5594CF4();
  v13 = v8;
  v14 = v9 & 1;
  v15 = v10;
  sub_1C540EFD8(&v13, v12, a1);
  sub_1C5414260(&v13);
  return sub_1C5414260(&v25);
}

uint64_t sub_1C54A94E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;

  *a2 = (*(*v4 + 136))(v2) & 1;
}

uint64_t sub_1C54A956C(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;

  (*(*v3 + 144))(v4 & 1);
}

uint64_t sub_1C54A95EC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C5595FC4();
  v3 = *MEMORY[0x1E697C8C0];
  v1 = sub_1C5595624();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1C54A9694()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8);
  sub_1C5595F84();

  (*(*v2 + 216))(v0);
}

uint64_t sub_1C54A9768(uint64_t a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8);
    sub_1C5595F84();

    (*(*v4 + 216))(v2);
  }

  return result;
}

uint64_t sub_1C54A9878()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8);
  sub_1C5595F84();

  v4 = (*(*v7 + 192))(v0);

  result = v4;
  if (v4)
  {

    sub_1C5595F84();

    (*(*v6 + 200))(v2);

    sub_1C5595F84();

    (*(*v5 + 208))(v3);
  }

  return result;
}

uint64_t sub_1C54A9A4C(uint64_t a1, uint64_t a2)
{
  v2[9] = a2;
  v2[8] = a1;
  v2[6] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[2] = a1;
  v2[3] = a2;
  sub_1C55967E4();
  v2[10] = sub_1C55967D4();
  v5 = sub_1C55967A4();

  return MEMORY[0x1EEE6DFA0](sub_1C54A9B0C, v5, v3);
}

uint64_t sub_1C54A9B0C()
{
  v6 = v0[9];
  v5 = v0[8];
  v0[6] = v0;

  v0[4] = v5;
  v0[5] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E8);
  sub_1C5595F84();
  v1 = v0[7];

  (*(*v1 + 232))(v2);

  v3 = *(v0[6] + 8);

  return v3();
}

uint64_t sub_1C54A9C54(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  (*(*(v2 - 8) + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C54A9CC4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  (*(*(v2 - 8) + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C54A9D34()
{
  type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture();

  return sub_1C54A17F0();
}

unint64_t sub_1C54A9DAC()
{
  v2 = qword_1EC15D358;
  if (!qword_1EC15D358)
  {
    sub_1C5594FF4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D358);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54A9E2C()
{
  v2 = qword_1EC15D360;
  if (!qword_1EC15D360)
  {
    sub_1C5594FE4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D360);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54A9EAC()
{
  type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture();

  return sub_1C54A18E0();
}

unint64_t sub_1C54A9F24()
{
  v2 = qword_1EC15D368;
  if (!qword_1EC15D368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D350);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D368);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54A9FAC()
{
  v2 = qword_1EC15D370;
  if (!qword_1EC15D370)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AA028()
{
  v2 = qword_1EC15D378;
  if (!qword_1EC15D378)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D378);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54AA0E4(uint64_t a1)
{

  v4 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v3 = *(v4 + 20);
  v1 = sub_1C5596384();
  (*(*(v1 - 8) + 8))(a1 + v3);

  sub_1C549C0AC(*(a1 + *(v4 + 32)), *(a1 + *(v4 + 32) + 8), *(a1 + *(v4 + 32) + 16), *(a1 + *(v4 + 32) + 17) & 1);

  return a1;
}

uint64_t sub_1C54AA1D0@<X0>(uint64_t a1@<X8>)
{
  LOBYTE(v3) = *(v1 + 24) & 1;
  BYTE1(v3) = *(v1 + 25);
  BYTE2(v3) = *(v1 + 26);
  return sub_1C54A6BB4(*(v1 + 16), v3, a1);
}

unint64_t sub_1C54AA20C()
{
  v2 = qword_1EC15D3A0;
  if (!qword_1EC15D3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D398);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D3A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AA294()
{
  v2 = qword_1EC15D3A8;
  if (!qword_1EC15D3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D390);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D3A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AA328()
{
  v2 = qword_1EC15D418;
  if (!qword_1EC15D418)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D418);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54AA3A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C54AA40C()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1C5405B1C;

  return sub_1C54A9A4C(v6, v5);
}

unint64_t sub_1C54AA4D0()
{
  v2 = qword_1EC15D428;
  if (!qword_1EC15D428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D408);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D3F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CCC8);
    sub_1C547070C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D428);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AA678()
{
  v2 = qword_1EC15D430;
  if (!qword_1EC15D430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D410);
    sub_1C54AA4D0();
    sub_1C545EFB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D430);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1C54AA720(void *a1))(void **a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  v2[4] = sub_1C5596194();
  return sub_1C54A10E4;
}

uint64_t sub_1C54AA7E0()
{
  v2 = *(v0 + *(type metadata accessor for BirthdayPickerSheet() + 24));

  return v2;
}

uint64_t sub_1C54AA828(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for BirthdayPickerSheet() + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C54AA8D4()
{
  v2 = *(v0 + *(type metadata accessor for BirthdayPickerSheet() + 28));

  return v2;
}

uint64_t sub_1C54AA91C(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for BirthdayPickerSheet() + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C54AA9C8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v14 = MEMORY[0x1E697D5A0];
  v17 = sub_1C54AB1D4;
  v26 = MEMORY[0x1E697D348];
  v45 = 0;
  v44 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D438);
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v7 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v6 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D440);
  v28 = *(v34 - 8);
  v29 = v34 - 8;
  v9 = *(v28 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v32 = &v6 - v8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v6 - v8);
  v33 = &v6 - v10;
  v45 = &v6 - v10;
  v44 = v1;
  v15 = &v37;
  v38 = v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D448);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D450);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D458);
  v13 = sub_1C54AB1DC();
  v2 = sub_1C54AB264();
  v43[1] = v11;
  v43[2] = v12;
  v43[3] = v13;
  v43[4] = v2;
  v27 = 1;
  swift_getOpaqueTypeConformance2();
  sub_1C5595224();
  v3 = [objc_opt_self() systemGroupedBackgroundColor];
  v4 = sub_1C5595E44();
  v18 = v43;
  v43[0] = v4;
  v24 = sub_1C54AB2EC();
  v23 = MEMORY[0x1E69815C0];
  v25 = MEMORY[0x1E6981568];
  sub_1C5595C74();
  sub_1C5410D10();
  (*(v19 + 8))(v21, v22);
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v42 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v32, v34, v33);
  v36 = *(v28 + 8);
  v35 = v28 + 8;
  v36(v32, v34);
  (*(v28 + 16))(v32, v33, v34);
  sub_1C540EFD8(v32, v34, v30);
  v36(v32, v34);
  return (v36)(v33, v34);
}

uint64_t sub_1C54AAE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v12 = a1;
  v11 = sub_1C54AE2E4;
  v14 = sub_1C54AE374;
  v22 = MEMORY[0x1E697D5A0];
  v41 = 0;
  v40 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D450);
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v6 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v17 = &v6 - v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D448);
  v23 = *(v29 - 8);
  v24 = v29 - 8;
  v7 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v12);
  v27 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v28 = &v6 - v8;
  v41 = &v6 - v8;
  v40 = v4;
  v9 = &v34;
  v35 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D4E0);
  sub_1C54AE2EC();
  sub_1C5595944();
  v13 = &v32;
  v33 = v12;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D458);
  v20 = sub_1C54AB1DC();
  v21 = sub_1C54AB264();
  sub_1C5595D94();
  (*(v15 + 8))(v17, v18);
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v27, v29, v28);
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v27, v29);
  (*(v23 + 16))(v27, v28, v29);
  sub_1C540EFD8(v27, v29, v25);
  v31(v27, v29);
  return (v31)(v28, v29);
}

unint64_t sub_1C54AB1DC()
{
  v2 = qword_1EC15D460;
  if (!qword_1EC15D460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D450);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AB264()
{
  v2 = qword_1EC15D468;
  if (!qword_1EC15D468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D458);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AB2EC()
{
  v2 = qword_1EC15D470;
  if (!qword_1EC15D470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D438);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D470);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54AB374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v14 = a1;
  v13 = sub_1C54AE650;
  v18 = MEMORY[0x1E697CF70];
  v21 = sub_1C54AE704;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D510);
  v24 = *(v33 - 8);
  v25 = v33 - 8;
  v8 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v33);
  v30 = &v8 - v8;
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v8 - v8);
  v32 = &v8 - v9;
  v50 = &v8 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D518);
  v22 = *(v37 - 8);
  v23 = v37 - 8;
  v10 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v14);
  v31 = &v8 - v10;
  v11 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v36 = &v8 - v11;
  v49 = &v8 - v11;
  v48 = v5;
  v12 = &v42;
  v43 = v5;
  sub_1C549E678();
  sub_1C5596164();
  v26 = sub_1C54AE658();
  sub_1C540EFD8(v31, v37, v36);
  v39 = *(v22 + 8);
  v38 = v22 + 8;
  v39(v31, v37);
  v19 = &v40;
  v41 = v14;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D528);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D530);
  v16 = sub_1C5595684();
  v17 = sub_1C54AE70C();
  v6 = sub_1C54AE794();
  v47[2] = v15;
  v47[3] = v16;
  v47[4] = v17;
  v47[5] = v6;
  swift_getOpaqueTypeConformance2();
  sub_1C5596164();
  v27 = sub_1C54AE814();
  sub_1C540EFD8(v30, v33, v32);
  v35 = *(v24 + 8);
  v34 = v24 + 8;
  v35(v30, v33);
  (*(v22 + 16))(v31, v36, v37);
  v29 = v47;
  v47[0] = v31;
  (*(v24 + 16))(v30, v32, v33);
  v47[1] = v30;
  v46[0] = v37;
  v46[1] = v33;
  v44 = v26;
  v45 = v27;
  sub_1C540F5A0(v29, 2uLL, v46, v28);
  v35(v30, v33);
  v39(v31, v37);
  v35(v32, v33);
  return (v39)(v36, v37);
}

void *sub_1C54AB8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(v19, 0, 11);
  v19[2] = a1;
  type metadata accessor for BirthdayPickerSheet();
  sub_1C549E568();
  sub_1C5409740();
  sub_1C549E5A8();
  v17 = v2;
  v18 = v3;
  v14 = v2;
  v15 = v3 & 0xFF01;
  v16 = BYTE2(v3);
  sub_1C549E678();
  sub_1C540EFD8(&v14, &unk_1F4479A70, v19);
  sub_1C5410D10();
  v5 = v19[0];
  v6 = v19[1];
  v7 = BYTE1(v19[1]);
  v8 = BYTE2(v19[1]);

  v10 = v5;
  v11 = v6 & 1;
  v12 = v7;
  v13 = v8;
  sub_1C540EFD8(&v10, &unk_1F4479A70, a2);
  sub_1C5410D10();
  result = v19;
  sub_1C5410D10();
  return result;
}

uint64_t sub_1C54ABA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v20 = a1;
  v44 = MEMORY[0x1E697CF70];
  v59 = 0;
  v58 = 0;
  v17 = 0;
  v41 = sub_1C5595684();
  v34 = *(v41 - 8);
  v35 = v41 - 8;
  v11 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v36 = &v11 - v11;
  v3 = sub_1C55954E4();
  v12 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v11 - v12;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C118);
  v13 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v11 - v13;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278);
  v14 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v11 - v14;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v15 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v11 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D530);
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v16 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v11 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D528);
  v45 = *(v51 - 8);
  v46 = v51 - 8;
  v18 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v11 - v18;
  v19 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v11 - v18);
  v50 = &v11 - v19;
  v59 = &v11 - v19;
  v58 = a1;
  sub_1C55965F4();
  v26 = sub_1C55953C4();
  v27 = v7;
  v28 = v8;
  v29 = v9;
  sub_1C54A1160(v23);
  KeyPath = swift_getKeyPath();
  sub_1C55961E4();
  (*(v21 + 8))(v23, v24);
  v25 = sub_1C54A0EC4();
  sub_1C54297C4(v25 + OBJC_IVAR____TtC14AppleAccountUI26BirthdayPickerRowViewModel_dateRange, v31);

  sub_1C55954D4();
  sub_1C5594F44();

  sub_1C54AC0A4();
  v42 = sub_1C54AE70C();
  v43 = sub_1C54AE794();
  sub_1C5595B84();
  (*(v34 + 8))(v36, v41);
  (*(v37 + 8))(v39, v40);
  v54 = v40;
  v55 = v41;
  v56 = v42;
  v57 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v49, v51, v50);
  v53 = *(v45 + 8);
  v52 = v45 + 8;
  v53(v49, v51);
  (*(v45 + 16))(v49, v50, v51);
  sub_1C540EFD8(v49, v51, v47);
  v53(v49, v51);
  return (v53)(v50, v51);
}

uint64_t sub_1C54AC0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v19 = a2;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v2 = sub_1C5595544();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v33;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D4F0);
  v21 = v40;
  v22 = *(v40 - 8);
  v39 = v22;
  v23 = v22;
  v26 = *(v22 + 64);
  v4 = MEMORY[0x1EEE9AC00](v30);
  v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = v17 - v28;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v25 = v17 - v28;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v43 = v17 - v28;
  v27 = v17 - v28;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v37 = v17 - v28;
  v29 = v17 - v28;
  v48 = v17 - v28;
  v47 = v7;
  v35 = sub_1C55965F4();
  v32 = v8;
  sub_1C5595524();
  v45 = v30;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D4F8);
  v31 = v34;
  v36 = sub_1C54AE384();
  sub_1C54AC7A0(v35, v32, v33, sub_1C54AE37C, v44, v34, v36, v43);
  v38 = sub_1C54AE42C();
  sub_1C540EFD8(v43, v40, v37);
  v41 = *(v39 + 8);
  v42 = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v43, v40);
  v46 = v43;
  v17[0] = sub_1C55965F4();
  v17[1] = v9;
  sub_1C5595534();
  v17[2] = v17;
  v10 = MEMORY[0x1EEE9AC00](v17[0]);
  v17[-2] = v30;
  sub_1C54AC7A0(v10, v11, v12, sub_1C54AE4B4, &v17[-4], v13, v14, v15);
  sub_1C540EFD8(v25, v21, v27);
  v41(v25, v21);
  v18 = *(v23 + 16);
  v17[3] = v23 + 16;
  v18(v25, v29, v21);
  v18(v24, v27, v21);
  sub_1C54ACC24(v25, v24, v21, v21, v19);
  v41(v24, v21);
  v41(v25, v21);
  v41(v27, v21);
  return (v41)(v29, v21);
}

uint64_t sub_1C54AC4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v18 = a1;
  v30 = 0;
  v29 = 0;
  v13 = 0;
  v2 = sub_1C5594F34();
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v14 = &v7 - v8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C560);
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v9 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v7 - v9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D4F8);
  v11 = *(*(v25 - 8) + 64);
  v10 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v18);
  v27 = &v7 - v10;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v28 = &v7 - v12;
  v30 = &v7 - v12;
  v29 = v4;
  sub_1C5594F14();
  v17 = type metadata accessor for BirthdayPickerSheet();
  v5 = (v18 + *(v17 + 24));
  v15 = *v5;
  v16 = v5[1];

  MEMORY[0x1C6946B80](v14, v15, v16);
  v19 = *(v18 + *(v17 + 20));
  sub_1C543DAE4();
  sub_1C5595DA4();
  (*(v20 + 8))(v22, v23);
  v26 = sub_1C54AE384();
  sub_1C540EFD8(v27, v25, v28);
  sub_1C54AE4BC(v27);
  sub_1C54AE560(v28, v27);
  sub_1C540EFD8(v27, v25, v24);
  sub_1C54AE4BC(v27);
  return sub_1C54AE4BC(v28);
}

uint64_t sub_1C54AC7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9[1] = a8;
  v9[8] = a1;
  v9[2] = a2;
  v12 = a3;
  v9[4] = a4;
  v9[5] = a5;
  v9[6] = a6;
  v9[7] = a7;
  v14 = a6;
  v13 = sub_1C5595544();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v9[0] = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v9[3] = v9 - v9[0];
  (*(v10 + 16))();
  sub_1C5595094();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C54AC8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a2;
  v10 = a1;
  v33 = 0;
  v32 = 0;
  v24 = 0;
  v3 = sub_1C5594F34();
  v11 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v26 = v6 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C560);
  v13 = *(v12 - 8);
  v14 = v12 - 8;
  v15 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v27 = v6 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D4F8);
  v20 = *(*(v16 - 8) + 64);
  v17 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v6 - v17;
  v19 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6 - v17);
  v21 = v6 - v19;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6 - v19);
  v23 = v6 - v22;
  v33 = v6 - v22;
  v32 = a1;
  sub_1C5594F24();
  v25 = type metadata accessor for BirthdayPickerSheet();
  v4 = (a1 + *(v25 + 28));
  v28 = *v4;
  v29 = v4[1];

  MEMORY[0x1C6946B80](v26, v28, v29);
  v30 = sub_1C54A0EC4();
  v31 = (*(*v30 + 624))(v30);

  if (v31)
  {
    v8 = *(v10 + *(v25 + 20));
  }

  else
  {
    v8 = 1;
  }

  v6[1] = v8;
  sub_1C543DAE4();
  sub_1C5595DA4();
  (*(v13 + 8))(v27, v12);
  v7 = sub_1C54AE384();
  sub_1C540EFD8(v21, v16, v23);
  sub_1C54AE4BC(v21);
  sub_1C54AE560(v23, v18);
  sub_1C540EFD8(v18, v16, v9);
  sub_1C54AE4BC(v18);
  return sub_1C54AE4BC(v23);
}

uint64_t sub_1C54ACC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13 = a5;
  v8[2] = a1;
  v11 = a2;
  v8[1] = a3;
  v12 = a4;
  v17 = a3;
  v16 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = v8 - v9;
  v10 = *(v5 + 48);
  (*(*(v6 - 8) + 16))();
  (*(*(v12 - 8) + 16))(&v15[v10], v11);
  return sub_1C5595464();
}

unint64_t sub_1C54ACDB8()
{
  v2 = qword_1EC15D478;
  if (!qword_1EC15D478)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D478);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54ACE4C()
{
  v2 = qword_1EC15D480;
  if (!qword_1EC15D480)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D480);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54ACEE0()
{
  v2 = qword_1EC15D488;
  if (!qword_1EC15D488)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D488);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54ACF74()
{
  v2 = qword_1EC15D490;
  if (!qword_1EC15D490)
  {
    type metadata accessor for AppleAccountBirthdayPickerRow();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AD00C()
{
  v2 = qword_1EC15D498;
  if (!qword_1EC15D498)
  {
    type metadata accessor for AppleAccountBirthdayPickerRow();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D498);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AD0A4()
{
  v2 = qword_1EC15D4A0;
  if (!qword_1EC15D4A0)
  {
    type metadata accessor for AppleAccountBirthdayPickerRow();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D4A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54AD244()
{
  v5 = sub_1C5596384();
  if (v0 <= 0x3F)
  {
    v5 = sub_1C54AD39C();
    if (v1 <= 0x3F)
    {
      v5 = sub_1C54AD444();
      if (v2 <= 0x3F)
      {
        v5 = sub_1C54AD4E8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_1C54AD39C()
{
  v4 = qword_1EC15D4A8;
  if (!qword_1EC15D4A8)
  {
    sub_1C55963A4();
    sub_1C549BD98();
    v3 = sub_1C55952B4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15D4A8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C54AD444()
{
  v4 = qword_1EC15D4B0;
  if (!qword_1EC15D4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15E8A0);
    v3 = sub_1C5595014();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15D4B0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C54AD4E8()
{
  v4 = qword_1EC15D4B8;
  if (!qword_1EC15D4B8)
  {
    type metadata accessor for BirthdayPickerRowViewModel();
    v3 = sub_1C5595FB4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15D4B8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C54AD5D4()
{
  v2 = sub_1C54AD66C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1C54AD66C()
{
  v4 = qword_1EC15D4C0;
  if (!qword_1EC15D4C0)
  {
    type metadata accessor for BirthdayPickerRowViewModel();
    v3 = sub_1C55961F4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EC15D4C0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1C54AD708(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C54AD870(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
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

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 7) = *(a2 + 7);
  return result;
}

uint64_t sub_1C54ADAA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 11))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFE)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C54ADBC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 11);
  if (a2 > 0xFE)
  {
    result = 0;
    *(v3 + 10) = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 255;
    if (a3 >= 0xFF)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C54ADD90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
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

uint64_t sub_1C54ADED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1C54AE108()
{
  v3 = sub_1C54AD66C();
  if (v0 <= 0x3F)
  {
    v3 = sub_1C54AE1F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

unint64_t sub_1C54AE1F0()
{
  v2 = qword_1EC15D4C8;
  if (!qword_1EC15D4C8)
  {
    FunctionTypeMetadata0 = swift_getFunctionTypeMetadata0();
    atomic_store(FunctionTypeMetadata0, &qword_1EC15D4C8);
    return FunctionTypeMetadata0;
  }

  return v2;
}

unint64_t sub_1C54AE25C()
{
  v2 = qword_1EC15D4D0;
  if (!qword_1EC15D4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D4D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AE2EC()
{
  v2 = qword_1EC15D4E8;
  if (!qword_1EC15D4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D4E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AE384()
{
  v2 = qword_1EC15D500;
  if (!qword_1EC15D500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D4F8);
    sub_1C543DAE4();
    sub_1C5430A44();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AE42C()
{
  v2 = qword_1EC15D508;
  if (!qword_1EC15D508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D4F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D508);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54AE4BC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C560);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D4F8);

  return a1;
}

uint64_t sub_1C54AE560(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C560);
  (*(*(v2 - 8) + 16))(a2, a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D4F8) + 36);
  v6 = *(a1 + v5);

  v9 = a2 + v5;
  *(a2 + v5) = v6;
  v8 = *(a1 + v5 + 8);
  v10 = *(a1 + v5 + 16);

  result = a2;
  *(v9 + 8) = v8;
  *(v9 + 16) = v10;
  return result;
}

unint64_t sub_1C54AE658()
{
  v2 = qword_1EC15D520;
  if (!qword_1EC15D520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D518);
    sub_1C549E678();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AE70C()
{
  v2 = qword_1EC15D538;
  if (!qword_1EC15D538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D530);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D538);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AE794()
{
  v2 = qword_1EC15D540;
  if (!qword_1EC15D540)
  {
    sub_1C5595684();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D540);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AE814()
{
  v2 = qword_1EC15D548;
  if (!qword_1EC15D548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D510);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D530);
    sub_1C5595684();
    sub_1C54AE70C();
    sub_1C54AE794();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D548);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54AE938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_1C5596DA4();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_1C54AEA1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    sub_1C5596C94();
    __break(1u);
  }

  result = swift_task_create();
  *a2 = result;
  return result;
}

unint64_t sub_1C54AEB8C()
{
  v2 = qword_1EC15D550;
  if (!qword_1EC15D550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D3C0);
    sub_1C54AEC30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AEC30()
{
  v2 = qword_1EC15D558;
  if (!qword_1EC15D558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D3D0);
    sub_1C54AECD8();
    sub_1C54778A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AECD8()
{
  v2 = qword_1EC15D560;
  if (!qword_1EC15D560)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D560);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54AED54(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C0);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);
    }

    else
    {

      v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0) + 36);
      v2 = sub_1C5595754();
      (*(*(v2 - 8) + 8))(v4);
    }
  }

  return a1;
}

_OWORD *sub_1C54AEE98(_OWORD *a1, _OWORD *a2)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D8);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C8);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v8 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0);
      v7 = a2 + *(v2 + 36);
      v6 = a1 + *(v2 + 36);
      v3 = sub_1C5595754();
      (*(*(v3 - 8) + 32))(v7, v6);
      swift_storeEnumTagMultiPayload();
    }

    (*(v12 + 56))(a2, 0, 1, v11);
  }

  return a2;
}

void *sub_1C54AF084(uint64_t *a1, void *a2)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(a1, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D8);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *(a1 + 16);
      sub_1C54130AC(*a1, v7, v8 & 1);
      *a2 = v6;
      a2[1] = v7;
      *(a2 + 16) = v8 & 1;
      v9 = a1[3];
      sub_1C5594CF4();
      a2[3] = v9;
    }

    else
    {
      v10 = *a1;

      *a2 = v10;
      v11 = a1[1];

      a2[1] = v11;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0);
      v13 = a2 + *(v2 + 36);
      v12 = a1 + *(v2 + 36);
      v3 = sub_1C5595754();
      (*(*(v3 - 8) + 16))(v13, v12);
    }

    swift_storeEnumTagMultiPayload();
    (*(v17 + 56))(a2, 0, 1, v16);
  }

  return a2;
}

unint64_t sub_1C54AF2F0()
{
  v2 = qword_1EC15D568;
  if (!qword_1EC15D568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D3D8);
    sub_1C54AEB8C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D568);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54AF388()
{
  v2 = qword_1EC15D570;
  if (!qword_1EC15D570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D3E0);
    sub_1C54893F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D570);
    return WitnessTable;
  }

  return v2;
}

_OWORD *sub_1C54AF420(_OWORD *a1, _OWORD *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C8);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0);
    v6 = a2 + *(v2 + 36);
    v5 = a1 + *(v2 + 36);
    v3 = sub_1C5595754();
    (*(*(v3 - 8) + 32))(v6, v5);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1C54AF534(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    sub_1C54130AC(*a1, v6, v7 & 1);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7 & 1;
    v8 = *(a1 + 24);
    sub_1C5594CF4();
    *(a2 + 24) = v8;
  }

  else
  {
    v9 = *a1;

    *a2 = v9;
    v10 = *(a1 + 8);

    *(a2 + 8) = v10;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0);
    v12 = a2 + *(v2 + 36);
    v11 = a1 + *(v2 + 36);
    v3 = sub_1C5595754();
    (*(*(v3 - 8) + 16))(v12, v11);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C54AF6C8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C5412EA0(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  else
  {

    v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0) + 36);
    v1 = sub_1C5595754();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

uint64_t sub_1C54AF7B8(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

char *sub_1C54AF84C(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0) + 36);
  v2 = sub_1C5595754();
  (*(*(v2 - 8) + 16))(&a2[v6], &a1[v6]);
  return a2;
}

uint64_t sub_1C54AF918@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C5594924();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1C54A0BFC(v3, a1);
}

uint64_t sub_1C54AF98C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1C5594924();
  v1 = sub_1C54AF9E8();

  return sub_1C54AE938(v5, v3, v4, v1);
}

unint64_t sub_1C54AF9E8()
{
  v2 = qword_1EC15D578;
  if (!qword_1EC15D578)
  {
    sub_1C5594924();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D578);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54AFA68(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for AppleAccountBirthdayPickerRow() - 8);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1C5405B1C;

  return sub_1C54A5CAC(a1, v7, v8, v1 + v9);
}

uint64_t sub_1C54AFB7C()
{
  type metadata accessor for AppleAccountBirthdayPickerRow();

  return sub_1C549F53C();
}

uint64_t sub_1C54AFBE0()
{
  type metadata accessor for AppleAccountBirthdayPickerRow();

  return sub_1C549F954();
}

uint64_t sub_1C54AFC44(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for BirthdayPickerSheet();

  return a1;
}

uint64_t sub_1C54AFCE8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  (*(*(v2 - 8) + 16))(a2, a1);
  v10 = type metadata accessor for BirthdayPickerSheet();
  *(a2 + v10[5]) = *(a1 + v10[5]);
  v7 = v10[6];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);

  v3 = (a2 + v7);
  *v3 = v8;
  v3[1] = v9;
  v12 = v10[7];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);

  result = a2;
  v5 = (a2 + v12);
  *v5 = v13;
  v5[1] = v14;
  return result;
}

uint64_t sub_1C54AFE0C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);

  *a2 = v4;
  *(a2 + 8) = v5 & 1;
  *(a2 + 9) = *(a1 + 9);
  *(a2 + 10) = *(a1 + 10);
  memcpy((a2 + 16), a1 + 2, 0x29uLL);
  return a2;
}

uint64_t sub_1C54AFE90(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  v5 = a1[1];

  result = a2;
  *(a2 + 8) = v5;
  *(a2 + 16) = *(a1 + 16);
  return result;
}

double sub_1C54AFEF4(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = 0x7FF0000000000000;
  }

  return *&a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_1C54AFF74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 9))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C54B0084(uint64_t result, int a2, int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = (a2 - 1);
    if (a3)
    {
      *v4 = 1;
    }
  }

  else if (a3)
  {
    *v4 = 0;
  }

  return result;
}

uint64_t sub_1C54B02C0()
{
  result = sub_1C55965F4();
  qword_1EC15F9A8 = result;
  qword_1EC15F9B0 = v1;
  return result;
}

uint64_t *sub_1C54B0304()
{
  if (qword_1EC15F9A0 != -1)
  {
    swift_once();
  }

  return &qword_1EC15F9A8;
}

uint64_t sub_1C54B0364()
{
  v1 = sub_1C54B0304();
  swift_beginAccess();
  v2 = *v1;
  sub_1C5594CF4();
  swift_endAccess();
  return v2;
}

uint64_t sub_1C54B03C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C54B0304();
  sub_1C5594CF4();
  swift_beginAccess();
  *v4 = a1;
  v4[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C54B0448()
{
  v1 = sub_1C5594C74();
  __swift_allocate_value_buffer(v1, qword_1EC16B3E0);
  __swift_project_value_buffer(v1, qword_1EC16B3E0);
  sub_1C54B0304();
  swift_beginAccess();
  sub_1C5594CF4();
  swift_endAccess();
  sub_1C55965F4();
  return sub_1C5594C64();
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_1C54B05F8()
{
  if (qword_1EC15F9B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C74();
  return __swift_project_value_buffer(v0, qword_1EC16B3E0);
}

uint64_t sub_1C54B0664@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C54B05F8();
  v1 = sub_1C5594C74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C54B06C8()
{
  v1 = sub_1C5594C74();
  __swift_allocate_value_buffer(v1, qword_1EC16B470);
  __swift_project_value_buffer(v1, qword_1EC16B470);
  sub_1C54B0304();
  swift_beginAccess();
  sub_1C5594CF4();
  swift_endAccess();
  sub_1C55965F4();
  return sub_1C5594C64();
}

uint64_t sub_1C54B0784()
{
  if (qword_1EC163D58 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C74();
  return __swift_project_value_buffer(v0, qword_1EC16B470);
}

uint64_t sub_1C54B07F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C54B0784();
  v1 = sub_1C5594C74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1C54B0854()
{
  v1 = sub_1C5594C74();
  __swift_allocate_value_buffer(v1, qword_1EC16B488);
  __swift_project_value_buffer(v1, qword_1EC16B488);
  sub_1C54B0304();
  swift_beginAccess();
  sub_1C5594CF4();
  swift_endAccess();
  sub_1C55965F4();
  return sub_1C5594C64();
}

uint64_t sub_1C54B0910()
{
  if (qword_1EC163D60 != -1)
  {
    swift_once();
  }

  v0 = sub_1C5594C74();
  return __swift_project_value_buffer(v0, qword_1EC16B488);
}

uint64_t sub_1C54B097C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C54B0910();
  v1 = sub_1C5594C74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t AAUIWalletCardListItem.uniqueIdentifier.getter()
{
  v2 = (v0 + OBJC_IVAR___AAUIWalletCardListItem_uniqueIdentifier);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t AAUIWalletCardListItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUIWalletCardListItem_uniqueIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C54B0C98@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v10 = [v9 uniqueIdentifier];
  if (v10)
  {
    v4 = sub_1C5596574();
    v5 = v2;
    MEMORY[0x1E69E5920](v10);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  *&result = MEMORY[0x1E69E5920](v9).n128_u64[0];
  return result;
}

double sub_1C54B0D7C(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[1];
  v6 = *a2;
  MEMORY[0x1E69E5928](*a2);
  if (v7)
  {
    v4 = sub_1C5596554();

    [v6 setUniqueIdentifier_];
  }

  else
  {
    [v6 setUniqueIdentifier_];
  }

  MEMORY[0x1E69E5920](v3);
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

uint64_t AAUIWalletCardListItem.icon.getter()
{
  v2 = (v0 + OBJC_IVAR___AAUIWalletCardListItem_icon);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double AAUIWalletCardListItem.icon.setter(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUIWalletCardListItem_icon);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

double sub_1C54B1058@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = [v3 icon];
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

double sub_1C54B10CC(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  [v4 setIcon_];
  MEMORY[0x1E69E5920](v4);
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t AAUIWalletCardListItem.title.getter()
{
  v2 = (v0 + OBJC_IVAR___AAUIWalletCardListItem_title);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t AAUIWalletCardListItem.title.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUIWalletCardListItem_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C54B140C@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v10 = [v9 title];
  if (v10)
  {
    v4 = sub_1C5596574();
    v5 = v2;
    MEMORY[0x1E69E5920](v10);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  *&result = MEMORY[0x1E69E5920](v9).n128_u64[0];
  return result;
}

double sub_1C54B14F0(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[1];
  v6 = *a2;
  MEMORY[0x1E69E5928](*a2);
  if (v7)
  {
    v4 = sub_1C5596554();

    [v6 setTitle_];
  }

  else
  {
    [v6 setTitle_];
  }

  MEMORY[0x1E69E5920](v3);
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

uint64_t AAUIWalletCardListItem.subtitle.getter()
{
  v2 = (v0 + OBJC_IVAR___AAUIWalletCardListItem_subtitle);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t AAUIWalletCardListItem.subtitle.setter(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUIWalletCardListItem_subtitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

double sub_1C54B1898@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = *a1;
  MEMORY[0x1E69E5928](*a1);
  v10 = [v9 subtitle];
  if (v10)
  {
    v4 = sub_1C5596574();
    v5 = v2;
    MEMORY[0x1E69E5920](v10);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v6;
  a2[1] = v7;
  *&result = MEMORY[0x1E69E5920](v9).n128_u64[0];
  return result;
}

double sub_1C54B197C(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v8);
  v7 = v8[1];
  v6 = *a2;
  MEMORY[0x1E69E5928](*a2);
  if (v7)
  {
    v4 = sub_1C5596554();

    [v6 setSubtitle_];
  }

  else
  {
    [v6 setSubtitle_];
  }

  MEMORY[0x1E69E5920](v3);
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

id AAUIWalletCardListItem.init(title:subtitle:icon:uniqueIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (a2)
  {
    v13 = sub_1C5596554();

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a4)
  {
    v11 = sub_1C5596554();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (a7)
  {
    v9 = sub_1C5596554();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v8 = [v19 initWithTitle:v14 subtitle:v12 icon:a5 uniqueIdentifier:?];
  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](v14);
  return v8;
}

char *AAUIWalletCardListItem.init(title:subtitle:icon:uniqueIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = 0;
  v33 = a1;
  v34 = a2;
  v31 = a3;
  v32 = a4;
  v30 = a5;
  v28 = a6;
  v29 = a7;
  v7 = OBJC_IVAR___AAUIWalletCardListItem_uniqueIdentifier;
  *OBJC_IVAR___AAUIWalletCardListItem_uniqueIdentifier = 0;
  *(v7 + 8) = 0;
  *&v35[OBJC_IVAR___AAUIWalletCardListItem_icon] = 0;
  v8 = &v35[OBJC_IVAR___AAUIWalletCardListItem_title];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v35[OBJC_IVAR___AAUIWalletCardListItem_subtitle];
  *v9 = 0;
  *(v9 + 1) = 0;
  sub_1C5594CF4();
  v13 = &v35[OBJC_IVAR___AAUIWalletCardListItem_title];
  swift_beginAccess();
  *v13 = a1;
  *(v13 + 1) = a2;

  swift_endAccess();
  v14 = v35;
  sub_1C5594CF4();
  v16 = &v14[OBJC_IVAR___AAUIWalletCardListItem_subtitle];
  swift_beginAccess();
  *v16 = a3;
  *(v16 + 1) = a4;

  swift_endAccess();
  v17 = v35;
  MEMORY[0x1E69E5928](a5);
  v18 = &v17[OBJC_IVAR___AAUIWalletCardListItem_icon];
  swift_beginAccess();
  v10 = *v18;
  *v18 = a5;
  MEMORY[0x1E69E5920](v10);
  swift_endAccess();
  v19 = v35;
  sub_1C5594CF4();
  v21 = &v19[OBJC_IVAR___AAUIWalletCardListItem_uniqueIdentifier];
  swift_beginAccess();
  *v21 = a6;
  *(v21 + 1) = a7;

  swift_endAccess();
  v27.receiver = v35;
  v27.super_class = AAUIWalletCardListItem;
  v26 = objc_msgSendSuper2(&v27, sel_init);
  MEMORY[0x1E69E5928](v26);
  v35 = v26;

  MEMORY[0x1E69E5920](a5);

  MEMORY[0x1E69E5920](v35);
  return v26;
}

uint64_t sub_1C54B225C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AAUIWalletCardListItem();
  result = sub_1C5596BB4();
  *a1 = result;
  return result;
}

unint64_t type metadata accessor for AAUIWalletCardListItem()
{
  v2 = qword_1EC163DF0[0];
  if (!qword_1EC163DF0[0])
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, qword_1EC163DF0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C54B2338@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v7 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF0);
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v2 - v3;
  v7 = MEMORY[0x1EEE9AC00](v2);
  sub_1C548032C(v7, (&v2 - v3));
  sub_1C5595004();
  return sub_1C5480400(v6);
}

uint64_t sub_1C54B2468(uint64_t a1)
{
  v5 = a1;
  v7 = 0;
  v6 = 0;
  v3[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = v3 - v3[0];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v6 = v1;
  sub_1C548032C(v7, (v3 - v3[0]));
  sub_1C5480748(v4, v3[1]);
  return sub_1C5480400(v5);
}

uint64_t sub_1C54B2520()
{
  type metadata accessor for SharedNameRowView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595F84();

  return v1;
}

uint64_t type metadata accessor for SharedNameRowView()
{
  v1 = qword_1EC1640A0;
  if (!qword_1EC1640A0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1C54B2638()
{
  type metadata accessor for SharedNameRowView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595F94();
  sub_1C5436F54();
}

void (*sub_1C54B271C(void *a1))(void **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for SharedNameRowView() + 20));
  v5 = *v2;
  v1[9] = *v2;
  v6 = v2[1];
  v1[10] = v6;

  *v1 = v5;
  v1[1] = v6;
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595F84();
  return sub_1C5437078;
}

uint64_t sub_1C54B2808()
{
  type metadata accessor for SharedNameRowView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0D0);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C54B28C4()
{
  v2 = *(v0 + *(type metadata accessor for SharedNameRowView() + 20));

  return v2;
}

uint64_t sub_1C54B291C(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SharedNameRowView() + 20));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1C54B29B0()
{
  type metadata accessor for SharedNameRowView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();

  return v1 & 1;
}

uint64_t sub_1C54B2A48()
{
  type metadata accessor for SharedNameRowView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F94();
  sub_1C5373718();
}

void (*sub_1C54B2B0C(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for SharedNameRowView() + 24));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595F84();
  return sub_1C542E3F0;
}

uint64_t sub_1C54B2BF8()
{
  type metadata accessor for SharedNameRowView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD40);
  sub_1C5595FA4();

  return v1;
}

uint64_t sub_1C54B2CA8()
{
  v2 = *(v0 + *(type metadata accessor for SharedNameRowView() + 24));

  return v2 & 1;
}

uint64_t sub_1C54B2CFC(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for SharedNameRowView() + 24);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t sub_1C54B2D74()
{
  v2 = *(v0 + *(type metadata accessor for SharedNameRowView() + 28));
  MEMORY[0x1E69E5928](v2);
  return v2;
}

unint64_t sub_1C54B2E0C()
{
  v2 = qword_1EC163E08;
  if (!qword_1EC163E08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC163E08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B2F88()
{
  v2 = qword_1EC163E10[0];
  if (!qword_1EC163E10[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EC163E10);
    return WitnessTable;
  }

  return v2;
}

uint64_t SharedNameRowView.id.getter()
{
  v2 = *(v0 + *(type metadata accessor for SharedNameRowView() + 32));
  sub_1C5594CF4();
  return v2;
}

uint64_t SharedNameRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v23 = sub_1C54B3CB4;
  v20 = sub_1C54B3E9C;
  v32 = MEMORY[0x1E697CDC0];
  v33 = sub_1C54B4874;
  v47 = sub_1C54B4E8C;
  v56 = MEMORY[0x1E697D510];
  v78 = 0;
  v77 = 0;
  v46 = 0;
  v1 = type metadata accessor for SharedNameRowView();
  v10 = *(v1 - 8);
  v17 = v10;
  v41 = *(v10 + 64);
  v11 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v44 = &v10 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5A0);
  v24 = *(v28 - 8);
  v25 = v28 - 8;
  v12 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v26 = &v10 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5A8);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v10 - v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5B0);
  v14 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v10 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5B8);
  v58 = *(v64 - 8);
  v59 = v64 - 8;
  v15 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v39);
  v62 = &v10 - v15;
  v16 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v63 = &v10 - v16;
  v78 = &v10 - v16;
  v77 = v4;
  sub_1C54B39A8(v4, v5);
  v40 = *(v17 + 80);
  v18 = (v40 + 16) & ~v40;
  v42 = 7;
  v19 = swift_allocObject();
  sub_1C54B3B90(v44, (v19 + v18));
  v21 = &v67;
  v68 = v39;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF58);
  sub_1C5481D70();
  v6 = sub_1C5595FD4();
  nullsub_1(v6);
  v30 = sub_1C54B4544();
  v31 = sub_1C54B45CC();
  v29 = &unk_1F447A140;
  sub_1C5595AD4();
  (*(v24 + 8))(v26, v28);
  sub_1C54B39A8(v39, v44);
  v27 = (v40 + 16) & ~v40;
  v34 = swift_allocObject();
  sub_1C54B3B90(v44, (v34 + v27));
  v73 = v28;
  v74 = v29;
  v75 = v30;
  v76 = v31;
  v57 = 1;
  swift_getOpaqueTypeConformance2();
  sub_1C5595DC4();
  sub_1C5411348(v33);
  (*(v35 + 8))(v37, v38);
  v49 = sub_1C54B2BF8();
  v50 = v7;
  v45 = v8;
  sub_1C54B39A8(v39, v44);
  v43 = (v40 + 16) & ~v40;
  v48 = swift_allocObject();
  sub_1C54B3B90(v44, (v48 + v43));
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5D0);
  v54 = sub_1C54B4F00();
  v55 = sub_1C54B5014();
  sub_1C5595D34();

  sub_1C5367458(v51);
  v69 = v52;
  v70 = v53;
  v71 = v54;
  v72 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C540EFD8(v62, v64, v63);
  v66 = *(v58 + 8);
  v65 = v58 + 8;
  v66(v62, v64);
  (*(v58 + 16))(v62, v63, v64);
  sub_1C540EFD8(v62, v64, v60);
  v66(v62, v64);
  return (v66)(v63, v64);
}

void *sub_1C54B39A8(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5594BE4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v17 = *a1;

    *a2 = v17;
  }

  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for SharedNameRowView();
  v8 = (a2 + v14[5]);
  v7 = (a1 + v14[5]);
  v6 = *v7;

  *v8 = v6;
  v9 = v7[1];

  v8[1] = v9;
  v10 = a2 + v14[6];
  v3 = a1 + v14[6];
  *v10 = *v3;
  v11 = *(v3 + 1);

  *(v10 + 1) = v11;
  v12 = v14[7];
  v13 = *(a1 + v12);
  MEMORY[0x1E69E5928](v13);
  *(a2 + v12) = v13;
  v15 = (a2 + v14[8]);
  v4 = (a1 + v14[8]);
  *v15 = *v4;
  v16 = v4[1];
  sub_1C5594CF4();
  result = a2;
  v15[1] = v16;
  return result;
}

__n128 sub_1C54B3B90(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1C5594BE4();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  v3 = type metadata accessor for SharedNameRowView();
  *&a2[v3[5]] = *&a1[v3[5]];
  *&a2[v3[6]] = *&a1[v3[6]];
  *&a2[v3[7]] = *&a1[v3[7]];
  result = *&a1[v3[8]];
  *&a2[v3[8]] = result;
  return result;
}

uint64_t sub_1C54B3CB4()
{
  type metadata accessor for SharedNameRowView();

  return sub_1C54B3968();
}

uint64_t sub_1C54B3D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF70);
  sub_1C5482408();
  sub_1C5412C88();
  sub_1C5596024();
  memcpy(__dst, v9, sizeof(__dst));
  memcpy(v8, __dst, sizeof(v8));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF58);
  sub_1C5481D70();
  sub_1C540EFD8(v8, v5, __b);
  sub_1C5481EA0(v8);
  memcpy(v13, __b, sizeof(v13));
  sub_1C54B6F10(v13, v7);
  memcpy(v6, v13, sizeof(v6));
  sub_1C540EFD8(v6, v5, a2);
  sub_1C5481EA0(v6);
  return sub_1C5481EA0(__b);
}

uint64_t sub_1C54B3EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v37 = a1;
  v29 = "Navigation view title that shows the shared name options. User can select to either share full name or custom name.";
  v116 = 0;
  v71 = v115;
  memset(v115, 0, sizeof(v115));
  v35 = &v103;
  v103 = 0;
  v104 = 0;
  v70 = v100;
  memset(v100, 0, sizeof(v100));
  v50 = 0;
  v47 = sub_1C55953B4();
  v45 = *(v47 - 8);
  v46 = v47 - 8;
  v26 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v37);
  v49 = &v25 - v26;
  v27 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v44 = &v25 - v27;
  v28 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v48 = &v25 - v28;
  v116 = v6;
  v59 = 1;
  sub_1C55965F4();
  v33 = sub_1C55953C4();
  v30 = v7;
  v31 = v8;
  v32 = v9;
  sub_1C5439370();
  sub_1C5576C44();
  v112 = v29;
  v113 = 115;
  v114 = 2;
  v108 = sub_1C55959E4();
  v109 = v10;
  v110 = v11;
  v111 = v12;
  v34 = v105;
  v105[0] = v108;
  v105[1] = v10;
  v106 = v11 & 1 & v59;
  v107 = v12;
  v63 = MEMORY[0x1E6981148];
  v65 = MEMORY[0x1E6981138];
  sub_1C540EFD8(v105, MEMORY[0x1E6981148], v71);
  sub_1C5414260(v34);
  v101 = sub_1C5596044();
  v102 = v13 & 1 & v59;
  v62 = MEMORY[0x1E6981840];
  v64 = MEMORY[0x1E6981838];
  sub_1C540EFD8(&v101, MEMORY[0x1E6981840], v35);
  sub_1C55953A4();
  v42 = "";
  sub_1C55965F4();
  v36 = v14;
  sub_1C5595394();

  v15 = sub_1C54B2520();
  v39 = v15;
  v38 = *(v37 + *(type metadata accessor for SharedNameRowView() + 28));
  MEMORY[0x1E69E5928](v38);
  v40 = (*(*v15 + 584))(v38);
  v41 = v16;
  MEMORY[0x1E69E5920](v38);

  sub_1C5595384();

  sub_1C55965F4();
  v43 = v17;
  sub_1C5595394();

  (*(v45 + 16))(v44, v48, v47);
  (*(v45 + 32))(v49, v44, v47);
  (*(v45 + 8))(v48, v47);
  sub_1C55953D4();
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = v59 & 1;
  v92 = sub_1C55959E4();
  v93 = v18;
  v94 = v19;
  v95 = v20;
  v52 = v92;
  v53 = v18;
  v54 = v19;
  v55 = v20;
  v51 = sub_1C5595E64();
  v88 = v52;
  v89 = v53;
  v90 = v54 & 1 & v59;
  v91 = v55;
  v84 = sub_1C5595984();
  v85 = v21;
  v86 = v22;
  v87 = v23;
  v56 = v84;
  v57 = v21;
  v58 = v22;
  v60 = v23;

  sub_1C5412EA0(v52, v53, v54 & 1);

  v61 = v81;
  v81[0] = v56;
  v81[1] = v57;
  v82 = v58 & 1 & v59;
  v83 = v60;
  sub_1C540EFD8(v81, v63, v70);
  sub_1C5414260(v61);
  v69 = v79;
  sub_1C54142A8(v71, v79);
  v67 = v80;
  v80[0] = v69;
  v77 = v103;
  v78 = v104;
  v80[1] = &v77;
  v68 = v76;
  sub_1C54142A8(v70, v76);
  v80[2] = v68;
  v75[0] = v63;
  v75[1] = v62;
  v75[2] = v63;
  v72 = v65;
  v73 = v64;
  v74 = v65;
  sub_1C540F5A0(v67, 3uLL, v75, v66);
  sub_1C5414260(v68);
  sub_1C5414260(v69);
  sub_1C5414260(v70);
  return sub_1C5414260(v71);
}

unint64_t sub_1C54B4544()
{
  v2 = qword_1EC15D5C0;
  if (!qword_1EC15D5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D5A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D5C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1C54B45CC()
{
  v2 = qword_1EC15D5C8;
  if (!qword_1EC15D5C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15D5C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C54B4648(uint64_t *a1)
{
  v14 = a1;
  v18 = MEMORY[0x1E69E85E0];
  v23 = &unk_1C55B2B58;
  v25 = 0;
  v21 = 0;
  v1 = type metadata accessor for SharedNameRowView();
  v11 = *(v1 - 8);
  v15 = v11;
  v16 = *(v11 + 64);
  v12 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v20 = &v10 - v12;
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v22 = &v10 - v13;
  v25 = v2;
  v3 = sub_1C5596814();
  (*(*(v3 - 8) + 56))(v22, 1);
  sub_1C54B39A8(v14, v20);
  sub_1C55967E4();
  v17 = sub_1C55967D4();
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v19;
  v7 = v4;
  v8 = v20;
  v24 = v7;
  *(v7 + 16) = v17;
  *(v7 + 24) = v5;
  sub_1C54B3B90(v8, (v7 + v6));
  sub_1C54061EC(v21, v21, v22, v23, v24, MEMORY[0x1E69E7CA8] + 8);
}