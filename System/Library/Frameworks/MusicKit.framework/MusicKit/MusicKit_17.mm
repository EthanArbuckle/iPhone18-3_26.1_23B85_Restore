uint64_t sub_217354E34(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_217752518();
  *(v2 + 48) = sub_217752508();
  v4 = sub_217752498();

  return MEMORY[0x2822009F8](sub_217356260, v4, v3);
}

uint64_t sub_217354ECC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  sub_217752518();
  *(v2 + 48) = sub_217752508();
  v4 = sub_217752498();

  return MEMORY[0x2822009F8](sub_217354F64, v4, v3);
}

uint64_t sub_217354F64()
{
  OUTLINED_FUNCTION_10();
  v2 = v0[5];
  v1 = v0[6];

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2173555AC();
  }

  v3 = v0[1];

  return v3();
}

id (*sub_21735500C(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 60);
  return sub_217355038;
}

void sub_217355064(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_2173550D8(&v4);
  *a2 = v4;
}

unsigned __int8 *sub_2173550A0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_2173550E4(&v4);
}

uint64_t (*sub_217355108(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 64);
  return sub_217355134;
}

void sub_21735514C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  sub_2173551C0(&v4);
  *a2 = v4;
}

unsigned __int8 *sub_217355188(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_2173551CC(&v4);
}

uint64_t (*sub_2173551F0(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 65);
  return sub_21735521C;
}

uint64_t sub_217355234(uint64_t *a1, char a2, uint64_t (*a3)(char *))
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    v7 = *(a1 + 8);
    v5 = &v7;
  }

  else
  {
    v8 = *(a1 + 8);
    v5 = &v8;
  }

  return a3(v5);
}

uint64_t sub_217355280@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2173552F4(&v5);
  *a2 = v5;
  return result;
}

uint64_t sub_2173552BC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_217355338(&v4);
}

uint64_t sub_2173552F4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_217355338(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_217355378()
{
  v3 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24428, &qword_217758738);
  sub_217283840(&qword_27CB24430, &qword_27CB24428, &qword_217758738);
  v1 = sub_217751C38();

  return v1;
}

uint64_t sub_217355418()
{
  v1 = *(*(v0 + 24) + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244D8, &qword_2177589B0);
  sub_217283840(&qword_280BE73D8, &qword_27CB244D8, &qword_2177589B0);
  sub_217751BB8();
}

void sub_2173554B4()
{
  static MusicAuthorization.currentStatus.getter(&v3);
  switch(v3)
  {
    case 2:
      OUTLINED_FUNCTION_8_21();
      goto LABEL_3;
    case 3:

      goto LABEL_6;
    default:
LABEL_3:
      OUTLINED_FUNCTION_7_17();
      v1 = sub_217753058();

      if ((v1 & 1) == 0)
      {
        return;
      }

LABEL_6:
      sub_2174EB138([*(v0 + 32) nowPlayingAudioFormat], &v2);
      sub_21735584C(&v2);
      return;
  }
}

void sub_2173555AC()
{
  sub_2173547B8([*(v0 + 32) playbackState], &v5);
  sub_217355670(&v5);
  [*(v0 + 32) currentPlaybackRate];
  sub_2173556A4(1, v1);
  sub_217354860([*(v0 + 32) repeatMode], &v4);
  sub_217355718(&v4, 1);
  sub_2173549A4([*(v0 + 32) shuffleMode], &v3);
  sub_2173557AC(&v3, 1);
  sub_2174EB138([*(v0 + 32) nowPlayingAudioFormat], &v2);
  sub_21735584C(&v2);
}

unsigned __int8 *sub_217355670(unsigned __int8 *result)
{
  v2 = *result;
  if (*(v1 + 56) != v2)
  {
    result = sub_217355418();
    *(v1 + 56) = v2;
  }

  return result;
}

id sub_2173556A4(id result, float a2)
{
  if (*(v2 + 60) != a2)
  {
    v4 = result;
    result = sub_217355418();
    *(v2 + 60) = a2;
    if ((v4 & 1) == 0)
    {
      v6 = *(v2 + 32);
      *&v5 = a2;

      return [v6 setCurrentPlaybackRate_];
    }
  }

  return result;
}

unsigned __int8 *sub_217355718(unsigned __int8 *result, char a2)
{
  v4 = *result;
  v5 = *result;
  v6 = *(v2 + 64);
  if (v6 == 3)
  {
    if (v5 == 3)
    {
      return result;
    }
  }

  else if (v6 == v5)
  {
    return result;
  }

  result = sub_217355418();
  *(v2 + 64) = v5;
  if ((a2 & 1) == 0)
  {
    v7 = qword_21775F630[v4];
    v8 = *(v2 + 32);

    return [v8 setRepeatMode_];
  }

  return result;
}

unsigned __int8 *sub_2173557AC(unsigned __int8 *result, char a2)
{
  v4 = *result;
  v5 = *(v2 + 65);
  if (v5 == 2)
  {
    if (v4 == 2)
    {
      return result;
    }
  }

  else if (v4 != 2 && ((v5 ^ v4) & 1) == 0)
  {
    return result;
  }

  result = sub_217355418();
  *(v2 + 65) = v4;
  if ((a2 & 1) == 0)
  {
    v6 = *(v2 + 32);
    v7 = 1;
    if (v4)
    {
      v7 = 2;
    }

    if (v4 == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    return [v6 setShuffleMode_];
  }

  return result;
}

void sub_21735584C(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 == 6)
  {
    if (v2 == 6)
    {
      return;
    }
  }

  else if (v3 == v2)
  {
    return;
  }

  sub_217355418();
  *(v1 + 16) = v2;
  if (qword_27CB23C60 != -1)
  {
    swift_once();
  }

  v4 = sub_217751AF8();
  __swift_project_value_buffer(v4, qword_27CB8A2A0);
  v5 = sub_217751AD8();
  v6 = sub_217752828();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25CC8, &qword_21775F608);
    v9 = sub_217751FA8();
    v11 = sub_21729C0E8(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = sub_217751FA8();
    v14 = sub_21729C0E8(v12, v13, &v15);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_2171EE000, v5, v6, "MusicPlayer.State's audioVariant was updated from %{public}s to %{public}s.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA4360](v8, -1, -1);
    MEMORY[0x21CEA4360](v7, -1, -1);
  }
}

uint64_t MusicPlayer.State.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return v0;
}

uint64_t MusicPlayer.State.__deallocating_deinit()
{
  MusicPlayer.State.deinit();

  return MEMORY[0x2821FE8D8](v0, 66, 7);
}

unint64_t sub_217355AA8()
{
  result = qword_27CB25CB0;
  if (!qword_27CB25CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25CB0);
  }

  return result;
}

unint64_t sub_217355B00()
{
  result = qword_27CB25CB8;
  if (!qword_27CB25CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25CB8);
  }

  return result;
}

unint64_t sub_217355B58()
{
  result = qword_27CB25CC0;
  if (!qword_27CB25CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25CC0);
  }

  return result;
}

uint64_t sub_217355BAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217355378();
  *a1 = result;
  return result;
}

_BYTE *_s14PlaybackStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s10RepeatModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s11ShuffleModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_217356050()
{
  OUTLINED_FUNCTION_10();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_5(v1);

  return sub_217354E34(v2, v3);
}

uint64_t sub_2173560D8()
{
  OUTLINED_FUNCTION_10();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_5(v1);

  return sub_217354ECC(v2, v3);
}

uint64_t sub_217356160()
{
  OUTLINED_FUNCTION_10();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t CloudMusicVideo.Attributes.artwork.getter()
{
  OUTLINED_FUNCTION_136_4(v3);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x1B8uLL);
  return sub_2172E3D54();
}

void static CloudMusicVideo.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0, v1);
  v3 = v2;
  v5 = v4;
  v6 = sub_2177516D8();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v17 = OUTLINED_FUNCTION_45_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_6_1();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_99();
  v208 = v26;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v200 - v29;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  v31 = OUTLINED_FUNCTION_43(v210);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31, v34);
  OUTLINED_FUNCTION_31();
  v207 = v35;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v36, v37);
  OUTLINED_FUNCTION_99();
  v209 = v38;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v200 - v41;
  OUTLINED_FUNCTION_203_1();
  OUTLINED_FUNCTION_149_4();
  memcpy(v43, v44, v45);
  v46 = OUTLINED_FUNCTION_202_2();
  memcpy(v46, v3, 0x1B8uLL);
  OUTLINED_FUNCTION_149_4();
  memcpy(v47, v48, v49);
  memcpy(&v222[27] + 8, v3, 0x1B8uLL);
  OUTLINED_FUNCTION_149_4();
  memcpy(v50, v51, v52);
  OUTLINED_FUNCTION_104(&v226);
  if (v56)
  {
    OUTLINED_FUNCTION_162_3(v221);
    OUTLINED_FUNCTION_104(v221);
    if (v56)
    {
      v204 = v23;
      v205 = v15;
      v206 = v9;
      memcpy(v225, v222, sizeof(v225));
      OUTLINED_FUNCTION_203_1();
      OUTLINED_FUNCTION_46_3();
      sub_2172E3D54();
      OUTLINED_FUNCTION_202_2();
      OUTLINED_FUNCTION_46_3();
      sub_2172E3D54();
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v53, v54, v55);
      goto LABEL_12;
    }

LABEL_8:
    memcpy(v221, v222, sizeof(v221));
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_202_2();
    OUTLINED_FUNCTION_225_0();
    v57 = &unk_27CB25008;
    v58 = &unk_21778F850;
    v59 = v221;
LABEL_9:
    sub_2171F0738(v59, v57, v58);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_162_3(v220);
  OUTLINED_FUNCTION_104(v220);
  if (v56)
  {
    goto LABEL_8;
  }

  v204 = v23;
  v205 = v15;
  v206 = v9;
  OUTLINED_FUNCTION_162_3(v211);
  OUTLINED_FUNCTION_162_3(v221);
  memcpy(v225, v222, sizeof(v225));
  OUTLINED_FUNCTION_203_1();
  sub_2172E3D54();
  OUTLINED_FUNCTION_202_2();
  sub_2172E3D54();
  sub_2172A92BC();
  v61 = v60;
  sub_2171F0738(v211, &qword_27CB25000, &unk_21776EA00);
  memcpy(v212, v222, sizeof(v212));
  sub_2171F0738(v212, &qword_27CB25000, &unk_21776EA00);
  if ((v61 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v62 = v5[56];
  v63 = v3[56];
  if (v62)
  {
    if (!v63)
    {
      goto LABEL_10;
    }

    v64 = v5[55] == v3[55] && v62 == v63;
    if (!v64 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v63)
  {
    goto LABEL_10;
  }

  v65 = v5[58];
  v66 = v3[58];
  if (v65)
  {
    if (!v66)
    {
      goto LABEL_10;
    }

    v67 = v5[57] == v3[57] && v65 == v66;
    if (!v67 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v66)
  {
    goto LABEL_10;
  }

  v202 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v203 = v6;
  v68 = v202[7];
  v69 = *(v210 + 48);
  v70 = &unk_27CB277C0;
  OUTLINED_FUNCTION_46_3();
  sub_2172E3D54();
  v71 = v203;
  OUTLINED_FUNCTION_46_3();
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v42, 1, v71);
  if (v56)
  {
    OUTLINED_FUNCTION_133(&v42[v69], 1, v71);
    if (v56)
    {
      sub_2171F0738(v42, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_5_3();
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(&v42[v69], 1, v71);
  if (v72)
  {
    (*(v206 + 8))(v30, v71);
LABEL_38:
    v57 = &qword_27CB24840;
    v58 = &unk_217758DD0;
    v59 = v42;
    goto LABEL_9;
  }

  v73 = v206;
  v74 = &v42[v69];
  v75 = v205;
  (*(v206 + 32))(v205, v74, v71);
  OUTLINED_FUNCTION_0_26();
  sub_217361B1C(v76);
  HIDWORD(v201) = sub_217751F08();
  v77 = *(v73 + 8);
  LOBYTE(v70) = v77;
  v77(v75, v71);
  v77(v30, v71);
  sub_2171F0738(v42, &unk_27CB277C0, &qword_217758DC0);
  if ((v201 & 0x100000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_40:
  v78 = v202;
  v79 = v202[8];
  OUTLINED_FUNCTION_24_3();
  if (v82)
  {
    if (!v80)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v81);
    v85 = v56 && v83 == v84;
    if (!v85 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v80)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_144_3(v78[9]);
  if (v87)
  {
    if (!v86)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v88)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_142_4(v78[10]);
  if (v42)
  {
    if (!v30)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_5_3();
    sub_217262A00();
    OUTLINED_FUNCTION_196_2();
    if ((v70 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v30)
  {
    goto LABEL_10;
  }

  v89 = (v5 + v78[11]);
  memcpy(v218, v89, sizeof(v218));
  v90 = (v3 + v78[11]);
  memcpy(v219, v90, sizeof(v219));
  v91 = v89[1];
  *v212 = *v89;
  *&v212[16] = v91;
  v92 = v89[3];
  *&v212[32] = v89[2];
  *&v212[48] = v92;
  v93 = v218[8];
  if (!v218[8])
  {
    if (!v219[8])
    {
      v103 = v89[1];
      v222[0] = *v89;
      v222[1] = v103;
      v104 = v89[3];
      v222[2] = v89[2];
      v222[3] = v104;
      *&v222[4] = 0;
      v93 = &qword_27CB25010;
      OUTLINED_FUNCTION_46_3();
      sub_2172E3D54();
      OUTLINED_FUNCTION_46_3();
      sub_2172E3D54();
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v105, v106, v107);
      goto LABEL_66;
    }

LABEL_63:
    v99 = v89[1];
    v222[0] = *v89;
    v222[1] = v99;
    v100 = v89[3];
    v222[2] = v89[2];
    v222[3] = v100;
    v101 = *(v90 + 1);
    *(&v222[4] + 8) = *v90;
    *(&v222[5] + 8) = v101;
    v102 = *(v90 + 3);
    *(&v222[6] + 8) = *(v90 + 2);
    *(&v222[7] + 8) = v102;
    *&v222[4] = v218[8];
    *(&v222[8] + 1) = v219[8];
    OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_225_0();
    v57 = &unk_27CB25018;
    v58 = &unk_21775B500;
LABEL_64:
    v59 = v222;
    goto LABEL_9;
  }

  if (!v219[8])
  {
    goto LABEL_63;
  }

  v94 = *(v90 + 1);
  v220[0] = *v90;
  v220[1] = v94;
  v95 = *(v90 + 3);
  v220[2] = *(v90 + 2);
  v220[3] = v95;
  *&v220[4] = v219[8];
  memcpy(v224, v220, sizeof(v224));
  v96 = v89[1];
  v222[55] = *v89;
  v222[56] = v96;
  v97 = v89[3];
  v222[57] = v89[2];
  v222[58] = v97;
  v223 = v218[8];
  v90 = &qword_27CB25010;
  sub_2172E3D54();
  sub_2172E3D54();
  sub_2172A9570();
  v89 = v98;
  sub_2171F0738(v220, &qword_27CB25010, &qword_21775B4F8);
  v222[0] = *v212;
  v222[1] = *&v212[16];
  v222[2] = *&v212[32];
  v222[3] = *&v212[48];
  *&v222[4] = v93;
  sub_2171F0738(v222, &qword_27CB25010, &qword_21775B4F8);
  if ((v89 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_66:
  OUTLINED_FUNCTION_142_4(v78[12]);
  if (v90)
  {
    if (!v89)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_5_3();
    sub_217262CB4();
    OUTLINED_FUNCTION_196_2();
    if ((v93 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v89)
  {
    goto LABEL_10;
  }

  v108 = v78[13];
  v109 = *(v5 + v108);
  v110 = *(v3 + v108);
  if (v109)
  {
    if (!v110 || (sub_217270790(v109, v110) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v110)
  {
    goto LABEL_10;
  }

  v111 = v78[14];
  v112 = *(v5 + v111);
  v113 = *(v3 + v111);
  if (v112 == 2)
  {
    if (v113 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v113 == 2 || ((v113 ^ v112) & 1) != 0)
  {
    goto LABEL_10;
  }

  v114 = v202[15];
  v115 = *(v5 + v114);
  v116 = *(v3 + v114);
  if (v115 == 2)
  {
    if (v116 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (v116 == 2 || ((v116 ^ v115) & 1) != 0)
  {
    goto LABEL_10;
  }

  v117 = v202[16];
  v118 = v209;
  v119 = *(v210 + 48);
  v120 = &unk_27CB277C0;
  OUTLINED_FUNCTION_46_3();
  sub_2172E3D54();
  OUTLINED_FUNCTION_46_3();
  sub_2172E3D54();
  OUTLINED_FUNCTION_45(v118);
  if (v56)
  {
    OUTLINED_FUNCTION_45(v119 + v209);
    if (v56)
    {
      sub_2171F0738(v209, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_96;
    }

LABEL_94:
    v57 = &qword_27CB24840;
    v58 = &unk_217758DD0;
    v59 = v209;
    goto LABEL_9;
  }

  v121 = v209;
  sub_2172E3D54();
  OUTLINED_FUNCTION_45(v119 + v121);
  if (v122)
  {
    (*(v206 + 8))(v208, v203);
    goto LABEL_94;
  }

  v124 = v205;
  v123 = v206;
  v125 = v209;
  v117 = v203;
  (*(v206 + 32))(v205, v119 + v209, v203);
  OUTLINED_FUNCTION_0_26();
  sub_217361B1C(v126);
  v127 = v208;
  LOBYTE(v120) = sub_217751F08();
  v119 = *(v123 + 8);
  v119(v124, v117);
  v119(v127, v117);
  sub_2171F0738(v125, &unk_27CB277C0, &qword_217758DC0);
  if ((v120 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_96:
  v128 = v202[17];
  OUTLINED_FUNCTION_24_3();
  if (v131)
  {
    if (!v129)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v130);
    v134 = v56 && v132 == v133;
    if (!v134 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v129)
  {
    goto LABEL_10;
  }

  v135 = v202[18];
  OUTLINED_FUNCTION_24_3();
  if (v138)
  {
    if (!v136)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v137);
    v141 = v56 && v139 == v140;
    if (!v141 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v136)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_142_4(v202[19]);
  if (v117)
  {
    if (!v119)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    v142 = OUTLINED_FUNCTION_5_3();
    sub_2172711A8(v142, v143);
    OUTLINED_FUNCTION_196_2();
    if ((v120 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v119)
  {
    goto LABEL_10;
  }

  v144 = (v5 + v202[20]);
  memcpy(v212, v144, 0x78uLL);
  v145 = v3 + v202[20];
  memcpy(v220, v145, 0x78uLL);
  v146 = *v212;
  v147 = *&v212[8];
  memcpy(v217, v144 + 2, sizeof(v217));
  v148 = v220[0];
  memcpy(v216, v145 + 16, sizeof(v216));
  if (!*&v212[8])
  {
    if (!*(&v220[0] + 1))
    {
      v222[0] = *v212;
      OUTLINED_FUNCTION_221_1();
      v150 = &qword_27CB244D0;
      OUTLINED_FUNCTION_46_3();
      sub_2172E3D54();
      OUTLINED_FUNCTION_46_3();
      sub_2172E3D54();
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v151, v152, v153);
      goto LABEL_128;
    }

    OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_225_0();
    goto LABEL_126;
  }

  v222[0] = *v212;
  OUTLINED_FUNCTION_221_1();
  memcpy(v211, v222, 0x78uLL);
  if (!*(&v148 + 1))
  {
    memcpy(v215, v222, sizeof(v215));
    OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_225_0();
    OUTLINED_FUNCTION_225_0();
    sub_2172848C0(v215);
LABEL_126:
    *&v222[0] = v146;
    *(&v222[0] + 1) = v147;
    memcpy(&v222[1], v217, 0x68uLL);
    *(&v222[7] + 8) = v148;
    memcpy(&v222[8] + 8, v216, 0x68uLL);
    v57 = &qword_27CB24AE8;
    v58 = &unk_2177590C0;
    goto LABEL_64;
  }

  memcpy(&v215[16], v145 + 16, 0x68uLL);
  *v215 = v148;
  v144 = &qword_27CB244D0;
  v145 = &unk_21775D620;
  OUTLINED_FUNCTION_190_3();
  OUTLINED_FUNCTION_190_3();
  OUTLINED_FUNCTION_190_3();
  static PlayParameters.== infix(_:_:)(v211, v215);
  LOBYTE(v150) = v149;
  memcpy(v213, v215, sizeof(v213));
  sub_2172848C0(v213);
  memcpy(v214, v211, sizeof(v214));
  sub_2172848C0(v214);
  *v215 = v146;
  *&v215[8] = v147;
  memcpy(&v215[16], v217, 0x68uLL);
  sub_2171F0738(v215, &qword_27CB244D0, &unk_21775D620);
  if ((v150 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_128:
  OUTLINED_FUNCTION_142_4(v202[21]);
  if (v145)
  {
    if (!v144)
    {
      goto LABEL_10;
    }

    sub_217751DE8();
    v154 = OUTLINED_FUNCTION_5_3();
    sub_2172723E0(v154, v155, v156, v157, v158, v159, v160, v161, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211[0]);
    OUTLINED_FUNCTION_196_2();
    if ((v150 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v144)
  {
    goto LABEL_10;
  }

  v162 = v202[22];
  OUTLINED_FUNCTION_24_3();
  if (v165)
  {
    if (!v163)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v164);
    v168 = v56 && v166 == v167;
    if (!v168 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v163)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_144_3(v202[23]);
  if (v170)
  {
    if (!v169)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v171)
    {
      goto LABEL_10;
    }
  }

  v172 = v202[24];
  v173 = *(v210 + 48);
  v174 = v207;
  OUTLINED_FUNCTION_46_3();
  sub_2172E3D54();
  OUTLINED_FUNCTION_46_3();
  sub_2172E3D54();
  OUTLINED_FUNCTION_45(v174);
  if (!v56)
  {
    v175 = v207;
    sub_2172E3D54();
    OUTLINED_FUNCTION_45(v175 + v173);
    if (!v176)
    {
      v177 = v206;
      v178 = v207;
      v179 = &v207[v173];
      v180 = v203;
      (*(v206 + 32))(v205, v179, v203);
      OUTLINED_FUNCTION_0_26();
      sub_217361B1C(v181);
      v182 = v204;
      v183 = sub_217751F08();
      v184 = *(v177 + 8);
      v185 = OUTLINED_FUNCTION_205_0();
      v184(v185);
      (v184)(v182, v180);
      sub_2171F0738(v178, &unk_27CB277C0, &qword_217758DC0);
      if ((v183 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_156;
    }

    (*(v206 + 8))(v204, v203);
    goto LABEL_154;
  }

  OUTLINED_FUNCTION_45(&v207[v173]);
  if (!v56)
  {
LABEL_154:
    v57 = &qword_27CB24840;
    v58 = &unk_217758DD0;
    v59 = v207;
    goto LABEL_9;
  }

  sub_2171F0738(v207, &unk_27CB277C0, &qword_217758DC0);
LABEL_156:
  v186 = v202[25];
  OUTLINED_FUNCTION_24_3();
  if (v189)
  {
    if (!v187)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_59_0(v188);
    v192 = v56 && v190 == v191;
    if (!v192 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v187)
  {
    goto LABEL_10;
  }

  v193 = v202[26];
  OUTLINED_FUNCTION_24_3();
  if (v196 && v194)
  {
    OUTLINED_FUNCTION_59_0(v195);
    if (v56)
    {
      v199 = v197 == v198;
    }

    else
    {
      v199 = 0;
    }

    if (!v199)
    {
      sub_217753058();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_2173572AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7255747369747261 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000002177ABFE0 == a2;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000002177AB890 == a2;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4B34736168 && a2 == 0xE500000000000000;
                      if (v15 || (sub_217753058() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x524448736168 && a2 == 0xE600000000000000;
                        if (v16 || (sub_217753058() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                          if (v17 || (sub_217753058() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 1668445033 && a2 == 0xE400000000000000;
                            if (v18 || (sub_217753058() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 1701667182 && a2 == 0xE400000000000000;
                              if (v19 || (sub_217753058() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                                if (v20 || (sub_217753058() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL;
                                  if (v21 || (sub_217753058() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x7377656976657270 && a2 == 0xE800000000000000;
                                    if (v22 || (sub_217753058() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                      if (v23 || (sub_217753058() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x6D754E6B63617274 && a2 == 0xEB00000000726562;
                                        if (v24 || (sub_217753058() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 7107189 && a2 == 0xE300000000000000;
                                          if (v25 || (sub_217753058() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6275536F65646976 && a2 == 0xEC00000065707954;
                                            if (v26 || (sub_217753058() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else if (a1 == 0x656D614E6B726F77 && a2 == 0xE800000000000000)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v28 = sub_217753058();

                                              if (v28)
                                              {
                                                return 22;
                                              }

                                              else
                                              {
                                                return 23;
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

unint64_t sub_21735799C(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0x6D614E6D75626C61;
      break;
    case 2:
      result = 0x614E747369747261;
      break;
    case 3:
      result = 0x7255747369747261;
      break;
    case 4:
      result = 0x52746E65746E6F63;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
    case 8:
      result = 0x6169726F74696465;
      break;
    case 9:
      result = 0x6D614E65726E6567;
      break;
    case 10:
      result = 0x4B34736168;
      break;
    case 11:
      result = 0x524448736168;
      break;
    case 12:
      result = 0x76697372656D6D69;
      break;
    case 13:
      result = 1668445033;
      break;
    case 14:
      result = 1701667182;
      break;
    case 15:
      result = 0x73726566666FLL;
      break;
    case 16:
      result = 0x6172615079616C70;
      break;
    case 17:
      result = 0x7377656976657270;
      break;
    case 18:
      result = 0x44657361656C6572;
      break;
    case 19:
      result = 0x6D754E6B63617274;
      break;
    case 20:
      result = 7107189;
      break;
    case 21:
      result = 0x6275536F65646976;
      break;
    case 22:
      result = 0x656D614E6B726F77;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217357C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173572AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217357C5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217357994();
  *a1 = result;
  return result;
}

uint64_t sub_217357C84(uint64_t a1)
{
  v2 = sub_217361AC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217357CC0(uint64_t a1)
{
  v2 = sub_217361AC8();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudMusicVideo.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25CD8, &qword_21775F650);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  v13 = v35 - v12;
  v14 = v4[4];
  OUTLINED_FUNCTION_160(v4, v4[3]);
  sub_217361AC8();
  sub_2177532F8();
  memcpy(v49, v2, sizeof(v49));
  memcpy(v48, v2, sizeof(v48));
  v47[447] = 0;
  sub_2172E3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
  sub_2172DEEB4();
  OUTLINED_FUNCTION_37_8();
  memcpy(v47, v48, 0x1B8uLL);
  sub_2171F0738(v47, &qword_27CB25000, &unk_21776EA00);
  if (!v1)
  {
    v15 = v2[55];
    v16 = v2[56];
    OUTLINED_FUNCTION_12_14(1);
    sub_217752EF8();
    v17 = v2[57];
    v18 = v2[58];
    OUTLINED_FUNCTION_12_14(2);
    sub_217752EF8();
    v50 = type metadata accessor for CloudMusicVideo.Attributes(0);
    v19 = v50[7];
    LOBYTE(v40[0]) = 3;
    v20 = sub_2177516D8();
    OUTLINED_FUNCTION_0_26();
    v22 = sub_217361B1C(v21);
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    v35[1] = v22;
    v35[2] = v20;
    OUTLINED_FUNCTION_143_1(v50[8]);
    OUTLINED_FUNCTION_12_14(4);
    sub_217752EF8();
    v23 = v2 + v50[9];
    v24 = *v23;
    v25 = v23[8];
    OUTLINED_FUNCTION_12_14(5);
    sub_217752F28();
    v46 = *(v2 + v50[10]);
    v45[79] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    sub_217361D3C(&unk_280BE23A0);
    OUTLINED_FUNCTION_37_8();
    v26 = v50[11];
    memcpy(v45, v2 + v26, 0x48uLL);
    memcpy(v44, v2 + v26, sizeof(v44));
    v43[79] = 7;
    sub_2172E3D54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    sub_2172DF104();
    OUTLINED_FUNCTION_37_8();
    memcpy(v43, v44, 0x48uLL);
    sub_2171F0738(v43, &qword_27CB25010, &qword_21775B4F8);
    v40[0] = *(v2 + v50[12]);
    v39[0] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    sub_217361B60(&qword_280BE23B0);
    OUTLINED_FUNCTION_37_8();
    v40[0] = *(v2 + v50[13]);
    v39[0] = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2172DF950(&unk_280BE2328);
    OUTLINED_FUNCTION_37_8();
    v27 = *(v2 + v50[14]);
    LOBYTE(v40[0]) = 10;
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_66_4();
    sub_217752F08();
    v28 = *(v2 + v50[15]);
    LOBYTE(v40[0]) = 11;
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_66_4();
    sub_217752F08();
    v29 = v50[16];
    LOBYTE(v40[0]) = 12;
    OUTLINED_FUNCTION_141_3();
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    OUTLINED_FUNCTION_143_1(v50[17]);
    OUTLINED_FUNCTION_12_14(13);
    sub_217752EF8();
    OUTLINED_FUNCTION_143_1(v50[18]);
    OUTLINED_FUNCTION_12_14(14);
    sub_217752EF8();
    v42 = *(v2 + v50[19]);
    v41 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C50, &unk_217759650);
    sub_2172DF398();
    OUTLINED_FUNCTION_37_8();
    v30 = v50[20];
    memcpy(v40, v2 + v30, sizeof(v40));
    memcpy(v39, v2 + v30, sizeof(v39));
    v38[127] = 16;
    sub_2172E3D54();
    sub_2172DF550();
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    memcpy(v38, v39, 0x78uLL);
    sub_2171F0738(v38, &qword_27CB244D0, &unk_21775D620);
    v37 = *(v2 + v50[21]);
    v36 = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25CE0, &qword_21775F658);
    sub_217361BD0();
    OUTLINED_FUNCTION_37_8();
    OUTLINED_FUNCTION_143_1(v50[22]);
    LOBYTE(v37) = 18;
    OUTLINED_FUNCTION_49_0();
    sub_217752EF8();
    v31 = v2 + v50[23];
    v32 = *v31;
    v33 = v31[8];
    LOBYTE(v37) = 19;
    OUTLINED_FUNCTION_49_0();
    sub_217752F28();
    v34 = v50[24];
    LOBYTE(v37) = 20;
    OUTLINED_FUNCTION_66_4();
    sub_217752F38();
    OUTLINED_FUNCTION_143_1(v50[25]);
    LOBYTE(v37) = 21;
    OUTLINED_FUNCTION_49_0();
    sub_217752EF8();
    OUTLINED_FUNCTION_143_1(v50[26]);
    LOBYTE(v37) = 22;
    OUTLINED_FUNCTION_49_0();
    sub_217752EF8();
  }

  (*(v7 + 8))(v13, v5);
  OUTLINED_FUNCTION_170();
}

void CloudMusicVideo.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  v3 = v0;
  v5 = v4;
  v6 = sub_2177516D8();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v72 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7, v11);
  OUTLINED_FUNCTION_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_31();
  v71 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_117_7();
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v70 - v22;
  memcpy(v78, v0, sizeof(v78));
  v24 = v0[54];
  memcpy(v79, v0, sizeof(v79));
  v80 = v24;
  OUTLINED_FUNCTION_104(v79);
  if (v25)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v77, v78, sizeof(v77));
    OUTLINED_FUNCTION_119();
    CloudArtwork.hash(into:)(v5);
    sub_217751DE8();
    sub_217265A08(v5, v24);
  }

  if (v0[56])
  {
    v1 = v0[55];
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (v0[58])
  {
    v1 = v0[57];
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v26 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v27 = v26[7];
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v23, 1, v6);
  if (v25)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v28 = OUTLINED_FUNCTION_110_3();
    v29(v28, v23, v6);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_26();
    sub_217361B1C(v30);
    OUTLINED_FUNCTION_147();
    v31 = *(v1 + 8);
    v32 = OUTLINED_FUNCTION_25_0();
    v33(v32);
  }

  v34 = (v0 + v26[8]);
  if (v34[1])
  {
    OUTLINED_FUNCTION_99_2(v34);
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v35 = (v0 + v26[9]);
  if (*(v35 + 8) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_99_2(v35);
    MEMORY[0x21CEA3550](v1);
  }

  if (*(v0 + v26[10]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_129_4();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v36 = v0 + v26[11];
  if (*(v36 + 8))
  {
    v37 = *(v36 + 1);
    v77[0] = *v36;
    v77[1] = v37;
    v38 = *(v36 + 3);
    v77[2] = *(v36 + 2);
    v77[3] = v38;
    OUTLINED_FUNCTION_119();
    CloudEditorialNotes.hash(into:)();
    sub_217751DE8();
    v39 = OUTLINED_FUNCTION_129_4();
    sub_217265A08(v39, v40);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v26[12]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_129_4();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v26[13]))
  {
    OUTLINED_FUNCTION_119();
    v41 = OUTLINED_FUNCTION_129_4();
    sub_217281100(v41, v42);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + v26[14]) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  v43 = *(v0 + v26[15]);
  if (v43 != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  v44 = v26[16];
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v2, 1, v6);
  if (v25)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v45 = OUTLINED_FUNCTION_110_3();
    v46(v45, v2, v6);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_26();
    sub_217361B1C(v47);
    OUTLINED_FUNCTION_147();
    v48 = *(v43 + 8);
    v49 = OUTLINED_FUNCTION_25_0();
    v50(v49);
  }

  v51 = (v0 + v26[17]);
  if (v51[1])
  {
    OUTLINED_FUNCTION_99_2(v51);
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v52 = (v0 + v26[18]);
  if (v52[1])
  {
    OUTLINED_FUNCTION_99_2(v52);
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v53 = *(v0 + v26[19]);
  if (v53)
  {
    OUTLINED_FUNCTION_119();
    sub_217280F7C(v5, v53);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v54 = (v0 + v26[20]);
  v55 = *v54;
  v56 = v54[1];
  memcpy(v76, v54 + 2, sizeof(v76));
  if (v56)
  {
    memcpy(&v73[2], v54 + 2, 0x68uLL);
    v73[0] = v55;
    v73[1] = v56;
    OUTLINED_FUNCTION_119();
    v74[0] = v55;
    v74[1] = v56;
    memcpy(v75, v76, sizeof(v75));
    sub_2172DF5A4(v74, v77);
    PlayParameters.hash(into:)(v5);
    memcpy(v77, v73, 0x78uLL);
    sub_2172848C0(v77);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v3 + v26[21]))
  {
    OUTLINED_FUNCTION_119();
    sub_217280BBC();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v57 = (v3 + v26[22]);
  if (v57[1])
  {
    OUTLINED_FUNCTION_99_2(v57);
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v58 = (v3 + v26[23]);
  if (*(v58 + 8) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_99_2(v58);
    MEMORY[0x21CEA3550](v55);
  }

  v59 = v26[24];
  v60 = v71;
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v60, 1, v6);
  if (v25)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_110_3();
    OUTLINED_FUNCTION_103_3();
    v61();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_26();
    sub_217361B1C(v62);
    OUTLINED_FUNCTION_147();
    v63 = *(v55 + 8);
    v64 = OUTLINED_FUNCTION_25_0();
    v65(v64);
  }

  v66 = (v3 + v26[25]);
  if (v66[1])
  {
    v67 = *v66;
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v68 = (v3 + v26[26]);
  if (v68[1])
  {
    v69 = *v68;
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_13();
}

void CloudMusicVideo.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  OUTLINED_FUNCTION_171();
  v126 = v10;
  v14 = v13;
  v121 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v17 = OUTLINED_FUNCTION_45_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_6_1();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_117_7();
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v114 - v28;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25CF8, &qword_21775F660);
  OUTLINED_FUNCTION_0_0(v123);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34, v35);
  OUTLINED_FUNCTION_87_2();
  v125 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v36 = OUTLINED_FUNCTION_43(v125);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  OUTLINED_FUNCTION_81();
  v127 = v40;
  v42 = v14[3];
  v41 = v14[4];
  v124 = v14;
  OUTLINED_FUNCTION_160(v14, v42);
  sub_217361AC8();
  v122 = v11;
  OUTLINED_FUNCTION_125_4();
  v43 = v126;
  sub_2177532C8();
  if (v43)
  {
    v126 = v43;
    v44 = 0;
    LODWORD(v45) = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    OUTLINED_FUNCTION_1_23();
  }

  else
  {
    v126 = v29;
    v118 = v23;
    v119 = v12;
    v120 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
    sub_2172DF600();
    v48 = v122;
    sub_217752E58();
    v50 = v125;
    v62 = v127;
    memcpy(v127, v131, 0x1B8uLL);
    OUTLINED_FUNCTION_90_6(1);
    v63 = sub_217752E18();
    v46 = v120;
    v62[55] = v63;
    v62[56] = v64;
    OUTLINED_FUNCTION_90_6(2);
    v62[57] = sub_217752E18();
    v62[58] = v65;
    v44 = sub_2177516D8();
    LOBYTE(v129[0]) = 3;
    OUTLINED_FUNCTION_0_26();
    v45 = sub_217361B1C(v66);
    sub_217752E58();
    v117 = v45;
    v67 = v50[7];
    sub_2172E21DC();
    OUTLINED_FUNCTION_90_6(4);
    v68 = sub_217752E18();
    v69 = (v62 + v50[8]);
    *v69 = v68;
    v69[1] = v70;
    OUTLINED_FUNCTION_90_6(5);
    v71 = sub_217752E48();
    v72 = v62 + v50[9];
    *v72 = v71;
    v72[8] = v73 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE8, &qword_2177595F0);
    v47 = v62;
    v130[0] = 6;
    sub_217361D3C(&unk_280BE2398);
    OUTLINED_FUNCTION_85_5();
    sub_217752E58();
    *(v62 + v50[10]) = v129[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25040, &qword_21775B518);
    sub_2172DF7DC();
    OUTLINED_FUNCTION_85_5();
    sub_217752E58();
    memcpy(&v127[v50[11]], v130, 0x48uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BE0, &unk_2177657E0);
    LOBYTE(v128) = 8;
    sub_217361B60(&qword_280BE23A8);
    OUTLINED_FUNCTION_112_6();
    OUTLINED_FUNCTION_85_5();
    sub_217752E58();
    v126 = 0;
    *&v127[v50[12]] = v129[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    LOBYTE(v128) = 9;
    sub_2172DF950(&unk_280BE2318);
    OUTLINED_FUNCTION_112_6();
    OUTLINED_FUNCTION_85_5();
    v74 = v126;
    sub_217752E58();
    v126 = v74;
    if (v74)
    {
      v75 = OUTLINED_FUNCTION_18_15();
      v76(v75);
      OUTLINED_FUNCTION_3_28();
      v44 = 1;
      OUTLINED_FUNCTION_2_30();
    }

    else
    {
      *&v127[v125[13]] = v129[0];
      OUTLINED_FUNCTION_84_5(10);
      v77 = sub_217752E28();
      v126 = 0;
      v127[v125[14]] = v77;
      OUTLINED_FUNCTION_84_5(11);
      v78 = sub_217752E28();
      v126 = 0;
      v127[v125[15]] = v78;
      LOBYTE(v129[0]) = 12;
      v48 = v122;
      sub_217752E58();
      v126 = 0;
      v79 = v125[16];
      sub_2172E21DC();
      OUTLINED_FUNCTION_84_5(13);
      v80 = v126;
      v81 = sub_217752E18();
      v126 = v80;
      if (v80)
      {
        v83 = OUTLINED_FUNCTION_18_15();
        v84(v83);
        OUTLINED_FUNCTION_6_18();
        OUTLINED_FUNCTION_2_30();
        LODWORD(v117) = v85;
        LODWORD(v118) = v85;
      }

      else
      {
        OUTLINED_FUNCTION_81_6(v81, v82, v125[17]);
        OUTLINED_FUNCTION_84_5(14);
        v86 = sub_217752E18();
        v126 = 0;
        OUTLINED_FUNCTION_81_6(v86, v87, v125[18]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C50, &unk_217759650);
        LOBYTE(v128) = 15;
        sub_2172DF9B8();
        OUTLINED_FUNCTION_112_6();
        OUTLINED_FUNCTION_160_4();
        v126 = 0;
        *&v127[v125[19]] = v129[0];
        sub_2172DFAC8();
        v48 = v122;
        v88 = v126;
        sub_217752E58();
        v126 = v88;
        if (!v88)
        {
          memcpy(&v127[v125[20]], v129, 0x78uLL);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25CE0, &qword_21775F658);
          sub_217361DAC();
          OUTLINED_FUNCTION_160_4();
          v126 = 0;
          *&v127[v125[21]] = v128;
          OUTLINED_FUNCTION_80_4(18);
          v92 = sub_217752E18();
          v126 = 0;
          OUTLINED_FUNCTION_81_6(v92, v93, v125[22]);
          OUTLINED_FUNCTION_80_4(19);
          v94 = sub_217752E48();
          v126 = 0;
          v95 = &v127[v125[23]];
          *v95 = v94;
          v95[8] = v96 & 1;
          LOBYTE(v128) = 20;
          v48 = v122;
          sub_217752E58();
          v126 = 0;
          v98 = v125[24];
          sub_2172E21DC();
          OUTLINED_FUNCTION_80_4(21);
          v99 = v126;
          v100 = sub_217752E18();
          v126 = v99;
          if (!v99)
          {
            OUTLINED_FUNCTION_81_6(v100, v101, v125[25]);
            OUTLINED_FUNCTION_80_4(22);
            v105 = sub_217752E18();
            v126 = 0;
            v106 = v105;
            v108 = v107;
            v109 = OUTLINED_FUNCTION_18_15();
            v110(v109);
            v111 = v127;
            v112 = &v127[v125[26]];
            *v112 = v106;
            *(v112 + 1) = v108;
            OUTLINED_FUNCTION_22_14();
            sub_2173625C8();
            __swift_destroy_boxed_opaque_existential_1(v124);
            OUTLINED_FUNCTION_21_13();
            sub_217362620(v111, v113);
            goto LABEL_42;
          }

          v102 = OUTLINED_FUNCTION_18_15();
          v103(v102);
          __swift_destroy_boxed_opaque_existential_1(v124);
          LODWORD(v124) = 0;
          OUTLINED_FUNCTION_2_30();
          v116 = v104;
          LODWORD(v117) = v104;
          OUTLINED_FUNCTION_34_9(v104);
          LODWORD(v122) = v97;
          LODWORD(v123) = v97;
          v44 = 1;
          v49 = v125;
          v51 = v127;
LABEL_7:
          OUTLINED_FUNCTION_149_4();
          memcpy(v52, v53, v54);
          sub_2171F0738(v131, &qword_27CB25000, &unk_21776EA00);
          if (v45)
          {
            goto LABEL_8;
          }

          goto LABEL_26;
        }

        v89 = OUTLINED_FUNCTION_18_15();
        v90(v89);
        LODWORD(v122) = 0;
        LODWORD(v123) = 0;
        v44 = 1;
        OUTLINED_FUNCTION_2_30();
        LODWORD(v117) = v91;
        OUTLINED_FUNCTION_34_9(v91);
      }
    }
  }

  v49 = v125;
  v51 = v127;
  __swift_destroy_boxed_opaque_existential_1(v124);
  if (v44)
  {
    v44 = 0;
    v116 = 0;
    LODWORD(v124) = 0;
    goto LABEL_7;
  }

  LODWORD(v124) = 0;
  v116 = 0;
  if (v45)
  {
LABEL_8:
    v55 = *(v51 + 56);

    if ((v46 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_27:
    v58 = *(v51 + 58);

    if (v47)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_26:
  if (v46)
  {
    goto LABEL_27;
  }

LABEL_9:
  if (v47)
  {
LABEL_10:
    sub_2171F0738(&v51[v49[7]], &unk_27CB277C0, &qword_217758DC0);
  }

LABEL_11:
  if (v48)
  {
    v56 = *&v51[v49[10]];

    if ((v115 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (!v115)
  {
LABEL_13:
    if (a10)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

  memcpy(v131, &v51[v49[11]], 0x48uLL);
  sub_2171F0738(v131, &qword_27CB25010, &qword_21775B4F8);
  if (a10)
  {
LABEL_14:
    v57 = *&v51[v49[12]];

    if ((v117 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v117)
  {
LABEL_15:
    if (v118)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v59 = *&v51[v49[13]];

  if (v118)
  {
LABEL_16:
    sub_2171F0738(&v51[v49[16]], &unk_27CB277C0, &qword_217758DC0);
    if ((v119 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (!v119)
  {
LABEL_17:
    if (v120)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  OUTLINED_FUNCTION_191_2(v49[17]);
  if (v120)
  {
LABEL_18:
    OUTLINED_FUNCTION_191_2(v49[18]);
    if ((v121 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v121)
  {
LABEL_19:
    if (v122)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  v60 = *&v51[v49[19]];

  if (v122)
  {
LABEL_20:
    memcpy(v131, &v51[v49[20]], 0x78uLL);
    sub_2171F0738(v131, &qword_27CB244D0, &unk_21775D620);
    if ((v123 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  if (!v123)
  {
LABEL_21:
    if (v44)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  v61 = *&v51[v49[21]];

  if (v44)
  {
LABEL_22:
    OUTLINED_FUNCTION_191_2(v49[22]);
    if ((v116 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!v116)
  {
LABEL_23:
    if (!v124)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_40:
  sub_2171F0738(&v51[v49[24]], &unk_27CB277C0, &qword_217758DC0);
  if (v124)
  {
LABEL_41:
    OUTLINED_FUNCTION_191_2(v49[25]);
  }

LABEL_42:
  OUTLINED_FUNCTION_170();
}

MusicKit::CloudMusicVideo::Relationships::CodingKeys_optional __swiftcall CloudMusicVideo.Relationships.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217752DC8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

MusicKit::CloudMusicVideo::Relationships::CodingKeys_optional __swiftcall CloudMusicVideo.Relationships.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CloudMusicVideo.Relationships.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t CloudMusicVideo.Relationships.CodingKeys.stringValue.getter()
{
  result = 0x736D75626C61;
  switch(*v0)
  {
    case 1:
      result = 0x73747369747261;
      break;
    case 2:
      result = 0x676F6C61746163;
      break;
    case 3:
      result = 0x7365726E6567;
      break;
    case 4:
      result = 0x7972617262696CLL;
      break;
    case 5:
      result = 0x73676E6F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217359B50(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_217708F60();
}

uint64_t sub_217359B80@<X0>(uint64_t *a1@<X8>)
{
  result = CloudMusicVideo.Relationships.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_217359BC4(uint64_t a1)
{
  v2 = sub_217361F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217359C00(uint64_t a1)
{
  v2 = sub_217361F18();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CloudMusicVideo.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v213)
  {
    if (!v214)
    {
      sub_2171F0738(v212, &qword_27CB24270, &unk_21775D640);
      goto LABEL_7;
    }

LABEL_12:
    v69 = &unk_27CB25070;
    v70 = &unk_21777EF10;
LABEL_37:
    sub_2171F0738(v212, v69, v70);
    return 0;
  }

  v0 = OUTLINED_FUNCTION_159_1();
  if (!v214)
  {
    sub_2171F0738(v211, &qword_27CB24278, &unk_217759070);
    goto LABEL_12;
  }

  v8 = OUTLINED_FUNCTION_75(v0, v1, v2, v3, v4, v5, v6, v7, v195);
  v16 = OUTLINED_FUNCTION_87_1(v8, v9, v10, v11, v12, v13, v14, v15, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211[0]);
  v17 = sub_2172DDD44(v16);
  v18 = v17;
  v26 = OUTLINED_FUNCTION_69_0(v17, v19, v20, v21, v22, v23, v24, v25, v195);
  OUTLINED_FUNCTION_68_0(v26, v27, v28, v29, v30, v31, v32, v33, v195, v196, v197, v198, v199, v200, v201, v202);
  sub_2171F0738(v212, &qword_27CB24270, &unk_21775D640);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_7:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v213)
  {
    if (!v214)
    {
      sub_2171F0738(v212, &qword_27CB24280, &unk_21775D680);
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v34 = OUTLINED_FUNCTION_159_1();
  if (!v214)
  {
    sub_2171F0738(v211, &qword_27CB24288, &qword_217758F80);
LABEL_20:
    v69 = &qword_27CB25068;
    v70 = &qword_21775B528;
    goto LABEL_37;
  }

  v42 = OUTLINED_FUNCTION_75(v34, v35, v36, v37, v38, v39, v40, v41, v195);
  v50 = OUTLINED_FUNCTION_87_1(v42, v43, v44, v45, v46, v47, v48, v49, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211[0]);
  v52 = sub_2172DE010(v50, v51);
  v53 = v52;
  v61 = OUTLINED_FUNCTION_69_0(v52, v54, v55, v56, v57, v58, v59, v60, v195);
  OUTLINED_FUNCTION_68_0(v61, v62, v63, v64, v65, v66, v67, v68, v195, v196, v197, v198, v199, v200, v201, v202);
  sub_2171F0738(v212, &qword_27CB24280, &unk_21775D680);
  if ((v53 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v213)
  {
    v71 = OUTLINED_FUNCTION_159_1();
    if (!v214)
    {
LABEL_33:
      sub_2171F0738(v211, &qword_27CB242B8, &unk_21777EEA0);
      goto LABEL_34;
    }

    v79 = OUTLINED_FUNCTION_75(v71, v72, v73, v74, v75, v76, v77, v78, v195);
    v87 = OUTLINED_FUNCTION_87_1(v79, v80, v81, v82, v83, v84, v85, v86, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211[0]);
    v89 = sub_2172DE088(v87, v88);
    v90 = v89;
    v98 = OUTLINED_FUNCTION_69_0(v89, v91, v92, v93, v94, v95, v96, v97, v195);
    OUTLINED_FUNCTION_68_0(v98, v99, v100, v101, v102, v103, v104, v105, v195, v196, v197, v198, v199, v200, v201, v202);
    sub_2171F0738(v212, &qword_27CB242B0, &unk_21775D630);
    if ((v90 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v214)
    {
LABEL_34:
      v69 = &unk_27CB251A0;
      v70 = &unk_21777EF30;
      goto LABEL_37;
    }

    sub_2171F0738(v212, &qword_27CB242B0, &unk_21775D630);
  }

  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v213)
  {
    if (!v214)
    {
      sub_2171F0738(v212, &qword_27CB243B0, &unk_21775D670);
      goto LABEL_29;
    }

LABEL_36:
    v69 = &unk_27CB25078;
    v70 = &unk_21775B530;
    goto LABEL_37;
  }

  v106 = OUTLINED_FUNCTION_159_1();
  if (!v214)
  {
    sub_2171F0738(v211, &qword_27CB243B8, &qword_2177586B0);
    goto LABEL_36;
  }

  v114 = OUTLINED_FUNCTION_75(v106, v107, v108, v109, v110, v111, v112, v113, v195);
  v122 = OUTLINED_FUNCTION_87_1(v114, v115, v116, v117, v118, v119, v120, v121, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211[0]);
  v123 = sub_2172DDD5C(v122);
  v124 = v123;
  v132 = OUTLINED_FUNCTION_69_0(v123, v125, v126, v127, v128, v129, v130, v131, v195);
  OUTLINED_FUNCTION_68_0(v132, v133, v134, v135, v136, v137, v138, v139, v195, v196, v197, v198, v199, v200, v201, v202);
  sub_2171F0738(v212, &qword_27CB243B0, &unk_21775D670);
  if ((v124 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v213)
  {
    if (!v214)
    {
      sub_2171F0738(v212, &qword_27CB242B0, &unk_21775D630);
      goto LABEL_42;
    }

    goto LABEL_34;
  }

  v140 = OUTLINED_FUNCTION_159_1();
  if (!v214)
  {
    goto LABEL_33;
  }

  v148 = OUTLINED_FUNCTION_75(v140, v141, v142, v143, v144, v145, v146, v147, v195);
  v156 = OUTLINED_FUNCTION_87_1(v148, v149, v150, v151, v152, v153, v154, v155, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211[0]);
  v158 = sub_2172DE088(v156, v157);
  v159 = v158;
  v167 = OUTLINED_FUNCTION_69_0(v158, v160, v161, v162, v163, v164, v165, v166, v195);
  OUTLINED_FUNCTION_68_0(v167, v168, v169, v170, v171, v172, v173, v174, v195, v196, v197, v198, v199, v200, v201, v202);
  sub_2171F0738(v212, &qword_27CB242B0, &unk_21775D630);
  if ((v159 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v213)
  {
    if (!v214)
    {
      sub_2171F0738(v212, &qword_27CB242E0, &unk_21777EEE0);
      return 1;
    }

    goto LABEL_50;
  }

  v176 = OUTLINED_FUNCTION_159_1();
  if (!v214)
  {
    sub_2171F0738(v211, &qword_27CB242E8, &unk_21775D6B0);
LABEL_50:
    v69 = &unk_27CB25D00;
    v70 = &unk_21775F668;
    goto LABEL_37;
  }

  v184 = OUTLINED_FUNCTION_75(v176, v177, v178, v179, v180, v181, v182, v183, v195);
  v192 = OUTLINED_FUNCTION_87_1(v184, v185, v186, v187, v188, v189, v190, v191, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211[0]);
  v194 = sub_2172DE040(v192, v193);
  OUTLINED_FUNCTION_169_1(&v195);
  OUTLINED_FUNCTION_169_1(v211);
  sub_2171F0738(v212, &qword_27CB242E0, &unk_21777EEE0);
  return (v194 & 1) != 0;
}

uint64_t CloudMusicVideo.Relationships.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25D08, &qword_21775F670);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_68();
  sub_217361F18();
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
  sub_2172DFCDC();
  OUTLINED_FUNCTION_42_1();
  sub_217752F38();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    sub_2172DFB70();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0BF8();
    OUTLINED_FUNCTION_73_8();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243B8, &qword_2177586B0);
    sub_2172DFEA0();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
    OUTLINED_FUNCTION_73_8();
    sub_217752F38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242E8, &unk_21775D6B0);
    sub_217361F8C();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
  }

  return (*(v4 + 8))(v1, v2);
}

uint64_t CloudMusicVideo.Relationships.hash(into:)()
{
  v0 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_10_1(v0, v1, v2, v3, v4, v5, v6, v7, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_24();
    v8 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6DC(v8);
    sub_2171F0738(&v55, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v9 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_10_1(v9, v10, v11, v12, v13, v14, v15, v16, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_24();
    v17 = OUTLINED_FUNCTION_11_7();
    sub_2172DE754(v17);
    sub_2171F0738(&v55, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v18 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_10_1(v18, v19, v20, v21, v22, v23, v24, v25, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_24();
    v26 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6F4(v26);
    sub_2171F0738(&v55, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v27 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_10_1(v27, v28, v29, v30, v31, v32, v33, v34, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_24();
    v35 = OUTLINED_FUNCTION_11_7();
    sub_2172DE70C(v35);
    sub_2171F0738(&v55, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v36 = sub_2172E3D54();
  if (v72)
  {
    OUTLINED_FUNCTION_10_1(v36, v37, v38, v39, v40, v41, v42, v43, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    OUTLINED_FUNCTION_24();
    v44 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6F4(v44);
    sub_2171F0738(&v55, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v45 = sub_2172E3D54();
  if (!v72)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v45, v46, v47, v48, v49, v50, v51, v52, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  OUTLINED_FUNCTION_24();
  v53 = OUTLINED_FUNCTION_11_7();
  sub_2172DE6AC(v53);
  return sub_2171F0738(&v55, &qword_27CB242E8, &unk_21775D6B0);
}

uint64_t CloudMusicVideo.Relationships.hashValue.getter()
{
  sub_2177531E8();
  v0 = sub_2172E3D54();
  if (v73)
  {
    OUTLINED_FUNCTION_180(v0, v1, v2, v3, v4, v5, v6, v7, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
    OUTLINED_FUNCTION_157_0();
    v8 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6DC(v8);
    sub_2171F0738(v56, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v9 = sub_2172E3D54();
  if (v73)
  {
    OUTLINED_FUNCTION_180(v9, v10, v11, v12, v13, v14, v15, v16, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
    OUTLINED_FUNCTION_157_0();
    v17 = OUTLINED_FUNCTION_89_0();
    sub_2172DE754(v17);
    sub_2171F0738(v56, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v18 = sub_2172E3D54();
  if (v73)
  {
    OUTLINED_FUNCTION_180(v18, v19, v20, v21, v22, v23, v24, v25, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
    OUTLINED_FUNCTION_157_0();
    v26 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6F4(v26);
    sub_2171F0738(v56, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v27 = sub_2172E3D54();
  if (v73)
  {
    OUTLINED_FUNCTION_180(v27, v28, v29, v30, v31, v32, v33, v34, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
    OUTLINED_FUNCTION_157_0();
    v35 = OUTLINED_FUNCTION_89_0();
    sub_2172DE70C(v35);
    sub_2171F0738(v56, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v36 = sub_2172E3D54();
  if (v73)
  {
    OUTLINED_FUNCTION_180(v36, v37, v38, v39, v40, v41, v42, v43, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
    OUTLINED_FUNCTION_157_0();
    v44 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6F4(v44);
    sub_2171F0738(v56, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v45 = sub_2172E3D54();
  if (v73)
  {
    OUTLINED_FUNCTION_180(v45, v46, v47, v48, v49, v50, v51, v52, v55, v56[0], v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
    OUTLINED_FUNCTION_157_0();
    v53 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6AC(v53);
    sub_2171F0738(v56, &qword_27CB242E8, &unk_21775D6B0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  return sub_217753238();
}

void CloudMusicVideo.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25D38, &qword_21775F678);
  OUTLINED_FUNCTION_0_0(v12);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_87_2();
  bzero(v14, 0x100uLL);
  bzero(v17, 0x180uLL);
  v9 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_217361F18();
  OUTLINED_FUNCTION_125_4();
  sub_2177532C8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2171F0738(v14, &qword_27CB24270, &unk_21775D640);
    sub_2171F0738(&v15, &qword_27CB24280, &unk_21775D680);
    sub_2171F0738(v17, &qword_27CB243B0, &unk_21775D670);
    sub_2171F0738(&v18, &qword_27CB242B0, &unk_21775D630);
    sub_2171F0738(&v19, &qword_27CB242E0, &unk_21777EEE0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24278, &unk_217759070);
    sub_2172E0450();
    sub_217752E58();
    sub_2172E1F3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24288, &qword_217758F80);
    sub_2172E02E4();
    OUTLINED_FUNCTION_41_10();
    sub_2172E1F3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0ED0();
    OUTLINED_FUNCTION_33_10();
    sub_217752E58();
    memcpy(v16, v13, sizeof(v16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243B8, &qword_2177586B0);
    sub_2172E05BC();
    OUTLINED_FUNCTION_41_10();
    sub_2172E1F3C();
    OUTLINED_FUNCTION_33_10();
    sub_217752E58();
    sub_2172E1F3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242E8, &unk_21775D6B0);
    sub_2173620F8();
    OUTLINED_FUNCTION_41_10();
    v10 = OUTLINED_FUNCTION_65_0();
    v11(v10);
    sub_2172E1F3C();
    sub_217362264(v14, v4);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_21726A3FC(v14);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21735AD28()
{
  sub_2177531E8();
  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6DC(v3);
    sub_2171F0738(__dst, &qword_27CB24278, &unk_217759070);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE754(v3);
    sub_2171F0738(__dst, &qword_27CB24288, &qword_217758F80);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6F4(v3);
    sub_2171F0738(__dst, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE70C(v3);
    sub_2171F0738(__dst, &qword_27CB243B8, &qword_2177586B0);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6F4(v3);
    sub_2171F0738(__dst, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6AC(v3);
    sub_2171F0738(__dst, &qword_27CB242E8, &unk_21775D6B0);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_21735B038@<X0>(char *a1@<X8>)
{
  v2 = sub_217752DC8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t CloudMusicVideo.Associations.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    result = 0x2D6E692D65726F6DLL;
  }

  else
  {
    result = 0x2D79622D65726F6DLL;
  }

  *v0;
  return result;
}

uint64_t sub_21735B138@<X0>(uint64_t *a1@<X8>)
{
  result = CloudMusicVideo.Associations.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21735B17C(uint64_t a1)
{
  v2 = sub_21736229C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21735B1B8(uint64_t a1)
{
  v2 = sub_21736229C();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static CloudMusicVideo.Associations.== infix(_:_:)()
{
  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (v73)
  {
    v0 = OUTLINED_FUNCTION_159_1();
    if (!v74)
    {
LABEL_11:
      sub_2171F0738(v71, &qword_27CB242B8, &unk_21777EEA0);
      goto LABEL_13;
    }

    v8 = OUTLINED_FUNCTION_75(v0, v1, v2, v3, v4, v5, v6, v7, v55);
    v16 = OUTLINED_FUNCTION_87_1(v8, v9, v10, v11, v12, v13, v14, v15, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0]);
    v18 = sub_2172DE088(v16, v17);
    v19 = v18;
    v27 = OUTLINED_FUNCTION_69_0(v18, v20, v21, v22, v23, v24, v25, v26, v55);
    OUTLINED_FUNCTION_68_0(v27, v28, v29, v30, v31, v32, v33, v34, v55, v56, v57, v58, v59, v60, v61, v62);
    sub_2171F0738(v72, &qword_27CB242B0, &unk_21775D630);
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v74)
    {
LABEL_13:
      sub_2171F0738(v72, &qword_27CB251A0, &unk_21777EF30);
      return 0;
    }

    sub_2171F0738(v72, &qword_27CB242B0, &unk_21775D630);
  }

  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  if (!v73)
  {
    if (!v74)
    {
      sub_2171F0738(v72, &qword_27CB242B0, &unk_21775D630);
      return 1;
    }

    goto LABEL_13;
  }

  v35 = OUTLINED_FUNCTION_159_1();
  if (!v74)
  {
    goto LABEL_11;
  }

  v43 = OUTLINED_FUNCTION_75(v35, v36, v37, v38, v39, v40, v41, v42, v55);
  v51 = OUTLINED_FUNCTION_87_1(v43, v44, v45, v46, v47, v48, v49, v50, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0]);
  v53 = sub_2172DE088(v51, v52);
  OUTLINED_FUNCTION_169_1(&v55);
  OUTLINED_FUNCTION_169_1(v71);
  sub_2171F0738(v72, &qword_27CB242B0, &unk_21775D630);
  return (v53 & 1) != 0;
}

uint64_t CloudMusicVideo.Associations.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25D50, &qword_21775F680);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11[-v8];
  OUTLINED_FUNCTION_68();
  sub_21736229C();
  sub_2177532F8();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
  sub_2172E0BF8();
  OUTLINED_FUNCTION_73_8();
  sub_217752F38();
  if (!v0)
  {
    v11[14] = 1;
    OUTLINED_FUNCTION_73_8();
    sub_217752F38();
  }

  return (*(v3 + 8))(v9, v1);
}

uint64_t CloudMusicVideo.Associations.hash(into:)()
{
  v0 = sub_2172E3D54();
  if (v36)
  {
    OUTLINED_FUNCTION_10_1(v0, v1, v2, v3, v4, v5, v6, v7, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_24();
    v8 = OUTLINED_FUNCTION_11_7();
    sub_2172DE6F4(v8);
    sub_2171F0738(&v19, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  v9 = sub_2172E3D54();
  if (!v36)
  {
    return OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_10_1(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  OUTLINED_FUNCTION_24();
  v17 = OUTLINED_FUNCTION_11_7();
  sub_2172DE6F4(v17);
  return sub_2171F0738(&v19, &qword_27CB242B8, &unk_21777EEA0);
}

uint64_t CloudMusicVideo.Associations.hashValue.getter()
{
  sub_2177531E8();
  v0 = sub_2172E3D54();
  if (v37)
  {
    OUTLINED_FUNCTION_180(v0, v1, v2, v3, v4, v5, v6, v7, v19, v20[0], v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
    OUTLINED_FUNCTION_157_0();
    v8 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6F4(v8);
    sub_2171F0738(v20, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  v9 = sub_2172E3D54();
  if (v37)
  {
    OUTLINED_FUNCTION_180(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20[0], v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
    OUTLINED_FUNCTION_157_0();
    v17 = OUTLINED_FUNCTION_89_0();
    sub_2172DE6F4(v17);
    sub_2171F0738(v20, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    OUTLINED_FUNCTION_156();
  }

  return sub_217753238();
}

void CloudMusicVideo.Associations.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v15 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25D60, &qword_21775F688);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  bzero(v16, 0x100uLL);
  v11 = v2[4];
  OUTLINED_FUNCTION_160(v2, v2[3]);
  sub_21736229C();
  sub_2177532C8();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB242B8, &unk_21777EEA0);
    sub_2172E0ED0();
    OUTLINED_FUNCTION_33_10();
    sub_217752E58();
    sub_2172E1F3C();
    OUTLINED_FUNCTION_33_10();
    sub_217752E58();
    v12 = *(v6 + 8);
    v13 = OUTLINED_FUNCTION_205_0();
    v14(v13);
    sub_2172E1F3C();
    sub_2173622F0(v16, v15);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  sub_2172844EC(v16);
  OUTLINED_FUNCTION_170();
}

uint64_t sub_21735B950()
{
  sub_2177531E8();
  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6F4(v3);
    sub_2171F0738(__dst, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    sub_217753208();
  }

  sub_2172E3D54();
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE6F4(v3);
    sub_2171F0738(__dst, &qword_27CB242B8, &unk_21777EEA0);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

void *CloudMusicVideo.Metadata.init(contributors:popularity:snippets:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  return result;
}

uint64_t CloudMusicVideo.Metadata.contributors.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_217221020(v2);
}

uint64_t CloudMusicVideo.Metadata.snippets.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

BOOL static CloudMusicVideo.Metadata.== infix(_:_:)(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 16);
  v9 = a2[3];
  if (*a1 == 1)
  {
    sub_217221020(1);
    if (v6 == 1)
    {
      v2 = 1;
      sub_217221020(1);
      goto LABEL_20;
    }

    sub_217221020(v6);
    goto LABEL_7;
  }

  if (v6 == 1)
  {
    sub_217221020(*a1);
    sub_217221020(1);
    sub_217221020(v2);

LABEL_7:
    sub_217221010(v2);
    v10 = v6;
LABEL_16:
    sub_217221010(v10);
    return 0;
  }

  if (v2)
  {
    v11 = *a1;
    if (v6)
    {
      v12 = sub_2172849CC(v11, *a2);
      sub_217221020(v2);
      sub_217221020(v6);
      sub_217221020(v2);
      sub_217221010(v6);
      if (v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_217221020(v11);
      sub_217221020(0);
      sub_217221020(v2);
    }

LABEL_15:

    v10 = v2;
    goto LABEL_16;
  }

  sub_217221020(0);
  if (v6)
  {
    sub_217221020(v6);
    sub_217221020(0);
    sub_217221010(v6);
    goto LABEL_15;
  }

  sub_217221020(0);
  sub_217221020(0);
LABEL_19:

LABEL_20:
  sub_217221010(v2);
  if (v4)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v7)
    {
      v14 = v8;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (v9)
    {
      sub_217751DE8();
      sub_21726F358();
      v16 = v15;

      if (v16)
      {
        return 1;
      }
    }

    return 0;
  }

  return !v9;
}

uint64_t sub_21735BCC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75626972746E6F63 && a2 == 0xEC00000073726F74;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6972616C75706F70 && a2 == 0xEA00000000007974;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7374657070696E73 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_21735BDDC(char a1)
{
  if (!a1)
  {
    return 0x75626972746E6F63;
  }

  if (a1 == 1)
  {
    return 0x6972616C75706F70;
  }

  return 0x7374657070696E73;
}

uint64_t sub_21735BE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21735BCC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21735BE70(uint64_t a1)
{
  v2 = sub_217362328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21735BEAC(uint64_t a1)
{
  v2 = sub_217362328();

  return MEMORY[0x2821FE720](a1, v2);
}

void CloudMusicVideo.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_171();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25D68, &qword_21775F690);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_87_2();
  v12 = *v0;
  v16 = *(v0 + 8);
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  v13 = v4[4];
  OUTLINED_FUNCTION_160(v4, v4[3]);
  sub_217221020(v12);
  sub_217362328();
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  sub_21736237C();
  OUTLINED_FUNCTION_48();
  sub_217752F38();
  sub_217221010(v12);
  if (!v1)
  {
    sub_217752F18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2172E163C();
    OUTLINED_FUNCTION_42_1();
    sub_217752F38();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_170();
}

void CloudMusicVideo.Metadata.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 16);
  v7 = v2[3];
  if (*v2 == 1 || (sub_217753208(), !v4))
  {
    sub_217753208();
    if ((v6 & 1) == 0)
    {
LABEL_4:
      sub_217753208();
      if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x21CEA3580](v8);
      if (v7)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_217753208();
      return;
    }
  }

  else
  {
    sub_217753208();
    sub_2172849D8(a1, v4);
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  sub_217753208();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_8:
  sub_217753208();

  sub_21727DDE0();
}

uint64_t CloudMusicVideo.Metadata.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_2177531E8();
  CloudMusicVideo.Metadata.hash(into:)(v4);
  return sub_217753238();
}

void CloudMusicVideo.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_171();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25D80, &qword_21775F698);
  OUTLINED_FUNCTION_0_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18, v19);
  v20 = v12[4];
  OUTLINED_FUNCTION_160(v12, v12[3]);
  sub_217362328();
  sub_2177532C8();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    sub_2173623D0();
    sub_217752E58();
    v21 = a10;
    LOBYTE(a10) = 1;
    v22 = sub_217752E38();
    v26 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24BD8, &unk_2177595E0);
    sub_2172E1928();
    sub_217752E58();
    v24 = OUTLINED_FUNCTION_1_3();
    v25(v24);
    *v14 = v21;
    *(v14 + 8) = v22;
    *(v14 + 16) = v26 & 1;
    *(v14 + 24) = a10;
    sub_217221020(v21);
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_217221010(v21);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21735C450()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 3);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_2177531E8();
  CloudMusicVideo.Metadata.hash(into:)(v4);
  return sub_217753238();
}

uint64_t CloudMusicVideo.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t CloudMusicVideo.attributes.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  v1 = *(type metadata accessor for CloudMusicVideo(v0) + 20);
  OUTLINED_FUNCTION_22_14();
  return sub_2173625C8();
}

uint64_t CloudMusicVideo.relationships.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  v1 = *(type metadata accessor for CloudMusicVideo(v0) + 24);
  return sub_2172E3D54();
}

uint64_t static CloudMusicVideo.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_27CB25CD0 = a1;
}

uint64_t sub_21735C640@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27CB25CD0;
  return sub_217751DE8();
}

uint64_t sub_21735C690(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_27CB25CD0 = v1;
  sub_217751DE8();
}

uint64_t CloudMusicVideo.views.getter()
{
  v0 = OUTLINED_FUNCTION_105_0();
  v1 = *(type metadata accessor for CloudMusicVideo(v0) + 28);
  return sub_2172E3D54();
}

uint64_t CloudMusicVideo.meta.getter()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = (v1 + *(type metadata accessor for CloudMusicVideo(v2) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *v0 = *v3;
  v0[1] = v5;
  v0[2] = v6;
  v0[3] = v7;

  return sub_21733C3CC(v4, v5, v6, v7);
}

__n128 CloudMusicVideo.meta.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for CloudMusicVideo(0) + 32));
  sub_21733C410(*v3, v3[1], v3[2], v3[3]);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v5;
  return result;
}

uint64_t sub_21735C81C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177586E0;
  if (qword_280BE8B28 != -1)
  {
    swift_once();
  }

  v1 = *algn_280BE8B38;
  v2 = byte_280BE8B40;
  *(v0 + 32) = qword_280BE8B30;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  off_280BE6EA8 = v0;

  return sub_217751DE8();
}

uint64_t static CloudMusicVideo.catalogTypes.getter()
{
  if (qword_280BE6EA0 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t sub_21735C924()
{
  if (qword_280BE8B68 != -1)
  {
    swift_once();
  }

  qword_280BE6ED0 = qword_280BE8B70;
  *algn_280BE6ED8 = *algn_280BE8B78;
  byte_280BE6EE0 = byte_280BE8B80;

  return sub_217751DE8();
}

uint64_t static CloudMusicVideo.libraryType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280BE6EC8 != -1)
  {
    swift_once();
  }

  v2 = *algn_280BE6ED8;
  v3 = byte_280BE6EE0;
  *a1 = qword_280BE6ED0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_217751DE8();
}

void static CloudMusicVideo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_169();
  v3 = *v2 == *v0 && *(v1 + 8) == v0[1];
  if (!v3 && (sub_217753058() & 1) == 0)
  {
    goto LABEL_21;
  }

  v4 = type metadata accessor for CloudMusicVideo(0);
  v5 = v4[5];
  static CloudMusicVideo.Attributes.== infix(_:_:)();
  if ((v6 & 1) == 0)
  {
    goto LABEL_21;
  }

  v7 = v4[6];
  OUTLINED_FUNCTION_159_4();
  sub_2172E3D54();
  if (v76 != 1)
  {
    sub_2172E3D54();
    if (v79[2] != 1)
    {
      memcpy(v71, v79, sizeof(v71));
      v10 = static CloudMusicVideo.Relationships.== infix(_:_:)();
      sub_21726A3FC(v71);
      sub_21726A3FC(v72);
      sub_2171F0738(v75, &qword_27CB243A8, &unk_217777720);
      if (!v10)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_21726A3FC(v72);
LABEL_12:
    v8 = &unk_27CB25D88;
    v9 = &unk_21775F6A0;
LABEL_20:
    sub_2171F0738(v75, v8, v9);
    goto LABEL_21;
  }

  if (v79[2] != 1)
  {
    goto LABEL_12;
  }

  sub_2171F0738(v75, &qword_27CB243A8, &unk_217777720);
LABEL_14:
  v11 = v4[7];
  OUTLINED_FUNCTION_159_4();
  sub_2172E3D54();
  if (v76 == 1)
  {
    if (v78[2] == 1)
    {
      sub_2171F0738(v75, &qword_27CB24A90, &unk_21775D5B0);
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  sub_2172E3D54();
  if (v78[2] == 1)
  {
    sub_2172844EC(v72);
LABEL_19:
    v8 = &unk_27CB25D90;
    v9 = &unk_21775F6A8;
    goto LABEL_20;
  }

  memcpy(v71, v78, 0x100uLL);
  v12 = static CloudMusicVideo.Associations.== infix(_:_:)();
  sub_2172844EC(v71);
  sub_2172844EC(v72);
  sub_2171F0738(v75, &qword_27CB24A90, &unk_21775D5B0);
  if (v12)
  {
LABEL_23:
    v13 = v4[8];
    v14 = v1 + v13;
    v16 = *(v1 + v13);
    v15 = *(v1 + v13 + 8);
    v17 = *(v1 + v13 + 16);
    v18 = *(v14 + 24);
    v19 = (v0 + v13);
    v20 = *v19;
    v21 = v19[1];
    v23 = v19[2];
    v22 = v19[3];
    if (v18 == 1)
    {
      v24 = OUTLINED_FUNCTION_155_4();
      sub_21733C3CC(v24, v25, v26, v27);
      if (v22 == 1)
      {
        v28 = OUTLINED_FUNCTION_52_9();
        sub_21733C3CC(v28, v29, v30, 1);
        v31 = OUTLINED_FUNCTION_155_4();
        sub_21733C410(v31, v32, v33, v34);
        goto LABEL_21;
      }

      v46 = OUTLINED_FUNCTION_52_9();
      sub_21733C3CC(v46, v47, v48, v22);
    }

    else
    {
      v75[0] = v16;
      v75[1] = v15;
      v76 = v17;
      v77 = v18;
      if (v22 != 1)
      {
        v72[0] = v20;
        v72[1] = v21;
        v73 = v23 & 1;
        v74 = v22;
        v56 = OUTLINED_FUNCTION_27_15();
        sub_21733C3CC(v56, v57, v58, v59);
        v60 = OUTLINED_FUNCTION_52_9();
        sub_21733C3CC(v60, v61, v62, v22);
        v63 = OUTLINED_FUNCTION_27_15();
        sub_21733C3CC(v63, v64, v65, v66);
        static CloudMusicVideo.Metadata.== infix(_:_:)(v75, v72);
        sub_217221010(v20);

        sub_217221010(v16);

        v67 = OUTLINED_FUNCTION_27_15();
        sub_21733C410(v67, v68, v69, v70);
        goto LABEL_21;
      }

      v35 = OUTLINED_FUNCTION_27_15();
      sub_21733C3CC(v35, v36, v37, v38);
      v39 = OUTLINED_FUNCTION_52_9();
      sub_21733C3CC(v39, v40, v41, 1);
      v42 = OUTLINED_FUNCTION_27_15();
      sub_21733C3CC(v42, v43, v44, v45);
      sub_217221010(v16);
    }

    v49 = OUTLINED_FUNCTION_27_15();
    sub_21733C410(v49, v50, v51, v52);
    v53 = OUTLINED_FUNCTION_52_9();
    sub_21733C410(v53, v54, v55, v22);
  }

LABEL_21:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21735CDB0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21735CE44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_2177531E8();
  a4(v8, v6);
  return sub_217753238();
}

uint64_t sub_21735CE98(uint64_t a1)
{
  v2 = sub_217362424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21735CED4(uint64_t a1)
{
  v2 = sub_217362424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CloudMusicVideo.encode(to:)()
{
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25D98, &qword_21775F6B0);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_68();
  sub_217362424();
  OUTLINED_FUNCTION_125_4();
  sub_2177532F8();
  v18 = *v0;
  v20 = v0[1];
  sub_2172E1B18();
  OUTLINED_FUNCTION_48();
  sub_217752F88();
  if (!v1)
  {
    v11 = type metadata accessor for CloudMusicVideo(0);
    v12 = v11[5];
    type metadata accessor for CloudMusicVideo.Attributes(0);
    OUTLINED_FUNCTION_60_8();
    sub_217361B1C(v13);
    OUTLINED_FUNCTION_42_1();
    sub_217752F88();
    v14 = v11[6];
    sub_21733C4A8();
    OUTLINED_FUNCTION_48();
    sub_217752F38();
    v15 = v11[7];
    sub_21733C454();
    OUTLINED_FUNCTION_48();
    sub_217752F38();
    v16 = (v3 + v11[8]);
    v19 = *v16;
    v21 = v16[1];
    v22 = v16[2];
    v23 = v16[3];
    sub_21733C3CC(*v16, v21, v22, v23);
    sub_217362478();
    OUTLINED_FUNCTION_48();
    sub_217752F38();
    sub_21733C410(v19, v21, v22, v23);
  }

  return (*(v6 + 8))(v2, v4);
}

void CloudMusicVideo.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_217751FF8();
  v6 = type metadata accessor for CloudMusicVideo(0);
  v7 = v1 + v6[5];
  CloudMusicVideo.Attributes.hash(into:)();
  v8 = v2 + v6[6];
  sub_217264574(a1);
  v9 = v6[7];
  sub_2172E3D54();
  if (__src[2] == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    memcpy(v25, __src, sizeof(v25));
    OUTLINED_FUNCTION_24();
    v10 = OUTLINED_FUNCTION_11_7();
    sub_217264414(v10, v11, v12, v13, v14, v15, v16, v17);
    sub_217264414(a1, v18, v19, v20, v21, v22, v23, v24);
    sub_2172844EC(v25);
  }

  sub_217264490(a1, *(v2 + v6[8]), *(v2 + v6[8] + 8), *(v2 + v6[8] + 16), *(v2 + v6[8] + 24));
}

uint64_t sub_21735D260(void (*a1)(_BYTE *))
{
  sub_2177531E8();
  a1(v3);
  return sub_217753238();
}

void CloudMusicVideo.init(from:)()
{
  OUTLINED_FUNCTION_171();
  v47 = v0;
  v2 = v1;
  v41[2] = v3;
  v43 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v4 = OUTLINED_FUNCTION_43(v43);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  OUTLINED_FUNCTION_81();
  v42 = v8;
  *&v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25DA8, &qword_21775F6B8);
  OUTLINED_FUNCTION_0_0(v46);
  v44 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12, v13);
  v15 = v41 - v14;
  v16 = type metadata accessor for CloudMusicVideo(0);
  v17 = OUTLINED_FUNCTION_43(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  OUTLINED_FUNCTION_1();
  v23 = (v22 - v21);
  v25 = (v22 - v21 + *(v24 + 32));
  *v25 = 0;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = 1;
  v26 = v2[3];
  v27 = v2[4];
  v28 = OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_160(v28, v29);
  sub_217362424();
  *&v45 = v15;
  v30 = v47;
  sub_2177532C8();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_21733C410(*v25, v25[1], v25[2], v25[3]);
  }

  else
  {
    sub_2172E1C68();
    OUTLINED_FUNCTION_32_11();
    sub_217752EA8();
    v31 = *(&v48[0] + 1);
    *v23 = *&v48[0];
    v23[1] = v31;
    v41[1] = v31;
    v47 = v23;
    LOBYTE(v48[0]) = 1;
    OUTLINED_FUNCTION_60_8();
    sub_217361B1C(v32);
    sub_217752EA8();
    v33 = v16[5];
    sub_217362730();
    sub_2173624CC();
    OUTLINED_FUNCTION_32_11();
    v42 = 0;
    sub_217752E58();
    v43 = v2;
    v34 = v47;
    memcpy(v47 + v16[6], v48, 0x300uLL);
    sub_217362520();
    OUTLINED_FUNCTION_32_11();
    sub_217752E58();
    memcpy((v34 + v16[7]), v48, 0x100uLL);
    sub_217362574();
    OUTLINED_FUNCTION_32_11();
    sub_217752E58();
    (*(v44 + 8))(v45, v46);
    v35 = *v25;
    v36 = v25[1];
    v37 = v25[2];
    v38 = v25[3];
    v45 = v48[1];
    v46 = v48[0];
    sub_21733C410(v35, v36, v37, v38);
    v39 = v45;
    *v25 = v46;
    *(v25 + 1) = v39;
    OUTLINED_FUNCTION_7_18();
    sub_2173625C8();
    __swift_destroy_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_20_16();
    sub_217362620(v34, v40);
  }

  OUTLINED_FUNCTION_170();
}

uint64_t sub_21735D79C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

void CloudMusicVideo.Attributes.offerKinds.getter()
{
  OUTLINED_FUNCTION_12();
  v4 = *(v0 + *(type metadata accessor for CloudMusicVideo.Attributes(0) + 76));
  if (v4)
  {
    OUTLINED_FUNCTION_109_4();
LABEL_3:
    v5 = (v3 + 72 * v1);
    while (v2 != v1)
    {
      if (v1 >= *(v4 + 16))
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_64_9(v5);
      if (v0)
      {
        v7 = *(v6 - 80);
        sub_217751DE8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_82_5();
        }

        OUTLINED_FUNCTION_119_5();
        if (v8)
        {
          OUTLINED_FUNCTION_133_5();
        }

        OUTLINED_FUNCTION_118_5();
        goto LABEL_3;
      }
    }
  }

  OUTLINED_FUNCTION_13();
}

void sub_21735D8AC()
{
  OUTLINED_FUNCTION_12();
  v7 = *(v0 + *(type metadata accessor for CloudMusicVideo.Attributes(0) + 76));
  if (v7)
  {
    OUTLINED_FUNCTION_109_4();
    v8 = MEMORY[0x277D84F90];
    v9 = 72;
LABEL_3:
    v10 = (v4 + 72 * v2);
    while (v3 != v2)
    {
      if (v2 >= *(v7 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_64_9(v10);
      if (v0)
      {
        v5 = *(v11 - 80);
        sub_217751DE8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_82_5();
          v8 = v13;
        }

        OUTLINED_FUNCTION_119_5();
        if (v12)
        {
          OUTLINED_FUNCTION_133_5();
          v8 = v14;
        }

        OUTLINED_FUNCTION_118_5();
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_51_7();
    do
    {
      if (v6 + v9 == -1)
      {
        break;
      }

      if (++v9 >= *(v8 + 16))
      {
        goto LABEL_28;
      }

      v15 = *(v5 - 1);
      v16 = *v5;
      v17 = v15 == v1 && v16 == v0;
      if (v17 || (OUTLINED_FUNCTION_132_4() & 1) != 0)
      {
        break;
      }

      v18 = v15 == v7 && v16 == 0xEA00000000006461;
    }

    while (!v18 && (OUTLINED_FUNCTION_103_5() & 1) == 0);
  }

  OUTLINED_FUNCTION_13();
}

void sub_21735D9D8()
{
  OUTLINED_FUNCTION_12();
  v7 = *(v0 + *(type metadata accessor for CloudSong.Attributes(0) + 120));
  if (v7)
  {
    OUTLINED_FUNCTION_109_4();
    v8 = MEMORY[0x277D84F90];
    v9 = 72;
LABEL_3:
    v10 = (v4 + 72 * v2);
    while (v3 != v2)
    {
      if (v2 >= *(v7 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_64_9(v10);
      if (v0)
      {
        v5 = *(v11 - 80);
        sub_217751DE8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_82_5();
          v8 = v13;
        }

        OUTLINED_FUNCTION_119_5();
        if (v12)
        {
          OUTLINED_FUNCTION_133_5();
          v8 = v14;
        }

        OUTLINED_FUNCTION_118_5();
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_51_7();
    do
    {
      if (v6 + v9 == -1)
      {
        break;
      }

      if (++v9 >= *(v8 + 16))
      {
        goto LABEL_28;
      }

      v15 = *(v5 - 1);
      v16 = *v5;
      v17 = v15 == v1 && v16 == v0;
      if (v17 || (OUTLINED_FUNCTION_132_4() & 1) != 0)
      {
        break;
      }

      v18 = v15 == v7 && v16 == 0xEA00000000006461;
    }

    while (!v18 && (OUTLINED_FUNCTION_103_5() & 1) == 0);
  }

  OUTLINED_FUNCTION_13();
}

uint64_t _s8MusicKit05CloudA5VideoV10AttributesV29hasRedownloadableCatalogAssetSbvg_0()
{
  v1 = *(v0 + *(type metadata accessor for CloudMusicVideo.Attributes(0) + 80) + 8);
  sub_21735D8AC();
  return v2 & 1 | (v1 != 0);
}

void sub_21735DB54()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = *(v1 + *(type metadata accessor for CloudSong.Attributes(v2) + 124) + 8);
  sub_21735D9D8();
  OUTLINED_FUNCTION_154_3();
  sub_21735D9D8();
  OUTLINED_FUNCTION_153_3();
  sub_21735D9D8();
  sub_21735D9D8();
  OUTLINED_FUNCTION_116_6();
  if (v6)
  {
    v5 = 0;
  }

  *(v0 + 4) = v5;
  *v0 = v4;
}

void sub_21735DBF4()
{
  v2 = OUTLINED_FUNCTION_105_0();
  v3 = *(v1 + *(type metadata accessor for CloudMusicVideo.Attributes(v2) + 80) + 8);
  sub_21735D8AC();
  OUTLINED_FUNCTION_154_3();
  sub_21735D8AC();
  OUTLINED_FUNCTION_153_3();
  sub_21735D8AC();
  sub_21735D8AC();
  OUTLINED_FUNCTION_116_6();
  if (v6)
  {
    v5 = 0;
  }

  *(v0 + 4) = v5;
  *v0 = v4;
}

void MusicVideo.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0, v1);
  v447 = v3;
  v448 = v2;
  v441 = v4;
  v442 = v5;
  v7 = v6;
  v440 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v10 = OUTLINED_FUNCTION_45_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_31();
  v415 = v14;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_99();
  v459 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18, v19);
  v460 = &v408 - v20;
  v411 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030) - 8);
  v21 = *(v411 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22, v23);
  v461 = &v408 - v24;
  OUTLINED_FUNCTION_206();
  v25 = type metadata accessor for PreviewAsset();
  v26 = OUTLINED_FUNCTION_0_0(v25);
  v456 = v27;
  v457 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26, v30);
  OUTLINED_FUNCTION_81();
  v458 = v31;
  OUTLINED_FUNCTION_206();
  v454 = type metadata accessor for MusicVideoPropertyProvider();
  v32 = OUTLINED_FUNCTION_43(v454);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  OUTLINED_FUNCTION_81();
  v452 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256D8, &qword_21775D7F0);
  v38 = OUTLINED_FUNCTION_45_0(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38, v41);
  OUTLINED_FUNCTION_31();
  v410 = v42;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v408 - v45;
  v47 = type metadata accessor for CloudMusicVideo(0);
  v48 = OUTLINED_FUNCTION_43(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48, v51);
  OUTLINED_FUNCTION_31();
  v408 = v52;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v53, v54);
  OUTLINED_FUNCTION_99();
  v424 = v55;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v56, v57);
  v59 = (&v408 - v58);
  OUTLINED_FUNCTION_7_18();
  sub_2173625C8();
  if (qword_280BE6378 != -1)
  {
    swift_once();
  }

  v60 = v59 + *(v47 + 20);
  v450 = type metadata accessor for CloudMusicVideo.Attributes(0);
  v61 = v450[20];
  v453 = v60;
  v455 = &v60[v61];
  memcpy(v482, &v60[v61], sizeof(v482));
  sub_2172DA558();
  v446 = v47;
  v62 = *(v47 + 24);
  OUTLINED_FUNCTION_63_7();
  v451 = v63;
  OUTLINED_FUNCTION_49_7();
  sub_2172E3D54();
  OUTLINED_FUNCTION_62_7();
  v449 = v59;
  if (v64)
  {
    v65 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    OUTLINED_FUNCTION_128_5();
    sub_2172E3D54();
    v68 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v68);
    if (v477[2])
    {
      sub_217751DE8();
      sub_2171F0738(v477, &qword_27CB242B8, &unk_21777EEA0);
      sub_2172CE710();

      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
      OUTLINED_FUNCTION_133(v46, 1, v69);
      if (v64)
      {
        v66 = &qword_27CB256D8;
        v67 = &qword_21775D7F0;
      }

      else
      {
        swift_getKeyPath();
        sub_21735F984();

        v66 = &qword_27CB24808;
        v67 = &qword_217758D90;
      }

      v65 = v46;
    }

    else
    {
      v66 = &qword_27CB242B0;
      v67 = &unk_21775D630;
      v65 = v477;
    }
  }

  sub_2171F0738(v65, v66, v67);
  memcpy(v476, v481, sizeof(v476));
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v71 = v70[10];
  v72 = v7 + v70[9];
  v73 = *(v72 + 8);
  v421 = *v72;
  LODWORD(v420) = *(v72 + 16);
  v74 = *(v7 + v71);
  v445 = *(v7 + v71 + 8);
  v75 = v70[13];
  v76 = *(v7 + v70[12]);
  v416 = v73;
  v417 = v76;
  v77 = *(v7 + v75);
  v78 = v70[14];
  v79 = v70[15];
  v409 = v70;
  v80 = *(v7 + v78);
  v443 = v7;
  v418 = *(v7 + v79);
  v419 = v74;
  sub_2172A497C(v477);
  OUTLINED_FUNCTION_128_5();
  v81 = v452;
  memcpy(v452, v82, 0x221uLL);
  sub_21733B708(v478);
  memcpy(v81 + 552, v478, 0x161uLL);
  *(v81 + 116) = 0;
  v81[936] = 1;
  v83 = v454;
  v84 = v454[9];
  v85 = sub_2177516D8();
  v422 = v84;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v85);
  v423 = v83[10];
  v89 = &v81[v423];
  v89[4] = 0;
  *v89 = 512;
  v413 = v83[11];
  v81[v413] = 2;
  v90 = &v81[v83[12]];
  *v90 = 0;
  v412 = v90;
  v90[8] = 1;
  v91 = &v81[v83[14]];
  *v91 = xmmword_2177586D0;
  *(v91 + 1) = 0u;
  *(v91 + 2) = 0u;
  *(v91 + 3) = 0u;
  v81[v83[19]] = 2;
  v92 = v83[20];
  v425 = v91;
  v426 = v92;
  v93 = OUTLINED_FUNCTION_47_1(v92);
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v85);
  v414 = v83[21];
  v81[v414] = 2;
  v96 = &v81[v83[23]];
  *v96 = 0;
  *(v96 + 1) = 0;
  v96[16] = 0;
  v97 = &v81[v83[24]];
  *(v97 + 1) = 0;
  v427 = v97;
  v428 = v97 + 8;
  *v97 = 0;
  *(v97 + 2) = 1;
  v98 = v83[25];
  OUTLINED_FUNCTION_128_5();
  memcpy(v99, v100, 0x221uLL);
  v101 = &v81[v83[27]];
  *(v101 + 14) = 0;
  *(v101 + 5) = 0u;
  *(v101 + 6) = 0u;
  *(v101 + 3) = 0u;
  *(v101 + 4) = 0u;
  *(v101 + 1) = 0u;
  *(v101 + 2) = 0u;
  v429 = v101;
  *v101 = 0u;
  v102 = v83[29];
  v103 = sub_2177517D8();
  v430 = v102;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v104, v105, v106, v103);
  OUTLINED_FUNCTION_111_6(v83[30]);
  v431 = v83[33];
  v107 = OUTLINED_FUNCTION_47_1(v431);
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v85);
  v110 = OUTLINED_FUNCTION_47_1(v83[35]);
  __swift_storeEnumTagSinglePayload(v110, v111, v112, v103);
  v81[v83[36]] = 3;
  v81[v83[37]] = 2;
  v81[v83[39]] = 2;
  v81[v83[40]] = 5;
  v81[v83[41]] = 7;
  OUTLINED_FUNCTION_111_6(v83[42]);
  v113 = OUTLINED_FUNCTION_47_1(v83[43]);
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v103);
  v116 = OUTLINED_FUNCTION_47_1(v83[44]);
  v444 = v103;
  v117 = v103;
  v118 = v416;
  __swift_storeEnumTagSinglePayload(v116, v119, v120, v117);
  OUTLINED_FUNCTION_111_6(v83[45]);
  v81[v83[46]] = 2;
  v81[v83[47]] = 10;
  v121 = &v81[v83[48]];
  *v121 = 0;
  v121[8] = 1;
  v122 = &v81[v83[49]];
  *(v122 + 12) = 0;
  *(v122 + 4) = 0u;
  *(v122 + 5) = 0u;
  *(v122 + 2) = 0u;
  *(v122 + 3) = 0u;
  *v122 = 0u;
  *(v122 + 1) = 0u;
  v432 = v122;
  OUTLINED_FUNCTION_13_6(v83[50], 0);
  v434 = v123;
  OUTLINED_FUNCTION_13_6(v83[51], v124);
  v433 = v125;
  OUTLINED_FUNCTION_13_6(v83[52], v126);
  v435 = v127;
  OUTLINED_FUNCTION_13_6(v83[53], v128);
  v436 = v129;
  OUTLINED_FUNCTION_13_6(v83[54], v130);
  v437 = v131;
  OUTLINED_FUNCTION_13_6(v83[55], v132);
  v438 = v133;
  v134 = &v81[v83[56]];
  v135 = v417;
  *(v134 + 12) = 0;
  *(v134 + 4) = v136;
  *(v134 + 5) = v136;
  *(v134 + 2) = v136;
  *(v134 + 3) = v136;
  *v134 = v136;
  *(v134 + 1) = v136;
  v439 = v134;
  v137 = qword_280BE5E60;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v138 = v418;
  sub_217751DE8();
  if (v137 != -1)
  {
    swift_once();
  }

  v139 = qword_280C01FE0;
  if (qword_280C01FE0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    OUTLINED_FUNCTION_5_4();
    sub_217751DE8();
    sub_217752D28();
    OUTLINED_FUNCTION_5_4();

    v139 = v137;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v140 = v454;
  v141 = v452;
  *&v452[v454[60]] = v139;
  v142 = &v141[v140[63]];
  memcpy(&v141[v140[61]], v476, 0x161uLL);
  v143 = &v141[v140[62]];
  *v143 = v421;
  *(v143 + 1) = v118;
  v143[16] = v420;
  v144 = v141;
  v145 = v445;
  *v142 = v419;
  *(v142 + 1) = v145;
  *&v141[v140[64]] = v135;
  *&v141[v140[65]] = v77;
  *&v141[v140[66]] = v80;
  *&v141[v140[67]] = v138;
  OUTLINED_FUNCTION_63_7();
  v146 = v449;
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_62_7();
  if (v64)
  {
    v147 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    sub_2172E3D54();
    v150 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v150);
    if (v473[2])
    {
      sub_217751DE8();
      v151 = OUTLINED_FUNCTION_152();
      sub_2171F0738(v151, v152, v153);
      v154 = v410;
      sub_2172CE710();

      OUTLINED_FUNCTION_133(v154, 1, v409);
      if (!v64)
      {
        OUTLINED_FUNCTION_7_18();
        sub_2173625C8();
        sub_2171F0738(v154, &qword_27CB24808, &qword_217758D90);
        v407 = v424;
        sub_217362730();
        goto LABEL_25;
      }

      v148 = &qword_27CB256D8;
      v149 = &qword_21775D7F0;
      v147 = v154;
    }

    else
    {
      v147 = OUTLINED_FUNCTION_152();
    }
  }

  sub_2171F0738(v147, v148, v149);
  v407 = v424;
  OUTLINED_FUNCTION_7_18();
  sub_2173625C8();
LABEL_25:
  v155 = v422;
  sub_217362678(v407, v146);
  OUTLINED_FUNCTION_136_4(v474);
  OUTLINED_FUNCTION_136_4(v475);
  OUTLINED_FUNCTION_104(v475);
  if (v64)
  {
    OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_128_5();
  }

  else
  {
    v156 = OUTLINED_FUNCTION_39_6();
    memcpy(v156, v475, 0x1B8uLL);
    memcpy(v464, v474, 0x1B8uLL);
    OUTLINED_FUNCTION_39_0();
    sub_2172E3D54();
    OUTLINED_FUNCTION_63_7();
    CloudAttribute<A>.convertToArtwork()(v157);
    OUTLINED_FUNCTION_49_7();
    memcpy(v158, v159, 0x1B8uLL);
    OUTLINED_FUNCTION_36();
    sub_2171F0738(v160, v161, v162);
    v163 = OUTLINED_FUNCTION_39_6();
    memcpy(v163, v472, 0x221uLL);
    v164 = OUTLINED_FUNCTION_39_6();
    nullsub_1(v164, v165);
    OUTLINED_FUNCTION_152();
    OUTLINED_FUNCTION_49_7();
  }

  memcpy(v166, v167, 0x221uLL);
  memcpy(v472, v144, 0x221uLL);
  sub_2171F0738(v472, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v144, v473, 0x221uLL);
  v168 = v453;
  v169 = *(v453 + 56);
  v144[114] = *(v453 + 55);
  v144[115] = v169;
  v170 = *(v168 + 58);
  v144[118] = *(v168 + 57);
  v144[119] = v170;
  v171 = v450;
  v172 = v450[7];
  sub_217751DE8();
  sub_217751DE8();
  sub_2172E1ECC(&v168[v172], v144 + v155);
  v173 = v455;
  v174 = *(v455 + 1);
  sub_21735D8AC();
  v175 = *(v173 + 1);
  sub_21735D8AC();
  v176 = *(v173 + 1);
  sub_21735D8AC();
  sub_21735D8AC();
  v177 = v452;
  OUTLINED_FUNCTION_116_6();
  if (v64)
  {
    v179 = 0;
  }

  v180 = &v177[v423];
  v180[4] = v179;
  *v180 = v178;
  v181 = &v168[v171[8]];
  if (v181[1])
  {
    v182 = *v181;
    v183 = sub_217752DC8();
    if (v183 == 1)
    {
      v184 = 1;
    }

    else
    {
      v184 = 2;
    }

    if (!v183)
    {
      v184 = 0;
    }

    v177[v413] = v184;
  }

  v185 = v454;
  v186 = &v453[v450[9]];
  if ((v186[8] & 1) == 0)
  {
    v187 = *v186 / 1000.0;
    v188 = v412;
    *v412 = v187;
    *(v188 + 8) = 0;
  }

  v189 = v450;
  v190 = v453;
  *&v177[v185[13]] = *&v453[v450[10]];
  v191 = &v190[v189[11]];
  if (v191[8])
  {
    v192 = v191[7];
    v424 = v191[6];
    v193 = v191[4];
    v194 = v191[5];
    v195 = v191[3];
    v421 = v191[2];
    v422 = v193;
    v196 = v191[1];
    v420 = *v191;
    v445 = v192;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v423 = v194;
    sub_217751DE8();
  }

  else
  {
    v420 = 0;
    v421 = 0;
    v195 = 0;
    v422 = 0;
    v423 = 0;
    v424 = 0;
    v445 = 0;
    v196 = 1;
  }

  v197 = v454;
  v198 = v454[15];
  v199 = v454[16];
  v201 = v454[17];
  v200 = v454[18];
  v202 = v425;
  v203 = *(v425 + 1);
  v471[0] = *v425;
  v471[1] = v203;
  v204 = *(v425 + 3);
  v471[2] = *(v425 + 2);
  v471[3] = v204;
  sub_217751DE8();
  sub_2171F0738(v471, &qword_27CB24B70, &unk_217759460);
  v205 = v421;
  *v202 = v420;
  *(v202 + 1) = v196;
  *(v202 + 2) = v205;
  *(v202 + 3) = v195;
  v206 = v423;
  *(v202 + 4) = v422;
  *(v202 + 5) = v206;
  v207 = v445;
  *(v202 + 6) = v424;
  *(v202 + 7) = v207;
  v208 = v450;
  v210 = v452;
  v209 = v453;
  *&v452[v198] = *&v453[v450[12]];
  *&v210[v199] = *&v209[v208[13]];
  v210[v201] = v209[v208[14]];
  v210[v200] = v209[v208[15]];
  v211 = v208[16];
  sub_217751DE8();
  sub_217751DE8();
  sub_2172E1ECC(&v209[v211], &v210[v426]);
  v212 = v455;
  v213 = *(v455 + 1);
  sub_21735D8AC();
  v214 = &v210[v197[22]];
  v215 = v197[26];
  v210[v197[38]] = v216 & 1 | (v213 != 0);
  v217 = &v209[v208[17]];
  v218 = *(v217 + 1);
  *v214 = *v217;
  *(v214 + 1) = v218;
  v219 = v427;
  v221 = *v427;
  v220 = *(v427 + 1);
  v222 = *(v427 + 2);
  sub_217751DE8();
  OUTLINED_FUNCTION_36();
  sub_21733B290(v223, v224, v225);
  *v219 = 131586;
  v226 = v428;
  *v428 = 0;
  v226[1] = 0;
  *&v210[v215] = *&v209[v208[19]];
  v227 = v210;
  memcpy(v469, v212, sizeof(v469));
  memcpy(v470, v429, sizeof(v470));
  memcpy(v429, v212, 0x78uLL);
  OUTLINED_FUNCTION_49_7();
  OUTLINED_FUNCTION_39_0();
  sub_2172E3D54();
  sub_217751DE8();
  OUTLINED_FUNCTION_36();
  sub_2171F0738(v228, v229, v230);
  v231 = *&v209[v208[21]];
  if (v231)
  {
    v232 = *(v231 + 16);
    v233 = MEMORY[0x277D84F90];
    v234 = v459;
    if (v232)
    {
      v468 = MEMORY[0x277D84F90];
      sub_217276450();
      v233 = v468;
      OUTLINED_FUNCTION_46_0();
      v236 = v231 + v235;
      v455 = *(v237 + 72);
      do
      {
        OUTLINED_FUNCTION_103_3();
        sub_2172E3D54();
        OUTLINED_FUNCTION_136_4(v466);
        OUTLINED_FUNCTION_136_4(v467);
        OUTLINED_FUNCTION_104(v467);
        if (v64)
        {
          OUTLINED_FUNCTION_39_6();
          OUTLINED_FUNCTION_128_5();
        }

        else
        {
          v238 = OUTLINED_FUNCTION_39_6();
          memcpy(v238, v467, 0x1B8uLL);
          memcpy(v462, v466, sizeof(v462));
          sub_2172E3D54();
          OUTLINED_FUNCTION_63_7();
          CloudAttribute<A>.convertToArtwork()(v239);
          OUTLINED_FUNCTION_49_7();
          memcpy(v240, v241, 0x1B8uLL);
          sub_2171F0738(&v463, &qword_27CB243F0, &qword_21775D690);
          memcpy(v465, v464, 0x221uLL);
          nullsub_1(v465, v242);
          v243 = OUTLINED_FUNCTION_39_6();
          v244 = v465;
        }

        memcpy(v243, v244, 0x221uLL);
        v245 = type metadata accessor for CloudPreviewAsset();
        v246 = *(v245 + 20);
        v248 = v457;
        v247 = v458;
        v249 = *(v457 + 20);
        v250 = v461;
        OUTLINED_FUNCTION_156_4();
        v251 = *(v245 + 24);
        v252 = *(v248 + 24);
        OUTLINED_FUNCTION_156_4();
        sub_2171F0738(v250, &qword_27CB24A68, &qword_217759030);
        OUTLINED_FUNCTION_49_7();
        memcpy(v247, v253, 0x221uLL);
        v468 = v233;
        v254 = *(v233 + 16);
        if (v254 >= *(v233 + 24) >> 1)
        {
          sub_217276450();
          v233 = v468;
        }

        *(v233 + 16) = v254 + 1;
        OUTLINED_FUNCTION_46_0();
        v256 = *(v255 + 72);
        sub_217362730();
        v236 += v455;
        --v232;
        v234 = v459;
      }

      while (v232);
      v227 = v452;
    }

    v258 = v441;
    v257 = v442;
    v259 = v454;
  }

  else
  {
    v233 = 0;
    v258 = v441;
    v257 = v442;
    v259 = v454;
    v234 = v459;
  }

  *&v227[v259[28]] = v233;
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24();
  }

  v260 = type metadata accessor for CloudFormatter();
  v261 = __swift_project_value_buffer(v260, qword_280BE8918);
  v262 = &v453[v450[22]];
  v263 = *v262;
  v264 = *(v262 + 1);
  OUTLINED_FUNCTION_5_5();
  v265 = v444;
  __swift_storeEnumTagSinglePayload(v266, v267, v268, v444);
  if (v264)
  {
    v269 = *(v261 + *(v260 + 20));
    OUTLINED_FUNCTION_204();
    v270 = sub_217751F18();
    v271 = [v269 dateFromString_];

    if (v271)
    {
      v272 = v415;
      sub_2177517C8();

      v273 = 0;
      v274 = v452;
    }

    else
    {
      v273 = 1;
      v274 = v452;
      v272 = v415;
    }

    OUTLINED_FUNCTION_36();
    sub_2171F0738(v278, v279, v280);
    __swift_storeEnumTagSinglePayload(v272, v273, 1, v444);
    OUTLINED_FUNCTION_39_0();
    sub_2172E21DC();
    OUTLINED_FUNCTION_39_0();
    sub_2172E21DC();
  }

  else
  {
    sub_2171F0738(v234, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v275, v276, v277, v265);
    v274 = v452;
  }

  v281 = v454;
  v282 = &v274[v454[31]];
  v283 = &v274[v454[32]];
  sub_2172E1F3C();
  v284 = v450;
  v285 = v453;
  v286 = &v453[v450[18]];
  v287 = *(v286 + 1);
  *v282 = *v286;
  v282[1] = v287;
  v288 = &v285[v284[23]];
  v289 = *v288;
  LOBYTE(v288) = v288[8];
  *v283 = v289;
  v283[8] = v288;
  v290 = v284[24];
  sub_217751DE8();
  sub_2172E1ECC(&v285[v290], &v274[v431]);
  v291 = &v285[v284[25]];
  if (v291[1])
  {
    v292 = *v291;
    v293 = v291[1];
    sub_217751DE8();
    v294 = sub_217752DC8();

    v274[v414] = v294 == 0;
  }

  v295 = &v274[v281[34]];
  v296 = v449;
  v297 = &v453[v450[26]];
  v298 = *(v297 + 1);
  *v295 = *v297;
  v295[1] = v298;
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_62_7();
  if (v64)
  {
    sub_217751DE8();
    v299 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    OUTLINED_FUNCTION_39_6();
    sub_2172E3D54();
    sub_217751DE8();
    v302 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v302);
    if (v465[2])
    {
      OUTLINED_FUNCTION_14_17();
      v296 = &qword_27CB24278;
      v281 = &unk_217759070;
      v303 = OUTLINED_FUNCTION_16_0();
      v274 = __swift_instantiateConcreteTypeFromMangledNameV2(v303, v304);
      sub_2172E2038();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v305, v306, v307, v308, &type metadata for Album, v309, v310, &protocol witness table for Album, v408);
      sub_2171F0738(v467, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_72;
    }

    v300 = &qword_27CB24270;
    v301 = &unk_21775D640;
    v299 = v465;
  }

  sub_2171F0738(v299, v300, v301);
  OUTLINED_FUNCTION_5_22();
LABEL_72:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_62_7();
  if (v64)
  {
    v311 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    sub_2172E3D54();
    v314 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v314);
    if (v465[2])
    {
      OUTLINED_FUNCTION_14_17();
      v296 = &qword_27CB24288;
      v281 = &qword_217758F80;
      v315 = OUTLINED_FUNCTION_16_0();
      v274 = __swift_instantiateConcreteTypeFromMangledNameV2(v315, v316);
      sub_2172E2188();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v317, v318, v319, v320, &type metadata for Artist, v321, v322, &protocol witness table for Artist, v408);
      sub_2171F0738(v467, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_79;
    }

    v312 = &qword_27CB24280;
    v313 = &unk_21775D680;
    v311 = v465;
  }

  sub_2171F0738(v311, v312, v313);
  OUTLINED_FUNCTION_5_22();
LABEL_79:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_62_7();
  if (v64)
  {
    v323 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    sub_2172E3D54();
    v326 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v326);
    if (v465[2])
    {
      OUTLINED_FUNCTION_14_17();
      v296 = &qword_27CB242B8;
      v281 = &unk_21777EEA0;
      v327 = OUTLINED_FUNCTION_16_0();
      v274 = __swift_instantiateConcreteTypeFromMangledNameV2(v327, v328);
      sub_2172E1FE4();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v329, v330, v331, v332, &type metadata for MusicVideo, v333, v334, &protocol witness table for MusicVideo, v408);
      sub_2171F0738(v467, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_86;
    }

    v324 = &qword_27CB242B0;
    v325 = &unk_21775D630;
    v323 = v465;
  }

  sub_2171F0738(v323, v324, v325);
  OUTLINED_FUNCTION_5_22();
LABEL_86:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_62_7();
  if (v64)
  {
    v335 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    sub_2172E3D54();
    v338 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v338);
    if (v465[2])
    {
      OUTLINED_FUNCTION_14_17();
      v296 = &qword_27CB243B8;
      v281 = &qword_2177586B0;
      v339 = OUTLINED_FUNCTION_16_0();
      v274 = __swift_instantiateConcreteTypeFromMangledNameV2(v339, v340);
      sub_2172E2134();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v341, v342, v343, v344, &type metadata for Genre, v345, v346, &protocol witness table for Genre, v408);
      sub_2171F0738(v467, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_93;
    }

    v336 = &qword_27CB243B0;
    v337 = &unk_21775D670;
    v335 = v465;
  }

  sub_2171F0738(v335, v336, v337);
  OUTLINED_FUNCTION_5_22();
LABEL_93:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_62_7();
  if (v64)
  {
    v347 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    sub_2172E3D54();
    v350 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v350);
    if (v465[2])
    {
      OUTLINED_FUNCTION_14_17();
      v296 = &qword_27CB242B8;
      v281 = &unk_21777EEA0;
      v351 = OUTLINED_FUNCTION_16_0();
      v274 = __swift_instantiateConcreteTypeFromMangledNameV2(v351, v352);
      sub_2172E1FE4();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v353, v354, v355, v356, &type metadata for MusicVideo, v357, v358, &protocol witness table for MusicVideo, v408);
      sub_2171F0738(v467, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_100;
    }

    v348 = &qword_27CB242B0;
    v349 = &unk_21775D630;
    v347 = v465;
  }

  sub_2171F0738(v347, v348, v349);
  OUTLINED_FUNCTION_5_22();
LABEL_100:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_30_12();
  OUTLINED_FUNCTION_62_7();
  if (v64)
  {
    v359 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    sub_2172E3D54();
    v362 = OUTLINED_FUNCTION_39_6();
    sub_21726A3FC(v362);
    if (v465[2])
    {
      OUTLINED_FUNCTION_14_17();
      v296 = &qword_27CB242E8;
      v281 = &unk_21775D6B0;
      v363 = OUTLINED_FUNCTION_16_0();
      v274 = __swift_instantiateConcreteTypeFromMangledNameV2(v363, v364);
      sub_2173626DC();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v365, v366, v367, v368, &type metadata for Song, v369, v370, &protocol witness table for Song, v408);
      sub_2171F0738(v467, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_107;
    }

    v360 = &qword_27CB242E0;
    v361 = &unk_21777EEE0;
    v359 = v465;
  }

  sub_2171F0738(v359, v360, v361);
  OUTLINED_FUNCTION_5_22();
LABEL_107:
  v371 = v446;
  sub_2172E1F3C();
  v372 = *(v371 + 28);
  OUTLINED_FUNCTION_49_7();
  sub_2172E3D54();
  OUTLINED_FUNCTION_62_7();
  if (v64)
  {
    v373 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    OUTLINED_FUNCTION_39_6();
    sub_2172E3D54();
    v376 = OUTLINED_FUNCTION_39_6();
    sub_2172844EC(v376);
    if (v465[2])
    {
      OUTLINED_FUNCTION_14_17();
      v296 = &qword_27CB242B8;
      v281 = &unk_21777EEA0;
      v377 = OUTLINED_FUNCTION_16_0();
      v274 = __swift_instantiateConcreteTypeFromMangledNameV2(v377, v378);
      sub_2172E1FE4();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v379, v380, v381, v382, &type metadata for MusicVideo, v383, v384, &protocol witness table for MusicVideo, v408);
      sub_2171F0738(v467, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_114;
    }

    v374 = &qword_27CB242B0;
    v375 = &unk_21775D630;
    v373 = v465;
  }

  sub_2171F0738(v373, v374, v375);
  OUTLINED_FUNCTION_5_22();
LABEL_114:
  sub_2172E1F3C();
  OUTLINED_FUNCTION_63_7();
  OUTLINED_FUNCTION_49_7();
  sub_2172E3D54();
  OUTLINED_FUNCTION_62_7();
  if (v64)
  {
    v385 = OUTLINED_FUNCTION_39_6();
  }

  else
  {
    sub_2172E3D54();
    v388 = OUTLINED_FUNCTION_39_6();
    sub_2172844EC(v388);
    if (v465[2])
    {
      OUTLINED_FUNCTION_14_17();
      v296 = &qword_27CB242B8;
      v281 = &unk_21777EEA0;
      v389 = OUTLINED_FUNCTION_16_0();
      v274 = __swift_instantiateConcreteTypeFromMangledNameV2(v389, v390);
      sub_2172E1FE4();
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10_15(v391, v392, v393, v394, &type metadata for MusicVideo, v395, v396, &protocol witness table for MusicVideo, v408);
      sub_2171F0738(v467, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_25_14();
      goto LABEL_121;
    }

    v386 = &qword_27CB242B0;
    v387 = &unk_21775D630;
    v385 = v465;
  }

  sub_2171F0738(v385, v386, v387);
  OUTLINED_FUNCTION_5_22();
LABEL_121:
  v397 = v446;
  sub_2172E1F3C();
  v398 = v296 + *(v397 + 32);
  v399 = *(v398 + 3);
  if (v399 == 1)
  {
    v399 = 0;
    *&v274[v281[57]] = 0;
    v400 = &v274[v281[58]];
    *v400 = 0;
    v400[8] = 1;
  }

  else
  {
    if (*v398 == 1)
    {
      v401 = 0;
    }

    else
    {
      v401 = sub_217751DE8();
    }

    *&v274[v281[57]] = v401;
    v402 = v398[16];
    v403 = &v274[v281[58]];
    *v403 = *(v398 + 1);
    v403[8] = v402;
    sub_217751DE8();
  }

  *&v274[v281[59]] = v399;
  v479 = v281;
  v480 = &protocol witness table for MusicVideoPropertyProvider;
  v404 = OUTLINED_FUNCTION_39_6();
  __swift_allocate_boxed_opaque_existential_0(v404);
  sub_2173625C8();
  v405 = OUTLINED_FUNCTION_39_6();
  MusicVideo.init(propertyProvider:)(v405, v440);

  (*(*(v257 - 8) + 8))(v258, v257);
  sub_2171F0738(v443, &qword_27CB24808, &qword_217758D90);
  sub_217362620(v274, type metadata accessor for MusicVideoPropertyProvider);
  OUTLINED_FUNCTION_20_16();
  sub_217362620(v449, v406);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21735F984()
{
  v2 = v1;
  OUTLINED_FUNCTION_169();
  v4 = v1 + *(v3(0) + 20);
  swift_getAtKeyPath();
  if (v15)
  {
    sub_2171F0738(v14, &qword_27CB244D0, &unk_21775D620);
    if (dynamic_cast_existential_1_conditional(*(v0 + 288)))
    {
      v6 = (*(v5 + 8))();
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    v8 = sub_217696E10(7u, v6);

    if (v8)
    {
      v7 = 6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *v2;
  v9 = v2[1];
  sub_217751DE8();
  v11 = *(v0 + 24);

  *(v0 + 16) = v10;
  *(v0 + 24) = v9;
  *(v0 + 32) = v7;
  v13[0] = 0;
  v13[1] = 0;
  return MusicItemDataSourceCollection.append(_:)(v13);
}

void MusicVideo.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2, v3);
  v4 = v0;
  v448 = v5;
  v449 = v6;
  v447 = v7;
  v9 = v8;
  v450 = type metadata accessor for CloudMusicVideo(0);
  v10 = OUTLINED_FUNCTION_43(v450);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  OUTLINED_FUNCTION_1();
  v16 = (v15 - v14);
  v445 = sub_2177517D8();
  v17 = OUTLINED_FUNCTION_0_0(v445);
  v415 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17, v21);
  OUTLINED_FUNCTION_81();
  v414 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v24 = OUTLINED_FUNCTION_45_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_117_7();
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v411 - v30;
  v460 = type metadata accessor for CloudPreviewAsset();
  v32 = OUTLINED_FUNCTION_43(v460);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  OUTLINED_FUNCTION_81();
  v456 = v36;
  OUTLINED_FUNCTION_206();
  v459 = type metadata accessor for PreviewAsset();
  v37 = OUTLINED_FUNCTION_0_0(v459);
  v461 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37, v41);
  OUTLINED_FUNCTION_1();
  v44 = (v43 - v42);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A68, &qword_217759030);
  v46 = OUTLINED_FUNCTION_0_0(v45);
  v457 = v47;
  v458 = v46;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v50, v51);
  v53 = &v411 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v55 = OUTLINED_FUNCTION_45_0(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55, v58);
  OUTLINED_FUNCTION_31();
  v453 = v59;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v60, v61);
  OUTLINED_FUNCTION_99();
  v452 = v62;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v63, v64);
  v451 = &v411 - v65;
  v66 = OUTLINED_FUNCTION_206();
  v446 = type metadata accessor for CloudMusicVideo.Attributes(v66);
  v67 = OUTLINED_FUNCTION_43(v446);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67, v70);
  OUTLINED_FUNCTION_81();
  v454 = v71;
  if (qword_280BE6B38 != -1)
  {
    swift_once();
  }

  v72 = COERCE_DOUBLE(sub_2172A4330());
  v444 = v73;
  if ((v73 & 1) == 0)
  {
    v80 = v72 * 1000.0;
    if (COERCE__INT64(fabs(v72 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v80 > -9.22337204e18)
    {
      if (v80 < 9.22337204e18)
      {
        v441 = v80;
        goto LABEL_9;
      }

LABEL_165:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_165;
  }

  v441 = 0;
LABEL_9:
  if (qword_280BE6B20 != -1)
  {
    swift_once();
  }

  sub_2172A422C(qword_280C02240, v73, v74, v75, v76, v77, v78, v79, v411, v412, v413, v414, v415, v416, SWORD2(v416), SBYTE6(v416), SHIBYTE(v416), v417, v418, v419, v420, v421, v422, v423, v424);
  v440 = v88;
  if (qword_280BE6B50 != -1)
  {
    swift_once();
  }

  sub_2176CA83C(qword_280C02258, v81, v82, v83, v84, v85, v86, v87, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428);
  memcpy(v486, v485, 0x221uLL);
  OUTLINED_FUNCTION_104(v486);
  if (v89)
  {
    sub_2172E22C0(v484);
  }

  else
  {
    memcpy(v469, v486, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v464);
    v90 = OUTLINED_FUNCTION_79_7();
    memcpy(v90, v469, 0x221uLL);
    v91 = OUTLINED_FUNCTION_79_7();
    sub_217284084(v91);
    v92 = OUTLINED_FUNCTION_139_5();
    memcpy(v92, v93, 0x1B8uLL);
    nullsub_1(v469, v94);
    memcpy(v484, v469, sizeof(v484));
  }

  if (qword_280BE6DA8 != -1)
  {
    swift_once();
  }

  v442 = v16;
  v443 = v9;
  v95 = sub_2172A4204();
  v438 = v96;
  v439 = v95;
  if (qword_280BE6DA0 != -1)
  {
    swift_once();
  }

  v97 = sub_2172A4204();
  if (v98)
  {
    v99 = v97;
  }

  else
  {
    v99 = 0;
  }

  v100 = 0xE000000000000000;
  if (v98)
  {
    v100 = v98;
  }

  v436 = v100;
  v437 = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
  swift_allocObject();
  v101 = sub_2172E3DC0(0x7255747369747261, 0xE90000000000006CLL);
  sub_2176CA63C(v101, v102, v103, v104, v105, v106, v107, v108, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, *(&v431 + 1));

  if (qword_280BE6D00 != -1)
  {
    swift_once();
  }

  sub_2176CA688(qword_280C02330, v109, v110, v111, v112, v113, v114, v115, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430);
  if (LOBYTE(v478[0]) == 2)
  {
    v434 = 0;
    v435 = 0;
  }

  else
  {
    if (v478[0])
    {
      v116 = 0x746963696C707865;
    }

    else
    {
      v116 = 0x6E61656C63;
    }

    v117 = 0xE500000000000000;
    if (v478[0])
    {
      v117 = 0xE800000000000000;
    }

    v434 = v117;
    v435 = v116;
  }

  if (qword_280BE6C60 != -1)
  {
    swift_once();
  }

  v433 = sub_2172A4668(qword_280C022C8);
  if (qword_280BE6CD8 != -1)
  {
    swift_once();
  }

  sub_2176CA67C(qword_280C02318, v118, v119, v120, v121, v122, v123, v124, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428);
  v480 = v478[0];
  v481 = v478[1];
  v482 = v478[2];
  v483 = v478[3];
  v125 = *(&v478[0] + 1);
  if (*(&v478[0] + 1) == 1)
  {
    v426 = 0;
    v427 = 0;
    v125 = 0;
    v428 = 0;
    v429 = 0;
    v430 = 0;
    v431 = 0uLL;
    v425 = 0;
  }

  else
  {
    v431 = v483;
    v126 = *(&v482 + 1);
    v429 = v482;
    v127 = *(&v481 + 1);
    v426 = v480;
    v427 = v481;
    sub_217751DE8();
    sub_217751DE8();
    v428 = v127;
    sub_217751DE8();
    v430 = v126;
    sub_217751DE8();
    v425 = sub_217751DC8();
    sub_2171F0738(&v480, &qword_27CB24B70, &unk_217759460);
  }

  v128 = v53;
  v432 = v125;
  if (qword_280BE6DC0 != -1)
  {
    swift_once();
  }

  v424 = sub_2172A464C(qword_280C023A0);
  if (qword_280BE6D98 != -1)
  {
    swift_once();
  }

  v422 = sub_2172A4238(qword_280C02380);
  if (qword_280BE6BF0 != -1)
  {
    swift_once();
  }

  sub_2172A422C(qword_280C02280, v129, v130, v131, v132, v133, v134, v135, v411, v412, v413, v414, v415, v416, SWORD2(v416), SBYTE6(v416), SHIBYTE(v416), v417, v418, v419, v420, v421, v422, v423, v424);
  HIDWORD(v423) = v143;
  if (qword_280BE6B88 != -1)
  {
    swift_once();
  }

  sub_2172A422C(qword_280C02270, v136, v137, v138, v139, v140, v141, v142, v411, v412, v413, v414, v415, v416, SWORD2(v416), SBYTE6(v416), SHIBYTE(v416), v417, v418, v419, v420, v421, v422, v423, v424);
  LODWORD(v423) = v151;
  if (qword_280BE6D08 != -1)
  {
    swift_once();
  }

  sub_2176CA63C(qword_280C02338, v144, v145, v146, v147, v148, v149, v150, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, *(&v431 + 1));
  if (qword_280BE6BF8 != -1)
  {
    swift_once();
  }

  v152 = sub_2172A4204();
  v420 = v153;
  v421 = v152;
  if (qword_280BE6BC8 != -1)
  {
    swift_once();
  }

  v154 = sub_2172A4204();
  if (v155)
  {
    v156 = v154;
  }

  else
  {
    v156 = 0;
  }

  v157 = 0xE000000000000000;
  if (v155)
  {
    v157 = v155;
  }

  v418 = v157;
  v419 = v156;
  if (qword_280BE6B70 != -1)
  {
    swift_once();
  }

  v417 = sub_2172A4630(qword_280C02260);
  if (qword_280BE6CA8 != -1)
  {
    swift_once();
  }

  sub_2176CAB9C(qword_280C022F8, v158, v159, v160, v161, v162, v163, v164, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428);
  if (qword_280BE6CF0 != -1)
  {
    swift_once();
  }

  v165 = sub_2172A4614(qword_280C02328);
  if (v165)
  {
    v166 = *(v165 + 16);
    if (v166)
    {
      v412 = v1;
      v413 = v4;
      v416 = v31;
      v468[0] = MEMORY[0x277D84F90];
      v167 = v165;
      sub_2172766B8(0, v166, 0);
      v168 = v468[0];
      OUTLINED_FUNCTION_46_0();
      v411 = v167;
      v170 = v167 + v169;
      v455 = *(v171 + 72);
      for (i = v166 - 1; ; --i)
      {
        v173 = v128;
        v461 = v170;
        sub_2173625C8();
        memcpy(v469, v44, 0x221uLL);
        v174 = OUTLINED_FUNCTION_79_7();
        memcpy(v174, v44, 0x221uLL);
        v175 = OUTLINED_FUNCTION_79_7();
        v176 = v168;
        if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v175) == 1)
        {
          sub_2172E22C0(v466);
        }

        else
        {
          memcpy(v462, v478, 0x221uLL);
          memcpy(v463, v469, 0x221uLL);
          sub_217284028(v463, v464);
          Artwork.convertToCloudArtworkAttribute()(v465);
          memcpy(v464, v462, 0x221uLL);
          sub_217284084(v464);
          memcpy(v462, v465, 0x1B8uLL);
          nullsub_1(v462, v177);
          memcpy(v466, v462, sizeof(v466));
        }

        v179 = v459;
        v178 = v460;
        v180 = *(v459 + 20);
        v181 = *(v460 + 20);
        v182 = v44;
        v183 = v456;
        sub_2172E3D54();
        v184 = *(v179 + 24);
        v185 = *(v178 + 24);
        sub_2172E3D54();
        memcpy(v183, v466, 0x1B8uLL);
        OUTLINED_FUNCTION_95_6();
        sub_2173625C8();
        v186 = sub_217751DC8();
        v187 = v183;
        v44 = v182;
        sub_217362620(v187, type metadata accessor for CloudPreviewAsset);
        sub_217362620(v182, type metadata accessor for PreviewAsset);
        *&v173[*(v458 + 28)] = v186;
        v168 = v176;
        v468[0] = v176;
        v188 = *(v176 + 16);
        v189 = *(v168 + 24);
        if (v188 >= v189 >> 1)
        {
          sub_2172766B8(v189 > 1, v188 + 1, 1);
          v168 = v468[0];
        }

        *(v168 + 16) = v188 + 1;
        OUTLINED_FUNCTION_46_0();
        v191 = *(v190 + 72);
        sub_2172E21DC();
        if (!i)
        {
          break;
        }

        v128 = v173;
        v170 = v461 + v455;
      }

      v1 = v412;
      v4 = v413;
      v31 = v416;
    }

    else
    {

      v168 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v168 = 0;
  }

  v192 = v445;
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24();
  }

  v193 = type metadata accessor for CloudFormatter();
  v201 = __swift_project_value_buffer(v193, qword_280BE8918);
  if (qword_280BE6D58 != -1)
  {
    swift_once();
  }

  sub_2176CA65C(qword_280C02360, v194, v195, v196, v197, v198, v199, v200, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, *(&v431 + 1));
  sub_2172E3D54();
  OUTLINED_FUNCTION_133(v1, 1, v192);
  if (v89)
  {
    OUTLINED_FUNCTION_169_1(v31);
    OUTLINED_FUNCTION_169_1(v1);
    v460 = 0;
    v461 = 0;
  }

  else
  {
    v202 = v1;
    v203 = v415;
    v204 = *(v415 + 32);
    v416 = v31;
    v205 = v414;
    v204(v414, v202, v192);
    v206 = *(v201 + *(v193 + 20));
    v207 = sub_2177517A8();
    v208 = [v206 stringFromDate_];

    v209 = sub_217751F48();
    v460 = v210;
    v461 = v209;

    (*(v203 + 8))(v205, v192);
    sub_2171F0738(v416, &qword_27CB241C0, &qword_217759480);
  }

  if (qword_280BE6D50 != -1)
  {
    swift_once();
  }

  v459 = sub_2172A4218();
  LODWORD(v458) = v211;
  if (qword_280BE6C08 != -1)
  {
    swift_once();
  }

  sub_2176CA63C(qword_280C02290, v211, v212, v213, v214, v215, v216, v217, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, *(&v431 + 1));
  if (v440)
  {
    v218 = 0x77656976657270;
  }

  else
  {
    v218 = 0;
  }

  v219 = 0xE700000000000000;
  if ((v440 & 1) == 0)
  {
    v219 = 0;
  }

  v456 = v219;
  v457 = v218;
  if (qword_280BE6B30 != -1)
  {
    swift_once();
  }

  v220 = sub_2172A4204();
  v221 = v4;
  v223 = v222;
  if (v422)
  {
    v224 = v422;
  }

  else
  {
    v224 = MEMORY[0x277D84F90];
  }

  v225 = v454;
  memcpy(v454, v484, 0x1B8uLL);
  v226 = v438;
  v225[55] = v439;
  v225[56] = v226;
  v227 = v436;
  v225[57] = v437;
  v225[58] = v227;
  v228 = v446;
  v229 = v446[7];
  sub_2172E21DC();
  v230 = (v225 + v228[8]);
  v231 = v434;
  *v230 = v435;
  v230[1] = v231;
  v232 = v225 + v228[9];
  *v232 = v441;
  v232[8] = v444 & 1;
  *(v225 + v228[10]) = v433;
  v233 = (v225 + v228[11]);
  v234 = v432;
  *v233 = v426;
  v233[1] = v234;
  v235 = v428;
  v233[2] = v427;
  v233[3] = v235;
  v236 = v430;
  v233[4] = v429;
  v233[5] = v236;
  v237 = *(&v431 + 1);
  v233[6] = v431;
  v233[7] = v237;
  v238 = v424;
  v233[8] = v425;
  *(v225 + v228[12]) = v238;
  *(v225 + v228[13]) = v224;
  LOBYTE(v238) = v423;
  *(v225 + v228[14]) = BYTE4(v423);
  *(v225 + v228[15]) = v238;
  v239 = v228[16];
  sub_2172E21DC();
  v240 = (v225 + v228[17]);
  v241 = v420;
  *v240 = v421;
  v240[1] = v241;
  v242 = (v225 + v228[18]);
  v243 = v418;
  *v242 = v419;
  v242[1] = v243;
  *(v225 + v228[19]) = v417;
  memcpy(v225 + v228[20], v479, 0x78uLL);
  *(v225 + v228[21]) = v168;
  v244 = (v225 + v228[22]);
  v245 = v460;
  *v244 = v461;
  v244[1] = v245;
  v246 = v225 + v228[23];
  *v246 = v459;
  v246[8] = v458 & 1;
  v247 = v228[24];
  sub_2172E21DC();
  v248 = (v225 + v228[25]);
  v249 = v456;
  *v248 = v457;
  v248[1] = v249;
  v250 = (v225 + v228[26]);
  *v250 = v220;
  v250[1] = v223;
  v478[0] = 0uLL;
  *&v478[1] = 1;
  bzero(&v478[1] + 8, 0x2E8uLL);
  if (qword_280BE6BB0 != -1)
  {
    swift_once();
  }

  sub_2176CA620(qword_280BE6BB8, v251, v252, v253, v254, v255, v256, v257, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, *(&v431 + 1));
  v265 = v221;
  if (qword_280BE6B58 != -1)
  {
    swift_once();
  }

  sub_2176CA604(qword_280BE6B60, v258, v259, v260, v261, v262, v263, v264, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, *(&v431 + 1));
  if (qword_280BE6DB0 != -1)
  {
    swift_once();
  }

  sub_2176CABA8(qword_280C02398, v266, v267, v268, v269, v270, v271, v272, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, *(&v431 + 1));
  if (qword_280BE6B98 != -1)
  {
    swift_once();
  }

  sub_2176CA5E8(qword_280BE6BA0, v273, v274, v275, v276, v277, v278, v279, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, *(&v431 + 1));
  if (qword_280BE6B40 != -1)
  {
    swift_once();
  }

  sub_2176CABA8(qword_280BE6B48, v280, v281, v282, v283, v284, v285, v286, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, *(&v431 + 1));
  if (qword_280BE6BD8 != -1)
  {
    swift_once();
  }

  sub_2176CA5CC(qword_280BE6BE0, v287, v288, v289, v290, v291, v292, v293, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, *(&v431 + 1));
  if (v477[11] || v476[11] || v475[11] || v474[11] || v473[11] || v472[11])
  {
    sub_2172E3D54();
    if (v469[11])
    {
      sub_2172E2038();
      OUTLINED_FUNCTION_56_6(v463);
      LOBYTE(v462[0]) = v463[0];
      v294 = OUTLINED_FUNCTION_204();
      __swift_instantiateConcreteTypeFromMangledNameV2(v294, v295);
      OUTLINED_FUNCTION_23_17();
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      sub_2171F0738(v469, &qword_27CB25318, &qword_2177657C0);
      OUTLINED_FUNCTION_67_7();
    }

    sub_2172E3D54();
    if (v469[11])
    {
      sub_2172E2188();
      OUTLINED_FUNCTION_56_6(v462);
      LOBYTE(v466[0]) = v462[0];
      v296 = OUTLINED_FUNCTION_204();
      __swift_instantiateConcreteTypeFromMangledNameV2(v296, v297);
      OUTLINED_FUNCTION_23_17();
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      sub_2171F0738(v469, &qword_27CB25310, &unk_21775D3D0);
      OUTLINED_FUNCTION_93_6();
    }

    sub_2172E3D54();
    if (v469[11])
    {
      sub_2172E1FE4();
      OUTLINED_FUNCTION_56_6(v466);
      LOBYTE(v465[0]) = v466[0];
      v298 = OUTLINED_FUNCTION_204();
      __swift_instantiateConcreteTypeFromMangledNameV2(v298, v299);
      OUTLINED_FUNCTION_23_17();
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      sub_2171F0738(v469, &qword_27CB25338, &unk_21775D3E0);
      memset(v462, 0, 128);
    }

    sub_2172E3D54();
    if (v469[11])
    {
      sub_2172E2134();
      OUTLINED_FUNCTION_56_6(v465);
      LOBYTE(v468[0]) = v465[0];
      v300 = OUTLINED_FUNCTION_204();
      __swift_instantiateConcreteTypeFromMangledNameV2(v300, v301);
      OUTLINED_FUNCTION_23_17();
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      sub_2171F0738(v469, &qword_27CB25320, &unk_21776E020);
      memset(v466, 0, 128);
    }

    sub_2172E3D54();
    if (v469[11])
    {
      sub_2172E1FE4();
      OUTLINED_FUNCTION_56_6(v468);
      LOBYTE(v470[0]) = v468[0];
      v302 = OUTLINED_FUNCTION_204();
      __swift_instantiateConcreteTypeFromMangledNameV2(v302, v303);
      OUTLINED_FUNCTION_23_17();
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      sub_2171F0738(v469, &qword_27CB25338, &unk_21775D3E0);
      memset(v465, 0, 128);
    }

    sub_2172E3D54();
    if (v469[11])
    {
      sub_2173626DC();
      OUTLINED_FUNCTION_56_6(v470);
      v467 = v470[0];
      v304 = OUTLINED_FUNCTION_204();
      __swift_instantiateConcreteTypeFromMangledNameV2(v304, v305);
      OUTLINED_FUNCTION_23_17();
      v306 = OUTLINED_FUNCTION_79_7();
      sub_2171F0738(v306, v307, v308);
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      v309 = OUTLINED_FUNCTION_79_7();
      sub_2171F0738(v309, v310, v311);
      sub_2171F0738(v469, &qword_27CB255A8, &unk_21775D450);
      memset(v468, 0, sizeof(v468));
    }

    v312 = OUTLINED_FUNCTION_139_5();
    memcpy(v312, v313, 0x80uLL);
    memcpy(&v469[16], v463, 0x80uLL);
    memcpy(&v469[32], v462, 0x80uLL);
    memcpy(&v469[48], v466, 0x80uLL);
    memcpy(&v469[64], v465, 0x80uLL);
    memcpy(&v469[80], v468, 0x80uLL);
    v314 = OUTLINED_FUNCTION_79_7();
    memcpy(v314, v469, 0x300uLL);
  }

  v462[0] = 0uLL;
  *&v462[1] = 1;
  bzero(&v462[1] + 8, 0xE8uLL);
  if (qword_280BE6D20 != -1)
  {
    swift_once();
  }

  sub_2176CABA8(qword_280BE6D28, v315, v316, v317, v318, v319, v320, v321, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, *(&v431 + 1));
  if (qword_280BE6D68 != -1)
  {
    swift_once();
  }

  sub_2176CABA8(qword_280BE6D70, v322, v323, v324, v325, v326, v327, v328, v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, *(&v431 + 1));
  if (v466[11] | v465[11])
  {
    sub_2172E3D54();
    if (v469[11])
    {
      sub_2172E1FE4();
      OUTLINED_FUNCTION_56_6(v463);
      LOBYTE(v468[0]) = v463[0];
      v329 = OUTLINED_FUNCTION_204();
      __swift_instantiateConcreteTypeFromMangledNameV2(v329, v330);
      OUTLINED_FUNCTION_23_17();
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      sub_2171F0738(v469, &qword_27CB25338, &unk_21775D3E0);
      OUTLINED_FUNCTION_67_7();
    }

    sub_2172E3D54();
    if (v469[11])
    {
      sub_2172E1FE4();
      OUTLINED_FUNCTION_56_6(v468);
      LOBYTE(v470[0]) = v468[0];
      v331 = OUTLINED_FUNCTION_204();
      __swift_instantiateConcreteTypeFromMangledNameV2(v331, v332);
      OUTLINED_FUNCTION_23_17();
      sub_2171F0738(v462, &qword_27CB24A90, &unk_21775D5B0);
      OUTLINED_FUNCTION_53_8();
    }

    else
    {
      sub_2171F0738(v462, &qword_27CB24A90, &unk_21775D5B0);
      sub_2171F0738(v469, &qword_27CB25338, &unk_21775D3E0);
      OUTLINED_FUNCTION_93_6();
    }

    v333 = OUTLINED_FUNCTION_139_5();
    memcpy(v333, v334, 0x80uLL);
    memcpy(&v469[16], v463, 0x80uLL);
    memcpy(v462, v469, 0x100uLL);
  }

  if (qword_280BE6C20 != -1)
  {
    swift_once();
  }

  v335 = sub_2172A45F8(qword_280C022A0);
  if (qword_280BE6D90 != -1)
  {
    swift_once();
  }

  v336 = sub_2172A4330();
  v338 = v337;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254B0, &unk_21775D5A0);
  swift_allocObject();
  v339 = sub_2172E3DC4(0x7374657070696E73, 0xE800000000000000);
  v340 = sub_2172A45DC(v339);

  if (v335 <= 1)
  {
    v341 = 1;
  }

  else
  {
    v341 = v335;
  }

  if (v335 || (v338 & 1) == 0 || (v341 = 1, v340))
  {
    v342 = v338 & 1;
  }

  else
  {
    v341 = 0;
    v336 = 0;
    v342 = 0;
    v340 = 1;
  }

  v344 = *v265;
  v343 = v265[1];
  v345 = v450;
  v346 = v450[5];
  OUTLINED_FUNCTION_22_14();
  v347 = v442;
  sub_2173625C8();
  v348 = v345[6];
  OUTLINED_FUNCTION_79_7();
  sub_2172E3D54();
  v349 = v345[7];
  sub_2172E3D54();
  *v347 = v344;
  v347[1] = v343;
  v350 = (v347 + v345[8]);
  *v350 = v341;
  v350[1] = v336;
  v350[2] = v342;
  v350[3] = v340;
  v351 = v265[5];
  v352 = v265[6];
  __swift_project_boxed_opaque_existential_1(v265 + 2, v351);
  v353 = *(v352 + 24);
  sub_217751DE8();
  v353(v463, v351, v352);
  nullsub_1(v463, v354);
  memcpy(v464, v463, 0x161uLL);
  OUTLINED_FUNCTION_7_18();
  v355 = v443;
  sub_2173625C8();
  OUTLINED_FUNCTION_98_8();
  v356 = OUTLINED_FUNCTION_5_4();
  v357(v356, v351);
  v358 = v469[4];
  __swift_project_boxed_opaque_existential_1(v469, v469[3]);
  v359 = *(*(v358 + 8) + 48);
  v360 = OUTLINED_FUNCTION_5_4();
  v361(v360);
  __swift_destroy_boxed_opaque_existential_1(v469);
  v460 = v470[1];
  v461 = v470[0];
  LODWORD(v459) = v471;
  OUTLINED_FUNCTION_98_8();
  v362 = OUTLINED_FUNCTION_5_4();
  v363(v362, v351);
  v364 = v469[4];
  __swift_project_boxed_opaque_existential_1(v469, v469[3]);
  v365 = *(*(v364 + 8) + 56);
  v366 = OUTLINED_FUNCTION_5_4();
  v368 = v367(v366);
  v457 = v369;
  v458 = v368;
  __swift_destroy_boxed_opaque_existential_1(v469);
  v370 = OUTLINED_FUNCTION_139_5();
  memcpy(v370, v371, 0x168uLL);
  memset(&v469[45], 0, 24);
  nullsub_1(v469, v372);
  OUTLINED_FUNCTION_98_8();
  v373 = OUTLINED_FUNCTION_5_4();
  v374(v373, v351);
  OUTLINED_FUNCTION_75_5();
  v376 = *(v375 + 64);
  v377 = OUTLINED_FUNCTION_5_4();
  v379 = v378(v377);
  __swift_destroy_boxed_opaque_existential_1(v468);
  v380 = v265[6];
  __swift_project_boxed_opaque_existential_1(v265 + 2, v265[5]);
  v381 = *(v380 + 96);
  v382 = OUTLINED_FUNCTION_5_4();
  v383(v382, v380);
  OUTLINED_FUNCTION_75_5();
  v385 = *(v384 + 72);
  v386 = OUTLINED_FUNCTION_5_4();
  v388 = v387(v386);
  __swift_destroy_boxed_opaque_existential_1(v468);
  v389 = v265[6];
  __swift_project_boxed_opaque_existential_1(v265 + 2, v265[5]);
  v390 = *(v389 + 96);
  v391 = OUTLINED_FUNCTION_5_4();
  v392(v391, v389);
  OUTLINED_FUNCTION_75_5();
  v394 = *(v393 + 80);
  v395 = OUTLINED_FUNCTION_5_4();
  v397 = v396(v395);
  __swift_destroy_boxed_opaque_existential_1(v468);
  v398 = v265[5];
  v399 = v265[6];
  __swift_project_boxed_opaque_existential_1(v265 + 2, v398);
  (*(v399 + 96))(v468, v398, v399);
  v400 = v468[3];
  v401 = v468[4];
  __swift_project_boxed_opaque_existential_1(v468, v468[3]);
  v402 = (*(*(v401 + 8) + 88))(v400);
  OUTLINED_FUNCTION_20_16();
  sub_217362620(v347, v403);
  sub_2171F0738(v462, &qword_27CB24A90, &unk_21775D5B0);
  v404 = OUTLINED_FUNCTION_79_7();
  sub_2171F0738(v404, &qword_27CB243A8, &unk_217777720);
  OUTLINED_FUNCTION_21_13();
  sub_217362620(v454, v405);
  __swift_destroy_boxed_opaque_existential_1(v468);
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  v407 = v355 + v406[9];
  v408 = v460;
  *v407 = v461;
  *(v407 + 8) = v408;
  *(v407 + 16) = v459;
  v409 = (v355 + v406[10]);
  v410 = v457;
  *v409 = v458;
  v409[1] = v410;
  memcpy((v355 + v406[11]), v469, 0x180uLL);
  *(v355 + v406[12]) = v379;
  *(v355 + v406[13]) = v388;
  *(v355 + v406[14]) = v397;
  *(v355 + v406[15]) = v402;
  OUTLINED_FUNCTION_169_1(v466);
  sub_2171F0738(v477, &qword_27CB25318, &qword_2177657C0);
  OUTLINED_FUNCTION_169_1(v465);
  sub_2171F0738(v472, &qword_27CB255A8, &unk_21775D450);
  OUTLINED_FUNCTION_169_1(v473);
  sub_2171F0738(v474, &qword_27CB25320, &unk_21776E020);
  OUTLINED_FUNCTION_169_1(v475);
  sub_2171F0738(v476, &qword_27CB25310, &unk_21775D3D0);
  OUTLINED_FUNCTION_13();
}

unint64_t sub_217361AC8()
{
  result = qword_280BE7000;
  if (!qword_280BE7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7000);
  }

  return result;
}

unint64_t sub_217361B1C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217361B60(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BE0, &unk_2177657E0);
    v4();
    result = OUTLINED_FUNCTION_157_4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217361BD0()
{
  result = qword_27CB25CE8;
  if (!qword_27CB25CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25CE0, &qword_21775F658);
    sub_217361C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25CE8);
  }

  return result;
}

unint64_t sub_217361C54()
{
  result = qword_27CB25CF0;
  if (!qword_27CB25CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24A68, &qword_217759030);
    sub_217361B1C(&unk_280BE3D78);
    sub_217361B1C(&unk_280BE3D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25CF0);
  }

  return result;
}

unint64_t sub_217361D3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_186_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24BE8, &qword_2177595F0);
    v4();
    result = OUTLINED_FUNCTION_157_4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_217361DAC()
{
  result = qword_280BE2378;
  if (!qword_280BE2378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25CE0, &qword_21775F658);
    sub_217361E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2378);
  }

  return result;
}

unint64_t sub_217361E30()
{
  result = qword_280BE4338;
  if (!qword_280BE4338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24A68, &qword_217759030);
    sub_217361B1C(&unk_280BE3D78);
    sub_217361B1C(&unk_280BE3D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4338);
  }

  return result;
}

unint64_t sub_217361F18()
{
  result = qword_27CB25D10;
  if (!qword_27CB25D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D10);
  }

  return result;
}

unint64_t sub_217361F8C()
{
  result = qword_27CB25D18;
  if (!qword_27CB25D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242E8, &unk_21775D6B0);
    sub_217362010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D18);
  }

  return result;
}

unint64_t sub_217362010()
{
  result = qword_27CB25D20;
  if (!qword_27CB25D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24748, &unk_217758CD0);
    sub_217361B1C(&unk_27CB25D28);
    sub_217361B1C(&unk_27CB25D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D20);
  }

  return result;
}

unint64_t sub_2173620F8()
{
  result = qword_27CB25D40;
  if (!qword_27CB25D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB242E8, &unk_21775D6B0);
    sub_21736217C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D40);
  }

  return result;
}

unint64_t sub_21736217C()
{
  result = qword_27CB25D48;
  if (!qword_27CB25D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24748, &unk_217758CD0);
    sub_217361B1C(&unk_27CB25D28);
    sub_217361B1C(&unk_27CB25D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D48);
  }

  return result;
}

unint64_t sub_21736229C()
{
  result = qword_27CB25D58;
  if (!qword_27CB25D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D58);
  }

  return result;
}

unint64_t sub_217362328()
{
  result = qword_27CB25D70;
  if (!qword_27CB25D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D70);
  }

  return result;
}

unint64_t sub_21736237C()
{
  result = qword_27CB25D78;
  if (!qword_27CB25D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25D78);
  }

  return result;
}

unint64_t sub_2173623D0()
{
  result = qword_280BE3DB0;
  if (!qword_280BE3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE3DB0);
  }

  return result;
}

unint64_t sub_217362424()
{
  result = qword_280BE6EF8[0];
  if (!qword_280BE6EF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE6EF8);
  }

  return result;
}

unint64_t sub_217362478()
{
  result = qword_27CB25DA0;
  if (!qword_27CB25DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DA0);
  }

  return result;
}

unint64_t sub_2173624CC()
{
  result = qword_280BE6E98;
  if (!qword_280BE6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE6E98);
  }

  return result;
}

unint64_t sub_217362520()
{
  result = qword_280BE6EB8;
  if (!qword_280BE6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE6EB8);
  }

  return result;
}

unint64_t sub_217362574()
{
  result = qword_280BE6E88;
  if (!qword_280BE6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE6E88);
  }

  return result;
}

uint64_t sub_2173625C8()
{
  OUTLINED_FUNCTION_169();
  v2 = v1(0);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v0;
}

uint64_t sub_217362620(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_217362678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudMusicVideo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2173626DC()
{
  result = qword_27CB25DB0;
  if (!qword_27CB25DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DB0);
  }

  return result;
}

uint64_t sub_217362730()
{
  OUTLINED_FUNCTION_169();
  v2 = v1(0);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v0;
}

unint64_t sub_2173627D4()
{
  result = qword_27CB25DC0;
  if (!qword_27CB25DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DC0);
  }

  return result;
}

unint64_t sub_21736282C()
{
  result = qword_27CB25DC8;
  if (!qword_27CB25DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DC8);
  }

  return result;
}

unint64_t sub_217362884()
{
  result = qword_27CB25DD0;
  if (!qword_27CB25DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DD0);
  }

  return result;
}

unint64_t sub_21736290C()
{
  result = qword_27CB25DE8;
  if (!qword_27CB25DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DE8);
  }

  return result;
}

unint64_t sub_217362964()
{
  result = qword_27CB25DF0;
  if (!qword_27CB25DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DF0);
  }

  return result;
}

unint64_t sub_2173629BC()
{
  result = qword_27CB25DF8;
  if (!qword_27CB25DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25DF8);
  }

  return result;
}

unint64_t sub_217362A14()
{
  result = qword_27CB25E00;
  if (!qword_27CB25E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E00);
  }

  return result;
}

unint64_t sub_217362A9C()
{
  result = qword_27CB25E18;
  if (!qword_27CB25E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E18);
  }

  return result;
}

unint64_t sub_217362AF4()
{
  result = qword_27CB25E20;
  if (!qword_27CB25E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E20);
  }

  return result;
}

void sub_217362CB0()
{
  type metadata accessor for CloudMusicVideo.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE6E90);
    if (v1 <= 0x3F)
    {
      sub_2172E2E58(319, &qword_280BE6EB0);
      if (v2 <= 0x3F)
      {
        sub_2172E2E58(319, &qword_280BE6E80);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217362DCC()
{
  sub_2172E2E08(319, &qword_280BE7DF0, &qword_27CB243F0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE7598);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2172E2DB0();
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2172E2E58(319, &qword_280BE7528);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_2172E2E08(319, &qword_280BE75A8, &qword_27CB24BE8);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_2172E2E08(319, &qword_280BE4308, &qword_27CB25040);
          if (v11 > 0x3F)
          {
            return v9;
          }

          sub_2172E2E08(319, &qword_280BE75B0, &qword_27CB24BE0);
          if (v12 > 0x3F)
          {
            return v9;
          }

          sub_2172E2E08(319, &qword_280BE7548, &qword_27CB24C58);
          if (v13 > 0x3F)
          {
            return v9;
          }

          sub_2172E2E58(319, &qword_280BE7540);
          if (v14 > 0x3F)
          {
            return v9;
          }

          sub_2172E2E08(319, &qword_280BE7558, &qword_27CB24C50);
          if (v15 > 0x3F)
          {
            return v9;
          }

          sub_2172E2E58(319, &qword_280BE7DD0);
          if (v16 > 0x3F)
          {
            return v9;
          }

          sub_2172E2E08(319, &qword_280BE2370, &qword_27CB25CE0);
          if (v17 > 0x3F)
          {
            return v9;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudResourceCollectionVyAA0cD0VyAA0C5AlbumVGGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudMusicVideo.Relationships.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudMusicVideo.Associations.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit17CloudContributorsVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2173632A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2173632F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudMusicVideo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudMusicVideo.Metadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CloudMusicVideo.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudMusicVideo.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_217363678()
{
  result = qword_27CB25E38;
  if (!qword_27CB25E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E38);
  }

  return result;
}

unint64_t sub_2173636D0()
{
  result = qword_27CB25E40;
  if (!qword_27CB25E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E40);
  }

  return result;
}

unint64_t sub_217363728()
{
  result = qword_27CB25E48;
  if (!qword_27CB25E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E48);
  }

  return result;
}

unint64_t sub_217363780()
{
  result = qword_280BE6EE8;
  if (!qword_280BE6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE6EE8);
  }

  return result;
}

unint64_t sub_2173637D8()
{
  result = qword_280BE6EF0;
  if (!qword_280BE6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE6EF0);
  }

  return result;
}

unint64_t sub_217363830()
{
  result = qword_27CB25E50;
  if (!qword_27CB25E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E50);
  }

  return result;
}

unint64_t sub_217363888()
{
  result = qword_27CB25E58;
  if (!qword_27CB25E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25E58);
  }

  return result;
}

unint64_t sub_2173638E0()
{
  result = qword_280BE6FF0;
  if (!qword_280BE6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE6FF0);
  }

  return result;
}

unint64_t sub_217363938()
{
  result = qword_280BE6FF8;
  if (!qword_280BE6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE6FF8);
  }

  return result;
}

double OUTLINED_FUNCTION_14_17()
{
  *(v0 + 2896) = 0;
  result = 0.0;
  *(v0 + 2880) = 0u;
  *(v0 + 2864) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_15()
{
  v1 = *(v0[5] + 8);
  result = v0[7];
  v3 = v0[8];
  return result;
}

void OUTLINED_FUNCTION_34_9(int a1@<W8>)
{
  v1[6] = a1;
  v1[8] = a1;
  v1[10] = a1;
  v1[12] = a1;
}

uint64_t OUTLINED_FUNCTION_41_10()
{

  return sub_217752E58();
}

uint64_t OUTLINED_FUNCTION_53_8()
{

  return sub_2171F0738(v0 + 3120, v1, v2);
}

void OUTLINED_FUNCTION_56_6(_BYTE *a1@<X8>)
{

  sub_217230490(a1);
}

double OUTLINED_FUNCTION_67_7()
{
  result = 0.0;
  v0[96] = 0u;
  v0[97] = 0u;
  v0[98] = 0u;
  v0[99] = 0u;
  v0[100] = 0u;
  v0[101] = 0u;
  v0[102] = 0u;
  v0[103] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_70_7()
{
  result = v0[6];
  v2 = *(v0[5] + 8);
  v3 = v0[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_81_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (*(v3 + 96) + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

void OUTLINED_FUNCTION_82_5()
{
  v2 = *(v0 + 16) + 1;

  sub_2172B1E18();
}

uint64_t OUTLINED_FUNCTION_85_5()
{
  result = v1;
  v3 = *(v0 + 64);
  return result;
}

double OUTLINED_FUNCTION_93_6()
{
  result = 0.0;
  v0[61] = 0u;
  v0[62] = 0u;
  v0[63] = 0u;
  v0[64] = 0u;
  v0[65] = 0u;
  v0[66] = 0u;
  v0[67] = 0u;
  v0[68] = 0u;
  return result;
}

void *OUTLINED_FUNCTION_98_8()
{
  v1 = v0[6];
  result = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = *(v1 + 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_103_5()
{

  return sub_217753058();
}

void OUTLINED_FUNCTION_111_6(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = 0;
  *(v3 + 8) = v1;
}

void OUTLINED_FUNCTION_118_5()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_132_4()
{

  return sub_217753058();
}

void OUTLINED_FUNCTION_133_5()
{

  sub_2172B1E18();
}

void *OUTLINED_FUNCTION_136_4(void *a1)
{

  return memcpy(a1, v1, 0x1B8uLL);
}

uint64_t OUTLINED_FUNCTION_156_4()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_157_4()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_159_4()
{

  return sub_2172E3D54();
}

uint64_t OUTLINED_FUNCTION_160_4()
{
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[11];

  return sub_217752E58();
}

uint64_t Station.init(propertyProvider:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 24))(v11, v4, v5);
  v7 = v11[0];
  v6 = v11[1];
  sub_217751DE8();
  sub_217269F50(v11);
  *a2 = v7;
  a2[1] = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  PropertyProvider.eraseToAnyPropertyProvider()(v8, v9, a2 + 2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Station.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return v1;
}

void Station.editorialNotes.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE6800 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v26 = qword_280C02110;

  sub_2176CA430(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2173640AC(uint64_t *a1)
{
  OUTLINED_FUNCTION_34_10(a1);
  if (!v3)
  {
    swift_once();
  }

  return v1(*v2);
}

uint64_t sub_21736412C(uint64_t *a1)
{
  OUTLINED_FUNCTION_34_10(a1);
  if (!v3)
  {
    swift_once();
  }

  return v1(*v2);
}

uint64_t sub_217364200(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v3)
  {
    v6 = v2;
    swift_once();
    v2 = v6;
  }

  v4 = *v1;

  return v2(v4);
}

void sub_217364288(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v34)
  {
    swift_once();
  }

  v35 = *v26;

  sub_2176CABE4(v35, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t Station.name.getter()
{
  if (qword_280BE6778 != -1)
  {
    OUTLINED_FUNCTION_6_19();
  }

  result = sub_2172A3FDC();
  if (!v1)
  {
    return 0;
  }

  return result;
}

void Station.playParameters.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (qword_280BE67F0 != -1)
  {
    swift_once();
  }

  v26 = qword_280C02108;

  sub_2176CAC04(v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_217364458(uint64_t *a1)
{
  OUTLINED_FUNCTION_16_4(a1);
  if (!v3)
  {
    v6 = v2;
    swift_once();
    v2 = v6;
  }

  v4 = *v1;

  return v2(v4);
}

void Station._pivotMetadata.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (qword_280BE6808 != -1)
  {
    swift_once();
  }

  v28 = qword_280C02118;

  sub_2176CAC48(v28, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_21736454C(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
  return sub_2172A3FDC();
}

void Station._friendsWhoListened.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_280BE67D0 != -1)
  {
    swift_once();
  }

  v30 = qword_280C020F0;

  sub_2176CAC10(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

void Station._recommendedEntryTracks.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (qword_27CB23B00 != -1)
  {
    swift_once();
  }

  v30 = qword_27CB8A238;

  sub_2176CAC2C(v30, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t static Station.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 104);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v7(a2 + 2, v8, v5, v6) & 1;
}

uint64_t Station.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v4 = *(v3 + 112);
  v5 = OUTLINED_FUNCTION_25_15();
  return v6(v5);
}

uint64_t Station.hashValue.getter()
{
  sub_2177531E8();
  v1 = *v0;
  v2 = v0[1];
  sub_217751FF8();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 112))(v6, v3, v4);
  return sub_217753238();
}

uint64_t sub_217364804@<X0>(uint64_t *a1@<X8>)
{
  result = Station.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Station.subscript.getter(uint64_t *a1)
{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 224);
  sub_2173692A0();
  v4 = *(v1 + 232);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  sub_2173692A0();
  v4 = *(v1 + 272);
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_62_0(a1);
  v3 = *(v2 + 264);
  v4 = *(v1 + 272);
  type metadata accessor for MusicItemCollection();
  sub_2173692A0();
  v9 = *(v1 + 280);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_167_0();
  return MusicItem<>.value<A>(for:)(v5, v6, v7);
}

uint64_t sub_2173649DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26140, &qword_2177619C8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6B726F77747261, 0xE700000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C020A0 = result;
  return result;
}

uint64_t sub_217364A50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26180, &qword_217761A08);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x52746E65746E6F63, 0xED0000676E697461, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02128 = result;
  return result;
}

uint64_t sub_217364AD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26178, &qword_217761A00);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD000000000000010, 0x80000002177ABFE0, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02090 = result;
  return result;
}

uint64_t sub_217364B48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26170, &qword_2177619F8);
  OUTLINED_FUNCTION_31_11();
  result = sub_217729830(0xD000000000000010, 0x80000002177AB890, 0x6B726F77747241, 0xE700000000000000, &unk_282959AF8);
  qword_280C020F8 = result;
  return result;
}

uint64_t sub_217364BC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26168, &qword_2177619F0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  v0 = OUTLINED_FUNCTION_212();
  result = OUTLINED_FUNCTION_26(v0, 0xEE007365746F4E6CLL, v1, v2, v3, v4, v5, v6, v8, v9, v10);
  qword_280C02110 = result;
  return result;
}

uint64_t sub_217364C34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26160, &qword_2177619E8);
  OUTLINED_FUNCTION_31_11();
  v0 = OUTLINED_FUNCTION_212();
  result = sub_217729830(v0, 0xEE006F656469566CLL, 0xD000000000000035, 0x80000002177ABB30, v1);
  qword_280C020D0 = result;
  return result;
}

uint64_t sub_217364CAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26158, &qword_2177619E0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x4E65646F73697065, 0xED00007265626D75, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02120 = result;
  return result;
}

uint64_t sub_217364D2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26150, &qword_2177619D8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6576694C7369, 0xE600000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C020A8 = result;
  return result;
}

uint64_t sub_217364D9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26140, &qword_2177619C8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x73616D2E72656275, 0xEE00747241726574, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02100 = result;
  return result;
}

uint64_t sub_217364E1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26130, &qword_2177619B8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1701667182, 0xE400000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C020B8 = result;
  return result;
}

uint64_t sub_217364E88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26138, &qword_2177619C0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6172615079616C70, 0xEA0000000000736DLL, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02108 = result;
  return result;
}

uint64_t sub_217364F00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26130, &qword_2177619B8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD000000000000013, 0x80000002177AC0A0, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C020E8 = result;
  return result;
}

uint64_t sub_217364F78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26128, &qword_2177619B0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(7107189, 0xE300000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C020C0 = result;
  return result;
}

uint64_t sub_217364FE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26188, &unk_217761A10);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x656D6954726961, 0xE700000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C02098 = result;
  return result;
}

uint64_t sub_217365058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26148, &qword_2177619D0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(1684957547, 0xE400000000000000, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C020B0 = result;
  return result;
}

uint64_t sub_2173650C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26118, &qword_2177619A0);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0x6E6F73616572, 0xE600000000000000);
  qword_280C020E0 = result;
  return result;
}

uint64_t sub_217365118()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26130, &qword_2177619B8);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0x6C646E7542707061, 0xEB00000000444965, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C020C8 = result;
  return result;
}

uint64_t sub_217365194()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26128, &qword_2177619B0);
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_149();
  result = OUTLINED_FUNCTION_26(0xD000000000000015, 0x80000002177AC0C0, v0, v1, v2, v3, v4, v5, v7, v8, v9);
  qword_280C020D8 = result;
  return result;
}

uint64_t sub_21736520C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26110, &qword_217761998);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0xD000000000000014, 0x80000002177AA520);
  qword_280C020F0 = result;
  return result;
}

uint64_t sub_217365268()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26120, &qword_2177619A8);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0x746F766970, 0xE500000000000000);
  qword_280C02118 = result;
  return result;
}

uint64_t sub_2173652BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26108, &qword_217761990);
  OUTLINED_FUNCTION_31_11();
  result = sub_2172E3DC4(0xD000000000000018, 0x80000002177AA540);
  qword_27CB8A238 = result;
  return result;
}

uint64_t static Station.catalogFilterID(for:)@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_2177529D8();
  v2 = sub_217751F08();

  if (v2)
  {
    *a1 = 25705;
    a1[1] = 0xE200000000000000;
  }

  else
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000021, 0x80000002177AB8F0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_21736545C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2173654F0()
{
  if (qword_27CB23B08 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t Station.init(from:)(uint64_t *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EE168();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Station.description.getter()
{
  sub_217752AA8();

  OUTLINED_FUNCTION_33_11();
  v6 = v1;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  MEMORY[0x21CEA23B0](0x3A656D616E202C22, 0xEA00000000002220);
  if (qword_280BE6778 != -1)
  {
    OUTLINED_FUNCTION_6_19();
  }

  v2 = sub_2172A3FDC();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v2, v4);

  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return v6;
}

uint64_t Station.debugDescription.getter()
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_111();
  v5 = sub_2177516D8();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_33_11();
  v86 = v14;
  v87 = 0xE800000000000000;
  v78 = 0x22203A646920200ALL;
  v79 = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  OUTLINED_FUNCTION_36_10();
  OUTLINED_FUNCTION_22_15();

  v78 = 0x656D616E20200A2CLL;
  v79 = 0xEB0000000022203ALL;
  if (qword_280BE6778 != -1)
  {
    OUTLINED_FUNCTION_6_19();
  }

  v15 = sub_2172A3FDC();
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  MEMORY[0x21CEA23B0](v15, v17);

  OUTLINED_FUNCTION_36_10();
  OUTLINED_FUNCTION_22_15();

  if (qword_280BE6818 != -1)
  {
    swift_once();
  }

  sub_2176CA43C(qword_280C02128, v18, v19, v20, v21, v22, v23, v24, v66, v67, v68, v69, v70, v71, v72[0], v72[1], v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76, v77, v78, v79, v80, *(&v80 + 1));
  v25 = v78;
  if (v78 != 2)
  {
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000014, 0x80000002177AC060);
    LOBYTE(v72[0]) = v25 & 1;
    sub_217752C78();
    OUTLINED_FUNCTION_22_15();
  }

  if (qword_280BE6750 != -1)
  {
    swift_once();
  }

  sub_2172A40DC();
  if ((v26 & 1) == 0)
  {
    v78 = 0;
    v79 = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6172756420200A2CLL, 0xEE00203A6E6F6974);
    sub_2177525E8();
    OUTLINED_FUNCTION_22_15();
  }

  if (qword_280BE6800 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  sub_2176CA430(qword_280C02110, v26, v27, v28, v29, v30, v31, v32, v66, v67, v68, v69, v70, v71, v72[0], v72[1], v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76, v77, v78, v79);
  v34 = v78;
  v33 = v79;
  v83 = v80;
  v84 = v81;
  v85 = v82;
  if (v79 != 1)
  {
    OUTLINED_FUNCTION_26_14();
    sub_217752AA8();

    v76 = 0xD000000000000014;
    v77 = 0x80000002177AB940;
    v72[0] = v34;
    v72[1] = v33;
    v73 = v83;
    v74 = v84;
    v75 = v85;
    v35 = EditorialNotes.debugDescription.getter();
    v37 = v36;
    sub_2171F0738(&v78, &qword_27CB24B70, &unk_217759460);
    v70 = v35;
    v71 = v37;
    v68 = 10;
    v69 = 0xE100000000000000;
    v66 = 2105354;
    v67 = 0xE300000000000000;
    sub_21733A5C8();
    v38 = sub_217752998();
    v40 = v39;

    MEMORY[0x21CEA23B0](v38, v40);

    OUTLINED_FUNCTION_27_16();
  }

  if (qword_280BE6810 != -1)
  {
    swift_once();
  }

  v41 = sub_2172A4038();
  if ((v42 & 1) == 0)
  {
    v49 = v41;
    OUTLINED_FUNCTION_26_14();
    sub_217752AA8();

    v72[0] = 0xD000000000000013;
    v72[1] = 0x80000002177AC040;
    v76 = v49;
    v50 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v50);

    OUTLINED_FUNCTION_27_16();
  }

  strcpy(v72, ",\n  isLive: ");
  BYTE5(v72[1]) = 0;
  HIWORD(v72[1]) = -5120;
  if (qword_280BE6768 != -1)
  {
    OUTLINED_FUNCTION_17_12();
  }

  sub_2172A402C(qword_280C020A8, v42, v43, v44, v45, v46, v47, v48, v66, v67, v68, v69, v70, v71, SWORD2(v71), SBYTE6(v71), SHIBYTE(v71), v72[0], v72[1], v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1));
  if (v51 == 2 || (v51 & 1) == 0)
  {
    v52 = 0xE500000000000000;
    v53 = 0x65736C6166;
  }

  else
  {
    v52 = 0xE400000000000000;
    v53 = 1702195828;
  }

  MEMORY[0x21CEA23B0](v53, v52);

  OUTLINED_FUNCTION_27_16();

  if (qword_280BE67C8 != -1)
  {
    swift_once();
  }

  v54 = sub_2172A3FDC();
  if (v55)
  {
    v62 = v54;
    v63 = v55;
    OUTLINED_FUNCTION_26_14();
    sub_217752AA8();

    v72[0] = 0xD00000000000001ALL;
    v72[1] = 0x80000002177AC020;
    MEMORY[0x21CEA23B0](v62, v63);

    OUTLINED_FUNCTION_36_10();
    OUTLINED_FUNCTION_27_16();
  }

  if (qword_280BE6780 != -1)
  {
    swift_once();
  }

  sub_2176CA410(qword_280C020C0, v55, v56, v57, v58, v59, v60, v61, v66, v67, v68, v69, v70, v71, v72[0], v72[1], v73, *(&v73 + 1), v74, *(&v74 + 1), v75, *(&v75 + 1), v76, v77, v78, v79, v80, *(&v80 + 1), v81, *(&v81 + 1));
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_2171F0738(v1, &unk_27CB277C0, &qword_217758DC0);
  }

  else
  {
    (*(v8 + 32))(v13, v1, v5);
    strcpy(v72, ",\n  url: ");
    BYTE3(v72[1]) = 0;
    HIDWORD(v72[1]) = -369098752;
    sub_2173699E0(&qword_27CB254C8, MEMORY[0x277CC9260]);
    v64 = sub_217752FC8();
    MEMORY[0x21CEA23B0](v64);

    OUTLINED_FUNCTION_36_10();
    MEMORY[0x21CEA23B0](v72[0], v72[1]);

    (*(v8 + 8))(v13, v5);
  }

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v86;
}

uint64_t Station._AirTime.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2177517D8();
  v4 = OUTLINED_FUNCTION_43(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Station._AirTime.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Station._AirTime() + 20);
  v4 = sub_2177517D8();
  v5 = OUTLINED_FUNCTION_43(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t static Station._AirTime.== infix(_:_:)()
{
  if ((sub_2177517B8() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for Station._AirTime() + 20);

  return sub_2177517B8();
}

uint64_t sub_217366018(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2173660E8(char a1)
{
  if (a1)
  {
    return 0x65746144646E65;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_21736612C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217366018(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217366154(uint64_t a1)
{
  v2 = sub_217369340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217366190(uint64_t a1)
{
  v2 = sub_217369340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Station._AirTime.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25E68, &qword_2177607A0);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_111();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217369340();
  sub_2177532F8();
  sub_2177517D8();
  OUTLINED_FUNCTION_3_29();
  sub_2173699E0(v12, v13);
  OUTLINED_FUNCTION_30_13();
  if (!v1)
  {
    v14 = *(type metadata accessor for Station._AirTime() + 20);
    OUTLINED_FUNCTION_30_13();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t Station._AirTime.hash(into:)()
{
  sub_2177517D8();
  OUTLINED_FUNCTION_3_29();
  sub_2173699E0(v1, v2);
  OUTLINED_FUNCTION_25_15();
  sub_217751EB8();
  v3 = v0 + *(type metadata accessor for Station._AirTime() + 20);
  OUTLINED_FUNCTION_25_15();
  return sub_217751EB8();
}

uint64_t Station._AirTime.hashValue.getter()
{
  sub_2177531E8();
  sub_2177517D8();
  OUTLINED_FUNCTION_3_29();
  sub_2173699E0(v1, v2);
  sub_217751EB8();
  v3 = v0 + *(type metadata accessor for Station._AirTime() + 20);
  sub_217751EB8();
  return sub_217753238();
}

uint64_t Station._AirTime.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v46 = sub_2177517D8();
  v4 = OUTLINED_FUNCTION_0_0(v46);
  v42 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v43 = &v37 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25E80, &qword_2177607A8);
  v44 = OUTLINED_FUNCTION_0_0(v14);
  v45 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18, v19);
  v20 = type metadata accessor for Station._AirTime();
  v21 = OUTLINED_FUNCTION_43(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217369340();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v20;
  v39 = v10;
  v40 = v26;
  v28 = v42;
  v48 = 0;
  OUTLINED_FUNCTION_3_29();
  sub_2173699E0(v29, v30);
  v31 = v43;
  sub_217752EA8();
  v43 = *(v28 + 32);
  (v43)(v40, v31, v46);
  v47 = 1;
  v32 = v39;
  sub_217752EA8();
  v33 = OUTLINED_FUNCTION_20_17();
  v34(v33);
  v35 = v40;
  (v43)(&v40[*(v38 + 20)], v32, v46);
  sub_217369394(v35, v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2173693F8(v35);
}

uint64_t sub_2173667E0(uint64_t a1, uint64_t a2)
{
  sub_2177531E8();
  sub_2177517D8();
  sub_2173699E0(&qword_27CB25C68, MEMORY[0x277CC9578]);
  sub_217751EB8();
  v4 = v2 + *(a2 + 20);
  sub_217751EB8();
  return sub_217753238();
}

BOOL static Station._Kind.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1)
  {
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
    case 5:
      return v3 == 5;
    case 6:
      return v3 == 6;
    case 7:
      return v3 == 7;
    case 8:
      return v3 == 8;
    case 9:
      return v3 == 9;
    case 0xA:
      return v3 == 10;
    case 0xB:
      return v3 == 11;
    case 0xC:
      return v3 == 12;
    case 0xD:
      return v3 == 13;
    default:
      if ((v3 - 3) < 0xB)
      {
        return 0;
      }

      if (v2 != 2)
      {
        return v3 != 2 && (sub_217706B60(v2 & 1) & 1) != 0;
      }

      return v3 == 2;
  }
}

uint64_t sub_2173669A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6565536D75626C61 && a2 == 0xEB00000000646564;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E4F747369747261 && a2 == 0xEA0000000000796CLL;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6553747369747261 && a2 == 0xEC00000064656465;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x80000002177AC080 == a2;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7473696C79616C70 && a2 == 0xEE00646564656553;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x64656553676E6F73 && a2 == 0xEA00000000006465;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6E696D6165727473 && a2 == 0xE900000000000067;
                      if (v15 || (sub_217753058() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 1919251317 && a2 == 0xE400000000000000)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_217753058();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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
}

unint64_t sub_217366D60(char a1)
{
  result = 0x6565536D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x6E4F747369747261;
      break;
    case 2:
      result = 0x6553747369747261;
      break;
    case 3:
      result = 0x6169726F74696465;
      break;
    case 4:
      result = 0x74616D726F66;
      break;
    case 5:
      result = 0x65726E6567;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x7473696C79616C70;
      break;
    case 8:
      result = 0x7972657571;
      break;
    case 9:
      result = 0x64656553676E6F73;
      break;
    case 10:
      result = 0x6E696D6165727473;
      break;
    case 11:
      result = 1919251317;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217366EC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}