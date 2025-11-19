uint64_t sub_23E824A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a2;
  v75 = a3;
  v3 = sub_23E82E00C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v66 = v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A618, &qword_23E831730);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AD38, &qword_23E831788);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v72 = v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AD40, &qword_23E831790);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v70 = v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AD48, &qword_23E831798);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v68 = v64 - v22;
  v23 = sub_23E82DDFC();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_23E82DDAC();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v73 = sub_23E82E05C();
  v71 = *(v73 - 8);
  v27 = *(v71 + 64);
  v28 = MEMORY[0x28223BE20](v73);
  v67 = v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v64 - v29;
  v31 = sub_23E82DE9C();
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v33 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (v33)
  {
    v65 = v13;
    v34 = *(v32 + 16);
    if (HIDWORD(v34))
    {
      __break(1u);
      goto LABEL_24;
    }

    v35 = v33;
    v36 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v33 frameCapacity:v34];
    if (v36)
    {
      v37 = v36;
      [v36 setFrameLength_];
      v38 = [v37 int16ChannelData];
      if (v38)
      {
        v39 = *v38;
        v40 = [v37 frameLength];
        v41 = (v32 + 32);
        if (v39 != (v32 + 32) || v39 >= &v41[2 * v40])
        {
          memmove(v39, v41, 2 * v40);
        }

        v42 = *&v69[OBJC_IVAR___AVSTriggerController_avsBundleDonorID + 8];
        v66 = *&v69[OBJC_IVAR___AVSTriggerController_avsBundleDonorID];
        v64[1] = v42;

        sub_23E82DD9C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AD50, &qword_23E8317A0);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_23E831720;
        *(v43 + 32) = v37;
        v69 = v37;
        sub_23E82DDEC();
        v44 = sub_23E82E03C();
        (*(*(v44 - 8) + 56))(v68, 1, 1, v44);
        v45 = sub_23E82E06C();
        (*(*(v45 - 8) + 56))(v70, 1, 1, v45);
        v46 = sub_23E82E01C();
        (*(*(v46 - 8) + 56))(v72, 1, 1, v46);

        sub_23E82E02C();
        v47 = sub_23E82EB9C();
        v48 = v65;
        (*(*(v47 - 8) + 56))(v65, 1, 1, v47);
        v49 = v71;
        v50 = v67;
        v51 = v73;
        (*(v71 + 16))(v67, v30, v73);
        v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v53 = swift_allocObject();
        *(v53 + 16) = 0;
        *(v53 + 24) = 0;
        (*(v49 + 32))(v53 + v52, v50, v51);
        sub_23E80CAD8(0, 0, v48, &unk_23E8317B0, v53);

        return (*(v49 + 8))(v30, v51);
      }

      else
      {

        if (qword_27E35A1C0 != -1)
        {
          swift_once();
        }

        v59 = __swift_project_value_buffer(v3, qword_27E35A958);
        swift_beginAccess();
        v60 = v66;
        (*(v4 + 16))(v66, v59, v3);
        v61 = sub_23E82DFEC();
        v62 = sub_23E82EBCC();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_23E7EF000, v61, v62, "Unable to get audio buffer pointer for VAKeywordSpottedEvent for donation", v63, 2u);
          MEMORY[0x23EF15860](v63, -1, -1);
        }

        else
        {
        }

        return (*(v4 + 8))(v60, v3);
      }
    }
  }

  if (qword_27E35A1C0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v55 = __swift_project_value_buffer(v3, qword_27E35A958);
  swift_beginAccess();
  (*(v4 + 16))(v8, v55, v3);
  v56 = sub_23E82DFEC();
  v57 = sub_23E82EBCC();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_23E7EF000, v56, v57, "Unable to get audio buffer for VAKeywordSpottedEvent for donation", v58, 2u);
    MEMORY[0x23EF15860](v58, -1, -1);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_23E825318(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v6 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v7 = qword_27E35D0B8;
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    v6 = 0;
  }

  v8 = v6;
  sub_23E82DCDC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A218, &qword_23E831780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23E830030;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_23E7F5328();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  sub_23E82EA7C();

  v10 = [a3 displayAlertHandler];
  if (v10)
  {
    v11 = v10;
    v12 = sub_23E82EA5C();
    v13 = sub_23E82EA5C();
    (v11)[2](v11, v12, v13);

    _Block_release(v11);
  }
}

uint64_t AVSTriggerController.keywordSpotterDidStopWithSummary(json:uuid:)()
{
  v0 = sub_23E82E00C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27E35A958);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_23E82DFEC();
  v7 = sub_23E82EBEC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23E7EF000, v6, v7, "Keywors spotter did stop.", v8, 2u);
    MEMORY[0x23EF15860](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_23E825740(uint64_t a1)
{
  v3 = *(MEMORY[0x277CDCA80] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E801B00;

  return MEMORY[0x28212BC78](a1);
}

uint64_t sub_23E8257E0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23E8258AC(v11, 0, 0, 1, a1, a2);
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
    sub_23E81DF50(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23E8258AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23E8259B8(a5, a6);
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
    result = sub_23E82ED7C();
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

uint64_t sub_23E8259B8(uint64_t a1, unint64_t a2)
{
  v4 = sub_23E825A04(a1, a2);
  sub_23E825B34(&unk_285115F50);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23E825A04(uint64_t a1, unint64_t a2)
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

  v6 = sub_23E825C20(v5, 0);
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

  result = sub_23E82ED7C();
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
        v10 = sub_23E82EADC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23E825C20(v10, 0);
        result = sub_23E82ED1C();
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

uint64_t sub_23E825B34(uint64_t result)
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

  result = sub_23E825C94(result, v12, 1, v3);
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

void *sub_23E825C20(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AD58, &qword_23E8317B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23E825C94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AD58, &qword_23E8317B8);
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

uint64_t sub_23E825D88(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23E826860(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_23E825DF4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23E825DF4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E82EEEC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_23E82EB2C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23E825FBC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23E825EEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23E825EEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_23E82EF0C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E825FBC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_23E82684C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_23E826598((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_23E82EF0C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_23E82EF0C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23E8033B4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_23E8033B4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_23E826598((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_23E82684C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_23E8267C0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_23E82EF0C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_23E826598(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_23E82EF0C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_23E82EF0C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_23E8267C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23E82684C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23E826888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveVoiceShortcut();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8268EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_23E826954(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AvailableShortcutAction() + 24));
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  if (v4)
  {
    if (v4 == 1)
    {
      v8 = sub_23E82EA5C();
      AXPIBridgePerformActionForSystemAction(v8);
    }

    else
    {
      v7 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
      v8 = sub_23E82EA5C();
      [v7 startUIRequest_];
    }
  }

  else
  {
    v5 = objc_allocWithZone(MEMORY[0x277D79DA0]);
    v6 = sub_23E82EA5C();
    v8 = [v5 initWithWorkflowIdentifier_];

    [v8 start];
  }
}

uint64_t sub_23E826A68()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return sub_23E825318(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t sub_23E826A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSo20AVSTriggerControllerC22AdaptiveVoiceShortcutsE29keywordSpotterDidUpdateScores10verboseLogySS_tF_0()
{
  v0 = sub_23E82E00C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E35A1C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27E35A958);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_23E82DFEC();
  v7 = sub_23E82EBEC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23E7EF000, v6, v7, "Keyword spotter did update scores", v8, 2u);
    MEMORY[0x23EF15860](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E826CC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E801B00;

  return sub_23E822D60(a1, v4, v5, v6);
}

uint64_t sub_23E826D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v9[0] = a1;
  v9[1] = a2;
  v8[0] = a3;
  v8[1] = a4;
  return v5(v9, v8);
}

uint64_t sub_23E826DC4(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, a1[1], *a2, a2[1]);
}

uint64_t sub_23E826DFC(uint64_t a1)
{
  v4 = *(sub_23E82E05C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23E801C00;

  return sub_23E825740(a1);
}

unint64_t sub_23E826F1C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000011;
  if (v1 != 2)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23E826F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E827B00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E826FBC(uint64_t a1)
{
  v2 = sub_23E827298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E826FF8(uint64_t a1)
{
  v2 = sub_23E827298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdaptiveVoiceShortcut.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AD60, &unk_23E8317C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E827298();
  sub_23E82EF6C();
  v20[15] = 0;
  sub_23E82DDDC();
  sub_23E827804(&qword_27E35A758, MEMORY[0x277CC95F0]);
  sub_23E82EEDC();
  if (!v2)
  {
    v11 = type metadata accessor for AdaptiveVoiceShortcut();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v20[14] = 1;
    sub_23E82EE9C();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v20[13] = 2;
    sub_23E82EE9C();
    v18 = v11[7];
    v20[12] = 3;
    type metadata accessor for AvailableShortcutAction();
    sub_23E827804(&qword_27E35AD70, type metadata accessor for AvailableShortcutAction);
    sub_23E82EEAC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_23E827298()
{
  result = qword_27E35AD68;
  if (!qword_27E35AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AD68);
  }

  return result;
}

uint64_t type metadata accessor for AdaptiveVoiceShortcut()
{
  result = qword_2810C2520;
  if (!qword_2810C2520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdaptiveVoiceShortcut.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A210, &unk_23E82FFD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v39 - v5;
  v6 = sub_23E82DDDC();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AD78, &qword_23E8317D0);
  v43 = *(v47 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v11 = &v39 - v10;
  v12 = type metadata accessor for AdaptiveVoiceShortcut();
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E82DDCC();
  v17 = &v16[v13[7]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v16[v13[8]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = v13[9];
  v20 = type metadata accessor for AvailableShortcutAction();
  v21 = *(*(v20 - 8) + 56);
  v48 = v16;
  v21(&v16[v19], 1, 1, v20);
  v22 = a1[3];
  v23 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_23E827298();
  v24 = v11;
  v25 = v49;
  sub_23E82EF5C();
  if (v25)
  {
    v26 = v48;
  }

  else
  {
    v49 = v17;
    v39 = v19;
    v40 = v18;
    v28 = v43;
    v27 = v44;
    v54 = 0;
    sub_23E827804(&qword_27E35A778, MEMORY[0x277CC95F0]);
    v29 = v45;
    sub_23E82EE6C();
    v26 = v48;
    (*(v27 + 40))(v48, v46, v29);
    v53 = 1;
    v30 = sub_23E82EE2C();
    v31 = v49;
    *v49 = v30;
    v31[1] = v32;
    v52 = 2;
    v33 = sub_23E82EE2C();
    v35 = v40;
    *v40 = v33;
    v35[1] = v36;
    v51 = 3;
    sub_23E827804(&qword_27E35AD80, type metadata accessor for AvailableShortcutAction);
    v37 = v42;
    v38 = v47;
    sub_23E82EE3C();
    (*(v28 + 8))(v24, v38);
    sub_23E800310(v37, v26 + v39);
    sub_23E826888(v26, v41);
  }

  __swift_destroy_boxed_opaque_existential_0(v50);
  return sub_23E8277A8(v26);
}

uint64_t sub_23E8277A8(uint64_t a1)
{
  v2 = type metadata accessor for AdaptiveVoiceShortcut();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E827804(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23E8278A4()
{
  sub_23E82DDDC();
  if (v0 <= 0x3F)
  {
    sub_23E827940();
    if (v1 <= 0x3F)
    {
      sub_23E827990();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23E827940()
{
  if (!qword_2810C23F0)
  {
    v0 = sub_23E82EC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810C23F0);
    }
  }
}

void sub_23E827990()
{
  if (!qword_2810C2450)
  {
    type metadata accessor for AvailableShortcutAction();
    v0 = sub_23E82EC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810C2450);
    }
  }
}

unint64_t sub_23E8279FC()
{
  result = qword_27E35AD88;
  if (!qword_27E35AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AD88);
  }

  return result;
}

unint64_t sub_23E827A54()
{
  result = qword_27E35AD90;
  if (!qword_27E35AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AD90);
  }

  return result;
}

unint64_t sub_23E827AAC()
{
  result = qword_27E35AD98;
  if (!qword_27E35AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AD98);
  }

  return result;
}

uint64_t sub_23E827B00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_23E82EF0C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_23E82EF0C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023E833120 == a2 || (sub_23E82EF0C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023E833140 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_23E82EF0C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_23E827CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a1;
  v62 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADA8, &qword_23E831A00);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADB0, &qword_23E831A08);
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v12 = &v51 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADB8, &qword_23E831A10);
  v60 = *(v61 - 8);
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v55 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADC0, &qword_23E831A18);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v56 = &v51 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADC8, &qword_23E831A20);
  v20 = *(v19 - 8);
  v53 = v19 - 8;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v57 = &v51 - v22;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADD0, &qword_23E831A28);
  v23 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v51 - v24;
  *v9 = sub_23E82E48C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADD8, &qword_23E831A30);
  sub_23E8283AC(a1, a2, &v9[*(v25 + 44)]);
  sub_23E82E94C();
  sub_23E82E93C();

  v26 = sub_23E82E92C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  v27 = v65;
  v28 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADE0, &unk_23E831A80) + 36)];
  *v28 = v26;
  v28[1] = v27;
  LOBYTE(v27) = sub_23E82E5DC();
  sub_23E82E10C();
  v29 = &v9[*(v6 + 44)];
  *v29 = v27;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  sub_23E82E91C();
  sub_23E82E2FC();
  sub_23E7F8764(v9, v12, &qword_27E35ADA8, &qword_23E831A00);
  v34 = &v12[*(v54 + 36)];
  v35 = v70;
  *(v34 + 4) = v69;
  *(v34 + 5) = v35;
  *(v34 + 6) = v71;
  v36 = v66;
  *v34 = v65;
  *(v34 + 1) = v36;
  v37 = v68;
  *(v34 + 2) = v67;
  *(v34 + 3) = v37;
  v38 = v52;
  v63 = v52;
  v64 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A268, &qword_23E830350);
  sub_23E829AB4();
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
  v39 = v55;
  sub_23E82E7BC();
  sub_23E7F55E0(v12, &qword_27E35ADB0, &qword_23E831A08);
  LOBYTE(v12) = sub_23E82E5CC();
  v40 = v56;
  (*(v60 + 32))(v56, v39, v61);
  v41 = v40 + *(v16 + 44);
  *v41 = v12;
  *(v41 + 8) = 0u;
  *(v41 + 24) = 0u;
  *(v41 + 40) = 1;
  v42 = swift_allocObject();
  *(v42 + 16) = v38;
  *(v42 + 24) = a2;
  v43 = v57;
  sub_23E7F8764(v40, v57, &qword_27E35ADC0, &qword_23E831A18);
  v44 = (v43 + *(v53 + 44));
  *v44 = sub_23E829CB0;
  v44[1] = v42;
  v44[2] = 0;
  v44[3] = 0;
  v45 = swift_allocObject();
  *(v45 + 16) = v38;
  *(v45 + 24) = a2;
  v46 = v43;
  v47 = v58;
  sub_23E7F8764(v46, v58, &qword_27E35ADC8, &qword_23E831A20);
  v48 = (v47 + *(v59 + 36));
  *v48 = 0;
  v48[1] = 0;
  v48[2] = sub_23E829CD4;
  v48[3] = v45;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_23E82E0CC();

  v49 = swift_allocObject();
  *(v49 + 16) = v38;
  *(v49 + 24) = a2;
  sub_23E829CE4();

  sub_23E82E7CC();

  return sub_23E7F55E0(v47, &qword_27E35ADD0, &qword_23E831A28);
}

uint64_t sub_23E8283AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v84 = a3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AE38, &qword_23E831AE8);
  v5 = *(*(v82 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v82);
  v85 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = (&v79 - v8);
  v9 = sub_23E82E47C();
  v94 = *(v9 - 8);
  v95 = v9;
  v10 = *(v94 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AE40, &qword_23E831AF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v79 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AE48, &qword_23E831AF8);
  v17 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v92 = &v79 - v18;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AE50, &qword_23E831B00);
  v19 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v21 = &v79 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AE58, &qword_23E831B08);
  v97 = *(v22 - 8);
  v98 = v22;
  v23 = v97[8];
  v24 = MEMORY[0x28223BE20](v22);
  v96 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v99 = &v79 - v26;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  v80 = a1;
  v81 = a2;
  sub_23E82ACF8(a1, a2);
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v27 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v28 = [objc_opt_self() mainBundle];
  }

  v90 = v27;
  v29 = sub_23E82E68C();
  v31 = v30;
  *&v123 = v29;
  *(&v123 + 1) = v30;
  v33 = v32 & 1;
  v124[0] = v32 & 1;
  *&v124[8] = v34;
  sub_23E82E46C();
  sub_23E82E75C();
  (*(v94 + 8))(v12, v95);
  sub_23E7FFB78(v29, v31, v33);

  KeyPath = swift_getKeyPath();
  v36 = v92;
  sub_23E7F8764(v16, v92, &qword_27E35AE40, &qword_23E831AF0);
  v37 = v36 + *(v91 + 36);
  *v37 = KeyPath;
  *(v37 + 8) = 1;
  v38 = sub_23E82E62C();
  v39 = swift_getKeyPath();
  sub_23E7F8764(v36, v21, &qword_27E35AE48, &qword_23E831AF8);
  v40 = &v21[*(v93 + 36)];
  *v40 = v39;
  v40[1] = v38;
  sub_23E82AFE8();
  sub_23E82E77C();
  sub_23E7F55E0(v21, &qword_27E35AE50, &qword_23E831B00);
  sub_23E81E284(0xD000000000000026);
  if (v27)
  {
    v41 = v90;
  }

  else
  {
    v41 = [objc_opt_self() mainBundle];
  }

  sub_23E82DCDC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A218, &qword_23E831780);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_23E830030;
  v43 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_23E82B214();
  v44 = sub_23E82EC3C();
  v45 = [v43 stringFromNumber_];

  if (v45)
  {
    v46 = sub_23E82EA6C();
    v48 = v47;
  }

  else
  {

    v46 = 0;
    v48 = 0xE000000000000000;
  }

  *(v42 + 56) = MEMORY[0x277D837D0];
  *(v42 + 64) = sub_23E7F5328();
  *(v42 + 32) = v46;
  *(v42 + 40) = v48;
  v49 = sub_23E82EA7C();
  v51 = v50;

  *&v123 = v49;
  *(&v123 + 1) = v51;
  sub_23E7F84B0();
  v52 = sub_23E82E69C();
  v91 = v53;
  v92 = v52;
  LOBYTE(v49) = v54;
  v94 = v55;
  v90 = swift_getKeyPath();
  LODWORD(v93) = sub_23E82E5CC();
  v89 = v49 & 1;
  v153 = v49 & 1;
  v149 = 1;
  LODWORD(v95) = sub_23E82E51C();
  v88 = sub_23E82E3EC();
  LOBYTE(v134[0]) = 1;
  v57 = v80;
  v56 = v81;
  sub_23E82924C(&v123);
  v112 = *&v124[144];
  v113 = *&v124[160];
  v108 = *&v124[80];
  v109 = *&v124[96];
  v110 = *&v124[112];
  v111 = *&v124[128];
  v104 = *&v124[16];
  v105 = *&v124[32];
  v106 = *&v124[48];
  v107 = *&v124[64];
  v102 = v123;
  v103 = *v124;
  v115[10] = *&v124[144];
  v115[11] = *&v124[160];
  v115[6] = *&v124[80];
  v115[7] = *&v124[96];
  v115[8] = *&v124[112];
  v115[9] = *&v124[128];
  v115[2] = *&v124[16];
  v115[3] = *&v124[32];
  v115[4] = *&v124[48];
  v115[5] = *&v124[64];
  v114 = v124[176];
  v116 = v124[176];
  v115[0] = v123;
  v115[1] = *v124;
  sub_23E8001E0(&v102, v122, &qword_27E35AE88, &qword_23E831B88);
  sub_23E7F55E0(v115, &qword_27E35AE88, &qword_23E831B88);
  *&v100[151] = v111;
  *&v100[167] = v112;
  *&v100[183] = v113;
  *&v100[87] = v107;
  *&v100[103] = v108;
  *&v100[119] = v109;
  *&v100[135] = v110;
  *&v100[23] = v103;
  *&v100[39] = v104;
  *&v100[55] = v105;
  *&v100[71] = v106;
  v100[199] = v114;
  *&v100[7] = v102;
  v86 = LOBYTE(v134[0]);
  sub_23E82E91C();
  sub_23E82E1FC();
  *&v101[7] = v156;
  *&v101[23] = v157;
  *&v101[39] = v158;
  v87 = sub_23E82E5CC();
  LOBYTE(v123) = 1;
  v58 = sub_23E82E3EC();
  v59 = v83;
  *v83 = v58;
  *(v59 + 8) = 0x4000000000000000;
  *(v59 + 16) = 0;
  LODWORD(v49) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AE90, &qword_23E831B90) + 44);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  swift_getKeyPath();
  v60 = swift_allocObject();
  *(v60 + 16) = v57;
  *(v60 + 24) = v56;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AA10, &qword_23E830AB0);
  sub_23E7F5640(&qword_27E35AE98, &qword_27E35AA10, &qword_23E830AB0);
  sub_23E82B2C4();
  sub_23E82E8FC();
  sub_23E82E91C();
  sub_23E82E1FC();
  v61 = (v59 + *(v82 + 36));
  v62 = v160;
  *v61 = v159;
  v61[1] = v62;
  v61[2] = v161;
  v63 = v96;
  v64 = v97[2];
  v65 = v98;
  v64(v96, v99, v98);
  v66 = v85;
  sub_23E8001E0(v59, v85, &qword_27E35AE38, &qword_23E831AE8);
  v67 = v84;
  v64(v84, v63, v65);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AEA8, &qword_23E831C08);
  v69 = &v67[v68[12]];
  *&v118 = v92;
  *(&v118 + 1) = v91;
  LOBYTE(v119) = v89;
  *(&v119 + 1) = *v152;
  DWORD1(v119) = *&v152[3];
  *(&v119 + 1) = v94;
  *&v120 = v90;
  BYTE8(v120) = 1;
  *(&v120 + 9) = *v151;
  HIDWORD(v120) = *&v151[3];
  LOBYTE(v121[0]) = v93;
  *(v121 + 1) = *v150;
  DWORD1(v121[0]) = *&v150[3];
  *(v121 + 8) = 0u;
  *(&v121[1] + 8) = 0u;
  BYTE8(v121[2]) = 1;
  *(&v121[2] + 9) = v154;
  BYTE11(v121[2]) = v155;
  HIDWORD(v121[2]) = v95;
  v70 = v119;
  *v69 = v118;
  *(v69 + 1) = v70;
  v71 = v121[0];
  *(v69 + 2) = v120;
  *(v69 + 3) = v71;
  v72 = v121[2];
  *(v69 + 4) = v121[1];
  *(v69 + 5) = v72;
  v73 = v68[16];
  *(&v122[10] + 1) = *&v100[64];
  *(&v122[8] + 1) = *&v100[48];
  *(&v122[6] + 1) = *&v100[32];
  *(&v122[18] + 1) = *&v100[128];
  *(&v122[16] + 1) = *&v100[112];
  *(&v122[14] + 1) = *&v100[96];
  *(&v122[12] + 1) = *&v100[80];
  *(&v122[24] + 1) = *&v100[176];
  *(&v122[22] + 1) = *&v100[160];
  *(&v122[20] + 1) = *&v100[144];
  *(&v122[2] + 1) = *v100;
  v122[0] = v88;
  v122[1] = 0;
  LOBYTE(v122[2]) = v86;
  *(&v122[26] + 1) = *&v100[192];
  *(&v122[4] + 1) = *&v100[16];
  *(&v122[27] + 1) = *v101;
  *(&v122[29] + 1) = *&v101[16];
  *(&v122[31] + 1) = *&v101[32];
  v122[33] = *&v101[47];
  LOBYTE(v122[34]) = v87;
  *(&v122[34] + 1) = *v117;
  HIDWORD(v122[34]) = *&v117[3];
  memset(&v122[35], 0, 32);
  LOBYTE(v122[39]) = 1;
  memcpy(&v67[v73], v122, 0x139uLL);
  v74 = &v67[v68[20]];
  *v74 = 0;
  v74[8] = 1;
  sub_23E8001E0(v66, &v67[v68[24]], &qword_27E35AE38, &qword_23E831AE8);
  v75 = &v67[v68[28]];
  *v75 = 0;
  v75[8] = 1;
  sub_23E8001E0(&v118, &v123, &qword_27E35AEB0, &qword_23E831C10);
  sub_23E8001E0(v122, &v123, &qword_27E35AEB8, &qword_23E831C18);
  sub_23E7F55E0(v59, &qword_27E35AE38, &qword_23E831AE8);
  v76 = v98;
  v77 = v97[1];
  v77(v99, v98);
  sub_23E7F55E0(v66, &qword_27E35AE38, &qword_23E831AE8);
  *&v124[145] = *&v100[144];
  *&v124[161] = *&v100[160];
  *&v124[177] = *&v100[176];
  *&v124[81] = *&v100[80];
  *&v124[97] = *&v100[96];
  *&v124[113] = *&v100[112];
  *&v124[129] = *&v100[128];
  *&v124[17] = *&v100[16];
  *&v124[33] = *&v100[32];
  *&v124[49] = *&v100[48];
  *&v124[65] = *&v100[64];
  v123 = v88;
  v124[0] = v86;
  v125 = *&v100[192];
  *&v124[1] = *v100;
  v126 = *v101;
  v127 = *&v101[16];
  *v128 = *&v101[32];
  *&v128[15] = *&v101[47];
  v129 = v87;
  *v130 = *v117;
  *&v130[3] = *&v117[3];
  v131 = 0u;
  v132 = 0u;
  v133 = 1;
  sub_23E7F55E0(&v123, &qword_27E35AEB8, &qword_23E831C18);
  v134[0] = v92;
  v134[1] = v91;
  v135 = v89;
  *v136 = *v152;
  *&v136[3] = *&v152[3];
  v137 = v94;
  v138 = v90;
  v139 = 1;
  *v140 = *v151;
  *&v140[3] = *&v151[3];
  v141 = v93;
  *v142 = *v150;
  *&v142[3] = *&v150[3];
  v144 = 0u;
  v143 = 0u;
  v145 = 1;
  v146 = v154;
  v147 = v155;
  v148 = v95;
  sub_23E7F55E0(v134, &qword_27E35AEB0, &qword_23E831C10);
  return (v77)(v96, v76);
}

uint64_t sub_23E82924C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  v2 = v27 > 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  v3 = v27;
  *&v39 = 0x4040000000000000;
  sub_23E82E86C();
  v4 = v27;
  v5 = sub_23E82E5FC();
  LOBYTE(v27) = 1;
  sub_23E82953C(&v27);
  v6 = v27;
  v14 = BYTE1(v28);
  v15 = v28;
  sub_23E82969C(&v27);
  v7 = v27;
  v8 = v28;
  v9 = BYTE1(v28);
  v10 = sub_23E82E60C();
  v17 = v4;
  LOBYTE(v18) = v2;
  BYTE1(v18) = v3;
  BYTE8(v18) = v5;
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  LOBYTE(v31) = 1;
  v29 = 0u;
  v30 = 0u;
  v27 = v4;
  v28 = v18;
  v22 = v7;
  LOBYTE(v23) = v8;
  BYTE1(v23) = v9;
  BYTE8(v23) = v10;
  v24 = 0u;
  v25 = 0u;
  v26 = 1;
  *&v16[7] = v7;
  v16[71] = 1;
  memset(&v16[39], 0, 32);
  *&v16[23] = v23;
  v11 = v18;
  v12 = v31;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = v4;
  *(a1 + 16) = v11;
  *(a1 + 64) = v12;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = v6;
  *(a1 + 104) = v15;
  *(a1 + 105) = v14;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 121) = *v16;
  *(a1 + 185) = *&v16[64];
  *(a1 + 169) = *&v16[48];
  *(a1 + 153) = *&v16[32];
  *(a1 + 137) = *&v16[16];
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v35 = v10;
  v36 = 0u;
  v37 = 0u;
  v38 = 1;
  sub_23E8001E0(&v17, &v39, &qword_27E35AEC0, &qword_23E831C20);

  sub_23E8001E0(&v22, &v39, &qword_27E35AEC0, &qword_23E831C20);
  sub_23E7F55E0(&v32, &qword_27E35AEC0, &qword_23E831C20);

  v39 = v4;
  v40 = v2;
  v41 = v3;
  v42 = v5;
  v43 = 0u;
  v44 = 0u;
  v45 = 1;
  return sub_23E7F55E0(&v39, &qword_27E35AEC0, &qword_23E831C20);
}

double sub_23E82953C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  if (*&v4 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23E82E0CC();

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_23E82E86C();
  result = v4;
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *&v4 > 1;
  *(a1 + 17) = v2;
  return result;
}

double sub_23E82969C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  if (*&v4 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23E82E0CC();

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  sub_23E82E86C();
  result = v4;
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *&v4 == 3;
  *(a1 + 17) = v2;
  return result;
}

uint64_t sub_23E8297FC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return sub_23E82E8BC();
}

uint64_t sub_23E8298A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23E82E0DC();
  v3 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allSuccessfulEnrollments;
  swift_beginAccess();
  v4 = *(a2 + v3);
  v5 = MEMORY[0x277D84F90];
  *(a2 + v3) = MEMORY[0x277D84F90];

  v6 = OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_allCollectedEnrollments;
  swift_beginAccess();
  v7 = *(a2 + v6);
  *(a2 + v6) = v5;

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23E82E0DC();
  v8 = *(a2 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_audioProvider);
  return sub_23E81B214();
}

uint64_t sub_23E8299C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  if (v1 == 3)
  {
    sub_23E810118();
    return sub_23E810ECC();
  }

  return result;
}

uint64_t sub_23E829A48@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_23E82E3EC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ADA0, &qword_23E8319F8);
  return sub_23E827CA4(v4, v3, a1 + *(v5 + 44));
}

unint64_t sub_23E829AB4()
{
  result = qword_27E35ADE8;
  if (!qword_27E35ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ADB0, &qword_23E831A08);
    sub_23E829B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ADE8);
  }

  return result;
}

unint64_t sub_23E829B40()
{
  result = qword_27E35ADF0;
  if (!qword_27E35ADF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ADA8, &qword_23E831A00);
    sub_23E829BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ADF0);
  }

  return result;
}

unint64_t sub_23E829BCC()
{
  result = qword_27E35ADF8;
  if (!qword_27E35ADF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ADE0, &unk_23E831A80);
    sub_23E7F5640(&qword_27E35AE00, &qword_27E35AE08, &qword_23E831A90);
    sub_23E7F5640(&qword_27E35AE10, &qword_27E35AE18, &qword_23E831A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ADF8);
  }

  return result;
}

uint64_t sub_23E829CDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_23E8299C0();
}

unint64_t sub_23E829CE4()
{
  result = qword_27E35AE20;
  if (!qword_27E35AE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ADD0, &qword_23E831A28);
    sub_23E829D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AE20);
  }

  return result;
}

unint64_t sub_23E829D70()
{
  result = qword_27E35AE28;
  if (!qword_27E35AE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ADC8, &qword_23E831A20);
    sub_23E829DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AE28);
  }

  return result;
}

unint64_t sub_23E829DFC()
{
  result = qword_27E35AE30;
  if (!qword_27E35AE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ADC0, &qword_23E831A18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ADB0, &qword_23E831A08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A268, &qword_23E830350);
    sub_23E829AB4();
    sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AE30);
  }

  return result;
}

uint64_t sub_23E829F24@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AEF8, &qword_23E831D90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF00, &qword_23E831D98);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  *&v89 = a4;
  *(&v89 + 1) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF08, &qword_23E831DA0);
  sub_23E82E87C();
  if ((v74 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    if (a2)
    {
      v19 = sub_23E82E82C();
    }

    else if ((a2 & 0x100) != 0)
    {
      v19 = sub_23E82E7FC();
    }

    else
    {
      v20 = [objc_opt_self() secondarySystemFillColor];
      v19 = sub_23E82E7EC();
    }

    v58 = v19;
    sub_23E82E1BC();
    v21 = v84;
    v22 = v85;
    v23 = v86;
    v55 = v87;
    v24 = v88;
    v25 = sub_23E82E91C();
    v56 = v26;
    v57 = v25;
    v61 = v12;
    v62 = v16;
    v60 = v11;
    v59 = a2;
    v27 = a1;
    if (a2)
    {
      v28 = sub_23E82E82C();
    }

    else if ((a2 & 0x100) != 0)
    {
      v28 = sub_23E82E7FC();
    }

    else
    {
      v29 = [objc_opt_self() secondarySystemFillColor];
      v28 = sub_23E82E7EC();
    }

    v54 = v28;
    KeyPath = swift_getKeyPath();
    v31 = sub_23E82E91C();
    v33 = v32;
    *&v89 = a4;
    *(&v89 + 1) = v27;
    sub_23E82E87C();
    *&v89 = a4;
    *(&v89 + 1) = v27;
    sub_23E82E87C();
    sub_23E82E91C();
    sub_23E82E1FC();
    *&v74 = v21 * 0.5;
    *(&v74 + 1) = v21;
    *&v75 = v22;
    *(&v75 + 1) = v23;
    *&v76 = v55;
    *(&v76 + 1) = v24;
    *&v77 = v58;
    WORD4(v77) = 256;
    *&v78 = v57;
    *(&v78 + 1) = v56;
    *&v79 = KeyPath;
    *(&v79 + 1) = v54;
    *&v80 = v31;
    *(&v80 + 1) = v33;
    nullsub_1(&v74);
    v95 = v80;
    v96 = v81;
    v97 = v82;
    v98 = v83;
    v91 = v76;
    v92 = v77;
    v93 = v78;
    v94 = v79;
    v89 = v74;
    v90 = v75;
    v12 = v61;
    v16 = v62;
    v11 = v60;
    LOWORD(a2) = v59;
  }

  else
  {
    sub_23E82B4D0(&v89);
  }

  sub_23E82A4C0(a2 & 0x101, v18);
  v34 = sub_23E82E63C();
  (*(*(v34 - 8) + 56))(v11, 1, 1, v34);
  v35 = sub_23E82E65C();
  sub_23E7F55E0(v11, &qword_27E35AEF8, &qword_23E831D90);
  v36 = swift_getKeyPath();
  v37 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF10, &qword_23E831DA8) + 36)];
  *v37 = v36;
  v37[1] = v35;
  LOBYTE(v35) = sub_23E82E5CC();
  v38 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF18, &qword_23E831DB0) + 36)];
  *v38 = v35;
  *(v38 + 8) = 0u;
  *(v38 + 24) = 0u;
  v38[40] = 1;
  v39 = sub_23E82E91C();
  v40 = &v18[*(v12 + 36)];
  *v40 = sub_23E82A970;
  v40[1] = 0;
  v40[2] = v39;
  v40[3] = v41;
  v69 = v95;
  v70 = v96;
  v71 = v97;
  v72 = v98;
  v65 = v91;
  v66 = v92;
  v67 = v93;
  v68 = v94;
  v63 = v89;
  v64 = v90;
  sub_23E8001E0(v18, v16, &qword_27E35AF00, &qword_23E831D98);
  v42 = v70;
  v73[6] = v69;
  v73[7] = v70;
  v43 = v71;
  v44 = v72;
  v73[8] = v71;
  v73[9] = v72;
  v45 = v65;
  v46 = v66;
  v73[2] = v65;
  v73[3] = v66;
  v47 = v67;
  v48 = v68;
  v73[4] = v67;
  v73[5] = v68;
  v49 = v63;
  v50 = v64;
  v73[0] = v63;
  v73[1] = v64;
  a3[6] = v69;
  a3[7] = v42;
  a3[8] = v43;
  a3[9] = v44;
  a3[2] = v45;
  a3[3] = v46;
  a3[4] = v47;
  a3[5] = v48;
  *a3 = v49;
  a3[1] = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF20, &qword_23E831DB8);
  sub_23E8001E0(v16, a3 + *(v51 + 48), &qword_27E35AF00, &qword_23E831D98);
  sub_23E8001E0(v73, &v74, &qword_27E35AF28, &unk_23E831DC0);
  sub_23E7F55E0(v18, &qword_27E35AF00, &qword_23E831D98);
  sub_23E7F55E0(v16, &qword_27E35AF00, &qword_23E831D98);
  v80 = v69;
  v81 = v70;
  v82 = v71;
  v83 = v72;
  v76 = v65;
  v77 = v66;
  v78 = v67;
  v79 = v68;
  v74 = v63;
  v75 = v64;
  return sub_23E7F55E0(&v74, &qword_27E35AF28, &unk_23E831DC0);
}

uint64_t sub_23E82A4C0@<X0>(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A560, &unk_23E8303E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = sub_23E82E9AC();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_23E82E98C();
  v13 = *(v33 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v33);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 & 0x100) != 0 || (a1)
  {
    v23 = sub_23E82E85C();
    v24 = sub_23E82E83C();
    v32 = v5;
    v35 = v23;
    v36 = v24;
    sub_23E82E64C();
    v31 = v4;
    v25 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A580, &unk_23E830400);
    v30 = v9;
    sub_23E800258();
    sub_23E82E6CC();

    sub_23E82E97C();
    sub_23E82E99C();
    v26 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF30, &qword_23E831DD0) + 36));
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF38, &qword_23E831DD8) + 28);
    sub_23E82B718(&qword_27E35AF40, MEMORY[0x277CE1598]);
    v28 = v33;
    sub_23E82E30C();
    (*(v34 + 8))(v12, v30);
    (*(v13 + 8))(v16, v28);
    *v26 = swift_getKeyPath();
    return (*(v32 + 32))(v25, v8, v31);
  }

  else
  {
    v17 = sub_23E82E85C();
    v18 = sub_23E82E81C();
    v35 = v17;
    v36 = v18;
    sub_23E82E64C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A580, &unk_23E830400);
    sub_23E800258();
    sub_23E82E6CC();

    sub_23E82E97C();
    sub_23E82E99C();
    v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF30, &qword_23E831DD0) + 36));
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF38, &qword_23E831DD8) + 28);
    sub_23E82B718(&qword_27E35AF40, MEMORY[0x277CE1598]);
    v21 = v33;
    sub_23E82E30C();
    (*(v34 + 8))(v12, v9);
    (*(v13 + 8))(v16, v21);
    result = swift_getKeyPath();
    *v19 = result;
  }

  return result;
}

uint64_t sub_23E82A970@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E82E81C();
  *a1 = result;
  return result;
}

uint64_t sub_23E82A998@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 17);
  *a1 = sub_23E82E91C();
  a1[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AEF0, &qword_23E831D88);
  if (v6)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  return sub_23E829F24(v4, v9 | v5, (a1 + *(v8 + 44)), v3);
}

uint64_t sub_23E82AA18@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(sub_23E82E2EC() + 20);
  v7 = *MEMORY[0x277CE0118];
  v8 = sub_23E82E45C();
  (*(*(v8 - 8) + 104))(&a1[v6], v7, v8);
  __asm { FMOV            V0.2D, #3.0 }

  *a1 = _Q0;
  KeyPath = swift_getKeyPath();
  v15 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AED8, &qword_23E831D70) + 36)];
  *v15 = KeyPath;
  v15[1] = v5;

  sub_23E82E91C();
  sub_23E82E1FC();
  v16 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AEE0, &qword_23E831D78) + 36)];
  *v16 = v20;
  *(v16 + 1) = v21;
  *(v16 + 2) = v22;
  v17 = sub_23E82E95C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AEE8, &qword_23E831D80);
  v19 = &a1[*(result + 36)];
  *v19 = v17;
  v19[1] = v4;
  return result;
}

uint64_t sub_23E82AB84(uint64_t a1)
{
  v2 = sub_23E82E31C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23E82E35C();
}

uint64_t sub_23E82AC4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23E82E36C();
  *a1 = result;
  return result;
}

uint64_t sub_23E82ACA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23E82E38C();
  *a1 = result;
  return result;
}

uint64_t sub_23E82ACCC(uint64_t *a1)
{
  v1 = *a1;

  return sub_23E82E39C();
}

uint64_t sub_23E82ACF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_23E82E42C();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23E82E0CC();

  if (v20 == 2)
  {
    sub_23E82E41C();
    sub_23E82E40C();
    v11 = a2 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
    swift_beginAccess();
    v12 = (v11 + *(type metadata accessor for AdaptiveVoiceShortcut() + 20));
    if (v12[1])
    {
      v13 = *v12;
      v14 = v12[1];
    }
  }

  else if (v20 == 1)
  {
    sub_23E82E41C();
    sub_23E82E40C();
    v7 = a2 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
    swift_beginAccess();
    v8 = (v7 + *(type metadata accessor for AdaptiveVoiceShortcut() + 20));
    if (v8[1])
    {
      v9 = *v8;
      v10 = v8[1];
    }
  }

  else
  {
    sub_23E82E41C();
    sub_23E82E40C();
    v15 = a2 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_avsShortcut;
    swift_beginAccess();
    v16 = (v15 + *(type metadata accessor for AdaptiveVoiceShortcut() + 20));
    if (v16[1])
    {
      v17 = *v16;
      v18 = v16[1];
    }
  }

  sub_23E82E3FC();

  sub_23E82E40C();
  return sub_23E82E44C();
}

unint64_t sub_23E82AFE8()
{
  result = qword_27E35AE60;
  if (!qword_27E35AE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AE50, &qword_23E831B00);
    sub_23E82B0A0();
    sub_23E7F5640(&qword_27E35AE78, &qword_27E35AE80, &unk_23E831B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AE60);
  }

  return result;
}

unint64_t sub_23E82B0A0()
{
  result = qword_27E35AE68;
  if (!qword_27E35AE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AE48, &qword_23E831AF8);
    sub_23E82B158();
    sub_23E7F5640(&qword_27E35A6D0, &qword_27E35A6D8, &qword_23E831B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AE68);
  }

  return result;
}

unint64_t sub_23E82B158()
{
  result = qword_27E35AE70;
  if (!qword_27E35AE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AE40, &qword_23E831AF0);
    sub_23E82B718(&qword_27E35A5F8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AE70);
  }

  return result;
}

unint64_t sub_23E82B214()
{
  result = qword_27E35AB78;
  if (!qword_27E35AB78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E35AB78);
  }

  return result;
}

uint64_t sub_23E82B260@<X0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = fminf((*a1 * 80.0) + 4.4444, 80.0);
  result = sub_23E82E80C();
  *a2 = 0x4008000000000000;
  *(a2 + 8) = v3;
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_23E82B2C4()
{
  result = qword_27E35AEA0;
  if (!qword_27E35AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AEA0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E82B32C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23E82B374(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E82B3D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23E82B434(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_23E82B4D0(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_23E82B4EC()
{
  result = qword_27E35AF48;
  if (!qword_27E35AF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AEE8, &qword_23E831D80);
    sub_23E82B5A4();
    sub_23E7F5640(&qword_27E35AF78, &qword_27E35AF80, &qword_23E831E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AF48);
  }

  return result;
}

unint64_t sub_23E82B5A4()
{
  result = qword_27E35AF50;
  if (!qword_27E35AF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AEE0, &qword_23E831D78);
    sub_23E82B630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AF50);
  }

  return result;
}

unint64_t sub_23E82B630()
{
  result = qword_27E35AF58;
  if (!qword_27E35AF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AED8, &qword_23E831D70);
    sub_23E82B718(&qword_27E35AF60, MEMORY[0x277CDFC08]);
    sub_23E7F5640(&qword_27E35AF68, &qword_27E35AF70, &qword_23E831E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AF58);
  }

  return result;
}

uint64_t sub_23E82B718(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23E82B76C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23E82B7B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23E82B820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a2;
  v50 = a4;
  LODWORD(v46) = a3;
  v55 = a5;
  v6 = sub_23E82DF7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A208, &qword_23E830130);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AF98, &unk_23E831ED0);
  v52 = *(v14 - 8);
  v53 = v14;
  v15 = *(v52 + 64);
  MEMORY[0x28223BE20](v14);
  v51 = v45 - v16;
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v17 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v18 = qword_27E35D0B8;
    v19 = qword_27E35D0B8;
  }

  else
  {
    v19 = [objc_opt_self() mainBundle];
    v18 = 0;
  }

  v20 = v18;
  v43 = 0x800000023E833290;
  v21 = sub_23E82DCDC();
  v47 = v22;
  v48 = v21;

  if (!v17)
  {
    v20 = [objc_opt_self() mainBundle];
  }

  v43 = 0x800000023E833290;
  v23 = sub_23E82DCDC();
  v45[1] = v24;
  v45[2] = v23;

  v45[3] = v45;
  v26 = MEMORY[0x28223BE20](v25);
  v45[0] = v40;
  MEMORY[0x28223BE20](v26);
  v46 = v40;
  v41 = a1;
  v42 = v27;
  LOBYTE(v43) = v28;
  v44 = v29;
  v56 = MEMORY[0x277D84F90];
  sub_23E82D1F0(&qword_27E35A228, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A230, &qword_23E82FFE0);
  sub_23E7F5640(&qword_27E35A238, &qword_27E35A230, &qword_23E82FFE0);
  sub_23E82ECAC();
  sub_23E82E8EC();
  (*(v7 + 8))(v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFA0, &qword_23E831EE0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFA8, &qword_23E831EE8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AFB0, &qword_23E831EF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AFB8, &qword_23E831EF8);
  v33 = sub_23E82D114();
  v34 = sub_23E7F5640(&qword_27E35AFD0, &qword_27E35AFB8, &qword_23E831EF8);
  v56 = v31;
  v57 = v32;
  v58 = v33;
  v59 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = sub_23E7F5640(&qword_27E35AFD8, &qword_27E35AFA8, &qword_23E831EE8);
  v43 = MEMORY[0x277CE1410];
  v41 = OpaqueTypeConformance2;
  v40[0] = v30;
  v40[1] = MEMORY[0x277CE1428];
  v36 = v51;
  sub_23E82DF5C();
  v37 = v55;
  (*(v52 + 32))(v55, v36, v53);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFE0, &qword_23E831F00);
  v39 = (v37 + *(result + 36));
  *v39 = 0;
  v39[1] = 0;
  v39[2] = sub_23E82D0A8;
  v39[3] = 0;
  return result;
}

uint64_t sub_23E82BE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v33 = a2;
  v34 = a1;
  v35 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35B000, &unk_23E831F20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  v30 = sub_23E82DF8C();
  v10 = *(v30 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v30);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFB0, &qword_23E831EF0);
  v14 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v31 = &v30 - v15;
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v16 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v17 = qword_27E35D0B8;
  }

  else
  {
    v17 = [objc_opt_self() mainBundle];
    v16 = 0;
  }

  v18 = v16;
  sub_23E82DCDC();

  v19 = sub_23E82E0FC();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = swift_allocObject();
  v21 = v33;
  v22 = v34;
  *(v20 + 16) = v34;
  *(v20 + 24) = v21;
  v23 = a3 & 1;
  *(v20 + 32) = a3 & 1;
  v24 = v32;
  *(v20 + 40) = v32;

  sub_23E82DF9C();
  v25 = sub_23E82E5CC();
  v26 = v31;
  (*(v10 + 32))(v31, v13, v30);
  v27 = v26 + *(v36 + 36);
  *v27 = v25;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  *(v27 + 40) = 1;
  v38 = v23;
  v39 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  sub_23E82E89C();
  LODWORD(v30) = v37;
  v28 = swift_allocObject();
  *(v28 + 16) = v22;
  *(v28 + 24) = v21;
  *(v28 + 32) = v23;
  *(v28 + 40) = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFB8, &qword_23E831EF8);
  sub_23E82D114();
  sub_23E7F5640(&qword_27E35AFD0, &qword_27E35AFB8, &qword_23E831EF8);
  sub_23E82E78C();

  return sub_23E82D250(v26);
}

uint64_t sub_23E82C298()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35B008, &qword_23E831F30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35A268, &qword_23E830350);
  sub_23E82D2C8();
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
  swift_getOpaqueTypeConformance2();
  return sub_23E82E23C();
}

void sub_23E82C39C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a3;
  v23 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A268, &qword_23E830350);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  v26 = v13;
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v14 = qword_27E35D0B8;
  if (qword_27E35D0B8)
  {
    v15 = qword_27E35D0B8;
  }

  else
  {
    v15 = [objc_opt_self() mainBundle];
    v14 = 0;
  }

  v16 = v14;
  v17 = sub_23E82DCDC();
  v19 = v18;

  v24 = v17;
  v25 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v22 & 1;
  *(v20 + 40) = a4;
  sub_23E7F84B0();

  sub_23E82E8CC();
  sub_23E82D2C8();
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
  sub_23E82E73C();
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_23E82C644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFA8, &qword_23E831EE8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  *v14 = sub_23E82E48C();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFE8, &qword_23E831F08);
  sub_23E82C77C(a1, a2, a3, a4, &v14[*(v15 + 44)]);
  sub_23E7F3284(v14, a5);
  return (*(v11 + 56))(a5, 0, 1, v10);
}

uint64_t sub_23E82C77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v53 = a2;
  v54 = a4;
  v5 = a3;
  v52 = a3;
  v51 = a1;
  v63 = a5;
  v60 = sub_23E82DFBC();
  v58 = *(v60 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFF0, &qword_23E831F10);
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = *(v61 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v50 - v13;
  v14 = sub_23E82DFAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A268, &qword_23E830350);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A270, &qword_23E830010);
  v64 = *(v56 - 8);
  v24 = v64[8];
  v25 = MEMORY[0x28223BE20](v56);
  v55 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v50 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  v30 = v53;
  *(v29 + 24) = v53;
  *(v29 + 32) = v5;
  v31 = v54;
  *(v29 + 40) = v54;

  sub_23E82E8BC();
  sub_23E82E15C();
  sub_23E7F5640(&qword_27E35A278, &qword_27E35A268, &qword_23E830350);
  sub_23E82D1F0(&qword_27E35A280, MEMORY[0x277CE76F0]);
  v50 = v28;
  sub_23E82E6EC();
  (*(v15 + 8))(v18, v14);
  v32 = *(v20 + 8);
  v32(v23, v19);
  v33 = swift_allocObject();
  *(v33 + 16) = v51;
  *(v33 + 24) = v30;
  *(v33 + 32) = v52;
  *(v33 + 40) = v31;

  sub_23E82E8BC();
  v34 = v57;
  sub_23E82E16C();
  sub_23E82D1F0(&qword_27E35A290, MEMORY[0x277CE7708]);
  v35 = v65;
  v36 = v60;
  sub_23E82E6EC();
  (*(v58 + 8))(v34, v36);
  v32(v23, v19);
  v37 = v64[2];
  v38 = v55;
  v39 = v28;
  v40 = v56;
  v37(v55, v39, v56);
  v41 = v61;
  v42 = v62;
  v43 = *(v61 + 16);
  v44 = v59;
  v43(v59, v35, v62);
  v45 = v63;
  v37(v63, v38, v40);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFF8, &qword_23E831F18);
  v43(&v45[*(v46 + 48)], v44, v42);
  v47 = *(v41 + 8);
  v47(v65, v42);
  v48 = v64[1];
  v48(v50, v40);
  v47(v44, v42);
  return (v48)(v38, v40);
}

uint64_t sub_23E82CDF8(uint64_t a1, uint64_t a2)
{
  _AXSSetAudioDonationSiriImprovementEnabled();
  v3 = a2 + OBJC_IVAR____TtC22AdaptiveVoiceShortcuts20AVSCoordinatorObject_dismissEnrollmentFlow;
  swift_beginAccess();
  v5 = *v3;
  v4 = *(v3 + 8);

  v5(v6);
}

uint64_t sub_23E82CE70@<X0>(uint64_t a1@<X8>)
{
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v3 = [objc_opt_self() mainBundle];
  }

  v4 = v2;
  result = sub_23E82E68C();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_23E82CF8C@<X0>(uint64_t a1@<X8>)
{
  sub_23E82E43C();
  if (qword_27E35A1C8 != -1)
  {
    swift_once();
  }

  v2 = qword_27E35D0B8;
  if (!qword_27E35D0B8)
  {
    v3 = [objc_opt_self() mainBundle];
  }

  v4 = v2;
  result = sub_23E82E68C();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

id sub_23E82D0A8()
{
  v0 = objc_opt_self();

  return [v0 setShouldHideAudioDonationPrompt_];
}

unint64_t sub_23E82D114()
{
  result = qword_27E35AFC0;
  if (!qword_27E35AFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AFB0, &qword_23E831EF0);
    sub_23E82D1F0(&qword_27E35AFC8, MEMORY[0x277CE7690]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35AFC0);
  }

  return result;
}

uint64_t sub_23E82D1D0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_23E82CDF8(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_23E82D1E0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_23E81965C(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_23E82D1F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E82D240()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_23E82C298();
}

uint64_t sub_23E82D250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35AFB0, &qword_23E831EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E82D2C8()
{
  result = qword_27E35B010;
  if (!qword_27E35B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35B010);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E82D364()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35A3B0, &qword_23E8301D0);
  return sub_23E82E88C();
}

unint64_t sub_23E82D3D0()
{
  result = qword_27E35B018;
  if (!qword_27E35B018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35AFE0, &qword_23E831F00);
    sub_23E7F5640(&qword_27E35B020, &qword_27E35AF98, &unk_23E831ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35B018);
  }

  return result;
}

id sub_23E82D48C()
{
  v5 = *v0;
  v1 = sub_23E82EA5C();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v2)
  {
    result = [v2 splashController];
    if (result)
    {
      v4 = result;

      return v4;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return v5;
  }

  return result;
}

uint64_t sub_23E82D5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E82D69C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23E82D610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E82D69C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23E82D674()
{
  sub_23E82D69C();
  sub_23E82E58C();
  __break(1u);
}

unint64_t sub_23E82D69C()
{
  result = qword_27E35B028;
  if (!qword_27E35B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35B028);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27E35D088 == -1)
  {
    if (qword_27E35D090)
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
    if (qword_27E35D090)
    {
      goto LABEL_3;
    }
  }

  if (qword_27E35D080 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
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
      if (dword_27E35D074 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27E35D074 >= a3)
      {
        result = dword_27E35D078 >= a4;
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
  v1 = qword_27E35D090;
  if (qword_27E35D090)
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
      qword_27E35D090 = MEMORY[0x28223BE68];
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
                          v14 = MEMORY[0x23EF15250](v13);
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
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27E35D074, &dword_27E35D078);
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