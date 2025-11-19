uint64_t sub_23D453904()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_23D454E18();
  return v3;
}

uint64_t *sub_23D45393C()
{
  if (qword_27E2DB280 != -1)
  {
    swift_once();
  }

  return &qword_27E2DBE08;
}

uint64_t sub_23D45398C()
{
  if (qword_27E2DB280 != -1)
  {
    swift_once();
  }
}

uint64_t sub_23D4539E8()
{
  v10 = sub_23D46BF58();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D46BF38();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_23D46BD38();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_23D458B00(0, &qword_27E2DA780, 0x277D85C78);
  sub_23D46BD28();
  v11 = MEMORY[0x277D84F90];
  sub_23D458B58(&qword_27E2DA788, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA790, qword_23D46D320);
  sub_23D43B810(&qword_27E2DA798, &qword_27E2DA790, qword_23D46D320);
  sub_23D46BFF8();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_23D46BF88();
  qword_27E2DB290 = result;
  return result;
}

uint64_t sub_23D453C6C()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  return v0[16];
}

uint64_t sub_23D453CD0@<X0>(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  *a2 = v3[16];
  return result;
}

uint64_t sub_23D453D70(uint64_t result)
{
  if (v1[16] == (result & 1))
  {
    v1[16] = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x28223BE20](KeyPath);
    (*(*v1 + 488))(v3, sub_23D458918);
  }

  return result;
}

void *sub_23D453E58()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  v1 = v0[3];
  v2 = v1;
  return v1;
}

id sub_23D453EC4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  v4 = v3[3];
  *a2 = v4;

  return v4;
}

void sub_23D453F4C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_23D453F7C(v2);
}

void sub_23D453F7C(void *a1)
{
  v3 = v1[3];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    (*(*v1 + 488))(v9, sub_23D458BC8);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_23D458B00(0, &qword_27E2DAC78, &off_278BD05D0);
  v4 = v3;
  v5 = a1;
  v6 = sub_23D46BF98();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[3];
LABEL_8:
  v1[3] = a1;
}

void *sub_23D4540FC()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  v1 = v0[4];
  v2 = v1;
  return v1;
}

id sub_23D454168@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  v4 = v3[4];
  *a2 = v4;

  return v4;
}

void sub_23D4541F0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_23D454220(v2);
}

void sub_23D454220(void *a1)
{
  v3 = v1[4];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    (*(*v1 + 488))(v9, sub_23D458A74);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_23D458B00(0, &qword_27E2DAC70, 0x277CE5458);
  v4 = v3;
  v5 = a1;
  v6 = sub_23D46BF98();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[4];
LABEL_8:
  v1[4] = a1;
}

id sub_23D454398()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  v1 = v0[5];

  return v1;
}

id sub_23D45440C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  v4 = v3[5];
  *a2 = v4;

  return v4;
}

void sub_23D4544C0(void *a1)
{
  v2 = v1;
  v4 = v1[5];
  type metadata accessor for AFUObserverController();
  v5 = v4;
  v6 = sub_23D46BF98();

  if (v6)
  {
    v7 = v2[5];
    v2[5] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 488))(v9, sub_23D4588E0);
  }
}

id sub_23D454600()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  v1 = v0[6];

  return v1;
}

id sub_23D454674@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 480))();

  v4 = v3[6];
  *a2 = v4;

  return v4;
}

void sub_23D454728(void *a1)
{
  v2 = v1;
  v4 = v1[6];
  type metadata accessor for AFUEndpointStatusController();
  v5 = v4;
  v6 = sub_23D46BF98();

  if (v6)
  {
    v7 = v2[6];
    v2[6] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 488))(v9, sub_23D4588A8);
  }
}

uint64_t sub_23D4548C4()
{
  swift_getKeyPath();
  (*(*v0 + 480))();

  swift_beginAccess();
  v1 = v0[7];
}

uint64_t sub_23D454948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  return result;
}

uint64_t sub_23D45499C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 408);

  return v3(v4);
}

uint64_t sub_23D4549F8(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[7];

  v5 = sub_23D457D78(v4, a1);

  if (v5)
  {
    v6 = v1[7];
    v1[7] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v1;
    v11 = a1;
    (*(*v1 + 488))(v9, sub_23D457F8C);
  }
}

void (*sub_23D454B20(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 480))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings11AFUSettings___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D458B58(&qword_27E2DAC60, type metadata accessor for AFUSettings);
  sub_23D46B848();

  v4[7] = sub_23D454874();
  return sub_23D454C70;
}

void sub_23D454C70(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_23D46B838();

  free(v1);
}

uint64_t sub_23D454D04()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 localizedInfoDictionary];

  if (v1)
  {
    v2 = sub_23D46BD88();

    if (*(v2 + 16) && (v3 = sub_23D450300(0xD000000000000013, 0x800000023D46F5B0), (v4 & 1) != 0))
    {
      sub_23D441268(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_23D454E18()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = MEMORY[0x277D84F90];
  sub_23D46B858();
  *(v0 + 16) = 0;
  type metadata accessor for AFUObserverController();
  *(v0 + 40) = sub_23D43D76C();
  type metadata accessor for AFUEndpointStatusController();
  *(v0 + 48) = sub_23D43D76C();
  return v0;
}

uint64_t sub_23D454ECC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23D46BD08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23D46BD38();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2DB288 != -1)
  {
    swift_once();
  }

  v21[1] = qword_27E2DB290;
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a1;
  aBlock[4] = sub_23D45803C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D43C3E4;
  aBlock[3] = &block_descriptor_2;
  v18 = _Block_copy(aBlock);

  sub_23D458060(a2);
  v19 = a1;
  sub_23D46BD18();
  v23 = MEMORY[0x277D84F90];
  sub_23D458B58(&qword_27E2DA850, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
  sub_23D43B810(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920);
  sub_23D46BFF8();
  MEMORY[0x23EEE1040](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

uint64_t sub_23D4551F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v77 = a3;
  v78 = a4;
  v76 = a2;
  v85 = a1;
  v4 = MEMORY[0x277D84F90];
  v104 = MEMORY[0x277D84F90];
  v105 = MEMORY[0x277D84F90];
  v75 = [objc_opt_self() sharedDatabase];
  v5 = [v75 accessoriesDictionary];
  v6 = MEMORY[0x277D84F70];
  v7 = sub_23D46BD88();

  v82 = sub_23D45832C();
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v90 = *MEMORY[0x277CE5578];

  v79 = 0;
  v13 = 0;
  v14 = v4;
  v91 = v4;
LABEL_4:
  v83 = v14;
  if (!v11)
  {
LABEL_8:
    if (v12 <= v13 + 1)
    {
      v16 = v13 + 1;
    }

    else
    {
      v16 = v12;
    }

    v17 = v16 - 1;
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v15 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v15);
      ++v13;
      if (v11)
      {
        goto LABEL_15;
      }
    }

    v11 = 0;
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v15 = v17;
    goto LABEL_16;
  }

  while (1)
  {
    v15 = v13;
LABEL_15:
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = v18 | (v15 << 6);
    sub_23D4589C4(*(v7 + 48) + 40 * v19, v93);
    sub_23D441268(*(v7 + 56) + 32 * v19, v92);
    v95 = v93[0];
    v96 = v93[1];
    *&v97 = v94;
    sub_23D4589B4(v92, (&v97 + 8));
LABEL_16:
    v102[0] = v97;
    v102[1] = v98;
    v103 = v99;
    aBlock = v95;
    v101 = v96;
    if (!*(&v96 + 1))
    {
      break;
    }

    v95 = aBlock;
    v96 = v101;
    *&v97 = *&v102[0];
    sub_23D4589B4((v102 + 8), v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAC88, &qword_23D46DCD8);
    if (swift_dynamicCast())
    {
      v20 = *&v92[0];
      sub_23D4589C4(&v95, v93);
      if (swift_dynamicCast())
      {
        v72 = v15;
        v21 = v92[0];
        type metadata accessor for SettingsAccessory();

        v22 = sub_23D45FBC4(v21, *(&v21 + 1), v20);
        v80 = *(&v21 + 1);
        v74 = v21;
        v23 = sub_23D458444(v21, *(&v21 + 1), v82);
        if (v24)
        {
          v23 = (*(*v22 + 424))(v23);
        }

        v73 = v22;
        v25 = (*(*v85 + 400))(v23);
        v26 = v25;
        if (v25 >> 62)
        {
          v27 = sub_23D46C0C8();
        }

        else
        {
          v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v4 = MEMORY[0x277D84F90];
        if (!v27)
        {

LABEL_54:

          MEMORY[0x23EEE0F60](v43);
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v46 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_23D46BEC8();
          }

          sub_23D46BED8();
          v14 = v105;

          MEMORY[0x23EEE0F60](v44);
          if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v47 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_23D46BEC8();
          }

          sub_23D46BED8();
          goto LABEL_59;
        }

        v28 = 0;
        v88 = v7;
        v89 = v26 & 0xC000000000000001;
        v84 = v26 & 0xFFFFFFFFFFFFFF8;
        v86 = v26;
        v87 = v27;
        while (2)
        {
          if (v89)
          {
            v29 = MEMORY[0x23EEE1110](v28, v26);
            v6 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_82;
            }
          }

          else
          {
            if (v28 >= *(v84 + 16))
            {
              goto LABEL_83;
            }

            v30 = *(v26 + 8 * v28 + 32);

            v6 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_82;
            }
          }

          v91 = v29;
          v31 = sub_23D46BDD8();
          if (*(v20 + 16))
          {
            v33 = sub_23D450300(v31, v32);
            v35 = v34;
            v26 = v86;

            if (v35)
            {
              sub_23D441268(*(v20 + 56) + 32 * v33, v93);
              if (swift_dynamicCast())
              {
                v81 = *(&v92[0] + 1);
                v36 = *&v92[0];
                if ((*(*v91 + 512))() == v74 && v37 == v80)
                {
                }

                else
                {
                  v39 = sub_23D46C1B8();

                  if ((v39 & 1) == 0)
                  {

                    v7 = v88;
                    goto LABEL_51;
                  }
                }

                if ((*(*v91 + 464))(v40) == v36 && v41 == v81)
                {

                  v7 = v88;
                  goto LABEL_62;
                }

                v42 = sub_23D46C1B8();

                v7 = v88;
                if (v42)
                {

LABEL_62:

                  (*(*v91 + 1568))(v73);

                  MEMORY[0x23EEE0F60](v45);
                  v14 = v83;
                  v4 = MEMORY[0x277D84F90];
                  v6 = MEMORY[0x277D84F70];
                  if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v48 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_23D46BEC8();
                  }

                  sub_23D46BED8();

LABEL_59:

                  sub_23D458A20(&v95);
                  v91 = v104;
                  v13 = v72;
                  goto LABEL_4;
                }

LABEL_51:
                v26 = v86;
LABEL_30:
                ++v28;
                if (v6 == v87)
                {

                  v4 = MEMORY[0x277D84F90];
                  v6 = MEMORY[0x277D84F70];
                  goto LABEL_54;
                }

                continue;
              }
            }
          }

          else
          {
          }

          break;
        }

        v7 = v88;
        goto LABEL_30;
      }

      sub_23D458A20(&v95);

      v13 = v15;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_23D458A20(&v95);
      v13 = v15;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  v50 = (*(*v85 + 400))(v49);
  v6 = v50;
  *&aBlock = v4;
  if (!(v50 >> 62))
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51)
    {
      goto LABEL_68;
    }

LABEL_85:
    v59 = MEMORY[0x277D84F90];
    goto LABEL_86;
  }

LABEL_84:
  v51 = sub_23D46C0C8();
  if (!v51)
  {
    goto LABEL_85;
  }

LABEL_68:
  v52 = 0;
  v89 = v6 & 0xFFFFFFFFFFFFFF8;
  v90 = v6 & 0xC000000000000001;
  while (2)
  {
    if (v90)
    {
      v54 = MEMORY[0x23EEE1110](v52, v6);
      v53 = v54;
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      goto LABEL_74;
    }

    if (v52 >= *(v89 + 16))
    {
      goto LABEL_81;
    }

    v53 = *(v6 + 8 * v52 + 32);

    v55 = v52 + 1;
    if (!__OFADD__(v52, 1))
    {
LABEL_74:
      *&v95 = v53;
      MEMORY[0x28223BE20](v54);
      v71[2] = &v95;
      v56 = v91;

      v57 = sub_23D457C3C(sub_23D458AD4, v71, v56);

      if (v57)
      {
        sub_23D46C078();
        v58 = *(aBlock + 16);
        sub_23D46C098();
        sub_23D46C0A8();
        sub_23D46C088();
      }

      else
      {
      }

      ++v52;
      if (v55 == v51)
      {
        goto LABEL_79;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_79:
  v59 = aBlock;
LABEL_86:

  v60 = v85;
  (*(*v85 + 408))(v59);
  v61 = (*(*v60 + 416))(&aBlock);
  sub_23D455D44(v83);
  v61(&aBlock, 0);
  sub_23D458B00(0, &qword_27E2DA780, 0x277D85C78);
  v62 = sub_23D46BF68();
  v63 = swift_allocObject();
  v65 = v76;
  v64 = v77;
  v63[2] = v76;
  v63[3] = v64;
  v66 = v78;
  v63[4] = v78;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_23D458AF4;
  *(v67 + 24) = v63;
  *&v102[0] = sub_23D43F238;
  *(&v102[0] + 1) = v67;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v101 = sub_23D43D1A8;
  *(&v101 + 1) = &block_descriptor_60;
  v68 = _Block_copy(&aBlock);
  sub_23D458060(v65);
  v69 = v66;

  dispatch_sync(v62, v68);

  _Block_release(v68);
  LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

  if (v62)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D455D44(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_23D46C0C8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_23D46C0C8();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_23D457B9C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_23D4580F8(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_23D455E34(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_23D46BD08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23D46BD38();
  v25 = *(v11 - 8);
  v26 = v11;
  v12 = *(v25 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    sub_23D458B00(0, &qword_27E2DAC90, 0x277D82BB8);
    sub_23D458B00(0, &qword_27E2DA780, 0x277D85C78);

    v15 = sub_23D46BF68();
    v16 = a3;
    v17 = v15;
    v24 = v16;
    v18 = sub_23D46BF98();

    if ((v18 & 1) == 0)
    {
      v20 = swift_allocObject();
      *(v20 + 16) = a1;
      *(v20 + 24) = a2;
      aBlock[4] = sub_23D43F238;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23D43C3E4;
      aBlock[3] = &block_descriptor_66;
      v23 = _Block_copy(aBlock);

      sub_23D46BD18();
      v27 = MEMORY[0x277D84F90];
      sub_23D458B58(&qword_27E2DA850, MEMORY[0x277D85198]);
      v22 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
      sub_23D43B810(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920);
      sub_23D46BFF8();
      v21 = v23;
      MEMORY[0x23EEE1040](0, v14, v10, v23);
      _Block_release(v21);
      sub_23D458B48(a1);
      (*(v7 + 8))(v10, v6);
      (*(v25 + 8))(v14, v26);
    }

    a1();
    sub_23D458B48(a1);
  }
}

void sub_23D456234()
{
  swift_getKeyPath();
  v1 = (*v0 + 480);
  v2 = *v1;
  (*v1)();

  if (!v0[3])
  {
    sub_23D453F7C([objc_allocWithZone(AUObserverXPC) init]);
  }

  swift_getKeyPath();
  v2();

  v3 = v0[3];
  if (v3)
  {
    v4 = v3;
    [v4 unregisterClient];
    [v4 stopMonitoring];
    if (v0[3])
    {
      KeyPath = swift_getKeyPath();
      v6 = MEMORY[0x28223BE20](KeyPath);
      (*(*v0 + 488))(v6, sub_23D4586D4);
    }

    else
    {
    }
  }

  swift_getKeyPath();
  v2();

  v7 = v0[6];
  v8 = *((*MEMORY[0x277D85000] & *v7) + 0xD8);
  v9 = v7;
  v8();
}

void sub_23D456444()
{
  sub_23D458B00(0, &qword_27E2DA780, 0x277D85C78);

  v1 = sub_23D46BF68();
  (*(*v0 + 440))(v1, sub_23D45870C, v0);
}

void sub_23D456508(uint64_t a1)
{
  swift_getKeyPath();
  v2 = (*a1 + 480);
  v3 = *v2;
  (*v2)();

  if (!*(a1 + 24))
  {
    sub_23D453F7C([objc_allocWithZone(AUObserverXPC) init]);
  }

  swift_getKeyPath();
  v3();

  v4 = *(a1 + 24);
  if (v4)
  {
    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 1;
      v5 = v4;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v12[2] = a1;
      v13 = 1;
      v7 = *(*a1 + 488);
      v8 = v4;
      v7(KeyPath, sub_23D458BF8, v12, MEMORY[0x277D84F78] + 8);
    }

    swift_getKeyPath();
    v3();

    [v4 registerClient_];
  }

  swift_getKeyPath();
  v3();

  v9 = *(a1 + 48);
  v10 = *((*MEMORY[0x277D85000] & *v9) + 0xD0);
  v11 = v9;
  v10();
}

void sub_23D456754(uint64_t a1)
{
  swift_getKeyPath();
  v3 = (*v1 + 480);
  v4 = *v3;
  (*v3)();

  if (!v1[3])
  {
    sub_23D453F7C([objc_allocWithZone(AUObserverXPC) init]);
  }

  swift_getKeyPath();
  v4();

  v5 = v1[3];
  if (v5)
  {
    v6 = *(*a1 + 464);
    v7 = v5;
    v6();
    v8 = sub_23D46BDC8();

    (*(*a1 + 608))(v9);
    v10 = sub_23D46BDC8();

    [v7 clearDropboxForModelNumber:v8 withFusing:v10];
  }
}

void sub_23D456908(uint64_t a1)
{
  swift_getKeyPath();
  v3 = (*v1 + 480);
  v4 = *v3;
  (*v3)();

  if (!v1[3])
  {
    sub_23D453F7C([objc_allocWithZone(AUObserverXPC) init]);
  }

  swift_getKeyPath();
  v4();

  v5 = v1[3];
  if (v5)
  {
    v6 = *(*a1 + 512);
    v7 = v5;
    v6();
    v8 = sub_23D46BDC8();

    [v7 settingsChangedForSerialNumber_];
  }

  swift_getKeyPath();
  v4();

  if (!v1[4])
  {
    sub_23D454220([objc_allocWithZone(MEMORY[0x277CE5458]) init]);
  }

  swift_getKeyPath();
  v4();

  v9 = v1[4];
  if (v9)
  {
    v10 = *(*a1 + 512);
    v11 = v9;
    v10();
    v12 = sub_23D46BDC8();

    [v11 settingsChangedForSerialNumber_];
  }
}

uint64_t sub_23D456B6C(uint64_t a1)
{
  v3 = sub_23D46BD08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23D46BD38();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2DB288 != -1)
  {
    swift_once();
  }

  v15[1] = qword_27E2DB290;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_23D458714;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D43C3E4;
  aBlock[3] = &block_descriptor_12;
  v13 = _Block_copy(aBlock);

  sub_23D46BD18();
  v17 = MEMORY[0x277D84F90];
  sub_23D458B58(&qword_27E2DA850, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
  sub_23D43B810(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920);
  sub_23D46BFF8();
  MEMORY[0x23EEE1040](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_23D456E70(uint64_t a1)
{
  v2 = sub_23D46BD08();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23D46BD38();
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D46BD58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = [objc_opt_self() sharedDatabase];
  (*(*a1 + 512))();
  v18 = sub_23D46BDC8();

  v20 = (*(*a1 + 1576))(v19);
  sub_23D45735C(v20);

  v21 = sub_23D46BD78();

  v29 = v17;
  [v17 addAccessoryWithSerialNumber:v18 info:v21];

  if (qword_27E2DB288 != -1)
  {
    swift_once();
  }

  v28 = qword_27E2DB290;
  sub_23D46BD48();
  sub_23D46BD68();
  v22 = *(v10 + 8);
  v22(v14, v9);
  aBlock[4] = sub_23D458928;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D43C3E4;
  aBlock[3] = &block_descriptor_49;
  v23 = _Block_copy(aBlock);

  sub_23D46BD18();
  v35 = MEMORY[0x277D84F90];
  sub_23D458B58(&qword_27E2DA850, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
  v24 = v9;
  sub_23D43B810(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920);
  v25 = v32;
  v26 = v34;
  sub_23D46BFF8();
  MEMORY[0x23EEE1010](v16, v8, v25, v23);
  _Block_release(v23);

  (*(v33 + 8))(v25, v26);
  (*(v30 + 8))(v8, v31);
  v22(v16, v24);
}

uint64_t sub_23D45735C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAC68, &qword_23D46DCD0);
    v2 = sub_23D46C0F8();
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
    sub_23D441268(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_23D4589B4(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_23D4589B4(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_23D4589B4(v32, v33);
    v17 = *(v2 + 40);
    result = sub_23D46C018();
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
    result = sub_23D4589B4(v33, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_23D457624(uint64_t a1)
{
  v2 = sub_23D46BD08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23D46BD38();
  v7 = *(v14 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v14);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2DB288 != -1)
  {
    swift_once();
  }

  v13[1] = qword_27E2DB290;
  aBlock[4] = sub_23D45871C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D43C3E4;
  aBlock[3] = &block_descriptor_15_0;
  v11 = _Block_copy(aBlock);

  sub_23D46BD18();
  v15 = MEMORY[0x277D84F90];
  sub_23D458B58(&qword_27E2DA850, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
  sub_23D43B810(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920);
  sub_23D46BFF8();
  MEMORY[0x23EEE1040](0, v10, v6, v11);
  _Block_release(v11);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v14);
}

uint64_t sub_23D457A50()
{
  v1 = *(v0 + 56);

  v2 = OBJC_IVAR____TtC19AUDeveloperSettings11AFUSettings___observationRegistrar;
  v3 = sub_23D46B868();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_23D457AD8()
{
  v1 = *(v0 + 56);

  v2 = OBJC_IVAR____TtC19AUDeveloperSettings11AFUSettings___observationRegistrar;
  v3 = sub_23D46B868();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_23D457B9C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_23D46C0C8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_23D46C058();
  *v1 = result;
  return result;
}

uint64_t sub_23D457C3C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x23EEE1110](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_23D46C0C8();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_23D457D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_23D46C0C8();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v17 = 0;
    return v17 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v17 = 1;
    return v17 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for SettingsAccessory();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_23D46C0C8();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEE1110](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v15 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          MEMORY[0x23EEE1110](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v16 = *(a2 + 8 * v12);

LABEL_25:
      sub_23D458B58(&qword_27E2DACA0, type metadata accessor for SettingsAccessory);
      v17 = sub_23D46BDB8();

      if (v17)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v17 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23D457F8C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
}

uint64_t type metadata accessor for AFUSettings()
{
  result = qword_27E2DB340;
  if (!qword_27E2DB340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D458060(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t (*sub_23D458070(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EEE1110](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_23D4580F0;
  }

  __break(1u);
  return result;
}

uint64_t sub_23D4580F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23D46C0C8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23D46C0C8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23D43B810(&qword_27E2DAC98, &qword_27E2DAC48, &unk_23D46DB20);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAC48, &unk_23D46DB20);
            v9 = sub_23D458070(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SettingsAccessory();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23D45829C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  type metadata accessor for SettingsAccessory();
  sub_23D458B58(&qword_27E2DACA0, type metadata accessor for SettingsAccessory);
  return sub_23D46BDB8() & 1;
}

uint64_t sub_23D45832C()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CBE030]) init];
  v10[0] = 0;
  v1 = [objc_opt_self() devicesWithDiscoveryFlags:0x800000 error:v10];
  v2 = v10[0];
  if (v1)
  {
    v3 = v1;
    sub_23D458B00(0, &qword_27E2DAC80, 0x277CBE020);
    v4 = sub_23D46BEB8();
    v5 = v2;
  }

  else
  {
    v6 = v10[0];
    v7 = sub_23D46B798();

    swift_willThrow();
    v4 = MEMORY[0x277D84F90];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_23D458444(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_30:
    v6 = sub_23D46C0C8();
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return 0;
    }
  }

  v7 = 0;
  v33 = a3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x23EEE1110](v7, a3);
    }

    else
    {
      if (v7 >= *(v33 + 16))
      {
        goto LABEL_29;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (!CBProductIDIsAirPods([v9 productID]))
    {
      goto LABEL_5;
    }

    v12 = [v10 serialNumberRight];
    if (v12)
    {
      break;
    }

LABEL_16:
    v18 = [v10 serialNumberLeft];
    if (v18)
    {
      v19 = v18;
      v20 = sub_23D46BDD8();
      v22 = v21;

      if (v20 == a1 && v22 == a2)
      {
        goto LABEL_23;
      }

      v23 = sub_23D46C1B8();

      if (v23)
      {
        goto LABEL_24;
      }
    }

    v24 = [v10 serialNumber];
    if (v24)
    {
      v25 = v24;
      v26 = sub_23D46BDD8();
      v28 = v27;

      if (v26 == a1 && v28 == a2)
      {
        goto LABEL_23;
      }

      v8 = sub_23D46C1B8();

      if (v8)
      {
        goto LABEL_24;
      }
    }

LABEL_5:

    ++v7;
    if (v11 == v6)
    {
      return 0;
    }
  }

  v13 = v12;
  v14 = sub_23D46BDD8();
  v16 = v15;

  if (v14 != a1 || v16 != a2)
  {
    v17 = sub_23D46C1B8();

    if (v17)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

LABEL_23:

LABEL_24:
  v29 = [v10 name];
  if (v29)
  {
    v30 = v29;
    v31 = sub_23D46BDD8();

    return v31;
  }

  return 0;
}

void sub_23D4586D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

void sub_23D45871C()
{
  v2 = [objc_opt_self() sharedDatabase];
  (*(*v0 + 512))();
  v1 = sub_23D46BDC8();

  [v2 removeAccessoryWithSerialNumber_];
}

uint64_t sub_23D4587E4()
{
  result = sub_23D46B868();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_23D4588A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

void sub_23D4588E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

uint64_t sub_23D458928()
{
  if (qword_27E2DB280 != -1)
  {
    swift_once();
  }

  return (*(*qword_27E2DBE08 + 472))();
}

_OWORD *sub_23D4589B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_23D458A74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

uint64_t sub_23D458B00(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_23D458B48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D458B58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D458C10()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[2];
}

uint64_t sub_23D458C94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t sub_23D458CE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 1616))(KeyPath, sub_23D4692B4, v6, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_23D458D98(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 1616))();
}

uint64_t sub_23D458E40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

uint64_t sub_23D458ED8()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  v1 = v0[3];
  v2 = v0[4];

  return v1;
}

uint64_t sub_23D458F4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D458FA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_23D458FE0(v2, v3);
}

uint64_t sub_23D458FE0(uint64_t a1, uint64_t a2)
{
  v5 = v2[3] == a1 && v2[4] == a2;
  if (v5 || (v6 = v2[4], (sub_23D46C1B8() & 1) != 0))
  {
    v2[3] = a1;
    v2[4] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D459120);
  }
}

uint64_t sub_23D459120()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 32);
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t sub_23D4591B0()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[5];
  v2 = v0[6];

  return v1;
}

uint64_t sub_23D459240@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D459294(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 424);

  return v4(v2, v3);
}

uint64_t sub_23D459304(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[5] == a1 && v2[6] == a2;
  if (v5 || (v6 = v2[6], (sub_23D46C1B8() & 1) != 0))
  {
    v2[5] = a1;
    v2[6] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D459438);
  }
}

uint64_t sub_23D459438()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 48);
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
}

void (*sub_23D4594A0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D459160();
  return sub_23D4595DC;
}

uint64_t type metadata accessor for SettingsAccessory()
{
  result = qword_27E2DBCC0;
  if (!qword_27E2DBCC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D459684()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[7];
  v2 = v0[8];

  return v1;
}

uint64_t sub_23D459714@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D459768(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 472);

  return v4(v2, v3);
}

uint64_t sub_23D4597D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[7] == a1 && v2[8] == a2;
  if (v5 || (v6 = v2[8], (sub_23D46C1B8() & 1) != 0))
  {
    v2[7] = a1;
    v2[8] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D45990C);
  }
}

uint64_t sub_23D45990C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 64);
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
}

void (*sub_23D459974(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D459634();
  return sub_23D459AB0;
}

uint64_t sub_23D459B0C()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[9];
  v2 = v0[10];

  return v1;
}

uint64_t sub_23D459B9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 512))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D459BF0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 520);

  return v4(v2, v3);
}

uint64_t sub_23D459C60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[9] == a1 && v2[10] == a2;
  if (v5 || (v6 = v2[10], (sub_23D46C1B8() & 1) != 0))
  {
    v2[9] = a1;
    v2[10] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D459D94);
  }
}

uint64_t sub_23D459D94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 80);
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
}

void (*sub_23D459DFC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D459ABC();
  return sub_23D459F38;
}

uint64_t sub_23D459F94()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[88];
}

uint64_t sub_23D45A014(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[88] == v2)
  {
    v1[88] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1616))(v5, sub_23D45A110);
  }

  return result;
}

void (*sub_23D45A128(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D459F44();
  return sub_23D45A264;
}

uint64_t sub_23D45A2C0()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[12];
  v2 = v0[13];

  return v1;
}

uint64_t sub_23D45A350@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 608))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45A3A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 616);

  return v4(v2, v3);
}

uint64_t sub_23D45A414(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[12] == a1 && v2[13] == a2;
  if (v5 || (v6 = v2[13], (sub_23D46C1B8() & 1) != 0))
  {
    v2[12] = a1;
    v2[13] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D45A548);
  }
}

uint64_t sub_23D45A548()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 104);
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
}

void (*sub_23D45A5B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45A270();
  return sub_23D45A6EC;
}

uint64_t sub_23D45A748()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[14];
  v2 = v0[15];

  return v1;
}

uint64_t sub_23D45A7D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 656))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45A82C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 664);

  return v4(v2, v3);
}

uint64_t sub_23D45A89C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[14] == a1 && v2[15] == a2;
  if (v5 || (v6 = v2[15], (sub_23D46C1B8() & 1) != 0))
  {
    v2[14] = a1;
    v2[15] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D45A9D0);
  }
}

uint64_t sub_23D45A9D0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 120);
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
}

void (*sub_23D45AA38(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45A6F8();
  return sub_23D45AB74;
}

uint64_t sub_23D45ABD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_23D45ABD8()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[16];
  v2 = v0[17];

  return v1;
}

uint64_t sub_23D45AC68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 704))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45ACBC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 712);

  return v4(v2, v3);
}

uint64_t sub_23D45AD2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[16] == a1 && v2[17] == a2;
  if (v5 || (v6 = v2[17], (sub_23D46C1B8() & 1) != 0))
  {
    v2[16] = a1;
    v2[17] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D45AE60);
  }
}

uint64_t sub_23D45AE60()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 136);
  *(v1 + 128) = v2;
  *(v1 + 136) = v3;
}

void (*sub_23D45AEC8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45AB80();
  return sub_23D45B004;
}

uint64_t sub_23D45B060()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[18];
  v2 = v0[19];

  return v1;
}

uint64_t sub_23D45B0F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 752))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45B144(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 760);

  return v4(v2, v3);
}

uint64_t sub_23D45B1B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[18] == a1 && v2[19] == a2;
  if (v5 || (v6 = v2[19], (sub_23D46C1B8() & 1) != 0))
  {
    v2[18] = a1;
    v2[19] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D45B2E8);
  }
}

uint64_t sub_23D45B2E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 152);
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
}

void (*sub_23D45B350(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45B010();
  return sub_23D45B48C;
}

uint64_t sub_23D45B4E8()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[20];
  v2 = v0[21];

  return v1;
}

uint64_t sub_23D45B578(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[20] == a1 && v2[21] == a2;
  if (v5 || (v6 = v2[21], (sub_23D46C1B8() & 1) != 0))
  {
    v2[20] = a1;
    v2[21] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D45B6AC);
  }
}

uint64_t sub_23D45B6AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 168);
  *(v1 + 160) = v2;
  *(v1 + 168) = v3;
}

void (*sub_23D45B714(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45B498();
  return sub_23D45B850;
}

uint64_t sub_23D45B8AC()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[22];
  v2 = v0[23];

  return v1;
}

uint64_t sub_23D45B93C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 848))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45B990(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 856);

  return v4(v2, v3);
}

uint64_t sub_23D45BA00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[22] == a1 && v2[23] == a2;
  if (v5 || (v6 = v2[23], (sub_23D46C1B8() & 1) != 0))
  {
    v2[22] = a1;
    v2[23] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D45BB34);
  }
}

uint64_t sub_23D45BB34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 184);
  *(v1 + 176) = v2;
  *(v1 + 184) = v3;
}

void (*sub_23D45BB9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45B85C();
  return sub_23D45BCD8;
}

uint64_t sub_23D45BD34()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[24];
  v2 = v0[25];

  return v1;
}

uint64_t sub_23D45BDC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 896))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45BE18(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 904);

  return v4(v2, v3);
}

uint64_t sub_23D45BE88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[24] == a1 && v2[25] == a2;
  if (v5 || (v6 = v2[25], (sub_23D46C1B8() & 1) != 0))
  {
    v2[24] = a1;
    v2[25] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D45BFBC);
  }
}

uint64_t sub_23D45BFBC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 200);
  *(v1 + 192) = v2;
  *(v1 + 200) = v3;
}

void (*sub_23D45C024(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45BCE4();
  return sub_23D45C160;
}

uint64_t sub_23D45C1BC()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[26];
  v2 = v0[27];

  return v1;
}

uint64_t sub_23D45C24C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[26] == a1 && v2[27] == a2;
  if (v5 || (v6 = v2[27], (sub_23D46C1B8() & 1) != 0))
  {
    v2[26] = a1;
    v2[27] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D45C380);
  }
}

uint64_t sub_23D45C380()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 216);
  *(v1 + 208) = v2;
  *(v1 + 216) = v3;
}

void (*sub_23D45C3E8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45C16C();
  return sub_23D45C524;
}

uint64_t sub_23D45C580()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[224];
}

uint64_t sub_23D45C600(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[224] == v2)
  {
    v1[224] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1616))(v5, sub_23D45C6FC);
  }

  return result;
}

void (*sub_23D45C714(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45C530();
  return sub_23D45C850;
}

uint64_t sub_23D45C8AC()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[29];
}

uint64_t sub_23D45C92C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1040))();
  *a2 = result;
  return result;
}

uint64_t sub_23D45C9D0(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[29] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 1616))(v5, sub_23D45CAC8);
  }

  return result;
}

uint64_t sub_23D45CAC8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 232) = v1;
  return result;
}

void (*sub_23D45CB18(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45C85C();
  return sub_23D45CC54;
}

uint64_t sub_23D45CCB0()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[240];
}

uint64_t sub_23D45CD30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1088))();
  *a2 = result;
  return result;
}

uint64_t sub_23D45CDD4(unsigned __int8 a1)
{
  result = swift_beginAccess();
  if (v1[240] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 1616))(v5, sub_23D45F36C);
  }

  return result;
}

void (*sub_23D45CED0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45CC60();
  return sub_23D45D00C;
}

uint64_t sub_23D45D068()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[31];
  v2 = v0[32];

  return v1;
}

uint64_t sub_23D45D0F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[31] == a1 && v2[32] == a2;
  if (v5 || (v6 = v2[32], (sub_23D46C1B8() & 1) != 0))
  {
    v2[31] = a1;
    v2[32] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D45F3C0);
  }
}

void (*sub_23D45D22C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45D018();
  return sub_23D45D368;
}

uint64_t sub_23D45D3C4()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[33];
  v2 = v0[34];

  return v1;
}

uint64_t sub_23D45D454@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45D4A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1192);

  return v4(v2, v3);
}

uint64_t sub_23D45D518(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[33] == a1 && v2[34] == a2;
  if (v5 || (v6 = v2[34], (sub_23D46C1B8() & 1) != 0))
  {
    v2[33] = a1;
    v2[34] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D45F428);
  }
}

void (*sub_23D45D64C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45D374();
  return sub_23D45D788;
}

uint64_t sub_23D45D7E4()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[280];
}

uint64_t sub_23D45D864@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1232))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D45D90C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[280] == v2)
  {
    v1[280] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1616))(v5, sub_23D45F490);
  }

  return result;
}

void (*sub_23D45DA08(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45D794();
  return sub_23D45DB44;
}

uint64_t sub_23D45DBA0()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[281];
}

uint64_t sub_23D45DC20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1280))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D45DCC8(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[281] == v2)
  {
    v1[281] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1616))(v5, sub_23D45F4A8);
  }

  return result;
}

void (*sub_23D45DDC4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45DB50();
  return sub_23D45DF00;
}

uint64_t sub_23D45DF5C()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[282];
}

uint64_t sub_23D45DFDC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[282] == v2)
  {
    v1[282] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1616))(v5, sub_23D45F4C0);
  }

  return result;
}

void (*sub_23D45E0D8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45DF0C();
  return sub_23D45E214;
}

uint64_t sub_23D45E270()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[36];
  v2 = v0[37];

  return v1;
}

uint64_t sub_23D45E300@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1376))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45E354(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1384);

  return v4(v2, v3);
}

uint64_t sub_23D45E3C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[36] == a1 && v2[37] == a2;
  if (v5 || (v6 = v2[37], (sub_23D46C1B8() & 1) != 0))
  {
    v2[36] = a1;
    v2[37] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D45F4D8);
  }
}

void (*sub_23D45E4F8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45E220();
  return sub_23D45E634;
}

double sub_23D45E6A4()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[38];
}

uint64_t sub_23D45E7C8(double a1)
{
  result = swift_beginAccess();
  if (v1[38] == a1)
  {
    v1[38] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    (*(*v1 + 1616))(v5, sub_23D45F540);
  }

  return result;
}

void (*sub_23D45E8CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45E64C();
  return sub_23D45EA08;
}

uint64_t sub_23D45EA64()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[39];
  v2 = v0[40];

  return v1;
}

uint64_t sub_23D45EAF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1472))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45EB48(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1480);

  return v4(v2, v3);
}

uint64_t sub_23D45EBB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[39] == a1 && v2[40] == a2;
  if (v5 || (v6 = v2[40], (sub_23D46C1B8() & 1) != 0))
  {
    v2[39] = a1;
    v2[40] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D45F594);
  }
}

void (*sub_23D45ECEC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45EA14();
  return sub_23D45EE28;
}

uint64_t sub_23D45EE84()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[41];
  v2 = v0[42];

  return v1;
}

uint64_t sub_23D45EF14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1520))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45EF68(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1528);

  return v4(v2, v3);
}

uint64_t sub_23D45EFD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[41] == a1 && v2[42] == a2;
  if (v5 || (v6 = v2[42], (sub_23D46C1B8() & 1) != 0))
  {
    v2[41] = a1;
    v2[42] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x28223BE20](KeyPath);
    v10 = v2;
    v11 = a1;
    v12 = a2;
    (*(*v2 + 1616))(v9, sub_23D45F5FC);
  }
}

void (*sub_23D45F10C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  v4[7] = sub_23D45EE34();
  return sub_23D45F248;
}

void sub_23D45F254(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_23D46B838();

  free(v1);
}

unint64_t sub_23D45F2E8(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t *sub_23D45F348@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_23D45F36C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 240) = v2;
  return result;
}

uint64_t sub_23D45F3C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 256);
  *(v1 + 248) = v2;
  *(v1 + 256) = v3;
}

uint64_t sub_23D45F428()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 272);
  *(v1 + 264) = v2;
  *(v1 + 272) = v3;
}

uint64_t sub_23D45F4D8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 296);
  *(v1 + 288) = v2;
  *(v1 + 296) = v3;
}

uint64_t sub_23D45F540()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 304) = v2;
  return result;
}

uint64_t sub_23D45F594()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 320);
  *(v1 + 312) = v2;
  *(v1 + 320) = v3;
}

uint64_t sub_23D45F5FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 336);
  *(v1 + 328) = v2;
  *(v1 + 336) = v3;
}

uint64_t sub_23D45F758(unsigned __int8 a1)
{
  sub_23D46C1E8();
  MEMORY[0x23EEE12C0](a1);
  return sub_23D46C228();
}

unint64_t sub_23D45F7AC(char a1)
{
  result = 0x754E6C6169726573;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0x6D754E6C65646F6DLL;
      break;
    case 3:
      result = 0x626173694461746FLL;
      break;
    case 4:
      result = 0x676E697375467768;
      break;
    case 5:
      result = 0x6556657669746361;
      break;
    case 6:
      result = 0x6973697665527768;
      break;
    case 7:
      result = 0x636F4C7465737361;
      break;
    case 8:
    case 13:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0x6E4573616C6C6170;
      break;
    case 12:
      result = 0x754173616C6C6170;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
    case 18:
      result = 0x73736572676F7270;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0x56786F62706F7264;
      break;
    case 21:
    case 23:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23D45FA84()
{
  v1 = *v0;
  sub_23D46C1E8();
  MEMORY[0x23EEE12C0](v1);
  return sub_23D46C228();
}

uint64_t sub_23D45FACC()
{
  v1 = *v0;
  sub_23D46C1E8();
  MEMORY[0x23EEE12C0](v1);
  return sub_23D46C228();
}

uint64_t sub_23D45FB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23D468238(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23D45FB4C(uint64_t a1)
{
  v2 = sub_23D468C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D45FB88(uint64_t a1)
{
  v2 = sub_23D468C14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D45FBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_23D45FC1C(a1, a2, a3);
  return v9;
}

uint64_t sub_23D45FC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0xE000000000000000;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0xE000000000000000;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0xE000000000000000;
  *(v3 + 88) = 0;
  v8 = (v3 + 88);
  *(v3 + 72) = 0;
  *(v3 + 80) = 0xE000000000000000;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0xE000000000000000;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0xE000000000000000;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0xE000000000000000;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0xE000000000000000;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0xE000000000000000;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0xE000000000000000;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0xE000000000000000;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0xE000000000000000;
  *(v3 + 224) = 0;
  v248 = (v3 + 224);
  *(v3 + 232) = 0;
  v247 = (v3 + 232);
  *(v3 + 240) = 0;
  v9 = (v3 + 240);
  *(v3 + 248) = 0;
  *(v3 + 256) = 0xE000000000000000;
  *(v3 + 264) = 0;
  *(v3 + 272) = 0xE000000000000000;
  *(v3 + 280) = 0;
  *(v3 + 282) = 0;
  *(v3 + 288) = 0;
  *(v3 + 296) = 0xE000000000000000;
  *(v3 + 304) = 0x3F847AE147AE147BLL;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0xE000000000000000;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0xE000000000000000;
  sub_23D46B858();
  *(v3 + 16) = a3;
  v249 = v3 + 16;
  v10 = *MEMORY[0x277CE5580];
  v11 = sub_23D46BDD8();
  v13 = v12;
  if (*(a3 + 16))
  {
    v14 = v11;

    v15 = sub_23D450300(v14, v13);
    v17 = v16;

    if (v17)
    {
      sub_23D441268(*(a3 + 56) + 32 * v15, v254);
      if (swift_dynamicCast())
      {
        sub_23D459304(v250, v251);
      }
    }
  }

  else
  {
  }

  v18 = *MEMORY[0x277CE5578];
  v19 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v21 = sub_23D450300(v19, v20);
    v23 = v22;

    if (v23)
    {
      sub_23D441268(*(a3 + 56) + 32 * v21, v254);
      if (swift_dynamicCast())
      {
        sub_23D4597D8(v250, v251);
      }
    }
  }

  else
  {
  }

  sub_23D459C60(a1, a2);
  v24 = *MEMORY[0x277CE5570];
  v25 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v27 = sub_23D450300(v25, v26);
    v29 = v28;

    if (v29)
    {
      sub_23D441268(*(a3 + 56) + 32 * v27, v254);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        if (v250 == *v8)
        {
          *v8 = v250;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          v31 = MEMORY[0x28223BE20](KeyPath);
          (*(*v4 + 1616))(v31, sub_23D46937C);
        }
      }
    }
  }

  else
  {
  }

  v32 = *MEMORY[0x277CE5560];
  v33 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v35 = sub_23D450300(v33, v34);
    v37 = v36;

    if (v37)
    {
      sub_23D441268(*(a3 + 56) + 32 * v35, v254);
      if (swift_dynamicCast())
      {
        sub_23D45A414(v250, v251);
      }
    }
  }

  else
  {
  }

  v38 = *MEMORY[0x277CE5528];
  v39 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v41 = sub_23D450300(v39, v40);
    v43 = v42;

    if (v43)
    {
      sub_23D441268(*(a3 + 56) + 32 * v41, v254);
      if (swift_dynamicCast())
      {
        sub_23D45A89C(v250, v251);
      }
    }
  }

  else
  {
  }

  v44 = *MEMORY[0x277CE5568];
  v45 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v47 = sub_23D450300(v45, v46);
    v49 = v48;

    if (v49)
    {
      sub_23D441268(*(a3 + 56) + 32 * v47, v254);
      if (swift_dynamicCast())
      {
        sub_23D45AD2C(v250, v251);
      }
    }
  }

  else
  {
  }

  v50 = *MEMORY[0x277CE55A8];
  v51 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v53 = sub_23D450300(v51, v52);
    v55 = v54;

    if (v55)
    {
      sub_23D441268(*(a3 + 56) + 32 * v53, v254);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DACA8, &qword_23D46E0F0);
      if (swift_dynamicCast())
      {
        *&v254[0] = v250;
        sub_23D468B18();
        v56 = sub_23D46BDA8();
        v58 = v57;

        sub_23D45BA00(v56, v58);
      }
    }
  }

  else
  {
  }

  v59 = *MEMORY[0x277CE5558];
  v60 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v62 = sub_23D450300(v60, v61);
    v64 = v63;

    if (v64)
    {
      sub_23D441268(*(a3 + 56) + 32 * v62, v254);
      if (swift_dynamicCast())
      {
        sub_23D45D518(v250, v251);
        v65 = sub_23D46BDD8();
        v67 = v66;
        memset(v254, 0, sizeof(v254));
        v68 = swift_getKeyPath();
        (*(*v4 + 1608))(v68);

        swift_getKeyPath();
        sub_23D468E50(&qword_27E2DA8E0);
        sub_23D46B848();

        swift_beginAccess();
        sub_23D461690(v254, v65, v67);
        swift_endAccess();
        v250 = v4;
        swift_getKeyPath();
        sub_23D46B838();
      }
    }
  }

  else
  {
  }

  v69 = *MEMORY[0x277CE5520];
  v70 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v72 = sub_23D450300(v70, v71);
    v74 = v73;

    if (v74)
    {
      sub_23D441268(*(a3 + 56) + 32 * v72, v254);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        if (v250 == v4[280])
        {
          v4[280] = v250;
        }

        else
        {
          v75 = swift_getKeyPath();
          v76 = MEMORY[0x28223BE20](v75);
          (*(*v4 + 1616))(v76, sub_23D469364);
        }
      }
    }
  }

  else
  {
  }

  v77 = *MEMORY[0x277CE5598];
  v78 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v80 = sub_23D450300(v78, v79);
    v82 = v81;

    if (v82)
    {
      sub_23D441268(*(a3 + 56) + 32 * v80, v254);
      if (swift_dynamicCast())
      {
        v83 = v250 ? 2 : 1;
        swift_beginAccess();
        if (*v9 != v83)
        {
          v84 = swift_getKeyPath();
          v85 = MEMORY[0x28223BE20](v84);
          (*(*v4 + 1616))(v85, sub_23D4692F8);
        }
      }
    }
  }

  else
  {
  }

  v86 = *MEMORY[0x277CE55A0];
  v87 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v89 = sub_23D450300(v87, v88);
    v91 = v90;

    if (v91)
    {
      sub_23D441268(*(a3 + 56) + 32 * v89, v254);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        if (v250 == *v248)
        {
          *v248 = v250;
        }

        else
        {
          v92 = swift_getKeyPath();
          v93 = MEMORY[0x28223BE20](v92);
          (*(*v4 + 1616))(v93, sub_23D46934C);
        }
      }
    }
  }

  else
  {
  }

  v94 = *MEMORY[0x277CE5588];
  v95 = sub_23D46BDD8();
  if (!*(a3 + 16))
  {
    goto LABEL_73;
  }

  v97 = sub_23D450300(v95, v96);
  v99 = v98;

  if ((v99 & 1) == 0)
  {
    goto LABEL_74;
  }

  sub_23D441268(*(a3 + 56) + 32 * v97, v254);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_74;
  }

  if ((v250 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    if (*v247 != v250)
    {
      v101 = swift_getKeyPath();
      v102 = MEMORY[0x28223BE20](v101);
      (*(*v4 + 1616))(v102, sub_23D4692E0);
    }

    v103 = *MEMORY[0x277CE5590];
    v104 = sub_23D46BDD8();
    if (*(a3 + 16))
    {
      v106 = sub_23D450300(v104, v105);
      v108 = v107;

      if (v108)
      {
        sub_23D441268(*(a3 + 56) + 32 * v106, v254);
        if (swift_dynamicCast())
        {
          sub_23D45D0F8(v250, v251);
        }
      }

LABEL_74:
      v109 = *MEMORY[0x277CE55B0];
      v110 = sub_23D46BDD8();
      if (*(a3 + 16))
      {
        v112 = sub_23D450300(v110, v111);
        v114 = v113;

        if (v114)
        {
          sub_23D441268(*(a3 + 56) + 32 * v112, v254);
          if (swift_dynamicCast())
          {
            swift_beginAccess();
            if (v250 == *(v249 + 265))
            {
              *(v249 + 265) = v250;
            }

            else
            {
              v115 = swift_getKeyPath();
              v116 = MEMORY[0x28223BE20](v115);
              (*(*v4 + 1616))(v116, sub_23D469334);
            }
          }
        }
      }

      else
      {
      }

      v117 = *MEMORY[0x277CE5540];
      v118 = sub_23D46BDD8();
      if (*(a3 + 16))
      {
        v120 = sub_23D450300(v118, v119);
        v122 = v121;

        if (v122)
        {
          sub_23D441268(*(a3 + 56) + 32 * v120, v254);
          if (swift_dynamicCast())
          {
            swift_beginAccess();
            if (v250 == v4[282])
            {
              v4[282] = v250;
            }

            else
            {
              v123 = swift_getKeyPath();
              v124 = MEMORY[0x28223BE20](v123);
              (*(*v4 + 1616))(v124, sub_23D46931C);
            }
          }
        }
      }

      else
      {
      }

      v125 = *MEMORY[0x277CE5530];
      v126 = sub_23D46BDD8();
      if (!*(a3 + 16))
      {
        goto LABEL_116;
      }

      v128 = sub_23D450300(v126, v127);
      v130 = v129;

      if ((v130 & 1) == 0)
      {
        goto LABEL_117;
      }

      sub_23D441268(*(a3 + 56) + 32 * v128, v254);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_117;
      }

      v131 = sub_23D45B1B4(v252, v253);
      v132 = *(*v4 + 752);
      v133 = v132(v131);
      v135 = v134;
      v136 = *MEMORY[0x277CE5498];
      if (v133 == sub_23D46BDD8() && v135 == v137)
      {

        goto LABEL_96;
      }

      v138 = sub_23D46C1B8();

      if (v138)
      {
LABEL_96:
        v140 = *MEMORY[0x277CE54A0];
        v141 = sub_23D46BDD8();
        sub_23D45B1B4(v141, v142);
        v143 = *MEMORY[0x277CE5550];
        v144 = sub_23D46BDD8();
        if (*(a3 + 16))
        {
          v146 = sub_23D450300(v144, v145);
          v148 = v147;

          if (v148)
          {
            sub_23D441268(*(a3 + 56) + 32 * v146, v254);
            if (swift_dynamicCast())
            {
              sub_23D45B578(v252, v253);
            }
          }
        }

        else
        {
        }

        v149 = *MEMORY[0x277CE5548];
        v150 = sub_23D46BDD8();
        if (*(a3 + 16))
        {
          v152 = sub_23D450300(v150, v151);
          v154 = v153;

          if (v154)
          {
            sub_23D441268(*(a3 + 56) + 32 * v152, v254);
            if (swift_dynamicCast())
            {
              *&v254[0] = (*(*v4 + 800))();
              *(&v254[0] + 1) = v155;

              MEMORY[0x23EEE0EE0]();

              v157 = *(&v254[0] + 1);
              v156 = *&v254[0];
LABEL_107:
              sub_23D45B578(v156, v157);
              goto LABEL_117;
            }
          }

          goto LABEL_117;
        }

LABEL_116:

        goto LABEL_117;
      }

      v158 = v132(v139);
      v160 = v159;
      v161 = *MEMORY[0x277CE54E0];
      if (v158 == sub_23D46BDD8() && v160 == v162)
      {
      }

      else
      {
        v163 = sub_23D46C1B8();

        if ((v163 & 1) == 0)
        {
          v228 = v132(v164);
          v230 = v229;
          v231 = *MEMORY[0x277CE5508];
          if (v228 == sub_23D46BDD8() && v230 == v232)
          {
          }

          else
          {
            v239 = sub_23D46C1B8();

            if ((v239 & 1) == 0)
            {
              goto LABEL_117;
            }
          }

          v240 = *MEMORY[0x277CE54B0];
          v241 = sub_23D46BDD8();
          sub_23D45B1B4(v241, v242);
          goto LABEL_117;
        }
      }

      v165 = *MEMORY[0x277CE5550];
      v166 = sub_23D46BDD8();
      if (!*(a3 + 16))
      {
        goto LABEL_116;
      }

      v168 = sub_23D450300(v166, v167);
      v170 = v169;

      if (v170)
      {
        sub_23D441268(*(a3 + 56) + 32 * v168, v254);
        if (swift_dynamicCast())
        {
          v156 = v252;
          v157 = v253;
          goto LABEL_107;
        }
      }

LABEL_117:
      v171 = *MEMORY[0x277CE55B8];
      v172 = sub_23D46BDD8();
      if (*(a3 + 16))
      {
        v174 = sub_23D450300(v172, v173);
        v176 = v175;

        if (v176)
        {
          sub_23D441268(*(a3 + 56) + 32 * v174, v254);
          if (swift_dynamicCast())
          {
            v177 = sub_23D45BE88(v252, v253);
            v178 = *(*v4 + 896);
            v179 = v178(v177);
            v181 = v180;
            v182 = *MEMORY[0x277CE5498];
            if (v179 == sub_23D46BDD8() && v181 == v183)
            {
            }

            else
            {
              v184 = sub_23D46C1B8();

              if ((v184 & 1) == 0)
              {
                v205 = v178(v185);
                v207 = v206;
                v208 = *MEMORY[0x277CE54E0];
                if (v205 == sub_23D46BDD8() && v207 == v209)
                {
                }

                else
                {
                  v210 = sub_23D46C1B8();

                  if ((v210 & 1) == 0)
                  {

                    v234 = v178(v233);
                    v236 = v235;
                    v237 = *MEMORY[0x277CE5508];
                    if (v234 == sub_23D46BDD8() && v236 == v238)
                    {
                    }

                    else
                    {
                      v243 = sub_23D46C1B8();

                      if ((v243 & 1) == 0)
                      {
                        goto LABEL_146;
                      }
                    }

                    v244 = *MEMORY[0x277CE54B0];
                    v245 = sub_23D46BDD8();
                    v201 = sub_23D45BE88(v245, v246);
                    goto LABEL_146;
                  }
                }

                v211 = *MEMORY[0x277CE55C8];
                v212 = sub_23D46BDD8();
                if (*(a3 + 16))
                {
                  v214 = sub_23D450300(v212, v213);
                  v216 = v215;

                  if (v216)
                  {
                    sub_23D441268(*(a3 + 56) + 32 * v214, v254);

                    v201 = swift_dynamicCast();
                    if ((v201 & 1) == 0)
                    {
                      goto LABEL_146;
                    }

                    v203 = v252;
                    v204 = v253;
                    goto LABEL_135;
                  }

LABEL_145:

                  goto LABEL_146;
                }

LABEL_144:

                goto LABEL_145;
              }
            }

            v186 = *MEMORY[0x277CE54A0];
            v187 = sub_23D46BDD8();
            sub_23D45BE88(v187, v188);
            v189 = *MEMORY[0x277CE55C8];
            v190 = sub_23D46BDD8();
            if (*(a3 + 16))
            {
              v192 = sub_23D450300(v190, v191);
              v194 = v193;

              if (v194)
              {
                sub_23D441268(*(a3 + 56) + 32 * v192, v254);
                if (swift_dynamicCast())
                {
                  sub_23D45C24C(v252, v253);
                }
              }
            }

            else
            {
            }

            v195 = *MEMORY[0x277CE55C0];
            v196 = sub_23D46BDD8();
            if (*(a3 + 16))
            {
              v198 = sub_23D450300(v196, v197);
              v200 = v199;

              if (v200)
              {
                sub_23D441268(*(a3 + 56) + 32 * v198, v254);

                v201 = swift_dynamicCast();
                if ((v201 & 1) == 0)
                {
LABEL_146:
                  v217 = (*v4 + 464);
                  v218 = *v217;
                  if ((*v217)(v201) != 0x3231353241 || v219 != 0xE500000000000000)
                  {
                    v220 = sub_23D46C1B8();

                    if (v220)
                    {
                      goto LABEL_150;
                    }

                    if (v218(v221) != 0x3331353241 || v226 != 0xE500000000000000)
                    {
                      v227 = sub_23D46C1B8();

                      if ((v227 & 1) == 0)
                      {
                        return v4;
                      }

                      goto LABEL_150;
                    }
                  }

LABEL_150:
                  v222 = [objc_opt_self() mainBundle];
                  v223 = sub_23D46B788();
                  v225 = v224;

                  strcpy(v254, "VoiceAssist ");
                  BYTE13(v254[0]) = 0;
                  HIWORD(v254[0]) = -5120;
                  MEMORY[0x23EEE0EE0](v223, v225);

                  sub_23D458FE0(*&v254[0], *(&v254[0] + 1));
                  return v4;
                }

                *&v254[0] = (*(*v4 + 944))();
                *(&v254[0] + 1) = v202;

                MEMORY[0x23EEE0EE0]();

                v204 = *(&v254[0] + 1);
                v203 = *&v254[0];
LABEL_135:
                v201 = sub_23D45C24C(v203, v204);
                goto LABEL_146;
              }

              goto LABEL_145;
            }

            goto LABEL_144;
          }
        }
      }

      else
      {
      }

      return v4;
    }

LABEL_73:

    goto LABEL_74;
  }

  __break(1u);
  return result;
}

uint64_t sub_23D461690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_23D4589B4(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_23D467ED8(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_23D46924C(a1);
    sub_23D4679CC(a2, a3, v10);

    return sub_23D46924C(v10);
  }

  return result;
}

uint64_t sub_23D461790(uint64_t a1)
{
  v3 = (*(*a1 + 320))();
  KeyPath = swift_getKeyPath();
  v50 = v1;
  v51 = v3;
  (*(*v1 + 1616))(KeyPath, sub_23D4692B4, &v49, MEMORY[0x277D84F78] + 8);

  v6 = (*(*a1 + 416))(v5);
  v7 = (*(*v1 + 424))(v6);
  v8 = (*(*a1 + 464))(v7);
  v9 = (*(*v1 + 472))(v8);
  v10 = (*(*a1 + 512))(v9);
  v11 = (*(*v1 + 520))(v10);
  v12 = (*(*a1 + 560))(v11);
  v13 = (*(*v1 + 568))(v12 & 1);
  v14 = (*(*a1 + 608))(v13);
  v15 = (*(*v1 + 616))(v14);
  v16 = (*(*a1 + 656))(v15);
  v17 = (*(*v1 + 664))(v16);
  v18 = (*(*a1 + 704))(v17);
  v19 = (*(*v1 + 712))(v18);
  v20 = (*(*a1 + 848))(v19);
  v21 = (*(*v1 + 856))(v20);
  v22 = (*(*a1 + 1184))(v21);
  v23 = (*(*v1 + 1192))(v22);
  v24 = (*(*a1 + 752))(v23);
  v25 = (*(*v1 + 760))(v24);
  v26 = (*(*a1 + 800))(v25);
  v27 = (*(*v1 + 808))(v26);
  v28 = (*(*a1 + 896))(v27);
  v29 = (*(*v1 + 904))(v28);
  v30 = (*(*a1 + 944))(v29);
  v31 = (*(*v1 + 952))(v30);
  v32 = (*(*a1 + 992))(v31);
  v33 = (*(*v1 + 1000))(v32 & 1);
  v34 = (*(*a1 + 1040))(v33);
  v35 = (*(*v1 + 1048))(v34);
  v36 = (*(*a1 + 1088))(v35);
  v37 = (*(*v1 + 1096))(v36);
  v38 = (*(*a1 + 1136))(v37);
  v39 = (*(*v1 + 1144))(v38);
  v40 = (*(*a1 + 368))(v39);
  v42 = sub_23D458FE0(v40, v41);
  v43 = (*(*a1 + 1232))(v42);
  v44 = (*(*v1 + 1240))(v43 & 1);
  v45 = (*(*a1 + 1280))(v44);
  v46 = (*(*v1 + 1288))(v45 & 1);
  v47 = (*(*a1 + 1328))(v46);
  return (*(*v1 + 1336))(v47 & 1);
}

uint64_t sub_23D462240()
{
  v1 = v0;
  v2 = *MEMORY[0x277CE5570];
  v3 = sub_23D46BDD8();
  v5 = v4;
  v6 = (*(*v0 + 560))();
  *(&v260 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v259) = v6 & 1;
  KeyPath = swift_getKeyPath();
  v258 = *(*v0 + 1608);
  (v258)(KeyPath);

  swift_getKeyPath();
  sub_23D468E50(&qword_27E2DA8E0);
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v259, v3, v5);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v8 = *MEMORY[0x277CE5588];
  v9 = sub_23D46BDD8();
  v257 = v10;
  v11 = (*(*v0 + 1040))();
  *(&v260 + 1) = MEMORY[0x277D83B88];
  *&v259 = v11;
  swift_getKeyPath();
  v258();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v259, v9, v257);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v12 = *MEMORY[0x277CE55A0];
  v13 = sub_23D46BDD8();
  v15 = v14;
  v16 = (*(*v0 + 992))();
  *(&v260 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v259) = v16 & 1;
  swift_getKeyPath();
  v258();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v259, v13, v15);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v18 = *(*v0 + 1088);
  if ((v18)(v17))
  {
    v19 = *MEMORY[0x277CE5598];
    v20 = sub_23D46BDD8();
    v22 = v21;
    v23 = v18();
    *(&v260 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v259) = v23 == 2;
    swift_getKeyPath();
    v258();

    swift_getKeyPath();
    sub_23D46B848();

    swift_beginAccess();
    sub_23D461690(&v259, v20, v22);
    swift_endAccess();
    swift_getKeyPath();
    sub_23D46B838();
  }

  v24 = *MEMORY[0x277CE5590];
  v25 = sub_23D46BDD8();
  v27 = v26;
  v28 = (*(*v0 + 1136))();
  *(&v260 + 1) = MEMORY[0x277D837D0];
  *&v259 = v28;
  *(&v259 + 1) = v29;
  swift_getKeyPath();
  v258();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v259, v25, v27);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v245 = *MEMORY[0x277CE5530];
  v251 = sub_23D46BDD8();
  v31 = v30;
  v32 = *(*v0 + 752);
  v33 = v32();
  *(&v260 + 1) = MEMORY[0x277D837D0];
  *&v259 = v33;
  *(&v259 + 1) = v34;
  swift_getKeyPath();
  v258();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v259, v251, v31);
  swift_endAccess();
  v35 = v32;
  swift_getKeyPath();
  sub_23D46B838();

  v37 = (v32)(v36);
  v39 = v38;
  v252 = *MEMORY[0x277CE54A0];
  if (v37 == sub_23D46BDD8() && v39 == v40)
  {

    goto LABEL_7;
  }

  v41 = sub_23D46C1B8();

  if (v41)
  {
LABEL_7:
    v43 = sub_23D46BDD8();
    v45 = v44;
    v46 = *MEMORY[0x277CE5498];
    v47 = sub_23D46BDD8();
    *(&v260 + 1) = MEMORY[0x277D837D0];
    *&v259 = v47;
    *(&v259 + 1) = v48;
    swift_getKeyPath();
    v49 = v258;
    v258();

    swift_getKeyPath();
    sub_23D46B848();

    swift_beginAccess();
    sub_23D461690(&v259, v43, v45);
    swift_endAccess();
    swift_getKeyPath();
    sub_23D46B838();

    v50 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v51 = sub_23D4678F0(0x5C28292B445C285ELL, 0xED0000292B535C64, 1);
    if (v51)
    {
      v52 = *(*v1 + 800);
      v53 = v51;
      v52();
      v54 = sub_23D46BDC8();

      v246 = v52;
      v56 = (v52)(v55);
      v57 = MEMORY[0x23EEE0F10](v56);

      v58 = [v53 firstMatchInString:v54 options:0 range:{0, v57}];

      if (v58)
      {
        v244 = v53;
        [v58 rangeAtIndex_];
        v59 = v52;
        v52();
        sub_23D46BF18();
        v61 = v60;

        if ((v61 & 1) == 0)
        {
          v62 = *MEMORY[0x277CE5550];
          v63 = sub_23D46BDD8();
          v241 = v64;
          v242 = v63;
          v52();
          v65 = sub_23D46BE58();
          v66 = v58;
          v68 = v67;
          v70 = v69;
          v72 = v71;

          *(&v260 + 1) = MEMORY[0x277D83E40];
          v73 = swift_allocObject();
          *&v259 = v73;
          v73[2] = v65;
          v73[3] = v68;
          v73[4] = v70;
          v73[5] = v72;
          swift_getKeyPath();
          v258();

          swift_getKeyPath();
          sub_23D46B848();

          swift_beginAccess();
          sub_23D461690(&v259, v242, v241);
          swift_endAccess();
          swift_getKeyPath();
          v58 = v66;
          v59 = v246;
          sub_23D46B838();
        }

        [v58 rangeAtIndex_];
        v59();
        sub_23D46BF18();
        v75 = v74;

        if (v75)
        {
        }

        else
        {
          v104 = *MEMORY[0x277CE5548];
          v247 = sub_23D46BDD8();
          v243 = v105;
          v59();
          v106 = sub_23D46BE58();
          v108 = v107;
          v110 = v109;
          v112 = v111;

          *(&v260 + 1) = MEMORY[0x277D83E40];
          v113 = swift_allocObject();
          *&v259 = v113;
          v113[2] = v106;
          v113[3] = v108;
          v113[4] = v110;
          v113[5] = v112;
          swift_getKeyPath();
          v258();

          swift_getKeyPath();
          sub_23D46B848();

          swift_beginAccess();
          sub_23D461690(&v259, v247, v243);
          swift_endAccess();
          swift_getKeyPath();
          sub_23D46B838();
        }
      }

      else
      {
      }
    }

    goto LABEL_29;
  }

  v76 = (v35)(v42);
  v78 = v77;
  v79 = *MEMORY[0x277CE54E0];
  v49 = v258;
  if (v76 != sub_23D46BDD8() || v78 != v80)
  {
    v81 = sub_23D46C1B8();

    if (v81)
    {
      goto LABEL_17;
    }

    v99 = (v35)(v82);
    v101 = v100;
    v102 = *MEMORY[0x277CE54B0];
    if (v99 == sub_23D46BDD8() && v101 == v103)
    {
    }

    else
    {
      v114 = sub_23D46C1B8();

      if ((v114 & 1) == 0)
      {
LABEL_28:
        v121 = *MEMORY[0x277CE5550];
        v122 = sub_23D46BDD8();
        v124 = v123;
        v259 = 0u;
        v260 = 0u;
        swift_getKeyPath();
        v258();

        swift_getKeyPath();
        sub_23D46B848();

        swift_beginAccess();
        sub_23D461690(&v259, v122, v124);
        swift_endAccess();
        swift_getKeyPath();
        sub_23D46B838();

        v125 = *MEMORY[0x277CE5548];
        v126 = sub_23D46BDD8();
        v128 = v127;
        v259 = 0u;
        v260 = 0u;
        swift_getKeyPath();
        v258();

        swift_getKeyPath();
        sub_23D46B848();

        swift_beginAccess();
        sub_23D461690(&v259, v126, v128);
        swift_endAccess();
        swift_getKeyPath();
        sub_23D46B838();

        goto LABEL_29;
      }
    }

    v115 = sub_23D46BDD8();
    v117 = v116;
    v118 = *MEMORY[0x277CE5508];
    v119 = sub_23D46BDD8();
    *(&v260 + 1) = MEMORY[0x277D837D0];
    *&v259 = v119;
    *(&v259 + 1) = v120;
    swift_getKeyPath();
    v258();

    swift_getKeyPath();
    sub_23D46B848();

    swift_beginAccess();
    sub_23D461690(&v259, v115, v117);
    swift_endAccess();
    swift_getKeyPath();
    sub_23D46B838();

    goto LABEL_28;
  }

LABEL_17:
  v83 = *MEMORY[0x277CE5550];
  v84 = sub_23D46BDD8();
  v86 = v85;
  v259 = 0u;
  v260 = 0u;
  swift_getKeyPath();
  v258();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v259, v84, v86);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v88 = *(*v1 + 800);
  (v88)(v87);
  v89 = sub_23D46BE08();

  if (v89 >= 1)
  {
    v90 = sub_23D46BDD8();
    v92 = v91;
    v93 = v88();
    *(&v260 + 1) = MEMORY[0x277D837D0];
    *&v259 = v93;
    *(&v259 + 1) = v94;
    swift_getKeyPath();
    v258();

    swift_getKeyPath();
    sub_23D46B848();

    swift_beginAccess();
    sub_23D461690(&v259, v90, v92);
    swift_endAccess();
    swift_getKeyPath();
    sub_23D46B838();
  }

  v95 = *MEMORY[0x277CE5548];
  v96 = sub_23D46BDD8();
  v98 = v97;
  v259 = 0u;
  v260 = 0u;
  swift_getKeyPath();
  v258();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v259, v96, v98);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v49 = v258;
LABEL_29:
  v129 = (*v1 + 896);
  v130 = *v129;
  if (!(*v129)(v51) && v131 == 0xE000000000000000)
  {

    goto LABEL_58;
  }

  v132 = sub_23D46C1B8();

  if (v132)
  {
    goto LABEL_58;
  }

  v248 = *MEMORY[0x277CE55B8];
  v133 = sub_23D46BDD8();
  v135 = v134;
  v136 = v130();
  *(&v260 + 1) = MEMORY[0x277D837D0];
  *&v259 = v136;
  *(&v259 + 1) = v137;
  swift_getKeyPath();
  v49();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v259, v133, v135);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v139 = (v130)(v138);
  v141 = v140;
  if (v139 == sub_23D46BDD8() && v141 == v142)
  {

    goto LABEL_37;
  }

  v143 = sub_23D46C1B8();

  if (v143)
  {
LABEL_37:
    v145 = sub_23D46BDD8();
    v147 = v146;
    v148 = *MEMORY[0x277CE5498];
    v149 = sub_23D46BDD8();
    *(&v260 + 1) = MEMORY[0x277D837D0];
    *&v259 = v149;
    *(&v259 + 1) = v150;
    swift_getKeyPath();
    v49 = v258;
    v258();

    swift_getKeyPath();
    sub_23D46B848();

    swift_beginAccess();
    sub_23D461690(&v259, v145, v147);
    swift_endAccess();
    swift_getKeyPath();
    sub_23D46B838();

    v151 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v152 = sub_23D4678F0(0x5C28292B445C285ELL, 0xED0000292B535C64, 1);
    if (v152)
    {
      v153 = *(*v1 + 944);
      v154 = v152;
      v153();
      v155 = sub_23D46BDC8();

      v157 = (v153)(v156);
      v158 = MEMORY[0x23EEE0F10](v157);

      v159 = [v154 firstMatchInString:v155 options:0 range:{0, v158}];

      if (v159)
      {
        v255 = v154;
        [v159 rangeAtIndex_];
        v160 = v153;
        v153();
        sub_23D46BF18();
        v162 = v161;

        if ((v162 & 1) == 0)
        {
          v163 = *MEMORY[0x277CE55C8];
          v164 = sub_23D46BDD8();
          v249 = v165;
          v253 = v164;
          v153();
          v166 = sub_23D46BE58();
          v168 = v167;
          v170 = v169;
          v172 = v171;

          *(&v260 + 1) = MEMORY[0x277D83E40];
          v173 = swift_allocObject();
          *&v259 = v173;
          v173[2] = v166;
          v173[3] = v168;
          v173[4] = v170;
          v173[5] = v172;
          swift_getKeyPath();
          v258();

          swift_getKeyPath();
          sub_23D46B848();

          swift_beginAccess();
          sub_23D461690(&v259, v253, v249);
          swift_endAccess();
          swift_getKeyPath();
          v49 = v258;
          sub_23D46B838();
        }

        [v159 rangeAtIndex_];
        v160();
        sub_23D46BF18();
        v175 = v174;

        if (v175)
        {
        }

        else
        {
          v203 = *MEMORY[0x277CE55C0];
          v204 = sub_23D46BDD8();
          v250 = v205;
          v254 = v204;
          v160();
          v206 = sub_23D46BE58();
          v208 = v207;
          v210 = v209;
          v212 = v211;

          *(&v260 + 1) = MEMORY[0x277D83E40];
          v213 = swift_allocObject();
          *&v259 = v213;
          v213[2] = v206;
          v213[3] = v208;
          v213[4] = v210;
          v213[5] = v212;
          swift_getKeyPath();
          v49();

          swift_getKeyPath();
          sub_23D46B848();

          swift_beginAccess();
          sub_23D461690(&v259, v254, v250);
          swift_endAccess();
          swift_getKeyPath();
          sub_23D46B838();
        }
      }

      else
      {
      }
    }

    goto LABEL_58;
  }

  v176 = (v130)(v144);
  v178 = v177;
  v179 = *MEMORY[0x277CE54E0];
  v49 = v258;
  if (v176 != sub_23D46BDD8() || v178 != v180)
  {
    v181 = sub_23D46C1B8();

    if (v181)
    {
      goto LABEL_47;
    }

    v198 = (v130)(v182);
    v200 = v199;
    v201 = *MEMORY[0x277CE54B0];
    if (v198 == sub_23D46BDD8() && v200 == v202)
    {
    }

    else
    {
      v214 = sub_23D46C1B8();

      if ((v214 & 1) == 0)
      {
LABEL_57:
        v221 = *MEMORY[0x277CE55C8];
        v222 = sub_23D46BDD8();
        v224 = v223;
        v259 = 0u;
        v260 = 0u;
        swift_getKeyPath();
        v258();

        swift_getKeyPath();
        sub_23D46B848();

        swift_beginAccess();
        sub_23D461690(&v259, v222, v224);
        swift_endAccess();
        swift_getKeyPath();
        sub_23D46B838();

        v225 = *MEMORY[0x277CE55C0];
        v226 = sub_23D46BDD8();
        v228 = v227;
        v259 = 0u;
        v260 = 0u;
        swift_getKeyPath();
        v258();

        swift_getKeyPath();
        sub_23D46B848();

        swift_beginAccess();
        sub_23D461690(&v259, v226, v228);
        swift_endAccess();
        swift_getKeyPath();
        sub_23D46B838();

        goto LABEL_58;
      }
    }

    v215 = sub_23D46BDD8();
    v217 = v216;
    v218 = *MEMORY[0x277CE5508];
    v219 = sub_23D46BDD8();
    *(&v260 + 1) = MEMORY[0x277D837D0];
    *&v259 = v219;
    *(&v259 + 1) = v220;
    swift_getKeyPath();
    v258();

    swift_getKeyPath();
    sub_23D46B848();

    swift_beginAccess();
    sub_23D461690(&v259, v215, v217);
    swift_endAccess();
    swift_getKeyPath();
    sub_23D46B838();

    goto LABEL_57;
  }

LABEL_47:
  v256 = *MEMORY[0x277CE55C8];
  v183 = sub_23D46BDD8();
  v185 = v184;
  v259 = 0u;
  v260 = 0u;
  swift_getKeyPath();
  v258();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v259, v183, v185);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v187 = *(*v1 + 944);
  (v187)(v186);
  v188 = sub_23D46BE08();

  if (v188 >= 1)
  {
    v189 = sub_23D46BDD8();
    v191 = v190;
    v192 = v187();
    *(&v260 + 1) = MEMORY[0x277D837D0];
    *&v259 = v192;
    *(&v259 + 1) = v193;
    swift_getKeyPath();
    v258();

    swift_getKeyPath();
    sub_23D46B848();

    swift_beginAccess();
    sub_23D461690(&v259, v189, v191);
    swift_endAccess();
    swift_getKeyPath();
    sub_23D46B838();
  }

  v194 = *MEMORY[0x277CE55C0];
  v195 = sub_23D46BDD8();
  v197 = v196;
  v259 = 0u;
  v260 = 0u;
  swift_getKeyPath();
  v258();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v259, v195, v197);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v49 = v258;
LABEL_58:
  v229 = *MEMORY[0x277CE55B0];
  v230 = sub_23D46BDD8();
  v232 = v231;
  v233 = (*(*v1 + 1280))();
  *(&v260 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v259) = v233 & 1;
  swift_getKeyPath();
  v49();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v259, v230, v232);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v234 = *MEMORY[0x277CE5540];
  v235 = sub_23D46BDD8();
  v237 = v236;
  v238 = (*(*v1 + 1328))();
  *(&v260 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v259) = v238 & 1;
  swift_getKeyPath();
  v49();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v259, v235, v237);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  return (*(*v1 + 320))(v239);
}

uint64_t sub_23D464648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7, double a8)
{
  v15 = (*v8 + 1376);
  v16 = *v15;
  v32 = (*v15)();
  v18 = v17;
  if (a5)
  {

    v19 = a6;
    v20 = a7;
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  (*(*v8 + 1384))(v19, v20);
  v21 = *(*v8 + 1480);

  v22 = v21(a1, a2);
  v23 = (*(*v8 + 1424))(v22);
  if ((a5 & 1) == 0)
  {
    if (v23 >= a8)
    {
      goto LABEL_24;
    }

    if (v32 != a6 || v18 != a7)
    {
      v29 = sub_23D46C1B8();

      if ((v29 & 1) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

LABEL_19:

LABEL_20:
    (*(*v8 + 1432))(result, a8);
    v31 = *(*v8 + 1528);

    return v31(a3, a4);
  }

  if (v23 < a8)
  {
    goto LABEL_19;
  }

  if (v32 != v16() || v18 != v24)
  {
    v26 = sub_23D46C1B8();

    if (v26)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_24:
}

uint64_t sub_23D464944(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DACB8, &qword_23D46E0F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D468C14();
  v11 = sub_23D46C248();
  (*(*v3 + 512))(v11);
  v37 = 0;
  sub_23D46C158();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    (*(*v3 + 416))(v12);
    v37 = 1;
    sub_23D46C158();

    (*(*v3 + 464))(v13);
    v37 = 2;
    sub_23D46C158();

    (*(*v3 + 560))(v14);
    v37 = 3;
    v15 = sub_23D46C168();
    (*(*v3 + 608))(v15);
    v37 = 4;
    sub_23D46C158();

    (*(*v3 + 656))(v17);
    v37 = 5;
    sub_23D46C158();

    (*(*v3 + 704))(v18);
    v37 = 6;
    sub_23D46C158();

    (*(*v3 + 752))(v19);
    v37 = 7;
    sub_23D46C158();

    (*(*v3 + 800))(v20);
    v37 = 8;
    sub_23D46C158();

    (*(*v3 + 848))(v21);
    v37 = 15;
    sub_23D46C158();

    (*(*v3 + 1472))(v22);
    v37 = 16;
    sub_23D46C158();

    (*(*v3 + 1520))(v23);
    v37 = 17;
    sub_23D46C158();

    (*(*v3 + 1424))(v24);
    v37 = 18;
    v25 = sub_23D46C178();
    (*(*v3 + 1376))(v25);
    v37 = 19;
    sub_23D46C158();

    (*(*v3 + 896))(v26);
    v37 = 9;
    sub_23D46C158();

    (*(*v3 + 944))(v27);
    v37 = 10;
    sub_23D46C158();

    (*(*v3 + 992))(v28);
    v37 = 11;
    v29 = sub_23D46C168();
    (*(*v3 + 1040))(v29);
    v37 = 12;
    v30 = sub_23D46C188();
    v37 = (*(*v3 + 1088))(v30);
    v36[14] = 13;
    sub_23D468C68();
    v31 = sub_23D46C198();
    (*(*v3 + 1136))(v31);
    v37 = 14;
    sub_23D46C158();

    (*(*v3 + 1184))(v32);
    v37 = 20;
    sub_23D46C158();

    (*(*v3 + 1232))(v33);
    v37 = 21;
    v34 = sub_23D46C168();
    (*(*v3 + 1280))(v34);
    v37 = 22;
    v35 = sub_23D46C168();
    (*(*v3 + 1328))(v35);
    v37 = 23;
    sub_23D46C168();
    return (*(v6 + 8))(v9, v5);
  }
}

void *sub_23D465358(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DACD0, &qword_23D46E100);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v229 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D468C14();
  sub_23D46C238();
  if (!v2)
  {
    LOBYTE(v239) = 0;
    v10 = sub_23D46C108();
    v235 = v1;
    v236 = v10;
    v237 = v11;
    LOBYTE(v239) = 1;
    v12 = sub_23D46C108();
    v14 = v13;
    v15 = *MEMORY[0x277CE5580];
    v16 = sub_23D46BDD8();
    v18 = v17;
    v240 = MEMORY[0x277D837D0];
    *&v239 = v12;
    *(&v239 + 1) = v14;
    sub_23D4589B4(&v239, v238);
    v19 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v241 = v19;
    sub_23D467ED8(v238, v16, v18, isUniquelyReferenced_nonNull_native);

    v21 = v241;
    LOBYTE(v239) = 2;
    v22 = sub_23D46C108();
    v24 = v23;
    v234 = v5;
    v25 = *MEMORY[0x277CE5578];
    v26 = sub_23D46BDD8();
    v28 = v27;
    v240 = MEMORY[0x277D837D0];
    *&v239 = v22;
    *(&v239 + 1) = v24;
    sub_23D4589B4(&v239, v238);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v241 = v21;
    sub_23D467ED8(v238, v26, v28, v29);

    v30 = v241;
    LOBYTE(v239) = 3;
    LOBYTE(v22) = sub_23D46C118();
    v31 = *MEMORY[0x277CE5570];
    v32 = sub_23D46BDD8();
    v34 = v33;
    v240 = MEMORY[0x277D839B0];
    LOBYTE(v239) = v22 & 1;
    sub_23D4589B4(&v239, v238);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v241 = v30;
    sub_23D467ED8(v238, v32, v34, v35);

    v36 = v241;
    LOBYTE(v239) = 4;
    v37 = sub_23D46C108();
    v39 = v38;
    v40 = *MEMORY[0x277CE5560];
    v41 = sub_23D46BDD8();
    v43 = v42;
    v240 = MEMORY[0x277D837D0];
    *&v239 = v37;
    *(&v239 + 1) = v39;
    sub_23D4589B4(&v239, v238);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v241 = v36;
    sub_23D467ED8(v238, v41, v43, v44);

    v45 = v241;
    LOBYTE(v239) = 5;
    v46 = sub_23D46C108();
    v48 = v47;
    v49 = *MEMORY[0x277CE5528];
    v50 = sub_23D46BDD8();
    v52 = v51;
    v240 = MEMORY[0x277D837D0];
    *&v239 = v46;
    *(&v239 + 1) = v48;
    sub_23D4589B4(&v239, v238);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v241 = v45;
    sub_23D467ED8(v238, v50, v52, v53);

    v54 = v241;
    LOBYTE(v239) = 6;
    v55 = sub_23D46C108();
    v57 = v56;
    v58 = *MEMORY[0x277CE5568];
    v59 = sub_23D46BDD8();
    v61 = v60;
    v240 = MEMORY[0x277D837D0];
    *&v239 = v55;
    *(&v239 + 1) = v57;
    sub_23D4589B4(&v239, v238);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v241 = v54;
    sub_23D467ED8(v238, v59, v61, v62);

    v63 = v241;
    LOBYTE(v239) = 11;
    LOBYTE(v55) = sub_23D46C118();
    v64 = *MEMORY[0x277CE55A0];
    v65 = sub_23D46BDD8();
    v67 = v66;
    v240 = MEMORY[0x277D839B0];
    LOBYTE(v239) = v55 & 1;
    sub_23D4589B4(&v239, v238);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v241 = v63;
    sub_23D467ED8(v238, v65, v67, v68);

    v69 = v241;
    LOBYTE(v239) = 12;
    v71 = sub_23D46C138();
    v72 = *MEMORY[0x277CE5588];
    v73 = sub_23D46BDD8();
    v75 = v74;
    v240 = MEMORY[0x277D83E88];
    *&v239 = v71;
    sub_23D4589B4(&v239, v238);
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v241 = v69;
    sub_23D467ED8(v238, v73, v75, v76);

    v77 = v241;
    LOBYTE(v238[0]) = 13;
    sub_23D468CBC();
    sub_23D46C148();
    LOBYTE(v71) = v239;
    v78 = *MEMORY[0x277CE5598];
    v79 = sub_23D46BDD8();
    v81 = v80;
    v240 = &type metadata for SettingsAccessory.SupportedSettingsAccessoryFeature;
    LOBYTE(v239) = v71;
    sub_23D4589B4(&v239, v238);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v241 = v77;
    sub_23D467ED8(v238, v79, v81, v82);

    v83 = v241;
    LOBYTE(v239) = 14;
    v84 = sub_23D46C108();
    v86 = v85;
    v87 = *MEMORY[0x277CE5590];
    v88 = sub_23D46BDD8();
    v90 = v89;
    v240 = MEMORY[0x277D837D0];
    *&v239 = v84;
    *(&v239 + 1) = v86;
    sub_23D4589B4(&v239, v238);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v241 = v83;
    sub_23D467ED8(v238, v88, v90, v91);

    v92 = v241;
    LOBYTE(v239) = 7;
    v93 = sub_23D46C108();
    v95 = v94;
    v96 = *MEMORY[0x277CE5530];
    v97 = sub_23D46BDD8();
    v99 = v98;
    v240 = MEMORY[0x277D837D0];
    *&v239 = v93;
    *(&v239 + 1) = v95;
    sub_23D4589B4(&v239, v238);
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v241 = v92;
    sub_23D467ED8(v238, v97, v99, v100);

    v101 = v241;
    LOBYTE(v239) = 8;
    *&v233 = sub_23D46C108();
    *(&v233 + 1) = v102;
    v103 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v104 = sub_23D4678F0(0x5C28292B445C285ELL, 0xED0000292B535C64, 1);
    if (v104)
    {
      v111 = v104;
      v112 = v233;
      v113 = sub_23D46BDC8();

      v114 = MEMORY[0x23EEE0F10](v112, *(&v112 + 1));

      v115 = [v111 firstMatchInString:v113 options:0 range:{0, v114}];
      v232 = v111;

      v231 = v115;
      if (v115)
      {
        [v231 rangeAtIndex_];
        sub_23D46BF18();
        if ((v116 & 1) == 0)
        {
          v117 = *MEMORY[0x277CE5550];
          v230 = sub_23D46BDD8();
          v119 = v118;
          v120 = sub_23D46BE58();
          v122 = v121;
          v229 = v123;
          v125 = v124;
          v240 = MEMORY[0x277D83E40];
          v126 = swift_allocObject();
          *&v239 = v126;
          v126[2] = v120;
          v126[3] = v122;
          v126[4] = v229;
          v126[5] = v125;
          sub_23D4589B4(&v239, v238);
          v127 = swift_isUniquelyReferenced_nonNull_native();
          v241 = v101;
          sub_23D467ED8(v238, v230, v119, v127);

          v101 = v241;
        }

        [v231 rangeAtIndex_];
        sub_23D46BF18();
        if (v128)
        {

          goto LABEL_7;
        }

        v157 = *MEMORY[0x277CE5548];
        v158 = sub_23D46BDD8();
        v229 = v159;
        v230 = v158;
        v160 = sub_23D46BE58();
        v162 = v161;
        v164 = v163;
        *&v233 = v165;

        v240 = MEMORY[0x277D83E40];
        v166 = swift_allocObject();
        *&v239 = v166;
        v166[2] = v160;
        v166[3] = v162;
        v167 = v233;
        v166[4] = v164;
        v166[5] = v167;
        sub_23D4589B4(&v239, v238);
        v168 = swift_isUniquelyReferenced_nonNull_native();
        v241 = v101;
        sub_23D467ED8(v238, v230, v229, v168);

        v110 = v231;
LABEL_6:

        v101 = v241;
LABEL_7:
        LOBYTE(v239) = 15;
        v129 = sub_23D46C108();
        v131 = v130;
        v132 = *MEMORY[0x277CE55A8];
        v133 = sub_23D46BDD8();
        v135 = v134;
        *&v239 = v129;
        *(&v239 + 1) = v131;
        *&v238[0] = 44;
        *(&v238[0] + 1) = 0xE100000000000000;
        sub_23D43B690();
        v136 = sub_23D46BFB8();

        v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DACA8, &qword_23D46E0F0);
        *&v239 = v136;
        sub_23D4589B4(&v239, v238);
        v137 = swift_isUniquelyReferenced_nonNull_native();
        v241 = v101;
        sub_23D467ED8(v238, v133, v135, v137);

        v138 = v241;
        LOBYTE(v239) = 9;
        v139 = sub_23D46C108();
        v141 = v140;
        v142 = *MEMORY[0x277CE55B8];
        v143 = sub_23D46BDD8();
        v145 = v144;
        v240 = MEMORY[0x277D837D0];
        *&v239 = v139;
        *(&v239 + 1) = v141;
        sub_23D4589B4(&v239, v238);
        v146 = swift_isUniquelyReferenced_nonNull_native();
        v241 = v138;
        sub_23D467ED8(v238, v143, v145, v146);

        v147 = v241;
        LOBYTE(v239) = 10;
        *&v233 = sub_23D46C108();
        *(&v233 + 1) = v148;
        v149 = objc_allocWithZone(MEMORY[0x277CCAC68]);
        v150 = sub_23D4678F0(0x5C28292B445C285ELL, 0xED0000292B535C64, 1);
        if (v150)
        {
          v169 = v150;
          v170 = v233;
          v171 = sub_23D46BDC8();

          v172 = MEMORY[0x23EEE0F10](v170, *(&v170 + 1));

          v173 = [v169 firstMatchInString:v171 options:0 range:{0, v172}];
          v232 = v169;

          v231 = v173;
          if (v173)
          {
            [v231 rangeAtIndex_];
            sub_23D46BF18();
            if ((v174 & 1) == 0)
            {
              v175 = *MEMORY[0x277CE55C8];
              v230 = sub_23D46BDD8();
              v177 = v176;
              v178 = sub_23D46BE58();
              v229 = v179;
              v181 = v180;
              v183 = v182;
              v240 = MEMORY[0x277D83E40];
              v184 = swift_allocObject();
              *&v239 = v184;
              v185 = v229;
              v184[2] = v178;
              v184[3] = v185;
              v184[4] = v181;
              v184[5] = v183;
              sub_23D4589B4(&v239, v238);
              v186 = swift_isUniquelyReferenced_nonNull_native();
              v241 = v147;
              sub_23D467ED8(v238, v230, v177, v186);

              v147 = v241;
            }

            [v231 rangeAtIndex_];
            sub_23D46BF18();
            if (v187)
            {

              goto LABEL_16;
            }

            v218 = *MEMORY[0x277CE55C0];
            v219 = sub_23D46BDD8();
            v229 = v220;
            v230 = v219;
            v221 = sub_23D46BE58();
            v223 = v222;
            *&v233 = v224;
            v226 = v225;

            v240 = MEMORY[0x277D83E40];
            v227 = swift_allocObject();
            *&v239 = v227;
            v227[2] = v221;
            v227[3] = v223;
            v227[4] = v233;
            v227[5] = v226;
            sub_23D4589B4(&v239, v238);
            v228 = swift_isUniquelyReferenced_nonNull_native();
            v241 = v147;
            sub_23D467ED8(v238, v230, v229, v228);

            v156 = v231;
LABEL_15:

            v147 = v241;
LABEL_16:
            LOBYTE(v239) = 20;
            v188 = sub_23D46C108();
            v190 = v189;
            v191 = *MEMORY[0x277CE5558];
            v192 = sub_23D46BDD8();
            v194 = v193;
            v240 = MEMORY[0x277D837D0];
            *&v239 = v188;
            *(&v239 + 1) = v190;
            sub_23D4589B4(&v239, v238);
            v195 = swift_isUniquelyReferenced_nonNull_native();
            v241 = v147;
            sub_23D467ED8(v238, v192, v194, v195);

            v196 = v241;
            LOBYTE(v239) = 21;
            LOBYTE(v188) = sub_23D46C118();
            v197 = *MEMORY[0x277CE5520];
            v198 = sub_23D46BDD8();
            v200 = v199;
            v240 = MEMORY[0x277D839B0];
            LOBYTE(v239) = v188 & 1;
            sub_23D4589B4(&v239, v238);
            v201 = swift_isUniquelyReferenced_nonNull_native();
            v241 = v196;
            sub_23D467ED8(v238, v198, v200, v201);

            v202 = v241;
            LOBYTE(v239) = 22;
            LOBYTE(v188) = sub_23D46C118();
            v203 = *MEMORY[0x277CE55B0];
            v204 = sub_23D46BDD8();
            v206 = v205;
            v240 = MEMORY[0x277D839B0];
            LOBYTE(v239) = v188 & 1;
            sub_23D4589B4(&v239, v238);
            v207 = swift_isUniquelyReferenced_nonNull_native();
            v241 = v202;
            sub_23D467ED8(v238, v204, v206, v207);

            v208 = v241;
            LOBYTE(v239) = 23;
            LOBYTE(v188) = sub_23D46C118();
            v209 = *MEMORY[0x277CE5540];
            v210 = sub_23D46BDD8();
            v212 = v211;
            v240 = MEMORY[0x277D839B0];
            LOBYTE(v239) = v188 & 1;
            sub_23D4589B4(&v239, v238);
            v213 = swift_isUniquelyReferenced_nonNull_native();
            v241 = v208;
            sub_23D467ED8(v238, v210, v212, v213);

            v5 = (*(v235 + 1544))(v236, v237, v241);
            LOBYTE(v239) = 16;
            v214 = sub_23D46C108();
            (*(*v5 + 1480))(v214);
            LOBYTE(v239) = 17;
            v215 = sub_23D46C108();
            (*(*v5 + 1528))(v215);
            LOBYTE(v239) = 18;
            v216 = sub_23D46C128();
            (*(*v5 + 1432))(v216);
            LOBYTE(v239) = 19;
            v217 = sub_23D46C108();
            (*(*v5 + 1384))(v217);
            (v234[1])(v8, v4);
            __swift_destroy_boxed_opaque_existential_0(a1);
            return v5;
          }
        }

        else
        {
          v232 = 0;
        }

        v151 = *MEMORY[0x277CE55C8];
        v152 = sub_23D46BDD8();
        v154 = v153;
        v240 = MEMORY[0x277D837D0];
        v239 = v233;
        sub_23D4589B4(&v239, v238);
        v155 = swift_isUniquelyReferenced_nonNull_native();
        v241 = v147;
        sub_23D467ED8(v238, v152, v154, v155);

        v156 = v232;
        goto LABEL_15;
      }
    }

    else
    {
      v232 = 0;
    }

    v105 = *MEMORY[0x277CE5550];
    v106 = sub_23D46BDD8();
    v108 = v107;
    v240 = MEMORY[0x277D837D0];
    v239 = v233;
    sub_23D4589B4(&v239, v238);
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v241 = v101;
    sub_23D467ED8(v238, v106, v108, v109);

    v110 = v232;
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

char *sub_23D466910()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 6);

  v4 = *(v0 + 8);

  v5 = *(v0 + 10);

  v6 = *(v0 + 13);

  v7 = *(v0 + 15);

  v8 = *(v0 + 17);

  v9 = *(v0 + 19);

  v10 = *(v0 + 21);

  v11 = *(v0 + 23);

  v12 = *(v0 + 25);

  v13 = *(v0 + 27);

  v14 = *(v0 + 32);

  v15 = *(v0 + 34);

  v16 = *(v0 + 37);

  v17 = *(v0 + 40);

  v18 = *(v0 + 42);

  v19 = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  v20 = sub_23D46B868();
  (*(*(v20 - 8) + 8))(&v0[v19], v20);
  return v0;
}

uint64_t sub_23D466A00()
{
  sub_23D466910();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23D466A58@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 1600))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_23D466AE0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 1560))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23D466B34()
{
  MEMORY[0x23EEE0EE0](60, 0xE100000000000000);
  v1 = *v0;
  v2 = sub_23D46C278();
  MEMORY[0x23EEE0EE0](v2);

  MEMORY[0x23EEE0EE0](40, 0xE100000000000000);
  sub_23D46C0B8();
  v3 = MEMORY[0x23EEE0EE0](14889, 0xE200000000000000);
  v4 = (*(*v0 + 416))(v3);
  MEMORY[0x23EEE0EE0](v4);

  MEMORY[0x23EEE0EE0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_23D466C90()
{
  (*(*v0 + 512))();
  sub_23D46BDF8();

  (*(*v0 + 416))(v1);
  sub_23D46BDF8();

  (*(*v0 + 464))(v2);
  sub_23D46BDF8();

  (*(*v0 + 560))(v3);
  v4 = sub_23D46C208();
  (*(*v0 + 608))(v4);
  sub_23D46BDF8();

  (*(*v0 + 656))(v5);
  sub_23D46BDF8();

  (*(*v0 + 704))(v6);
  sub_23D46BDF8();

  (*(*v0 + 752))(v7);
  sub_23D46BDF8();

  (*(*v0 + 800))(v8);
  sub_23D46BDF8();

  (*(*v0 + 896))(v9);
  sub_23D46BDF8();

  (*(*v0 + 944))(v10);
  sub_23D46BDF8();

  (*(*v0 + 992))(v11);
  v12 = sub_23D46C208();
  v13 = (*(*v0 + 1040))(v12);
  v14 = MEMORY[0x23EEE12C0](v13);
  v15 = (*(*v0 + 1088))(v14);
  v16 = MEMORY[0x23EEE12C0](v15);
  (*(*v0 + 1136))(v16);
  sub_23D46BDF8();

  (*(*v0 + 848))(v17);
  sub_23D46BDF8();

  (*(*v0 + 1472))(v18);
  sub_23D46BDF8();

  (*(*v0 + 1520))(v19);
  sub_23D46BDF8();

  v21 = (*(*v0 + 1424))(v20);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  v22 = MEMORY[0x23EEE12E0](*&v21);
  (*(*v0 + 1376))(v22);
  sub_23D46BDF8();

  (*(*v0 + 1184))(v23);
  sub_23D46BDF8();

  (*(*v0 + 1232))(v24);
  v25 = sub_23D46C208();
  (*(*v0 + 1280))(v25);
  v26 = sub_23D46C208();
  (*(*v0 + 1328))(v26);
  return sub_23D46C208();
}

uint64_t sub_23D4674B4(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 512))();
  v6 = v5;
  if (v4 == (*(*a2 + 512))() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_23D46C1B8();

    v11 = 0;
    if ((v9 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = (*(*a1 + 464))(v10);
  v14 = v13;
  if (v12 == (*(*a2 + 464))() && v14 == v15)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23D46C1B8();
  }

  return v11 & 1;
}

uint64_t sub_23D467658()
{
  sub_23D46C1E8();
  sub_23D466C90();
  return sub_23D46C228();
}

uint64_t sub_23D467698()
{
  v1 = *v0;
  sub_23D46C1E8();
  sub_23D466C90();
  return sub_23D46C228();
}

uint64_t sub_23D467700()
{
  sub_23D46C1E8();
  v1 = *v0;
  sub_23D466C90();
  return sub_23D46C228();
}

uint64_t sub_23D467740(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*(**a1 + 512))();
  v6 = v5;
  if (v4 == (*(*v3 + 512))() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_23D46C1B8();

    v11 = 0;
    if ((v9 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = (*(*v2 + 464))(v10);
  v14 = v13;
  if (v12 == (*(*v3 + 464))() && v14 == v15)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23D46C1B8();
  }

  return v11 & 1;
}

id sub_23D4678F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_23D46BDC8();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_23D46B798();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

double sub_23D4679CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23D450300(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23D468094();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_23D4589B4((*(v12 + 56) + 32 * v9), a3);
    sub_23D467D28(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_23D467A70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DACF8, "\b7");
  v36 = a2;
  result = sub_23D46C0E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_23D4589B4(v25, v37);
      }

      else
      {
        sub_23D441268(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_23D46C1E8();
      sub_23D46BDF8();
      result = sub_23D46C228();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_23D4589B4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_23D467D28(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23D46C008() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_23D46C1E8();

      sub_23D46BDF8();
      v14 = sub_23D46C228();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_23D467ED8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23D450300(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23D468094();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23D467A70(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_23D450300(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_23D46C1D8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_23D4589B4(a1, v23);
  }

  else
  {
    sub_23D468028(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_23D468028(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23D4589B4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_23D468094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DACF8, "\b7");
  v2 = *v0;
  v3 = sub_23D46C0D8();
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
        sub_23D441268(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23D4589B4(v25, (*(v4 + 56) + v22));
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

uint64_t sub_23D468238(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (sub_23D46C1B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_23D46C1B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E6C65646F6DLL && a2 == 0xEB00000000726562 || (sub_23D46C1B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x626173694461746FLL && a2 == 0xEB0000000064656CLL || (sub_23D46C1B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E697375467768 && a2 == 0xE800000000000000 || (sub_23D46C1B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6556657669746361 && a2 == 0xED00006E6F697372 || (sub_23D46C1B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6973697665527768 && a2 == 0xEA00000000006E6FLL || (sub_23D46C1B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x636F4C7465737361 && a2 == 0xED00006E6F697461 || (sub_23D46C1B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023D46F810 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x800000023D46F7F0 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000021 && 0x800000023D46F7C0 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E4573616C6C6170 && a2 == 0xED000064656C6261 || (sub_23D46C1B8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x754173616C6C6170 && a2 == 0xEE0065636E656964 || (sub_23D46C1B8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023D46F7A0 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023D46F780 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023D46F760 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEE00737574617453 || (sub_23D46C1B8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023D46F740 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEF746E6563726550 || (sub_23D46C1B8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023D46F720 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x56786F62706F7264 && a2 == 0xEE006E6F69737265 || (sub_23D46C1B8() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023D46F700 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023D46F6E0 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023D46F6C0 == a2)
  {

    return 23;
  }

  else
  {
    v6 = sub_23D46C1B8();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

uint64_t sub_23D4689C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 282) = v2;
  return result;
}

uint64_t sub_23D468A1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 281) = v2;
  return result;
}

uint64_t sub_23D468A70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 224) = v2;
  return result;
}

uint64_t sub_23D468AC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 280) = v2;
  return result;
}

unint64_t sub_23D468B18()
{
  result = qword_27E2DACB0;
  if (!qword_27E2DACB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DACA8, &qword_23D46E0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DACB0);
  }

  return result;
}

uint64_t sub_23D468B7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 88) = v2;
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

unint64_t sub_23D468C14()
{
  result = qword_27E2DACC0;
  if (!qword_27E2DACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DACC0);
  }

  return result;
}

unint64_t sub_23D468C68()
{
  result = qword_27E2DACC8;
  if (!qword_27E2DACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DACC8);
  }

  return result;
}

unint64_t sub_23D468CBC()
{
  result = qword_27E2DACD8;
  if (!qword_27E2DACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DACD8);
  }

  return result;
}

unint64_t sub_23D468D18()
{
  result = qword_27E2DACE0;
  if (!qword_27E2DACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DACE0);
  }

  return result;
}

unint64_t sub_23D468D70()
{
  result = qword_27E2DACE8;
  if (!qword_27E2DACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DACE8);
  }

  return result;
}

unint64_t sub_23D468DC8()
{
  result = qword_27E2DACF0;
  if (!qword_27E2DACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DACF0);
  }

  return result;
}

uint64_t sub_23D468E50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SettingsAccessory();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23D468E9C()
{
  result = sub_23D46B868();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsAccessory.SupportedSettingsAccessoryFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsAccessory.SupportedSettingsAccessoryFeature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsAccessory.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsAccessory.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23D46924C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA918, &qword_23D46D468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D4693A4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAD00, &qword_23D46E5D0);
  v7 = *(v6 - 8);
  if (a2)
  {
    v11 = *(v6 - 8);
    (*(v11 + 16))(a3, a1, v6);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a3, v8, 1, v6);
}

uint64_t sub_23D4694BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAD00, &qword_23D46E5D0);
  v7 = *(v6 - 8);
  if (v5 == 1)
  {
    v11 = *(v6 - 8);
    (*(v11 + 16))(a2, a1, v6);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a2, v8, 1, v6);
}

uint64_t getEnumTagSinglePayload for DetailModifier(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailModifier(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23D4696F8()
{
  result = qword_27E2DAD08;
  if (!qword_27E2DAD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAD10, &unk_23D46E668);
    sub_23D46977C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAD08);
  }

  return result;
}

unint64_t sub_23D46977C()
{
  result = qword_27E2DAD18;
  if (!qword_27E2DAD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAD00, &qword_23D46E5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAD18);
  }

  return result;
}

uint64_t sub_23D4697E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return v1;
}

void (*sub_23D469884(uint64_t *a1, uint64_t a2, char a3, uint64_t a4))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 32) = a4;
  *(v7 + 50) = a3 & 1;
  *v7 = a3 & 1;
  *(v7 + 8) = a4;

  *(v8 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return sub_23D444B8C;
}

uint64_t sub_23D469938()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBE8();
  return v1;
}

uint64_t sub_23D4699D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  v7 = type metadata accessor for AccessoryDetailView();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAD20, &unk_23D46E678);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v18 - v14;

  sub_23D444C60(v16, v10);
  sub_23D469CD0();
  sub_23D469D24();
  sub_23D46B8E8();
  v18[4] = a1;
  v19 = a2;
  v20 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA48, &qword_23D46D6D0);
  sub_23D43B810(&qword_27E2DAD38, &qword_27E2DAD20, &unk_23D46E678);
  sub_23D43B810(&qword_27E2DAB10, &qword_27E2DAA48, &qword_23D46D6D0);
  sub_23D46BB08();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_23D469C1C@<X0>(uint64_t *a1@<X8>)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_23D43AA70(v2);
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return result;
}

unint64_t sub_23D469CD0()
{
  result = qword_27E2DAD28;
  if (!qword_27E2DAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAD28);
  }

  return result;
}

unint64_t sub_23D469D24()
{
  result = qword_27E2DAD30;
  if (!qword_27E2DAD30)
  {
    type metadata accessor for AccessoryDetailView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAD30);
  }

  return result;
}

uint64_t sub_23D469D7C(uint64_t a1, char a2, uint64_t a3)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = [objc_opt_self() mainBundle];
  sub_23D46B788();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2 & 1;
  *(v7 + 32) = a3;
  sub_23D43B690();

  sub_23D46BC08();
}

uint64_t sub_23D469F2C@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = type metadata accessor for AccessoryDetailView();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAD20, &unk_23D46E678);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = v1[2];

  sub_23D444C60(v14, v5);
  sub_23D469CD0();
  sub_23D469D24();
  sub_23D46B8E8();
  v16[4] = v11;
  v17 = v12;
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA48, &qword_23D46D6D0);
  sub_23D43B810(&qword_27E2DAD38, &qword_27E2DAD20, &unk_23D46E678);
  sub_23D43B810(&qword_27E2DAB10, &qword_27E2DAA48, &qword_23D46D6D0);
  sub_23D46BB08();
  return (*(v7 + 8))(v10, v6);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23D46A188(uint64_t *a1, int a2)
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

uint64_t sub_23D46A1D0(uint64_t result, int a2, int a3)
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

uint64_t sub_23D46A220()
{
  v1 = *(v0 + 16);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AFUSettings();
  sub_23D457624(v1);
  v2 = *(**sub_23D45393C() + 456);

  v2(v3);
}

id sub_23D46A324(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AUInternalSettingsController();
  return objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1 & 1);
}

void sub_23D46A444()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = type metadata accessor for AUInternalSettingsController();
  objc_msgSendSuper2(&v39, sel_viewDidLoad);
  v2 = sub_23D46BDC8();
  [v1 setTitle_];

  v3 = *(**sub_23D45393C() + 456);

  v3(v4);

  sub_23D452EDC();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAD40, &qword_23D46E750));
  v6 = sub_23D46BA68();
  [v1 addChildViewController_];
  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v6 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  [v8 addSubview_];

  [v6 didMoveToParentViewController_];
  v11 = [v6 view];

  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAD48, &qword_23D46E758);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23D46E740;
  v13 = [v6 view];

  if (!v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = [v13 topAnchor];

  v15 = [v1 view];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v12 + 32) = v18;
  v19 = [v6 view];

  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = [v19 bottomAnchor];

  v21 = [v1 view];
  if (!v21)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = v21;
  v23 = [v21 bottomAnchor];

  v24 = [v20 constraintEqualToAnchor_];
  *(v12 + 40) = v24;
  v25 = [v6 view];

  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = [v25 leadingAnchor];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v27;
  v29 = [v27 leadingAnchor];

  v30 = [v26 constraintEqualToAnchor_];
  *(v12 + 48) = v30;
  v31 = [v6 view];

  if (!v31)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = [v31 trailingAnchor];

  v33 = [v1 view];
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 trailingAnchor];

    v37 = [v32 constraintEqualToAnchor_];
    *(v12 + 56) = v37;
    sub_23D46A940();
    v38 = sub_23D46BEA8();

    [v35 activateConstraints_];

    return;
  }

LABEL_23:
  __break(1u);
}

unint64_t sub_23D46A940()
{
  result = qword_27E2DAD50;
  if (!qword_27E2DAD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2DAD50);
  }

  return result;
}

id sub_23D46AA44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23D46BDC8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_23D46AABC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_23D46BDC8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AUInternalSettingsController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_23D46AC44(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_23D46AC88(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AUInternalSettingsController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_23D46ADD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUInternalSettingsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_27E2DBDE0 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_27E2DBDD4 > a2)
  {
    return 1;
  }

  if (dword_27E2DBDD4 < a2)
  {
    return 0;
  }

  return dword_27E2DBDD8 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27E2DBDE8 == -1)
  {
    if (qword_27E2DBDF0)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27E2DBDF0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27E2DBDE0 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27E2DBDD4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27E2DBDD4 >= a3)
      {
        result = dword_27E2DBDD8 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27E2DBDF0;
  if (qword_27E2DBDF0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E2DBDF0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EEE1540](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27E2DBDD4, &dword_27E2DBDD8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}