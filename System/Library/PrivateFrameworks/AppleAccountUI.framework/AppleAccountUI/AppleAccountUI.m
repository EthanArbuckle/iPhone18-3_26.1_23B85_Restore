id _AAUIPPSLogSystem()
{
  if (_AAUIPPSLogSystem_onceToken != -1)
  {
    _AAUIPPSLogSystem_cold_1();
  }

  v1 = _AAUIPPSLogSystem_log;

  return v1;
}

void sub_1C535899C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1C5358A5C()
{
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_1C5358B9C(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

uint64_t sub_1C5358BE0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDA0);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDA8);

  return a1;
}

uint64_t sub_1C5358C70(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDB0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C5358CD8()
{

  MEMORY[0x1E69E5920](*(v0 + 96));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5358D68()
{

  MEMORY[0x1E69E5920](*(v0 + 96));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5358DF8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDB0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BDD0) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

uint64_t sub_1C5358ED8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15BDD0);
  type metadata accessor for CGSize();
  sub_1C54117BC();
  sub_1C5411860();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5358F88()
{

  MEMORY[0x1E69E5920](*(v0 + 96));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5359018()
{

  MEMORY[0x1E69E5920](*(v0 + 96));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C53590A8()
{

  MEMORY[0x1E69E5920](*(v0 + 96));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5359138()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C53591C0()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E370) - 8) + 80);
  v4 = (v1 + 32) & ~v1;
  swift_unknownObjectRelease();
  v5 = sub_1C5594924();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1C53593BC(uint64_t a1)
{
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C300) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C308);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C340);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350);
      if (!swift_getEnumCaseMultiPayload())
      {

        v8 = a1 + v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358) + 36);

        v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360) + 28);
        v6 = sub_1C5595F34();
        (*(*(v6 - 8) + 8))(v9);
        v10 = a1 + v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368) + 48);
        sub_1C5412EA0(*(v10 + 24), *(v10 + 32), *(v10 + 40) & 1);

        if (*(v10 + 80))
        {
          sub_1C5412EA0(*(v10 + 56), *(v10 + 64), *(v10 + 72) & 1);
        }
      }
    }

    else
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
      (*(*(v4 - 8) + 8))();
      v11 = a1 + v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328) + 36);

      v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330) + 28);
      v5 = sub_1C5594FC4();
      (*(*(v5 - 8) + 8))(v12);
      v13 = a1 + v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348) + 48);
      if (*(v13 + 48))
      {
        sub_1C5412EA0(*(v13 + 24), *(v13 + 32), *(v13 + 40) & 1);
      }

      if (*(v13 + 80))
      {
        sub_1C5412EA0(*(v13 + 56), *(v13 + 64), *(v13 + 72) & 1);
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C310);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C338);
      (*(*(v3 - 8) + 8))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C268);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C258);
    }

    else
    {
      v14 = a1 + v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C318) + 48);
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
      (*(*(v1 - 8) + 8))(v14);
      v15 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328) + 36);

      v16 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330) + 28);
      v2 = sub_1C5594FC4();
      (*(*(v2 - 8) + 8))(v16);
    }
  }

  return a1;
}

uint64_t sub_1C535992C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C300) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C308);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C340);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy((a2 + v78), (a1 + v78), *(*(v42 - 8) + 64));
      }

      else
      {
        v28 = *(a1 + v78);

        *(a2 + v78) = v28;
        v29 = *(a1 + v78 + 8);

        *(a2 + v78 + 8) = v29;
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358);
        v31 = (a2 + v78 + *(v17 + 36));
        v32 = (a1 + v78 + *(v17 + 36));
        v30 = *v32;

        *v31 = v30;
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360);
        v34 = v31 + *(v18 + 28);
        v33 = v32 + *(v18 + 28);
        v19 = sub_1C5595F34();
        (*(*(v19 - 8) + 16))(v34, v33);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368);
        v39 = a2 + v78 + *(v35 + 48);
        v41 = a1 + v78 + *(v35 + 48);
        *v39 = *v41;
        *(v39 + 16) = *(v41 + 16);
        v36 = *(v41 + 24);
        v37 = *(v41 + 32);
        v38 = *(v41 + 40);
        sub_1C54130AC(v36, v37, v38 & 1);
        *(v39 + 24) = v36;
        *(v39 + 32) = v37;
        *(v39 + 40) = v38 & 1;
        v40 = *(v41 + 48);
        sub_1C5594CF4();
        *(v39 + 48) = v40;
        if (*(v41 + 80))
        {
          v24 = *(v41 + 56);
          v25 = *(v41 + 64);
          v26 = *(v41 + 72);
          sub_1C54130AC(v24, v25, v26 & 1);
          *(v39 + 56) = v24;
          *(v39 + 64) = v25;
          *(v39 + 72) = v26 & 1;
          v27 = *(v41 + 80);
          sub_1C5594CF4();
          *(v39 + 80) = v27;
        }

        else
        {
          *(v39 + 56) = *(v41 + 56);
          *(v39 + 72) = *(v41 + 72);
        }

        v20 = a2 + v78 + *(v35 + 64);
        v21 = a1 + v78 + *(v35 + 64);
        *v20 = *v21;
        *(v20 + 8) = *(v21 + 8);
        swift_storeEnumTagMultiPayload();
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
      (*(*(v11 - 8) + 16))();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328);
      v52 = (a2 + v78 + *(v12 + 36));
      v53 = (a1 + v78 + *(v12 + 36));
      v51 = *v53;

      *v52 = v51;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330);
      v55 = v52 + *(v13 + 28);
      v54 = v53 + *(v13 + 28);
      v14 = sub_1C5594FC4();
      (*(*(v14 - 8) + 16))(v55, v54);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348);
      v57 = a2 + v78 + *(v56 + 48);
      v58 = a1 + v78 + *(v56 + 48);
      *v57 = *v58;
      *(v57 + 16) = *(v58 + 16);
      if (*(v58 + 48))
      {
        v47 = *(v58 + 24);
        v48 = *(v58 + 32);
        v49 = *(v58 + 40);
        sub_1C54130AC(v47, v48, v49 & 1);
        *(v57 + 24) = v47;
        *(v57 + 32) = v48;
        *(v57 + 40) = v49 & 1;
        v50 = *(v58 + 48);
        sub_1C5594CF4();
        *(v57 + 48) = v50;
      }

      else
      {
        *(v57 + 24) = *(v58 + 24);
        *(v57 + 40) = *(v58 + 40);
      }

      if (*(v58 + 80))
      {
        v43 = *(v58 + 56);
        v44 = *(v58 + 64);
        v45 = *(v58 + 72);
        sub_1C54130AC(v43, v44, v45 & 1);
        *(v57 + 56) = v43;
        *(v57 + 64) = v44;
        *(v57 + 72) = v45 & 1;
        v46 = *(v58 + 80);
        sub_1C5594CF4();
        *(v57 + 80) = v46;
      }

      else
      {
        *(v57 + 56) = *(v58 + 56);
        *(v57 + 72) = *(v58 + 72);
      }

      v15 = a2 + v78 + *(v56 + 64);
      v16 = a1 + v78 + *(v56 + 64);
      *v15 = *v16;
      *(v15 + 8) = *(v16 + 8);
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C310);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C338);
      (*(*(v8 - 8) + 16))();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C268);
      v61 = (a2 + v78 + *(v9 + 36));
      v60 = (a1 + v78 + *(v9 + 36));
      v59 = *v60;

      *v61 = v59;
      v62 = v60[1];

      v61[1] = v62;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C258);
      v66 = (a2 + v78 + *(v10 + 36));
      v64 = (a1 + v78 + *(v10 + 36));
      v63 = *v64;

      *v66 = v63;
      v65 = v64[1];
      v67 = v64[2];

      v66[1] = v65;
      v66[2] = v67;
    }

    else
    {
      v76 = a2 + v78;
      *v76 = *(a1 + v78);
      *(v76 + 8) = *(a1 + v78 + 8);
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C318);
      v68 = a2 + v78 + *(v75 + 48);
      v69 = a1 + v78 + *(v75 + 48);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
      (*(*(v2 - 8) + 16))(v68, v69);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328);
      v71 = (v68 + *(v3 + 36));
      v72 = (v69 + *(v3 + 36));
      v70 = *v72;

      *v71 = v70;
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330);
      v74 = v71 + *(v4 + 28);
      v73 = v72 + *(v4 + 28);
      v5 = sub_1C5594FC4();
      (*(*(v5 - 8) + 16))(v74, v73);
      v6 = *(v75 + 64);
      v7 = a2 + v78 + v6;
      *v7 = *(a1 + v78 + v6);
      *(v7 + 8) = *(a1 + v78 + v6 + 8);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C218);
  memcpy((a2 + *(v22 + 36)), (a1 + *(v22 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1C535A3A0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_1C5596384();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20) + 8) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20) + 8);
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1C535A4BC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_1C5596384();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C535A5C8()
{
  type metadata accessor for SoftwareUpdateRowElement();
  v0 = sub_1C5596384();
  (*(*(v0 - 8) + 8))();

  return swift_deallocObject();
}

_BYTE *sub_1C535A790(_BYTE *a1, _BYTE *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C308);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C340);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a2, a1, *(*(v30 - 8) + 64));
      }

      else
      {
        *a2 = *a1;
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358);
        v25 = &a2[*(v19 + 36)];
        v26 = &a1[*(v19 + 36)];
        *v25 = *v26;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360);
        v28 = v25 + *(v20 + 28);
        v27 = v26 + *(v20 + 28);
        v21 = sub_1C5595F34();
        (*(*(v21 - 8) + 32))(v28, v27);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368);
        memcpy(&a2[*(v29 + 48)], &a1[*(v29 + 48)], 0x58uLL);
        v22 = &a2[*(v29 + 64)];
        v23 = &a1[*(v29 + 64)];
        *v22 = *v23;
        v22[8] = v23[8];
        swift_storeEnumTagMultiPayload();
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
      (*(*(v13 - 8) + 32))(a2, a1);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328);
      v31 = &a2[*(v14 + 36)];
      v32 = &a1[*(v14 + 36)];
      *v31 = *v32;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330);
      v34 = v31 + *(v15 + 28);
      v33 = v32 + *(v15 + 28);
      v16 = sub_1C5594FC4();
      (*(*(v16 - 8) + 32))(v34, v33);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348);
      memcpy(&a2[*(v35 + 48)], &a1[*(v35 + 48)], 0x58uLL);
      v17 = &a2[*(v35 + 64)];
      v18 = &a1[*(v35 + 64)];
      *v17 = *v18;
      v17[8] = v18[8];
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C310);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C338);
      (*(*(v8 - 8) + 32))(a2, a1);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C268);
      *&a2[*(v9 + 36)] = *&a1[*(v9 + 36)];
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C258);
      v11 = &a2[*(v10 + 36)];
      v12 = &a1[*(v10 + 36)];
      *v11 = *v12;
      *(v11 + 2) = *(v12 + 2);
    }

    else
    {
      *a2 = *a1;
      a2[8] = a1[8];
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C318);
      v36 = &a2[*(v42 + 48)];
      v37 = &a1[*(v42 + 48)];
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
      (*(*(v2 - 8) + 32))(v36, v37);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328);
      v38 = &v36[*(v3 + 36)];
      v39 = &v37[*(v3 + 36)];
      *v38 = *v39;
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330);
      v41 = v38 + *(v4 + 28);
      v40 = v39 + *(v4 + 28);
      v5 = sub_1C5594FC4();
      (*(*(v5 - 8) + 32))(v41, v40);
      v6 = *(v42 + 64);
      v7 = &a2[v6];
      *v7 = *&a1[v6];
      v7[8] = a1[v6 + 8];
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t *sub_1C535ADD8(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C308);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C340);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(a2, a1, *(*(v41 - 8) + 64));
      }

      else
      {
        v27 = *a1;

        *a2 = v27;
        v28 = a1[1];

        a2[1] = v28;
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358);
        v30 = (a2 + *(v17 + 36));
        v31 = (a1 + *(v17 + 36));
        v29 = *v31;

        *v30 = v29;
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360);
        v33 = v30 + *(v18 + 28);
        v32 = v31 + *(v18 + 28);
        v19 = sub_1C5595F34();
        (*(*(v19 - 8) + 16))(v33, v32);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368);
        v38 = a2 + *(v34 + 48);
        v40 = a1 + *(v34 + 48);
        *v38 = *v40;
        v38[16] = v40[16];
        v35 = *(v40 + 3);
        v36 = *(v40 + 4);
        v37 = v40[40];
        sub_1C54130AC(v35, v36, v37 & 1);
        *(v38 + 3) = v35;
        *(v38 + 4) = v36;
        v38[40] = v37 & 1;
        v39 = *(v40 + 6);
        sub_1C5594CF4();
        *(v38 + 6) = v39;
        if (*(v40 + 10))
        {
          v23 = *(v40 + 7);
          v24 = *(v40 + 8);
          v25 = v40[72];
          sub_1C54130AC(v23, v24, v25 & 1);
          *(v38 + 7) = v23;
          *(v38 + 8) = v24;
          v38[72] = v25 & 1;
          v26 = *(v40 + 10);
          sub_1C5594CF4();
          *(v38 + 10) = v26;
        }

        else
        {
          *(v38 + 56) = *(v40 + 56);
          *(v38 + 72) = *(v40 + 72);
        }

        v20 = a2 + *(v34 + 64);
        v21 = a1 + *(v34 + 64);
        *v20 = *v21;
        v20[8] = v21[8];
        swift_storeEnumTagMultiPayload();
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
      (*(*(v11 - 8) + 16))(a2, a1);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328);
      v51 = (a2 + *(v12 + 36));
      v52 = (a1 + *(v12 + 36));
      v50 = *v52;

      *v51 = v50;
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330);
      v54 = v51 + *(v13 + 28);
      v53 = v52 + *(v13 + 28);
      v14 = sub_1C5594FC4();
      (*(*(v14 - 8) + 16))(v54, v53);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348);
      v56 = a2 + *(v55 + 48);
      v57 = a1 + *(v55 + 48);
      *v56 = *v57;
      v56[16] = v57[16];
      if (*(v57 + 6))
      {
        v46 = *(v57 + 3);
        v47 = *(v57 + 4);
        v48 = v57[40];
        sub_1C54130AC(v46, v47, v48 & 1);
        *(v56 + 3) = v46;
        *(v56 + 4) = v47;
        v56[40] = v48 & 1;
        v49 = *(v57 + 6);
        sub_1C5594CF4();
        *(v56 + 6) = v49;
      }

      else
      {
        *(v56 + 24) = *(v57 + 24);
        *(v56 + 40) = *(v57 + 40);
      }

      if (*(v57 + 10))
      {
        v42 = *(v57 + 7);
        v43 = *(v57 + 8);
        v44 = v57[72];
        sub_1C54130AC(v42, v43, v44 & 1);
        *(v56 + 7) = v42;
        *(v56 + 8) = v43;
        v56[72] = v44 & 1;
        v45 = *(v57 + 10);
        sub_1C5594CF4();
        *(v56 + 10) = v45;
      }

      else
      {
        *(v56 + 56) = *(v57 + 56);
        *(v56 + 72) = *(v57 + 72);
      }

      v15 = *(v55 + 64);
      v16 = a2 + v15;
      *v16 = *(a1 + v15);
      v16[8] = *(a1 + v15 + 8);
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C310);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C338);
      (*(*(v8 - 8) + 16))(a2, a1);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C268);
      v60 = (a2 + *(v9 + 36));
      v59 = (a1 + *(v9 + 36));
      v58 = *v59;

      *v60 = v58;
      v61 = v59[1];

      v60[1] = v61;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C258);
      v65 = (a2 + *(v10 + 36));
      v63 = (a1 + *(v10 + 36));
      v62 = *v63;

      *v65 = v62;
      v64 = v63[1];
      v66 = v63[2];

      v65[1] = v64;
      v65[2] = v66;
    }

    else
    {
      *a2 = *a1;
      *(a2 + 8) = *(a1 + 8);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C318);
      v67 = a2 + *(v74 + 48);
      v68 = a1 + *(v74 + 48);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
      (*(*(v2 - 8) + 16))(v67, v68);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328);
      v70 = &v67[*(v3 + 36)];
      v71 = &v68[*(v3 + 36)];
      v69 = *v71;

      *v70 = v69;
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330);
      v73 = &v70[*(v4 + 28)];
      v72 = &v71[*(v4 + 28)];
      v5 = sub_1C5594FC4();
      (*(*(v5 - 8) + 16))(v73, v72);
      v6 = *(v74 + 64);
      v7 = a2 + v6;
      *v7 = *(a1 + v6);
      v7[8] = *(a1 + v6 + 8);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1C535B71C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C308);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C340);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C350);
      if (!swift_getEnumCaseMultiPayload())
      {

        v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C358) + 36);

        v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360) + 28);
        v6 = sub_1C5595F34();
        (*(*(v6 - 8) + 8))(v9);
        v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C368) + 48);
        sub_1C5412EA0(*(v10 + 24), *(v10 + 32), *(v10 + 40) & 1);

        if (*(v10 + 80))
        {
          sub_1C5412EA0(*(v10 + 56), *(v10 + 64), *(v10 + 72) & 1);
        }
      }
    }

    else
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
      (*(*(v4 - 8) + 8))(a1);
      v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328) + 36);

      v12 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330) + 28);
      v5 = sub_1C5594FC4();
      (*(*(v5 - 8) + 8))(v12);
      v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C348) + 48);
      if (*(v13 + 48))
      {
        sub_1C5412EA0(*(v13 + 24), *(v13 + 32), *(v13 + 40) & 1);
      }

      if (*(v13 + 80))
      {
        sub_1C5412EA0(*(v13 + 56), *(v13 + 64), *(v13 + 72) & 1);
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C310);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C338);
      (*(*(v3 - 8) + 8))(a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C268);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C258);
    }

    else
    {
      v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C318) + 48);
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
      (*(*(v1 - 8) + 8))(v14);
      v15 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328) + 36);

      v16 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330) + 28);
      v2 = sub_1C5594FC4();
      (*(*(v2 - 8) + 8))(v16);
    }
  }

  return a1;
}

uint64_t sub_1C535BC24(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C338);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C268);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C258);

  return a1;
}

uint64_t sub_1C535BD04(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C338);
  (*(*(v2 - 8) + 16))(a2, a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C268) + 36);
  v5 = *(a1 + v4);

  *(a2 + v4) = v5;
  v6 = *(a1 + v4 + 8);

  *(a2 + v4 + 8) = v6;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C258) + 36);
  v9 = *(a1 + v8);

  v12 = a2 + v8;
  *(a2 + v8) = v9;
  v11 = *(a1 + v8 + 8);
  v13 = *(a1 + v8 + 16);

  result = a2;
  *(v12 + 8) = v11;
  *(v12 + 16) = v13;
  return result;
}

uint64_t sub_1C535BE64(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C338);
    (*(*(v8 - 8) + 32))(a2, a1);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C268);
    *(a2 + *(v9 + 36)) = *(a1 + *(v9 + 36));
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C258);
    v11 = a2 + *(v10 + 36);
    v12 = a1 + *(v10 + 36);
    *v11 = *v12;
    *(v11 + 16) = *(v12 + 16);
  }

  else
  {
    *a2 = *a1;
    *(a2 + 8) = *(a1 + 8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C318);
    v14 = a2 + *(v20 + 48);
    v15 = a1 + *(v20 + 48);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
    (*(*(v2 - 8) + 32))(v14, v15);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328);
    v16 = (v14 + *(v3 + 36));
    v17 = (v15 + *(v3 + 36));
    *v16 = *v17;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330);
    v19 = v16 + *(v4 + 28);
    v18 = v17 + *(v4 + 28);
    v5 = sub_1C5594FC4();
    (*(*(v5 - 8) + 32))(v19, v18);
    v6 = *(v20 + 64);
    v7 = a2 + v6;
    *v7 = *(a1 + v6);
    *(v7 + 8) = *(a1 + v6 + 8);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C535C108(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C338);
    (*(*(v8 - 8) + 16))(a2, a1);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C268);
    v14 = (a2 + *(v9 + 36));
    v13 = (a1 + *(v9 + 36));
    v12 = *v13;

    *v14 = v12;
    v15 = v13[1];

    v14[1] = v15;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C258);
    v19 = (a2 + *(v10 + 36));
    v17 = (a1 + *(v10 + 36));
    v16 = *v17;

    *v19 = v16;
    v18 = v17[1];
    v20 = v17[2];

    v19[1] = v18;
    v19[2] = v20;
  }

  else
  {
    *a2 = *a1;
    *(a2 + 8) = *(a1 + 8);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C318);
    v21 = a2 + *(v28 + 48);
    v22 = a1 + *(v28 + 48);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
    (*(*(v2 - 8) + 16))(v21, v22);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328);
    v24 = (v21 + *(v3 + 36));
    v25 = (v22 + *(v3 + 36));
    v23 = *v25;

    *v24 = v23;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330);
    v27 = v24 + *(v4 + 28);
    v26 = v25 + *(v4 + 28);
    v5 = sub_1C5594FC4();
    (*(*(v5 - 8) + 16))(v27, v26);
    v6 = *(v28 + 64);
    v7 = a2 + v6;
    *v7 = *(a1 + v6);
    *(v7 + 8) = *(a1 + v6 + 8);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C535C430(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C338);
    (*(*(v3 - 8) + 8))(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C268);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C258);
  }

  else
  {
    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C318) + 48);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C320);
    (*(*(v1 - 8) + 8))(v5);
    v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C328) + 36);

    v7 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C330) + 28);
    v2 = sub_1C5594FC4();
    (*(*(v2 - 8) + 8))(v7);
  }

  return a1;
}

uint64_t sub_1C535C62C()
{
  v4 = type metadata accessor for SharedNameView();
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v3 + v5 + *(v4 + 20)));

  return swift_deallocObject();
}

uint64_t sub_1C535C7AC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C450);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C458) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

uint64_t sub_1C535C88C()
{
  v4 = type metadata accessor for SharedNameView();
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v3 + v5 + *(v4 + 20)));

  return swift_deallocObject();
}

uint64_t sub_1C535CA0C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1C535CB30(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C535CC2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C468);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C498);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C460);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C458);
  sub_1C54398DC();
  sub_1C54141E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C4A0);
  sub_1C5439C00();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C535CE30()
{
  v4 = type metadata accessor for SharedNameView();
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 32) & ~v0;
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v3 + v5 + *(v4 + 20)));

  return swift_deallocObject();
}

uint64_t sub_1C535D048()
{
  v4 = type metadata accessor for SharedNameView();
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v3 + v5 + *(v4 + 20)));

  return swift_deallocObject();
}

uint64_t sub_1C535D1C8()
{
  v4 = type metadata accessor for SharedNameView();
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v3 + v5 + *(v4 + 20)));

  return swift_deallocObject();
}

uint64_t sub_1C535D350()
{
  v4 = type metadata accessor for SharedNameView();
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 32) & ~v0;
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v3 + v5 + *(v4 + 20)));

  return swift_deallocObject();
}

uint64_t sub_1C535D4D8()
{
  if (*(v0 + 56))
  {
    if (*(v2 + 40))
    {
      __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v2 + 96));
  return swift_deallocObject();
}

uint64_t sub_1C535D588()
{
  if (*(v0 + 56))
  {
    if (*(v2 + 40))
    {
      __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v2 + 96));
  return swift_deallocObject();
}

uint64_t sub_1C535D638()
{
  if (*(v0 + 56))
  {
    if (*(v2 + 40))
    {
      __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v2 + 96));
  return swift_deallocObject();
}

uint64_t sub_1C535D6E8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C650);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C658) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

uint64_t sub_1C535D7C8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C650);
  (*(*(v1 - 8) + 8))(a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C658) + 36);
  if (*(a1 + v6))
  {
  }

  if (*(a1 + v6 + 16))
  {
  }

  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C660) + 52);
  v2 = sub_1C5596A04();
  (*(*(v2 - 8) + 8))(v4);

  return a1;
}

uint64_t sub_1C535D920(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C650);
  (*(*(v2 - 8) + 16))(a2, a1);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C658) + 36);
  if (*(a1 + v21))
  {
    v17 = *(a1 + v21);
    v18 = *(a1 + v21 + 8);

    v3 = (a2 + v21);
    *v3 = v17;
    v3[1] = v18;
  }

  else
  {
    *(a2 + v21) = *(a1 + v21);
  }

  v15 = a2 + v21;
  v16 = a1 + v21;
  if (*(a1 + v21 + 16))
  {
    v13 = *(v16 + 16);
    v14 = *(a1 + v21 + 24);

    *(v15 + 16) = v13;
    *(a2 + v21 + 24) = v14;
  }

  else
  {
    *(v15 + 16) = *(v16 + 16);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C660);
  v8 = a2 + *(v9 + 52);
  v7 = a1 + *(v9 + 52);
  v4 = sub_1C5596A04();
  (*(*(v4 - 8) + 16))(v8, v7);
  v11 = (a2 + *(v9 + 56));
  v5 = (a1 + *(v9 + 56));
  v10 = *v5;
  v12 = v5[1];

  result = a2;
  *v11 = v10;
  v11[1] = v12;
  return result;
}

uint64_t sub_1C535DB80()
{
  if (*(v0 + 56))
  {
    if (*(v2 + 40))
    {
      __swift_destroy_boxed_opaque_existential_0(v2 + 16);
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v2 + 96));
  return swift_deallocObject();
}

uint64_t sub_1C535DC78()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C535DD3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15C708);
  sub_1C544E158();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C535DEC8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C535DF58()
{
  v2 = *(sub_1C5596384() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1C535E058(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C338);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C268);

  return a1;
}

uint64_t sub_1C535E51C()
{

  MEMORY[0x1E69E5920](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1C535E58C()
{

  MEMORY[0x1E69E5920](*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1C535E614()
{
  swift_unknownObjectRelease();

  MEMORY[0x1E69E5920](*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1C535E8B4()
{
  v5 = type metadata accessor for ReviewCustodianListView();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C535EA34()
{
  v5 = type metadata accessor for ReviewCustodianListView();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C535EBB4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 20), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_1C535ECD8(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 20), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C535F04C()
{
  v5 = type metadata accessor for ReviewCustodianListView();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C535F1CC()
{
  v5 = type metadata accessor for ReviewCustodianListView();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C535F34C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB20);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB10) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

uint64_t sub_1C535F42C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB20);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB10) + 36);
  if (*(a1 + v5))
  {
  }

  if (*(a1 + v5 + 16))
  {
  }

  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CAF8) + 36));
  if (*v3)
  {
  }

  if (v3[2])
  {
  }

  return a1;
}

uint64_t sub_1C535F56C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB20);
  (*(*(v2 - 8) + 16))(a2, a1);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CB10) + 36);
  if (*(a1 + v20))
  {
    v16 = *(a1 + v20);
    v17 = *(a1 + v20 + 8);

    v3 = (a2 + v20);
    *v3 = v16;
    v3[1] = v17;
  }

  else
  {
    *(a2 + v20) = *(a1 + v20);
  }

  v14 = a2 + v20;
  v15 = a1 + v20;
  if (*(a1 + v20 + 16))
  {
    v12 = *(v15 + 16);
    v13 = *(a1 + v20 + 24);

    *(v14 + 16) = v12;
    *(a2 + v20 + 24) = v13;
  }

  else
  {
    *(v14 + 16) = *(v15 + 16);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CAF8);
  v10 = (a2 + *(v4 + 36));
  v11 = (a1 + *(v4 + 36));
  if (*v11)
  {
    v8 = *v11;
    v9 = v11[1];

    *v10 = v8;
    v10[1] = v9;
  }

  else
  {
    *v10 = *v11;
  }

  if (v11[2])
  {
    v6 = v11[2];
    v7 = v11[3];

    v10[2] = v6;
    v10[3] = v7;
  }

  else
  {
    *(v10 + 1) = *(v11 + 1);
  }

  return a2;
}

uint64_t sub_1C535F7D0(uint64_t a1)
{
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCA8) + 44);
  sub_1C5412EA0(*(v6 + 24), *(v6 + 32), *(v6 + 40) & 1);

  sub_1C5412EA0(*(v6 + 168), *(v6 + 176), *(v6 + 184) & 1);

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCB0);
  v4 = *(v5 + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCB8);
  (*(*(v1 - 8) + 8))(v6 + v4);
  v7 = *(v5 + 80);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CCC0);
  (*(*(v2 - 8) + 8))(v6 + v7);
  return a1;
}

uint64_t sub_1C535F93C()
{
  v5 = type metadata accessor for ReviewCustodianListView();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C535FABC()
{
  v5 = type metadata accessor for ReviewCustodianListView();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C535FC60()
{
  v5 = type metadata accessor for ReviewCustodianListView();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C53600C4()
{

  swift_unknownObjectRelease();
  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 96);
  }

  return swift_deallocObject();
}

uint64_t sub_1C5360140()
{

  swift_unknownObjectRelease();
  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 96);
  }

  return swift_deallocObject();
}

uint64_t sub_1C53601BC()
{

  swift_unknownObjectRelease();
  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 96);
  }

  return swift_deallocObject();
}

uint64_t sub_1C5360238()
{

  swift_unknownObjectRelease();
  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 96);
  }

  return swift_deallocObject();
}

uint64_t sub_1C53602B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a2 - 8) + 8))();
  v6 = *(a3 + 36);
  if (*(a1 + v6))
  {
  }

  if (*(a1 + v6 + 16))
  {
  }

  return a1;
}

uint64_t sub_1C5360368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a2 - 8) + 8))();
  v8 = *(a3 + 36);
  if (*(a1 + v8))
  {
  }

  if (*(a1 + v8 + 16))
  {
  }

  (*(*(*(a4 + 16) - 8) + 8))(a1 + *(a4 + 52));

  return a1;
}

uint64_t sub_1C5360474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(a3 - 8) + 16))();
  v21 = *(a4 + 36);
  if (*(a1 + v21))
  {
    v15 = *(a1 + v21);
    v16 = *(a1 + v21 + 8);

    v5 = (a2 + v21);
    *v5 = v15;
    v5[1] = v16;
  }

  else
  {
    *(a2 + v21) = *(a1 + v21);
  }

  v13 = a2 + v21;
  v14 = a1 + v21;
  if (*(a1 + v21 + 16))
  {
    v11 = *(v14 + 16);
    v12 = *(a1 + v21 + 24);

    *(v13 + 16) = v11;
    *(a2 + v21 + 24) = v12;
  }

  else
  {
    *(v13 + 16) = *(v14 + 16);
  }

  (*(*(*(a5 + 16) - 8) + 16))(a2 + *(a5 + 52), a1 + *(a5 + 52));
  v6 = *(a5 + 56);
  v9 = (a2 + v6);
  v8 = *(a1 + v6);
  v10 = *(a1 + v6 + 8);

  result = a2;
  *v9 = v8;
  v9[1] = v10;
  return result;
}

uint64_t sub_1C536066C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

void *sub_1C5360708(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

void *sub_1C5360810(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_1C5360918()
{

  swift_unknownObjectRelease();
  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 96);
  }

  return swift_deallocObject();
}

uint64_t sub_1C5360994()
{

  swift_unknownObjectRelease();
  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 96);
  }

  return swift_deallocObject();
}

uint64_t sub_1C5360A10()
{

  swift_unknownObjectRelease();
  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 96);
  }

  return swift_deallocObject();
}

uint64_t sub_1C5360A8C()
{
  sub_1C5596A04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8);
  swift_getAssociatedTypeWitness();
  sub_1C5477800();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C5596264();
  sub_1C5596184();
  sub_1C5596A94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDD0);
  swift_getTupleTypeMetadata3();
  sub_1C5596264();
  swift_getWitnessTable();
  sub_1C5595954();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDD8);
  swift_getWitnessTable();
  sub_1C5477928();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1C5595214();
  sub_1C5443C8C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1C5595254();
  return swift_getWitnessTable();
}

uint64_t sub_1C5360E60()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8);
  swift_getAssociatedTypeWitness();
  sub_1C5477800();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C5596264();
  sub_1C5596184();
  sub_1C5596A94();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDD0);
  swift_getTupleTypeMetadata3();
  sub_1C5596264();
  return swift_getWitnessTable();
}

uint64_t sub_1C5361030()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8);
  swift_getAssociatedTypeWitness();
  sub_1C5477800();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C5596264();
  sub_1C5596184();
  swift_getWitnessTable();
  sub_1C547AAC4();
  return swift_getWitnessTable();
}

uint64_t sub_1C5361208()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15CDB8);
  swift_getAssociatedTypeWitness();
  sub_1C5477800();
  swift_getAssociatedConformanceWitness();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C53612EC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (*(v0 + 136))
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 112);
  }

  return swift_deallocObject();
}

uint64_t sub_1C5361400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE18) + 44);

  v12 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20) + 36);

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360) + 28);
  v4 = sub_1C5595F34();
  (*(*(v4 - 8) + 8))(v12 + v13);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE28) + 36);
  v5 = sub_1C55951E4();
  (*(*(v5 - 8) + 8))(v18 + v14);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE30) + 36);
  v20 = sub_1C5595754();
  v21 = *(*(v20 - 8) + 8);
  v21(v18 + v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE38);
  v16 = v18 + *(v17 + 48);
  sub_1C5412EA0(*v16, *(v16 + 8), *(v16 + 16) & 1);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE40);
  (v21)(v16 + *(v6 + 36), v20);
  v19 = v18 + *(v17 + 64);
  sub_1C5412EA0(*v19, *(v19 + 8), *(v19 + 16) & 1);

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE48);
  (v21)(v19 + *(v7 + 36), v20);
  v25 = *(a4 + 48);
  v26 = *(a2 - 8);
  if (!(*(v26 + 48))(a1 + v25, 1))
  {
    (*(v26 + 8))(a1 + v25, a2);
  }

  v9 = a1 + *(a4 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDF0);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1))
  {
    (*(v11 + 8))(v9, v10);
  }

  return a1;
}

uint64_t sub_1C53617F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE18) + 44);
  v19 = *(a1 + v18);

  *(a2 + v18) = v19;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE20) + 36);
  v23 = (a1 + v18 + v20);
  v21 = *v23;

  *(a2 + v18 + v20) = v21;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C360) + 28);
  v5 = sub_1C5595F34();
  (*(*(v5 - 8) + 16))(a2 + v18 + v20 + v22, &v23[v22]);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE28) + 36);
  v6 = sub_1C55951E4();
  (*(*(v6 - 8) + 16))(a2 + v18 + v24, a1 + v18 + v24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE90);
  memcpy((a2 + v18 + *(v7 + 36)), (a1 + v18 + *(v7 + 36)), 0x29uLL);
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE30) + 36);
  v43 = sub_1C5595754();
  v44 = *(*(v43 - 8) + 16);
  v44(a2 + v18 + v25, a1 + v18 + v25);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE38);
  v26 = *(v34 + 48);
  v33 = a1 + v18 + v26;
  v27 = *v33;
  v28 = *(v33 + 8);
  v29 = *(v33 + 16);
  sub_1C54130AC(*v33, v28, v29 & 1);
  v32 = a2 + v18 + v26;
  *v32 = v27;
  *(v32 + 8) = v28;
  *(v32 + 16) = v29 & 1;
  v30 = *(v33 + 24);
  sub_1C5594CF4();
  *(v32 + 24) = v30;
  v31 = *(v33 + 32);

  *(v32 + 32) = v31;
  *(v32 + 40) = *(v33 + 40);
  memcpy((v32 + 48), (v33 + 48), 0x29uLL);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE40);
  (v44)(v32 + *(v8 + 36), v33 + *(v8 + 36), v43);
  v35 = *(v34 + 64);
  v42 = a1 + v18 + v35;
  v36 = *v42;
  v37 = *(v42 + 8);
  v38 = *(v42 + 16);
  sub_1C54130AC(*v42, v37, v38 & 1);
  v41 = a2 + v18 + v35;
  *v41 = v36;
  *(v41 + 8) = v37;
  *(v41 + 16) = v38 & 1;
  v39 = *(v42 + 24);
  sub_1C5594CF4();
  *(v41 + 24) = v39;
  v40 = *(v42 + 32);

  *(v41 + 32) = v40;
  *(v41 + 40) = *(v42 + 40);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CE48);
  (v44)(v41 + *(v9 + 36), v42 + *(v9 + 36), v43);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDA8);
  memcpy((a2 + *(v10 + 36)), (a1 + *(v10 + 36)), 0x29uLL);
  v49 = *(a5 + 48);
  v50 = *(a3 - 8);
  if ((*(v50 + 48))(a1 + v49, 1))
  {
    memcpy((a2 + v49), (a1 + v49), *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v50 + 16))();
    (*(v50 + 56))(a2 + v49, 0, 1, a3);
  }

  __dst = (a2 + *(a5 + 64));
  __src = (a1 + *(a5 + 64));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDF0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(__src, 1))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CDD0);
    memcpy(__dst, __src, *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))(__dst, __src, v15);
    (*(v16 + 56))(__dst, 0, 1, v15);
  }

  return a2;
}

uint64_t sub_1C5361F28(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF38);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF08) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

uint64_t sub_1C5362008(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF38);
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF08) + 36);
  if (*(a1 + v13))
  {
    v9 = *(a1 + v13);
    v10 = *(a1 + v13 + 8);

    v3 = (a2 + v13);
    *v3 = v9;
    v3[1] = v10;
  }

  else
  {
    *(a2 + v13) = *(a1 + v13);
  }

  v7 = a2 + v13;
  v8 = a1 + v13;
  if (*(a1 + v13 + 16))
  {
    v5 = *(v8 + 16);
    v6 = *(a1 + v13 + 24);

    *(v7 + 16) = v5;
    *(a2 + v13 + 24) = v6;
  }

  else
  {
    *(v7 + 16) = *(v8 + 16);
  }

  return a2;
}

char *sub_1C5362194(char *a1, char *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF38);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF08);
    v4 = &a2[*(v3 + 36)];
    v5 = &a1[*(v3 + 36)];
    *v4 = *v5;
    *(v4 + 1) = *(v5 + 1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  return a2;
}

uint64_t sub_1C53622B0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF38);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF08);
    v9 = (a2 + *(v3 + 36));
    v10 = (a1 + *(v3 + 36));
    if (*v10)
    {
      v7 = *v10;
      v8 = v10[1];

      *v9 = v7;
      v9[1] = v8;
    }

    else
    {
      *v9 = *v10;
    }

    if (v10[2])
    {
      v5 = v10[2];
      v6 = v10[3];

      v9[2] = v5;
      v9[3] = v6;
    }

    else
    {
      *(v9 + 1) = *(v10 + 1);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    sub_1C54130AC(v11, v12, v13 & 1);
    *(a2 + 24) = v11;
    *(a2 + 32) = v12;
    *(a2 + 40) = v13 & 1;
    v14 = *(a1 + 48);
    sub_1C5594CF4();
    *(a2 + 48) = v14;
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 64) = *(a1 + 64);
    v15 = *(a1 + 72);
    v16 = *(a1 + 80);
    v17 = *(a1 + 88);
    sub_1C54130AC(v15, v16, v17 & 1);
    *(a2 + 72) = v15;
    *(a2 + 80) = v16;
    *(a2 + 88) = v17 & 1;
    v18 = *(a1 + 96);
    sub_1C5594CF4();
    *(a2 + 96) = v18;
    memcpy((a2 + 104), (a1 + 104), 0x29uLL);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_1C5362560(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF38);
    (*(*(v1 - 8) + 8))(a1);
    v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CF08) + 36));
    if (*v3)
    {
    }

    if (v3[2])
    {
    }
  }

  else
  {
    sub_1C5412EA0(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

    sub_1C5412EA0(*(a1 + 72), *(a1 + 80), *(a1 + 88) & 1);
  }

  return a1;
}

uint64_t sub_1C53626A4()
{
  v5 = type metadata accessor for AgeAttestationRowElement();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5594BE4();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v3 + v4 + *(v5 + 32)));
  return swift_deallocObject();
}

uint64_t sub_1C536286C()
{
  v5 = type metadata accessor for AgeAttestationRowElement();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5594BE4();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v3 + v4 + *(v5 + 32)));
  return swift_deallocObject();
}

uint64_t sub_1C5362A34(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFF8) + 44);
  v1 = sub_1C5595654();
  (*(*(v1 - 8) + 8))();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D000) + 64);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008);
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  return a1;
}

uint64_t sub_1C5362B20(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFF8) + 44);
  v2 = sub_1C5595654();
  (*(*(v2 - 8) + 16))();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D000);
  v4 = a1 + v11 + *(v3 + 48);
  v5 = a2 + v11 + *(v3 + 48);
  *v5 = *v4;
  *(v5 + 8) = *(v4 + 8);
  v12 = *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008);
  (*(*(v6 - 8) + 16))();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D020);
  *(a2 + v11 + v12 + *(v7 + 36)) = *(a1 + v11 + v12 + *(v7 + 36));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFD0);
  memcpy((a2 + *(v8 + 36)), (a1 + *(v8 + 36)), 0x29uLL);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CFD8);
  result = a2;
  *(a2 + *(v9 + 36)) = *(a1 + *(v9 + 36));
  return result;
}

uint64_t sub_1C5362D1C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF0);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 20), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_1C5362E40(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF0);
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 20), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C5362FB4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C536301C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D020);
  result = a2;
  *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
  return result;
}

uint64_t sub_1C53630B8()
{
  v5 = type metadata accessor for AgeAttestationRowElement();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 32) & ~v0;
  swift_unknownObjectRelease();

  v6 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5594BE4();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v3 + v4 + *(v5 + 32)));
  return swift_deallocObject();
}

uint64_t sub_1C536343C()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1C5364124()
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278);
  v1 = *(*(v5 - 8) + 80);
  v4 = (v1 + 32) & ~v1;
  swift_unknownObjectRelease();

  v6 = *(v5 + 32);
  v2 = sub_1C5594924();
  (*(*(v2 - 8) + 8))(v0 + v4 + v6);
  return swift_deallocObject();
}

uint64_t sub_1C536424C()
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D278);
  v1 = *(*(v5 - 8) + 80);
  v4 = (v1 + 32) & ~v1;
  swift_unknownObjectRelease();

  v6 = *(v5 + 32);
  v2 = sub_1C5594924();
  (*(*(v2 - 8) + 8))(v0 + v4 + v6);
  return swift_deallocObject();
}

uint64_t sub_1C5364374()
{
  v5 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v4 = *(v5 + 20);
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 8))(v6 + v4);

  sub_1C549C0AC(*(v6 + *(v5 + 32)), *(v6 + *(v5 + 32) + 8), *(v6 + *(v5 + 32) + 16), *(v6 + *(v5 + 32) + 17) & 1);

  return swift_deallocObject();
}

uint64_t sub_1C53644DC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D280);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D288);

  return a1;
}

uint64_t sub_1C536456C()
{
  v5 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v4 = *(v5 + 20);
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 8))(v6 + v4);

  sub_1C549C0AC(*(v6 + *(v5 + 32)), *(v6 + *(v5 + 32) + 8), *(v6 + *(v5 + 32) + 16), *(v6 + *(v5 + 32) + 17) & 1);

  return swift_deallocObject();
}

uint64_t sub_1C53646D4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2A0);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D2A8);

  return a1;
}

uint64_t sub_1C5364778()
{
  v6 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v1 = *(*(v6 - 8) + 80);
  v4 = (v1 + 32) & ~v1;
  swift_unknownObjectRelease();

  v5 = *(v6 + 20);
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 8))(v0 + v4 + v5);

  sub_1C549C0AC(*(v0 + v4 + *(v6 + 32)), *(v0 + v4 + *(v6 + 32) + 8), *(v0 + v4 + *(v6 + 32) + 16), *(v0 + v4 + *(v6 + 32) + 17) & 1);

  return swift_deallocObject();
}

uint64_t sub_1C53648F0()
{
  v1 = *(*(type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture() - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1C53649DC()
{
  v1 = *(*(type metadata accessor for AppleAccountBirthdayPickerRow.RowDragGesture() - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  (*(*(v2 - 8) + 8))(v0 + v4);
  return swift_deallocObject();
}

uint64_t sub_1C5364AC8(uint64_t a1)
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3B0) + 44);
  sub_1C5412EA0(*(a1 + v10), *(a1 + v10 + 8), *(a1 + v10 + 16) & 1);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3B8);
  v12 = v11[16];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C0);
  if (!(*(*(v1 - 8) + 48))(a1 + v10 + v12, 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C5412EA0(*(a1 + v10 + v12), *(a1 + v10 + v12 + 8), *(a1 + v10 + v12 + 16) & 1);
    }

    else
    {

      v8 = a1 + v10 + v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0) + 36);
      v2 = sub_1C5595754();
      (*(*(v2 - 8) + 8))(v8);
    }
  }

  v6 = a1 + v10 + v11[20];
  sub_1C5412EA0(*v6, *(v6 + 8), *(v6 + 16) & 1);

  v7 = a1 + v10 + v11[24];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D020);
  if (!(*(*(v3 - 8) + 48))(v7, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008);
    (*(*(v4 - 8) + 8))(v7);
  }

  return a1;
}

uint64_t sub_1C5364DB4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3B0) + 44);
  v33 = *(a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = *(a1 + v32 + 16);
  sub_1C54130AC(v33, v34, v35 & 1);
  v37 = a2 + v32;
  *v37 = v33;
  *(v37 + 8) = v34;
  *(v37 + 16) = v35 & 1;
  v36 = *(a1 + v32 + 24);
  sub_1C5594CF4();
  *(v37 + 24) = v36;
  *(v37 + 32) = *(a1 + v32 + 32);
  *(v37 + 40) = *(a1 + v32 + 40);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3B8);
  v39 = v38[16];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C0);
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(a1 + v32 + v39, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D8);
    memcpy((a2 + v32 + v39), (a1 + v32 + v39), *(*(v4 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3C8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = a1 + v32 + v39;
      v18 = *v21;
      v19 = *(v21 + 8);
      v20 = *(v21 + 16);
      sub_1C54130AC(*v21, v19, v20 & 1);
      v22 = a2 + v32 + v39;
      *v22 = v18;
      *(v22 + 8) = v19;
      *(v22 + 16) = v20 & 1;
      v23 = *(v21 + 24);
      sub_1C5594CF4();
      *(v22 + 24) = v23;
    }

    else
    {
      v26 = (a1 + v32 + v39);
      v24 = *v26;

      v29 = (a2 + v32 + v39);
      *v29 = v24;
      v25 = v26[1];

      v29[1] = v25;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3D0);
      v28 = v29 + *(v2 + 36);
      v27 = v26 + *(v2 + 36);
      v3 = sub_1C5595754();
      (*(*(v3 - 8) + 16))(v28, v27);
    }

    swift_storeEnumTagMultiPayload();
    (*(v41 + 56))(a2 + v32 + v39, 0, 1, v40);
  }

  v12 = a2 + v32 + v38[20];
  v11 = a1 + v32 + v38[20];
  v8 = *v11;
  v9 = *(v11 + 8);
  v10 = *(v11 + 16);
  sub_1C54130AC(*v11, v9, v10 & 1);
  *v12 = v8;
  *(v12 + 8) = v9;
  *(v12 + 16) = v10 & 1;
  v13 = *(v11 + 24);
  sub_1C5594CF4();
  *(v12 + 24) = v13;
  __dst = (a2 + v32 + v38[24]);
  __src = (a1 + v32 + v38[24]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D020);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(__src, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E0);
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008);
    (*(*(v5 - 8) + 16))(__dst, __src);
    *&__dst[*(v16 + 36)] = *&__src[*(v16 + 36)];
    (*(v17 + 56))();
  }

  return a2;
}

uint64_t sub_1C53653B4()
{

  return swift_deallocObject();
}

uint64_t sub_1C53653FC()
{

  return swift_deallocObject();
}

uint64_t sub_1C5365444()
{

  return swift_deallocObject();
}

uint64_t sub_1C536548C()
{

  return swift_deallocObject();
}

uint64_t sub_1C53654D4()
{

  return swift_deallocObject();
}

uint64_t sub_1C536551C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D400);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D408) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

uint64_t sub_1C53655FC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D400);
  (*(*(v1 - 8) + 8))(a1);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D408) + 36);
  if (*(a1 + v7))
  {
  }

  if (*(a1 + v7 + 16))
  {
  }

  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D410) + 36);

  v5 = v4 + *(sub_1C5595134() + 20);
  v2 = sub_1C5596814();
  (*(*(v2 - 8) + 8))(v5);
  return a1;
}

uint64_t sub_1C5365760(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D400);
  (*(*(v2 - 8) + 16))(a2, a1);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D408) + 36);
  if (*(a1 + v22))
  {
    v18 = *(a1 + v22);
    v19 = *(a1 + v22 + 8);

    v3 = (a2 + v22);
    *v3 = v18;
    v3[1] = v19;
  }

  else
  {
    *(a2 + v22) = *(a1 + v22);
  }

  v16 = a2 + v22;
  v17 = a1 + v22;
  if (*(a1 + v22 + 16))
  {
    v14 = *(v17 + 16);
    v15 = *(a1 + v22 + 24);

    *(v16 + 16) = v14;
    *(a2 + v22 + 24) = v15;
  }

  else
  {
    *(v16 + 16) = *(v17 + 16);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D410);
  v10 = (a2 + *(v4 + 36));
  v11 = (a1 + *(v4 + 36));
  v8 = *v11;
  v9 = v11[1];

  *v10 = v8;
  v10[1] = v9;
  v5 = sub_1C5595134();
  v13 = v10 + *(v5 + 20);
  v12 = v11 + *(v5 + 20);
  v6 = sub_1C5596814();
  (*(*(v6 - 8) + 16))(v13, v12);
  return a2;
}

uint64_t sub_1C53659B4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = sub_1C5596384();
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 20), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_1C5365ACC(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    result = sub_1C5596384();
    if (a3 == *(*(result - 8) + 84))
    {
      return (*(*(result - 8) + 56))(v4 + *(a4 + 20), a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C5365C98(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 24)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 24));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1C5365DBC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D318);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5365EB8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D2A8);
  sub_1C54A0C5C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5365F70()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D438);
  sub_1C54AB2EC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5365FF8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D020);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008);
    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

char *sub_1C53660B4(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D020);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008);
    (*(*(v2 - 8) + 32))(a2, a1);
    *&a2[*(v7 + 36)] = *&a1[*(v7 + 36)];
    (*(v8 + 56))();
  }

  return a2;
}

char *sub_1C5366210(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D020);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D3E0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008);
    (*(*(v2 - 8) + 16))(a2, a1);
    *&a2[*(v7 + 36)] = *&a1[*(v7 + 36)];
    (*(v8 + 56))();
  }

  return a2;
}

uint64_t sub_1C536636C()
{
  v2 = *(sub_1C5594924() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1C53666A8()
{
  v6 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v1 = *(*(v6 - 8) + 80);
  v4 = (v1 + 32) & ~v1;
  swift_unknownObjectRelease();

  v5 = *(v6 + 20);
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 8))(v0 + v4 + v5);

  sub_1C549C0AC(*(v0 + v4 + *(v6 + 32)), *(v0 + v4 + *(v6 + 32) + 8), *(v0 + v4 + *(v6 + 32) + 16), *(v0 + v4 + *(v6 + 32) + 17) & 1);

  return swift_deallocObject();
}

uint64_t sub_1C5366820()
{
  v2 = *(sub_1C5594924() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1C5366A94()
{
  v2 = *(sub_1C5594924() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1C5366C78()
{
  v5 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v4 = *(v5 + 20);
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 8))(v6 + v4);

  sub_1C549C0AC(*(v6 + *(v5 + 32)), *(v6 + *(v5 + 32) + 8), *(v6 + *(v5 + 32) + 16), *(v6 + *(v5 + 32) + 17) & 1);

  return swift_deallocObject();
}

uint64_t sub_1C5366DE0()
{
  v5 = type metadata accessor for AppleAccountBirthdayPickerRow();
  v1 = *(*(v5 - 8) + 80);
  v6 = v0 + ((v1 + 16) & ~v1);

  v4 = *(v5 + 20);
  v2 = sub_1C5596384();
  (*(*(v2 - 8) + 8))(v6 + v4);

  sub_1C549C0AC(*(v6 + *(v5 + 32)), *(v6 + *(v5 + 32) + 8), *(v6 + *(v5 + 32) + 16), *(v6 + *(v5 + 32) + 17) & 1);

  return swift_deallocObject();
}

uint64_t sub_1C5366F48()
{
  v4 = type metadata accessor for SharedNameRowView();
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5594BE4();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v3 + v5 + *(v4 + 28)));

  return swift_deallocObject();
}

uint64_t sub_1C53670F8()
{
  v4 = type metadata accessor for SharedNameRowView();
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5594BE4();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v3 + v5 + *(v4 + 28)));

  return swift_deallocObject();
}

uint64_t sub_1C53672A8()
{
  v4 = type metadata accessor for SharedNameRowView();
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5594BE4();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v3 + v5 + *(v4 + 28)));

  return swift_deallocObject();
}

uint64_t sub_1C5367458(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5A8);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5B0) + 36);
  if (*(a1 + v4))
  {
  }

  if (*(a1 + v4 + 16))
  {
  }

  return a1;
}

uint64_t sub_1C5367538(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D620) + 44);
  v1 = sub_1C5595654();
  (*(*(v1 - 8) + 8))();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D628) + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008);
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  return a1;
}

uint64_t sub_1C5367624(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D620) + 44);
  v2 = sub_1C5595654();
  (*(*(v2 - 8) + 16))();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D628) + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D008);
  (*(*(v3 - 8) + 16))();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D020);
  *(a2 + v8 + v9 + *(v4 + 36)) = *(a1 + v8 + v9 + *(v4 + 36));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D5F8);
  memcpy((a2 + *(v5 + 36)), (a1 + *(v5 + 36)), 0x29uLL);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D600);
  result = a2;
  *(a2 + *(v6 + 36)) = *(a1 + *(v6 + 36));
  return result;
}

uint64_t sub_1C53677F8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF0);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1C536791C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5367A18()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D5B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15D5D0);
  sub_1C54B4F00();
  sub_1C54B5014();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C5367AD0()
{
  v4 = type metadata accessor for SharedNameRowView();
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 32) & ~v0;
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15CEF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5594BE4();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  MEMORY[0x1E69E5920](*(v3 + v5 + *(v4 + 28)));

  return swift_deallocObject();
}

uint64_t sub_1C5367D58()
{
  MEMORY[0x1E69E5920](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1C5367DA8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D670);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C5367E10(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D670);
  (*(*(v1 - 8) + 8))(a1);
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D680) + 36);

  v5 = *(sub_1C5595134() + 20);
  v2 = sub_1C5596814();
  (*(*(v2 - 8) + 8))(v4 + v5);
  return a1;
}

uint64_t sub_1C5367F00(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D670);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D678);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D680) + 36);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);

  v10 = (a2 + v7);
  *v10 = v8;
  v10[1] = v9;
  v11 = *(sub_1C5595134() + 20);
  v4 = sub_1C5596814();
  (*(*(v4 - 8) + 16))(a2 + v7 + v11, a1 + v7 + v11);
  return a2;
}

uint64_t sub_1C5368094(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D738) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D750);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D748);
  }

  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1C53681A8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D750);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D748);
  }

  (*(*(v2 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D710);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1C5368358(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_1C5596384();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20) + 8) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20) + 8);
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1C5368474(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_1C5596384();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5368580(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D750);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D748);
  }

  (*(*(v2 - 8) + 32))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C5368690(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D750);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D748);
  }

  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C53687A0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D750);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D748);
  }

  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C53689D8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D818) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D670);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

_OWORD *sub_1C5368A64(_OWORD *a1, _OWORD *a2)
{
  *a2 = *a1;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D818) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D670);
  (*(*(v2 - 8) + 16))();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D678);
  memcpy(a2 + v5 + *(v3 + 36), a1 + v5 + *(v3 + 36), 0x29uLL);
  return a2;
}

uint64_t sub_1C5368B68(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D670);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15D678);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1C5368D2C()
{

  return swift_deallocObject();
}

uint64_t sub_1C5368DBC()
{

  return swift_deallocObject();
}

uint64_t sub_1C5368E4C()
{

  return swift_deallocObject();
}

uint64_t sub_1C5368EDC()
{

  return swift_deallocObject();
}

uint64_t sub_1C536934C()
{

  return swift_deallocObject();
}

uint64_t sub_1C5369F7C()
{

  return swift_deallocObject();
}

uint64_t sub_1C536A00C()
{

  return swift_deallocObject();
}

uint64_t sub_1C536A09C()
{

  return swift_deallocObject();
}

uint64_t sub_1C536A12C()
{

  return swift_deallocObject();
}

uint64_t sub_1C536A720()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  return swift_deallocObject();
}

uint64_t sub_1C536AA98()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1C536AAF8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1C536AB70()
{
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_1C536ADD0()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1C536B2A8()
{
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v0[4]);
  MEMORY[0x1E69E5920](v0[5]);
  MEMORY[0x1E69E5920](v0[6]);
  return swift_deallocObject();
}

uint64_t sub_1C536B3A8()
{
  MEMORY[0x1E69E5920](*(v0 + 24));
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1C536B420()
{
  MEMORY[0x1E69E5920](*(v0 + 16));

  MEMORY[0x1E69E5920](*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1C536B4A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DF28);
  sub_1C5506420();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C536B530()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15DFA8);
  sub_1C55069B4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C536B6C0()
{
  MEMORY[0x1E69E5920](*(v0 + 24));
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1C536B738(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E120) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E100);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1C536B7C4()
{

  MEMORY[0x1E69E5920](*(v0 + 32));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C536B82C()
{

  MEMORY[0x1E69E5920](*(v0 + 32));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C536B894(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E120) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E100);
  (*(*(v1 - 8) + 8))(a1 + v3);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0E8) + 36);
  if (*(a1 + v5))
  {
  }

  if (*(a1 + v5 + 16))
  {
  }

  return a1;
}

uint64_t sub_1C536B998()
{

  MEMORY[0x1E69E5920](*(v0 + 32));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C536BA00(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0F0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0F8) + 52);
  v2 = sub_1C5596A04();
  (*(*(v2 - 8) + 8))(a1 + v4);

  return a1;
}

uint64_t sub_1C536BAE0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0F0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E0F8);
  v6 = *(v7 + 52);
  v3 = sub_1C5596A04();
  (*(*(v3 - 8) + 16))(a2 + v6, a1 + v6);
  v10 = *(v7 + 56);
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);

  result = a2;
  v5 = (a2 + v10);
  *v5 = v11;
  v5[1] = v12;
  return result;
}

uint64_t sub_1C536BC08()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1C5595694();
  }

  else
  {
    sub_1C5595274();
    swift_getWitnessTable();
    sub_1C55955B4();
    sub_1C5595214();
    sub_1C5596A94();
    swift_getWitnessTable();
    sub_1C5595274();
    swift_getWitnessTable();
    sub_1C55955B4();
  }

  return sub_1C5595214();
}

uint64_t sub_1C536BD80()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1C5595694();
    sub_1C5595214();
  }

  else
  {
    sub_1C5595274();
    swift_getWitnessTable();
    sub_1C55955B4();
    sub_1C5595214();
    sub_1C5596A94();
    swift_getWitnessTable();
    sub_1C5595274();
    swift_getWitnessTable();
    sub_1C55955B4();
    sub_1C5595214();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1C536C018()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C536C664()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1C536CE68()
{
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 32));
  MEMORY[0x1E69E5920](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_1C536D180()
{
  swift_unknownObjectRelease();

  MEMORY[0x1E69E5920](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_1C536D5D8()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_1C536D620()
{

  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_1C536DB0C()
{

  return swift_deallocObject();
}

uint64_t sub_1C536DB54()
{

  return swift_deallocObject();
}

uint64_t sub_1C536DF34()
{
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_1C536E1D0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA58) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA60);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1C536E25C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA58) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA60);
  (*(*(v2 - 8) + 16))();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA30);
  memcpy((a2 + v5 + *(v3 + 36)), (a1 + v5 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1C536E350(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA58);
    v7 = a2 + *(v3 + 44);
    v8 = a1 + *(v3 + 44);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA60);
    (*(*(v4 - 8) + 32))(v7, v8);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA30);
    memcpy((v7 + *(v5 + 36)), (v8 + *(v5 + 36)), 0x29uLL);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA20);
    (*(*(v2 - 8) + 32))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C536E4E8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA58);
    v7 = a2 + *(v3 + 44);
    v8 = a1 + *(v3 + 44);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA60);
    (*(*(v4 - 8) + 16))(v7, v8);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA30);
    memcpy((v7 + *(v5 + 36)), (v8 + *(v5 + 36)), 0x29uLL);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA20);
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C536E680(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA58) + 44);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA60);
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA20);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1C536E784(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 28)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1C536E8A8(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 28)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C536E9BC()
{
  v5 = type metadata accessor for SignOutUnsyncedDataAlert();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C536EB54()
{
  v5 = type metadata accessor for SignOutUnsyncedDataAlert();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C536ECEC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA60);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C536ED54(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA60);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EA30);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1C536EE00()
{
  v5 = type metadata accessor for SignOutUnsyncedDataAlert();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C536EF98()
{
  v5 = type metadata accessor for SignOutUnsyncedDataAlert();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C536F130()
{
  MEMORY[0x1E69E5920](*(v0 + 32));
  MEMORY[0x1E69E5920](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_1C536F188(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAF0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C536F1F0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EAF0);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EB00);

  return a1;
}

uint64_t sub_1C536F280()
{

  return swift_deallocObject();
}

uint64_t sub_1C536F2C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EB10);
  type metadata accessor for CGSize();
  sub_1C554D878();
  sub_1C5411860();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C536F360()
{

  return swift_deallocObject();
}

uint64_t sub_1C536F3A8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBE0);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBE8);

  return a1;
}

uint64_t sub_1C536F438(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EBF0);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C536F4E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC15EC08);
  type metadata accessor for CGSize();
  sub_1C5552254();
  sub_1C5411860();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1C536F590()
{

  return swift_deallocObject();
}

uint64_t sub_1C536F5D8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC80);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC88);

  return a1;
}

uint64_t sub_1C536F668(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC80);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC88);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC90) + 36);
  v5 = *(sub_1C5595244() + 20);
  v2 = sub_1C55953F4();
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  return a1;
}

uint64_t sub_1C536F774(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC80);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC88);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC90) + 36);
  v5 = *(sub_1C5595244() + 20);
  v2 = sub_1C55953F4();
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC98);

  return a1;
}

uint64_t sub_1C536F8BC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC80);
  (*(*(v2 - 8) + 16))(a2, a1);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC88) + 36);
  v9 = *(a1 + v8);

  v3 = a2 + v8;
  *v3 = v9;
  *(v3 + 8) = *(a1 + v8 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC90);
  v11 = (a1 + *(v4 + 36));
  v12 = (a2 + *(v4 + 36));
  *v12 = *v11;
  v10 = *(sub_1C5595244() + 20);
  v5 = sub_1C55953F4();
  (*(*(v5 - 8) + 16))(&v12[v10], &v11[v10]);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA88);
  *&v12[*(v6 + 36)] = *&v11[*(v6 + 36)];
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EC98) + 36);
  v15 = *(a1 + v14);

  *(a2 + v14) = v15;
  v17 = *(a1 + v14 + 8);

  result = a2;
  *(a2 + v14 + 8) = v17;
  return result;
}

uint64_t sub_1C536FAF0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED48) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED50);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1C536FB7C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED48) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED50);
  (*(*(v2 - 8) + 16))();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED20);
  memcpy((a2 + v5 + *(v3 + 36)), (a1 + v5 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1C536FC70(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED48);
    v7 = a2 + *(v3 + 44);
    v8 = a1 + *(v3 + 44);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED50);
    (*(*(v4 - 8) + 32))(v7, v8);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED20);
    memcpy((v7 + *(v5 + 36)), (v8 + *(v5 + 36)), 0x29uLL);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED10);
    (*(*(v2 - 8) + 32))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C536FE08(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED48);
    v7 = a2 + *(v3 + 44);
    v8 = a1 + *(v3 + 44);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED50);
    (*(*(v4 - 8) + 16))(v7, v8);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED20);
    memcpy((v7 + *(v5 + 36)), (v8 + *(v5 + 36)), 0x29uLL);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED10);
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C536FFA0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED48) + 44);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED50);
    (*(*(v2 - 8) + 8))(v4);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED10);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1C53700A4(char *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*a1 < 0x100000000uLL)
    {
      v6 = *a1;
    }

    return (v6 + 1);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(&a1[*(a3 + 20)], a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

char *sub_1C53701C8(char *result, unsigned int a2, int a3, uint64_t a4)
{
  v4 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = a2 - 1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15E830);
    if (a3 == *(*(result - 1) + 84))
    {
      return (*(*(result - 1) + 56))(&v4[*(a4 + 20)], a2, a2, result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C53702DC()
{
  v5 = type metadata accessor for SignInDataclassActionConfirmationAlert();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C537045C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED50);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C53704C4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED50);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15ED20);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1C5370570()
{
  v5 = type metadata accessor for SignInDataclassActionConfirmationAlert();
  v0 = *(*(v5 - 8) + 80);
  v4 = (v0 + 16) & ~v0;

  v6 = *(v5 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1C5595104();
    (*(*(v1 - 8) + 8))(v3 + v4 + v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C53706F0(uint64_t a1)
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF18) + 44);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF20) + 36);
  v1 = sub_1C5595754();
  (*(*(v1 - 8) + 8))(a1 + v10 + v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF28);
  v13 = *(v12 + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF30);
  if (!(*(*(v2 - 8) + 48))(a1 + v10 + v13, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF38);
    (*(*(v3 - 8) + 8))();
    v7 = a1 + v10 + v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF40) + 36);
    v8 = v7 + *(sub_1C5595244() + 20);
    v4 = sub_1C55953F4();
    (*(*(v4 - 8) + 8))(v8);
  }

  v6 = a1 + v10 + *(v12 + 64);
  if (*(v6 + 48))
  {
    sub_1C5412EA0(*(v6 + 24), *(v6 + 32), *(v6 + 40) & 1);

    if (*(v6 + 80))
    {
      sub_1C5412EA0(*(v6 + 56), *(v6 + 64), *(v6 + 72) & 1);
    }
  }

  return a1;
}

uint64_t sub_1C5370988(uint64_t a1)
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF18) + 44);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF20) + 36);
  v12 = sub_1C5595754();
  v13 = *(*(v12 - 8) + 8);
  v13(a1 + v10 + v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF28);
  v15 = *(v14 + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF30);
  if (!(*(*(v1 - 8) + 48))(a1 + v10 + v15, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF38);
    (*(*(v2 - 8) + 8))();
    v7 = a1 + v10 + v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF40) + 36);
    v8 = v7 + *(sub_1C5595244() + 20);
    v3 = sub_1C55953F4();
    (*(*(v3 - 8) + 8))(v8);
  }

  v6 = a1 + v10 + *(v14 + 64);
  if (*(v6 + 48))
  {
    sub_1C5412EA0(*(v6 + 24), *(v6 + 32), *(v6 + 40) & 1);

    if (*(v6 + 80))
    {
      sub_1C5412EA0(*(v6 + 56), *(v6 + 64), *(v6 + 72) & 1);
    }
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEF8);
  (v13)(a1 + *(v4 + 36), v12);
  return a1;
}

uint64_t sub_1C5370C64(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF18) + 44);
  v31 = *(a1 + v30);

  v36 = a2 + v30;
  *v36 = v31;
  *(v36 + 8) = *(a1 + v30 + 8);
  *(v36 + 16) = *(a1 + v30 + 16);
  v32 = *(a1 + v30 + 24);

  *(v36 + 24) = v32;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF20) + 36);
  v34 = sub_1C5595754();
  v35 = *(*(v34 - 8) + 16);
  v35(a2 + v30 + v33, a1 + v30 + v33);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF50);
  *(v36 + *(v2 + 36)) = *(a1 + v30 + *(v2 + 36));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF58);
  *(v36 + *(v3 + 36)) = *(a1 + v30 + *(v3 + 36));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF28);
  v38 = *(v37 + 48);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF30);
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(a1 + v30 + v38, 1))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF60);
    memcpy((a2 + v30 + v38), (a1 + v30 + v38), *(*(v9 - 8) + 64));
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF38);
    v27 = a2 + v30 + v38;
    v26 = a1 + v30 + v38;
    (*(*(v4 - 8) + 16))();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF40);
    v24 = (v27 + *(v5 + 36));
    v25 = (v26 + *(v5 + 36));
    *v24 = *v25;
    v6 = sub_1C5595244();
    v23 = v24 + *(v6 + 20);
    v22 = v25 + *(v6 + 20);
    v7 = sub_1C55953F4();
    (*(*(v7 - 8) + 16))(v23, v22);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA88);
    *(v24 + *(v8 + 36)) = *(v25 + *(v8 + 36));
    memcpy((v27 + *(v39 + 36)), (v26 + *(v39 + 36)), 0x29uLL);
    (*(v40 + 56))(v27, 0, 1, v39);
  }

  __dst = (a2 + v30 + *(v37 + 64));
  __src = (a1 + v30 + *(v37 + 64));
  if (__src[6])
  {
    *__dst = *__src;
    __dst[16] = *(__src + 16);
    v16 = __src[3];
    v17 = __src[4];
    v18 = *(__src + 40);
    sub_1C54130AC(v16, v17, v18 & 1);
    *(__dst + 3) = v16;
    *(__dst + 4) = v17;
    __dst[40] = v18 & 1;
    v19 = __src[6];
    sub_1C5594CF4();
    *(__dst + 6) = v19;
    if (__src[10])
    {
      v12 = __src[7];
      v13 = __src[8];
      v14 = *(__src + 72);
      sub_1C54130AC(v12, v13, v14 & 1);
      *(__dst + 7) = v12;
      *(__dst + 8) = v13;
      __dst[72] = v14 & 1;
      v15 = __src[10];
      sub_1C5594CF4();
      *(__dst + 10) = v15;
    }

    else
    {
      *(__dst + 56) = *(__src + 7);
      *(__dst + 72) = *(__src + 9);
    }
  }

  else
  {
    memcpy(__dst, __src, 0x58uLL);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EEF8);
  (v35)(a2 + *(v10 + 36), a1 + *(v10 + 36), v34);
  return a2;
}

uint64_t sub_1C5371254()
{

  MEMORY[0x1E69E5920](v0[16]);

  MEMORY[0x1E69E5920](v0[20]);
  MEMORY[0x1E69E5920](v0[22]);
  return swift_deallocObject();
}

uint64_t sub_1C537131C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFD8) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFF0);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFE8);
  }

  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1C5371430()
{

  MEMORY[0x1E69E5920](v0[16]);

  MEMORY[0x1E69E5920](v0[20]);
  MEMORY[0x1E69E5920](v0[22]);
  return swift_deallocObject();
}

uint64_t sub_1C53714F8()
{

  MEMORY[0x1E69E5920](v0[16]);

  MEMORY[0x1E69E5920](v0[20]);
  MEMORY[0x1E69E5920](v0[22]);
  return swift_deallocObject();
}

uint64_t sub_1C53715C0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF70);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF78) + 52);
  v2 = sub_1C5596A04();
  (*(*(v2 - 8) + 8))(a1 + v4);

  return a1;
}

uint64_t sub_1C53716A0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF70);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF78) + 52);
  v2 = sub_1C5596A04();
  (*(*(v2 - 8) + 8))(a1 + v4);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF80) + 36);
  if (*(a1 + v6))
  {
  }

  if (*(a1 + v6 + 16))
  {
  }

  return a1;
}

uint64_t sub_1C53717F8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF70);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF78) + 52);
  v2 = sub_1C5596A04();
  (*(*(v2 - 8) + 8))(a1 + v4);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF80) + 36);
  if (*(a1 + v6))
  {
  }

  if (*(a1 + v6 + 16))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF90);

  return a1;
}

uint64_t sub_1C5371974(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF70);
  (*(*(v2 - 8) + 16))(a2, a1);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF78);
  v18 = *(v19 + 52);
  v3 = sub_1C5596A04();
  (*(*(v3 - 8) + 16))(a2 + v18, a1 + v18);
  v21 = *(v19 + 56);
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);

  v4 = (a2 + v21);
  *v4 = v22;
  v4[1] = v23;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF80) + 36);
  if (*(a1 + v25))
  {
    v16 = *(a1 + v25);
    v17 = *(a1 + v25 + 8);

    v5 = (a2 + v25);
    *v5 = v16;
    v5[1] = v17;
  }

  else
  {
    *(a2 + v25) = *(a1 + v25);
  }

  v14 = a2 + v25;
  v15 = a1 + v25;
  if (*(a1 + v25 + 16))
  {
    v12 = *(v15 + 16);
    v13 = *(a1 + v25 + 24);

    *(v14 + 16) = v12;
    *(a2 + v25 + 24) = v13;
  }

  else
  {
    *(v14 + 16) = *(v15 + 16);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF88);
  memcpy((a2 + *(v6 + 36)), (a1 + *(v6 + 36)), 0x29uLL);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF90);
  v11 = a2 + *(v7 + 36);
  v10 = (a1 + *(v7 + 36));
  v9 = *v10;

  result = a2;
  *v11 = v9;
  *(v11 + 8) = *(v10 + 8);
  return result;
}

uint64_t sub_1C5371C98()
{

  MEMORY[0x1E69E5920](v0[16]);

  MEMORY[0x1E69E5920](v0[20]);
  MEMORY[0x1E69E5920](v0[22]);
  return swift_deallocObject();
}

uint64_t sub_1C5371D60()
{

  MEMORY[0x1E69E5920](v0[16]);

  MEMORY[0x1E69E5920](v0[20]);
  MEMORY[0x1E69E5920](v0[22]);
  return swift_deallocObject();
}

uint64_t sub_1C5371E28(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFF0);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFE8);
  }

  (*(*(v2 - 8) + 32))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C5371F38(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFF0);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFE8);
  }

  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C5372048(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFF0);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EFE8);
  }

  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C5372128()
{

  MEMORY[0x1E69E5920](v0[16]);

  MEMORY[0x1E69E5920](v0[20]);
  MEMORY[0x1E69E5920](v0[22]);
  return swift_deallocObject();
}

uint64_t sub_1C53721F0()
{

  MEMORY[0x1E69E5920](v0[16]);

  MEMORY[0x1E69E5920](v0[20]);
  MEMORY[0x1E69E5920](v0[22]);
  return swift_deallocObject();
}

uint64_t sub_1C53722B8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF30);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF38);
    (*(*(v2 - 8) + 8))(a1);
    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF40) + 36);
    v6 = v5 + *(sub_1C5595244() + 20);
    v3 = sub_1C55953F4();
    (*(*(v3 - 8) + 8))(v6);
  }

  return a1;
}

char *sub_1C53723F0(char *a1, char *a2)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF30);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF60);
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF38);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF40);
    v11 = &a2[*(v3 + 36)];
    v12 = &a1[*(v3 + 36)];
    *v11 = *v12;
    v4 = sub_1C5595244();
    v10 = &v11[*(v4 + 20)];
    v9 = &v12[*(v4 + 20)];
    v5 = sub_1C55953F4();
    (*(*(v5 - 8) + 32))(v10, v9);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA88);
    *&v11[*(v6 + 36)] = *&v12[*(v6 + 36)];
    memcpy(&a2[*(v15 + 36)], &a1[*(v15 + 36)], 0x29uLL);
    (*(v16 + 56))(a2, 0, 1, v15);
  }

  return a2;
}

char *sub_1C537263C(char *a1, char *a2)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF30);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF60);
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF38);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF40);
    v11 = &a2[*(v3 + 36)];
    v12 = &a1[*(v3 + 36)];
    *v11 = *v12;
    v4 = sub_1C5595244();
    v10 = &v11[*(v4 + 20)];
    v9 = &v12[*(v4 + 20)];
    v5 = sub_1C55953F4();
    (*(*(v5 - 8) + 16))(v10, v9);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA88);
    *&v11[*(v6 + 36)] = *&v12[*(v6 + 36)];
    memcpy(&a2[*(v15 + 36)], &a1[*(v15 + 36)], 0x29uLL);
    (*(v16 + 56))(a2, 0, 1, v15);
  }

  return a2;
}

uint64_t sub_1C5372888()
{

  MEMORY[0x1E69E5920](v0[16]);

  MEMORY[0x1E69E5920](v0[20]);
  MEMORY[0x1E69E5920](v0[22]);
  return swift_deallocObject();
}

uint64_t sub_1C5372950(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF38);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF40) + 36);
  v5 = *(sub_1C5595244() + 20);
  v2 = sub_1C55953F4();
  (*(*(v2 - 8) + 8))(a1 + v4 + v5);
  return a1;
}

uint64_t sub_1C5372A34(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF38);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF40);
  v9 = (a1 + *(v3 + 36));
  v10 = (a2 + *(v3 + 36));
  *v10 = *v9;
  v8 = *(sub_1C5595244() + 20);
  v4 = sub_1C55953F4();
  (*(*(v4 - 8) + 16))(&v10[v8], &v9[v8]);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15DA88);
  *&v10[*(v5 + 36)] = *&v9[*(v5 + 36)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15EF30);
  memcpy((a2 + *(v6 + 36)), (a1 + *(v6 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1C5372C00(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1D0) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1E8);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1E0);
  }

  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1C5372D14(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1E8);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1E0);
  }

  (*(*(v2 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1A8);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_1C5372EC4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_1C5596384();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 20) + 8) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 20) + 8);
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1C5372FE0(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_1C5596384();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C53730EC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1E8);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1E0);
  }

  (*(*(v2 - 8) + 32))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C53731FC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1E8);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1E0);
  }

  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1C537330C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1E8);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15F1E0);
  }

  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_1C537350C()
{

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_1C5373564()
{

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_1C53736C0()
{

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](*(v0 + 32));
  return swift_deallocObject();
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1C5375508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5376724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5377C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C537AF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C537B4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _AAUIDefaultFetchDescriptors()
{
  if (_AAUIDefaultFetchDescriptors_onceToken != -1)
  {
    _AAUIDefaultFetchDescriptors_cold_1();
  }

  v1 = _AAUIDefaultFetchDescriptors_fetchDescriptors;

  return v1;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1C537D35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose((v8 - 80), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C537D7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNSSManagerClass_block_invoke(uint64_t a1)
{
  NanoSystemSettingsLibrary();
  result = objc_getClass("NSSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNSSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getNSSManagerClass_block_invoke_cold_1();
    return NanoSystemSettingsLibrary();
  }

  return result;
}

uint64_t NanoSystemSettingsLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!NanoSystemSettingsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __NanoSystemSettingsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E820BE28;
    v5 = 0;
    NanoSystemSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoSystemSettingsLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!NanoSystemSettingsLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __NanoSystemSettingsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  NanoSystemSettingsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkNSSiCloudAccountsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoSystemSettingsLibrary();
  result = dlsym(v2, "kNSSiCloudAccountsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkNSSiCloudAccountsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkNSSiCloudPersonIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoSystemSettingsLibrary();
  result = dlsym(v2, "kNSSiCloudPersonIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkNSSiCloudPersonIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkNSSiCloudIsAuthenticatedKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoSystemSettingsLibrary();
  result = dlsym(v2, "kNSSiCloudIsAuthenticatedKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkNSSiCloudIsAuthenticatedKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C537FCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  objc_destroyWeak((v10 - 88));
  _Unwind_Resume(a1);
}

void sub_1C53809F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C5382C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _AAUISignInViewControllerCommonInit(void *a1)
{
  v1 = a1;
  *(v1 + 1113) = 1;
  *(v1 + 1115) = 1;
  *(v1 + 1114) = 1;
  *(v1 + 1119) = 0;
  *(v1 + 1118) = 0;
  v2 = [MEMORY[0x1E698DDF8] sharedBag];
  v3 = *(v1 + 157);
  *(v1 + 157) = v2;

  v4 = *(v1 + 149);
  *(v1 + 149) = &unk_1F44C0630;

  v5 = [MEMORY[0x1E69DF068] sharedManager];
  v6 = [v5 currentPersona];

  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    _AAUISignInViewControllerCommonInit_cold_1(v6, v7);
  }

  objc_storeStrong(v1 + 137, v6);
  v18 = 0;
  v8 = [v6 copyCurrentPersonaContextWithError:&v18];
  v9 = v18;
  v10 = *(v1 + 138);
  *(v1 + 138) = v8;

  if (v9)
  {
    v11 = _AAUILogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      _AAUISignInViewControllerCommonInit_cold_2(v9, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  *(v1 + 143) = 2;
}

void sub_1C53885B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53888D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5388EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C538944C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBYWarrantyClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SetupAssistantLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E820C188;
    v6 = 0;
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SetupAssistantLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BYWarranty");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBYWarrantyClass_block_invoke_cold_1();
  }

  getBYWarrantyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SetupAssistantLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1C538C4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C538D4AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C538E7CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C538E948(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C538ED68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C538F338(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C538FC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getFAFamilySetupGetStartedViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFAFamilySetupGetStartedViewControllerClass_softClass;
  v7 = getFAFamilySetupGetStartedViewControllerClass_softClass;
  if (!getFAFamilySetupGetStartedViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFAFamilySetupGetStartedViewControllerClass_block_invoke;
    v3[3] = &unk_1E820BE08;
    v3[4] = &v4;
    __getFAFamilySetupGetStartedViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C539032C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getFAFamilySetupOrganizerViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFAFamilySetupOrganizerViewControllerClass_softClass;
  v7 = getFAFamilySetupOrganizerViewControllerClass_softClass;
  if (!getFAFamilySetupOrganizerViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFAFamilySetupOrganizerViewControllerClass_block_invoke;
    v3[3] = &unk_1E820BE08;
    v3[4] = &v4;
    __getFAFamilySetupOrganizerViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C53904AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getFAFamilySetupGetStartedViewControllerClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FAFamilySetupGetStartedViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFAFamilySetupGetStartedViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFAFamilySetupGetStartedViewControllerClass_block_invoke_cold_1();
    FamilyCircleUILibrary();
  }
}

void FamilyCircleUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __FamilyCircleUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E820C3E0;
    v3 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!FamilyCircleUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __FamilyCircleUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFAFamilySetupOrganizerViewControllerClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary();
  result = objc_getClass("FAFamilySetupOrganizerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFAFamilySetupOrganizerViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getFAFamilySetupOrganizerViewControllerClass_block_invoke_cold_1();
    return __getFAFamilySetupBuddyMLRequestClass_block_invoke(v3);
  }

  return result;
}

AAUIAppleLogoMicaView *__getFAFamilySetupBuddyMLRequestClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary();
  result = objc_getClass("FAFamilySetupBuddyMLRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFAFamilySetupBuddyMLRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getFAFamilySetupBuddyMLRequestClass_block_invoke_cold_1();
    return [(AAUIAppleLogoMicaView *)v3 init];
  }

  return result;
}

void sub_1C539315C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C5393594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C5394C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C53955B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _AAUIImageControlInit(void *a1)
{
  v55[11] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69DCAE0];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  v9 = v2[57];
  v2[57] = v8;

  [v2[57] setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [[AAUILabel alloc] initWithFrame:v4, v5, v6, v7];
  v11 = v2[58];
  v2[58] = v10;

  v12 = v2[58];
  v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.959999979];
  [v12 setBackgroundColor:v13];

  [v2[58] setTextAlignment:1];
  v14 = v2[58];
  v15 = [MEMORY[0x1E69DC888] whiteColor];
  [v14 setTextColor:v15];

  [v2[58] setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
  v17 = v2[59];
  v2[59] = v16;

  v18 = v2[59];
  v19 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.300000012];
  [v18 setBackgroundColor:v19];

  [v2[59] setHidden:{objc_msgSend(v2, "isHighlighted") ^ 1}];
  [v2[59] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 addSubview:v2[57]];
  [v2 addSubview:v2[58]];
  [v2 addSubview:v2[59]];
  v42 = MEMORY[0x1E696ACD8];
  v54 = [v2[57] topAnchor];
  v53 = [v2 topAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v55[0] = v52;
  v51 = [v2[57] bottomAnchor];
  v50 = [v2 bottomAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v55[1] = v49;
  v48 = [v2[57] leadingAnchor];
  v47 = [v2 leadingAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v55[2] = v46;
  v45 = [v2[57] trailingAnchor];
  v44 = [v2 trailingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v55[3] = v43;
  v41 = [v2[58] bottomAnchor];
  v40 = [v2 bottomAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v55[4] = v39;
  v38 = [v2[58] leadingAnchor];
  v37 = [v2 leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v55[5] = v36;
  v35 = [v2[58] trailingAnchor];
  v34 = [v2 trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v55[6] = v33;
  v32 = [v2[59] topAnchor];
  v31 = [v2 topAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v55[7] = v30;
  v29 = [v2[59] bottomAnchor];
  v20 = [v2 bottomAnchor];
  v21 = [v29 constraintEqualToAnchor:v20];
  v55[8] = v21;
  v22 = [v2[59] leadingAnchor];
  v23 = [v2 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  v55[9] = v24;
  v25 = [v2[59] trailingAnchor];
  v26 = [v2 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v55[10] = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:11];
  [v42 activateConstraints:v28];

  [v2 _updateLabelVisibility];
  [v2 _updateOverlayViewVisibility];
}

void sub_1C5399BFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C539D150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id getFAFamilyDetailsCacheClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFAFamilyDetailsCacheClass_softClass;
  v7 = getFAFamilyDetailsCacheClass_softClass;
  if (!getFAFamilyDetailsCacheClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getFAFamilyDetailsCacheClass_block_invoke;
    v3[3] = &unk_1E820BE08;
    v3[4] = &v4;
    __getFAFamilyDetailsCacheClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C539D6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFAFamilyDetailsCacheClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FamilyCircleUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E820C710;
    v6 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (FamilyCircleUILibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FAFamilyDetailsCache");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFAFamilyDetailsCacheClass_block_invoke_cold_1();
  }

  getFAFamilyDetailsCacheClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FamilyCircleUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void sub_1C539DDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFALaunchScreenTimeSetupHookClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FamilyCircleUILibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E820C728;
    v6 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (FamilyCircleUILibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FALaunchScreenTimeSetupHook");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFALaunchScreenTimeSetupHookClass_block_invoke_cold_1();
  }

  getFALaunchScreenTimeSetupHookClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FamilyCircleUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

void sub_1C539FA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53A28AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C53A2DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C53A381C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMSMessageRichLinkLayoutClass_block_invoke(uint64_t a1)
{
  MessagesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MSMessageRichLinkLayout");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMSMessageRichLinkLayoutClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMSMessageRichLinkLayoutClass_block_invoke_cold_1();
    MessagesLibrary();
  }
}

void MessagesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MessagesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MessagesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E820C870;
    v3 = 0;
    MessagesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MessagesLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MessagesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MessagesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getMSMessageLiveLayoutClass_block_invoke(uint64_t a1)
{
  MessagesLibrary();
  result = objc_getClass("MSMessageLiveLayout");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMSMessageLiveLayoutClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMSMessageLiveLayoutClass_block_invoke_cold_1();
    return __getMSMessageClass_block_invoke(v3);
  }

  return result;
}

Class __getMSMessageClass_block_invoke(uint64_t a1)
{
  MessagesLibrary();
  result = objc_getClass("MSMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMSMessageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMSMessageClass_block_invoke_cold_1();
    return __getMSSessionClass_block_invoke(v3);
  }

  return result;
}

AAUISignInFlowController *__getMSSessionClass_block_invoke(uint64_t a1)
{
  MessagesLibrary();
  result = objc_getClass("MSSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMSSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMSSessionClass_block_invoke_cold_1();
    return [(AAUISignInFlowController *)v3 init];
  }

  return result;
}

void sub_1C53A7298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak((v11 + 56));
  objc_destroyWeak((v12 - 96));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1C53AA2F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C53AD528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1C53AF6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFAFamilySetupPrompterClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary_2)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FamilyCircleUILibraryCore_block_invoke_2;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E820CDD8;
    v6 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary_2 = _sl_dlopen();
    v2 = v4[0];
    if (FamilyCircleUILibraryCore_frameworkLibrary_2)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FAFamilySetupPrompter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFAFamilySetupPrompterClass_block_invoke_cold_1();
  }

  getFAFamilySetupPrompterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FamilyCircleUILibraryCore_block_invoke_2()
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary_2 = result;
  return result;
}

void sub_1C53B4134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C53B4378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53B4DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53B5A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53B72A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C53B7A04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void __getFALaunchScreenTimeSetupHookClass_block_invoke_0(uint64_t a1)
{
  FamilyCircleUILibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FALaunchScreenTimeSetupHook");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFALaunchScreenTimeSetupHookClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFALaunchScreenTimeSetupHookClass_block_invoke_cold_1();
    FamilyCircleUILibrary_0();
  }
}

void FamilyCircleUILibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary_3)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __FamilyCircleUILibraryCore_block_invoke_3;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E820D200;
    v3 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!FamilyCircleUILibraryCore_frameworkLibrary_3)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __FamilyCircleUILibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary_3 = result;
  return result;
}

Class __getFARUIHookProviderClass_block_invoke(uint64_t a1)
{
  FamilyCircleUILibrary_0();
  result = objc_getClass("FARUIHookProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFARUIHookProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getFARUIHookProviderClass_block_invoke_cold_1();
    return OUTLINED_FUNCTION_3_1(v3);
  }

  return result;
}

void OUTLINED_FUNCTION_3_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id getAMSUIPaymentVerificationTokenFetchTaskClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAMSUIPaymentVerificationTokenFetchTaskClass_softClass;
  v7 = getAMSUIPaymentVerificationTokenFetchTaskClass_softClass;
  if (!getAMSUIPaymentVerificationTokenFetchTaskClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAMSUIPaymentVerificationTokenFetchTaskClass_block_invoke;
    v3[3] = &unk_1E820BE08;
    v3[4] = &v4;
    __getAMSUIPaymentVerificationTokenFetchTaskClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C53BB730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAMSUIPaymentVerificationTokenFetchTaskClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AppleMediaServicesUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AppleMediaServicesUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E820D240;
    v6 = 0;
    AppleMediaServicesUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AppleMediaServicesUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AMSUIPaymentVerificationTokenFetchTask");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAMSUIPaymentVerificationTokenFetchTaskClass_block_invoke_cold_1();
  }

  getAMSUIPaymentVerificationTokenFetchTaskClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleMediaServicesUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleMediaServicesUILibraryCore_frameworkLibrary = result;
  return result;
}

void _AAUISwitchTableViewCellInit(void *a1)
{
  v1 = MEMORY[0x1E69DCFD0];
  v5 = a1;
  v2 = [v1 alloc];
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v4 = v5[128];
  v5[128] = v3;

  [v5[128] addTarget:v5 action:sel__controlValueChanged_ forControlEvents:4096];
  [v5 setAccessoryView:v5[128]];
}

void sub_1C53BE73C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _AAUIBuddyViewCommonInit(void *a1)
{
  v26[5] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69DCC20];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = v2[51];
  v2[51] = v3;

  [v2[51] setIdentifier:@"AAUIBuddyViewContentLayoutGuide"];
  [v2 addLayoutGuide:v2[51]];
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v2 setBackgroundColor:v5];

  v6 = [v2[51] leadingAnchor];
  v7 = [v2 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:0.0];

  v25 = v8;
  LODWORD(v9) = 1148829696;
  [v8 setPriority:v9];
  v10 = [v2[51] trailingAnchor];
  v11 = [v2 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:-0.0];

  LODWORD(v13) = 1148829696;
  [v12 setPriority:v13];
  v23 = MEMORY[0x1E696ACD8];
  v26[0] = v8;
  v26[1] = v12;
  v24 = [v2[51] topAnchor];
  v14 = [v2 topAnchor];
  v15 = [v24 constraintEqualToAnchor:v14];
  v26[2] = v15;
  v16 = [v2[51] bottomAnchor];
  v17 = [v2 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v26[3] = v18;
  v19 = [v2[51] centerXAnchor];
  v20 = [v2 centerXAnchor];

  v21 = [v19 constraintEqualToAnchor:v20];
  v26[4] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
  [v23 activateConstraints:v22];
}

void sub_1C53C1254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void _AAUIHeaderViewCommonInit(void *a1)
{
  v39[4] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69DCF90];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  v9 = v2[52];
  v2[52] = v8;

  [v2[52] setAxis:1];
  [v2[52] setAlignment:0];
  [v2[52] setBaselineRelativeArrangement:1];
  [v2[52] setDistribution:0];
  [v2[52] setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v4, v5, v6, v7}];
  v11 = v2[53];
  v2[53] = v10;

  LODWORD(v12) = 1148846080;
  [v2[53] setContentCompressionResistancePriority:1 forAxis:v12];
  [v2[53] setHidden:1];
  [v2[53] setContentMode:1];
  v13 = [[AAUILabel alloc] initWithFrame:v4, v5, v6, v7];
  v14 = v2[54];
  v2[54] = v13;

  LODWORD(v15) = 1148846080;
  [v2[54] setContentCompressionResistancePriority:1 forAxis:v15];
  [v2[54] setLineBreakMode:0];
  [v2[54] setNumberOfLines:0];
  [v2[54] setTextAlignment:1];
  v16 = [[AAUILabel alloc] initWithFrame:v4, v5, v6, v7];
  v17 = v2[55];
  v2[55] = v16;

  LODWORD(v18) = 1148846080;
  [v2[55] setContentCompressionResistancePriority:1 forAxis:v18];
  [v2[55] setLineBreakMode:0];
  [v2[55] setNumberOfLines:0];
  [v2[55] setTextAlignment:1];
  [v2[52] addArrangedSubview:v2[53]];
  [v2[52] addArrangedSubview:v2[54]];
  [v2[52] addArrangedSubview:v2[55]];
  [v2[52] setCustomSpacing:v2[53] afterView:64.0];
  [v2 addSubview:v2[52]];
  v19 = [v2[52] bottomAnchor];
  v20 = [v2 contentLayoutGuide];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:-36.0];

  LODWORD(v23) = 1148829696;
  v33 = v22;
  [v22 setPriority:v23];
  v34 = MEMORY[0x1E696ACD8];
  v37 = [v2[52] topAnchor];
  v38 = [v2 contentLayoutGuide];
  v36 = [v38 topAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v39[0] = v35;
  v24 = [v2[52] leftAnchor];
  v25 = [v2 contentLayoutGuide];
  v26 = [v25 leftAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];
  v39[1] = v27;
  v28 = [v2[52] rightAnchor];
  v29 = [v2 contentLayoutGuide];
  v30 = [v29 rightAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  v39[2] = v31;
  v39[3] = v22;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
  [v34 activateConstraints:v32];

  [v2 _updateStackViewSpacing];
  [v2 _updateLabelFonts];
}

void sub_1C53C58B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C53C5BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53C6168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53C9C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53C9EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void __getPKSetupAssistantContextClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKSetupAssistantContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKSetupAssistantContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getPKSetupAssistantContextClass_block_invoke_cold_1();
    PassKitUILibrary();
  }
}

void PassKitUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PassKitUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E820D490;
    v3 = 0;
    PassKitUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PassKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitUILibraryCore_frameworkLibrary = result;
  return result;
}

AAUICDPWalrusStatusUpdateHook *__getPKPaymentSetupAssistantResetControllerClass_block_invoke(uint64_t a1)
{
  PassKitUILibrary();
  result = objc_getClass("PKPaymentSetupAssistantResetController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPaymentSetupAssistantResetControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getPKPaymentSetupAssistantResetControllerClass_block_invoke_cold_1();
    return [(AAUICDPWalrusStatusUpdateHook *)v3 initWithAppleAccount:v4, v5];
  }

  return result;
}

void sub_1C53CD304(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C53CE4B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C53CE978(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_1C53CF030(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id _AAUILogSystem()
{
  if (_AAUILogSystem_onceToken != -1)
  {
    _AAUILogSystem_cold_1();
  }

  v1 = _AAUILogSystem_log;

  return v1;
}

id _AAUISignpostLogSystem()
{
  if (_AAUISignpostLogSystem_onceToken != -1)
  {
    _AAUISignpostLogSystem_cold_1();
  }

  v1 = _AAUISignpostLogSystem_log;

  return v1;
}

id _AAUISignOutLogSystem()
{
  if (_AAUISignOutLogSystem_onceToken != -1)
  {
    _AAUISignOutLogSystem_cold_1();
  }

  v1 = _AAUISignOutLogSystem_log;

  return v1;
}

void _AAUILogGreenTea(void *a1)
{
  v1 = MEMORY[0x1E696AAE8];
  v2 = a1;
  v5 = [v1 mainBundle];
  v3 = [v5 bundleIdentifier];
  [v3 UTF8String];
  ct_green_tea_logger_create();
  v4 = getCTGreenTeaOsLogHandle();
  [v2 UTF8String];

  os_log_with_args();
  ct_green_tea_logger_destroy();
}

void _AAUILogGreenTeaTransmittingPhotosOrVideos()
{
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v4 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v1 processName];

  v3 = [MEMORY[0x1E695DF00] now];
  _AAUILogGreenTeaWithFormat(@"%@ <%@>[Settings][%@] : Transmitting photos or videos");
}

os_signpost_id_t _AAUISignpostCreate(NSObject *a1)
{
  v1 = os_signpost_id_generate(a1);
  mach_continuous_time();
  return v1;
}

unint64_t _AAUISignpostGetNanoseconds(uint64_t a1, uint64_t a2)
{
  if (_AAUISignpostGetNanoseconds_onceToken != -1)
  {
    _AAUISignpostGetNanoseconds_cold_1();
  }

  v3 = mach_continuous_time();
  LODWORD(v4) = _AAUISignpostGetNanoseconds_timebase_info;
  LODWORD(v5) = *algn_1EC15FC84;
  return (v4 / v5 * (v3 - a2));
}

void sub_1C53D28E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFAProfilePictureStoreClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary_4)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FamilyCircleUILibraryCore_block_invoke_4;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E820D6F0;
    v6 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary_4 = _sl_dlopen();
    v2 = v4[0];
    if (FamilyCircleUILibraryCore_frameworkLibrary_4)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FAProfilePictureStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFAProfilePictureStoreClass_block_invoke_cold_1();
  }

  getFAProfilePictureStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FamilyCircleUILibraryCore_block_invoke_4()
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary_4 = result;
  return result;
}

void sub_1C53D4370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53D4A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C53D6E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__11(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id _AAUIImageForButtonDirection(uint64_t a1, int a2)
{
  if (!_AAUIImageForButtonDirection__arrowControlsImageCache)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v5 = _AAUIImageForButtonDirection__arrowControlsImageCache;
    _AAUIImageForButtonDirection__arrowControlsImageCache = v4;
  }

  v6 = @"-down";
  if (a1 != -1)
  {
    v6 = &stru_1F447F790;
  }

  if (a1 == 1)
  {
    v6 = @"-up";
  }

  v7 = v6;
  v8 = @"-small";
  if (!a2)
  {
    v8 = &stru_1F447F790;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"chevron%@%@.png", v7, v8];
  v10 = [_AAUIImageForButtonDirection__arrowControlsImageCache objectForKey:v9];
  if (!v10)
  {
    v11 = MEMORY[0x1E69DCAB8];
    v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v11 imageNamed:v9 inBundle:v12];

    if (v10)
    {
      [_AAUIImageForButtonDirection__arrowControlsImageCache setObject:v10 forKey:v9];
    }
  }

  return v10;
}

void sub_1C53D9904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id AAUICopyCompositeName(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  [v5 setGivenName:v4];

  [v5 setFamilyName:v3];
  v6 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v5 style:0 options:0];

  return v6;
}

void sub_1C53DD6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53DDDCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getMSMessageRichLinkLayoutClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMSMessageRichLinkLayoutClass_softClass_0;
  v7 = getMSMessageRichLinkLayoutClass_softClass_0;
  if (!getMSMessageRichLinkLayoutClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMSMessageRichLinkLayoutClass_block_invoke_0;
    v3[3] = &unk_1E820BE08;
    v3[4] = &v4;
    __getMSMessageRichLinkLayoutClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C53DE2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMSMessageLiveLayoutClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMSMessageLiveLayoutClass_softClass_0;
  v7 = getMSMessageLiveLayoutClass_softClass_0;
  if (!getMSMessageLiveLayoutClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMSMessageLiveLayoutClass_block_invoke_0;
    v3[3] = &unk_1E820BE08;
    v3[4] = &v4;
    __getMSMessageLiveLayoutClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C53DE3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMSMessageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMSMessageClass_softClass_0;
  v7 = getMSMessageClass_softClass_0;
  if (!getMSMessageClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMSMessageClass_block_invoke_0;
    v3[3] = &unk_1E820BE08;
    v3[4] = &v4;
    __getMSMessageClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C53DE494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMSSessionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMSSessionClass_softClass_0;
  v7 = getMSSessionClass_softClass_0;
  if (!getMSSessionClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getMSSessionClass_block_invoke_0;
    v3[3] = &unk_1E820BE08;
    v3[4] = &v4;
    __getMSSessionClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1C53DE574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMSMessageRichLinkLayoutClass_block_invoke_0(uint64_t a1)
{
  MessagesLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MSMessageRichLinkLayout");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMSMessageRichLinkLayoutClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMSMessageRichLinkLayoutClass_block_invoke_cold_1();
    MessagesLibrary_0();
  }
}

void MessagesLibrary_0()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!MessagesLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __MessagesLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E820D980;
    v3 = 0;
    MessagesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!MessagesLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MessagesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  MessagesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getMSMessageLiveLayoutClass_block_invoke_0(uint64_t a1)
{
  MessagesLibrary_0();
  result = objc_getClass("MSMessageLiveLayout");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMSMessageLiveLayoutClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMSMessageLiveLayoutClass_block_invoke_cold_1();
    return __getMSMessageClass_block_invoke_0(v3);
  }

  return result;
}

Class __getMSMessageClass_block_invoke_0(uint64_t a1)
{
  MessagesLibrary_0();
  result = objc_getClass("MSMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMSMessageClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMSMessageClass_block_invoke_cold_1();
    return __getMSSessionClass_block_invoke_0(v3);
  }

  return result;
}

AAUIAgeAttestationStateProvider *__getMSSessionClass_block_invoke_0(uint64_t a1)
{
  MessagesLibrary_0();
  result = objc_getClass("MSSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMSSessionClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMSSessionClass_block_invoke_cold_1();
    return [(AAUIAgeAttestationStateProvider *)v3 init];
  }

  return result;
}

void sub_1C53DF9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = [v9 description];
    NSLog(&cfstr_UnableToCopyAa.isa);

    objc_end_catch();
    JUMPOUT(0x1C53DF9B4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1C53E05E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53E1728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53E191C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C53E20D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C53E2374(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1C53E3C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53E45EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_1C53E4828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak(&a9);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53E4A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_1C53E4C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak(&a9);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53E5DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53E6054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53E6664(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C53E6FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C53E92B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C53E9434(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C53EAB98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1C53EB948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53EC754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53ED018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53ED7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C53EDEC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C53EE968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void sub_1C53F03EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C53F0EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getPKPassLibraryClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PassKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PassKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E820DE48;
    v6 = 0;
    PassKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PassKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PKPassLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPKPassLibraryClass_block_invoke_cold_1();
  }

  getPKPassLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PassKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1C53F202C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t AKServiceTypeFromAIDAServiceType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E698C218]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E698C238]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E698C230]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E698C220]])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E698C228]])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1C53F4338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C53F4788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C53F521C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFAAgeRangeViewControllerProviderClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FamilyCircleUILibraryCore_frameworkLibrary_5)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FamilyCircleUILibraryCore_block_invoke_5;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E820DF98;
    v6 = 0;
    FamilyCircleUILibraryCore_frameworkLibrary_5 = _sl_dlopen();
    v2 = v4[0];
    if (FamilyCircleUILibraryCore_frameworkLibrary_5)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FAAgeRangeViewControllerProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFAAgeRangeViewControllerProviderClass_block_invoke_cold_1();
  }

  getFAAgeRangeViewControllerProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FamilyCircleUILibraryCore_block_invoke_5()
{
  result = _sl_dlopen();
  FamilyCircleUILibraryCore_frameworkLibrary_5 = result;
  return result;
}

void sub_1C53F76D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBFFPaneHeaderViewClass_block_invoke(uint64_t a1)
{
  SetupAssistantUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BFFPaneHeaderView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBFFPaneHeaderViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getBFFPaneHeaderViewClass_block_invoke_cold_1();
    SetupAssistantUILibrary();
  }
}

void SetupAssistantUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!SetupAssistantUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __SetupAssistantUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E820DFB0;
    v3 = 0;
    SetupAssistantUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SetupAssistantUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SetupAssistantUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SetupAssistantUILibraryCore_frameworkLibrary = result;
  return result;
}

AAUIOBTableWelcomeController *__getBFFStyleClass_block_invoke(uint64_t a1)
{
  SetupAssistantUILibrary();
  result = objc_getClass("BFFStyle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBFFStyleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getBFFStyleClass_block_invoke_cold_1();
    return [(AAUIOBTableWelcomeController *)v3 initWithViewModel:v4, v5];
  }

  return result;
}

void sub_1C53F9C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getDKPresenterClass_block_invoke(uint64_t a1)
{
  DisembarkUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("DKPresenter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDKPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getDKPresenterClass_block_invoke_cold_1();
    DisembarkUILibrary();
  }
}

void DisembarkUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!DisembarkUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __DisembarkUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E820DFF8;
    v3 = 0;
    DisembarkUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!DisembarkUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __DisembarkUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DisembarkUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getDKConfigurationClass_block_invoke(uint64_t a1)
{
  DisembarkUILibrary();
  result = objc_getClass("DKConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDKConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getDKConfigurationClass_block_invoke_cold_1();
    return +[(AAUITrustedContactListCell *)v3];
  }

  return result;
}

char *SignInDataclassActionOfferModel.init()()
{
  v36 = 0;
  v0 = OBJC_IVAR___AAUISignInDataclassActionModel_title;
  *OBJC_IVAR___AAUISignInDataclassActionModel_title = 0;
  *(v0 + 8) = 0;
  v1 = &v36[OBJC_IVAR___AAUISignInDataclassActionModel_detailText];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v36[OBJC_IVAR___AAUISignInDataclassActionModel_primaryButton];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v36[OBJC_IVAR___AAUISignInDataclassActionModel_secondaryButton];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v36[OBJC_IVAR___AAUISignInDataclassActionModel_contentViewLayout] = 2;
  *&v36[OBJC_IVAR___AAUISignInDataclassActionModel_image] = 0;
  v4 = &v36[OBJC_IVAR___AAUISignInDataclassActionModel_imageName];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v36[OBJC_IVAR___AAUISignInDataclassActionModel_symbolName];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v36[OBJC_IVAR___AAUISignInDataclassActionModel_symbolAccessibilityLabel];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v36[OBJC_IVAR___AAUISignInDataclassActionModel_contentView] = 0;
  *&v36[OBJC_IVAR___AAUISignInDataclassActionModel_secondaryView] = 0;
  v7 = &v36[OBJC_IVAR___AAUISignInDataclassActionModel_helpLinkTitle];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v36[OBJC_IVAR___AAUISignInDataclassActionModel_helpLinkURL];
  *v8 = 0;
  *(v8 + 1) = 0;
  v35.receiver = v36;
  v35.super_class = type metadata accessor for SignInDataclassActionOfferModel();
  v34 = objc_msgSendSuper2(&v35, sel_init);
  MEMORY[0x1E69E5928](v34);
  v36 = v34;
  v15 = sub_1C55965F4();
  v17 = v9;
  v16 = &v34[OBJC_IVAR___AAUISignInDataclassActionModel_symbolName];
  swift_beginAccess();
  *v16 = v15;
  v16[1] = v17;

  swift_endAccess();
  v18 = v36;
  sub_1C55965F4();
  v19 = sub_1C54637B4();
  v21 = v10;

  v20 = &v18[OBJC_IVAR___AAUISignInDataclassActionModel_title];
  swift_beginAccess();
  *v20 = v19;
  v20[1] = v21;

  swift_endAccess();
  v22 = v36;
  sub_1C55965F4();
  v23 = sub_1C54637B4();
  v25 = v11;

  v24 = &v22[OBJC_IVAR___AAUISignInDataclassActionModel_detailText];
  swift_beginAccess();
  *v24 = v23;
  v24[1] = v25;

  swift_endAccess();
  v26 = v36;
  sub_1C55965F4();
  v27 = sub_1C54637B4();
  v29 = v12;

  v28 = &v26[OBJC_IVAR___AAUISignInDataclassActionModel_primaryButton];
  swift_beginAccess();
  *v28 = v27;
  v28[1] = v29;

  swift_endAccess();
  v30 = v36;
  sub_1C55965F4();
  v31 = sub_1C54637B4();
  v33 = v13;

  v32 = &v30[OBJC_IVAR___AAUISignInDataclassActionModel_secondaryButton];
  swift_beginAccess();
  *v32 = v31;
  v32[1] = v33;

  swift_endAccess();
  MEMORY[0x1E69E5920](v36);
  return v34;
}

uint64_t sub_1C53FE758()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionModel_title);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C53FE8A0(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionModel_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C53FE93C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xB8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1C53FE9E0(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xC0))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C53FEC0C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionModel_detailText);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C53FED54(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionModel_detailText);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C53FEDF0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xD0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1C53FEE94(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xD8))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C53FF080()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionModel_primaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C53FF1C8(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionModel_primaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C53FF264@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xE8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1C53FF308(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xF0))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C53FF4F4()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionModel_secondaryButton);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C53FF63C(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionModel_secondaryButton);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C53FF6D8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x100))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1C53FF784(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x108))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C53FF90C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionModel_contentViewLayout);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1C53FF9C8(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___AAUISignInDataclassActionModel_contentViewLayout);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1C53FFA34@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x118))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C53FFADC(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x1E69E5928]();
  (*((*v3 & *MEMORY[0x1E69E7D40]) + 0x120))(v4);
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1C53FFC58()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionModel_image);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1C53FFD30(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignInDataclassActionModel_image);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1C53FFDC8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x130))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C53FFE70(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x138))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C5400058()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionModel_imageName);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C54001A0(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionModel_imageName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C540023C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x148))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1C54002E8(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x150))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C54004DC()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionModel_symbolName);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5400624(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionModel_symbolName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C54006C0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x160))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1C540076C(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x168))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C5400960()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionModel_symbolAccessibilityLabel);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5400AA8(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionModel_symbolAccessibilityLabel);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5400B44@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x178))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1C5400BF0(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x180))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C5400D88()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionModel_contentView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5400E60(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignInDataclassActionModel_contentView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1C5400EF8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x190))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C5400FA0(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x198))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C540112C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionModel_secondaryView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5401204(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR___AAUISignInDataclassActionModel_secondaryView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1C540129C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1A8))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C5401344(uint64_t *a1, void *a2)
{
  sub_1C5402C1C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1B0))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C540152C()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionModel_helpLinkTitle);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5401674(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionModel_helpLinkTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5401710@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1C0))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1C54017BC(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1C8))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C54019B0()
{
  v2 = (v0 + OBJC_IVAR___AAUISignInDataclassActionModel_helpLinkURL);
  swift_beginAccess();
  v3 = *v2;
  sub_1C5594CF4();
  swift_endAccess();
  return v3;
}

uint64_t sub_1C5401AF8(uint64_t a1, uint64_t a2)
{
  sub_1C5594CF4();
  v5 = (v2 + OBJC_IVAR___AAUISignInDataclassActionModel_helpLinkURL);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1C5401B94@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v5 & *MEMORY[0x1E69E7D40]) + 0x1D8))(v2);
  a2[1] = v3;
  return MEMORY[0x1E69E5920](v5);
}

uint64_t sub_1C5401C40(void *a1, void *a2)
{
  sub_1C5402BDC(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x1E0))(v6, v5);
  return MEMORY[0x1E69E5920](v4);
}

id SignInDataclassActionOfferModel.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInDataclassActionOfferModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C5402BDC(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_1C5594CF4();
  result = a2;
  a2[1] = v4;
  return result;
}

void *sub_1C5402C1C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928]();
  result = a2;
  *a2 = v3;
  return result;
}

uint64_t sub_1C5402C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  sub_1C5594CF4();
  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCD0);
  sub_1C5402CCC(v6, v2, a2);
}

uint64_t sub_1C5402CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[1] = a3;
  v7 = a1;
  v8 = a2;
  v9 = a2;
  v5 = *(a2 - 8);
  v6 = a2 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v4[2] = v4 - v4[0];
  (*(v5 + 16))();
  sub_1C5594E44();
  return (*(v5 + 8))(v7, v8);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  v4 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v4;
}

uint64_t sub_1C5402E28()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t sub_1C5402ED4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0x98))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C5402F74(uint64_t *a1, void *a2)
{
  sub_1C540955C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xA0))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C5403020()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594CF4();
  sub_1C5594E94();
}

void (*sub_1C54030CC(void *a1))(uint64_t *a1, char a2)
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

void sub_1C54031B4(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v2);
  }

  else
  {
    v3 = *(v4 + 32);
    (*(v4 + 56))(v4, 0);

    MEMORY[0x1E69E5920](v3);
  }

  free(v4);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t sub_1C5403328()
{
  v2 = qword_1EC15BCD8;
  if (!qword_1EC15BCD8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15BCD8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1C540338C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C5403408(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE8);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
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

void (*sub_1C540355C(void *a1))(void **a1, char a2)
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
  sub_1C540338C();
  return sub_1C5403680;
}

void sub_1C5403680(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C5403408(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C5403408(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C540377C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel__trustedContacts;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C540381C(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel__trustedContacts;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1C540397C()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594E84();

  MEMORY[0x1E69E5920](v0);
  return v2;
}

uint64_t sub_1C5403A28@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v2 = MEMORY[0x1E69E5928]();
  *a2 = (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xC8))(v2);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C5403AC8(uint64_t *a1, void *a2)
{
  sub_1C540955C(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x1E69E5928](*a2);
  (*((*v4 & *MEMORY[0x1E69E7D40]) + 0xD0))(v5);
  return MEMORY[0x1E69E5920](v4);
}

uint64_t sub_1C5403B74()
{
  MEMORY[0x1E69E5928](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1C5594CF4();
  sub_1C5594E94();
}

void (*sub_1C5403C20(void *a1))(uint64_t *a1, char a2)
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

uint64_t sub_1C5403D08()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  sub_1C5594E54();
  return swift_endAccess();
}

uint64_t sub_1C5403D84(uint64_t a1)
{
  v7 = a1;
  v11 = 0;
  v10 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE8);
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
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

void (*sub_1C5403ED8(void *a1))(void **a1, char a2)
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
  sub_1C5403D08();
  return sub_1C5403FFC;
}

void sub_1C5403FFC(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1C5403D84(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1C5403D84(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1C54040F8@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel__trustedContactOwners;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_1C5404198(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v7 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  (*(v9 + 16))();
  v6 = v1 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel__trustedContactOwners;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1C54042F8()
{
  v2 = *(v0 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_accountManager);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1C5404340()
{
  v2 = *(v0 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_contactsProvider);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1C54043B0()
{
  v2 = *(v0 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_telemetryFlowID);
  sub_1C5594CF4();
  return v2;
}

uint64_t sub_1C54043FC()
{
  v2 = *(v0 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_custodianController);
  MEMORY[0x1E69E5928]();
  return v2;
}

uint64_t sub_1C5404444()
{
  v2 = *(v0 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_reviewCustodianListViewModel);

  return v2;
}

uint64_t sub_1C5404484()
{
  v2 = (v0 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_repairHelper);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_1C54044F4(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_repairHelper);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

void *sub_1C540465C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v46 = a1;
  v32 = a2;
  v41 = a3;
  v45 = a4;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCE0);
  v19 = *(v27 - 8);
  v20 = v27 - 8;
  v18 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = &v18 - v18;
  v53 = MEMORY[0x1EEE9AC00](v46);
  v31 = 1;
  v52 = v5 & 1;
  v50 = v6;
  v51 = v7;
  v54 = v4;
  v22 = v4;
  v21 = OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel__trustedContacts;
  v43 = 0;
  v23 = sub_1C5403328();
  v8 = sub_1C5596E04();
  sub_1C5402C5C(v8, v26);
  v29 = *(v19 + 32);
  v28 = v19 + 32;
  v29(&v22[v21], v26, v27);
  v25 = v54;
  v24 = OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel__trustedContactOwners;
  v9 = sub_1C5596E04();
  sub_1C5402C5C(v9, v26);
  v29(&v25[v24], v26, v27);
  v30 = v54;
  MEMORY[0x1E69E5928](v46);
  v10 = v31;
  v11 = v32;
  *&v30[OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_accountManager] = v46;
  v54[OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_type] = v11 & v10;
  v33 = v54;
  sub_1C5594CF4();
  v12 = v45;
  v13 = &v33[OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_telemetryFlowID];
  *v13 = v41;
  v13[1] = v12;
  v34 = v54;
  sub_1C5404AE4();
  *&v34[OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_contactsProvider] = sub_1C5404B48();
  v35 = v54;
  sub_1C5404B78();
  *&v35[OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_custodianController] = sub_1C5404B48();
  v36 = v54;
  sub_1C5404BDC();
  v14 = sub_1C5404B48();
  v37 = &qword_1EC15F000;
  *&v36[OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_repairHelper] = v14;
  v42 = v54;
  type metadata accessor for ReviewCustodianListViewModel();
  MEMORY[0x1E69E5928](v46);
  v38 = &v54[v37[427]];
  v39 = &v49;
  swift_beginAccess();
  v40 = *v38;
  MEMORY[0x1E69E5928](v40);
  swift_endAccess();
  sub_1C5594CF4();
  v15 = sub_1C55823FC(v46, v40, v41, v45);
  *&v42[OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_reviewCustodianListViewModel] = v15;
  v44.receiver = v54;
  v44.super_class = type metadata accessor for RecoveryContactsViewModel();
  v48 = v44;
  v47 = objc_msgSendSuper2(&v48, sel_init);
  MEMORY[0x1E69E5928](v47);
  v54 = v47;
  (*((*v47 & *MEMORY[0x1E69E7D40]) + 0x128))();
  v16 = sub_1C5404CB4();
  sub_1C5472438(v44.super_class, v16);

  MEMORY[0x1E69E5920](v46);
  MEMORY[0x1E69E5920](v54);
  return v47;
}

unint64_t sub_1C5404AE4()
{
  v2 = qword_1EC15BCF0;
  if (!qword_1EC15BCF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15BCF0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C5404B78()
{
  v2 = qword_1EC15BCF8;
  if (!qword_1EC15BCF8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15BCF8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1C5404BDC()
{
  v2 = qword_1EC15BD00;
  if (!qword_1EC15BD00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15BD00);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for RecoveryContactsViewModel()
{
  v1 = qword_1EC15FE60;
  if (!qword_1EC15FE60)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_1C5404CB4()
{
  v2 = qword_1EC15BD08;
  if (!qword_1EC15BD08)
  {
    type metadata accessor for RecoveryContactsViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EC15BD08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1C5404D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1E69E5928](a1);
  sub_1C5594CF4();
  v6 = sub_1C54045FC();
  v11 = (*(v5 + 272))(a1, v6 & 1, a4, a5);
  MEMORY[0x1E69E5928](v11);

  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v11);
  return v11;
}

uint64_t sub_1C5404E18()
{
  v5 = type metadata accessor for RecoveryContactsViewModel();
  v0 = sub_1C5404CB4();
  v6 = sub_1C54720B4(v5, v0);
  if (v6)
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 canHaveCustodianForAccount_];
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

uint64_t sub_1C5404F00()
{
  v5 = type metadata accessor for RecoveryContactsViewModel();
  v0 = sub_1C5404CB4();
  v6 = sub_1C54720B4(v5, v0);
  if (v6)
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 canBeCustodianForAccount_];
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

uint64_t sub_1C5404FE8()
{
  v13 = MEMORY[0x1E69E85E0];
  v16 = &unk_1C55AD908;
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

uint64_t sub_1C5405160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[203] = a4;
  v4[183] = v4;
  v4[189] = 0;
  v4[189] = a4;
  sub_1C55967E4();
  v4[204] = sub_1C55967D4();
  v7 = sub_1C55967A4();
  v4[205] = v7;
  v4[206] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C540521C, v7, v5);
}

uint64_t sub_1C540521C()
{
  v1 = *(v0 + 1624);
  *(v0 + 1464) = v0;
  v4 = *(v1 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_contactsProvider);
  *(v0 + 1656) = v4;
  MEMORY[0x1E69E5928](v4);
  *(v0 + 1296) = *(v0 + 1464);
  *(v0 + 1336) = v0 + 1560;
  *(v0 + 1304) = sub_1C5405364;
  v3 = swift_continuation_init();
  *(v0 + 1456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BD38);
  *(v0 + 1432) = v3;
  *(v0 + 1400) = MEMORY[0x1E69E9820];
  *(v0 + 1408) = 1107296256;
  *(v0 + 1412) = 0;
  *(v0 + 1416) = sub_1C5405C44;
  *(v0 + 1424) = &block_descriptor;
  [v4 fetchMyCachedCustodians_];

  return MEMORY[0x1EEE6DEC8](v0 + 1296);
}

uint64_t sub_1C5405364()
{
  v4 = *v0;
  *(*v0 + 1464) = *v0;
  v1 = *(v4 + 1648);
  v2 = *(v4 + 1640);

  return MEMORY[0x1EEE6DFA0](sub_1C540547C, v2, v1);
}

uint64_t sub_1C540547C()
{
  v3 = v0[207];
  v5 = v0[203];
  v0[183] = v0;
  (*((*v5 & *MEMORY[0x1E69E7D40]) + 0xA0))(v0[195]);
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5928](v5);
  v4 = swift_task_alloc();
  v0[208] = v4;
  *(v4 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCD0);
  swift_asyncLet_begin();
  MEMORY[0x1E69E5928](v5);
  v1 = swift_task_alloc();
  v0[209] = v1;
  *(v1 + 16) = v5;
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEB8](v0 + 2, v0 + 201, sub_1C5405634, v6 + 1360);
}

uint64_t sub_1C5405634()
{
  v0[183] = v0;
  v0[210] = v0[201];
  sub_1C5594CF4();

  return MEMORY[0x1EEE6DEB8](v2 + 656, v2 + 1616, sub_1C54056B8, v2 + 1472);
}

uint64_t sub_1C54056E4()
{
  v3 = v0[210];
  v1 = v0[203];
  v0[183] = v0;
  v4 = v0[202];
  sub_1C5594CF4();
  v5 = MEMORY[0x1E69E7D40];
  (*((*v1 & *MEMORY[0x1E69E7D40]) + 0xA0))(v3);
  (*((*v1 & *v5) + 0xD0))(v4);
  v7 = sub_1C5404484();
  (*((*v1 & *v5) + 0x98))();
  sub_1C5403328();
  v6 = sub_1C5596704();

  [v7 setLocalContacts_];
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5920](v7);

  return MEMORY[0x1EEE6DEB0](v8 + 656, v0 + 202, sub_1C540589C, v8 + 1520);
}

uint64_t sub_1C54058C8()
{
  v2 = *(v0 + 1624);
  *(v0 + 1464) = v0;

  MEMORY[0x1E69E5920](v2);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 1608, sub_1C5405964, v0 + 1568);
}

uint64_t sub_1C5405990()
{
  v3 = *(v0 + 1624);
  *(v0 + 1464) = v0;

  MEMORY[0x1E69E5920](v3);

  v1 = *(*(v0 + 1464) + 8);

  return v1();
}

uint64_t sub_1C5405A44(uint64_t a1)
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

  return sub_1C5405160(a1, v6, v7, v8);
}

uint64_t sub_1C5405B1C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1C5405C44(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a2);
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  MEMORY[0x1E69E5928](a2);
  sub_1C5403328();
  v7 = sub_1C5596714();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC15BCD0);
  sub_1C5405D08(v5, &v7, v2);
  MEMORY[0x1E69E5920](a2);
  return MEMORY[0x1E69E5920](a2);
}

uint64_t sub_1C5405D3C(uint64_t a1, uint64_t a2)
{
  v2[22] = a2;
  v2[21] = a1;
  v2[18] = v2;
  v2[19] = 0;
  v2[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C5405D7C, 0, 0);
}

uint64_t sub_1C5405D7C()
{
  v1 = *(v0 + 176);
  *(v0 + 144) = v0;
  v4 = *(v1 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_contactsProvider);
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
  *(v0 + 104) = &block_descriptor_36;
  [v4 fetchMyCustodians_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C5405EC4()
{
  *(*v0 + 144) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C5405FC0, 0, 0);
}

uint64_t sub_1C5405FC0()
{
  v1 = v0[23];
  v2 = v0[21];
  v0[18] = v0;
  *v2 = v0[20];
  MEMORY[0x1E69E5920](v1);
  v3 = *(v0[18] + 8);

  return v3();
}

uint64_t sub_1C5406064(uint64_t a1, uint64_t a2)
{
  v2[22] = a2;
  v2[21] = a1;
  v2[18] = v2;
  v2[19] = 0;
  v2[19] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C54060A4, 0, 0);
}

uint64_t sub_1C54060A4()
{
  v1 = *(v0 + 176);
  *(v0 + 144) = v0;
  v4 = *(v1 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_contactsProvider);
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
  *(v0 + 104) = &block_descriptor_33;
  [v4 fetchMyCustodianshipOwners_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C54061EC(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_1C55ADA28;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC15E860) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v14 - v53;

  v63 = v55;
  v64 = v56;
  sub_1C5408B78(v54, v57);
  v58 = sub_1C5596814();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_1C5408CA0(v57);
    v44 = 0;
  }

  else
  {
    v43 = sub_1C5596804();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_1C55967A4();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;
  sub_1C5594CF4();
  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v25 = v46;
    v26 = sub_1C55965C4();

    sub_1C5408D48(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v24 = v61;

    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
  if (v27)
  {
    v17 = v23;
    v16 = v23;
    sub_1C5408CA0(v54);

    v18 = v16;
  }

  else
  {

    sub_1C5408CA0(v54);
    v19 = v63;
    v20 = v64;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v31;
    v12 = v30;
    v21 = v8;
    v8[2] = v47;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v22 = v62;
    }

    v18 = swift_task_create();
  }

  v15 = v18;

  return v15;
}

uint64_t sub_1C5406808@<X0>(void *a1@<X8>)
{
  sub_1C5406904();
  v3 = *(v2 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_accountManager);
  MEMORY[0x1E69E5928](v3);
  v5 = sub_1C5406968(v3);
  [v5 setIsWalrusEnabled_];
  [v5 setIsSettingsFlow_];
  [v5 start];
  MEMORY[0x1E69E5928](v5);
  *a1 = nullsub_1(v5);
  return MEMORY[0x1E69E5920](v5);
}

unint64_t sub_1C5406904()
{
  v2 = qword_1EC15BD10;
  if (!qword_1EC15BD10)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15BD10);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_1C54069A8()
{
  v6 = 0;
  v12 = 0;
  sub_1C5406B78();
  v5 = [swift_getObjCClassFromMetadata() defaultCenter];
  v1 = v0;
  v7 = sub_1C5527698(*(v0 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_type));
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v3 = 0;
  [v5 removeObserver:v4 name:v7 object:{0, v2}];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

unint64_t sub_1C5406B78()
{
  v2 = qword_1EC15BD18;
  if (!qword_1EC15BD18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EC15BD18);
    return ObjCClassMetadata;
  }

  return v2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_1C5406D38()
{
  v9 = 0;
  v15 = 0;
  sub_1C5406B78();
  v7 = [swift_getObjCClassFromMetadata() defaultCenter];
  v1 = v0;
  v8 = sel_fetchAllTrustedContacts;
  v10 = sub_1C5527698(*(v0 + OBJC_IVAR____TtC14AppleAccountUI25RecoveryContactsViewModel_type));
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
  return (*((*v2 & *MEMORY[0x1E69E7D40]) + 0x128))();
}

id sub_1C5407070()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecoveryContactsViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5407610@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RecoveryContactsViewModel();
  result = sub_1C5594E34();
  *a1 = result;
  return result;
}

id sub_1C5407670(uint64_t a1)
{
  v4 = [v1 initWithAccountManager_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}