__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23807C664(uint64_t *a1, int a2)
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

uint64_t sub_23807C6AC(uint64_t result, int a2, int a3)
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

unint64_t sub_23807C700()
{
  result = qword_27DEEAC68;
  if (!qword_27DEEAC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAC60, &qword_2381585A0);
    sub_23807C7B8();
    sub_2380711D4(&qword_27DEEAC88, &unk_27DEEAC90, &qword_238158680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAC68);
  }

  return result;
}

unint64_t sub_23807C7B8()
{
  result = qword_27DEEAC70;
  if (!qword_27DEEAC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAC78, &qword_238158678);
    sub_23807C530();
    sub_23807C874(&qword_27DEEAC80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAC70);
  }

  return result;
}

uint64_t sub_23807C874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23807C8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_23807C928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DDUIString(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x96)
  {
    goto LABEL_17;
  }

  if (a2 + 106 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 106) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 106;
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

      return (*a1 | (v4 << 8)) - 106;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 106;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x6B;
  v8 = v6 - 107;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DDUIString(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 106 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 106) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x96)
  {
    v4 = 0;
  }

  if (a2 > 0x95)
  {
    v5 = ((a2 - 150) >> 8) + 1;
    *result = a2 + 106;
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
    *result = a2 + 106;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23807CB28(char a1)
{
  type metadata accessor for DeviceBrowserViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_23807CC40(a1);
  v4 = sub_238154C8C();

  v5 = sub_238154C8C();

  v6 = sub_238154C8C();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_238154CCC();
  return v8;
}

uint64_t sub_23807CC40(char a1)
{
  result = 0x4C45434E4143;
  switch(a1)
  {
    case 1:
      result = 1162760004;
      break;
    case 2:
      result = 0x45554E49544E4F43;
      break;
    case 3:
    case 33:
    case 39:
    case 45:
    case 57:
    case 77:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 21:
    case 25:
    case 59:
    case 78:
    case 81:
    case 91:
    case 97:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
    case 15:
    case 18:
    case 22:
    case 66:
    case 73:
    case 86:
      result = 0xD000000000000018;
      break;
    case 8:
    case 16:
    case 26:
    case 30:
    case 65:
    case 95:
      result = 0xD00000000000001DLL;
      break;
    case 9:
    case 11:
    case 17:
    case 64:
      result = 0xD000000000000016;
      break;
    case 10:
    case 35:
    case 55:
    case 58:
      result = 0xD000000000000013;
      break;
    case 12:
    case 19:
    case 23:
    case 31:
      result = 0xD00000000000001BLL;
      break;
    case 13:
    case 46:
    case 47:
    case 56:
    case 93:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 20:
    case 24:
    case 27:
    case 60:
      result = 0xD000000000000020;
      break;
    case 28:
    case 72:
    case 74:
      result = 0xD00000000000001ELL;
      break;
    case 29:
    case 69:
    case 102:
      result = 0xD00000000000001ALL;
      break;
    case 32:
    case 67:
    case 68:
    case 80:
    case 94:
    case 103:
    case 105:
      result = 0xD00000000000001CLL;
      break;
    case 34:
      result = 0xD000000000000015;
      break;
    case 36:
      result = 0x43495645445F594DLL;
      break;
    case 37:
      result = 0x454C504F4550;
      break;
    case 38:
      result = 0xD000000000000015;
      break;
    case 40:
      result = 0x535F444552494150;
      break;
    case 41:
      result = 0x415F524145505041;
      break;
    case 42:
      result = 0x4E49524145505041;
      break;
    case 43:
      result = 0x5F504F5244524941;
      break;
    case 44:
      result = 0x454D414E5F5341;
      break;
    case 48:
      v3 = 1414086999;
      goto LABEL_21;
    case 49:
      v3 = 1145980243;
LABEL_21:
      result = v3 | 0x474E4900000000;
      break;
    case 50:
      result = 0x4E49564945434552;
      break;
    case 51:
      result = 1414415699;
      break;
    case 52:
      result = 0x44454C494146;
      break;
    case 53:
      result = 0x44454E494C434544;
      break;
    case 54:
      result = 0x41505F5453455547;
      break;
    case 61:
      result = 0xD000000000000022;
      break;
    case 62:
    case 63:
      result = 0xD000000000000023;
      break;
    case 70:
      result = 0xD000000000000015;
      break;
    case 71:
      result = 0xD000000000000015;
      break;
    case 75:
    case 83:
      result = 0xD000000000000012;
      break;
    case 76:
      result = 0xD000000000000021;
      break;
    case 79:
    case 96:
      result = 0xD000000000000017;
      break;
    case 82:
      result = 0x4941575F504F4F42;
      break;
    case 84:
      result = 0x4148535F504F4F42;
      break;
    case 85:
      result = 0xD000000000000015;
      break;
    case 87:
      result = 0xD000000000000011;
      break;
    case 88:
      result = 0x545045434341;
      break;
    case 89:
      result = 0x454E494C434544;
      break;
    case 90:
      result = 0x574F4E5F544F4ELL;
      break;
    case 92:
    case 100:
    case 101:
    case 104:
      result = 0xD00000000000001FLL;
      break;
    case 98:
      result = 0xD000000000000024;
      break;
    case 99:
      result = 0xD000000000000025;
      break;
    case 106:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23807D634(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_23807CC40(*a1);
  v5 = v4;
  if (v3 == sub_23807CC40(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2381555CC();
  }

  return v8 & 1;
}

uint64_t sub_23807D6BC()
{
  v1 = *v0;
  sub_23815568C();
  sub_23807CC40(v1);
  sub_238154C5C();

  return sub_2381556BC();
}

uint64_t sub_23807D720()
{
  sub_23807CC40(*v0);
  sub_238154C5C();
}

uint64_t sub_23807D774()
{
  v1 = *v0;
  sub_23815568C();
  sub_23807CC40(v1);
  sub_238154C5C();

  return sub_2381556BC();
}

uint64_t sub_23807D7D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23807D888();
  *a2 = result;
  return result;
}

uint64_t sub_23807D804@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23807CC40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23807D834()
{
  result = qword_27DEEACA0;
  if (!qword_27DEEACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEACA0);
  }

  return result;
}

uint64_t sub_23807D888()
{
  v0 = sub_2381555DC();

  if (v0 >= 0x6B)
  {
    return 107;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_23807D8DC()
{
  MEMORY[0x2383EA980](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23807D944@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ViewHolder();
  result = sub_2381529DC();
  *a1 = result;
  return result;
}

uint64_t sub_23807D984()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEACA8);
  v1 = __swift_project_value_buffer(v0, qword_27DEEACA8);
  if (qword_27DEEA038 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DEF3198);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void static CNBoopSessionViewOld.initFromNFC(with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_23815313C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  memset(v17, 0, 32);
  v17[2] = xmmword_2381587F0;
  v18 = 0;
  v12 = type metadata accessor for CNBoopSessionViewModel();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_2380C981C(v17);
  if (!v3)
  {
    v19 = 0;
    sub_2380859C0();

    *a3 = sub_2381539BC();
    a3[1] = v15;
    a3[3] = a1;
    a3[4] = a2;
    sub_2381531EC();
    *v11 = 0x654D6F54706F6F42;
    v11[1] = 0xEA00000000007465;
    v11[2] = 1;
    (*(v8 + 104))(v11, *MEMORY[0x277D54990], v7);

    v16 = sub_23815314C();

    a3[2] = v16;
  }
}

uint64_t sub_23807DC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF18, &qword_238158FE8);
  v3 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v151 = &v139 - v4;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF20, &qword_238158FF0);
  v5 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v140 = &v139 - v6;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF28, &qword_238158FF8);
  v7 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v141 = &v139 - v8;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF30, &qword_238159000);
  v9 = *(*(v162 - 8) + 64);
  MEMORY[0x28223BE20](v162);
  v152 = (&v139 - v10);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF38, &qword_238159008);
  v146 = *(v147 - 8);
  v11 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v145 = &v139 - v12;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF40, &qword_238159010);
  v13 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v15 = &v139 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF48, &qword_238159018);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v139 - v18;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF50, &qword_238159020);
  v20 = *(*(v157 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v157);
  v23 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v139 - v24;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF58, &qword_238159028);
  v26 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v161 = &v139 - v27;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF60, &qword_238159030);
  v28 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v156 = &v139 - v29;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF68, &qword_238159038);
  v30 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v143 = &v139 - v31;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF70, &qword_238159040);
  v32 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v144 = &v139 - v33;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF78, &qword_238159048);
  v34 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v158 = &v139 - v35;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF80, &qword_238159050);
  v36 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v38 = &v139 - v37;
  v39 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v40 = v169;
  if (LOBYTE(v171[0]) <= 2u)
  {
    v150 = v39;
    v44 = v145;
    v45 = v146;
    v46 = v147;
    v149 = v23;
    v141 = v25;
    v151 = v16;
    v152 = v19;
    if (LOBYTE(v171[0]))
    {
      if (LOBYTE(v171[0]) == 1)
      {
        sub_238085BD0(v168, *(&v168 + 1), v169, *(&v169 + 1), v170, *(&v170 + 1), 1u);
        *&v168 = sub_23807CB28(81);
        *(&v168 + 1) = v47;
        sub_2380704A0();
        v48 = sub_23815438C();
        v50 = v49;
        v52 = v51;
        v53 = *(v150 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor);

        v54 = sub_23815431C();
        v56 = v55;
        v58 = v57;
        sub_238070490(v48, v50, v52 & 1);

        sub_23815423C();
        sub_2381541FC();
        sub_23815425C();

        v59 = sub_23815435C();
        v61 = v60;
        v63 = v62;
        v65 = v64;

        sub_238070490(v54, v56, v58 & 1);

        v66 = sub_2381540FC();
        v167 = v63 & 1;
        v165 = 0;
        *&v168 = v59;
        *(&v168 + 1) = v61;
        LOBYTE(v169) = v63 & 1;
        *(&v169 + 1) = v164[0];
        DWORD1(v169) = *(v164 + 3);
        *(&v169 + 1) = v65;
        LOBYTE(v170) = v66;
        *(&v170 + 1) = *v166;
        DWORD1(v170) = *&v166[3];
        *(&v170 + 1) = 0x4057800000000000;
        memset(v171, 0, 25);
        v67 = v152;
        v152[2] = v170;
        v67[3] = 0uLL;
        *(v67 + 57) = *(v171 + 9);
        v68 = v169;
        *v67 = v168;
        v67[1] = v68;
        swift_storeEnumTagMultiPayload();
        sub_2380712E4(&v168, v164, &qword_27DEEAFC8, &qword_238159060);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFC8, &qword_238159060);
        sub_238088244();
        sub_2380882C8();
        v69 = v149;
        sub_238153ECC();
        sub_2380712E4(v69, v156, &qword_27DEEAF50, &qword_238159020);
        swift_storeEnumTagMultiPayload();
        sub_23808812C();
        sub_2380881B8();
        v70 = v158;
        sub_238153ECC();
        sub_238071284(v69, &qword_27DEEAF50, &qword_238159020);
        sub_2380712E4(v70, v161, &qword_27DEEAF78, &qword_238159048);
        swift_storeEnumTagMultiPayload();
        sub_2380880A0();
        sub_238088654();
        sub_238153ECC();
        sub_238071284(&v168, &qword_27DEEAFC8, &qword_238159060);
        return sub_238071284(v70, &qword_27DEEAF78, &qword_238159048);
      }

      else
      {
        v90 = v15;
        sub_238085BD0(v168, *(&v168 + 1), v169, *(&v169 + 1), v170, *(&v170 + 1), 2u);
        *&v168 = sub_23807CB28(82);
        *(&v168 + 1) = v91;
        sub_2380704A0();
        sub_23815389C();
        sub_2380711D4(&qword_27DEEB008, &qword_27DEEAF38, &qword_238159008);
        sub_238088600();
        sub_2381543BC();
        (*(v45 + 8))(v44, v46);
        v92 = *(v150 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor);
        KeyPath = swift_getKeyPath();
        v94 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB000, &qword_238159078) + 36)];
        *v94 = KeyPath;
        v94[1] = v92;

        v95 = sub_2381545FC();
        v96 = swift_getKeyPath();
        v97 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFF0, &qword_238159070) + 36)];
        *v97 = v96;
        v97[1] = v95;
        sub_23815423C();
        sub_2381541FC();
        v98 = sub_23815425C();

        v99 = swift_getKeyPath();
        v100 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFE0, &qword_238159068) + 36)];
        *v100 = v99;
        v100[1] = v98;
        v101 = sub_2381540FC();
        v102 = &v15[*(v148 + 36)];
        *v102 = v101;
        *(v102 + 1) = 0x4057800000000000;
        *(v102 + 2) = 0;
        *(v102 + 3) = 0;
        *(v102 + 4) = 0;
        v102[40] = 0;
        sub_2380712E4(v15, v152, &qword_27DEEAF40, &qword_238159010);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFC8, &qword_238159060);
        sub_238088244();
        sub_2380882C8();
        v103 = v149;
        sub_238153ECC();
        sub_2380712E4(v103, v156, &qword_27DEEAF50, &qword_238159020);
        swift_storeEnumTagMultiPayload();
        sub_23808812C();
        sub_2380881B8();
        v104 = v158;
        sub_238153ECC();
        sub_238071284(v103, &qword_27DEEAF50, &qword_238159020);
        sub_2380712E4(v104, v161, &qword_27DEEAF78, &qword_238159048);
        swift_storeEnumTagMultiPayload();
        sub_2380880A0();
        sub_238088654();
        sub_238153ECC();
        sub_238071284(v104, &qword_27DEEAF78, &qword_238159048);
        return sub_238071284(v90, &qword_27DEEAF40, &qword_238159010);
      }
    }

    else
    {
      sub_23807A454(v168);
      sub_23807A454(v40);
      swift_getKeyPath();
      swift_getKeyPath();
      v76 = v150;
      sub_238152A8C();

      if (v168)
      {
        *&v168 = sub_23807CB28(82);
        *(&v168 + 1) = v77;
        sub_2380704A0();
        sub_23815389C();
        sub_2380711D4(&qword_27DEEB008, &qword_27DEEAF38, &qword_238159008);
        sub_238088600();
        sub_2381543BC();
        (*(v45 + 8))(v44, v46);
        v78 = *(v76 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor);
        v79 = swift_getKeyPath();
        v80 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB000, &qword_238159078) + 36)];
        *v80 = v79;
        v80[1] = v78;

        v81 = sub_2381545FC();
        v82 = swift_getKeyPath();
        v83 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFF0, &qword_238159070) + 36)];
        *v83 = v82;
        v83[1] = v81;
        sub_23815423C();
        sub_2381541FC();
        v84 = sub_23815425C();

        v85 = swift_getKeyPath();
        v86 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFE0, &qword_238159068) + 36)];
        *v86 = v85;
        v86[1] = v84;
        v87 = sub_2381540FC();
        v88 = &v15[*(v148 + 36)];
        *v88 = v87;
        *(v88 + 1) = 0x4057800000000000;
        *(v88 + 2) = 0;
        *(v88 + 3) = 0;
        *(v88 + 4) = 0;
        v88[40] = 0;
        sub_2380712E4(v15, v152, &qword_27DEEAF40, &qword_238159010);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFC8, &qword_238159060);
        sub_238088244();
        sub_2380882C8();
        v89 = v141;
        sub_238153ECC();
        sub_238071284(v15, &qword_27DEEAF40, &qword_238159010);
      }

      else
      {
        *&v168 = sub_23807CB28(80);
        *(&v168 + 1) = v115;
        sub_2380704A0();
        v116 = sub_23815438C();
        v118 = v117;
        v120 = v119;
        v121 = *(v76 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor);

        v122 = sub_23815431C();
        v124 = v123;
        v126 = v125;
        sub_238070490(v116, v118, v120 & 1);

        sub_23815423C();
        sub_2381541FC();
        sub_23815425C();

        v127 = sub_23815435C();
        v129 = v128;
        v131 = v130;
        v133 = v132;

        sub_238070490(v122, v124, v126 & 1);

        v134 = sub_2381540FC();
        LOBYTE(v168) = v131 & 1;
        LOBYTE(v164[0]) = 0;
        v135 = v152;
        *v152 = v127;
        *(v135 + 8) = v129;
        *(v135 + 16) = v131 & 1;
        *(v135 + 24) = v133;
        *(v135 + 32) = v134;
        *(v135 + 40) = 0x4057800000000000;
        *(v135 + 48) = 0;
        *(v135 + 56) = 0;
        *(v135 + 64) = 0;
        *(v135 + 72) = 0;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAFC8, &qword_238159060);
        sub_238088244();
        sub_2380882C8();
        v89 = v141;
        sub_238153ECC();
      }

      v136 = v161;
      sub_2380712E4(v89, v143, &qword_27DEEAF50, &qword_238159020);
      swift_storeEnumTagMultiPayload();
      sub_238087FE8();
      sub_2380881B8();
      v137 = v144;
      sub_238153ECC();
      sub_2380712E4(v137, v156, &qword_27DEEAF70, &qword_238159040);
      swift_storeEnumTagMultiPayload();
      sub_23808812C();
      v138 = v158;
      sub_238153ECC();
      sub_238071284(v137, &qword_27DEEAF70, &qword_238159040);
      sub_2380712E4(v138, v136, &qword_27DEEAF78, &qword_238159048);
      swift_storeEnumTagMultiPayload();
      sub_2380880A0();
      sub_238088654();
      sub_238153ECC();
      sub_238071284(v138, &qword_27DEEAF78, &qword_238159048);
      return sub_238071284(v89, &qword_27DEEAF50, &qword_238159020);
    }
  }

  else
  {
    if (LOBYTE(v171[0]) > 4u)
    {
      if (LOBYTE(v171[0]) == 5)
      {

        swift_storeEnumTagMultiPayload();
        sub_238087F64();
        v72 = v152;
        sub_238153ECC();
        v73 = &qword_27DEEAF30;
        v74 = &qword_238159000;
        sub_2380712E4(v72, v161, &qword_27DEEAF30, &qword_238159000);
        swift_storeEnumTagMultiPayload();
        sub_2380880A0();
        sub_238088654();
        sub_238153ECC();
        v75 = v72;
      }

      else
      {
        *v38 = sub_238153D1C();
        *(v38 + 1) = 0;
        v38[16] = 1;
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB020, &qword_238159080);
        sub_23807F444(a1, &v38[*(v110 + 44)]);
        v111 = sub_2381540FC();
        v112 = &v38[*(v153 + 36)];
        *v112 = v111;
        *(v112 + 8) = 0u;
        *(v112 + 24) = 0u;
        v112[40] = 1;
        v73 = &qword_27DEEAF80;
        v74 = &qword_238159050;
        sub_2380712E4(v38, v143, &qword_27DEEAF80, &qword_238159050);
        swift_storeEnumTagMultiPayload();
        sub_238087FE8();
        sub_2380881B8();
        v113 = v144;
        sub_238153ECC();
        sub_2380712E4(v113, v156, &qword_27DEEAF70, &qword_238159040);
        swift_storeEnumTagMultiPayload();
        sub_23808812C();
        v114 = v158;
        sub_238153ECC();
        sub_238071284(v113, &qword_27DEEAF70, &qword_238159040);
        sub_2380712E4(v114, v161, &qword_27DEEAF78, &qword_238159048);
        swift_storeEnumTagMultiPayload();
        sub_2380880A0();
        sub_238088654();
        sub_238153ECC();
        sub_238071284(v114, &qword_27DEEAF78, &qword_238159048);
        v75 = v38;
      }

      v108 = v73;
      v109 = v74;
    }

    else
    {
      if (LOBYTE(v171[0]) == 3)
      {
        sub_238085BD0(v168, *(&v168 + 1), v169, *(&v169 + 1), v170, *(&v170 + 1), 3u);
        *v38 = sub_238153D1C();
        *(v38 + 1) = 0;
        v38[16] = 1;
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB020, &qword_238159080);
        sub_23807F72C(&v38[*(v41 + 44)]);
      }

      else
      {
        sub_238085BD0(v168, *(&v168 + 1), v169, *(&v169 + 1), v170, *(&v170 + 1), 4u);
        *v38 = sub_238153D1C();
        *(v38 + 1) = 0;
        v38[16] = 1;
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB020, &qword_238159080);
        sub_23807FA64(a1, &v38[*(v105 + 44)]);
      }

      v42 = sub_2381540FC();
      v43 = &v38[*(v153 + 36)];
      *v43 = v42;
      *(v43 + 1) = 0x4057800000000000;
      *(v43 + 2) = 0;
      *(v43 + 3) = 0;
      *(v43 + 4) = 0;
      v43[40] = 0;
      sub_2380712E4(v38, v140, &qword_27DEEAF80, &qword_238159050);
      swift_storeEnumTagMultiPayload();
      sub_238087FE8();
      v106 = v141;
      sub_238153ECC();
      sub_2380712E4(v106, v151, &qword_27DEEAF28, &qword_238158FF8);
      swift_storeEnumTagMultiPayload();
      sub_238087F64();
      v107 = v152;
      sub_238153ECC();
      sub_238071284(v106, &qword_27DEEAF28, &qword_238158FF8);
      sub_2380712E4(v107, v161, &qword_27DEEAF30, &qword_238159000);
      swift_storeEnumTagMultiPayload();
      sub_2380880A0();
      sub_238088654();
      sub_238153ECC();
      sub_238071284(v107, &qword_27DEEAF30, &qword_238159000);
      v75 = v38;
      v108 = &qword_27DEEAF80;
      v109 = &qword_238159050;
    }

    return sub_238071284(v75, v108, v109);
  }
}

uint64_t sub_23807F444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB028, &qword_2381590B8);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v36 - v8);
  v10 = sub_23815469C();
  v11 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB030, &qword_2381590C0) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEA0, &unk_238158EE8) + 28);
  v13 = *MEMORY[0x277CE1048];
  v14 = sub_2381546BC();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  *v9 = v10;
  v15 = *(a1 + 8);
  v16 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor;
  v17 = *(v15 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor);
  KeyPath = swift_getKeyPath();
  v19 = (v9 + *(v4 + 44));
  *v19 = KeyPath;
  v19[1] = v17;

  v39 = sub_23807CB28(79);
  v40 = v20;
  sub_2380704A0();
  v21 = sub_23815438C();
  v23 = v22;
  LOBYTE(v11) = v24;
  v25 = *(v15 + v16);

  v26 = sub_23815431C();
  v28 = v27;
  LOBYTE(v15) = v29;
  v31 = v30;
  sub_238070490(v21, v23, v11 & 1);

  v32 = v37;
  sub_2380712E4(v9, v37, &qword_27DEEB028, &qword_2381590B8);
  v33 = v38;
  sub_2380712E4(v32, v38, &qword_27DEEB028, &qword_2381590B8);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB038, &qword_2381590C8) + 48);
  *v34 = v26;
  *(v34 + 8) = v28;
  *(v34 + 16) = v15 & 1;
  *(v34 + 24) = v31;
  sub_238070430(v26, v28, v15 & 1);

  sub_238071284(v9, &qword_27DEEB028, &qword_2381590B8);
  sub_238070490(v26, v28, v15 & 1);

  return sub_238071284(v32, &qword_27DEEB028, &qword_2381590B8);
}

uint64_t sub_23807F72C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB028, &qword_2381590B8);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = (&v36 - v6);
  v8 = sub_23815467C();
  v9 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB030, &qword_2381590C0) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEA0, &unk_238158EE8) + 28);
  v11 = *MEMORY[0x277CE1058];
  v12 = sub_2381546BC();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *v7 = v8;
  v13 = sub_2381545AC();
  KeyPath = swift_getKeyPath();
  v15 = (v7 + *(v2 + 44));
  *v15 = KeyPath;
  v15[1] = v13;
  v38 = sub_23807CB28(83);
  v39 = v16;
  sub_2380704A0();
  v17 = sub_23815438C();
  v19 = v18;
  v21 = v20;
  sub_2381545AC();
  v22 = sub_23815431C();
  v24 = v23;
  LOBYTE(v10) = v25;

  sub_238070490(v17, v19, v21 & 1);

  sub_23815423C();
  sub_2381541FC();
  sub_23815425C();

  v26 = sub_23815435C();
  v28 = v27;
  LOBYTE(v9) = v29;
  v31 = v30;

  sub_238070490(v22, v24, v10 & 1);

  v32 = v36;
  sub_2380712E4(v7, v36, &qword_27DEEB028, &qword_2381590B8);
  v33 = v37;
  sub_2380712E4(v32, v37, &qword_27DEEB028, &qword_2381590B8);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB038, &qword_2381590C8) + 48);
  *v34 = v26;
  *(v34 + 8) = v28;
  *(v34 + 16) = v9 & 1;
  *(v34 + 24) = v31;
  sub_238070430(v26, v28, v9 & 1);

  sub_238071284(v7, &qword_27DEEB028, &qword_2381590B8);
  sub_238070490(v26, v28, v9 & 1);

  return sub_238071284(v32, &qword_27DEEB028, &qword_2381590B8);
}

uint64_t sub_23807FA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB028, &qword_2381590B8);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v40 - v8);
  v10 = sub_23815467C();
  v11 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB030, &qword_2381590C0) + 36));
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEA0, &unk_238158EE8) + 28);
  v13 = *MEMORY[0x277CE1058];
  v14 = sub_2381546BC();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  *v9 = v10;
  v15 = *(a1 + 8);
  v16 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor;
  v17 = *(v15 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor);
  KeyPath = swift_getKeyPath();
  v19 = (v9 + *(v4 + 44));
  *v19 = KeyPath;
  v19[1] = v17;

  v42 = sub_23807CB28(84);
  v43 = v20;
  sub_2380704A0();
  v21 = sub_23815438C();
  v23 = v22;
  LOBYTE(v13) = v24;
  v25 = *(v15 + v16);

  v26 = sub_23815431C();
  v28 = v27;
  LOBYTE(v15) = v29;
  sub_238070490(v21, v23, v13 & 1);

  sub_23815423C();
  sub_2381541FC();
  sub_23815425C();

  v30 = sub_23815435C();
  v32 = v31;
  LOBYTE(v11) = v33;
  v35 = v34;

  sub_238070490(v26, v28, v15 & 1);

  v36 = v40;
  sub_2380712E4(v9, v40, &qword_27DEEB028, &qword_2381590B8);
  v37 = v41;
  sub_2380712E4(v36, v41, &qword_27DEEB028, &qword_2381590B8);
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB038, &qword_2381590C8) + 48);
  *v38 = v30;
  *(v38 + 8) = v32;
  *(v38 + 16) = v11 & 1;
  *(v38 + 24) = v35;
  sub_238070430(v30, v32, v11 & 1);

  sub_238071284(v9, &qword_27DEEB028, &qword_2381590B8);
  sub_238070490(v30, v32, v11 & 1);

  return sub_238071284(v36, &qword_27DEEB028, &qword_2381590B8);
}

uint64_t sub_23807FDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  *&v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD70, &qword_238158D48);
  v3 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v5 = v99 - v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD78, &qword_238158D50);
  v6 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v8 = v99 - v7;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD80, &qword_238158D58);
  v9 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v124 = v99 - v10;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD88, &qword_238158D60);
  v11 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v117 = v99 - v12;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD90, &qword_238158D68);
  v13 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v109 = v99 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD98, &qword_238158D70);
  v15 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v110 = v99 - v16;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADA0, &qword_238158D78);
  v17 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v121 = v99 - v18;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADA8, &unk_238158D80);
  v19 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v111 = v99 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA10, &qword_238158270);
  v114 = *(v21 - 1);
  v22 = v114[8];
  MEMORY[0x28223BE20](v21);
  v24 = v99 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADB0, &qword_238158D90);
  v119 = *(v25 - 8);
  v120 = v25;
  v26 = *(v119 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v99 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v113 = v99 - v34;
  MEMORY[0x28223BE20](v33);
  v126 = v99 - v35;
  v36 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v37 = v127;
  v38 = v128;
  v39 = v131;
  if (v132 > 2u)
  {
    if (v132 - 3 < 2)
    {
      v55 = swift_allocObject();
      v56 = *(a1 + 16);
      *(v55 + 16) = *a1;
      *(v55 + 32) = v56;
      *(v55 + 48) = *(a1 + 32);
      *(v55 + 56) = v37;
      *(v55 + 64) = v38;
      sub_238086794(a1, &v127);
      sub_23815474C();
      LOBYTE(v127) = 2;
      v128 = xmmword_238158800;
      v129 = 0x403E000000000000;
      v57 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
      v58 = sub_238086A48();
      v49 = v126;
      sub_2381543EC();
      (v114[1])(v24, v21);
      v50 = v119;
      v52 = v120;
      (*(v119 + 16))(v5, v49, v120);
      swift_storeEnumTagMultiPayload();
      v127 = v21;
      *&v128 = &type metadata for BoopButtonStyle;
      *(&v128 + 1) = v57;
      v129 = v58;
      swift_getOpaqueTypeConformance2();
      sub_238153ECC();
      sub_2380712E4(v8, v117, &qword_27DEEAD78, &qword_238158D50);
      swift_storeEnumTagMultiPayload();
      sub_238086890();
      sub_238086940();
      v54 = v121;
      sub_238153ECC();
      sub_238071284(v8, &qword_27DEEAD78, &qword_238158D50);
      sub_2380712E4(v54, v124, &qword_27DEEADA0, &qword_238158D78);
      swift_storeEnumTagMultiPayload();
      sub_238086804();
      sub_238153ECC();
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  switch(v132)
  {
    case 0u:
      v60 = *(&v128 + 1);
      v101 = v130;
      *&v112 = v32;
      v61 = v129;
      v62 = swift_allocObject();
      v103 = v99;
      v63 = *(a1 + 16);
      *(v62 + 16) = *a1;
      *(v62 + 32) = v63;
      *(v62 + 48) = *(a1 + 32);
      *(v62 + 56) = v60;
      v106 = v60;
      v105 = v61;
      *(v62 + 64) = v61;
      MEMORY[0x28223BE20](v62);
      v104 = v38;
      v99[-2] = a1;
      sub_238086794(a1, &v127);
      sub_238086B74(v60);
      sub_23815474C();
      LOBYTE(v127) = 2;
      v100 = xmmword_238158800;
      v128 = xmmword_238158800;
      v129 = 0x403E000000000000;
      v99[1] = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
      v99[0] = sub_238086A48();
      sub_2381543EC();
      v64 = v114[1];
      v64(v24, v21);
      v65 = swift_allocObject();
      v103 = v39;
      v114 = v99;
      v66 = *(a1 + 16);
      *(v65 + 16) = *a1;
      *(v65 + 32) = v66;
      *(v65 + 48) = *(a1 + 32);
      *(v65 + 56) = v37;
      v102 = v37;
      *(v65 + 64) = v104;
      MEMORY[0x28223BE20](v65);
      v99[-2] = a1;
      sub_238086794(a1, &v127);
      sub_238086B74(v37);
      sub_23815474C();
      v67 = v113;
      LOBYTE(v127) = 2;
      v128 = v100;
      v129 = 0x403E000000000000;
      sub_2381543EC();
      v64(v24, v21);
      v69 = v119;
      v68 = v120;
      v70 = *(v119 + 16);
      v71 = v112;
      (v70)(v112, v126, v120);
      (v70)(v29, v67, v68);
      v72 = v111;
      v70();
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADE0, &qword_238158D98);
      (v70)(v72 + *(v73 + 48), v29, v68);
      v74 = *(v69 + 8);
      v74(v29, v68);
      v74(v71, v68);
      v75 = v72;
      sub_2380712E4(v72, v109, &qword_27DEEADA8, &unk_238158D80);
      swift_storeEnumTagMultiPayload();
      sub_2380711D4(&qword_27DEEADC8, &qword_27DEEADA8, &unk_238158D80);
      v76 = v110;
      sub_238153ECC();
      sub_2380712E4(v76, v117, &qword_27DEEAD98, &qword_238158D70);
      swift_storeEnumTagMultiPayload();
      sub_238086890();
      sub_238086940();
      v77 = v121;
      sub_238153ECC();
      sub_238071284(v76, &qword_27DEEAD98, &qword_238158D70);
      sub_2380712E4(v77, v124, &qword_27DEEADA0, &qword_238158D78);
      swift_storeEnumTagMultiPayload();
      sub_238086804();
      sub_238153ECC();
      v78 = v102;
      v79 = v104;
      v80 = v106;
      v81 = v105;
      v82 = v101;
      v83 = v103;
      v84 = 0;
LABEL_11:
      sub_238085BD0(v78, v79, v80, v81, v82, v83, v84);
      sub_238071284(v77, &qword_27DEEADA0, &qword_238158D78);
      sub_238071284(v75, &qword_27DEEADA8, &unk_238158D80);
      v74(v113, v68);
      return (v74)(v126, v68);
    case 1u:
      v106 = *(&v128 + 1);
      v85 = v130;
      v101 = v130;
      v105 = v129;
      v86 = swift_allocObject();
      v87 = *(a1 + 16);
      *(v86 + 16) = *a1;
      *(v86 + 32) = v87;
      *(v86 + 48) = *(a1 + 32);
      *(v86 + 56) = v85;
      *(v86 + 64) = v39;
      sub_238086794(a1, &v127);

      sub_23815474C();
      LOBYTE(v127) = 0;
      v112 = xmmword_238158800;
      v128 = xmmword_238158800;
      v129 = 0x403E000000000000;
      v88 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
      v103 = v39;
      *&v100 = v88;
      sub_238086A48();
      sub_2381543EC();
      v102 = v37;
      v89 = v114[1];
      v89(v24, v21);
      v90 = swift_allocObject();
      v104 = v38;
      v91 = *(a1 + 16);
      *(v90 + 16) = *a1;
      *(v90 + 32) = v91;
      v92 = v106;
      *(v90 + 48) = *(a1 + 32);
      *(v90 + 56) = v92;
      *(v90 + 64) = v105;
      sub_238086794(a1, &v127);

      sub_23815474C();
      LOBYTE(v127) = 2;
      v128 = v112;
      v129 = 0x403E000000000000;
      v93 = v113;
      sub_2381543EC();
      v89(v24, v21);
      v94 = v119;
      v68 = v120;
      v95 = *(v119 + 16);
      (v95)(v32, v126, v120);
      (v95)(v29, v93, v68);
      v96 = v111;
      v95();
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADE0, &qword_238158D98);
      (v95)(v96 + *(v97 + 48), v29, v68);
      v74 = *(v94 + 8);
      v74(v29, v68);
      v74(v32, v68);
      v75 = v96;
      sub_2380712E4(v96, v109, &qword_27DEEADA8, &unk_238158D80);
      swift_storeEnumTagMultiPayload();
      sub_2380711D4(&qword_27DEEADC8, &qword_27DEEADA8, &unk_238158D80);
      v98 = v110;
      sub_238153ECC();
      sub_2380712E4(v98, v117, &qword_27DEEAD98, &qword_238158D70);
      swift_storeEnumTagMultiPayload();
      sub_238086890();
      sub_238086940();
      v77 = v121;
      sub_238153ECC();
      sub_238071284(v98, &qword_27DEEAD98, &qword_238158D70);
      sub_2380712E4(v77, v124, &qword_27DEEADA0, &qword_238158D78);
      swift_storeEnumTagMultiPayload();
      sub_238086804();
      sub_238153ECC();
      v78 = v102;
      v79 = v104;
      v80 = v106;
      v81 = v105;
      v82 = v101;
      v83 = v103;
      v84 = 1;
      goto LABEL_11;
    case 2u:
      v113 = v8;
      v40 = *(&v128 + 1);
      v106 = *(&v128 + 1);
      v41 = v130;
      v111 = v5;
      v42 = v129;
      v105 = v129;
      v43 = swift_allocObject();
      v44 = *(a1 + 16);
      *(v43 + 16) = *a1;
      *(v43 + 32) = v44;
      *(v43 + 48) = *(a1 + 32);
      *(v43 + 56) = v37;
      *(v43 + 64) = v38;
      sub_238086794(a1, &v127);
      v45 = v42;
      v46 = v41;
      sub_238086AA0(v37, v38, v40, v45, v41, v39, 2u);
      sub_23815474C();
      LOBYTE(v127) = 2;
      v128 = xmmword_238158800;
      v129 = 0x403E000000000000;
      v47 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
      v48 = sub_238086A48();
      v104 = v38;
      v103 = v39;
      v49 = v126;
      sub_2381543EC();
      (v114[1])(v24, v21);
      v50 = v119;
      v51 = *(v119 + 16);
      v102 = v37;
      v52 = v120;
      v51(v111, v49, v120);
      swift_storeEnumTagMultiPayload();
      v127 = v21;
      *&v128 = &type metadata for BoopButtonStyle;
      *(&v128 + 1) = v47;
      v129 = v48;
      swift_getOpaqueTypeConformance2();
      v53 = v113;
      sub_238153ECC();
      sub_2380712E4(v53, v117, &qword_27DEEAD78, &qword_238158D50);
      swift_storeEnumTagMultiPayload();
      sub_238086890();
      sub_238086940();
      v54 = v121;
      sub_238153ECC();
      sub_238071284(v53, &qword_27DEEAD78, &qword_238158D50);
      sub_2380712E4(v54, v124, &qword_27DEEADA0, &qword_238158D78);
      swift_storeEnumTagMultiPayload();
      sub_238086804();
      sub_238153ECC();
      sub_238085BD0(v102, v104, v106, v105, v46, v103, 2u);
LABEL_8:
      sub_238071284(v54, &qword_27DEEADA0, &qword_238158D78);
      return (*(v50 + 8))(v49, v52);
  }

LABEL_12:
  sub_238085BD0(v127, v128, *(&v128 + 1), v129, v130, v131, v132);
  swift_storeEnumTagMultiPayload();
  sub_238086804();
  return sub_238153ECC();
}

uint64_t sub_2380812E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v10 = *(a1 + 32);
  sub_238086794(a1, v8);
  sub_238086B74(a2);
  sub_238086C28(v9, a1, a2, a3, &unk_284AEF5C8, sub_23808876C, sub_238088754, sub_2380872B8);
  sub_23807A454(a2);
  return sub_2380867CC(a1);
}

uint64_t sub_2380813A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = *(a1 + 8);
  v11 = sub_238154FBC();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_238154F8C();
  sub_238086B74(a2);
  v12 = sub_238154F7C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a2;
  v13[5] = a3;
  v15 = sub_238134F10(0, 0, v9, &unk_238158E10, v13);
  v16 = *(v10 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_preTransferShareContactResponseTask);
  *(v10 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_preTransferShareContactResponseTask) = v15;
}

uint64_t sub_2380814FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_238154F8C();
  v5[5] = sub_238154F7C();
  v7 = sub_238154F3C();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_238081598, v7, v6);
}

uint64_t sub_238081598()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = v0[3];
    v16 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_2380817D0;

    return v16();
  }

  else
  {
    v7 = v0[5];

    if (qword_27DEEA020 != -1)
    {
      swift_once();
    }

    v8 = sub_23815293C();
    __swift_project_value_buffer(v8, qword_27DEEACA8);
    v9 = sub_23815291C();
    v10 = sub_2381550FC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_238060000, v9, v10, "CNBoopSessionView Recording preTransferShareContactResponseTask - RECEIVE ONLY", v11, 2u);
      MEMORY[0x2383EA8A0](v11, -1, -1);
    }

    v12 = v0[2];

    v13 = *MEMORY[0x277D54B80];
    v14 = sub_23815362C();
    (*(*(v14 - 8) + 104))(v12, v13, v14);
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2380817D0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_238081A78;
  }

  else
  {
    v7 = sub_23808190C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23808190C()
{
  v1 = v0[5];

  if (qword_27DEEA020 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEACA8);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "CNBoopSessionView Recording preTransferShareContactResponseTask - RECEIVE ONLY", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  v6 = v0[2];

  v7 = *MEMORY[0x277D54B80];
  v8 = sub_23815362C();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  v9 = v0[1];

  return v9();
}

uint64_t sub_238081A78()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_238081ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if ((v8 & 1) == 0)
  {
    sub_23807CB28(86);
  }

  sub_2380704A0();
  result = sub_23815438C();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_238081B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v10 = *(a1 + 32);
  sub_238086794(a1, v8);
  sub_238086B74(a2);
  sub_238086C28(v9, a1, a2, a3, &unk_284AEF578, sub_23808876C, sub_238086FFC, sub_238087018);
  sub_23807A454(a2);
  return sub_2380867CC(a1);
}

uint64_t sub_238081C64(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

uint64_t sub_238081CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20[-v8 - 8];
  v10 = *(a1 + 8);
  v11 = sub_238154FBC();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_238154F8C();
  sub_238086794(a1, v20);
  sub_238086B74(a2);
  v12 = sub_238154F7C();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  v15 = *(a1 + 16);
  *(v13 + 32) = *a1;
  *(v13 + 48) = v15;
  *(v13 + 64) = *(a1 + 32);
  *(v13 + 72) = a2;
  *(v13 + 80) = a3;
  v16 = sub_238134F10(0, 0, v9, &unk_238158DF8, v13);
  v17 = *(v10 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_preTransferShareContactResponseTask);
  *(v10 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_preTransferShareContactResponseTask) = v16;
}

uint64_t sub_238081E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  v7 = sub_23815352C();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v10 = sub_23815354C();
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v12 = *(v11 + 64) + 15;
  v6[16] = swift_task_alloc();
  sub_238154F8C();
  v6[17] = sub_238154F7C();
  v14 = sub_238154F3C();
  v6[18] = v14;
  v6[19] = v13;

  return MEMORY[0x2822009F8](sub_238081FA0, v14, v13);
}

uint64_t sub_238081FA0()
{
  v45 = v0;
  v1 = v0[8];
  v0[4] = CNBoopSessionViewOld.vCardForBooping()();
  v0[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADE8, &qword_238158E00);
  sub_2381552FC();
  v4 = v0[9];
  sub_238087244(v0[4], v0[5]);
  v5 = v0[2];
  v6 = v0[3];
  v0[20] = v5;
  v0[21] = v6;
  if (v4)
  {
    v7 = v0[10];
    v43 = (v0[9] + *v0[9]);
    v8 = *(v0[9] + 4);
    v9 = swift_task_alloc();
    v0[22] = v9;
    *v9 = v0;
    v9[1] = sub_2380824B8;

    return v43(v5, v6);
  }

  v10 = v0[17];

  v11 = *(v0[8] + 8);
  v12 = *(v11 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName);
  v13 = *(v11 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName + 8);
  v14 = *(v11 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A8C();

  v15 = v0[6];
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v15 >= *(v14 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[16];
  v19 = v0[12];
  v20 = v0[13];
  v21 = v0[11];
  v22 = v14 + 16 * v15;
  v23 = *(v22 + 40);
  *v20 = *(v22 + 32);
  v20[1] = v23;
  (*(v19 + 104))(v20, *MEMORY[0x277D54B40], v21);

  sub_238085D80(v17, v16);
  sub_23815353C();
  if (qword_27DEEA020 != -1)
  {
LABEL_18:
    swift_once();
  }

  v25 = v0[20];
  v24 = v0[21];
  v26 = sub_23815293C();
  __swift_project_value_buffer(v26, qword_27DEEACA8);
  sub_238085D80(v25, v24);
  v27 = sub_23815291C();
  v28 = sub_2381550FC();
  sub_238085CA0(v25, v24);
  v29 = os_log_type_enabled(v27, v28);
  v31 = v0[20];
  v30 = v0[21];
  if (v29)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v44 = v33;
    *v32 = 136315138;
    sub_238085D80(v31, v30);
    v34 = sub_2381526EC();
    v36 = v35;
    sub_238085CA0(v31, v30);
    v37 = sub_238085EAC(v34, v36, &v44);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_238060000, v27, v28, "CNBoopSessionView Recording preTransferShareContactResponseTask - SHARE {contact: %s}", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x2383EA8A0](v33, -1, -1);
    MEMORY[0x2383EA8A0](v32, -1, -1);
    sub_238085CA0(v31, v30);
  }

  else
  {

    sub_238085CA0(v31, v30);
  }

  v38 = v0[13];
  v39 = v0[7];
  (*(v0[15] + 32))(v39, v0[16], v0[14]);
  v40 = *MEMORY[0x277D54B78];
  v41 = sub_23815362C();
  (*(*(v41 - 8) + 104))(v39, v40, v41);

  v42 = v0[1];

  return v42();
}

uint64_t sub_2380824B8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 152);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_238082970;
  }

  else
  {
    v7 = sub_2380825F4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2380825F4()
{
  v36 = v0;
  v1 = v0[17];

  v2 = *(v0[8] + 8);
  v4 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName);
  v3 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName + 8);
  v5 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A8C();

  v6 = v0[6];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(v5 + 16))
  {
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[16];
    v10 = v0[12];
    v11 = v0[13];
    v12 = v0[11];
    v13 = v5 + 16 * v6;
    v14 = *(v13 + 40);
    *v11 = *(v13 + 32);
    v11[1] = v14;
    (*(v10 + 104))(v11, *MEMORY[0x277D54B40], v12);

    sub_238085D80(v8, v7);
    sub_23815353C();
    if (qword_27DEEA020 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_4:
  v16 = v0[20];
  v15 = v0[21];
  v17 = sub_23815293C();
  __swift_project_value_buffer(v17, qword_27DEEACA8);
  sub_238085D80(v16, v15);
  v18 = sub_23815291C();
  v19 = sub_2381550FC();
  sub_238085CA0(v16, v15);
  v20 = os_log_type_enabled(v18, v19);
  v22 = v0[20];
  v21 = v0[21];
  if (v20)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = v24;
    *v23 = 136315138;
    sub_238085D80(v22, v21);
    v25 = sub_2381526EC();
    v27 = v26;
    sub_238085CA0(v22, v21);
    v28 = sub_238085EAC(v25, v27, &v35);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_238060000, v18, v19, "CNBoopSessionView Recording preTransferShareContactResponseTask - SHARE {contact: %s}", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x2383EA8A0](v24, -1, -1);
    MEMORY[0x2383EA8A0](v23, -1, -1);
    sub_238085CA0(v22, v21);
  }

  else
  {

    sub_238085CA0(v22, v21);
  }

  v29 = v0[13];
  v30 = v0[7];
  (*(v0[15] + 32))(v30, v0[16], v0[14]);
  v31 = *MEMORY[0x277D54B78];
  v32 = sub_23815362C();
  (*(*(v32 - 8) + 104))(v30, v31, v32);

  v33 = v0[1];

  return v33();
}

uint64_t sub_238082970()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[17];

  sub_238085CA0(v1, v2);
  v4 = v0[23];
  v5 = v0[16];
  v6 = v0[13];

  v7 = v0[1];

  return v7();
}

uint64_t CNBoopSessionViewOld.vCardForBooping()()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_contact);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEACC8, &qword_238158830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238157F20;
  v4 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;

  sub_238152A8C();

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v4 + 16))
  {
    v7 = v4 + 16 * v11;
    v9 = *(v7 + 32);
    v8 = *(v7 + 40);

    *(inited + 32) = v9;
    *(inited + 40) = v8;
    v10 = sub_23815527C();

    swift_setDeallocating();
    sub_238085A20(inited + 32);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_238082B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v9)
  {
    v4 = 0;
  }

  else
  {
    v4 = 87;
  }

  sub_23807CB28(v4);
  sub_2380704A0();
  result = sub_23815438C();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_238082BF8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);

  sub_2380873CC(v5, a2);
}

uint64_t sub_238082C78@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_23807CB28(a1);
  sub_2380704A0();
  result = sub_23815438C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void CNBoopSessionViewOld.body.getter(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEACD0, &qword_238158880);
  v2 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v4 = (&v25 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEACD8, &qword_238158888);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v25 - v7);
  v9 = *(v1 + 16);
  v36[0] = *v1;
  v36[1] = v9;
  v37 = *(v1 + 32);
  v38 = v36[0];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A8C();
  sub_238071284(&v38, &qword_27DEEACE0, &qword_2381588D8);

  v10 = v29;
  v11 = v30;
  v12 = v31;
  v13 = v33;
  v14 = v34;
  if (v35 == 5)
  {
    v25 = v32;
    v15 = type metadata accessor for SnapshottingContactViewController();
    v16 = objc_allocWithZone(v15);
    v16[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase] = 0;
    v17 = &v16[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss];
    *v17 = 0;
    v17[1] = 0;
    *&v16[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController] = 0;
    *&v16[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_snapshotView] = 0;
    *&v16[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_contact] = v10;
    v28.receiver = v16;
    v28.super_class = v15;
    v18 = v10;
    v19 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
    sub_23813275C(v19[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase]);
    v20 = swift_allocObject();
    *(v20 + 16) = v11;
    *(v20 + 24) = v12;
    *v8 = v19;
    v8[1] = sub_23807BEF4;
    v8[2] = v20;
    swift_storeEnumTagMultiPayload();
    sub_238085CF4();
    sub_2380711D4(&qword_27DEEACF8, &qword_27DEEACD0, &qword_238158880);
    v21 = v19;
    swift_retain_n();
    v22 = v21;

    sub_238153ECC();
    sub_238085BD0(v10, v11, v12, v25, v13, v14, 5u);
  }

  else
  {
    sub_238085BD0(v29, v30, v31, v32, v33, v34, v35);
    *v4 = sub_2381548DC();
    v4[1] = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEACE8, &unk_2381588E0);
    sub_2380830B0(v36, (v4 + *(v24 + 44)));
    sub_2380712E4(v4, v8, &qword_27DEEACD0, &qword_238158880);
    swift_storeEnumTagMultiPayload();
    sub_238085CF4();
    sub_2380711D4(&qword_27DEEACF8, &qword_27DEEACD0, &qword_238158880);
    sub_238153ECC();
    sub_238071284(v4, &qword_27DEEACD0, &qword_238158880);
  }
}

uint64_t sub_2380830B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD20, &qword_238158CA0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v12 = *(a1 + 8);
  v22[5] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC070, &qword_238158CA8);
  sub_2381546FC();
  v14 = v22[0];
  v13 = v22[1];
  *v11 = sub_238153DEC();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD28, &qword_238158CB0);
  sub_2380832C8(a1, &v11[*(v15 + 44)]);
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a1 + 32);
  v18 = &v11[*(v5 + 44)];
  *v18 = sub_23808678C;
  v18[1] = v16;
  v18[2] = 0;
  v18[3] = 0;
  sub_2380712E4(v11, v9, &qword_27DEEAD20, &qword_238158CA0);
  *a2 = v12;
  a2[1] = v14;
  a2[2] = v13;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD30, &qword_238158CB8);
  sub_2380712E4(v9, a2 + *(v19 + 48), &qword_27DEEAD20, &qword_238158CA0);
  sub_238086794(a1, v22);

  v20 = v14;
  sub_238071284(v11, &qword_27DEEAD20, &qword_238158CA0);
  sub_238071284(v9, &qword_27DEEAD20, &qword_238158CA0);
}

uint64_t sub_2380832C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD38, &qword_238158CC0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v58[-v6];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD40, &qword_238158CC8);
  v8 = *(*(v70 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v65 = &v58[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v58[-v12];
  MEMORY[0x28223BE20](v11);
  v75 = &v58[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD48, &qword_238158CD0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v72 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v20 = &v58[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD50, &qword_238158CD8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v71 = &v58[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v26 = &v58[-v25];
  *v26 = sub_238153DEC();
  *(v26 + 1) = 0x4054000000000000;
  v26[16] = 0;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD58, &qword_238158CE0) + 44);
  v74 = v26;
  sub_23807DC10(a1, &v26[v27]);
  *v20 = sub_238153DEC();
  *(v20 + 1) = 0x4024000000000000;
  v20[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD60, &qword_238158CE8);
  sub_238083A7C(a1, &v20[*(v28 + 44)]);
  *(*(a1 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_posterArchiveData + 8);
  sub_2381548DC();
  sub_2381538EC();
  v69 = v82;
  v68 = v84;
  v67 = v86;
  v66 = v87;
  v81 = 1;
  v80 = v83;
  v79 = v85;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *v7 = v88;
  sub_23807FDB8(a1, &v7[*(v4 + 52)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238158810;
  LOBYTE(a1) = sub_23815412C();
  *(inited + 32) = a1;
  v30 = sub_23815414C();
  *(inited + 33) = v30;
  v31 = sub_23815413C();
  sub_23815413C();
  if (sub_23815413C() != a1)
  {
    v31 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v30)
  {
    v31 = sub_23815413C();
  }

  sub_23815377C();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_23807121C(v7, v13, &qword_27DEEAD38, &qword_238158CC0);
  v40 = &v13[*(v70 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = v75;
  sub_23807121C(v13, v75, &qword_27DEEAD40, &qword_238158CC8);
  sub_2381548DC();
  sub_2381538EC();
  v70 = v88;
  v64 = v90;
  v63 = v92;
  v62 = v93;
  v78 = 1;
  v77 = v89;
  v76 = v91;
  v42 = v71;
  sub_2380712E4(v74, v71, &qword_27DEEAD50, &qword_238158CD8);
  v43 = v20;
  v44 = v72;
  sub_2380712E4(v20, v72, &qword_27DEEAD48, &qword_238158CD0);
  v45 = v81;
  v46 = v80;
  v47 = v79;
  v48 = v41;
  v49 = v65;
  sub_2380712E4(v48, v65, &qword_27DEEAD40, &qword_238158CC8);
  v59 = v78;
  v60 = v77;
  v61 = v76;
  v50 = v73;
  sub_2380712E4(v42, v73, &qword_27DEEAD50, &qword_238158CD8);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD68, &qword_238158D40);
  v52 = v50 + v51[12];
  *v52 = 0;
  *(v52 + 8) = 1;
  sub_2380712E4(v44, v50 + v51[16], &qword_27DEEAD48, &qword_238158CD0);
  v53 = v50 + v51[20];
  *v53 = 0;
  *(v53 + 8) = v45;
  *(v53 + 16) = v69;
  *(v53 + 24) = v46;
  *(v53 + 32) = v68;
  *(v53 + 40) = v47;
  v54 = v66;
  *(v53 + 48) = v67;
  *(v53 + 56) = v54;
  sub_2380712E4(v49, v50 + v51[24], &qword_27DEEAD40, &qword_238158CC8);
  v55 = v50 + v51[28];
  *v55 = 0;
  *(v55 + 8) = v59;
  *(v55 + 16) = v70;
  *(v55 + 24) = v60;
  *(v55 + 32) = v64;
  *(v55 + 40) = v61;
  v56 = v62;
  *(v55 + 48) = v63;
  *(v55 + 56) = v56;
  sub_238071284(v75, &qword_27DEEAD40, &qword_238158CC8);
  sub_238071284(v43, &qword_27DEEAD48, &qword_238158CD0);
  sub_238071284(v74, &qword_27DEEAD50, &qword_238158CD8);
  sub_238071284(v49, &qword_27DEEAD40, &qword_238158CC8);
  sub_238071284(v44, &qword_27DEEAD48, &qword_238158CD0);
  return sub_238071284(v42, &qword_27DEEAD50, &qword_238158CD8);
}

uint64_t sub_238083A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADF0, &qword_238158E18);
  v3 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v116 = &v91 - v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADF8, &qword_238158E20);
  v5 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v92 = &v91 - v6;
  v7 = sub_2381549AC();
  v107 = *(v7 - 8);
  v108 = v7;
  v8 = *(v107 + 64);
  MEMORY[0x28223BE20](v7);
  v106 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE00, &qword_238158E28);
  v104 = *(v105 - 8);
  v10 = *(v104 + 64);
  MEMORY[0x28223BE20](v105);
  v102 = &v91 - v11;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE08, &qword_238158E30);
  v12 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v111 = &v91 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE10, &qword_238158E38);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v113 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v112 = &v91 - v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE18, &qword_238158E40);
  v19 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v100 = &v91 - v20;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE20, &qword_238158E48);
  v21 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v91 = &v91 - v22;
  v120 = sub_2381530DC();
  v122 = *(v120 - 8);
  v23 = *(v122 + 64);
  v24 = MEMORY[0x28223BE20](v120);
  v119 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v118 = &v91 - v26;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE28, &qword_238158E50);
  v27 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v94 = &v91 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE30, &qword_238158E58);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v109 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v121 = &v91 - v33;
  v103 = a1;
  v34 = *(a1 + 8);
  v35 = *(v34 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName + 8);
  v123 = *(v34 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName);
  v124 = v35;
  sub_2380704A0();

  v36 = sub_23815438C();
  v38 = v37;
  v40 = v39;
  v41 = *(v34 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_nameFont);

  v42 = sub_23815435C();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v38;
  v50 = v93;
  sub_238070490(v36, v49, v40 & 1);

  v123 = v42;
  v124 = v44;
  LOBYTE(v41) = v46 & 1;
  v51 = v94;
  v125 = v41;
  v126 = v48;
  sub_23815446C();
  sub_238070490(v42, v44, v41);

  v95 = OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor;
  v52 = *(v34 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_fontColor);
  KeyPath = swift_getKeyPath();
  v54 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE38, &qword_238158E90) + 36));
  *v54 = KeyPath;
  v54[1] = v52;
  v55 = swift_getKeyPath();
  v56 = v51 + *(v50 + 36);
  *v56 = v55;
  *(v56 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();

  v57 = v118;
  v101 = v34;
  sub_238152A8C();

  v58 = v122;
  v59 = *(v122 + 104);
  v60 = v119;
  v97 = *MEMORY[0x277D54940];
  v61 = v120;
  v96 = v59;
  v59(v119);
  v62 = v57;
  v63 = v60;
  LOBYTE(v60) = sub_2381530CC();
  v64 = *(v58 + 8);
  v64(v63, v61);
  v122 = v58 + 8;
  v64(v62, v61);
  if (v60)
  {
    v65 = v91;
    sub_2380712E4(v51, v91, &qword_27DEEAE28, &qword_238158E50);
    v66 = v65 + *(v99 + 36);
    *v66 = 0x4024000000000000;
    *(v66 + 8) = 0;
    sub_2380712E4(v65, v100, &qword_27DEEAE20, &qword_238158E48);
    swift_storeEnumTagMultiPayload();
    sub_23808763C();
    sub_2380876C8();
    sub_238153ECC();
    sub_238071284(v65, &qword_27DEEAE20, &qword_238158E48);
  }

  else
  {
    sub_2380712E4(v51, v100, &qword_27DEEAE28, &qword_238158E50);
    swift_storeEnumTagMultiPayload();
    sub_23808763C();
    sub_2380876C8();
    sub_238153ECC();
  }

  v67 = sub_238071284(v51, &qword_27DEEAE28, &qword_238158E50);
  v68 = MEMORY[0x28223BE20](v67);
  *(&v91 - 2) = v103;
  MEMORY[0x28223BE20](v68);
  *(&v91 - 2) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE58, &qword_238158EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE60, &unk_238158ED0);
  sub_238087878();
  sub_2380711D4(&qword_27DEEAEA8, &qword_27DEEAE60, &unk_238158ED0);
  v70 = v102;
  sub_2381542EC();
  v71 = v106;
  sub_23815499C();
  sub_2380711D4(&qword_27DEEAEB0, &qword_27DEEAE00, &qword_238158E28);
  v72 = v111;
  v73 = v105;
  sub_23815458C();
  (*(v107 + 8))(v71, v108);
  (*(v104 + 8))(v70, v73);
  v74 = *(v101 + v95);
  v75 = swift_getKeyPath();
  v76 = (v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEB8, &qword_238158EF8) + 36));
  *v76 = v75;
  v76[1] = v74;
  v77 = (v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEC0, &qword_238158F00) + 36));
  *v77 = sub_23806AF5C;
  v77[1] = 0;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A8C();

  *(v72 + *(v110 + 36)) = v123;
  swift_getKeyPath();
  swift_getKeyPath();
  v78 = v118;
  sub_238152A8C();

  v80 = v119;
  v79 = v120;
  v96(v119, v97, v120);
  LOBYTE(v74) = sub_2381530CC();
  v64(v80, v79);
  v64(v78, v79);
  if (v74)
  {
    v81 = v92;
    sub_2380712E4(v72, v92, &qword_27DEEAE08, &qword_238158E30);
    v82 = v116;
    v83 = v81 + *(v115 + 36);
    *v83 = 0x4024000000000000;
    *(v83 + 8) = 0;
    sub_2380712E4(v81, v82, &qword_27DEEADF8, &qword_238158E20);
    swift_storeEnumTagMultiPayload();
    sub_238087AC8();
    sub_238087B54();
    v84 = v112;
    sub_238153ECC();
    sub_238071284(v81, &qword_27DEEADF8, &qword_238158E20);
  }

  else
  {
    sub_2380712E4(v72, v116, &qword_27DEEAE08, &qword_238158E30);
    swift_storeEnumTagMultiPayload();
    sub_238087AC8();
    sub_238087B54();
    v84 = v112;
    sub_238153ECC();
  }

  v85 = v121;
  sub_238071284(v72, &qword_27DEEAE08, &qword_238158E30);
  v86 = v109;
  sub_2380712E4(v85, v109, &qword_27DEEAE30, &qword_238158E58);
  v87 = v113;
  sub_2380712E4(v84, v113, &qword_27DEEAE10, &qword_238158E38);
  v88 = v117;
  sub_2380712E4(v86, v117, &qword_27DEEAE30, &qword_238158E58);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEE8, &qword_238158F50);
  sub_2380712E4(v87, v88 + *(v89 + 48), &qword_27DEEAE10, &qword_238158E38);
  sub_238071284(v84, &qword_27DEEAE10, &qword_238158E38);
  sub_238071284(v85, &qword_27DEEAE30, &qword_238158E58);
  sub_238071284(v87, &qword_27DEEAE10, &qword_238158E38);
  return sub_238071284(v86, &qword_27DEEAE30, &qword_238158E58);
}

uint64_t sub_23808482C(uint64_t *a1)
{
  sub_238153D8C();
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for CNBoopSessionViewModel();
  sub_2380859C0();
  sub_2381539CC();
  swift_getKeyPath();
  sub_2381539DC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEF0, &unk_238158FB8);
  sub_238087DAC();
  return sub_2381547AC();
}

uint64_t sub_23808497C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_2380849FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

uint64_t sub_238084A70(uint64_t a1)
{
  v2 = *(*(*(a1 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles) + 16);
  v7 = 0;
  v8 = v2;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  sub_238086794(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAF00, &qword_238158FE0);
  sub_238087E84();
  return sub_23815480C();
}

unint64_t *sub_238084B6C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(*(a2 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles);
    if (v4 < *(v5 + 16))
    {
      v6 = v5 + 16 * v4;
      v10 = *(v6 + 32);
      v11 = *(v6 + 40);
      sub_2380704A0();

      result = sub_23815438C();
      *a3 = result;
      *(a3 + 8) = v7;
      *(a3 + 16) = v8 & 1;
      *(a3 + 24) = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238084C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE80, &qword_238158EE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = *(*(a1 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_handles);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if ((v20[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v20[0] < *(v9 + 16))
  {
    v11 = v9 + 16 * v20[0];
    v12 = *(v11 + 40);
    v20[0] = *(v11 + 32);
    v20[1] = v12;
    sub_2380704A0();

    sub_2381546EC();
    sub_2380711D4(&qword_27DEEAE88, &qword_27DEEAE80, &qword_238158EE0);
    sub_238087A6C();
    sub_2381543CC();
    (*(v5 + 8))(v8, v4);
    v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE78, &unk_238159EE0) + 36));
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEA0, &unk_238158EE8) + 28);
    v15 = *MEMORY[0x277CE1050];
    v16 = sub_2381546BC();
    (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
    *v13 = swift_getKeyPath();
    sub_23815424C();
    sub_23815421C();
    v17 = sub_23815425C();

    KeyPath = swift_getKeyPath();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE58, &qword_238158EC8);
    v19 = (a2 + *(result + 36));
    *v19 = KeyPath;
    v19[1] = v17;
    return result;
  }

  __break(1u);
  return result;
}

void sub_238084ED8(uint64_t a1)
{
  if (qword_27DEEA020 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEACA8);
  sub_238086794(a1, v16);
  v3 = sub_23815291C();
  v4 = sub_2381550BC();
  sub_2380867CC(a1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315394;
    v7 = *(a1 + 8);
    *(v5 + 4) = sub_238085EAC(*(v7 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName), *(v7 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_displayName + 8), &v15);
    *(v5 + 12) = 2080;
    v8 = [*(v7 + OBJC_IVAR____TtC17DeviceDiscoveryUI22CNBoopSessionViewModel_contact) identifier];
    v9 = sub_238154CCC();
    v11 = v10;

    v16[0] = v9;
    v16[1] = v11;
    v12 = sub_238154D2C();
    v14 = sub_238085EAC(v12, v13, &v15);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_238060000, v3, v4, "CNBookSessionView appeared with contact: %s, %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383EA8A0](v6, -1, -1);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }
}

uint64_t sub_2380850D0()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

void CNBoopSessionViewOld.transitionUI(receivedVCard:doneButtonCallback:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 8);
  v11 = sub_2381528BC();
  v13 = v12;
  sub_238085D80(a1, a2);
  v14 = sub_2381528CC();
  sub_238085CA0(v11, v13);
  if (v14 >> 62)
  {
    if (sub_2381554FC())
    {
      goto LABEL_3;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x2383E9A70](0, v14);
      goto LABEL_6;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v14 + 32);
LABEL_6:
      v16 = v15;

      [v16 mutableCopy];
      sub_23815534C();
      swift_unknownObjectRelease();
      sub_238085DD4();
      swift_dynamicCast();
      if (qword_27DEEA020 != -1)
      {
        swift_once();
      }

      v17 = sub_23815293C();
      __swift_project_value_buffer(v17, qword_27DEEACA8);
      v18 = v56;
      v19 = sub_23815291C();
      v20 = sub_2381550FC();
      v21 = v18;

      v48 = a3;
      if (os_log_type_enabled(v19, v20))
      {
        v47 = v16;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v49 = v23;
        *v22 = 136315138;
        v24 = [v21 identifier];
        v46 = a4;
        v25 = sub_238154CCC();
        v27 = v26;

        v28 = sub_238085EAC(v25, v27, &v49);

        *(v22 + 4) = v28;
        a4 = v46;
        _os_log_impl(&dword_238060000, v19, v20, "CNBoopSessionView saving to contact store {id: %s}", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x2383EA8A0](v23, -1, -1);
        v29 = v22;
        v16 = v47;
        MEMORY[0x2383EA8A0](v29, -1, -1);
      }

      sub_23815512C();
      if (v5)
      {
        v30 = v5;
        v31 = sub_23815291C();
        v32 = sub_2381550DC();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          v35 = v5;
          v36 = _swift_stdlib_bridgeErrorToNSError();
          *(v33 + 4) = v36;
          *v34 = v36;
          _os_log_impl(&dword_238060000, v31, v32, "Failed to save contact: %@", v33, 0xCu);
          sub_238071284(v34, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v34, -1, -1);
          MEMORY[0x2383EA8A0](v33, -1, -1);
        }

        v49 = 0;
        v50 = 0xE000000000000000;
        sub_23815541C();
        MEMORY[0x2383E9410](0xD000000000000018, 0x8000000238161430);
        v56 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
        sub_2381554DC();
        v37 = v49;
        v38 = v50;
        sub_238085E58();
        swift_allocError();
        *v39 = v37;
        *(v39 + 8) = v38;
        *(v39 + 16) = 4;
        swift_willThrow();
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v49 = v21;
        v50 = v48;
        v51 = a4;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 5;
        swift_retain_n();
        v40 = v21;

        sub_238152A9C();
      }

      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (qword_27DEEA020 != -1)
  {
LABEL_22:
    swift_once();
  }

  v41 = sub_23815293C();
  __swift_project_value_buffer(v41, qword_27DEEACA8);
  v42 = sub_23815291C();
  v43 = sub_2381550DC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_238060000, v42, v43, "Failed to import contact which could not be deserialized", v44, 2u);
    MEMORY[0x2383EA8A0](v44, -1, -1);
  }

  sub_238085E58();
  swift_allocError();
  *v45 = 0xD000000000000022;
  *(v45 + 8) = 0x8000000238161450;
  *(v45 + 16) = 3;
  swift_willThrow();
}

void CNBoopSessionViewOld.transitionUI(receivedContactID:doneButtonCallback:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 8);
  v10 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v11 = sub_2380FEF6C(a1, a2);
  if (v11)
  {
    v12 = v11;
    swift_getKeyPath();
    swift_getKeyPath();
    v20[0] = v12;
    v20[1] = a3;
    v20[2] = a4;
    memset(&v20[3], 0, 24);
    v21 = 5;
    swift_retain_n();

    v13 = v12;
    sub_238152A9C();
  }

  else
  {
    if (qword_27DEEA020 != -1)
    {
      swift_once();
    }

    v14 = sub_23815293C();
    __swift_project_value_buffer(v14, qword_27DEEACA8);

    v15 = sub_23815291C();
    v16 = sub_2381550DC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_238085EAC(a1, a2, v20);
      _os_log_impl(&dword_238060000, v15, v16, "Failed to fetch contact from identifier: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x2383EA8A0](v18, -1, -1);
      MEMORY[0x2383EA8A0](v17, -1, -1);
    }

    sub_238085E58();
    swift_allocError();
    *v19 = 0xD000000000000022;
    *(v19 + 8) = 0x8000000238161450;
    *(v19 + 16) = 3;
    swift_willThrow();
  }
}

unint64_t sub_2380859C0()
{
  result = qword_27DEEACC0;
  if (!qword_27DEEACC0)
  {
    type metadata accessor for CNBoopSessionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEACC0);
  }

  return result;
}

double sub_238085A74@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_238085B08(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a2;
  v9 = *(a1 + 48);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238086AA0(v2, v3, v4, v5, v6, v7, v9);
  return sub_238152A9C();
}

void *sub_238085BD0(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 != 3 && a7 != 4)
    {
      if (a7 != 5)
      {
        return result;
      }
    }

    goto LABEL_16;
  }

  if (a7)
  {
    if (a7 == 1)
    {
      sub_238085CA0(result, a2);
    }

    else if (a7 != 2)
    {
      return result;
    }

LABEL_16:
  }

  sub_23807A454(result);

  return sub_23807A454(a3);
}

uint64_t sub_238085CA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_238085CF4()
{
  result = qword_27DEEACF0;
  if (!qword_27DEEACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEACF0);
  }

  return result;
}

uint64_t sub_238085D48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238085D80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_238085DD4()
{
  result = qword_27DEEC050;
  if (!qword_27DEEC050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEEC050);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_238085E58()
{
  result = qword_27DEEAD00;
  if (!qword_27DEEAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAD00);
  }

  return result;
}

uint64_t sub_238085EAC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238086264(v11, 0, 0, 1, a1, a2);
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
    sub_238086370(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_238085FA8()
{
  result = qword_27DEEAD08;
  if (!qword_27DEEAD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAD10, &qword_2381589B8);
    sub_238085CF4();
    sub_2380711D4(&qword_27DEEACF8, &qword_27DEEACD0, &qword_238158880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAD08);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_238086080(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2380860C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t get_enum_tag_for_layout_string_17DeviceDiscoveryUI16BoopSessionStateO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 5)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_238086190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 49))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 48);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2380861D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_23808622C(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_238086264(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2380863CC(a5, a6);
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
    result = sub_23815544C();
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

uint64_t sub_238086370(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2380863CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_238086418(a1, a2);
  sub_238086548(&unk_284AEE900);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_238086418(uint64_t a1, unint64_t a2)
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

  v6 = sub_23813189C(v5, 0);
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

  result = sub_23815544C();
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
        v10 = sub_238154E0C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23813189C(v10, 0);
        result = sub_23815540C();
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

uint64_t sub_238086548(uint64_t result)
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

  result = sub_238086634(result, v12, 1, v3);
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

char *sub_238086634(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD18, &qword_238158C98);
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

unint64_t sub_238086804()
{
  result = qword_27DEEADB8;
  if (!qword_27DEEADB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEADA0, &qword_238158D78);
    sub_238086890();
    sub_238086940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEADB8);
  }

  return result;
}

unint64_t sub_238086890()
{
  result = qword_27DEEADC0;
  if (!qword_27DEEADC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAD98, &qword_238158D70);
    sub_2380711D4(&qword_27DEEADC8, &qword_27DEEADA8, &unk_238158D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEADC0);
  }

  return result;
}

unint64_t sub_238086940()
{
  result = qword_27DEEADD0;
  if (!qword_27DEEADD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAD78, &qword_238158D50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
    sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
    sub_238086A48();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEADD0);
  }

  return result;
}

unint64_t sub_238086A48()
{
  result = qword_27DEEADD8;
  if (!qword_27DEEADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEADD8);
  }

  return result;
}

void *sub_238086AA0(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 != 3 && a7 != 4)
    {
      if (a7 != 5)
      {
        return result;
      }

      v7 = result;
    }

    goto LABEL_16;
  }

  if (a7)
  {
    if (a7 == 1)
    {
      sub_238085D80(result, a2);
    }

    else if (a7 != 2)
    {
      return result;
    }

LABEL_16:
  }

  sub_238086B74(result);

  return sub_238086B74(a3);
}

uint64_t sub_238086B74(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_238086C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v39 = a7;
  v40 = a8;
  v37 = a4;
  v38 = a6;
  v35[1] = a5;
  v36 = a3;
  v41 = sub_23815400C();
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v41);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2381530DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v35 - v20;
  v22 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A8C();

  (*(v15 + 104))(v19, *MEMORY[0x277D54940], v14);
  v23 = sub_2381530CC();
  v24 = *(v15 + 8);
  v24(v19, v14);
  v24(v21, v14);
  if (v23)
  {
    if (qword_27DEEA020 != -1)
    {
      swift_once();
    }

    v25 = sub_23815293C();
    __swift_project_value_buffer(v25, qword_27DEEACA8);
    v26 = sub_23815291C();
    v27 = sub_2381550DC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_238060000, v26, v27, "Unlock from view buttons is not yet implemented.", v28, 2u);
      MEMORY[0x2383EA8A0](v28, -1, -1);
    }
  }

  sub_23815490C();
  v29 = sub_238153FFC();
  MEMORY[0x28223BE20](v29);
  v35[-2] = a2;
  v30 = swift_allocObject();
  v31 = *(a2 + 16);
  *(v30 + 16) = *a2;
  *(v30 + 32) = v31;
  v33 = v36;
  v32 = v37;
  *(v30 + 48) = *(a2 + 32);
  *(v30 + 56) = v33;
  *(v30 + 64) = v32;
  sub_238086794(a2, v42);
  v38(v33, v32);
  sub_23815397C();

  return (*(v10 + 8))(v13, v41);
}

uint64_t sub_238087024()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  if (v0[7])
  {
    v4 = v0[8];
  }

  if (v0[9])
  {
    v5 = v0[10];
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_23808708C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238087150;

  return sub_238081E4C(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_238087150()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_238087244(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_238085CA0(a1, a2);
  }

  return a1;
}

uint64_t objectdestroy_46Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  if (v0[7])
  {
    v4 = v0[8];
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2380872C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23808730C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238088780;

  return sub_2380814FC(a1, v4, v5, v7, v6);
}

uint64_t sub_2380873CC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_2381530DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A8C();

  (*(v5 + 104))(v9, *MEMORY[0x277D54940], v4);
  LOBYTE(v12) = sub_2381530CC();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v14 = (v13)(v11, v4);
  if (v12)
  {
    if (qword_27DEEA020 != -1)
    {
      swift_once();
    }

    v15 = sub_23815293C();
    __swift_project_value_buffer(v15, qword_27DEEACA8);
    v16 = sub_23815291C();
    v17 = sub_2381550DC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_238060000, v16, v17, "Unlock from view buttons is not yet implemented.", v18, 2u);
      MEMORY[0x2383EA8A0](v18, -1, -1);
    }
  }

  return a2(v14);
}

unint64_t sub_23808763C()
{
  result = qword_27DEEAE40;
  if (!qword_27DEEAE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE20, &qword_238158E48);
    sub_2380876C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAE40);
  }

  return result;
}

unint64_t sub_2380876C8()
{
  result = qword_27DEEAE48;
  if (!qword_27DEEAE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE28, &qword_238158E50);
    sub_238087780();
    sub_2380711D4(&unk_27DEEAB30, &unk_27DEED150, &qword_238158400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAE48);
  }

  return result;
}

unint64_t sub_238087780()
{
  result = qword_27DEEAE50;
  if (!qword_27DEEAE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE38, &qword_238158E90);
    swift_getOpaqueTypeConformance2();
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAE50);
  }

  return result;
}

unint64_t sub_238087878()
{
  result = qword_27DEEAE68;
  if (!qword_27DEEAE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE58, &qword_238158EC8);
    sub_238087930();
    sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAE68);
  }

  return result;
}

unint64_t sub_238087930()
{
  result = qword_27DEEAE70;
  if (!qword_27DEEAE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE78, &unk_238159EE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE80, &qword_238158EE0);
    sub_2380711D4(&qword_27DEEAE88, &qword_27DEEAE80, &qword_238158EE0);
    sub_238087A6C();
    swift_getOpaqueTypeConformance2();
    sub_2380711D4(&qword_27DEEAE98, &qword_27DEEAEA0, &unk_238158EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAE70);
  }

  return result;
}

unint64_t sub_238087A6C()
{
  result = qword_27DEEAE90;
  if (!qword_27DEEAE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAE90);
  }

  return result;
}

unint64_t sub_238087AC8()
{
  result = qword_27DEEAEC8;
  if (!qword_27DEEAEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEADF8, &qword_238158E20);
    sub_238087B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAEC8);
  }

  return result;
}

unint64_t sub_238087B54()
{
  result = qword_27DEEAED0;
  if (!qword_27DEEAED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE08, &qword_238158E30);
    sub_238087BE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAED0);
  }

  return result;
}

unint64_t sub_238087BE0()
{
  result = qword_27DEEAED8;
  if (!qword_27DEEAED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAEC0, &qword_238158F00);
    sub_238087C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAED8);
  }

  return result;
}

unint64_t sub_238087C6C()
{
  result = qword_27DEEAEE0;
  if (!qword_27DEEAEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAEB8, &qword_238158EF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAE00, &qword_238158E28);
    sub_2380711D4(&qword_27DEEAEB0, &qword_27DEEAE00, &qword_238158E28);
    swift_getOpaqueTypeConformance2();
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAEE0);
  }

  return result;
}

unint64_t sub_238087DAC()
{
  result = qword_27DEEAEF8;
  if (!qword_27DEEAEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAEF0, &unk_238158FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAEF8);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_238087E84()
{
  result = qword_27DEEAF08;
  if (!qword_27DEEAF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF00, &qword_238158FE0);
    sub_238087F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAF08);
  }

  return result;
}

unint64_t sub_238087F10()
{
  result = qword_27DEEAF10;
  if (!qword_27DEEAF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAF10);
  }

  return result;
}

unint64_t sub_238087F64()
{
  result = qword_27DEEAF88;
  if (!qword_27DEEAF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF28, &qword_238158FF8);
    sub_238087FE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAF88);
  }

  return result;
}

unint64_t sub_238087FE8()
{
  result = qword_27DEEAF90;
  if (!qword_27DEEAF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF80, &qword_238159050);
    sub_2380711D4(&qword_27DEEAF98, &qword_27DEEAFA0, &qword_238159058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAF90);
  }

  return result;
}

unint64_t sub_2380880A0()
{
  result = qword_27DEEAFA8;
  if (!qword_27DEEAFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF78, &qword_238159048);
    sub_23808812C();
    sub_2380881B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAFA8);
  }

  return result;
}

unint64_t sub_23808812C()
{
  result = qword_27DEEAFB0;
  if (!qword_27DEEAFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF70, &qword_238159040);
    sub_238087FE8();
    sub_2380881B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAFB0);
  }

  return result;
}

unint64_t sub_2380881B8()
{
  result = qword_27DEEAFB8;
  if (!qword_27DEEAFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF50, &qword_238159020);
    sub_238088244();
    sub_2380882C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAFB8);
  }

  return result;
}

unint64_t sub_238088244()
{
  result = qword_27DEEAFC0;
  if (!qword_27DEEAFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAFC8, &qword_238159060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAFC0);
  }

  return result;
}

unint64_t sub_2380882C8()
{
  result = qword_27DEEAFD0;
  if (!qword_27DEEAFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF40, &qword_238159010);
    sub_238088354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAFD0);
  }

  return result;
}

unint64_t sub_238088354()
{
  result = qword_27DEEAFD8;
  if (!qword_27DEEAFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAFE0, &qword_238159068);
    sub_23808840C();
    sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAFD8);
  }

  return result;
}

unint64_t sub_23808840C()
{
  result = qword_27DEEAFE8;
  if (!qword_27DEEAFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAFF0, &qword_238159070);
    sub_2380884C4();
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAFE8);
  }

  return result;
}

unint64_t sub_2380884C4()
{
  result = qword_27DEEAFF8;
  if (!qword_27DEEAFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB000, &qword_238159078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF38, &qword_238159008);
    sub_2380711D4(&qword_27DEEB008, &qword_27DEEAF38, &qword_238159008);
    sub_238088600();
    swift_getOpaqueTypeConformance2();
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAFF8);
  }

  return result;
}

unint64_t sub_238088600()
{
  result = qword_27DEEB010;
  if (!qword_27DEEB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB010);
  }

  return result;
}

unint64_t sub_238088654()
{
  result = qword_27DEEB018;
  if (!qword_27DEEB018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAF30, &qword_238159000);
    sub_238087F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB018);
  }

  return result;
}

uint64_t sub_2380886E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238153CCC();
  *a1 = result;
  return result;
}

uint64_t sub_23808870C(uint64_t *a1)
{
  v1 = *a1;

  return sub_238153CDC();
}

uint64_t sub_238088784()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEB040);
  v1 = __swift_project_value_buffer(v0, qword_27DEEB040);
  if (qword_27DEEA040 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DEF31B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_23808884C()
{
  v1 = *v0;
  if (*(v0 + 64) > 1u)
  {
    if (*(v0 + 64) == 2)
    {
      sub_23815541C();

      v18 = 0xD000000000000016;
      v19 = 0x80000002381616C0;
      v13[0] = v1;
      v3 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB0E0, &qword_238159370);
      v4 = sub_238154D2C();
      MEMORY[0x2383E9410](v4);

      return v18;
    }

    return 1701602409;
  }

  else
  {
    v2 = *(v0 + 8);
    if (!*(v0 + 64))
    {
      v18 = 0x28676E6974696177;
      v19 = 0xE800000000000000;
      MEMORY[0x2383E9410](v1, v2);
      MEMORY[0x2383E9410](41, 0xE100000000000000);
      return v18;
    }

    v18 = *v0;
    v19 = v2;
    v6 = *(v0 + 32);
    v20 = *(v0 + 16);
    v21 = v6;
    v22 = *(v0 + 48);
    *&v12 = 0;
    *(&v12 + 1) = 0xE000000000000000;
    sub_2380712E4(&v18, v13, &qword_27DEEB0E8, &qword_238159378);
    sub_23815541C();
    v17 = v12;
    MEMORY[0x2383E9410](0xD000000000000011, 0x80000002381616E0);
    v7 = v19;
    if (v19)
    {
      v8 = v18;
      v9 = v20;
      v10 = v21;
      v11 = v22;
    }

    else
    {
      sub_23808E828(v0);
      v9 = 0uLL;
      v7 = 0xE600000000000000;
      v8 = 0x3E656E6F6E3CLL;
      v10 = 0uLL;
      v11 = 0uLL;
    }

    v13[0] = v8;
    v13[1] = v7;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    sub_2381554DC();
    sub_23808E858(v13);
    MEMORY[0x2383E9410](41, 0xE100000000000000);
    return v17;
  }
}

BOOL sub_238088A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v4 = v2 == 3 && (*(a2 + 8) | *a2 | *(a2 + 16) | *(a2 + 24) | *(a2 + 32) | *(a2 + 40) | *(a2 + 48) | *(a2 + 56)) == 0;
  if (*(a1 + 64) == 2)
  {
    v4 = v2 == 2;
  }

  v5 = v2 == 0;
  if (*(a1 + 64))
  {
    v5 = v2 == 1;
  }

  if (*(a1 + 64) <= 1u)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

id sub_238088AD0()
{
  result = [objc_allocWithZone(type metadata accessor for DDDeviceAccessController()) init];
  qword_27DEF3190 = result;
  return result;
}

void sub_238088B04(uint64_t a1)
{
  if (qword_27DEEA028 != -1)
  {
    swift_once();
  }

  v3 = sub_23815293C();
  __swift_project_value_buffer(v3, qword_27DEEB040);
  sub_23808E888(a1, v22);
  v4 = v1;
  v5 = sub_23815291C();
  v6 = sub_2381550FC();
  sub_23808E828(a1);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315394;
    v9 = sub_23808884C();
    v11 = sub_238085EAC(v9, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v22[2] = v18;
    v22[3] = v19;
    v23 = v20;
    v22[0] = v16;
    v22[1] = v17;
    v12 = sub_23808884C();
    v14 = v13;
    sub_23808E828(v22);
    v15 = sub_238085EAC(v12, v14, &v21);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_238060000, v5, v6, "currentState changed from %s to %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383EA8A0](v8, -1, -1);
    MEMORY[0x2383EA8A0](v7, -1, -1);
  }
}

__n128 sub_238088D20@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  result = v6;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

id sub_238088DC0()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB0F0, &unk_2381593D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - v5;
  v7 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID];
  *v9 = 0;
  v9[1] = 0;
  v10 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices] = MEMORY[0x277D84F90];
  v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role] = 0;
  v11 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_serviceName];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier];
  *v12 = 0;
  v12[1] = 0;
  v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_controllerStarted] = 0;
  v13 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentDevices;
  *&v0[v13] = sub_2380EE4C8(v10);
  *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest] = 0;
  *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery] = 0;
  v14 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController__currentState;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v24 = 3;
  sub_238152A5C();
  (*(v3 + 32))(&v0[v14], v6, v2);
  sub_2380BDAE8();
  v15 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_localDeviceName];
  *v15 = v16;
  v15[1] = v17;
  v19.receiver = v0;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

void sub_238088FC4()
{
  v1 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID];
  if (*&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID + 8] && (v2 = v0, *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_serviceName + 8]))
  {
    v3 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery;
    if (*&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery])
    {
      if (qword_27DEEA028 != -1)
      {
        swift_once();
      }

      v4 = sub_23815293C();
      __swift_project_value_buffer(v4, qword_27DEEB040);
      v5 = sub_23815291C();
      v6 = sub_2381550DC();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_238060000, v5, v6, "Invalidating existing discovery before starting new one.", v7, 2u);
        MEMORY[0x2383EA8A0](v7, -1, -1);
      }

      v8 = *&v2[v3];
      if (v8)
      {
        [v8 invalidate];
        v9 = *&v2[v3];
      }

      else
      {
        v9 = 0;
      }

      *&v2[v3] = 0;
    }

    sub_2380BDAE8();
    v13 = &v2[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_localDeviceName];
    v14 = *&v2[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_localDeviceName + 8];
    *v13 = v15;
    v13[1] = v16;

    if (qword_27DEEA028 != -1)
    {
      swift_once();
    }

    v17 = sub_23815293C();
    __swift_project_value_buffer(v17, qword_27DEEB040);
    v18 = v2;
    v19 = sub_23815291C();
    v20 = sub_2381550FC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 136315138;
      oslog = v1;
      aBlock[0] = v22;
      v23 = v18;
      v24 = v3;
      v25 = *v13;
      v26 = v13[1];

      v27 = sub_238085EAC(v25, v26, aBlock);
      v3 = v24;

      *(v21 + 4) = v27;
      v18 = v23;
      v1 = oslog;
      _os_log_impl(&dword_238060000, v19, v20, "Starting DDDeviceAccessController with device name: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x2383EA8A0](v22, -1, -1);
      MEMORY[0x2383EA8A0](v21, -1, -1);
    }

    v28 = sub_2380895BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2381590E0;
    *(v29 + 32) = v28;
    objc_allocWithZone(MEMORY[0x277D04748]);
    v30 = v28;
    v31 = sub_23808E8C0();
    v32 = *&v2[v3];
    *&v2[v3] = v31;

    v33 = *&v2[v3];
    if (v33)
    {
      if (v1[1].isa)
      {
        v34.isa = v1->isa;
        v35 = v33;

        v36 = sub_238154C8C();
      }

      else
      {
        v35 = v33;
        v36 = 0;
      }

      [v35 setBundleID_];

      v37 = *&v2[v3];
      if (v37)
      {
        v38 = v37;
        [v38 setFlags_];

        v39 = *&v2[v3];
        if (v39)
        {
          v40 = *v13;
          v41 = v13[1];
          v42 = v39;

          v43 = sub_238154C8C();

          [v42 setDeviceOTANameToBroadcast_];

          v44 = *&v2[v3];
          if (v44)
          {
            v45 = swift_allocObject();
            swift_unknownObjectWeakInit();
            aBlock[4] = sub_23808EA80;
            aBlock[5] = v45;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_23808BDF8;
            aBlock[3] = &block_descriptor_20;
            v46 = _Block_copy(aBlock);
            v47 = v44;

            [v47 setEventHandler_];
            _Block_release(v46);

            v48 = *&v2[v3];
            if (v48)
            {
              v49 = v48;
              [v49 activate];
            }
          }
        }
      }
    }

    v18[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_controllerStarted] = 1;
  }

  else
  {
    if (qword_27DEEA028 != -1)
    {
      swift_once();
    }

    v10 = sub_23815293C();
    __swift_project_value_buffer(v10, qword_27DEEB040);
    osloga = sub_23815291C();
    v11 = sub_2381550DC();
    if (os_log_type_enabled(osloga, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_238060000, osloga, v11, "Error starting device access discovery with no bundle id or service name.", v12, 2u);
      MEMORY[0x2383EA8A0](v12, -1, -1);
    }
  }
}

id sub_2380895BC()
{
  v1 = v0;
  v2 = sub_2381527EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D04750]) init];
  if (*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID + 8))
  {
    v8 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
    v9 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID + 8);

    v10 = sub_238154C8C();
  }

  else
  {
    v10 = 0;
  }

  [v7 setBundleID_];

  sub_2381527DC();
  sub_23815279C();
  (*(v3 + 8))(v6, v2);
  v11 = sub_238154C8C();

  [v7 setAssociationIdentifier_];

  if (*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName + 8))
  {
    v12 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName);
    v13 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName + 8);

    v14 = sub_238154C8C();
  }

  else
  {
    v14 = 0;
  }

  [v7 setDisplayName_];

  [v7 setFlags_];
  if (*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_serviceName + 8))
  {
    v15 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_serviceName);
    v16 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_serviceName + 8);

    v17 = sub_238154C8C();
  }

  else
  {
    v17 = 0;
  }

  [v7 setWifiAwareServiceName_];

  v18 = objc_allocWithZone(MEMORY[0x277D04778]);
  v19 = sub_238154C8C();
  v20 = [v18 initWithString:v19 compareOptions:2];

  [v7 setWifiAwareVendorNameMatch_];
  if (*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role))
  {
    v21 = 20;
  }

  else
  {
    v21 = 10;
  }

  [v7 setWifiAwareServiceType_];
  return v7;
}

void sub_2380898A4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_238089900(a1);
  }
}

void sub_238089900(void *a1)
{
  v2 = v1;
  v4 = [a1 eventType];
  if (v4 > 41)
  {
    if (v4 > 55)
    {
      if (v4 == 56)
      {
        if (qword_27DEEA028 != -1)
        {
          swift_once();
        }

        v105 = sub_23815293C();
        __swift_project_value_buffer(v105, qword_27DEEB040);
        v106 = sub_23815291C();
        v107 = sub_2381550FC();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          *v108 = 0;
          _os_log_impl(&dword_238060000, v106, v107, "DAEvent wiFiAwarePairingRequest", v108, 2u);
          MEMORY[0x2383EA8A0](v108, -1, -1);
        }

        objc_opt_self();
        v109 = swift_dynamicCastObjCClass();
        if (!v109)
        {
          sub_23815541C();
          MEMORY[0x2383E9410](0xD00000000000005DLL, 0x8000000238161780);
          v254 = [a1 description];
          v255 = sub_238154CCC();
          v257 = v256;

          MEMORY[0x2383E9410](v255, v257);

          sub_2381554EC();
          __break(1u);
          return;
        }

        v110 = v109;
        oslog = a1;
        v111 = sub_23815291C();
        v112 = sub_2381550FC();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&dword_238060000, v111, v112, "Calling handleWiFiAwarePairingRequest", v113, 2u);
          MEMORY[0x2383EA8A0](v113, -1, -1);
        }

        sub_23808E034(v110);
        goto LABEL_104;
      }

      if (v4 != 60)
      {
        return;
      }

      if (qword_27DEEA028 != -1)
      {
        swift_once();
      }

      v34 = sub_23815293C();
      __swift_project_value_buffer(v34, qword_27DEEB040);
      oslog = sub_23815291C();
      v6 = sub_2381550FC();
      if (!os_log_type_enabled(oslog, v6))
      {
        goto LABEL_104;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "DAEvent xpcInterrupted";
      goto LABEL_36;
    }

    if (v4 != 42)
    {
      if (v4 != 50)
      {
        return;
      }

      if (qword_27DEEA028 != -1)
      {
        swift_once();
      }

      v9 = sub_23815293C();
      __swift_project_value_buffer(v9, qword_27DEEB040);
      v10 = a1;
      oslog = sub_23815291C();
      v11 = sub_2381550FC();

      if (!os_log_type_enabled(oslog, v11))
      {
        goto LABEL_104;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v294 = v13;
      *v12 = 136315138;
      v14 = v10;
      v15 = [v14 description];
      v16 = sub_238154CCC();
      v18 = v17;

      v19 = sub_238085EAC(v16, v18, &v294);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_238060000, oslog, v11, "DAEvent devicesPresentChanged %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x2383EA8A0](v13, -1, -1);
      MEMORY[0x2383EA8A0](v12, -1, -1);
      goto LABEL_101;
    }

    if (qword_27DEEA028 != -1)
    {
      swift_once();
    }

    v36 = sub_23815293C();
    __swift_project_value_buffer(v36, qword_27DEEB040);
    v37 = sub_23815291C();
    v38 = sub_2381550FC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_238060000, v37, v38, "DAEvent deviceChanged", v39, 2u);
      MEMORY[0x2383EA8A0](v39, -1, -1);
    }

    objc_opt_self();
    v40 = swift_dynamicCastObjCClass();
    oslog = a1;
    if (v40)
    {
      v41 = [v40 device];
      v42 = [v41 identifier];
      if (v42)
      {
        v43 = v42;
        v44 = sub_238154CCC();
        v46 = v45;

        v47 = [v41 wifiAwareOTAName];
        if (v47)
        {
          v48 = v47;
          v281 = sub_238154CCC();
          v282 = v49;

          v50 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentDevices;
          swift_beginAccess();

          v51 = v41;
          v52 = *(&v2->isa + v50);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v289 = *(v2 + v50);
          *(&v2->isa + v50) = 0x8000000000000000;
          sub_2380C73E4(v51, v44, v46, isUniquelyReferenced_nonNull_native);

          *(&v2->isa + v50) = v289;
          swift_endAccess();
          v54 = v51;
          v55 = sub_23815291C();
          v56 = sub_2381550FC();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = v2;
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            *v58 = 138412290;
            *(v58 + 4) = v54;
            *v59 = v54;
            v60 = v54;
            _os_log_impl(&dword_238060000, v55, v56, "Device changed: %@", v58, 0xCu);
            sub_238071284(v59, &unk_27DEECA10, &qword_2381588F0);
            MEMORY[0x2383EA8A0](v59, -1, -1);
            v61 = v58;
            v2 = v57;
            MEMORY[0x2383EA8A0](v61, -1, -1);
          }

          v62 = *(&v2[1].isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
          if (v62)
          {
            log = v2;
            v277 = *(&v2->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);

            v63 = [v54 appAccessInfoMap];
            if (v63)
            {
              v64 = v63;
              v275 = v44;
              v279 = v46;
              sub_23807A3F8(0, &qword_27DEEB100, 0x277D04730);
              v65 = sub_238154C1C();

              v66 = 1 << *(v65 + 32);
              v67 = -1;
              if (v66 < 64)
              {
                v67 = ~(-1 << v66);
              }

              v68 = v67 & *(v65 + 64);
              v69 = (v66 + 63) >> 6;

              v70 = 0;
              while (v68)
              {
                v71 = v70;
LABEL_56:
                v72 = __clz(__rbit64(v68));
                v68 &= v68 - 1;
                v73 = v72 | (v71 << 6);
                v74 = (*(v65 + 48) + 16 * v73);
                v75 = *v74;
                v76 = v74[1];
                v77 = *(*(v65 + 56) + 8 * v73);

                v78 = v77;
                sub_23808D450(v75, v76, v78, v277, v62, log, v281, v282, v54, v275, v279);
              }

              while (1)
              {
                v71 = v70 + 1;
                if (__OFADD__(v70, 1))
                {
                  break;
                }

                if (v71 >= v69)
                {

                  return;
                }

                v68 = *(v65 + 64 + 8 * v71);
                ++v70;
                if (v68)
                {
                  v70 = v71;
                  goto LABEL_56;
                }
              }

              __break(1u);
LABEL_202:
              __break(1u);
              goto LABEL_203;
            }
          }

          if (![v54 state])
          {
            v140 = v54;
            v141 = sub_23815291C();
            v142 = sub_2381550DC();

            if (os_log_type_enabled(v141, v142))
            {
              v143 = v2;
              v144 = swift_slowAlloc();
              v145 = swift_slowAlloc();
              *&v294 = v145;
              *v144 = 136315138;
              v146 = [v140 wifiAwareOTAName];
              if (v146)
              {
                v147 = v146;
                v148 = sub_238154CCC();
                v150 = v149;
              }

              else
              {
                v150 = 0xEE00656369766544;
                v148 = 0x206E776F6E6B6E55;
              }

              v251 = sub_238085EAC(v148, v150, &v294);

              *(v144 + 4) = v251;
              _os_log_impl(&dword_238060000, v141, v142, "Pairing failed for %s", v144, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v145);
              MEMORY[0x2383EA8A0](v145, -1, -1);
              MEMORY[0x2383EA8A0](v144, -1, -1);

              v2 = v143;
            }

            else
            {
            }

            sub_23808EA88();
            v252 = swift_allocError();
            swift_getKeyPath();
            swift_getKeyPath();
            sub_238152A8C();

            v296 = v291;
            v297 = v292;
            v298 = v293;
            v294 = v289;
            v295 = v290;
            swift_getKeyPath();
            swift_getKeyPath();
            v2;
            v253 = v252;
            sub_238152A9C();
            sub_238088B04(&v294);
            sub_23808E828(&v294);

            goto LABEL_199;
          }

          return;
        }
      }

      v128 = v41;
      v123 = sub_23815291C();
      v129 = sub_2381550DC();

      if (os_log_type_enabled(v123, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        *v130 = 138412290;
        *(v130 + 4) = v128;
        *v131 = v128;
        logb = v128;
        v132 = "Device changed without expected identifier and name information %@";
LABEL_92:
        _os_log_impl(&dword_238060000, v123, v129, v132, v130, 0xCu);
        sub_238071284(v131, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v131, -1, -1);
        v127 = v130;
        goto LABEL_93;
      }

LABEL_94:

      goto LABEL_103;
    }

    loga = sub_23815291C();
    v114 = sub_2381550DC();

    if (!os_log_type_enabled(loga, v114))
    {
      goto LABEL_83;
    }

    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *v115 = 138412290;
    *(v115 + 4) = oslog;
    *v116 = oslog;
    v117 = oslog;
    v118 = "Received device changed event but the event object cannot be cast to device event %@";
LABEL_82:
    _os_log_impl(&dword_238060000, loga, v114, v118, v115, 0xCu);
    sub_238071284(v116, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v116, -1, -1);
    MEMORY[0x2383EA8A0](v115, -1, -1);
    goto LABEL_83;
  }

  if (v4 <= 39)
  {
    if (v4 != 10)
    {
      if (v4 != 20)
      {
        return;
      }

      if (qword_27DEEA028 != -1)
      {
        swift_once();
      }

      v5 = sub_23815293C();
      __swift_project_value_buffer(v5, qword_27DEEB040);
      oslog = sub_23815291C();
      v6 = sub_2381550FC();
      if (!os_log_type_enabled(oslog, v6))
      {
        goto LABEL_104;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "DAEvent invalidated";
      goto LABEL_36;
    }

    if (qword_27DEEA028 == -1)
    {
LABEL_34:
      v35 = sub_23815293C();
      __swift_project_value_buffer(v35, qword_27DEEB040);
      oslog = sub_23815291C();
      v6 = sub_2381550FC();
      if (!os_log_type_enabled(oslog, v6))
      {
LABEL_104:
        v121 = oslog;
        goto LABEL_105;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "DAEvent activated";
LABEL_36:
      _os_log_impl(&dword_238060000, oslog, v6, v8, v7, 2u);
      MEMORY[0x2383EA8A0](v7, -1, -1);
      goto LABEL_104;
    }

LABEL_203:
    swift_once();
    goto LABEL_34;
  }

  if (v4 != 40)
  {
    if (qword_27DEEA028 != -1)
    {
      swift_once();
    }

    v20 = sub_23815293C();
    __swift_project_value_buffer(v20, qword_27DEEB040);
    v21 = sub_23815291C();
    v22 = sub_2381550FC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_238060000, v21, v22, "DAEvent deviceLost", v23, 2u);
      MEMORY[0x2383EA8A0](v23, -1, -1);
    }

    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    oslog = a1;
    if (v24)
    {
      v25 = [v24 device];
      v26 = [v25 identifier];
      if (v26)
      {
        v27 = v26;
        v28 = sub_238154CCC();
        v30 = v29;

        swift_beginAccess();
        v31 = sub_2380E7C8C(v28, v30);
        swift_endAccess();

        v32 = (&v2->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier);
        v33 = *(&v2[1].isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier);
        if (v33)
        {
          if (v28 == *v32 && v33 == v30)
          {

            goto LABEL_98;
          }

          v133 = sub_2381555CC();

          if (v133)
          {
LABEL_98:
            v134 = v32[1];
            *v32 = 0;
            v32[1] = 0;

            v135 = [oslog error];
            if (v135)
            {
              v136 = v135;
              swift_getKeyPath();
              swift_getKeyPath();
              v137 = v136;
              sub_238152A8C();

              v296 = v291;
              v297 = v292;
              v298 = v293;
              v294 = v289;
              v295 = v290;
              swift_getKeyPath();
              swift_getKeyPath();
              v138 = v2;
              v139 = v137;
              sub_238152A9C();
              sub_238088B04(&v294);
              sub_23808E828(&v294);

LABEL_166:
            }

            else
            {
            }

            return;
          }
        }

        else
        {
        }

LABEL_101:
        return;
      }

      v122 = v25;
      v123 = sub_23815291C();
      v124 = sub_2381550DC();

      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *v125 = 138412290;
        *(v125 + 4) = v122;
        *v126 = v122;
        logb = v122;
        _os_log_impl(&dword_238060000, v123, v124, "Device lost with no identifier %@", v125, 0xCu);
        sub_238071284(v126, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v126, -1, -1);
        v127 = v125;
LABEL_93:
        MEMORY[0x2383EA8A0](v127, -1, -1);

        v121 = logb;
        goto LABEL_105;
      }

LABEL_103:
      goto LABEL_104;
    }

    loga = sub_23815291C();
    v114 = sub_2381550DC();

    if (os_log_type_enabled(loga, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v115 = 138412290;
      *(v115 + 4) = oslog;
      *v116 = oslog;
      v120 = oslog;
      v118 = "Received device lost event but the event object cannot be cast to device event %@";
      goto LABEL_82;
    }

LABEL_83:
    v121 = loga;
LABEL_105:

    return;
  }

  if (qword_27DEEA028 != -1)
  {
    swift_once();
  }

  v79 = sub_23815293C();
  __swift_project_value_buffer(v79, qword_27DEEB040);
  v80 = sub_23815291C();
  v81 = sub_2381550FC();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_238060000, v80, v81, "DAEvent deviceFound", v82, 2u);
    MEMORY[0x2383EA8A0](v82, -1, -1);
  }

  objc_opt_self();
  v83 = swift_dynamicCastObjCClass();
  oslog = a1;
  if (!v83)
  {
    loga = sub_23815291C();
    v114 = sub_2381550DC();

    if (!os_log_type_enabled(loga, v114))
    {
      goto LABEL_83;
    }

    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *v115 = 138412290;
    *(v115 + 4) = oslog;
    *v116 = oslog;
    v119 = oslog;
    v118 = "Received device found event but the event object cannot be cast to device event %@";
    goto LABEL_82;
  }

  v84 = [v83 device];
  v85 = [v84 identifier];
  if (!v85)
  {
    goto LABEL_90;
  }

  v86 = v85;
  v87 = sub_238154CCC();
  v89 = v88;

  v90 = [v84 wifiAwareOTAName];
  if (!v90)
  {

LABEL_90:
    v128 = v84;
    v123 = sub_23815291C();
    v129 = sub_2381550DC();

    if (os_log_type_enabled(v123, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v130 = 138412290;
      *(v130 + 4) = v128;
      *v131 = v128;
      logb = v128;
      v132 = "Device found without expected identifier and name information %@";
      goto LABEL_92;
    }

    goto LABEL_94;
  }

  v283 = v89;
  v91 = v90;
  v276 = sub_238154CCC();
  v280 = v92;

  v93 = v84;
  v94 = sub_23815291C();
  v95 = sub_2381550FC();

  v278 = v87;
  if (os_log_type_enabled(v94, v95))
  {
    v96 = v2;
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *&v294 = v99;
    *v97 = 136315394;
    v100 = [v93 wifiAwareOTAName];
    if (v100)
    {
      v101 = v100;
      v102 = sub_238154CCC();
      v104 = v103;
    }

    else
    {
      v102 = 0xD000000000000010;
      v104 = 0x80000002381617E0;
    }

    v151 = sub_238085EAC(v102, v104, &v294);

    *(v97 + 4) = v151;
    *(v97 + 12) = 2112;
    *(v97 + 14) = v93;
    *v98 = v93;
    v152 = v93;
    _os_log_impl(&dword_238060000, v94, v95, "Got deviceFound event for %s: %@", v97, 0x16u);
    sub_238071284(v98, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v98, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v99);
    MEMORY[0x2383EA8A0](v99, -1, -1);
    MEMORY[0x2383EA8A0](v97, -1, -1);

    v2 = v96;
    v87 = v278;
  }

  else
  {
  }

  v153 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentDevices;
  swift_beginAccess();
  v154 = v93;

  v155 = *(&v2->isa + v153);
  v156 = swift_isUniquelyReferenced_nonNull_native();
  *&v289 = *(v2 + v153);
  *(&v2->isa + v153) = 0x8000000000000000;
  sub_2380C73E4(v154, v87, v283, v156);

  *(&v2->isa + v153) = v289;
  swift_endAccess();
  v157 = v154;
  v158 = sub_23815291C();
  v159 = sub_2381550FC();

  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    *&v294 = v161;
    *v160 = 136315138;
    v162 = [v157 appAccessInfoMap];
    if (v162)
    {
      v163 = v162;
      sub_23807A3F8(0, &qword_27DEEB100, 0x277D04730);
      v164 = sub_238154C1C();
    }

    else
    {
      v164 = 0;
    }

    *&v289 = v164;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB108, &qword_2381593E0);
    v165 = sub_238154D1C();
    v167 = sub_238085EAC(v165, v166, &v294);

    *(v160 + 4) = v167;
    _os_log_impl(&dword_238060000, v158, v159, "appAccessInfoMap info: %s", v160, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v161);
    MEMORY[0x2383EA8A0](v161, -1, -1);
    MEMORY[0x2383EA8A0](v160, -1, -1);
  }

  v168 = *(&v2[1].isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
  if (!v168)
  {
    goto LABEL_168;
  }

  logc = v2;
  v169 = *(&v2->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);

  v170 = [v157 appAccessInfoMap];
  if (!v170)
  {

    v2 = logc;
LABEL_168:
    if (*(&v2->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_238152A8C();

      v296 = v291;
      v297 = v292;
      v298 = v293;
      v294 = v289;
      v295 = v290;
      swift_getKeyPath();
      swift_getKeyPath();
      v212 = v2;

      sub_238152A9C();
      sub_238088B04(&v294);
      sub_23808E828(&v294);

      v213 = (v212 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier);
      v214 = *(&v212[1].isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier);
      *v213 = v278;
      v213[1] = v283;

      v215 = [v157 wifiAwareOTAName];
      if (v215)
      {
        v216 = v215;
        v217 = sub_238154CCC();
        v219 = v218;
      }

      else
      {
        v217 = 0;
        v219 = 0;
      }

      v230 = (v212 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName);
      v231 = *(&v212[1].isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName);
      *v230 = v217;
      v230[1] = v219;

      v232 = [v157 signature];
      v233 = v212 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature;
      *v233 = v232;
      v233[8] = 0;
    }

    else
    {
    }

    v234 = [v157 signature];
    v235 = v157;
    v236 = *(&v2->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature);
    v237 = *(&v2[1].isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature);
    v140 = v235;
    v220 = sub_23815291C();
    if ((v237 & 1) == 0 && v234 == v236)
    {
      v238 = sub_2381550FC();
      if (os_log_type_enabled(v220, v238))
      {
        v239 = swift_slowAlloc();
        v240 = swift_slowAlloc();
        *v239 = 138412546;
        *(v239 + 4) = v140;
        *v240 = v140;
        *(v239 + 12) = 2048;
        *(v239 + 14) = [v140 signature];
        _os_log_impl(&dword_238060000, v220, v238, "Found non-system paired device that matches active pairing device signature: %@, %ld", v239, 0x16u);
        sub_238071284(v240, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v240, -1, -1);
        MEMORY[0x2383EA8A0](v239, -1, -1);
      }

      else
      {
LABEL_197:

        v220 = v140;
      }

LABEL_198:

      sub_23808C2CC(v140);
      goto LABEL_199;
    }

    v241 = sub_2381550DC();

    if (os_log_type_enabled(v220, v241))
    {
      v242 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      *v242 = 138412290;
      *(v242 + 4) = v140;
      *v243 = v140;
      v140 = v140;
      _os_log_impl(&dword_238060000, v220, v241, "Got deviceFound event for %@ but the device does not match the active pairing device", v242, 0xCu);
      sub_238071284(v243, &unk_27DEECA10, &qword_2381588F0);
      v244 = v243;
      goto LABEL_184;
    }

    goto LABEL_193;
  }

  v171 = v170;
  v274 = v157;
  sub_23807A3F8(0, &qword_27DEEB100, 0x277D04730);
  v172 = sub_238154C1C();

  v173 = 1 << *(v172 + 32);
  v174 = -1;
  if (v173 < 64)
  {
    v174 = ~(-1 << v173);
  }

  v175 = v174 & *(v172 + 64);
  v273 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role;
  v272 = logc + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature;
  v271 = (logc + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier);
  v270 = (&logc->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName);
  v176 = (v173 + 63) >> 6;

  v177 = 0;
  v178 = 0;
  while (v175)
  {
LABEL_134:
    v180 = __clz(__rbit64(v175));
    v175 &= v175 - 1;
    v181 = v180 | (v177 << 6);
    v182 = (*(v172 + 48) + 16 * v181);
    v183 = *(*(v172 + 56) + 8 * v181);
    if (*v182 != v169 || v168 != v182[1])
    {
      v185 = v182[1];
      if ((sub_2381555CC() & 1) == 0)
      {
        continue;
      }
    }

    v186 = v183;
    v187 = [v186 state];
    if (v187)
    {
      if (v187 == 10)
      {
        v269 = v186;
        if ((*(&logc->isa + v273) & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_238152A8C();

          v296 = v291;
          v297 = v292;
          v298 = v293;
          v294 = v289;
          v295 = v290;
          swift_getKeyPath();
          swift_getKeyPath();
          *&v289 = v276;
          *(&v289 + 1) = v280;
          v293 = 0;
          v188 = logc;

          sub_238152A9C();
          sub_238088B04(&v294);
          sub_23808E828(&v294);
        }

        v189 = v271[1];
        *v271 = v278;
        v271[1] = v283;

        v190 = v274;
        v191 = [v274 wifiAwareOTAName];
        if (v191)
        {
          v192 = v191;
          v267 = sub_238154CCC();
          v194 = v193;

          v195 = v194;
          v190 = v274;
          v196 = v267;
        }

        else
        {
          v196 = 0;
          v195 = 0;
        }

        v207 = v270[1];
        *v270 = v196;
        v270[1] = v195;

        *v272 = [v190 signature];
        v272[8] = 0;
LABEL_155:

        goto LABEL_163;
      }

LABEL_162:

LABEL_163:

      v178 = 1;
    }

    else
    {
      v269 = v186;
      if (*(&logc->isa + v273))
      {
        v197 = v274;
        v259 = sub_23815291C();
        v198 = sub_2381550FC();

        if (os_log_type_enabled(v259, v198))
        {
          bufa = swift_slowAlloc();
          v258 = swift_slowAlloc();
          *bufa = 138412290;
          *(bufa + 4) = v197;
          *v258 = v274;
          v199 = v197;
          _os_log_impl(&dword_238060000, v259, v198, "Found previously system paired device %@ for existing bundleID, calling to initiate authorization", bufa, 0xCu);
          sub_238071284(v258, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v258, -1, -1);
          MEMORY[0x2383EA8A0](bufa, -1, -1);
        }

        sub_23808C2CC(v197);
        goto LABEL_155;
      }

      v200 = [v274 signature];
      v260 = *v272;
      buf = v200;
      v201 = v272[8];
      v268 = v274;
      v202 = sub_23815291C();
      if ((v201 & 1) == 0 && buf == v260)
      {
        v261 = sub_2381550FC();
        if (os_log_type_enabled(v202, v261))
        {
          bufb = v202;
          v203 = swift_slowAlloc();
          v204 = swift_slowAlloc();
          *v203 = 138412546;
          *(v203 + 4) = v268;
          *v204 = v274;
          *(v203 + 12) = 2048;
          *(v203 + 14) = [v268 signature];
          _os_log_impl(&dword_238060000, bufb, v261, "Found device that matches active pairing device signature for existing bundleID: %@, %ld", v203, 0x16u);
          sub_238071284(v204, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v204, -1, -1);
          v205 = v203;
          v206 = bufb;
          MEMORY[0x2383EA8A0](v205, -1, -1);
        }

        else
        {

          v206 = v268;
        }

        v186 = v269;

        sub_23808C2CC(v268);
        goto LABEL_162;
      }

      v208 = sub_2381550DC();

      v262 = v208;
      if (os_log_type_enabled(v202, v208))
      {
        v209 = swift_slowAlloc();
        bufc = v202;
        v210 = swift_slowAlloc();
        *v209 = 138412290;
        *(v209 + 4) = v268;
        *v210 = v274;
        v211 = v268;
        _os_log_impl(&dword_238060000, bufc, v262, "Got deviceFound event for %@ with existing bundleID but the device does not match the active pairing device", v209, 0xCu);
        sub_238071284(v210, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v210, -1, -1);
        MEMORY[0x2383EA8A0](v209, -1, -1);
      }

      else
      {
      }

      v178 = 1;
    }
  }

  v139 = v274;
  while (1)
  {
    v179 = v177 + 1;
    if (__OFADD__(v177, 1))
    {
      goto LABEL_202;
    }

    if (v179 >= v176)
    {
      break;
    }

    v175 = *(v172 + 64 + 8 * v179);
    ++v177;
    if (v175)
    {
      v177 = v179;
      goto LABEL_134;
    }
  }

  if (v178)
  {

    goto LABEL_166;
  }

  if (*(&logc->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role) == 1)
  {
    v140 = v274;
    v220 = sub_23815291C();
    v221 = sub_2381550FC();

    if (!os_log_type_enabled(v220, v221))
    {
      goto LABEL_198;
    }

    v222 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    *v222 = 138412290;
    *(v222 + 4) = v140;
    *v223 = v274;
    v224 = v140;
    v225 = "Found previously system paired device %@ for new bundleID, calling to initiate authorization";
    v226 = v221;
    v227 = v220;
    v228 = v222;
    v229 = 12;
LABEL_190:
    _os_log_impl(&dword_238060000, v227, v226, v225, v228, v229);
    sub_238071284(v223, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v223, -1, -1);
    MEMORY[0x2383EA8A0](v222, -1, -1);
    goto LABEL_198;
  }

  v245 = [v274 signature];
  v246 = *(&logc->isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature);
  v247 = *(&logc[1].isa + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature);
  v140 = v274;
  v220 = sub_23815291C();
  if ((v247 & 1) == 0 && v245 == v246)
  {
    v248 = sub_2381550FC();
    if (!os_log_type_enabled(v220, v248))
    {
      goto LABEL_197;
    }

    v222 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    *v222 = 138412546;
    *(v222 + 4) = v140;
    *v223 = v274;
    *(v222 + 12) = 2048;
    *(v222 + 14) = [v140 signature];
    v225 = "Found device that matches active pairing device signature for new bundleID: %@, %ld";
    v226 = v248;
    v227 = v220;
    v228 = v222;
    v229 = 22;
    goto LABEL_190;
  }

  v249 = sub_2381550DC();

  if (!os_log_type_enabled(v220, v249))
  {
LABEL_193:

    goto LABEL_101;
  }

  v242 = swift_slowAlloc();
  v250 = swift_slowAlloc();
  *v242 = 138412290;
  *(v242 + 4) = v140;
  *v250 = v274;
  v140 = v140;
  _os_log_impl(&dword_238060000, v220, v249, "Got deviceFound event for %@ with new bundleID but the device does not match the active pairing device", v242, 0xCu);
  sub_238071284(v250, &unk_27DEECA10, &qword_2381588F0);
  v244 = v250;
LABEL_184:
  MEMORY[0x2383EA8A0](v244, -1, -1);
  MEMORY[0x2383EA8A0](v242, -1, -1);

LABEL_199:
}

void sub_23808BDF8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_23808BE60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_238152BAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = sub_23812F9BC();
  if (v13)
  {
    v14 = (v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName);
    v15 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName + 8);
    *v14 = v12;
    v14[1] = v13;

    v16 = sub_23812FBA4();
    v17 = v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature;
    *v17 = v16;
    *(v17 + 8) = v18 & 1;

    sub_238088FC4();
  }

  else
  {
    if (qword_27DEEA028 != -1)
    {
      swift_once();
    }

    v19 = sub_23815293C();
    __swift_project_value_buffer(v19, qword_27DEEB040);
    v20 = *(v5 + 16);
    v20(v11, a1, v4);
    v21 = sub_23815291C();
    v22 = sub_2381550DC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315138;
      v20(v9, v11, v4);
      v25 = sub_238154D2C();
      v27 = v26;
      (*(v5 + 8))(v11, v4);
      v28 = sub_238085EAC(v25, v27, &v30);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_238060000, v21, v22, "No name for endpoint trying to start pairing with: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x2383EA8A0](v24, -1, -1);
      MEMORY[0x2383EA8A0](v23, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }
  }
}

void sub_23808C144()
{
  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_controllerStarted;
  if (v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_controllerStarted] == 1)
  {
    v2 = v0;
    v3 = &v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName];
    v4 = *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName + 8];
    *v3 = 0;
    *(v3 + 1) = 0;

    v5 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices;
    swift_beginAccess();
    v6 = *&v2[v5];
    *&v2[v5] = MEMORY[0x277D84F90];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v15[2] = v12;
    v15[3] = v13;
    v16 = v14;
    v15[0] = v10;
    v15[1] = v11;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v14) = 3;
    v7 = v2;
    sub_238152A9C();
    sub_238088B04(v15);
    sub_23808E828(v15);
    v8 = *&v7[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest];
    *&v7[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest] = 0;

    v9 = *&v7[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery];
    if (v9)
    {
      [v9 invalidate];
    }

    v2[v1] = 0;
  }
}

void sub_23808C2CC(void *a1)
{
  v2 = v1;
  v4 = [a1 discoveryConfiguration];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 wifiAwareOTAName];
    [v5 setDisplayName_];
  }

  if (qword_27DEEA028 != -1)
  {
    swift_once();
  }

  v7 = sub_23815293C();
  __swift_project_value_buffer(v7, qword_27DEEB040);
  v8 = a1;
  v9 = sub_23815291C();
  v10 = sub_2381550FC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v13 = [v8 description];
    v14 = sub_238154CCC();
    v16 = v15;

    v17 = sub_238085EAC(v14, v16, aBlock);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_238060000, v9, v10, "Initiating Pairing: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2383EA8A0](v12, -1, -1);
    MEMORY[0x2383EA8A0](v11, -1, -1);
  }

  v18 = [v8 identifier];
  if (v18)
  {
    v19 = v18;
    v20 = sub_238154CCC();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = (v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier);
  v24 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier + 8);
  *v23 = v20;
  v23[1] = v22;

  [v8 setFlags_];
  if (!*(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID + 8))
  {
    goto LABEL_17;
  }

  v25 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
  v26 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID + 8);

  v27 = [v8 identifier];
  if (!v27)
  {

LABEL_17:
    v45 = sub_23815291C();
    v43 = sub_2381550DC();
    if (os_log_type_enabled(v45, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_238060000, v45, v43, "Unable to initiate pairing without bundleID or identifier", v44, 2u);
      MEMORY[0x2383EA8A0](v44, -1, -1);
    }

    goto LABEL_19;
  }

  v28 = v27;
  v29 = objc_allocWithZone(MEMORY[0x277D04730]);
  v30 = sub_238154C8C();

  v31 = [v29 initWithBundleIdentifier:v30 deviceIdentifier:v28 state:10];

  v32 = sub_2380895BC();
  [v31 setAppDiscoveryConfiguration_];

  v33 = v8;
  v45 = v31;
  v34 = sub_23815291C();
  v35 = sub_2381550FC();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412546;
    *(v36 + 4) = v45;
    *(v36 + 12) = 2112;
    *(v36 + 14) = v33;
    *v37 = v45;
    v37[1] = v33;
    v38 = v33;
    v39 = v45;
    _os_log_impl(&dword_238060000, v34, v35, "Setting appAccessInfo: %@ for %@", v36, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECA10, &qword_2381588F0);
    swift_arrayDestroy();
    MEMORY[0x2383EA8A0](v37, -1, -1);
    MEMORY[0x2383EA8A0](v36, -1, -1);
  }

  v40 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery);
  if (v40)
  {
    aBlock[4] = sub_23808C824;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23808CA44;
    aBlock[3] = &block_descriptor_23;
    v41 = _Block_copy(aBlock);
    v42 = v40;
    [v42 setDeviceAppAccessInfo:v45 device:v33 completionHandler:v41];

    _Block_release(v41);
    return;
  }

LABEL_19:
}

void sub_23808C824(NSObject *a1)
{
  if (qword_27DEEA028 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEEB040);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "Callback from deviceAppAccessInfo", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  if (a1)
  {
    v6 = a1;
    oslog = sub_23815291C();
    v7 = sub_2381550DC();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_238060000, oslog, v7, "Error when initiating pairing to device: %@", v8, 0xCu);
      sub_238071284(v9, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v9, -1, -1);
      MEMORY[0x2383EA8A0](v8, -1, -1);

      v12 = oslog;
    }

    else
    {

      v12 = a1;
    }
  }
}

void sub_23808CA44(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_23808CAB0(char a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_27DEEA028 != -1)
  {
    swift_once();
  }

  v7 = sub_23815293C();
  __swift_project_value_buffer(v7, qword_27DEEB040);

  v8 = sub_23815291C();
  v9 = sub_2381550FC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v66 = v11;
    *v10 = 67109378;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2080;
    v12 = a1;
    if (a3)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0;
    }

    if (a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = 0xE000000000000000;
    }

    v15 = sub_238085EAC(v13, v14, &v66);

    *(v10 + 10) = v15;
    a1 = v12;
    _os_log_impl(&dword_238060000, v8, v9, "Accepting pairing %{BOOL}d and pin %s", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2383EA8A0](v11, -1, -1);
    MEMORY[0x2383EA8A0](v10, -1, -1);
  }

  v16 = *&v3[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest];
  if (v16)
  {
    v17 = v16;
    v18 = sub_23815291C();
    v19 = sub_2381550FC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = v16;
      v22 = v17;
      _os_log_impl(&dword_238060000, v18, v19, "Current pairing request: %@", v20, 0xCu);
      sub_238071284(v21, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v21, -1, -1);
      MEMORY[0x2383EA8A0](v20, -1, -1);
    }

    v23 = [v17 pairingInfo];
    [v23 setAccept_];
    if ((a1 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_238152A8C();

      v68 = v63;
      v69 = v64;
      v70 = v65;
      v66 = aBlock;
      v67 = v62;
      swift_getKeyPath();
      swift_getKeyPath();
      v63 = 0u;
      v64 = 0u;
      aBlock = 0u;
      v62 = 0u;
      v65 = 3;
      v4;
      sub_238152A9C();
      sub_238088B04(&v66);
      sub_23808E828(&v66);
      goto LABEL_34;
    }

    if (v4[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role] == 1)
    {
      v24 = *&v4[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier + 8];
      if (!v24)
      {
        goto LABEL_34;
      }

      v25 = *&v4[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier];
      v26 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentDevices;
      swift_beginAccess();
      v27 = *&v4[v26];
      v28 = *(v27 + 16);

      if (!v28 || (v29 = sub_2380E6CD8(v25, v24), (v30 & 1) == 0))
      {
        swift_endAccess();

LABEL_34:
        v46 = *&v4[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery];
        if (v46)
        {
          v47 = swift_allocObject();
          *(v47 + 16) = v4;
          *(v47 + 24) = a1 & 1;
          *&v63 = sub_23808E9EC;
          *(&v63 + 1) = v47;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v62 = sub_23808CA44;
          *(&v62 + 1) = &block_descriptor_0;
          v48 = _Block_copy(&aBlock);
          v49 = v4;
          v50 = v46;

          [v50 respondToWiFiAwarePairingRequest:v23 completionHandler:v48];

          _Block_release(v48);
        }

        else
        {
        }

        return;
      }

      v31 = *(*(v27 + 56) + 8 * v29);
      swift_endAccess();
      v32 = v31;

      v33 = [v32 wifiAwareOTAName];
      if (v33)
      {
        osloga = v32;
        v34 = a1;
        v35 = v33;
        v36 = sub_238154CCC();
        v38 = v37;

        v39 = [v17 pairingInfo];
        v40 = [v39 passkey];

        if (v40)
        {
          v41 = sub_238154CCC();
          v43 = v42;
        }

        else
        {
          v41 = 0;
          v43 = 0;
        }

        a1 = v34;
        *&v55[0] = v36;
        *(&v55[0] + 1) = v38;
        memset(&v55[1], 0, 32);
        *&v56 = v41;
        *(&v56 + 1) = v43;
        v57 = v55[0];
        v58 = 0u;
        v59 = 0u;
        v60 = v56;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_238152A8C();

        v68 = v63;
        v69 = v64;
        v70 = v65;
        v66 = aBlock;
        v67 = v62;
        swift_getKeyPath();
        swift_getKeyPath();
        aBlock = v55[0];
        v62 = 0u;
        v63 = 0u;
        v64 = v56;
        v65 = 1;
        v4;
        sub_23808EA10(v55, v54);
        sub_238152A9C();
        sub_238088B04(&v66);
        sub_23808E828(&v66);
        sub_23808E858(v55);

        goto LABEL_34;
      }
    }

    else
    {
      if (!a3)
      {
        goto LABEL_34;
      }

      v32 = sub_238154C8C();
      [v23 setPasskey_];
    }

    goto LABEL_34;
  }

  oslogb = sub_23815291C();
  v44 = sub_2381550DC();
  if (os_log_type_enabled(oslogb, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_238060000, oslogb, v44, "No current WiFi Aware pairing request to respond to", v45, 2u);
    MEMORY[0x2383EA8A0](v45, -1, -1);
  }
}

void sub_23808D200(void *a1, uint64_t a2, char a3)
{
  if (qword_27DEEA028 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEEB040);
  v7 = a1;
  v8 = sub_23815291C();
  v9 = sub_2381550FC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    v12 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB0E0, &qword_238159370);
    v13 = sub_238154D1C();
    v15 = sub_238085EAC(v13, v14, &v23);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_238060000, v8, v9, "Responded to pairing request. Error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2383EA8A0](v11, -1, -1);
    MEMORY[0x2383EA8A0](v10, -1, -1);
  }

  if ((*(a2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role) & 1) == 0 && (a3 & 1) == 0)
  {
    v16 = sub_23815291C();
    v17 = sub_2381550FC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_238060000, v16, v17, "Invalidating discovery since pairing was cancelled", v18, 2u);
      MEMORY[0x2383EA8A0](v18, -1, -1);
    }

    v19 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery;
    v20 = *(a2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_discovery);
    if (v20)
    {
      [v20 invalidate];
      v21 = *(a2 + v19);
    }

    else
    {
      v21 = 0;
    }

    *(a2 + v19) = 0;

    v22 = *(a2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest);
    *(a2 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest) = 0;
  }
}

void sub_23808D450(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  *(&v110 + 1) = a8;
  *&v110 = a7;
  v112 = a6;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB110, &qword_2381593E8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v107 - v18;
  v20 = sub_238154B6C();
  v111 = *(v20 - 8);
  v21 = *(v111 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED890, &qword_2381593F0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v107 - v29;
  if ((a1 != a4 || a2 != a5) && (sub_2381555CC() & 1) == 0)
  {
    return;
  }

  v31 = [a3 state];
  if (v31 > 19)
  {
    if (v31 != 20 && v31 != 25)
    {
      return;
    }

    *(&v110 + 1) = v20;
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = v112;
    sub_238152A8C();

    v120 = v115;
    v121 = v116;
    v122 = v117;
    v118 = v113;
    v119 = v114;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v113 = 0;
    v117 = 2;
    v45 = v44;
    sub_238152A9C();
    sub_238088B04(&v118);
    sub_23808E828(&v118);
    v46 = &v45[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier];
    v47 = *&v45[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier + 8];
    *v46 = 0;
    *(v46 + 1) = 0;

    v48 = &v45[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName];
    v49 = *&v45[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName + 8];
    *v48 = 0;
    *(v48 + 1) = 0;

    v50 = &v45[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature];
    *v50 = 0;
    v50[8] = 1;
    sub_23815522C();
    sub_2380712E4(v30, v28, &unk_27DEED890, &qword_2381593F0);
    v51 = sub_238152BAC();
    v52 = *(v51 - 8);
    if ((*(v52 + 48))(v28, 1, v51) == 1)
    {
      sub_238071284(v28, &unk_27DEED890, &qword_2381593F0);
      (*(v111 + 56))(v19, 1, 1, *(&v110 + 1));
    }

    else
    {
      sub_23812FEFC(v19);
      (*(v52 + 8))(v28, v51);
      v54 = *(&v110 + 1);
      v53 = v111;
      if ((*(v111 + 48))(v19, 1, *(&v110 + 1)) != 1)
      {
        (*(v53 + 32))(v23, v19, v54);
        v79 = sub_238154B4C();
        v81 = v80;
        v112 = sub_238154B5C();
        *&v110 = v82;
        v109 = sub_238154B3C();
        v108 = v83;
        v84 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices;
        swift_beginAccess();
        v85 = *&v45[v84];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v45[v84] = v85;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = sub_2380BB438(0, *(v85 + 2) + 1, 1, v85);
          *&v45[v84] = v85;
        }

        v88 = *(v85 + 2);
        v87 = *(v85 + 3);
        if (v88 >= v87 >> 1)
        {
          v85 = sub_2380BB438((v87 > 1), v88 + 1, 1, v85);
        }

        *(v85 + 2) = v88 + 1;
        v89 = &v85[48 * v88];
        *(v89 + 4) = v79;
        *(v89 + 5) = v81;
        v90 = v110;
        *(v89 + 6) = v112;
        *(v89 + 7) = v90;
        v91 = v108;
        *(v89 + 8) = v109;
        *(v89 + 9) = v91;
        *&v45[v84] = v85;
        swift_endAccess();
        (*(v111 + 8))(v23, v54);
        goto LABEL_36;
      }
    }

    sub_238071284(v19, &qword_27DEEB110, &qword_2381593E8);
    v55 = [a9 wifiAwareOTAName];
    if (v55)
    {
      v56 = v55;
      v57 = sub_238154CCC();
      v59 = v58;
    }

    else
    {
      v57 = 0x206E776F6E6B6E55;
      v59 = 0xEE00656369766544;
    }

    v73 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_completedPairedDevices;
    swift_beginAccess();
    v74 = *&v45[v73];
    v75 = swift_isUniquelyReferenced_nonNull_native();
    *&v45[v73] = v74;
    if ((v75 & 1) == 0)
    {
      v74 = sub_2380BB438(0, *(v74 + 2) + 1, 1, v74);
      *&v45[v73] = v74;
    }

    v77 = *(v74 + 2);
    v76 = *(v74 + 3);
    if (v77 >= v76 >> 1)
    {
      v74 = sub_2380BB438((v76 > 1), v77 + 1, 1, v74);
    }

    *(v74 + 2) = v77 + 1;
    v78 = &v74[48 * v77];
    *(v78 + 4) = v57;
    *(v78 + 5) = v59;
    *(v78 + 6) = 0;
    *(v78 + 7) = 0xE000000000000000;
    *(v78 + 8) = 0;
    *(v78 + 9) = 0xE000000000000000;
    *&v45[v73] = v74;
    swift_endAccess();
LABEL_36:
    sub_238071284(v30, &unk_27DEED890, &qword_2381593F0);
    return;
  }

  if (v31)
  {
    if (v31 == 10)
    {
      v32 = v112;
      if ((*(v112 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role) & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_238152A8C();

        v120 = v115;
        v121 = v116;
        v122 = v117;
        v118 = v113;
        v119 = v114;
        swift_getKeyPath();
        swift_getKeyPath();
        v113 = v110;
        v117 = 0;
        v32;

        sub_238152A9C();
        sub_238088B04(&v118);
        sub_23808E828(&v118);
        if (qword_27DEEA028 != -1)
        {
          swift_once();
        }

        v33 = sub_23815293C();
        __swift_project_value_buffer(v33, qword_27DEEB040);
        v34 = a9;
        v35 = sub_23815291C();
        v36 = sub_2381550BC();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *&v113 = v38;
          *v37 = 136315138;
          v39 = [v34 wifiAwareOTAName];
          if (v39)
          {
            v40 = v39;
            v41 = sub_238154CCC();
            v43 = v42;

            v32 = v112;
          }

          else
          {
            v43 = 0x8000000238161800;
            v41 = 0xD000000000000010;
          }

          v95 = sub_238085EAC(v41, v43, &v113);

          *(v37 + 4) = v95;
          _os_log_impl(&dword_238060000, v35, v36, "Transitioning state to waiting for %s", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x2383EA8A0](v38, -1, -1);
          MEMORY[0x2383EA8A0](v37, -1, -1);
        }
      }

      v96 = &v32[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier];
      v97 = *&v32[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier + 8];
      *v96 = a10;
      *(v96 + 1) = a11;

      v98 = [a9 wifiAwareOTAName];
      if (v98)
      {
        v99 = v98;
        v100 = sub_238154CCC();
        v102 = v101;
      }

      else
      {
        v100 = 0;
        v102 = 0;
      }

      v103 = &v32[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName];
      v104 = *&v32[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName + 8];
      *v103 = v100;
      v103[1] = v102;

      v105 = [a9 signature];
      v106 = &v32[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceSignature];
      *v106 = v105;
      v106[8] = 0;
    }
  }

  else
  {
    if (qword_27DEEA028 != -1)
    {
      swift_once();
    }

    v60 = sub_23815293C();
    __swift_project_value_buffer(v60, qword_27DEEB040);
    v61 = a9;
    v62 = sub_23815291C();
    v63 = sub_2381550DC();

    v64 = os_log_type_enabled(v62, v63);
    v65 = v112;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v118 = v67;
      *v66 = 136315138;
      v68 = [v61 wifiAwareOTAName];
      if (v68)
      {
        v69 = v68;
        v70 = sub_238154CCC();
        v72 = v71;
      }

      else
      {
        v70 = 0x206E776F6E6B6E55;
        v72 = 0xEE00656369766544;
      }

      v92 = sub_238085EAC(v70, v72, &v118);

      *(v66 + 4) = v92;
      _os_log_impl(&dword_238060000, v62, v63, "Pairing failed for %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x2383EA8A0](v67, -1, -1);
      MEMORY[0x2383EA8A0](v66, -1, -1);
    }

    sub_23808EA88();
    v93 = swift_allocError();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v120 = v115;
    v121 = v116;
    v122 = v117;
    v118 = v113;
    v119 = v114;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v113 = v93;
    v117 = 2;
    v65;
    v94 = v93;
    sub_238152A9C();
    sub_238088B04(&v118);
    sub_23808E828(&v118);
  }
}

void sub_23808E034(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest];
  *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentPairingRequest] = a1;

  v4 = [a1 pairingInfo];
  v5 = [v4 pairingType];

  if (v5 == 30)
  {
    v6 = *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier + 8];
    if (v6)
    {
      v7 = *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceIdentifier];
      v8 = OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_currentDevices;
      swift_beginAccess();
      v9 = *&v1[v8];
      v10 = *(v9 + 16);

      if (v10 && (v11 = sub_2380E6CD8(v7, v6), (v12 & 1) != 0))
      {
        v13 = *(*(v9 + 56) + 8 * v11);
        swift_endAccess();
        v14 = v13;

        v15 = [v14 name];
        if (v15)
        {
          v16 = v15;
          v17 = sub_238154CCC();
          v19 = v18;

          *&v27[0] = v17;
          *(&v27[0] + 1) = v19;
          memset(&v27[1], 0, 48);
          v27[4] = v27[0];
          memset(&v27[5], 0, 48);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_238152A8C();

          v28[2] = v24;
          v28[3] = v25;
          v29 = v26;
          v28[0] = v22;
          v28[1] = v23;
          swift_getKeyPath();
          swift_getKeyPath();
          v22 = v27[0];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 1;
          v20 = v1;
          sub_23808EA10(v27, &v21);
          sub_238152A9C();
          sub_238088B04(v28);
          sub_23808E828(v28);
          sub_23808E858(v27);
        }
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  else if (v5 == 20)
  {

    sub_23808CAB0(1, 0, 0);
  }
}

id sub_23808E2C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DDDeviceAccessController()
{
  result = qword_27DEEB0C0;
  if (!qword_27DEEB0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23808E468()
{
  sub_23808E544();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23808E544()
{
  if (!qword_27DEEB0D0)
  {
    v0 = sub_238152AAC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEB0D0);
    }
  }
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

uint64_t sub_23808E5B8(uint64_t a1, int a2)
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

uint64_t sub_23808E600(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_17DeviceDiscoveryUI13DDPairingInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_17DeviceDiscoveryUI14DAPairingStateO(uint64_t a1)
{
  if ((*(a1 + 64) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23808E6B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 65))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 64);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23808E6FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_23808E754(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 64) = a2;
  return result;
}

unint64_t sub_23808E794()
{
  result = qword_27DEEB0D8;
  if (!qword_27DEEB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB0D8);
  }

  return result;
}

uint64_t sub_23808E7E8@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_2381529DC();
  *a1 = result;
  return result;
}

id sub_23808E8C0()
{
  v7[1] = *MEMORY[0x277D85DE8];
  sub_23807A3F8(0, &qword_27DEEB118, 0x277D04750);
  v1 = sub_238154ECC();

  v7[0] = 0;
  v2 = [v0 initWithConfigurations:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_23815266C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_23808E9B4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23808EA48()
{
  MEMORY[0x2383EA980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_23808EA88()
{
  result = qword_27DEEB0F8;
  if (!qword_27DEEB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB0F8);
  }

  return result;
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

uint64_t sub_23808EB00(uint64_t a1, int a2)
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

uint64_t sub_23808EB48(uint64_t result, int a2, int a3)
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

unint64_t sub_23808EBAC()
{
  result = qword_27DEEB120;
  if (!qword_27DEEB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEB120);
  }

  return result;
}

uint64_t sub_23808EC10()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEF3198);
  __swift_project_value_buffer(v0, qword_27DEF3198);
  return sub_23815292C();
}

uint64_t sub_23808EC88()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEF31B0);
  __swift_project_value_buffer(v0, qword_27DEF31B0);
  return sub_23815292C();
}

uint64_t sub_23808ED08()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEF31C8);
  __swift_project_value_buffer(v0, qword_27DEF31C8);
  return sub_23815292C();
}

uint64_t sub_23808ED88()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEB128);
  v1 = __swift_project_value_buffer(v0, qword_27DEEB128);
  if (qword_27DEEA038 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DEF3198);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_23808EE50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_238153CFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_2380712E4(v2, &v17 - v11, &qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_238153A2C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2381550EC();
    v16 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t NameDropView.init(transactionIdentifier:dismissViewAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for NameDropView(0);
  v9 = a4 + v8[5];
  sub_2381546FC();
  *v9 = v19;
  *(v9 + 1) = v20;
  v10 = sub_2381527EC();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v12, a1, v10);
  v15 = (v14 + v13);
  *v15 = a2;
  v15[1] = a3;
  v16 = a4 + v8[6];
  *v16 = sub_23809B2B4;
  *(v16 + 1) = v14;
  v16[16] = 0;
  v17 = (a4 + v8[7]);
  *v17 = a2;
  v17[1] = a3;
}

uint64_t sub_23808F1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2381527EC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  v11 = type metadata accessor for NameDropSessionController();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  v14 = sub_23811D914(v9, a2, a3);

  return v14;
}

uint64_t sub_23808F2F4@<X0>(BOOL *a1@<X8>)
{
  v2 = v1;
  v3 = v1 + *(type metadata accessor for NameDropView(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v42 = v33;
  v43 = v34;
  v44 = v35;
  v38 = v29;
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v36[0] = v25;
  v36[1] = v26;
  v36[2] = v27;
  v37 = v28;
  sub_23809B34C(v36);
  v7 = v37;
  *a1 = (v37 & 3) != 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB608, &qword_238159D88);
  sub_23808F578(v2, v7, &a1[*(v8 + 44)]);
  v9 = sub_23815490C();
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v33 = v22;
  v34 = v23;
  v35 = v24;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  sub_23809B34C(&v25);
  v10 = v28;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5A8, &qword_238159CD8);
  v12 = &a1[*(result + 36)];
  *v12 = v9;
  v12[1] = v10;
  return result;
}

uint64_t sub_23808F578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v46 = a2;
  v47 = a3;
  v43 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB610, &qword_238159D90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = (&v40 - v8);
  v10 = type metadata accessor for NameDropView(0);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA10, &qword_238158270);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADB0, &qword_238158D90);
  v41 = *(v44 - 8);
  v17 = v41;
  v18 = *(v41 + 64);
  v19 = MEMORY[0x28223BE20](v44);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  sub_23809BCF4(a1, &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v25 = swift_allocObject();
  sub_23809BD60(&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  sub_23815474C();
  v48 = 2;
  v49 = xmmword_238158800;
  v50 = 0x403E000000000000;
  sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
  sub_238086A48();
  v26 = v23;
  sub_2381543EC();
  (*(v13 + 8))(v16, v12);
  v27 = v9;
  *v9 = sub_2381548DC();
  v9[1] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB618, &qword_238159D98);
  sub_23808FA1C(v43, v46, v9 + *(v29 + 44));
  v30 = *(v17 + 16);
  v31 = v21;
  v32 = v21;
  v33 = v26;
  v34 = v44;
  v30(v32, v26, v44);
  v35 = v45;
  sub_2380712E4(v27, v45, &qword_27DEEB610, &qword_238159D90);
  v36 = v47;
  v30(v47, v31, v34);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB620, &qword_238159DA0);
  sub_2380712E4(v35, &v36[*(v37 + 48)], &qword_27DEEB610, &qword_238159D90);
  sub_238071284(v27, &qword_27DEEB610, &qword_238159D90);
  v38 = *(v41 + 8);
  v38(v33, v34);
  sub_238071284(v35, &qword_27DEEB610, &qword_238159D90);
  return (v38)(v31, v34);
}

uint64_t sub_23808FA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a2;
  v108 = a1;
  v101 = a3;
  v4 = type metadata accessor for NameDropView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA10, &qword_238158270);
  v119 = *(v7 - 8);
  v8 = *(v119 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v89 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADB0, &qword_238158D90);
  v11 = *(v116 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v116);
  v99 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v93 = &v89 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v91 = &v89 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v89 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB628, &qword_238159DA8);
  v22 = *(v21 - 8);
  v110 = v21 - 8;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21 - 8);
  v100 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v98 = &v89 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v97 = &v89 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v96 = &v89 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v94 = &v89 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v95 = &v89 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v92 = &v89 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v111 = &v89 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v90 = &v89 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v113 = &v89 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v89 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v89 - v47;
  v112 = &v89 - v47;
  v107 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23809BCF4(a1, v107);
  v115 = *(v5 + 80);
  v49 = (v115 + 16) & ~v115;
  v104 = v6;
  v50 = swift_allocObject();
  sub_23809BD60(&v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v50 + v49);
  sub_23815474C();
  v120 = 2;
  v117 = xmmword_238158800;
  v121 = xmmword_238158800;
  v122 = 0x403E000000000000;
  v106 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
  v105 = sub_238086A48();
  v102 = v7;
  sub_2381543EC();
  v51 = *(v119 + 8);
  v119 += 8;
  v114 = v51;
  v51(v10, v7);
  v52 = 1.0;
  if ((v118 & 4) != 0)
  {
    v53 = 1.0;
  }

  else
  {
    v53 = 0.0;
  }

  v54 = *(v11 + 32);
  v103 = v11 + 32;
  v109 = v54;
  v55 = v116;
  v54(v46, v20, v116);
  v56 = v110;
  *&v46[*(v110 + 44)] = v53;
  sub_23807121C(v46, v48, &qword_27DEEB628, &qword_238159DA8);
  v57 = v108;
  v58 = v107;
  sub_23809BCF4(v108, v107);
  v59 = swift_allocObject();
  sub_23809BD60(v58, v59 + v49);
  v89 = v10;
  sub_23815474C();
  v120 = 2;
  v121 = v117;
  v122 = 0x403E000000000000;
  v60 = v91;
  v61 = v102;
  sub_2381543EC();
  v114(v10, v61);
  v62 = v118;
  if ((v118 & 0x10) != 0)
  {
    v63 = 1.0;
  }

  else
  {
    v63 = 0.0;
  }

  v64 = v90;
  v109(v90, v60, v55);
  v65 = v56;
  *(v64 + *(v56 + 44)) = v63;
  sub_23807121C(v64, v113, &qword_27DEEB628, &qword_238159DA8);
  v66 = v107;
  sub_23809BCF4(v57, v107);
  v67 = swift_allocObject();
  sub_23809BD60(v66, v67 + v49);
  v68 = v89;
  sub_23815474C();
  v120 = 2;
  v121 = v117;
  v122 = 0x403E000000000000;
  v69 = v93;
  v70 = v102;
  sub_2381543EC();
  v71 = v70;
  v114(v68, v70);
  if ((v62 & 2) != 0)
  {
    v72 = 1.0;
  }

  else
  {
    v72 = 0.0;
  }

  v73 = v92;
  v74 = v109;
  v109(v92, v69, v116);
  *(v73 + *(v65 + 44)) = v72;
  v75 = v111;
  sub_23807121C(v73, v111, &qword_27DEEB628, &qword_238159DA8);
  sub_23809BCF4(v108, v66);
  v76 = swift_allocObject();
  sub_23809BD60(v66, v76 + v49);
  sub_23815474C();
  v120 = 2;
  v121 = v117;
  v122 = 0x403E000000000000;
  v77 = v99;
  sub_2381543EC();
  v114(v68, v71);
  if ((v118 & 1) == 0)
  {
    v52 = 0.0;
  }

  v78 = v94;
  v74(v94, v77, v116);
  *(v78 + *(v110 + 44)) = v52;
  v79 = v95;
  sub_23807121C(v78, v95, &qword_27DEEB628, &qword_238159DA8);
  v80 = v96;
  sub_2380712E4(v112, v96, &qword_27DEEB628, &qword_238159DA8);
  v81 = v113;
  v82 = v97;
  sub_2380712E4(v113, v97, &qword_27DEEB628, &qword_238159DA8);
  v83 = v98;
  sub_2380712E4(v75, v98, &qword_27DEEB628, &qword_238159DA8);
  v84 = v79;
  v85 = v100;
  sub_2380712E4(v79, v100, &qword_27DEEB628, &qword_238159DA8);
  v86 = v101;
  sub_2380712E4(v80, v101, &qword_27DEEB628, &qword_238159DA8);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB630, &qword_238159DB0);
  sub_2380712E4(v82, v86 + v87[12], &qword_27DEEB628, &qword_238159DA8);
  sub_2380712E4(v83, v86 + v87[16], &qword_27DEEB628, &qword_238159DA8);
  sub_2380712E4(v85, v86 + v87[20], &qword_27DEEB628, &qword_238159DA8);
  sub_238071284(v84, &qword_27DEEB628, &qword_238159DA8);
  sub_238071284(v111, &qword_27DEEB628, &qword_238159DA8);
  sub_238071284(v81, &qword_27DEEB628, &qword_238159DA8);
  sub_238071284(v112, &qword_27DEEB628, &qword_238159DA8);
  sub_238071284(v85, &qword_27DEEB628, &qword_238159DA8);
  sub_238071284(v83, &qword_27DEEB628, &qword_238159DA8);
  sub_238071284(v82, &qword_27DEEB628, &qword_238159DA8);
  return sub_238071284(v80, &qword_27DEEB628, &qword_238159DA8);
}

uint64_t sub_2380905B0(uint64_t a1, void (*a2)(void))
{
  v3 = (a1 + *(type metadata accessor for NameDropView(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  sub_23815381C();
  a2();
}

uint64_t sub_238090684(uint64_t a1)
{
  v2 = type metadata accessor for NameDropView(0);
  v3 = (a1 + *(v2 + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  sub_23815381C();
  sub_238111A30();

  v8 = a1 + *(v2 + 28);
  if (*v8)
  {
    v9 = *(v8 + 8);
    return (*v8)(result);
  }

  return result;
}

uint64_t sub_238090754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB638, &qword_238159DB8);
  v161 = *(v3 - 8);
  v162 = v3;
  v4 = *(v161 + 64);
  MEMORY[0x28223BE20](v3);
  v155 = &v138 - v5;
  v6 = type metadata accessor for NameDropView(0);
  v7 = v6 - 8;
  v145 = *(v6 - 8);
  v8 = *(v145 + 64);
  MEMORY[0x28223BE20](v6);
  v146 = v9;
  v147 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB640, &qword_238159DC0);
  v151 = *(v10 - 8);
  v152 = v10;
  v11 = *(v151 + 64);
  MEMORY[0x28223BE20](v10);
  v156 = &v138 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB648, &qword_238159DC8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v154 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v153 = &v138 - v17;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB360, &qword_238159998);
  v18 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v143 = &v138 - v19;
  v20 = sub_238153A2C();
  v141 = *(v20 - 8);
  v142 = v20;
  v21 = *(v141 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v140 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v139 = &v138 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB650, &qword_238159DD0);
  v148 = *(v25 - 8);
  v149 = v25;
  v26 = *(v148 + 64);
  MEMORY[0x28223BE20](v25);
  v144 = &v138 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB658, &qword_238159DD8);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v150 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v172 = &v138 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB660, &qword_238159DE0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v160 = &v138 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v159 = &v138 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB668, &qword_238159DE8);
  v39 = *(v38 - 8);
  v171 = v38 - 8;
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38 - 8);
  v158 = &v138 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v173 = &v138 - v43;
  v44 = *(v7 + 32);
  v157 = a1;
  v45 = (a1 + v44);
  v46 = *v45;
  v175 = v45[1];
  v47 = *(v45 + 16);
  v174 = type metadata accessor for NameDropSessionController();
  v176 = sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  v177 = v46;
  v178 = v47;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v201[8] = v217;
  v201[9] = v218;
  v202 = v219;
  v201[4] = v213;
  v201[5] = v214;
  v201[6] = v215;
  v201[7] = v216;
  v201[0] = v209;
  v201[1] = v210;
  v201[2] = v211;
  v201[3] = v212;
  v48 = v215;

  sub_23809B34C(v201);
  v209 = v48;
  sub_2380704A0();
  v170 = sub_23815438C();
  v167 = v50;
  v168 = v49;
  v52 = v51;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v203[8] = v217;
  v203[9] = v218;
  v204 = v219;
  v203[4] = v213;
  v203[5] = v214;
  v203[6] = v215;
  v203[7] = v216;
  v203[0] = v209;
  v203[1] = v210;
  v203[2] = v211;
  v203[3] = v212;
  v53 = v214;
  sub_23809B34C(v203);
  sub_2381542DC();
  v54 = v170;
  v55 = v168;
  KeyPath = sub_23815435C();
  v165 = v57;
  v166 = v56;
  LOBYTE(v47) = v58;

  sub_238070490(v54, v55, v52 & 1);

  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v205[8] = v217;
  v205[9] = v218;
  v206 = v219;
  v205[4] = v213;
  v205[5] = v214;
  v205[6] = v215;
  v205[7] = v216;
  v205[0] = v209;
  v205[1] = v210;
  v205[2] = v211;
  v205[3] = v212;

  sub_23809B34C(v205);
  v59 = KeyPath;
  v60 = v166;
  v61 = sub_23815431C();
  v167 = v62;
  v168 = v61;
  v63 = v62;
  v164 = v64;
  v66 = v65;
  v170 = v65;

  sub_238070490(v59, v60, v47 & 1);

  KeyPath = swift_getKeyPath();
  *&v190 = v61;
  *(&v190 + 1) = v63;
  LOBYTE(v61) = v164 & 1;
  LOBYTE(v191) = v164 & 1;
  *(&v191 + 1) = v66;
  *&v192 = KeyPath;
  BYTE8(v192) = 1;
  v67 = 1;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v207[8] = v217;
  v207[9] = v218;
  v208 = v219;
  v207[4] = v213;
  v207[5] = v214;
  v207[6] = v215;
  v207[7] = v216;
  v207[0] = v209;
  v207[1] = v210;
  v207[2] = v211;
  v207[3] = v212;
  v68 = v214;
  sub_23809B34C(v207);
  [v68 lineHeight];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB28, &unk_238159E20);
  sub_23807B920();
  v69 = v173;
  sub_23815447C();
  sub_238070490(v168, v167, v61);

  v70 = swift_getKeyPath();
  v71 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB670, &qword_238159E30) + 36);
  *v71 = v70;
  *(v71 + 8) = 2;
  *(v71 + 16) = 0;
  v72 = swift_getKeyPath();
  v73 = v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB678, &qword_238159E38) + 36);
  *v73 = v72;
  *(v73 + 8) = 1;
  v74 = swift_getKeyPath();
  v75 = (v69 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB680, &qword_238159E40) + 36));
  *v75 = v74;
  v75[1] = 0x3FE0000000000000;
  *(v69 + *(v171 + 44)) = 256;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v218 = v199;
  v219 = v200;
  v213 = v194;
  v214 = v195;
  v216 = v197;
  v217 = v198;
  v215 = v196;
  v209 = v190;
  v210 = v191;
  v211 = v192;
  v212 = v193;
  v76 = v197;
  v77 = *(&v198 + 1);
  v78 = v198;
  v79 = v199;
  sub_23809E938(v197);
  sub_23809B34C(&v209);
  v171 = v76;
  if (!v76)
  {
    v112 = v159;
LABEL_12:
    (*(v161 + 56))(v112, v67, 1, v162);
    v133 = v173;
    v134 = v158;
    sub_2380712E4(v173, v158, &qword_27DEEB668, &qword_238159DE8);
    v135 = v160;
    sub_2380712E4(v112, v160, &qword_27DEEB660, &qword_238159DE0);
    v136 = v163;
    sub_2380712E4(v134, v163, &qword_27DEEB668, &qword_238159DE8);
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB688, &qword_238159E48);
    sub_2380712E4(v135, v136 + *(v137 + 48), &qword_27DEEB660, &qword_238159DE0);
    sub_238071284(v112, &qword_27DEEB660, &qword_238159DE0);
    sub_238071284(v133, &qword_27DEEB668, &qword_238159DE8);
    sub_238071284(v135, &qword_27DEEB660, &qword_238159DE0);
    return sub_238071284(v134, &qword_27DEEB668, &qword_238159DE8);
  }

  v168 = v77;
  KeyPath = v79;
  v170 = *(&v76 + 1);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v190 != 1)
  {
    (*(v148 + 56))(v172, 1, 1, v149);
LABEL_7:
    v113 = v157;
    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    if (v190 == 1 && (sub_23815381C(), swift_getKeyPath(), swift_getKeyPath(), sub_238152A8C(), , , , v190 != 1))
    {

      v127 = 1;
      v124 = v152;
      v125 = v153;
    }

    else
    {
      v114 = v147;
      sub_23809BCF4(v113, v147);
      v115 = (*(v145 + 80) + 16) & ~*(v145 + 80);
      v166 = swift_allocObject();
      v116 = sub_23809BD60(v114, v166 + v115);
      v167 = &v138;
      MEMORY[0x28223BE20](v116);
      v117 = v170;
      v118 = v171;
      *(&v138 - 6) = v113;
      *(&v138 - 5) = v118;
      *(&v138 - 4) = v117;
      *(&v138 - 3) = v78;
      v119 = KeyPath;
      *(&v138 - 2) = v168;
      *(&v138 - 1) = v119;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB690, &qword_238159E98);
      sub_23809EA58();
      sub_23815474C();

      sub_23815381C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_238152A8C();

      LOBYTE(v118) = v190;
      v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB720, &qword_238159F40);
      v121 = v156;
      v156[*(v120 + 36)] = v118;
      sub_23815490C();
      v122 = sub_23815491C();

      sub_23815381C();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_238152A8C();

      v123 = v190;
      v124 = v152;
      v125 = v153;
      v126 = (v121 + *(v152 + 36));
      *v126 = v122;
      v126[1] = v123;
      sub_23807121C(v121, v125, &qword_27DEEB640, &qword_238159DC0);
      v127 = 0;
    }

    (*(v151 + 56))(v125, v127, 1, v124);
    v128 = v172;
    v129 = v150;
    sub_2380712E4(v172, v150, &qword_27DEEB658, &qword_238159DD8);
    v130 = v154;
    sub_2380712E4(v125, v154, &qword_27DEEB648, &qword_238159DC8);
    v131 = v155;
    sub_2380712E4(v129, v155, &qword_27DEEB658, &qword_238159DD8);
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB728, &qword_238159F48);
    sub_2380712E4(v130, v131 + *(v132 + 48), &qword_27DEEB648, &qword_238159DC8);
    sub_238071284(v125, &qword_27DEEB648, &qword_238159DC8);
    sub_238071284(v128, &qword_27DEEB658, &qword_238159DD8);
    sub_238071284(v130, &qword_27DEEB648, &qword_238159DC8);
    sub_238071284(v129, &qword_27DEEB658, &qword_238159DD8);
    v112 = v159;
    sub_23807121C(v131, v159, &qword_27DEEB638, &qword_238159DB8);
    v67 = 0;
    goto LABEL_12;
  }

  v80 = v171;

  v81 = v139;
  sub_23808EE50(v139);
  v82 = *MEMORY[0x277CDFA90];
  v84 = v140;
  v83 = v141;
  v85 = *(v141 + 104);
  v167 = v78;
  v86 = v80;
  v87 = v142;
  v85(v140, v82, v142);
  v88 = sub_238153A1C();
  v89 = *(v83 + 8);
  v89(v84, v87);
  v89(v81, v87);
  v90 = swift_getKeyPath();
  v91 = type metadata accessor for NameDropView.fieldSummaryView(0);
  v92 = v144;
  *&v144[*(v91 + 28)] = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v93 = v170;
  *v92 = v86;
  *(v92 + 8) = v93;
  *(v92 + 16) = v167;
  *(v92 + 24) = v88 & 1;
  v94 = *(v91 + 32);
  *&v190 = sub_23815467C();
  v95 = *MEMORY[0x277CDF9D8];
  v96 = sub_238153A0C();
  v97 = v143;
  (*(*(v96 - 8) + 104))(v143, v95, v96);
  sub_23809E560(&qword_27DEEB370, MEMORY[0x277CDFA28]);
  result = sub_238154C7C();
  if (result)
  {
    sub_2380711D4(&qword_27DEEB378, &qword_27DEEB360, &qword_238159998);
    sub_23815445C();
    sub_238071284(v97, &qword_27DEEB360, &qword_238159998);

    sub_2381549DC();
    v100 = v99;
    v102 = v101;
    v103 = (v92 + v94 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB310, &qword_238159928) + 36));
    *v103 = vdupq_n_s64(0x3FD51EB851EB851FuLL);
    v103[1].i64[0] = v100;
    v103[1].i64[1] = v102;
    sub_2381542CC();
    sub_23815421C();
    v104 = sub_23815425C();

    v105 = swift_getKeyPath();
    v106 = (v92 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB730, &qword_238159F80) + 36));
    *v106 = v105;
    v106[1] = v104;
    v78 = v167;
    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v198 = v187;
    v199 = v188;
    v200 = v189;
    v194 = v183;
    v195 = v184;
    v196 = v185;
    v197 = v186;
    v190 = v179;
    v191 = v180;
    v192 = v181;
    v193 = v182;
    v107 = *(&v183 + 1);

    sub_23809B34C(&v190);
    v108 = swift_getKeyPath();
    v109 = v149;
    v110 = (v92 + *(v149 + 36));
    *v110 = v108;
    v110[1] = v107;
    v111 = v172;
    sub_23807121C(v92, v172, &qword_27DEEB650, &qword_238159DD0);
    (*(v148 + 56))(v111, 0, 1, v109);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_238091D24(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for NameDropView(0) + 20));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  return sub_23815471C();
}

uint64_t sub_238091D98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v135 = a3;
  v4 = a2[2];
  v136 = a2[1];
  v5 = a2[4];
  v108 = a2[3];
  v109 = v4;
  v107 = v5;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE80, &qword_238158EE0);
  v112 = *(v114 - 8);
  v6 = *(v112 + 64);
  MEMORY[0x28223BE20](v114);
  v111 = &v107 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB738, &qword_238159F88);
  v117 = *(v8 - 8);
  v118 = v8;
  v9 = *(v117 + 64);
  MEMORY[0x28223BE20](v8);
  v113 = &v107 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE78, &unk_238159EE0);
  v11 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v116 = &v107 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAE58, &qword_238158EC8);
  v13 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v126 = &v107 - v14;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB708, &unk_238159ED0);
  v15 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v124 = &v107 - v16;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB6F8, &qword_238159EC8);
  v17 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v125 = &v107 - v18;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB6E8, &qword_238159EC0);
  v19 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v122 = &v107 - v20;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB6D8, &qword_238159EB8);
  v21 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v128 = &v107 - v22;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB6C8, &qword_238159EB0);
  v23 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v130 = &v107 - v24;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB6B8, &qword_238159EA8);
  v25 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v132 = &v107 - v26;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB6A8, &qword_238159EA0);
  v27 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v133 = &v107 - v28;
  v29 = *(type metadata accessor for NameDropView(0) + 24);
  v134 = a1;
  v30 = (a1 + v29);
  v31 = *v30;
  v32 = v30[1];
  v33 = *(v30 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (LOBYTE(v148[0]))
  {
    v34 = v108;
  }

  else
  {
    v34 = v136;
  }

  v150 = v34;
  v151 = v35;
  v136 = v31;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if ((v148[0] & 1) == 0)
  {
    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();
  }

  sub_2380704A0();
  v36 = v111;
  sub_2381546EC();
  sub_2380711D4(&qword_27DEEAE88, &qword_27DEEAE80, &qword_238158EE0);
  sub_238087A6C();
  v38 = v113;
  v37 = v114;
  sub_2381543CC();
  (*(v112 + 8))(v36, v37);
  v39 = v116;
  v40 = &v116[*(v110 + 36)];
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAEA0, &unk_238158EE8) + 28);
  v42 = *MEMORY[0x277CE1050];
  v43 = sub_2381546BC();
  (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
  *v40 = swift_getKeyPath();
  (*(v117 + 32))(v39, v38, v118);
  sub_2381542CC();
  sub_23815421C();
  v44 = sub_23815425C();

  KeyPath = swift_getKeyPath();
  v46 = v126;
  sub_23807121C(v39, v126, &qword_27DEEAE78, &unk_238159EE0);
  v47 = (v46 + *(v115 + 36));
  *v47 = KeyPath;
  v47[1] = v44;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v148[8] = v145;
  v148[9] = v146;
  v149 = v147;
  v148[4] = v141;
  v148[5] = v142;
  v148[6] = v143;
  v148[7] = v144;
  v148[0] = v137;
  v148[1] = v138;
  v148[2] = v139;
  v148[3] = v140;
  v48 = *(&v141 + 1);

  sub_23809B34C(v148);
  v49 = swift_getKeyPath();
  v50 = v124;
  sub_23807121C(v46, v124, &qword_27DEEAE58, &qword_238158EC8);
  v51 = (v50 + *(v123 + 36));
  *v51 = v49;
  v51[1] = v48;
  v52 = swift_getKeyPath();
  v53 = v50;
  v54 = v125;
  sub_23807121C(v53, v125, &qword_27DEEB708, &unk_238159ED0);
  v55 = v54 + *(v120 + 36);
  *v55 = v52;
  *(v55 + 8) = 1;
  *(v55 + 16) = 0;
  v56 = swift_getKeyPath();
  v57 = v54;
  v58 = v122;
  sub_23807121C(v57, v122, &qword_27DEEB6F8, &qword_238159EC8);
  v59 = v58 + *(v121 + 36);
  *v59 = v56;
  *(v59 + 8) = 1;
  v60 = swift_getKeyPath();
  v61 = v128;
  sub_23807121C(v58, v128, &qword_27DEEB6E8, &qword_238159EC0);
  v62 = (v61 + *(v119 + 36));
  *v62 = v60;
  v62[1] = 0x3FE0000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238158810;
  LOBYTE(v46) = sub_23815410C();
  *(inited + 32) = v46;
  v64 = sub_23815411C();
  *(inited + 33) = v64;
  v65 = sub_23815413C();
  sub_23815413C();
  if (sub_23815413C() != v46)
  {
    v65 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v64)
  {
    v65 = sub_23815413C();
  }

  sub_23815377C();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v130;
  sub_23807121C(v61, v130, &qword_27DEEB6D8, &qword_238159EB8);
  v75 = v74 + *(v127 + 36);
  *v75 = v65;
  *(v75 + 8) = v67;
  *(v75 + 16) = v69;
  *(v75 + 24) = v71;
  *(v75 + 32) = v73;
  *(v75 + 40) = 0;
  v76 = sub_23815412C();
  sub_23815377C();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = v74;
  v86 = v132;
  sub_23807121C(v85, v132, &qword_27DEEB6C8, &qword_238159EB0);
  v87 = v86 + *(v129 + 36);
  *v87 = v76;
  *(v87 + 8) = v78;
  *(v87 + 16) = v80;
  *(v87 + 24) = v82;
  *(v87 + 32) = v84;
  *(v87 + 40) = 0;
  v88 = sub_23815414C();
  sub_23815377C();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v97 = v133;
  sub_23807121C(v86, v133, &qword_27DEEB6B8, &qword_238159EA8);
  v98 = v97 + *(v131 + 36);
  *v98 = v88;
  *(v98 + 8) = v90;
  *(v98 + 16) = v92;
  *(v98 + 24) = v94;
  *(v98 + 32) = v96;
  *(v98 + 40) = 0;
  v99 = sub_2381548DC();
  v101 = v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB690, &qword_238159E98);
  v103 = v135;
  v104 = v135 + *(v102 + 36);
  sub_2380929C8(v134, v104);
  v105 = (v104 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB718, &qword_238159EF0) + 36));
  *v105 = v99;
  v105[1] = v101;
  return sub_23807121C(v97, v103, &qword_27DEEB6A8, &qword_238159EA0);
}

uint64_t sub_2380929C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB740, &qword_238159F90);
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v19);
  v6 = &v19 - v5;
  v7 = (a1 + *(type metadata accessor for NameDropView(0) + 24));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if ((v21 & 1) != 0 || (sub_23815381C(), swift_getKeyPath(), swift_getKeyPath(), sub_238152A8C(), , , , v21 == 1))
  {
    v11 = *MEMORY[0x277CE0118];
    v12 = sub_238153DDC();
    (*(*(v12 - 8) + 104))(v6, v11, v12);
    v13 = v19;
    v14 = &v6[*(v19 + 36)];
    v21 = xmmword_2381594F0;
    v22 = xmmword_238159500;
    v23 = xmmword_238159510;
    v24 = xmmword_238159520;
    v25 = xmmword_238159530;
    sub_2381543FC();
    v15 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB748, &qword_238159F98) + 36)];
    *v15 = 0x4024000000000000;
    v15[8] = 1;
    v16 = v20;
    sub_23807121C(v6, v20, &qword_27DEEB740, &qword_238159F90);
    v17 = 0;
  }

  else
  {
    v17 = 1;
    v13 = v19;
    v16 = v20;
  }

  return (*(v3 + 56))(v16, v17, 1, v13);
}

uint64_t sub_238092CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB360, &qword_238159998);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB368, &qword_2381599A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v37 = &v31 - v11;
  v12 = *(v1 + 16);
  v38 = *(v1 + 8);
  v39 = v12;
  sub_2380704A0();

  v13 = sub_23815438C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  KeyPath = swift_getKeyPath();
  v38 = v13;
  v39 = v15;
  v35 = KeyPath;
  v36 = v15;
  v34 = v17 & 1;
  LOBYTE(v40) = v17 & 1;
  v41 = v19;
  v42 = KeyPath;
  v43 = 1;
  v44 = 0;
  v21 = *MEMORY[0x277CDF9D8];
  v22 = sub_238153A0C();
  (*(*(v22 - 8) + 104))(v7, v21, v22);
  sub_23809E560(&qword_27DEEB370, MEMORY[0x277CDFA28]);
  result = sub_238154C7C();
  if (result)
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA628, &unk_238157D20);
    v25 = sub_238070C9C();
    v32 = v8;
    v33 = a1;
    v26 = v25;
    v31 = v2;
    v27 = sub_2380711D4(&qword_27DEEB378, &qword_27DEEB360, &qword_238159998);
    v28 = v37;
    sub_23815445C();
    sub_238071284(v7, &qword_27DEEB360, &qword_238159998);
    sub_238070490(v13, v36, v34);

    MEMORY[0x28223BE20](v29);
    *(&v31 - 2) = v31;
    v38 = v24;
    v39 = v4;
    v40 = v26;
    v41 = v27;
    swift_getOpaqueTypeConformance2();
    v30 = v32;
    sub_2381544DC();
    return (*(v9 + 8))(v28, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238093084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  sub_2380704A0();

  result = sub_23815438C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_2380930F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB2F8, &qword_238159910);
  v86 = *(v89 - 8);
  v3 = *(v86 + 64);
  MEMORY[0x28223BE20](v89);
  v80 = &v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB300, &qword_238159918);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v91 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v93 = &v75 - v9;
  v10 = type metadata accessor for NameDropView.fieldSummaryView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB308, &qword_238159920);
  v88 = *(v90 - 8);
  v14 = *(v88 + 64);
  v15 = MEMORY[0x28223BE20](v90);
  v87 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v95 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB310, &qword_238159928);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v75 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB318, &qword_238159930);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v75 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB320, &qword_238159938);
  v28 = *(v27 - 8);
  v83 = v27;
  v84 = v28;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v82 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v81 = &v75 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB328, &unk_238159940);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v94 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v85 = *(a1 + 24);
  v79 = v10;
  v96 = &v75 - v37;
  if (v85 != 1)
  {
    goto LABEL_6;
  }

  v38 = *(a1 + 16);
  v39 = *(a1 + 8) & 0xFFFFFFFFFFFFLL;
  if ((v38 & 0x2000000000000000) != 0)
  {
    v39 = HIBYTE(v38) & 0xF;
  }

  if (v39)
  {
    v78 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v81;
    sub_238092CF0(v81);
    v41 = *(v10 + 32);
    v76 = v11;
    v42 = *(v84 + 16);
    v77 = v12;
    v43 = v82;
    v75 = v22;
    v44 = v83;
    v42(v82, v40, v83);
    sub_2380712E4(a1 + v41, v21, &qword_27DEEB310, &qword_238159928);
    v42(v26, v43, v44);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB358, &qword_238159990);
    sub_2380712E4(v21, &v26[*(v45 + 48)], &qword_27DEEB310, &qword_238159928);
    v46 = *(v84 + 8);
    v47 = v40;
    v13 = v78;
    v46(v47, v44);
    sub_238071284(v21, &qword_27DEEB310, &qword_238159928);
    v46(v43, v44);
    v11 = v76;
    v48 = v96;
    sub_23807121C(v26, v96, &qword_27DEEB318, &qword_238159930);
    (*(v23 + 56))(v48, 0, 1, v75);
  }

  else
  {
LABEL_6:
    (*(v23 + 56))(&v75 - v37, 1, 1, v22);
  }

  v97 = *a1;
  swift_getKeyPath();
  sub_23809CDF8(a1, v13);
  v49 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v50 = swift_allocObject();
  sub_23809CFD4(v13, v50 + v49);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB70, &qword_238159970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB330, &qword_238159978);
  sub_2380711D4(&qword_27DEEB338, &qword_27DEEBB70, &qword_238159970);
  sub_2380711D4(&qword_27DEEB340, &qword_27DEEB330, &qword_238159978);
  sub_23815480C();
  if (v85)
  {
    goto LABEL_12;
  }

  v51 = *(a1 + 16);
  v52 = *(a1 + 8) & 0xFFFFFFFFFFFFLL;
  if ((v51 & 0x2000000000000000) != 0)
  {
    v52 = HIBYTE(v51) & 0xF;
  }

  if (!v52)
  {
LABEL_12:
    v62 = 1;
  }

  else
  {
    v53 = *(v79 + 32);
    v54 = v81;
    sub_238092CF0(v81);
    sub_2380712E4(a1 + v53, v21, &qword_27DEEB310, &qword_238159928);
    v55 = v83;
    v56 = v84;
    v57 = *(v84 + 16);
    v58 = v82;
    v57(v82, v54, v83);
    v59 = v80;
    sub_2380712E4(v21, v80, &qword_27DEEB310, &qword_238159928);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB348, &qword_238159980);
    v57((v59 + *(v60 + 48)), v58, v55);
    v61 = *(v56 + 8);
    v61(v54, v55);
    v61(v58, v55);
    sub_238071284(v21, &qword_27DEEB310, &qword_238159928);
    sub_23807121C(v59, v93, &qword_27DEEB2F8, &qword_238159910);
    v62 = 0;
  }

  v63 = v93;
  (*(v86 + 56))(v93, v62, 1, v89);
  v64 = v94;
  sub_2380712E4(v96, v94, &qword_27DEEB328, &unk_238159940);
  v66 = v87;
  v65 = v88;
  v67 = *(v88 + 16);
  v68 = v95;
  v69 = v90;
  v67(v87, v95, v90);
  v70 = v91;
  sub_2380712E4(v63, v91, &qword_27DEEB300, &qword_238159918);
  v71 = v92;
  sub_2380712E4(v64, v92, &qword_27DEEB328, &unk_238159940);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB350, &qword_238159988);
  v67((v71 + *(v72 + 48)), v66, v69);
  sub_2380712E4(v70, v71 + *(v72 + 64), &qword_27DEEB300, &qword_238159918);
  sub_238071284(v63, &qword_27DEEB300, &qword_238159918);
  v73 = *(v65 + 8);
  v73(v68, v69);
  sub_238071284(v96, &qword_27DEEB328, &unk_238159940);
  sub_238071284(v70, &qword_27DEEB300, &qword_238159918);
  v73(v66, v69);
  return sub_238071284(v94, &qword_27DEEB328, &unk_238159940);
}

uint64_t sub_238093AC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB380, &qword_2381599D8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB360, &qword_238159998);
  v12 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB2C8, &unk_238159760);
  v57 = *(v15 - 8);
  v58 = v15;
  v16 = *(v57 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB388, &qword_2381599E0);
  v61 = *(v19 - 8);
  v20 = *(v61 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v60 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v62 = &v51 - v23;
  v25 = *a1;
  v24 = a1[1];

  v55 = v25;
  v63 = sub_23815469C();
  v26 = *MEMORY[0x277CDF9D8];
  v27 = sub_238153A0C();
  (*(*(v27 - 8) + 104))(v14, v26, v27);
  sub_23809E560(&qword_27DEEB370, MEMORY[0x277CDFA28]);
  result = sub_238154C7C();
  if (result)
  {
    v51 = v19;
    v53 = a3;
    v54 = v9;
    v29 = sub_2380711D4(&qword_27DEEB378, &qword_27DEEB360, &qword_238159998);
    v52 = v11;
    v30 = MEMORY[0x277CE1088];
    v31 = v56;
    sub_23815445C();
    sub_238071284(v14, &qword_27DEEB360, &qword_238159998);

    MEMORY[0x28223BE20](v32);
    v33 = v55;
    *(&v51 - 2) = v55;
    *(&v51 - 1) = v24;
    v63 = v30;
    v64 = v31;
    v65 = MEMORY[0x277CE1078];
    v66 = v29;
    swift_getOpaqueTypeConformance2();
    v34 = v62;
    v35 = v58;
    v36 = v52;
    sub_2381544DC();
    (*(v57 + 8))(v18, v35);
    v37 = v59;
    v38 = *(*v59 + 16);
    if (v38 && ((v39 = (*v59 + 16 + 16 * v38), v33 == *v39) && v24 == v39[1] || (sub_2381555CC() & 1) != 0))
    {
      v40 = 1;
    }

    else
    {
      v41 = type metadata accessor for NameDropView.fieldSummaryView(0);
      sub_2380712E4(v37 + *(v41 + 32), v36, &qword_27DEEB310, &qword_238159928);
      v40 = 0;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB310, &qword_238159928);
    (*(*(v42 - 8) + 56))(v36, v40, 1, v42);
    v44 = v60;
    v43 = v61;
    v45 = *(v61 + 16);
    v46 = v51;
    v45(v60, v34, v51);
    v47 = v54;
    sub_2380712E4(v36, v54, &qword_27DEEB380, &qword_2381599D8);
    v48 = v53;
    v45(v53, v44, v46);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB390, &qword_2381599E8);
    sub_2380712E4(v47, &v48[*(v49 + 48)], &qword_27DEEB380, &qword_2381599D8);
    sub_238071284(v36, &qword_27DEEB380, &qword_2381599D8);
    v50 = *(v43 + 8);
    v50(v62, v46);
    sub_238071284(v47, &qword_27DEEB380, &qword_2381599D8);
    return (v50)(v44, v46);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2380940B0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_238153D1C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB2F0, &qword_238159908);
  return sub_2380930F0(v1, a1 + *(v3 + 44));
}

uint64_t NameDropView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v137 = a1;
  v2 = sub_23815459C();
  v110 = *(v2 - 8);
  v111 = v2;
  v3 = *(v110 + 64);
  MEMORY[0x28223BE20](v2);
  v108 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB140, &qword_2381595D8);
  v5 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v107 = (&v104 - v6);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB148, &qword_2381595E0);
  v7 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v115 = &v104 - v8;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB150, &qword_2381595E8);
  v9 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v117 = &v104 - v10;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB158, &qword_2381595F0);
  v11 = *(*(v125 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v125);
  v116 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v118 = &v104 - v14;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB160, &qword_2381595F8);
  v15 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v135 = (&v104 - v16);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB168, &qword_238159600);
  v17 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v124 = &v104 - v18;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB170, &qword_238159608);
  v19 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v126 = &v104 - v20;
  v21 = type metadata accessor for NameDropView(0);
  v119 = *(v21 - 8);
  v22 = *(v119 + 64);
  MEMORY[0x28223BE20](v21);
  v121 = v23;
  v130 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB178, &qword_238159610);
  v24 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v128 = (&v104 - v25);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB180, &qword_238159618);
  v113 = *(v123 - 8);
  v26 = *(v113 + 64);
  MEMORY[0x28223BE20](v123);
  v120 = &v104 - v27;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB188, &qword_238159620);
  v28 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v133 = &v104 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB190, &qword_238159628);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v104 - v32);
  v106 = v21;
  v34 = *(v21 + 24);
  v129 = v1;
  v35 = (v1 + v34);
  v36 = *v35;
  v37 = v35[1];
  v38 = *(v35 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  v127 = v36;
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v165[8] = v162;
  v165[9] = v163;
  v166 = v164;
  v165[4] = v158;
  v165[5] = v159;
  v165[6] = v160;
  v165[7] = v161;
  v165[0] = v154;
  v165[1] = v155;
  v165[2] = v156;
  v165[3] = v157;
  v39 = v164;
  v40 = v164;
  sub_23809B34C(v165);
  if (v39)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *v33 = v40;
    v33[1] = sub_23809C188;
    v33[2] = v41;
    swift_storeEnumTagMultiPayload();
    sub_238085CF4();
    sub_23809BC68();
    v42 = v40;
    return sub_238153ECC();
  }

  else
  {
    v44 = v128;
    v45 = v129;
    v104 = v30;
    v105 = v33;
    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v162 = v151;
    v163 = v152;
    v164 = v153;
    v158 = v147;
    v159 = v148;
    v160 = v149;
    v161 = v150;
    v154 = v143;
    v155 = v144;
    v156 = v145;
    v157 = v146;
    v46 = *(&v152 + 1);
    sub_23809B3A0(*(&v152 + 1));
    sub_23809B34C(&v154);
    if (v46)
    {
      v48 = v130;
      v47 = v131;
      if (v46 == 1)
      {
        sub_2381545CC();
        v49 = sub_23815462C();

        v50 = sub_2381540FC();
        sub_2381548DC();
        sub_238153A8C();
        *&v142[7] = v143;
        *&v142[23] = v144;
        *&v142[39] = v145;
        *&v142[55] = v146;
        *&v142[103] = v149;
        *&v142[87] = v148;
        *&v142[71] = v147;
        v51 = v135;
        *v135 = v49;
        *(v51 + 8) = v50;
        v52 = *v142;
        v53 = *&v142[16];
        v54 = *&v142[32];
        *(v51 + 57) = *&v142[48];
        *(v51 + 41) = v54;
        *(v51 + 25) = v53;
        *(v51 + 9) = v52;
        v55 = *&v142[64];
        v56 = *&v142[80];
        v57 = *&v142[96];
        v51[15] = *&v142[111];
        *(v51 + 105) = v57;
        *(v51 + 89) = v56;
        *(v51 + 73) = v55;
        v51[16] = sub_238099C70;
        v51[17] = 0;
        v51[18] = 0;
        v51[19] = 0;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1A0, &qword_238159678);
        sub_23809B3B0();
        sub_23809BA44();
        v58 = v133;
        sub_238153ECC();
      }

      else
      {
        *v44 = sub_2381548DC();
        v44[1] = v85;
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB290, &qword_2381596D8);
        sub_23809521C(v45, v46, v44 + *(v86 + 44));
        sub_23809BCF4(v45, v48);
        v87 = *(v119 + 80);
        v88 = (v87 + 16) & ~v87;
        v89 = swift_allocObject();
        sub_23809BD60(v48, v89 + v88);
        v90 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1C8, &qword_238159688) + 36));
        *v90 = sub_23809BF54;
        v90[1] = v89;
        v90[2] = 0;
        v90[3] = 0;
        sub_23809BCF4(v45, v48);
        v91 = swift_allocObject();
        sub_23809BD60(v48, v91 + v88);
        v92 = (v44 + *(v47 + 36));
        *v92 = 0;
        v92[1] = 0;
        v92[2] = sub_23809BF6C;
        v92[3] = v91;
        v93 = v45 + *(v106 + 20);
        v94 = *v93;
        v95 = *(v93 + 8);
        LOBYTE(v138) = v94;
        v139 = v95;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
        sub_23815472C();
        v127 = v143;
        sub_23809BCF4(v45, v48);
        v96 = swift_allocObject();
        *(v96 + 16) = v46;
        sub_23809BD60(v48, v96 + ((v87 + 24) & ~v87));
        v97 = v46;
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1B0, &qword_238159680);
        v130 = sub_23809B4A4();
        v103 = sub_23809B5E8();
        v98 = v120;
        sub_23815451C();

        sub_238071284(v44, &qword_27DEEB178, &qword_238159610);
        v99 = v113;
        v100 = v98;
        v101 = v123;
        (*(v113 + 16))(v124, v100, v123);
        swift_storeEnumTagMultiPayload();
        *&v143 = v47;
        *(&v143 + 1) = v129;
        *&v144 = v130;
        *(&v144 + 1) = v103;
        swift_getOpaqueTypeConformance2();
        sub_23809B7BC();
        v102 = v126;
        sub_238153ECC();
        sub_2380712E4(v102, v135, &qword_27DEEB170, &qword_238159608);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1A0, &qword_238159678);
        sub_23809B3B0();
        sub_23809BA44();
        v58 = v133;
        sub_238153ECC();
        sub_23809BF44(v46);
        sub_238071284(v102, &qword_27DEEB170, &qword_238159608);
        (*(v99 + 8))(v120, v101);
      }
    }

    else
    {
      v59 = sub_238153DEC();
      v60 = v107;
      *v107 = v59;
      *(v60 + 8) = 0;
      *(v60 + 16) = 1;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB288, &qword_2381596D0);
      v62 = v45;
      sub_238098214(v45, (v60 + *(v61 + 44)));
      (*(v110 + 104))(v108, *MEMORY[0x277CE0EE0], v111);
      v63 = sub_23815464C();
      v64 = sub_2381540FC();
      v65 = v60 + *(v109 + 36);
      *v65 = v63;
      *(v65 + 8) = v64;
      sub_2381548DC();
      sub_238153A8C();
      v66 = v115;
      sub_23807121C(v60, v115, &qword_27DEEB140, &qword_2381595D8);
      v67 = (v66 + *(v112 + 36));
      v68 = v148;
      v67[4] = v147;
      v67[5] = v68;
      v67[6] = v149;
      v69 = v144;
      *v67 = v143;
      v67[1] = v69;
      v70 = v146;
      v67[2] = v145;
      v67[3] = v70;
      v71 = v130;
      sub_23809BCF4(v62, v130);
      v72 = (*(v119 + 80) + 16) & ~*(v119 + 80);
      v73 = swift_allocObject();
      sub_23809BD60(v71, v73 + v72);
      v74 = v66;
      v75 = v117;
      sub_23807121C(v74, v117, &qword_27DEEB148, &qword_2381595E0);
      v76 = (v75 + *(v114 + 36));
      *v76 = sub_23809BDC4;
      v76[1] = v73;
      v76[2] = 0;
      v76[3] = 0;
      sub_23809BCF4(v62, v71);
      v77 = swift_allocObject();
      sub_23809BD60(v71, v77 + v72);
      v78 = v116;
      sub_23807121C(v75, v116, &qword_27DEEB150, &qword_2381595E8);
      v79 = (v78 + *(v125 + 36));
      *v79 = 0;
      v79[1] = 0;
      v79[2] = sub_23809BF2C;
      v79[3] = v77;
      v80 = v118;
      sub_23807121C(v78, v118, &qword_27DEEB158, &qword_2381595F0);
      sub_2380712E4(v80, v124, &qword_27DEEB158, &qword_2381595F0);
      swift_storeEnumTagMultiPayload();
      v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEB1B0, &qword_238159680);
      v82 = sub_23809B4A4();
      v83 = sub_23809B5E8();
      v138 = v131;
      v139 = v81;
      v140 = v82;
      v141 = v83;
      swift_getOpaqueTypeConformance2();
      sub_23809B7BC();
      v84 = v126;
      sub_238153ECC();
      sub_2380712E4(v84, v135, &qword_27DEEB170, &qword_238159608);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB1A0, &qword_238159678);
      sub_23809B3B0();
      sub_23809BA44();
      v58 = v133;
      sub_238153ECC();
      sub_23809BF44(0);
      sub_238071284(v84, &qword_27DEEB170, &qword_238159608);
      sub_238071284(v80, &qword_27DEEB158, &qword_2381595F0);
    }

    sub_2380712E4(v58, v105, &qword_27DEEB188, &qword_238159620);
    swift_storeEnumTagMultiPayload();
    sub_238085CF4();
    sub_23809BC68();
    sub_238153ECC();
    return sub_238071284(v58, &qword_27DEEB188, &qword_238159620);
  }
}

void sub_2380951B0(void *a1)
{
  v1 = [a1 presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_23809521C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v64 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB560, &qword_238159C98);
  v4 = *(*(v61 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v61);
  v63 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - v7;
  v56 = sub_23815468C();
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v56);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB568, &qword_238159CA0);
  v14 = *(v13 - 8);
  v57 = v13;
  v58 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB570, &qword_238159CA8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v59 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v24 = *(type metadata accessor for NameDropView(0) + 24);
  v62 = a1;
  v25 = (a1 + v24);
  v26 = *v25;
  v27 = v25[1];
  v28 = *(v25 + 16);
  type metadata accessor for NameDropSessionController();
  sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v79[8] = v76;
  v79[9] = v77;
  v80 = v78;
  v79[4] = v72;
  v79[5] = v73;
  v79[6] = v74;
  v79[7] = v75;
  v79[0] = v68;
  v79[1] = v69;
  v79[2] = v70;
  v79[3] = v71;
  v29 = *(&v73 + 1);
  v30 = *(&v73 + 1);
  sub_23809B34C(v79);
  if (v29)
  {
    v31 = v30;
    sub_23815466C();
    v32 = v56;
    (*(v9 + 104))(v12, *MEMORY[0x277CE0FE0], v56);
    v33 = sub_2381546CC();

    (*(v9 + 8))(v12, v32);
    v34 = sub_2381548DC();
    v36 = v35;
    v37 = v57;
    v38 = &v17[*(v57 + 36)];
    v68 = xmmword_238159540;
    v69 = xmmword_238159550;
    v70 = xmmword_238159560;
    v71 = xmmword_238159570;
    v72 = xmmword_238159580;
    sub_2381543FC();

    v39 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB588, &qword_238159CC0) + 36)];
    *v39 = v34;
    v39[1] = v36;
    *v17 = v33;
    *(v17 + 1) = 0;
    *(v17 + 8) = 257;
    sub_23807121C(v17, v23, &qword_27DEEB568, &qword_238159CA0);
    v40 = 0;
    v41 = v37;
  }

  else
  {
    v40 = 1;
    v41 = v57;
  }

  (*(v58 + 56))(v23, v40, 1, v41);
  *v8 = sub_238153DEC();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB578, &qword_238159CB0);
  v43 = v62;
  sub_238095814(v62, v60, &v8[*(v42 + 44)]);
  v44 = sub_2381548DC();
  v46 = v45;
  sub_238096CDC(v43, &v65);
  v47 = v66;
  v48 = v67;
  v49 = &v8[*(v61 + 36)];
  *v49 = v65;
  *(v49 + 4) = v47;
  v49[10] = v48;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  v50 = v59;
  sub_2380712E4(v23, v59, &qword_27DEEB570, &qword_238159CA8);
  v51 = v63;
  sub_2380712E4(v8, v63, &qword_27DEEB560, &qword_238159C98);
  v52 = v64;
  sub_2380712E4(v50, v64, &qword_27DEEB570, &qword_238159CA8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB580, &qword_238159CB8);
  sub_2380712E4(v51, v52 + *(v53 + 48), &qword_27DEEB560, &qword_238159C98);
  sub_238071284(v8, &qword_27DEEB560, &qword_238159C98);
  sub_238071284(v23, &qword_27DEEB570, &qword_238159CA8);
  sub_238071284(v51, &qword_27DEEB560, &qword_238159C98);
  return sub_238071284(v50, &qword_27DEEB570, &qword_238159CA8);
}

uint64_t sub_238095814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v217 = a2;
  v210 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5A0, &qword_238159CD0);
  v212 = *(v4 - 8);
  v213 = v4;
  v5 = *(v212 + 64);
  MEMORY[0x28223BE20](v4);
  v202 = &v185[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5A8, &qword_238159CD8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v193 = &v185[-v9];
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5B0, &qword_238159CE0);
  v10 = *(*(v192 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v195 = &v185[-v11];
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5B8, &qword_238159CE8);
  v12 = *(*(v194 - 8) + 64);
  MEMORY[0x28223BE20](v194);
  v199 = &v185[-v13];
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5C0, &qword_238159CF0);
  v14 = *(*(v198 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v198);
  v201 = &v185[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v197 = &v185[-v18];
  MEMORY[0x28223BE20](v17);
  v200 = &v185[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5C8, &qword_238159CF8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v203 = &v185[-v22];
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5D0, &qword_238159D00);
  v23 = *(*(v187 - 8) + 64);
  MEMORY[0x28223BE20](v187);
  v190 = &v185[-v24];
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5D8, &qword_238159D08);
  v25 = *(*(v189 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v189);
  v196 = &v185[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v188 = &v185[-v29];
  MEMORY[0x28223BE20](v28);
  v211 = &v185[-v30];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5E0, &qword_238159D10);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v216 = &v185[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v33);
  v218 = &v185[-v35];
  v36 = *(type metadata accessor for NameDropView(0) + 24);
  v191 = a1;
  v37 = (a1 + v36);
  v39 = *v37;
  v38 = v37[1];
  v40 = *(v37 + 16);
  type metadata accessor for NameDropSessionController();
  v41 = sub_23809E560(&qword_27DEEB198, type metadata accessor for NameDropSessionController);
  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v297[8] = v294;
  v297[9] = v295;
  v298 = v296;
  v297[4] = v290;
  v297[5] = v291;
  v297[7] = v293;
  v297[6] = v292;
  v297[0] = v286;
  v297[1] = v287;
  v297[3] = v289;
  v297[2] = v288;
  v42 = v286;
  v43 = v287;
  v208 = v288;
  sub_23809E74C(v286, *(&v286 + 1), v287, *(&v287 + 1));
  sub_23809B34C(v297);
  v209 = *(&v43 + 1);
  v214 = v41;
  v215 = v39;
  if (*(&v43 + 1) == 3)
  {
    sub_23809E7A4(&v286);
  }

  else
  {
    v205 = v43;
    v206 = *(&v42 + 1);
    v207 = v42;
    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v227 = v294;
    v228 = v295;
    *&v229 = v296;
    v223 = v290;
    v224 = v291;
    v225 = v292;
    v226 = v293;
    v219 = v286;
    v220 = v287;
    v221 = v288;
    v222 = v289;
    v204 = *(&v289 + 1);

    sub_23809B34C(&v219);
    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v238 = v294;
    v239 = v295;
    *&v240 = v296;
    v234 = v290;
    v235 = v291;
    v236 = v292;
    v237 = v293;
    v230 = v286;
    v231 = v287;
    v232 = v288;
    v233 = v289;
    sub_23809B34C(&v230);
    v44 = objc_opt_self();
    v45 = [v44 mainScreen];
    [v45 bounds];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;

    v299.origin.x = v47;
    v299.origin.y = v49;
    v299.size.width = v51;
    v299.size.height = v53;
    if (CGRectGetHeight(v299) > 750.0)
    {
      v54 = 94.0;
    }

    else
    {
      v54 = 54.0;
    }

    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v270 = v294;
    v271 = v295;
    v272 = v296;
    v266 = v290;
    v267 = v291;
    v269 = v293;
    v268 = v292;
    v262 = v286;
    v263 = v287;
    v265 = v289;
    v264 = v288;
    sub_23809B34C(&v262);
    v55 = [v44 mainScreen];
    [v55 bounds];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;

    v300.origin.x = v57;
    v300.origin.y = v59;
    v300.size.width = v61;
    v300.size.height = v63;
    CGRectGetWidth(v300);
    sub_2381548DC();
    LOBYTE(v55) = BYTE8(v232);
    sub_238153A8C();
    *&v241 = v207;
    *(&v241 + 1) = v206;
    *&v242 = v205;
    *(&v242 + 1) = v209;
    *&v243 = v208;
    *(&v243 + 1) = v204;
    LOBYTE(v244) = v55;
    *(&v244 + 1) = v54;
    CGSizeMake(&v241);
    v294 = v249;
    v295 = v250;
    v296 = v251;
    v290 = v245;
    v291 = v246;
    v293 = v248;
    v292 = v247;
    v286 = v241;
    v287 = v242;
    v289 = v244;
    v288 = v243;
  }

  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v270 = v249;
  v271 = v250;
  v272 = v251;
  v266 = v245;
  v267 = v246;
  v269 = v248;
  v268 = v247;
  v262 = v241;
  v263 = v242;
  v265 = v244;
  v264 = v243;
  v64 = *(&v246 + 1);
  v65 = *(&v246 + 1);
  sub_23809B34C(&v262);
  if (v64)
  {

    v208 = 0;
    v209 = 0;
    v206 = 0;
    v207 = 0;
    v204 = 0;
    v205 = 0;
    v217 = 1;
  }

  else
  {
    v66 = v217;
    sub_2381548DC();
    sub_2381538EC();
    v208 = v274;
    v209 = v273;
    v206 = v276;
    v207 = v275;
    v204 = v278;
    v205 = v277;
    v67 = v66;
  }

  sub_23815381C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v259 = v249;
  v260 = v250;
  v261 = v251;
  v255 = v245;
  v256 = v246;
  v257 = v247;
  v258 = v248;
  v252[0] = v241;
  v252[1] = v242;
  v253 = v243;
  v254 = v244;
  sub_23809B34C(v252);
  v68 = 1;
  if ((BYTE8(v253) & 1) == 0)
  {
    v69 = sub_238153DEC();
    v70 = objc_opt_self();
    v71 = [v70 mainScreen];
    [v71 bounds];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;

    v301.origin.x = v73;
    v301.origin.y = v75;
    v301.size.width = v77;
    v301.size.height = v79;
    v80 = CGRectGetHeight(v301) > 750.0;
    v81 = 16.0;
    v82 = v203;
    *v203 = v69;
    if (!v80)
    {
      v81 = 9.0;
    }

    *(v82 + 8) = v81;
    *(v82 + 16) = 0;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5E8, &qword_238159D18);
    sub_238090754(v191, v82 + *(v83 + 44));
    v186 = v70;
    v84 = [v70 mainScreen];
    [v84 bounds];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;

    v302.origin.x = v86;
    v302.origin.y = v88;
    v302.size.width = v90;
    v302.size.height = v92;
    CGRectGetWidth(v302);
    sub_2381548DC();
    sub_238153A8C();
    v93 = v190;
    sub_23807121C(v82, v190, &qword_27DEEB5C8, &qword_238159CF8);
    v94 = &v93[*(v187 + 36)];
    v95 = v284;
    v94[4] = v283;
    v94[5] = v95;
    v94[6] = v285;
    v96 = v280;
    *v94 = v279;
    v94[1] = v96;
    v97 = v282;
    v94[2] = v281;
    v94[3] = v97;
    v98 = sub_23815490C();
    sub_23815381C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v99 = v241;
    v100 = v93;
    v101 = v188;
    sub_23807121C(v100, v188, &qword_27DEEB5D0, &qword_238159D00);
    v102 = &v101[*(v189 + 36)];
    *v102 = v98;
    v102[1] = v99;
    sub_23807121C(v101, v211, &qword_27DEEB5D8, &qword_238159D08);
    v103 = v193;
    sub_23808F2F4(v193);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_238158810;
    v105 = sub_23815412C();
    *(v104 + 32) = v105;
    v106 = sub_23815414C();
    *(v104 + 33) = v106;
    v107 = sub_23815413C();
    sub_23815413C();
    if (sub_23815413C() != v105)
    {
      v107 = sub_23815413C();
    }

    sub_23815413C();
    if (sub_23815413C() != v106)
    {
      v107 = sub_23815413C();
    }

    v108 = v199;
    sub_23815377C();
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v117 = v103;
    v118 = v195;
    sub_23807121C(v117, v195, &qword_27DEEB5A8, &qword_238159CD8);
    v119 = &v118[*(v192 + 36)];
    *v119 = v107;
    *(v119 + 1) = v110;
    *(v119 + 2) = v112;
    *(v119 + 3) = v114;
    *(v119 + 4) = v116;
    v119[40] = 0;
    v120 = sub_23815411C();
    v121 = v186;
    v122 = [v186 mainScreen];
    [v122 bounds];
    v124 = v123;
    v126 = v125;
    v128 = v127;
    v130 = v129;

    v303.origin.x = v124;
    v303.origin.y = v126;
    v303.size.width = v128;
    v303.size.height = v130;
    CGRectGetHeight(v303);
    sub_23815377C();
    v132 = v131;
    v134 = v133;
    v136 = v135;
    v138 = v137;
    sub_23807121C(v118, v108, &qword_27DEEB5B0, &qword_238159CE0);
    v139 = v108 + *(v194 + 36);
    *v139 = v120;
    *(v139 + 8) = v132;
    *(v139 + 16) = v134;
    *(v139 + 24) = v136;
    *(v139 + 32) = v138;
    *(v139 + 40) = 0;
    v140 = sub_23815410C();
    v141 = [v121 mainScreen];
    [v141 bounds];
    v143 = v142;
    v145 = v144;
    v147 = v146;
    v149 = v148;

    v304.origin.x = v143;
    v304.origin.y = v145;
    v304.size.width = v147;
    v304.size.height = v149;
    CGRectGetHeight(v304);
    sub_23815377C();
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v157 = v156;
    v158 = v197;
    sub_23807121C(v108, v197, &qword_27DEEB5B8, &qword_238159CE8);
    v159 = &v158[*(v198 + 36)];
    *v159 = v140;
    *(v159 + 1) = v151;
    *(v159 + 2) = v153;
    *(v159 + 3) = v155;
    *(v159 + 4) = v157;
    v159[40] = 0;
    v160 = v200;
    sub_23807121C(v158, v200, &qword_27DEEB5C0, &qword_238159CF0);
    v161 = v211;
    v162 = v196;
    sub_2380712E4(v211, v196, &qword_27DEEB5D8, &qword_238159D08);
    v163 = v201;
    sub_2380712E4(v160, v201, &qword_27DEEB5C0, &qword_238159CF0);
    v164 = v202;
    sub_2380712E4(v162, v202, &qword_27DEEB5D8, &qword_238159D08);
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5F0, &qword_238159D70);
    sub_2380712E4(v163, &v164[*(v165 + 48)], &qword_27DEEB5C0, &qword_238159CF0);
    sub_238071284(v160, &qword_27DEEB5C0, &qword_238159CF0);
    sub_238071284(v161, &qword_27DEEB5D8, &qword_238159D08);
    sub_238071284(v163, &qword_27DEEB5C0, &qword_238159CF0);
    sub_238071284(v162, &qword_27DEEB5D8, &qword_238159D08);
    sub_23807121C(v164, v218, &qword_27DEEB5A0, &qword_238159CD0);
    v68 = 0;
  }

  v166 = v218;
  (*(v212 + 56))(v218, v68, 1, v213);
  v227 = v294;
  v228 = v295;
  v229 = v296;
  v223 = v290;
  v224 = v291;
  v225 = v292;
  v226 = v293;
  v219 = v286;
  v220 = v287;
  v221 = v288;
  v222 = v289;
  v167 = v216;
  sub_2380712E4(v166, v216, &qword_27DEEB5E0, &qword_238159D10);
  v168 = v228;
  v238 = v227;
  v239 = v228;
  v169 = v229;
  v240 = v229;
  v170 = v223;
  v171 = v224;
  v234 = v223;
  v235 = v224;
  v173 = v225;
  v172 = v226;
  v236 = v225;
  v237 = v226;
  v174 = v219;
  v175 = v220;
  v230 = v219;
  v231 = v220;
  v177 = v221;
  v176 = v222;
  v232 = v221;
  v233 = v222;
  v179 = v209;
  v178 = v210;
  *(v210 + 128) = v227;
  *(v178 + 144) = v168;
  *(v178 + 160) = v169;
  *(v178 + 64) = v170;
  *(v178 + 80) = v171;
  *(v178 + 96) = v173;
  *(v178 + 112) = v172;
  *v178 = v174;
  *(v178 + 16) = v175;
  *(v178 + 32) = v177;
  *(v178 + 48) = v176;
  *(v178 + 176) = 0;
  *(v178 + 184) = 1;
  v180 = v217;
  *(v178 + 192) = v217;
  *(v178 + 200) = v179;
  v181 = v207;
  *(v178 + 208) = v208;
  *(v178 + 216) = v181;
  v182 = v205;
  *(v178 + 224) = v206;
  *(v178 + 232) = v182;
  *(v178 + 240) = v204;
  *(v178 + 248) = 0;
  *(v178 + 256) = 1;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB5F8, &qword_238159D78);
  sub_2380712E4(v167, v178 + *(v183 + 96), &qword_27DEEB5E0, &qword_238159D10);
  sub_2380712E4(&v230, &v241, &qword_27DEEB600, &qword_238159D80);
  sub_23809B3A0(v180);
  sub_23809BF44(v180);
  sub_238071284(v218, &qword_27DEEB5E0, &qword_238159D10);
  sub_238071284(v216, &qword_27DEEB5E0, &qword_238159D10);
  sub_23809BF44(v180);
  v249 = v227;
  v250 = v228;
  v251 = v229;
  v245 = v223;
  v246 = v224;
  v247 = v225;
  v248 = v226;
  v241 = v219;
  v242 = v220;
  v243 = v221;
  v244 = v222;
  return sub_238071284(&v241, &qword_27DEEB600, &qword_238159D80);
}