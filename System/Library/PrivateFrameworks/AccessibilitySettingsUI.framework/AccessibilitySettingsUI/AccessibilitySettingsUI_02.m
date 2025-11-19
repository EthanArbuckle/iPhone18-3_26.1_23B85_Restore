uint64_t sub_23D952984(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_23D95125C(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_23D95338C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23D9529FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_23D95125C(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_23D952A8C()
{
  v1 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__selectedCategoryName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54D0, &qword_23D9DE5B8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__selectedCategorySymbol, v2);
  v4 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__tapCategory;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54D8, &qword_23D9DE5C0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__tapPhrase;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54E0, &qword_23D9DE5C8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__categories;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54E8, &qword_23D9DE5D0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__phrases;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54F0, &qword_23D9DE5D8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__isEditingPhrase;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F54F8, &qword_23D9DE5E0);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__isEditingCategory, v13);
  v15 = OBJC_IVAR____TtC23AccessibilitySettingsUI23LiveSpeechDataViewModel__phraseCountSelection;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5500, &qword_23D9DE5E8);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = *(*v0 + 48);
  v18 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LiveSpeechDataViewModel()
{
  result = qword_27E2F5478;
  if (!qword_27E2F5478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23D952DA0()
{
  sub_23D9530D4(319, &qword_27E2F5488);
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_23D95302C(319, &qword_27E2F5490, MEMORY[0x277D70718]);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      sub_23D95302C(319, &qword_27E2F5498, MEMORY[0x277D70710]);
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_23D953080(319, &qword_27E2F54A0, &qword_27E2F49F8, &unk_23D9DE140);
        if (v7 <= 0x3F)
        {
          v17 = *(v6 - 8) + 64;
          sub_23D953080(319, &qword_27E2F54A8, &qword_27E2F50D8, &unk_23D9DE2C0);
          if (v9 <= 0x3F)
          {
            v18 = *(v8 - 8) + 64;
            sub_23D9530D4(319, &qword_27E2F54B0);
            if (v11 <= 0x3F)
            {
              v19 = *(v10 - 8) + 64;
              sub_23D9530D4(319, &qword_27E2F54B8);
              if (v13 <= 0x3F)
              {
                v20 = *(v12 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23D95302C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23D9D93A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23D953080(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23D9D93A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23D9530D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23D9D93A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for LiveSpeechMaxRecentsOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LiveSpeechMaxRecentsOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23D953284()
{
  result = qword_27E2F54C0;
  if (!qword_27E2F54C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4EF0, &unk_23D9DD770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F54C0);
  }

  return result;
}

unint64_t sub_23D9532EC()
{
  result = qword_27E2F54C8;
  if (!qword_27E2F54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F54C8);
  }

  return result;
}

uint64_t sub_23D95334C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LiveSpeechDataViewModel();
  result = sub_23D9D9334();
  *a1 = result;
  return result;
}

uint64_t sub_23D95338C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23D9DAF84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23D9DAD44();
        v6 = sub_23D9DA984();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_23D953644(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_23D953490(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23D953490(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 name];
      sub_23D9DA8B4();

      v11 = sub_23D9DA8E4();
      v13 = v12;

      v14 = [v9 name];
      sub_23D9DA8B4();

      v15 = sub_23D9DA8E4();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_23D9DAFC4();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_23D953644(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v7 = *(a3 + 8);
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_106:
    v5 = v6;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v109 = v4;
LABEL_109:
      v4 = *(v109 + 2);
      if (v4 >= 2)
      {
        while (*v5)
        {
          v110 = *&v109[16 * v4];
          v111 = v109;
          v112 = *&v109[16 * v4 + 24];
          sub_23D953EE8(*v5 + v110, *v5 + *&v109[16 * v4 + 16], *v5 + v112, v6);
          if (v127)
          {
            goto LABEL_117;
          }

          if (v112 < v110)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_23D950D9C(v111);
          }

          if (v4 - 2 >= *(v111 + 2))
          {
            goto LABEL_133;
          }

          v113 = &v111[16 * v4];
          *v113 = v110;
          *(v113 + 1) = v112;
          sub_23D950D10(v4 - 1);
          v109 = v111;
          v4 = *(v111 + 2);
          if (v4 <= 1)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_143;
      }

LABEL_117:

      return;
    }

LABEL_139:
    v109 = sub_23D950D9C(v4);
    goto LABEL_109;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v123 = v7;
      v116 = v9;
      v118 = v10;
      v4 = *v6;
      v11 = *(*v6 + v8);
      v12 = *(*v6 + v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 name];
      sub_23D9DA8B4();

      v5 = sub_23D9DA8E4();
      v17 = v16;

      v18 = [v14 name];
      sub_23D9DA8B4();

      v19 = sub_23D9DA8E4();
      v21 = v20;

      if (v5 == v19 && v17 == v21)
      {
        v128 = 0;
      }

      else
      {
        v128 = sub_23D9DAFC4();
      }

      v10 = v118;
      v8 = v118 + 2;
      if (v118 + 2 < v123)
      {
        v4 += 8 * v118 + 16;
        do
        {
          v125 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 name];
          sub_23D9DA8B4();

          v28 = sub_23D9DA8E4();
          v30 = v29;

          v31 = [v26 name];
          sub_23D9DA8B4();
          v5 = v32;

          v33 = sub_23D9DA8E4();
          v35 = v34;

          if (v28 == v33 && v30 == v35)
          {

            v8 = v125;
            if (v128)
            {
              v6 = a3;
              v9 = v116;
              v10 = v118;
              goto LABEL_25;
            }
          }

          else
          {
            v23 = sub_23D9DAFC4();

            v8 = v125;
            if ((v128 ^ v23))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v123 != v8);
        v8 = v123;
LABEL_23:
        v10 = v118;
      }

      v6 = a3;
      v9 = v116;
      if (v128)
      {
LABEL_25:
        if (v8 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v8)
        {
          v37 = 8 * v8 - 8;
          v38 = 8 * v10;
          v39 = v8;
          v40 = v10;
          do
          {
            if (v40 != --v39)
            {
              v41 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v42 = *&v41[v38];
              *&v41[v38] = *&v41[v37];
              *&v41[v37] = v42;
            }

            ++v40;
            v37 -= 8;
            v38 += 8;
          }

          while (v40 < v39);
        }
      }
    }

    v43 = v6[1];
    if (v8 < v43)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_135;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v8 < v10)
    {
      goto LABEL_134;
    }

    v62 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v62;
    }

    else
    {
      v9 = sub_23D93C534(0, *(v62 + 2) + 1, 1, v62);
    }

    v4 = *(v9 + 2);
    v63 = *(v9 + 3);
    v64 = v4 + 1;
    if (v4 >= v63 >> 1)
    {
      v9 = sub_23D93C534((v63 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v64;
    v65 = &v9[16 * v4];
    *(v65 + 4) = v10;
    *(v65 + 5) = v8;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v4)
    {
      while (1)
      {
        v66 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v67 = *(v9 + 4);
          v68 = *(v9 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_74:
          if (v70)
          {
            goto LABEL_123;
          }

          v83 = &v9[16 * v64];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_126;
          }

          v89 = &v9[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_130;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v64 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v93 = &v9[16 * v64];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_88:
        if (v88)
        {
          goto LABEL_125;
        }

        v96 = &v9[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_128;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_95:
        v4 = v66 - 1;
        if (v66 - 1 >= v64)
        {
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
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v104 = v8;
        v105 = v9;
        v106 = *&v9[16 * v4 + 32];
        v107 = *&v9[16 * v66 + 40];
        sub_23D953EE8(*v6 + v106, *v6 + *&v9[16 * v66 + 32], *v6 + v107, v5);
        if (v127)
        {
          goto LABEL_117;
        }

        if (v107 < v106)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_23D950D9C(v105);
        }

        if (v4 >= *(v105 + 2))
        {
          goto LABEL_120;
        }

        v108 = &v105[16 * v4];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        sub_23D950D10(v66);
        v9 = v105;
        v64 = *(v105 + 2);
        v8 = v104;
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v9[16 * v64 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_121;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_122;
      }

      v78 = &v9[16 * v64];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_124;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_127;
      }

      if (v82 >= v74)
      {
        v100 = &v9[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_131;
        }

        if (v69 < v103)
        {
          v66 = v64 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_106;
    }
  }

  v44 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  if (v44 >= v43)
  {
    v44 = v6[1];
  }

  if (v44 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v8 == v44)
  {
    goto LABEL_54;
  }

  v117 = v9;
  v119 = v10;
  v129 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v45 = v10 - v8;
  v121 = v44;
LABEL_43:
  v124 = v4;
  v126 = v8;
  v46 = v129[v8];
  v122 = v45;
  v47 = v45;
  while (1)
  {
    v48 = *v4;
    v49 = v46;
    v5 = v48;
    v50 = [v49 name];
    sub_23D9DA8B4();

    v51 = sub_23D9DA8E4();
    v53 = v52;

    v54 = [v5 name];
    sub_23D9DA8B4();

    v55 = sub_23D9DA8E4();
    v57 = v56;

    if (v51 == v55 && v53 == v57)
    {

LABEL_42:
      v8 = v126 + 1;
      v4 = v124 + 8;
      v45 = v122 - 1;
      if (v126 + 1 == v121)
      {
        v8 = v121;
        v6 = a3;
        v9 = v117;
        v10 = v119;
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    v59 = sub_23D9DAFC4();

    if ((v59 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v129)
    {
      break;
    }

    v60 = *v4;
    v46 = *(v4 + 8);
    *v4 = v46;
    *(v4 + 8) = v60;
    v4 -= 8;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_23D953EE8(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = __dst;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v4[v9];
    if (v7 < 8)
    {
LABEL_10:
      v6 = v13;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v51 = v6;
      v15 = v4;
      v16 = *v4;
      v17 = *v6;
      v18 = v16;
      v19 = [v17 name];
      sub_23D9DA8B4();

      v20 = sub_23D9DA8E4();
      v22 = v21;

      v23 = [v18 name];
      sub_23D9DA8B4();

      v24 = sub_23D9DA8E4();
      v26 = v25;

      if (v20 == v24 && v22 == v26)
      {
        break;
      }

      v28 = sub_23D9DAFC4();

      if ((v28 & 1) == 0)
      {
        goto LABEL_22;
      }

      v14 = v51;
      v6 = v51 + 1;
      v4 = v15;
      if (v13 != v51)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v13;
      if (v4 >= v54)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v14 = v15;
    v4 = v15 + 1;
    v6 = v51;
    if (v13 == v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v13 = *v14;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v12] <= a4)
  {
    memmove(a4, __src, 8 * v12);
  }

  v54 = &v4[v12];
  if (v10 >= 8 && v6 > __dst)
  {
    v47 = v4;
LABEL_30:
    v52 = v6;
    v29 = v6 - 1;
    v30 = v5;
    v31 = v54;
    v48 = v29;
    do
    {
      v32 = *--v31;
      v33 = *v29;
      v34 = v32;
      v35 = v33;
      v49 = v34;
      v36 = [v34 name];
      sub_23D9DA8B4();

      v37 = sub_23D9DA8E4();
      v39 = v38;

      v50 = v35;
      v40 = [v35 name];
      sub_23D9DA8B4();

      v41 = sub_23D9DA8E4();
      v43 = v42;

      if (v37 == v41 && v39 == v43)
      {

        v5 = v30 - 1;
      }

      else
      {
        v45 = sub_23D9DAFC4();

        v5 = v30 - 1;
        if (v45)
        {
          v4 = v47;
          if (v30 != v52)
          {
            *v5 = *v48;
          }

          if (v54 <= v47 || (v6 = v48, v48 <= __dst))
          {
            v6 = v48;
            goto LABEL_47;
          }

          goto LABEL_30;
        }
      }

      v4 = v47;
      v29 = v48;
      if (v54 != v30)
      {
        *v5 = *v31;
      }

      v54 = v31;
      v30 = v5;
    }

    while (v31 > v47);
    v54 = v31;
    v6 = v52;
  }

LABEL_47:
  if (v6 != v4 || v6 >= (v4 + ((v54 - v4 + (v54 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v54 - v4));
  }

  return 1;
}

uint64_t sub_23D954344(uint64_t a1)
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
    sub_23D9DAF34();
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
  result = sub_23D9DAE94();
  *v1 = result;
  return result;
}

uint64_t sub_23D9543E4(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_27E2F41A8 != -1)
      {
        swift_once();
      }

      v1 = qword_27E2F7320;
      v2 = 0xD00000000000001CLL;
      if (!qword_27E2F7320)
      {
        return v2;
      }
    }

    else
    {
      if (qword_27E2F41A8 != -1)
      {
        swift_once();
      }

      v1 = qword_27E2F7320;
      v2 = 0xD000000000000016;
      if (!qword_27E2F7320)
      {
        return v2;
      }
    }

LABEL_19:
    v3 = v1;
    v4 = sub_23D9DA8A4();
    goto LABEL_20;
  }

  if (!a1)
  {
    if (qword_27E2F41A8 != -1)
    {
      swift_once();
    }

    v1 = qword_27E2F7320;
    v2 = 0xD000000000000015;
    if (!qword_27E2F7320)
    {
      return v2;
    }

    goto LABEL_19;
  }

  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  v2 = 0xD000000000000017;
  if (qword_27E2F7320)
  {
    v3 = qword_27E2F7320;
    v4 = sub_23D9DA8A4();
LABEL_20:
    v5 = sub_23D9DA8A4();
    v6 = sub_23D9DA8A4();
    v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

    v2 = sub_23D9DA8B4();
  }

  return v2;
}

char *sub_23D954634(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_23D9DAD44();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_23D9DAF34();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_23D9DAF34();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_23D954750(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_23D9DAF34();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_23D9DAF34();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_23D954344(result);

  return sub_23D954634(v6, v5, 1, v3);
}

uint64_t sub_23D95483C(uint64_t a1)
{
  if (a1 > 49)
  {
    if (a1 != 50)
    {
      if (a1 == 100)
      {
        return 2;
      }

      return 4;
    }

    return 1;
  }

  else
  {
    if (a1 != 1)
    {
      if (a1 == 10)
      {
        return 0;
      }

      return 4;
    }

    return 3;
  }
}

double sub_23D9548D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a1;
  v8 = sub_23D9D8954();
  v51 = *(v8 - 8);
  *&v52 = v8 - 8;
  v9 = v51;
  *&v50 = *(v51 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4670, &qword_23D9DC650);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v46 - v14;
  v56 = &v46 - v14;
  v16 = sub_23D9D89C4();
  v54 = v16;
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a2, v16);
  v18 = *(v17 + 56);
  v53 = v17 + 56;
  v55 = v18;
  v18(v15, 0, 1, v16);
  sub_23D9DA9B4();
  v19 = sub_23D9DA9A4();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  v47 = *(v9 + 16);
  v47(v11, a1, v8);
  sub_23D958270(a3, &v62);
  v22 = sub_23D9DA9A4();
  v23 = *(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = MEMORY[0x277D85700];
  v25 = *(a3 + 112);
  *(v24 + 128) = *(a3 + 96);
  *(v24 + 144) = v25;
  *(v24 + 160) = *(a3 + 128);
  v26 = *(a3 + 48);
  *(v24 + 64) = *(a3 + 32);
  *(v24 + 80) = v26;
  v27 = *(a3 + 80);
  *(v24 + 96) = *(a3 + 64);
  *(v24 + 112) = v27;
  v28 = *(a3 + 16);
  *(v24 + 32) = *a3;
  *(v24 + 48) = v28;
  (*(v9 + 32))(v24 + ((v23 + 168) & ~v23), v49, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4458, &qword_23D9DD3A0);
  sub_23D9DA594();
  v50 = v62;
  v29 = v63;
  v49 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4770, &unk_23D9E0CA0);
  v30 = *(v51 + 72);
  v31 = (v23 + 32) & ~v23;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_23D9DC3E0;
  v47((v32 + v31), v48, v8);
  v33 = sub_23D93D8F8(v32);
  swift_setDeallocating();
  (*(v9 + 8))(v32 + v31, v8);
  swift_deallocClassInstance();
  *&v57 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4778, &qword_23D9DC800);
  sub_23D9DA5A4();

  v34 = v60;
  v59 = *(a3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  v52 = v61;
  sub_23D9DA3D4();
  v35 = v57;
  LOBYTE(v31) = v58;
  *&v59 = 0;
  *(&v59 + 1) = 0xE000000000000000;
  sub_23D9DA3A4();
  v36 = v58;
  *a4 = v57;
  *(a4 + 16) = v36;
  v37 = type metadata accessor for VoiceSelectionCellDetailView(0);
  v38 = v37[5];
  v55(a4 + v38, 1, 1, v54);
  v39 = a4 + v37[7];
  *v39 = swift_getKeyPath();
  *(v39 + 40) = 0;
  v40 = v37[11];
  *(a4 + v40) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  swift_storeEnumTagMultiPayload();
  sub_23D93DA98(v56, a4 + v38);
  v41 = a4 + v37[8];
  *v41 = v50;
  v42 = v49;
  *(v41 + 16) = v29;
  *(v41 + 24) = v42;
  v43 = a4 + v37[9];
  *v43 = v34;
  result = *&v52;
  *(v43 + 8) = v52;
  *(a4 + v37[6]) = 1;
  v45 = a4 + v37[10];
  *v45 = v35;
  *(v45 + 16) = v31;
  return result;
}

uint64_t sub_23D954E8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23D9D8954();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2F6C70, &unk_23D9E0A10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29[-v14 - 8];
  v17 = *a1;
  v16 = a1[1];
  v18 = sub_23D9DA9F4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  (*(v9 + 16))(v11, a5, v8);
  sub_23D9DA9B4();

  sub_23D958270(a4, v29);
  v19 = sub_23D9DA9A4();
  v20 = (*(v9 + 80) + 184) & ~*(v9 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v19;
  *(v21 + 24) = v22;
  *(v21 + 32) = v17;
  *(v21 + 40) = v16;
  v23 = *(a4 + 112);
  *(v21 + 144) = *(a4 + 96);
  *(v21 + 160) = v23;
  *(v21 + 176) = *(a4 + 128);
  v24 = *(a4 + 48);
  *(v21 + 80) = *(a4 + 32);
  *(v21 + 96) = v24;
  v25 = *(a4 + 80);
  *(v21 + 112) = *(a4 + 64);
  *(v21 + 128) = v25;
  v26 = *(a4 + 16);
  *(v21 + 48) = *a4;
  *(v21 + 64) = v26;
  (*(v9 + 32))(v21 + v20, v11, v8);
  sub_23D9BB718(0, 0, v15, &unk_23D9DE9C8, v21);
}

uint64_t sub_23D9550D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[49] = a6;
  v7[50] = a7;
  v7[47] = a4;
  v7[48] = a5;
  v8 = sub_23D9D88A4();
  v7[51] = v8;
  v9 = *(v8 - 8);
  v7[52] = v9;
  v10 = *(v9 + 64) + 15;
  v7[53] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60) - 8) + 64) + 15;
  v7[54] = swift_task_alloc();
  v12 = *(*(sub_23D9D8DA4() - 8) + 64) + 15;
  v7[55] = swift_task_alloc();
  v13 = sub_23D9D90B4();
  v7[56] = v13;
  v14 = *(v13 - 8);
  v7[57] = v14;
  v15 = *(v14 + 64) + 15;
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  sub_23D9DA9B4();
  v7[60] = sub_23D9DA9A4();
  v17 = sub_23D9DA994();
  v7[61] = v17;
  v7[62] = v16;

  return MEMORY[0x2822009F8](sub_23D955294, v17, v16);
}

uint64_t sub_23D955294()
{
  v1 = *(v0 + 384);
  if (v1)
  {
    v2 = *(v0 + 392);
    *(v0 + 16) = *v2;
    v3 = *(v2 + 4);
    v5 = *(v2 + 1);
    v4 = *(v2 + 2);
    *(v0 + 64) = *(v2 + 3);
    *(v0 + 80) = v3;
    *(v0 + 32) = v5;
    *(v0 + 48) = v4;
    v7 = *(v2 + 6);
    v6 = *(v2 + 7);
    v8 = *(v2 + 5);
    *(v0 + 144) = v2[16];
    *(v0 + 112) = v7;
    *(v0 + 128) = v6;
    *(v0 + 96) = v8;
    v9 = *v2;
    *(v0 + 504) = *v2;
    v10 = v2[1];
    *(v0 + 512) = v10;
    v11 = v2[2];
    *(v0 + 520) = v11;
    *(v0 + 184) = v9;
    *(v0 + 192) = v10;
    *(v0 + 200) = v11;
    *(v0 + 528) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
    MEMORY[0x23EEF3850]();
    v12 = *(v0 + 328);
    *(v0 + 536) = v12;
    v13 = swift_task_alloc();
    *(v0 + 544) = v13;
    *v13 = v0;
    v13[1] = sub_23D955428;
    v14 = *(v0 + 376);

    return sub_23D9559BC(v12, v14, v1);
  }

  else
  {
    v16 = *(v0 + 480);

    v18 = *(v0 + 464);
    v17 = *(v0 + 472);
    v20 = *(v0 + 432);
    v19 = *(v0 + 440);
    v21 = *(v0 + 424);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_23D955428(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 544);
  v6 = *(*v2 + 536);
  v10 = *v2;
  *(v4 + 552) = a1;
  *(v4 + 560) = a2;

  v7 = *(v3 + 496);
  v8 = *(v3 + 488);

  return MEMORY[0x2822009F8](sub_23D955578, v8, v7);
}

uint64_t sub_23D955578()
{
  v36 = *(v0 + 552);
  v37 = *(v0 + 560);
  v40 = *(v0 + 512);
  v42 = *(v0 + 528);
  v38 = *(v0 + 504);
  v39 = *(v0 + 520);
  v1 = *(v0 + 480);
  v2 = *(v0 + 456);
  v35 = *(v0 + 464);
  v3 = *(v0 + 440);
  v33 = *(v0 + 472);
  v34 = *(v0 + 448);
  v4 = *(v0 + 424);
  v5 = *(v0 + 432);
  v6 = *(v0 + 416);
  v7 = *(v0 + 400);
  v8 = *(v0 + 384);
  v31 = *(v0 + 376);
  v32 = *(v0 + 408);

  v9 = sub_23D9D8954();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v5, v7, v9);
  (*(v10 + 56))(v5, 0, 1, v9);

  sub_23D9D8D74();
  sub_23D9D8894();
  sub_23D9D8874();
  (*(v6 + 8))(v4, v32);
  sub_23D9D9054();
  (*(v2 + 16))(v35, v33, v34);
  *(v0 + 208) = v38;
  *(v0 + 304) = v39;
  *(v0 + 312) = v38;
  *(v0 + 216) = v40;
  *(v0 + 224) = v39;
  sub_23D958900(v0 + 312, v0 + 344);

  sub_23D91F2DC(v0 + 304, v0 + 352, &qword_27E2F4D78, qword_23D9DD470);
  MEMORY[0x23EEF3850](v42);
  v11 = *(v0 + 336);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_23D93C638(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_23D93C638(v12 > 1, v13 + 1, 1, v11);
  }

  v14 = *(v0 + 528);
  v15 = *(v0 + 504);
  v16 = *(v0 + 464);
  v41 = *(v0 + 472);
  v17 = *(v0 + 448);
  v18 = *(v0 + 456);
  v19 = *(v0 + 392);
  v43 = *(v0 + 512);
  v11[2] = v13 + 1;
  v20 = v17;
  (*(v18 + 32))(v11 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v13, v16);
  *(v0 + 232) = v15;
  *(v0 + 240) = v43;
  *(v0 + 360) = v11;
  sub_23D9DA564();
  sub_23D95895C(v0 + 312);

  sub_23D91F344(v0 + 304, &qword_27E2F4D78, qword_23D9DD470);
  v21 = sub_23D9D9064();
  v22 = *(v19 + 56);
  *(v0 + 152) = *(v19 + 40);
  *(v0 + 168) = v22;
  *(v0 + 272) = v21;
  *(v0 + 280) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4DE8, &qword_23D9DE9E0);
  sub_23D9DA564();
  *(v0 + 256) = *(v19 + 24);
  *(v0 + 288) = *(v19 + 24);
  *(v0 + 568) = 0;
  *(v0 + 320) = *(v0 + 264);
  sub_23D91F2DC(v0 + 320, v0 + 368, &qword_27E2F5558, &unk_23D9DE9E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3C4();
  (*(v18 + 8))(v41, v20);
  sub_23D91F344(v0 + 256, &qword_27E2F4758, &unk_23D9DC7E0);
  v25 = *(v0 + 464);
  v24 = *(v0 + 472);
  v27 = *(v0 + 432);
  v26 = *(v0 + 440);
  v28 = *(v0 + 424);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_23D9559BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_23D9D9954();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = sub_23D9D8C74();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  sub_23D9DA9B4();
  v3[14] = sub_23D9DA9A4();
  v12 = sub_23D9DA994();
  v3[15] = v12;
  v3[16] = v11;

  return MEMORY[0x2822009F8](sub_23D955B48, v12, v11);
}

uint64_t sub_23D955B48()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_17:
    v24 = v0[14];

    v25 = v0[13];
    v26 = v0[9];
    v27 = v0[10];

    v28 = v0[1];

    return v28(0, 0);
  }

  v3 = v0[6];
  v4 = 0;
  v5 = *(sub_23D9D90B4() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v5 + 72);
  do
  {
    v10 = sub_23D9D9074();
    if (!v11)
    {
      goto LABEL_5;
    }

    if (v10 == v0[5] && v11 == v3)
    {
    }

    else
    {
      v13 = v0[6];
      v14 = sub_23D9DAFC4();

      if ((v14 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      __break(1u);
      return result;
    }

LABEL_5:
    v0[17] = v4;
    v6 += v7;
    --v2;
  }

  while (v2);
  if (!v4)
  {
    goto LABEL_17;
  }

  v16 = v0[8];
  v15 = v0[9];
  v17 = v0[7];
  sub_23D9DACD4();
  v18 = sub_23D9D9D24();
  sub_23D9D91B4();

  sub_23D9D9944();
  sub_23D9589B0();
  sub_23D9D9964();
  v0[18] = v0[2];
  (*(v16 + 8))(v15, v17);
  v19 = *(MEMORY[0x277D70100] + 4);
  v29 = (*MEMORY[0x277D70100] + MEMORY[0x277D70100]);
  v20 = swift_task_alloc();
  v0[19] = v20;
  *v20 = v0;
  v20[1] = sub_23D955DD8;
  v21 = v0[10];
  v22 = v0[5];
  v23 = v0[6];

  return v29(v21, v22, v23);
}

uint64_t sub_23D955DD8()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_23D955F1C, v5, v4);
}

void sub_23D955F1C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_23D91F344(v0[10], &qword_27E2F4460, &qword_23D9DC2A0);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v0[17];
    (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
    sub_23D9BB28C();
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    v11 = v8;
    v6 = v9;
    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[11];
    v0[3] = v10;
    v15 = sub_23D9DAF94();
    MEMORY[0x23EEF3C30](v15);

    MEMORY[0x23EEF3C30](41, 0xE100000000000000);

    MEMORY[0x23EEF3C30](10272, 0xE200000000000000);

    v5 = v11;
    (*(v13 + 8))(v12, v14);
  }

  v16 = v0[13];
  v18 = v0[9];
  v17 = v0[10];

  v19 = v0[1];

  v19(v5, v6);
}

uint64_t sub_23D9560E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5568, &qword_23D9DE9F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - v4;
  v6 = v0[7];
  v46 = v0[6];
  v47 = v6;
  v7 = v0[3];
  v42 = v0[2];
  v43 = v7;
  v8 = v0[5];
  v44 = v0[4];
  v45 = v8;
  v9 = v0[1];
  v40 = *v0;
  v41 = v9;
  v48 = *(v0 + 16);
  v36 = v40;
  v37 = *(v0 + 2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
  sub_23D9DA584();
  v11 = swift_allocObject();
  v12 = v47;
  *(v11 + 112) = v46;
  *(v11 + 128) = v12;
  *(v11 + 144) = v48;
  v13 = v43;
  *(v11 + 48) = v42;
  *(v11 + 64) = v13;
  v14 = v45;
  *(v11 + 80) = v44;
  *(v11 + 96) = v14;
  v15 = v41;
  *(v11 + 16) = v40;
  *(v11 + 32) = v15;
  sub_23D958270(&v40, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5570, &qword_23D9DEA00);
  sub_23D958A0C();
  sub_23D958AF8();
  sub_23D958BA8();
  sub_23D9DA624();
  v16 = swift_allocObject();
  v17 = v47;
  *(v16 + 112) = v46;
  *(v16 + 128) = v17;
  *(v16 + 144) = v48;
  v18 = v43;
  *(v16 + 48) = v42;
  *(v16 + 64) = v18;
  v19 = v45;
  *(v16 + 80) = v44;
  *(v16 + 96) = v19;
  v20 = v41;
  *(v16 + 16) = v40;
  *(v16 + 32) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23D958C5C;
  *(v21 + 24) = v16;
  v22 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F55B8, &qword_23D9DEA18) + 36)];
  *v22 = sub_23D958C9C;
  *(v22 + 1) = v21;
  v23 = swift_allocObject();
  v24 = v47;
  *(v23 + 112) = v46;
  *(v23 + 128) = v24;
  *(v23 + 144) = v48;
  v25 = v43;
  *(v23 + 48) = v42;
  *(v23 + 64) = v25;
  v26 = v45;
  *(v23 + 80) = v44;
  *(v23 + 96) = v26;
  v27 = v41;
  *(v23 + 16) = v40;
  *(v23 + 32) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_23D958CA4;
  *(v28 + 24) = v23;
  v29 = &v5[*(v2 + 36)];
  *v29 = sub_23D94B0F8;
  v29[1] = v28;
  v38 = *v1;
  v39 = *(v1 + 2);
  sub_23D958270(&v40, &v36);
  sub_23D958270(&v40, &v36);
  MEMORY[0x23EEF3850](&v36, v10);
  *&v38 = v36;
  v30 = swift_allocObject();
  v31 = v47;
  *(v30 + 112) = v46;
  *(v30 + 128) = v31;
  *(v30 + 144) = v48;
  v32 = v43;
  *(v30 + 48) = v42;
  *(v30 + 64) = v32;
  v33 = v45;
  *(v30 + 80) = v44;
  *(v30 + 96) = v33;
  v34 = v41;
  *(v30 + 16) = v40;
  *(v30 + 32) = v34;
  sub_23D958270(&v40, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D78, qword_23D9DD470);
  sub_23D958D50();
  sub_23D958F44();
  sub_23D9DA1E4();

  return sub_23D91F344(v5, &qword_27E2F5568, &qword_23D9DE9F8);
}

uint64_t sub_23D9564EC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = sub_23D9D91D4();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v61 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4460, &qword_23D9DC2A0);
  v8 = *(*(v53 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v53);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D40, &qword_23D9DEA10);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v54 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F55A0, &qword_23D9DEA08);
  v58 = *(v20 - 8);
  v59 = v20;
  v21 = *(v58 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - v22;
  swift_getKeyPath();
  v55 = v14;
  sub_23D9DA574();

  *v63 = v64;
  *&v63[16] = v65;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5618, &unk_23D9E0BF0);
  MEMORY[0x23EEF3850](v62, v24);
  if (v62[1])
  {

    v52 = a1;
    sub_23D91F2DC(a1, v19, &qword_27E2F4D40, &qword_23D9DEA10);
    v25 = *(a2 + 56);
    v64 = *(a2 + 40);
    v65 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4DE8, &qword_23D9DE9E0);
    sub_23D9DA584();
    v51 = *v63;
    v49 = *&v63[24];
    v50 = *&v63[16];
    v64 = *a2;
    *&v65 = *(a2 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
    sub_23D9DA584();
    v26 = *v63;
    v48 = *&v63[8];
    *v23 = swift_getKeyPath();
    v23[8] = 0;
    v27 = type metadata accessor for VoiceRotorItemView();
    v28 = v27[5];
    *&v23[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D88, &qword_23D9DD4E0);
    swift_storeEnumTagMultiPayload();
    v29 = v27[9];
    v30 = sub_23D9D8C74();
    (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
    sub_23D91F2DC(v13, v11, &qword_27E2F4460, &qword_23D9DC2A0);
    sub_23D9DA3A4();
    sub_23D91F344(v13, &qword_27E2F4460, &qword_23D9DC2A0);
    v31 = &v23[v27[10]];
    v63[0] = 0;
    sub_23D9DA3A4();
    v32 = *(&v64 + 1);
    *v31 = v64;
    *(v31 + 1) = v32;
    sub_23D91F2DC(v19, &v23[v27[6]], &qword_27E2F4D40, &qword_23D9DEA10);
    v33 = &v23[v27[7]];
    *v33 = v51;
    v34 = v49;
    *(v33 + 2) = v50;
    *(v33 + 3) = v34;
    v35 = &v23[v27[8]];
    *v35 = v26;
    *(v35 + 8) = v48;
    sub_23D9D8F04();
    v36 = v54;
    sub_23D91F2DC(v19, v54, &qword_27E2F4D40, &qword_23D9DEA10);
    v37 = sub_23D9D91C4();
    v38 = sub_23D9DACA4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v63 = v40;
      *v39 = 136315138;
      sub_23D958FF8(&qword_27E2F55B0, MEMORY[0x277CE78C8]);
      sub_23D9DA5F4();
      sub_23D91F344(v36, &qword_27E2F4D40, &qword_23D9DEA10);
      v41 = sub_23D9BDA5C(v64, *(&v64 + 1), v63);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_23D918000, v37, v38, "VoiceRotorItemView.init voice=%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x23EEF4BC0](v40, -1, -1);
      MEMORY[0x23EEF4BC0](v39, -1, -1);

      sub_23D91F344(v19, &qword_27E2F4D40, &qword_23D9DEA10);
    }

    else
    {

      sub_23D91F344(v19, &qword_27E2F4D40, &qword_23D9DEA10);
      sub_23D91F344(v36, &qword_27E2F4D40, &qword_23D9DEA10);
    }

    (*(v56 + 8))(v61, v57);
    sub_23D958FF8(&qword_27E2F55B0, MEMORY[0x277CE78C8]);
    sub_23D9DA5F4();
    v45 = *(&v64 + 1);
    v44 = v59;
    v43 = v60;
    v46 = &v23[*(v59 + 52)];
    *v46 = v64;
    *(v46 + 1) = v45;
    sub_23D9590BC(v23, v43);
    v42 = 0;
  }

  else
  {

    v42 = 1;
    v44 = v59;
    v43 = v60;
  }

  return (*(v58 + 56))(v43, v42, 1, v44);
}

uint64_t sub_23D956C40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v5 = a3[2];
  v9 = v5;
  v10 = v4;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v5;
  sub_23D958900(&v10, v7);

  sub_23D91F2DC(&v9, v7, &qword_27E2F4D78, qword_23D9DD470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
  MEMORY[0x23EEF3850](&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D78, qword_23D9DD470);
  sub_23D91F01C(&qword_27E2F5580, &qword_27E2F4D78, qword_23D9DD470);
  sub_23D9DA884();
  v7[0] = v4;
  v7[1] = v3;
  v7[2] = v5;
  sub_23D9DA564();
  sub_23D95895C(&v10);

  return sub_23D91F344(&v9, &qword_27E2F4D78, qword_23D9DD470);
}

uint64_t sub_23D956D8C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v8 = v4;
  v9 = v3;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v4;
  sub_23D958900(&v9, v6);

  sub_23D91F2DC(&v8, v6, &qword_27E2F4D78, qword_23D9DD470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5550, &unk_23D9E2B60);
  MEMORY[0x23EEF3850](&v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D78, qword_23D9DD470);
  sub_23D91F01C(&qword_27E2F5580, &qword_27E2F4D78, qword_23D9DD470);
  sub_23D91F01C(&qword_27E2F5610, &qword_27E2F4D78, qword_23D9DD470);
  sub_23D9DAAA4();
  v6[0] = v3;
  v6[1] = v2;
  v6[2] = v4;
  sub_23D9DA564();
  sub_23D95895C(&v9);

  return sub_23D91F344(&v8, &qword_27E2F4D78, qword_23D9DD470);
}

uint64_t sub_23D956F00(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = sub_23D9D9024();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v40);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  if (!*(*a1 + 16) && *(*a2 + 16) == 1)
  {
    v14 = a3[15];
    v15 = a3[16];
    v38 = a3[14];
    v39 = v14;
    v44 = v38;
    v45 = v14;
    v37 = v15;
    v46 = v15;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5600, &qword_23D9DEA38);
    MEMORY[0x23EEF3850](v42);
    v33 = *(v42[0] + 16);

    v16 = 0;
    v34 = v7 + 16;
    v35 = v7 + 8;
    while (1)
    {
      v17 = v16;
      if (v33 == v16)
      {
        return result;
      }

      v44 = v38;
      v45 = v39;
      v46 = v37;
      MEMORY[0x23EEF3850](v42, v36);
      if (v17 >= *(v42[0] + 16))
      {
        break;
      }

      v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v19 = *(v7 + 72) * v17;
      v20 = *(v7 + 16);
      v21 = v40;
      v20(v13, v42[0] + v18 + v19, v40);

      v22 = sub_23D9D8FF4();
      v24 = v23;
      v3 = *(v7 + 8);
      (v3)(v13, v21);
      v25 = *MEMORY[0x277CE6A30];
      if (v22 == sub_23D9DA8B4() && v24 == v26)
      {

LABEL_13:
        v44 = v38;
        v45 = v39;
        v46 = v37;
        MEMORY[0x23EEF3850](v42, v36);
        if (v17 < *(v42[0] + 16))
        {
          v29 = v32;
          v30 = v40;
          v20(v32, v42[0] + v18 + v19, v40);

          v31 = sub_23D9D9004();
          result = (v3)(v29, v30);
          if (v31)
          {
            return result;
          }

          v47 = v38;
          v48[0] = v37;
          v44 = v38;
          v45 = v39;
          v46 = v37;
          sub_23D958900(&v47, v42);

          sub_23D91F2DC(v48, v42, &qword_27E2F5608, &qword_23D9DEA40);
          MEMORY[0x23EEF3850](&v43, v36);
          v3 = v43;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_16;
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        result = sub_23D9512C4(v3);
        v3 = result;
LABEL_16:
        if (v17 >= *(v3 + 16))
        {
          __break(1u);
        }

        else
        {
          sub_23D9D9014();
          v42[0] = v38;
          v42[1] = v39;
          v42[2] = v37;
          v41 = v3;
          sub_23D9DA564();
          sub_23D95895C(&v47);

          return sub_23D91F344(v48, &qword_27E2F5608, &qword_23D9DEA40);
        }

        return result;
      }

      v28 = sub_23D9DAFC4();

      v16 = v17 + 1;
      if (v28)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23D9572E0(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 112);
  *(v2 + 112) = *(a1 + 96);
  *(v2 + 128) = v3;
  *(v2 + 144) = *(a1 + 128);
  v4 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v4;
  v5 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v5;
  v6 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  sub_23D958270(a1, v8);
  return sub_23D9DA404();
}

uint64_t sub_23D9573A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2F41A8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F7320)
  {
    v2 = qword_27E2F7320;
    v3 = sub_23D9DA8A4();
    v4 = sub_23D9DA8A4();
    v5 = sub_23D9DA8A4();
    v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

    sub_23D9DA8B4();
  }

  sub_23D91B650();
  result = sub_23D9D9F04();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t VoiceRotorListView.body.getter@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 112);
  v7[6] = *(v1 + 96);
  v7[7] = v2;
  v8 = *(v1 + 128);
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v4 = *(v1 + 80);
  v7[4] = *(v1 + 64);
  v7[5] = v4;
  v5 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v5;
  return sub_23D957540(v7, a1);
}

uint64_t sub_23D957540@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5528, &qword_23D9DE858);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v41 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5530, &qword_23D9DE860);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = *(a1 + 112);
  v50 = *(a1 + 96);
  v51 = v18;
  v52 = *(a1 + 128);
  v19 = *(a1 + 48);
  v46 = *(a1 + 32);
  v47 = v19;
  v20 = *(a1 + 80);
  v48 = *(a1 + 64);
  v49 = v20;
  v21 = *(a1 + 16);
  v44 = *a1;
  v45 = v21;
  sub_23D9560E8();
  v22 = swift_allocObject();
  v23 = *(a1 + 112);
  *(v22 + 112) = *(a1 + 96);
  *(v22 + 128) = v23;
  *(v22 + 144) = *(a1 + 128);
  v24 = *(a1 + 48);
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = v24;
  v25 = *(a1 + 80);
  *(v22 + 80) = *(a1 + 64);
  *(v22 + 96) = v25;
  v26 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v26;
  sub_23D958270(a1, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5538, &unk_23D9DE868);
  sub_23D9582A8();
  sub_23D9DA404();
  v43 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3D4();
  v27 = v44;
  v28 = v45;
  v29 = swift_allocObject();
  v30 = *(a1 + 48);
  *(v29 + 48) = *(a1 + 32);
  *(v29 + 64) = v30;
  *(v29 + 144) = *(a1 + 128);
  v31 = *(a1 + 112);
  *(v29 + 112) = *(a1 + 96);
  *(v29 + 128) = v31;
  v32 = *(a1 + 80);
  *(v29 + 80) = *(a1 + 64);
  *(v29 + 96) = v32;
  v33 = *(a1 + 16);
  *(v29 + 16) = *a1;
  *(v29 + 32) = v33;
  v34 = &v9[*(v4 + 44)];
  *v34 = v27;
  v34[16] = v28;
  *(v34 + 3) = sub_23D958364;
  *(v34 + 4) = v29;
  v35 = v11[2];
  v35(v15, v17, v10);
  v36 = v41;
  sub_23D95836C(v9, v41);
  v37 = v42;
  v35(v42, v15, v10);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5548, &qword_23D9DE878);
  sub_23D95836C(v36, &v37[*(v38 + 48)]);
  sub_23D958270(a1, &v44);
  sub_23D9583DC(v9);
  v39 = v11[1];
  v39(v17, v10);
  sub_23D9583DC(v36);
  return (v39)(v15, v10);
}

uint64_t sub_23D9578E8()
{
  v0._countAndFlagsBits = 0x5F57454E5F444441;
  v0._object = 0xED00004543494F56;
  AXSUILocString(_:)(v0);
  sub_23D91B650();
  v1 = sub_23D9D9F04();
  v3 = v2;
  v5 = v4 & 1;
  sub_23D9DA114();
  sub_23D9274BC(v1, v3, v5);
}

uint64_t sub_23D9579C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CB8, &unk_23D9DE880);
  sub_23D93BC8C();
  return sub_23D9D96D4();
}

uint64_t sub_23D957A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CD0, &qword_23D9DD250);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CC8, &unk_23D9DD240);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = swift_allocObject();
  v13 = *(a1 + 112);
  *(v12 + 112) = *(a1 + 96);
  *(v12 + 128) = v13;
  *(v12 + 144) = *(a1 + 128);
  v14 = *(a1 + 48);
  *(v12 + 48) = *(a1 + 32);
  *(v12 + 64) = v14;
  v15 = *(a1 + 80);
  *(v12 + 80) = *(a1 + 64);
  *(v12 + 96) = v15;
  v16 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v16;
  sub_23D958270(a1, &v40);
  sub_23D93B644(sub_23D95844C, v12, v6);
  KeyPath = swift_getKeyPath();
  v18 = &v6[*(v3 + 36)];
  *v18 = KeyPath;
  v18[8] = 0;
  v19._countAndFlagsBits = 0x45474155474E414CLL;
  v19._object = 0xEE00454C5449545FLL;
  v40 = AXSUILocString(_:)(v19);
  v20 = sub_23D93BE78();
  v21 = sub_23D91B650();
  v22 = MEMORY[0x277D837D0];
  sub_23D9DA064();

  sub_23D91F344(v6, &qword_27E2F4CD0, &qword_23D9DD250);
  v38 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B60, &unk_23D9DCF00);
  v40._countAndFlagsBits = v3;
  v40._object = v22;
  v41 = v20;
  v42 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4B50, &qword_23D9DCE20);
  v24 = sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20);
  v40._countAndFlagsBits = v23;
  v40._object = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v37;
  sub_23D9DA1A4();
  (*(v8 + 8))(v11, v7);
  v26 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4CB8, &unk_23D9DE880) + 36);
  v27 = type metadata accessor for AXSUINavigationManager(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  *(v30 + 16) = MEMORY[0x277D84F98];
  sub_23D9D8894();
  sub_23D9D8A44();
  v39 = v30;
  sub_23D9DA3A4();
  object = v40._object;
  *v26 = v40._countAndFlagsBits;
  *(v26 + 8) = object;
  *(v26 + 16) = swift_getKeyPath();
  *(v26 + 24) = 0;
  v32 = type metadata accessor for AXNavigationSink(0);
  v33 = *(v32 + 24);
  *(v26 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F63A0, &qword_23D9DE920);
  swift_storeEnumTagMultiPayload();
  v34 = *(v32 + 28);
  *(v26 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5630, qword_23D9DD310);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23D957E80(uint64_t a1)
{
  v2 = sub_23D9D9BC4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4B50, &qword_23D9DCE20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  sub_23D9D9BA4();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4920, &qword_23D9DE960);
  sub_23D91F01C(&qword_27E2F4918, &qword_27E2F4920, &qword_23D9DE960);
  sub_23D9D94B4();
  v9 = sub_23D91F01C(&qword_27E2F4B58, &qword_27E2F4B50, &qword_23D9DCE20);
  MEMORY[0x23EEF2F00](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_23D95806C@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 112);
  v7[6] = *(v1 + 96);
  v7[7] = v2;
  v8 = *(v1 + 128);
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v4 = *(v1 + 80);
  v7[4] = *(v1 + 64);
  v7[5] = v4;
  v5 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v5;
  return sub_23D957540(v7, a1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_23D9580F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_23D958140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23D9581B4()
{
  result = qword_27E2F5508;
  if (!qword_27E2F5508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5510, &qword_23D9DE848);
    sub_23D91F01C(&qword_27E2F5518, &qword_27E2F5520, &qword_23D9DE850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5508);
  }

  return result;
}

unint64_t sub_23D9582A8()
{
  result = qword_27E2F5540;
  if (!qword_27E2F5540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5538, &unk_23D9DE868);
    sub_23D958FF8(&qword_27E2F43A0, MEMORY[0x277CDE468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5540);
  }

  return result;
}

uint64_t sub_23D95836C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5528, &qword_23D9DE858);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D9583DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5528, &qword_23D9DE858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D958480()
{
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  return sub_23D9DA3C4();
}

uint64_t sub_23D9584D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_23D95850C()
{
  v1 = sub_23D9D8954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 168) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);

  v9 = *(v0 + 64);

  v10 = *(v0 + 72);

  v11 = *(v0 + 80);

  v12 = *(v0 + 96);

  v13 = *(v0 + 112);

  v14 = *(v0 + 120);

  sub_23D91F080(*(v0 + 128), *(v0 + 136));
  v15 = *(v0 + 144);

  v16 = *(v0 + 152);

  v17 = *(v0 + 160);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23D95863C(uint64_t *a1)
{
  v3 = *(sub_23D9D8954() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 168) & ~*(v3 + 80));

  return sub_23D954E8C(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_23D9586C0()
{
  v1 = sub_23D9D8954();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 184) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  v7 = *(v0 + 48);

  v8 = *(v0 + 56);

  v9 = *(v0 + 64);

  v10 = *(v0 + 80);

  v11 = *(v0 + 88);

  v12 = *(v0 + 96);

  v13 = *(v0 + 112);

  v14 = *(v0 + 128);

  v15 = *(v0 + 136);

  sub_23D91F080(*(v0 + 144), *(v0 + 152));
  v16 = *(v0 + 160);

  v17 = *(v0 + 168);

  v18 = *(v0 + 176);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23D9587F8(uint64_t a1)
{
  v4 = *(sub_23D9D8954() - 8);
  v5 = (*(v4 + 80) + 184) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23D928310;

  return sub_23D9550D0(a1, v6, v7, v8, v9, (v1 + 6), v1 + v5);
}

unint64_t sub_23D9589B0()
{
  result = qword_27E2F5560;
  if (!qword_27E2F5560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5560);
  }

  return result;
}

unint64_t sub_23D958A0C()
{
  result = qword_27E2F5578;
  if (!qword_27E2F5578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5550, &unk_23D9E2B60);
    sub_23D91F01C(&qword_27E2F5580, &qword_27E2F4D78, qword_23D9DD470);
    sub_23D91F01C(&qword_27E2F5588, &qword_27E2F4D78, qword_23D9DD470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5578);
  }

  return result;
}

unint64_t sub_23D958AF8()
{
  result = qword_27E2F5590;
  if (!qword_27E2F5590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5570, &qword_23D9DEA00);
    sub_23D91F01C(&qword_27E2F5598, &qword_27E2F55A0, &qword_23D9DEA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5590);
  }

  return result;
}

unint64_t sub_23D958BA8()
{
  result = qword_27E2F55A8;
  if (!qword_27E2F55A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4D40, &qword_23D9DEA10);
    sub_23D958FF8(&qword_27E2F55B0, MEMORY[0x277CE78C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F55A8);
  }

  return result;
}

uint64_t sub_23D958C64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 80);

  v8 = *(v0 + 96);

  v9 = *(v0 + 104);

  sub_23D91F080(*(v0 + 112), *(v0 + 120));
  v10 = *(v0 + 128);

  v11 = *(v0 + 136);

  v12 = *(v0 + 144);

  return swift_deallocObject();
}

unint64_t sub_23D958D50()
{
  result = qword_27E2F55C0;
  if (!qword_27E2F55C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5568, &qword_23D9DE9F8);
    sub_23D958E08();
    sub_23D91F01C(&qword_27E2F5098, &qword_27E2F50A0, &qword_23D9DEA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F55C0);
  }

  return result;
}

unint64_t sub_23D958E08()
{
  result = qword_27E2F55C8;
  if (!qword_27E2F55C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F55B8, &qword_23D9DEA18);
    sub_23D958EC0();
    sub_23D91F01C(&qword_27E2F55E0, &qword_27E2F55E8, &unk_23D9DFA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F55C8);
  }

  return result;
}

unint64_t sub_23D958EC0()
{
  result = qword_27E2F55D0;
  if (!qword_27E2F55D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F55D8, &unk_23D9DEA20);
    sub_23D958AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F55D0);
  }

  return result;
}

unint64_t sub_23D958F44()
{
  result = qword_27E2F55F0;
  if (!qword_27E2F55F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F4D78, qword_23D9DD470);
    sub_23D958FF8(&qword_27E2F55F8, MEMORY[0x277CE78C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F55F0);
  }

  return result;
}

uint64_t sub_23D958FF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D959040@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D9D9074();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D95906C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_23D9D9084();
}

uint64_t sub_23D9590BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F55A0, &qword_23D9DEA08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D95914C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_23D9D8DA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_23D91F344(a1, &qword_27E2F5900, &unk_23D9DC640);
    sub_23D960928(a2, v8);
    v14 = sub_23D9D8954();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_23D91F344(v8, &qword_27E2F5900, &unk_23D9DC640);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_23D962ECC(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_23D9D8954();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_23D959378(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4210, &qword_23D9DBE60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_23D9D8954();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_23D91F344(a1, &qword_27E2F4210, &qword_23D9DBE60);
    sub_23D960AC8(a2, v8);
    (*(v10 + 8))(a2, v9);
    return sub_23D91F344(v8, &qword_27E2F4210, &qword_23D9DBE60);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_23D9630D0(v13, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v10 + 8))(a2, v9);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_23D959568(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v4;
    v12 = *(a1 + 32);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    sub_23D9632B4(v11, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_23D9D88A4();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v10;
  }

  else
  {
    sub_23D91F344(a1, &qword_27E2F5658, &qword_23D9DEB98);
    sub_23D960C60(a2, v11);
    v9 = sub_23D9D88A4();
    (*(*(v9 - 8) + 8))(a2, v9);
    return sub_23D91F344(v11, &qword_27E2F5658, &qword_23D9DEB98);
  }

  return result;
}

uint64_t sub_23D95968C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a1 & 0x100000000) != 0)
  {
    v11 = *v3;
    v12 = sub_23D960590(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_23D96435C();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_23D962B30(v12, v16);
      *v4 = v16;
    }
  }

  else
  {
    v7 = *&a1;
    v8 = *v3;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_23D963484(a2, a3, v9, v7);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_23D959778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5900, &unk_23D9DC640);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_23D9D8DA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_23D91F344(a1, &qword_27E2F5900, &unk_23D9DC640);
    sub_23D960D4C(a2, a3, v10);

    return sub_23D91F344(v10, &qword_27E2F5900, &unk_23D9DC640);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_23D9635E0(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t View.axNavigationSink()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXNavigationSink(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AXSUINavigationManager(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x277D84F98];
  sub_23D9D8894();
  sub_23D9D8A44();
  v16[1] = v11;
  sub_23D9DA3A4();
  v12 = v16[3];
  *v7 = v16[2];
  *(v7 + 1) = v12;
  *(v7 + 2) = swift_getKeyPath();
  v7[24] = 0;
  v13 = *(v4 + 24);
  *&v7[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F63A0, &qword_23D9DE920);
  swift_storeEnumTagMultiPayload();
  v14 = *(v4 + 28);
  *&v7[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5630, qword_23D9DD310);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x23EEF34C0](v7, a1, v4, a2);
  return sub_23D95E214(v7, type metadata accessor for AXNavigationSink);
}

uint64_t sub_23D959B20()
{
  swift_getKeyPath();
  sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager);
  sub_23D9D8A14();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_23D959BD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager);
  sub_23D9D8A14();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_23D959C98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23D959CC4(v4);
}

uint64_t sub_23D959CC4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_23D95E2FC(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager);
    sub_23D9D8A04();
  }
}

uint64_t sub_23D959E0C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

uint64_t sub_23D959E74()
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58D0, &qword_23D9DEFF0);
  v1 = *(*(v53 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v53);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v47 - v5;
  sub_23D95A418(&v58);
  if (*(&v59 + 1))
  {
    v61 = v58;
    v62 = v59;
    v63 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F58E0, &unk_23D9DF000);
    v7 = swift_allocObject();
    v8 = v61;
    v9 = v62;
    *(v7 + 16) = xmmword_23D9DC3E0;
    *(v7 + 32) = v8;
    *(v7 + 48) = v9;
    *(v7 + 64) = v63;
    return v7;
  }

  sub_23D91F344(&v58, &qword_27E2F5658, &qword_23D9DEB98);
  swift_getKeyPath();
  *&v61 = v0;
  sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager);
  sub_23D9D8A14();

  swift_beginAccess();
  v10 = *(v0 + 16);
  v11 = *(v10 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v7;
  }

  v51 = v6;
  v52 = v4;
  v57 = MEMORY[0x277D84F90];

  sub_23D964744(0, v11, 0);
  v7 = v57;
  v12 = v10 + 64;
  v13 = -1 << *(v10 + 32);
  result = sub_23D9DADE4();
  v15 = result;
  v16 = 0;
  v56 = *(v10 + 36);
  v48 = v10 + 72;
  v49 = v11;
  v50 = v10 + 64;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v10 + 32))
  {
    v20 = v15 >> 6;
    if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_25;
    }

    if (v56 != *(v10 + 36))
    {
      goto LABEL_26;
    }

    v54 = v16;
    v55 = v7;
    v21 = v51;
    v22 = &v51[*(v53 + 48)];
    v23 = v53;
    v24 = *(v10 + 48);
    v25 = sub_23D9D88A4();
    v26 = *(v25 - 8);
    v27 = v10;
    v28 = v26;
    v29 = v24 + *(v26 + 72) * v15;
    v30 = v23;
    (*(v26 + 16))(v21, v29, v25);
    sub_23D95EBC0(*(v27 + 56) + 40 * v15, v22);
    v31 = v52;
    (*(v28 + 32))(v52, v21, v25);
    v32 = v31 + *(v30 + 48);
    v33 = *(v22 + 16);
    *v32 = *v22;
    *(v32 + 16) = v33;
    *(v32 + 32) = *(v22 + 32);
    sub_23D95EBC0(v32, &v61);
    v34 = v31;
    v7 = v55;
    result = sub_23D91F344(v34, &qword_27E2F58D0, &qword_23D9DEFF0);
    v57 = v7;
    v36 = *(v7 + 16);
    v35 = *(v7 + 24);
    if (v36 >= v35 >> 1)
    {
      result = sub_23D964744((v35 > 1), v36 + 1, 1);
      v7 = v57;
    }

    *(v7 + 16) = v36 + 1;
    v37 = v7 + 40 * v36;
    v38 = v61;
    v39 = v62;
    *(v37 + 64) = v63;
    *(v37 + 32) = v38;
    *(v37 + 48) = v39;
    v17 = 1 << *(v27 + 32);
    if (v15 >= v17)
    {
      goto LABEL_27;
    }

    v12 = v50;
    v40 = *(v50 + 8 * v20);
    if ((v40 & (1 << v15)) == 0)
    {
      goto LABEL_28;
    }

    v10 = v27;
    if (v56 != *(v27 + 36))
    {
      goto LABEL_29;
    }

    v41 = v40 & (-2 << (v15 & 0x3F));
    if (v41)
    {
      v17 = __clz(__rbit64(v41)) | v15 & 0x7FFFFFFFFFFFFFC0;
      v18 = v49;
      v19 = v54;
    }

    else
    {
      v42 = v20 << 6;
      v43 = v20 + 1;
      v18 = v49;
      v44 = (v48 + 8 * v20);
      v19 = v54;
      while (v43 < (v17 + 63) >> 6)
      {
        v46 = *v44++;
        v45 = v46;
        v42 += 64;
        ++v43;
        if (v46)
        {
          result = sub_23D964DE4(v15, v56, 0);
          v17 = __clz(__rbit64(v45)) + v42;
          goto LABEL_6;
        }
      }

      result = sub_23D964DE4(v15, v56, 0);
    }

LABEL_6:
    v16 = v19 + 1;
    v15 = v17;
    if (v16 == v18)
    {

      return v7;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t AXSUINavigationManager.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F98];
  sub_23D9D8894();
  sub_23D9D8A44();
  return v3;
}

uint64_t AXSUINavigationManager.init()()
{
  *(v0 + 16) = MEMORY[0x277D84F98];
  sub_23D9D8894();
  sub_23D9D8A44();
  return v0;
}

uint64_t sub_23D95A418@<X0>(_OWORD *a1@<X8>)
{
  v45 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58D0, &qword_23D9DEFF0);
  v47 = *(v50 - 8);
  v2 = *(v47 + 64);
  v3 = MEMORY[0x28223BE20](v50);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v49 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58D8, &qword_23D9DEFF8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v44 - v9;
  swift_getKeyPath();
  v51 = v1;
  sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager);
  sub_23D9D8A14();

  swift_beginAccess();
  v10 = *(v1 + 16);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = *(v1 + 16);
  result = swift_bridgeObjectRetain_n();
  v18 = 0;
  v48 = v10 + 64;
  if (v14)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      v20 = __clz(__rbit64(v14)) | (v19 << 6);
      v21 = *(v10 + 48);
      v22 = sub_23D9D88A4();
      v23 = *(v22 - 8);
      v24 = v21 + *(v23 + 72) * v20;
      v25 = v49;
      (*(v23 + 16))(v49, v24, v22);
      v26 = v10;
      v27 = *(v10 + 56) + 40 * v20;
      v28 = v50;
      sub_23D95EBC0(v27, v25 + *(v50 + 48));
      sub_23D92A2BC(v25, v5, &qword_27E2F58D0, &qword_23D9DEFF0);
      v29 = &v5[*(v28 + 48)];
      v30 = v5;
      v32 = *(v29 + 3);
      v31 = *(v29 + 4);
      __swift_project_boxed_opaque_existential_1(v29, v32);
      if ((*(v31 + 32))(v32, v31))
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_23D91F344(v30, &qword_27E2F58D0, &qword_23D9DEFF0);
      v18 = v19;
      v5 = v30;
      v10 = v26;
      v11 = v48;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v34 = v46;
    sub_23D92A2BC(v30, v46, &qword_27E2F58D0, &qword_23D9DEFF0);
    v33 = v47;
    v35 = *(v47 + 56);
    v36 = v34;
    v37 = 0;
LABEL_12:
    v38 = v50;
    v35(v36, v37, 1, v50);

    if ((*(v33 + 48))(v34, 1, v38) == 1)
    {
      result = sub_23D91F344(v34, &qword_27E2F58D8, &qword_23D9DEFF8);
      v39 = v45;
      *v45 = 0u;
      v39[1] = 0u;
      *(v39 + 4) = 0;
    }

    else
    {
      v40 = v34 + *(v38 + 48);
      v41 = *(v40 + 16);
      v42 = v45;
      *v45 = *v40;
      v42[1] = v41;
      *(v42 + 4) = *(v40 + 32);
      v43 = sub_23D9D88A4();
      return (*(*(v43 - 8) + 8))(v34, v43);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v34 = v46;
        v33 = v47;
        v35 = *(v47 + 56);
        v36 = v46;
        v37 = 1;
        goto LABEL_12;
      }

      v14 = *(v11 + 8 * v19);
      ++v18;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23D95A874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v39 = a5;
  v41 = a4;
  v42 = a2;
  v46 = a6;
  v8 = sub_23D9D88A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v43 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = type metadata accessor for AXSUINavigationManager.SimpleRoute(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D91F2DC(a1, v20, &unk_27E2F6A30, &qword_23D9E0BC0);
  v25 = swift_allocObject();
  v26 = v39;
  *(v25 + 2) = v41;
  *(v25 + 3) = v26;
  *(v25 + 4) = v42;
  *(v25 + 5) = a3;
  v24[*(v21 + 20)] = 0;
  sub_23D91F2DC(v20, v18, &unk_27E2F6A30, &qword_23D9E0BC0);
  v42 = v9;
  v27 = *(v9 + 48);
  v28 = v8;
  LODWORD(v8) = v27(v18, 1, v8);

  if (v8 == 1)
  {
    v29 = v43;
    sub_23D9D8894();
    sub_23D91F344(v20, &unk_27E2F6A30, &qword_23D9E0BC0);
    v30 = v27(v18, 1, v28);
    v31 = v42;
    v32 = v29;
    if (v30 != 1)
    {
      sub_23D91F344(v18, &unk_27E2F6A30, &qword_23D9E0BC0);
    }
  }

  else
  {
    sub_23D91F344(v20, &unk_27E2F6A30, &qword_23D9E0BC0);
    v31 = v42;
    v32 = v43;
    (*(v42 + 32))(v43, v18, v28);
  }

  v40 = v28;
  (*(v31 + 32))(v24, v32, v28);
  v33 = &v24[*(v21 + 24)];
  *v33 = sub_23D95E12C;
  v33[1] = v25;
  v34 = *(v31 + 16);
  v35 = v45;
  v34(v45, v24, v28);
  v48[3] = v21;
  v48[4] = sub_23D95E1CC(&unk_27E2F5640, type metadata accessor for AXSUINavigationManager.SimpleRoute);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  sub_23D95E294(v24, boxed_opaque_existential_1, type metadata accessor for AXSUINavigationManager.SimpleRoute);
  swift_getKeyPath();
  v37 = v44;
  v47 = v44;
  sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager);
  sub_23D9D8A14();

  v47 = v37;
  swift_getKeyPath();
  sub_23D9D8A34();

  swift_beginAccess();
  sub_23D959568(v48, v35);
  swift_endAccess();
  v47 = v37;
  swift_getKeyPath();
  sub_23D9D8A24();

  v34(v46, v24, v40);
  return sub_23D95E214(v24, type metadata accessor for AXSUINavigationManager.SimpleRoute);
}

uint64_t sub_23D95AD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6();
  v9 = sub_23D964D1C(v8, a3);
  (*(v4 + 8))(v8, a3);
  return v9;
}

uint64_t sub_23D95AE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v40 = a2;
  v38 = a1;
  v45 = a5;
  v7 = sub_23D9D88A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v44 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v38 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = type metadata accessor for AXSUINavigationManager.PSControllerRoute(0);
  v21 = *(*(v20 - 1) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v43 = &v38 - v25;
  sub_23D91F2DC(v38, v19, &unk_27E2F6A30, &qword_23D9E0BC0);
  v24[v20[5]] = 0;
  *&v24[v20[6]] = v40;
  v26 = &v24[v20[7]];
  *v26 = a3;
  *(v26 + 1) = a4;
  sub_23D91F2DC(v19, v17, &unk_27E2F6A30, &qword_23D9E0BC0);
  v27 = v8;
  v28 = *(v8 + 48);
  v29 = v28(v17, 1, v7);

  if (v29 == 1)
  {
    v30 = v42;
    sub_23D9D8894();
    sub_23D91F344(v19, &unk_27E2F6A30, &qword_23D9E0BC0);
    v31 = v27;
    if (v28(v17, 1, v7) != 1)
    {
      sub_23D91F344(v17, &unk_27E2F6A30, &qword_23D9E0BC0);
    }
  }

  else
  {
    sub_23D91F344(v19, &unk_27E2F6A30, &qword_23D9E0BC0);
    v30 = v42;
    (*(v27 + 32))(v42, v17, v7);
    v31 = v27;
  }

  v39 = v7;
  (*(v31 + 32))(v24, v30, v7);
  v32 = v43;
  sub_23D95FE64(v24, v43, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
  v33 = *(v31 + 16);
  v34 = v44;
  v33(v44, v32, v7);
  v47[3] = v20;
  v47[4] = sub_23D95E1CC(&qword_27E2F5650, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  sub_23D95E294(v32, boxed_opaque_existential_1, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
  swift_getKeyPath();
  v36 = v41;
  v46 = v41;
  sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager);
  sub_23D9D8A14();

  v46 = v36;
  swift_getKeyPath();
  sub_23D9D8A34();

  swift_beginAccess();
  sub_23D959568(v47, v34);
  swift_endAccess();
  v46 = v36;
  swift_getKeyPath();
  sub_23D9D8A24();

  v33(v45, v32, v39);
  return sub_23D95E214(v32, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
}

uint64_t sub_23D95B358(uint64_t a1, char a2)
{
  v4 = v2;
  v6 = sub_23D9D88A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v28 = v2;
  sub_23D95E1CC(&unk_27E2F6C40, type metadata accessor for AXSUINavigationManager);
  sub_23D9D8A14();

  swift_beginAccess();
  v11 = *(v2 + 16);
  if (!*(v11 + 16))
  {
    goto LABEL_8;
  }

  v12 = *(v4 + 16);

  v13 = sub_23D95EAEC(a1);
  if ((v14 & 1) == 0)
  {

LABEL_8:
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    goto LABEL_9;
  }

  sub_23D95EBC0(*(v11 + 56) + 40 * v13, &v28);

  if (!*(&v29 + 1))
  {
LABEL_9:
    sub_23D91F344(&v28, &qword_27E2F5658, &qword_23D9DEB98);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    return sub_23D91F344(&v31, &qword_27E2F5660, &qword_23D9DEBA0);
  }

  sub_23D95EBC0(&v28, v27);
  sub_23D91F344(&v28, &qword_27E2F5658, &qword_23D9DEB98);
  sub_23D95EBF8(v27, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5668, &qword_23D9DEBA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5670, &qword_23D9DEBB0);
  if (swift_dynamicCast())
  {
    if (*(&v32 + 1))
    {
      sub_23D95EBF8(&v31, v34);
      v15 = v35;
      v26 = v36;
      __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      (*(v26 + 16))(a2 & 1, v15);
      (*(v7 + 16))(v10, a1, v6);
      v16 = v35;
      v17 = v36;
      v18 = __swift_project_boxed_opaque_existential_1(v34, v35);
      v19 = *(v16 - 8);
      v20 = *(v19 + 64);
      MEMORY[0x28223BE20](v18);
      v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v22);
      v23 = *(v17 + 8);
      *(&v32 + 1) = v16;
      v33 = v23;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
      (*(v19 + 32))(boxed_opaque_existential_1, v22, v16);
      swift_getKeyPath();
      *&v28 = v4;
      sub_23D9D8A14();

      *&v28 = v4;
      swift_getKeyPath();
      sub_23D9D8A34();

      swift_beginAccess();
      sub_23D959568(&v31, v10);
      swift_endAccess();
      *&v28 = v4;
      swift_getKeyPath();
      sub_23D9D8A24();

      return __swift_destroy_boxed_opaque_existential_0(v34);
    }
  }

  else
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
  }

  return sub_23D91F344(&v31, &qword_27E2F5660, &qword_23D9DEBA0);
}

uint64_t AXSUINavigationManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC23AccessibilitySettingsUI22AXSUINavigationManager_id;
  v3 = sub_23D9D88A4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC23AccessibilitySettingsUI22AXSUINavigationManager___observationRegistrar;
  v5 = sub_23D9D8A54();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t AXSUINavigationManager.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC23AccessibilitySettingsUI22AXSUINavigationManager_id;
  v3 = sub_23D9D88A4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC23AccessibilitySettingsUI22AXSUINavigationManager___observationRegistrar;
  v5 = sub_23D9D8A54();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23D95B94C()
{
  sub_23D964EA0();
  sub_23D9D9964();
  return v1;
}

uint64_t sub_23D95B988@<X0>(void *a1@<X8>)
{
  sub_23D964EA0();
  result = sub_23D9D9964();
  *a1 = v3;
  return result;
}

uint64_t sub_23D95B9D8@<X0>(void *a1@<X8>)
{
  sub_23D964EA0();
  result = sub_23D9D9964();
  *a1 = v3;
  return result;
}

uint64_t sub_23D95BA28(uint64_t *a1)
{
  v2 = *a1;
  sub_23D964EA0();

  return sub_23D9D9974();
}

uint64_t sub_23D95BA8C(void *a1, void *a2)
{
  v4 = sub_23D9D88A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 24))(v12, v13);
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  (*(v15 + 24))(v14, v15);
  LOBYTE(a1) = sub_23D9D8884();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  return a1 & 1;
}

uint64_t sub_23D95BC10()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_23D95BC6C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2) & 1;
}

uint64_t sub_23D95BCC4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = *(v3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12 - v8;
  sub_23D9D9F24();
  swift_getAssociatedConformanceWitness();
  v10 = sub_23D964D1C(v9, AssociatedTypeWitness);
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  result = swift_getKeyPath();
  *a1 = v10;
  a1[1] = result;
  a1[2] = 0;
  return result;
}

uint64_t sub_23D95BE30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 24);
  v5 = *(v4 + 8);
  result = (*v4)();
  *a2 = result;
  return result;
}

uint64_t sub_23D95BE68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D88A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23D95BED0(uint64_t a1)
{
  v3 = sub_23D9D8F94();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + *(a1 + 24));
  sub_23D9D8F84();
  return sub_23D9D8F64();
}

uint64_t sub_23D95BF6C()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  if ((v7 & 1) == 0)
  {
    sub_23D9DACD4();
    v8 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_23D95C0B0()
{
  v1 = sub_23D9D9954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[2];
  v7 = *(v0 + 24);

  if ((v7 & 1) == 0)
  {
    sub_23D9DACD4();
    v8 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v5, v1);
    v6 = v12;
  }

  if (!v6)
  {
    v9 = v0[1];
    v12 = *v0;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5868, &qword_23D9DEFB0);
    sub_23D9DA3B4();
    return v11[1];
  }

  return v6;
}

uint64_t sub_23D95C22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v75 = a2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57C8, &qword_23D9DEF60);
  v3 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v65 = (v57 - v4);
  v70 = type metadata accessor for AXNavigationSink(0);
  v62 = *(v70 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v70);
  v63 = v6;
  v64 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57D0, &qword_23D9DEF68);
  v7 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v66 = v57 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57D8, &qword_23D9DEF70);
  v68 = *(v71 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](v71);
  v67 = v57 - v10;
  v11 = sub_23D9D8FC4();
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v57 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57E0, &qword_23D9DEF78);
  v18 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v20 = v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57E8, &qword_23D9DEF80);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v57 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57F0, &qword_23D9DEF88);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = v57 - v27;
  v29 = v2;
  if (sub_23D95BF6C())
  {

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5818, &qword_23D9DEF98);
    (*(*(v30 - 8) + 16))(v24, v73, v30);
    swift_storeEnumTagMultiPayload();
    sub_23D91F01C(&qword_27E2F5810, &qword_27E2F5818, &qword_23D9DEF98);
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5658, &qword_23D9DEB98);
    v32 = sub_23D95FCA0();
    v33 = sub_23D95FD84();
    *&v77 = v72;
    *(&v77 + 1) = v31;
    v78 = v32;
    v79 = v33;
    swift_getOpaqueTypeConformance2();
    sub_23D9D9B14();
    sub_23D95FF4C(v28, v20);
    swift_storeEnumTagMultiPayload();
    sub_23D95FB78();
    sub_23D91F01C(&qword_27E2F5848, &qword_27E2F57C8, &qword_23D9DEF60);
    sub_23D9D9B14();
    return sub_23D95FFBC(v28);
  }

  else
  {
    v57[1] = v21;
    v58 = v24;
    v59 = v28;
    v61 = v25;
    v60 = v20;
    v35 = v2 + *(v70 + 28);
    sub_23D95DE44(&unk_27E2F5630, qword_23D9DD310, MEMORY[0x277D40290], v17);
    v36 = v69;
    (*(v69 + 104))(v15, *MEMORY[0x277D40278], v11);
    sub_23D95E1CC(&qword_27E2F57F8, MEMORY[0x277D40290]);
    sub_23D9DA964();
    sub_23D9DA964();
    v37 = *(v36 + 8);
    v37(v15, v11);
    v37(v17, v11);
    if (v77 == v80)
    {
      KeyPath = swift_getKeyPath();
      v39 = sub_23D95C0B0();
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5818, &qword_23D9DEF98);
      v40 = v66;
      (*(*(v70 - 8) + 16))(v66, v73, v70);
      v41 = v72;
      v42 = (v40 + *(v72 + 36));
      *v42 = KeyPath;
      v42[1] = v39;
      sub_23D95C0B0();
      sub_23D95A418(&v77);

      v43 = v64;
      sub_23D95E294(v29, v64, type metadata accessor for AXNavigationSink);
      v44 = (*(v62 + 80) + 16) & ~*(v62 + 80);
      v45 = swift_allocObject();
      sub_23D95FE64(v43, v45 + v44, type metadata accessor for AXNavigationSink);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5658, &qword_23D9DEB98);
      v47 = sub_23D95FCA0();
      v48 = sub_23D95FD84();
      v49 = v67;
      sub_23D9DA1E4();

      sub_23D91F344(&v77, &qword_27E2F5658, &qword_23D9DEB98);
      sub_23D91F344(v40, &qword_27E2F57D0, &qword_23D9DEF68);
      v50 = v68;
      v51 = v71;
      (*(v68 + 16))(v58, v49, v71);
      swift_storeEnumTagMultiPayload();
      sub_23D91F01C(&qword_27E2F5810, &qword_27E2F5818, &qword_23D9DEF98);
      *&v77 = v41;
      *(&v77 + 1) = v46;
      v78 = v47;
      v79 = v48;
      swift_getOpaqueTypeConformance2();
      v52 = v59;
      sub_23D9D9B14();
      sub_23D95FF4C(v52, v60);
      swift_storeEnumTagMultiPayload();
      sub_23D95FB78();
      sub_23D91F01C(&qword_27E2F5848, &qword_27E2F57C8, &qword_23D9DEF60);
      sub_23D9D9B14();
      sub_23D95FFBC(v52);
      return (*(v50 + 8))(v49, v51);
    }

    else
    {
      v53 = sub_23D9DA734();
      v54 = v65;
      *v65 = v53;
      *(v54 + 8) = v55;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5800, &qword_23D9DEF90);
      sub_23D95D234(v29, v73, v54 + *(v56 + 44));
      sub_23D91F2DC(v54, v60, &qword_27E2F57C8, &qword_23D9DEF60);
      swift_storeEnumTagMultiPayload();
      sub_23D95FB78();
      sub_23D91F01C(&qword_27E2F5848, &qword_27E2F57C8, &qword_23D9DEF60);
      sub_23D9D9B14();
      return sub_23D91F344(v54, &qword_27E2F57C8, &qword_23D9DEF60);
    }
  }
}

uint64_t sub_23D95CC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v4 = sub_23D9D8F94();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D9D8FB4();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23D9D8FE4();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5850, &qword_23D9DEFA8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v40 - v18;
  v20 = type metadata accessor for AXSUINavigationManager.PSControllerRoute(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D91F2DC(a2, &v45, &qword_27E2F5658, &qword_23D9DEB98);
  if (!*(&v46 + 1))
  {
    return sub_23D91F344(&v45, &qword_27E2F5658, &qword_23D9DEB98);
  }

  v48[0] = v45;
  v48[1] = v46;
  v49 = v47;
  sub_23D960024(v48, &v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5668, &qword_23D9DEBA8);
  v25 = swift_dynamicCast();
  v26 = *(v21 + 56);
  if (v25)
  {
    v26(v19, 0, 1, v20);
    sub_23D95FE64(v19, v24, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
    v27 = *&v24[*(v20 + 24)];
    v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v29 = v28;
    v30 = &v24[*(v20 + 28)];
    v31 = *(v30 + 1);
    if (v31)
    {
      v32 = *v30;
      v33 = v28;
      v31 = sub_23D9DA8A4();
    }

    else
    {
      v37 = v28;
    }

    [v29 setTitle_];

    v38 = v42 + *(type metadata accessor for AXNavigationSink(0) + 24);
    sub_23D95DE44(&unk_27E2F63A0, &qword_23D9DE920, MEMORY[0x277D402D0], v15);
    v39 = v29;
    sub_23D9D8F74();
    sub_23D95E1CC(&qword_27E2F5860, MEMORY[0x277D40250]);
    sub_23D9D8FD4();

    (*(v41 + 8))(v7, v4);
    (*(v43 + 8))(v15, v44);
    sub_23D95E214(v24, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
  }

  else
  {
    v26(v19, 1, 1, v20);
    sub_23D91F344(v19, &unk_27E2F5850, &qword_23D9DEFA8);
    v35 = v42 + *(type metadata accessor for AXNavigationSink(0) + 24);
    v36 = sub_23D95DE44(&unk_27E2F63A0, &qword_23D9DE920, MEMORY[0x277D402D0], v15);
    MEMORY[0x28223BE20](v36);
    *(&v40 - 2) = v48;
    sub_23D95F98C();
    sub_23D9D8FA4();
    sub_23D95E1CC(&qword_27E2F6250, MEMORY[0x277D40260]);
    sub_23D9D8FD4();
    (*(v40 + 8))(v11, v8);
    (*(v43 + 8))(v15, v44);
  }

  return sub_23D960094(v48);
}

uint64_t sub_23D95D234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v38 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57D0, &qword_23D9DEF68);
  v5 = *(v4 - 8);
  v35 = v4 - 8;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v36 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - v9;
  v11 = type metadata accessor for AXNavigationSink(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5870, &qword_23D9DEFB8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v34 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v33 - v18;
  *v19 = sub_23D9D9AB4();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5878, &qword_23D9DEFC0) + 44);
  v33[0] = a1;
  v33[1] = v20;
  sub_23D95C0B0();
  v21 = sub_23D959E74();

  v39 = v21;
  sub_23D95E294(a1, v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXNavigationSink);
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v23 = swift_allocObject();
  sub_23D95FE64(v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for AXNavigationSink);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5880, &qword_23D9DEFC8);
  sub_23D9D88A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5888, &qword_23D9DEFD0);
  sub_23D91F01C(&qword_27E2F5890, &qword_27E2F5880, &qword_23D9DEFC8);
  sub_23D91F01C(&qword_27E2F5898, &qword_27E2F5888, &qword_23D9DEFD0);
  sub_23D95F938();
  sub_23D9DA624();
  KeyPath = swift_getKeyPath();
  v25 = sub_23D95C0B0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5818, &qword_23D9DEF98);
  (*(*(v26 - 8) + 16))(v10, v37, v26);
  v27 = v34;
  v28 = &v10[*(v35 + 44)];
  *v28 = KeyPath;
  v28[1] = v25;
  sub_23D91F2DC(v19, v27, &qword_27E2F5870, &qword_23D9DEFB8);
  v29 = v36;
  sub_23D91F2DC(v10, v36, &qword_27E2F57D0, &qword_23D9DEF68);
  v30 = v38;
  sub_23D91F2DC(v27, v38, &qword_27E2F5870, &qword_23D9DEFB8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58A0, &qword_23D9DEFD8);
  sub_23D91F2DC(v29, v30 + *(v31 + 48), &qword_27E2F57D0, &qword_23D9DEF68);
  sub_23D91F344(v10, &qword_27E2F57D0, &qword_23D9DEF68);
  sub_23D91F344(v19, &qword_27E2F5870, &qword_23D9DEFB8);
  sub_23D91F344(v29, &qword_27E2F57D0, &qword_23D9DEF68);
  return sub_23D91F344(v27, &qword_27E2F5870, &qword_23D9DEFB8);
}

uint64_t sub_23D95D6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXNavigationSink(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23D95E294(a2, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AXNavigationSink);
  sub_23D95EBC0(a1, v17);
  sub_23D9DA9B4();
  v7 = sub_23D9DA9A4();
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  *(v9 + 16) = v7;
  *(v9 + 24) = v10;
  sub_23D95FE64(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AXNavigationSink);
  v11 = v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = v17[1];
  *v11 = v17[0];
  *(v11 + 16) = v12;
  *(v11 + 32) = v18;
  v13 = sub_23D9DA9A4();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  sub_23D9DA594();
  sub_23D9D9A04();
  sub_23D95EBC0(a1, v17);
  sub_23D95F98C();
  return sub_23D9D95D4();
}

uint64_t sub_23D95D8FC@<X0>(void *a1@<X3>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v40 = sub_23D9D88A4();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v40);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58A8, &qword_23D9DEFE0);
  v6 = *(*(v37 - 1) + 64);
  MEMORY[0x28223BE20](v37);
  v38 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F6A30, &qword_23D9E0BC0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  sub_23D95C0B0();
  sub_23D95A418(&v41);

  v17 = v42;
  if (v42)
  {
    v18 = v43;
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    (*(v18 + 24))(v17, v18);
    sub_23D960094(&v41);
    v19 = *(v3 + 56);
    v19(v16, 0, 1, v40);
  }

  else
  {
    sub_23D91F344(&v41, &qword_27E2F5658, &qword_23D9DEB98);
    v19 = *(v3 + 56);
    v19(v16, 1, 1, v40);
  }

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  (*(v21 + 24))(v20, v21);
  v22 = v40;
  v19(v14, 0, 1, v40);
  v23 = v38;
  v24 = *(v37 + 12);
  sub_23D91F2DC(v16, v38, &unk_27E2F6A30, &qword_23D9E0BC0);
  sub_23D91F2DC(v14, v23 + v24, &unk_27E2F6A30, &qword_23D9E0BC0);
  v25 = *(v3 + 48);
  if (v25(v23, 1, v22) != 1)
  {
    v37 = v16;
    v28 = v23;
    v29 = v23;
    v30 = v36;
    sub_23D91F2DC(v28, v36, &unk_27E2F6A30, &qword_23D9E0BC0);
    if (v25(v29 + v24, 1, v40) != 1)
    {
      v31 = v35;
      v32 = v40;
      (*(v3 + 32))(v35, v29 + v24, v40);
      sub_23D95E1CC(&unk_27E2F58B0, MEMORY[0x277CC95F0]);
      v27 = sub_23D9DA894();
      v33 = *(v3 + 8);
      v33(v31, v32);
      sub_23D91F344(v14, &unk_27E2F6A30, &qword_23D9E0BC0);
      sub_23D91F344(v37, &unk_27E2F6A30, &qword_23D9E0BC0);
      v33(v30, v32);
      result = sub_23D91F344(v29, &unk_27E2F6A30, &qword_23D9E0BC0);
      goto LABEL_11;
    }

    sub_23D91F344(v14, &unk_27E2F6A30, &qword_23D9E0BC0);
    sub_23D91F344(v37, &unk_27E2F6A30, &qword_23D9E0BC0);
    (*(v3 + 8))(v30, v40);
    v23 = v29;
    goto LABEL_9;
  }

  sub_23D91F344(v14, &unk_27E2F6A30, &qword_23D9E0BC0);
  sub_23D91F344(v16, &unk_27E2F6A30, &qword_23D9E0BC0);
  if (v25(v23 + v24, 1, v40) != 1)
  {
LABEL_9:
    result = sub_23D91F344(v23, &qword_27E2F58A8, &qword_23D9DEFE0);
    v27 = 0;
    goto LABEL_11;
  }

  result = sub_23D91F344(v23, &unk_27E2F6A30, &qword_23D9E0BC0);
  v27 = 1;
LABEL_11:
  *v39 = v27 & 1;
  return result;
}

uint64_t sub_23D95DE44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_23D9D9954();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_23D91F2DC(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_23D9DACD4();
    v22 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_23D95E0F4()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23D95E1A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_23D959CC4(v4);
}

uint64_t sub_23D95E1CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23D95E214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23D95E294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D95E2FC(uint64_t a1, uint64_t a2)
{
  v72 = sub_23D9D88A4();
  v65 = *(v72 - 8);
  v4 = *(v65 + 64);
  v5 = MEMORY[0x28223BE20](v72);
  v66 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v67 = &v58 - v8;
  MEMORY[0x28223BE20](v7);
  v70 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58D8, &qword_23D9DEFF8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v71 = &v58 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = a2;
  v17 = 0;
  v61 = a1;
  v18 = *(a1 + 64);
  v59 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v60 = v65 + 16;
  v68 = (v65 + 32);
  v62 = v14;
  v63 = (v65 + 8);
  if ((v20 & v18) != 0)
  {
    do
    {
      v23 = __clz(__rbit64(v21));
      v24 = (v21 - 1) & v21;
      v25 = v23 | (v17 << 6);
LABEL_15:
      v30 = v61;
      v31 = v65;
      v32 = v70;
      v33 = v72;
      (*(v65 + 16))(v70, *(v61 + 48) + *(v65 + 72) * v25, v72);
      sub_23D95EBC0(*(v30 + 56) + 40 * v25, &v76);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58D0, &qword_23D9DEFF0);
      v35 = &v14[*(v34 + 48)];
      (*(v31 + 32))(v14, v32, v33);
      v36 = v77;
      *v35 = v76;
      *(v35 + 1) = v36;
      *(v35 + 4) = v78;
      (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
      v27 = v17;
LABEL_16:
      v37 = v71;
      sub_23D92A2BC(v14, v71, &qword_27E2F58D8, &qword_23D9DEFF8);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58D0, &qword_23D9DEFF0);
      v39 = 1;
      if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
      {
        return v39;
      }

      v69 = v24;
      v40 = v72;
      v41 = (v71 + *(v38 + 48));
      v42 = v67;
      (*v68)(v67);
      v43 = v41[1];
      v76 = *v41;
      v77 = v43;
      v78 = *(v41 + 4);
      v44 = v64;
      v45 = sub_23D95EAEC(v42);
      v47 = v46;
      v48 = *v63;
      (*v63)(v42, v40);
      if ((v47 & 1) == 0)
      {
        sub_23D960094(&v76);
        return 0;
      }

      v49 = v22;
      v50 = v72;
      sub_23D95EBC0(*(v44 + 56) + 40 * v45, v73);
      v52 = v74;
      v51 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      v53 = v70;
      (*(v51 + 24))(v52, v51);
      v54 = *(&v77 + 1);
      v55 = v78;
      __swift_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
      v56 = v66;
      (*(v55 + 24))(v54, v55);
      LOBYTE(v54) = sub_23D9D8884();
      v48(v56, v50);
      v48(v53, v50);
      sub_23D960094(v73);
      result = sub_23D960094(&v76);
      if ((v54 & 1) == 0)
      {
        return 0;
      }

      v17 = v27;
      v14 = v62;
      v22 = v49;
      v21 = v69;
    }

    while (v69);
  }

  if (v22 <= v17 + 1)
  {
    v26 = v17 + 1;
  }

  else
  {
    v26 = v22;
  }

  v27 = v26 - 1;
  while (1)
  {
    v28 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v28 >= v22)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58D0, &qword_23D9DEFF0);
      (*(*(v57 - 8) + 56))(v14, 1, 1, v57);
      v24 = 0;
      goto LABEL_16;
    }

    v29 = *(v59 + 8 * v28);
    ++v17;
    if (v29)
    {
      v24 = (v29 - 1) & v29;
      v25 = __clz(__rbit64(v29)) | (v28 << 6);
      v17 = v28;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23D95E898(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_23D960590(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
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
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23D95E9D4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23D9D8954();
  v5 = MEMORY[0x277CC9640];
  sub_23D95E1CC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
  v6 = sub_23D9DA874();
  return sub_23D9606D0(a1, v6, MEMORY[0x277CC9640], &qword_27E2F4730, v5, MEMORY[0x277CC9658]);
}

unint64_t sub_23D95EAA8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23D9DAE04();

  return sub_23D960608(a1, v5);
}

unint64_t sub_23D95EAEC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23D9D88A4();
  v5 = MEMORY[0x277CC95F0];
  sub_23D95E1CC(&qword_27E2F5790, MEMORY[0x277CC95F0]);
  v6 = sub_23D9DA874();
  return sub_23D9606D0(a1, v6, MEMORY[0x277CC95F0], &unk_27E2F58B0, v5, MEMORY[0x277CC9610]);
}

uint64_t sub_23D95EBF8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

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

uint64_t sub_23D95ECAC()
{
  result = sub_23D9D88A4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_23D9D8A54();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23D95EE44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for AXNavigationSink(255);
  sub_23D9D96C4();
  sub_23D95E1CC(&qword_27E2F63D0, type metadata accessor for AXNavigationSink);
  return swift_getWitnessTable();
}

void sub_23D95EF10()
{
  sub_23D9D88A4();
  if (v0 <= 0x3F)
  {
    sub_23D95EFB4();
    if (v1 <= 0x3F)
    {
      sub_23D95F008();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23D95EFB4()
{
  result = qword_27E2F56A8;
  if (!qword_27E2F56A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5710, &qword_23D9DEC50);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_27E2F56A8);
  }

  return result;
}

void sub_23D95F008()
{
  if (!qword_27E2F5718)
  {
    v0 = sub_23D9DAD74();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F5718);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23D95F06C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23D95F0B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D9D88A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23D9D88A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_23D95F2A8()
{
  result = sub_23D9D88A4();
  if (v1 <= 0x3F)
  {
    result = sub_23D95F334();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23D95F334()
{
  result = qword_27E2F6AD0;
  if (!qword_27E2F6AD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E2F6AD0);
  }

  return result;
}

uint64_t sub_23D95F398(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5740, &qword_23D9DEC90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5748, &qword_23D9DEC98);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23D95F4E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5740, &qword_23D9DEC90);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5748, &qword_23D9DEC98);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23D95F624()
{
  sub_23D95F7CC(319, &qword_27E2F5768, type metadata accessor for AXSUINavigationManager, MEMORY[0x277CE10B0]);
  if (v0 <= 0x3F)
  {
    sub_23D95F768();
    if (v1 <= 0x3F)
    {
      sub_23D95F7CC(319, &qword_27E2F5780, MEMORY[0x277D402D0], MEMORY[0x277CDF470]);
      if (v2 <= 0x3F)
      {
        sub_23D95F7CC(319, &qword_27E2F5788, MEMORY[0x277D40290], MEMORY[0x277CDF470]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23D95F768()
{
  if (!qword_27E2F5770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5778, qword_23D9E1970);
    v0 = sub_23D9D9484();
    if (!v1)
    {
      atomic_store(v0, &qword_27E2F5770);
    }
  }
}

void sub_23D95F7CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_23D95F894(uint64_t a1)
{
  result = sub_23D95E1CC(&unk_27E2F5640, type metadata accessor for AXSUINavigationManager.SimpleRoute);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23D95F908(uint64_t a1)
{
  *(a1 + 8) = sub_23D95F938();
  result = sub_23D95F98C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23D95F938()
{
  result = qword_27E2F5798;
  if (!qword_27E2F5798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5798);
  }

  return result;
}

unint64_t sub_23D95F98C()
{
  result = qword_27E2F57A0;
  if (!qword_27E2F57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F57A0);
  }

  return result;
}

uint64_t sub_23D95F9FC(uint64_t a1)
{
  result = sub_23D95E1CC(&qword_27E2F5650, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23D95FA70(uint64_t a1)
{
  *(a1 + 8) = sub_23D95E1CC(&qword_27E2F57A8, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
  result = sub_23D95E1CC(&qword_27E2F57B0, type metadata accessor for AXSUINavigationManager.PSControllerRoute);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23D95FAF4(uint64_t a1)
{
  *(a1 + 8) = sub_23D95E1CC(&qword_27E2F57B8, type metadata accessor for AXSUINavigationManager.SimpleRoute);
  result = sub_23D95E1CC(&qword_27E2F57C0, type metadata accessor for AXSUINavigationManager.SimpleRoute);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23D95FB78()
{
  result = qword_27E2F5808;
  if (!qword_27E2F5808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F57F0, &qword_23D9DEF88);
    sub_23D91F01C(&qword_27E2F5810, &qword_27E2F5818, &qword_23D9DEF98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F57D0, &qword_23D9DEF68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5658, &qword_23D9DEB98);
    sub_23D95FCA0();
    sub_23D95FD84();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5808);
  }

  return result;
}

unint64_t sub_23D95FCA0()
{
  result = qword_27E2F5820;
  if (!qword_27E2F5820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F57D0, &qword_23D9DEF68);
    sub_23D91F01C(&qword_27E2F5810, &qword_27E2F5818, &qword_23D9DEF98);
    sub_23D91F01C(&unk_27E2F6C30, &qword_27E2F5830, &qword_23D9DEFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5820);
  }

  return result;
}

unint64_t sub_23D95FD84()
{
  result = qword_27E2F5838;
  if (!qword_27E2F5838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5658, &qword_23D9DEB98);
    sub_23D95FE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5838);
  }

  return result;
}

unint64_t sub_23D95FE08()
{
  result = qword_27E2F5840;
  if (!qword_27E2F5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5840);
  }

  return result;
}

uint64_t sub_23D95FE64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23D95FECC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AXNavigationSink(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D95CC3C(a1, a2, v6);
}

uint64_t sub_23D95FF4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57F0, &qword_23D9DEF88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D95FFBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F57F0, &qword_23D9DEF88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D960024(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_53Tm()
{
  v1 = type metadata accessor for AXNavigationSink(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  v4 = *v3;

  v5 = v3[1];

  v6 = v3[2];
  v7 = *(v3 + 24);
  j__swift_release();
  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F63A0, &qword_23D9DE920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23D9D8FE4();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
    v10 = *(v3 + v8);
  }

  v11 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5630, qword_23D9DD310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23D9D8FC4();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
    v13 = *(v3 + v11);
  }

  return swift_deallocObject();
}

uint64_t sub_23D960270(uint64_t a1)
{
  v3 = *(type metadata accessor for AXNavigationSink(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D95D6BC(a1, v4);
}

uint64_t sub_23D9602F0()
{
  v1 = type metadata accessor for AXNavigationSink(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = *(v0 + v2 + 8);

  v8 = *(v0 + v2 + 16);
  v9 = *(v0 + v2 + 24);
  j__swift_release();
  v10 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F63A0, &qword_23D9DE920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D9D8FE4();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5630, qword_23D9DD310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_23D9D8FC4();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_23D9604B8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for AXNavigationSink(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23D95D8FC(v6, a1);
}

uint64_t sub_23D960558()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_23D960590(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23D9DB034();
  sub_23D9DA914();
  v6 = sub_23D9DB064();

  return sub_23D960870(a1, a2, v6);
}

unint64_t sub_23D960608(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23D964E0C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEF4110](v9, a1);
      sub_23D939DE0(v9);
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

unint64_t sub_23D9606D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_23D95E1CC(v24, v25);
      v20 = sub_23D9DA894();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_23D960870(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_23D9DAFC4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_23D960928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23D95E9D4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23D963AAC();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_23D9D8954();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_23D9D8DA4();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_23D9621C8(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_23D9D8DA4();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_23D960AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23D95E9D4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23D963E00();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_23D9D8954();
    v14 = *(v13 - 8);
    v22 = v14;
    v15 = *(v14 + 72) * v8;
    (*(v14 + 8))(v12 + v15, v13);
    (*(v22 + 32))(a2, *(v11 + 56) + v15, v13);
    sub_23D96250C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v13;
  }

  else
  {
    v20 = sub_23D9D8954();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_23D960C60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23D95EAEC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v17 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23D9640C8();
      v11 = v17;
    }

    v12 = *(v11 + 48);
    v13 = sub_23D9D88A4();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56) + 40 * v8;
    v15 = *(v14 + 16);
    *a2 = *v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = *(v14 + 32);
    sub_23D96280C(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23D960D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23D960590(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23D9644C4();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_23D9D8DA4();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_23D962CE0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_23D9D8DA4();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_23D960EBC(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_23D9D8DA4();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D9D8954();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5908, &qword_23D9DF018);
  v52 = a2;
  result = sub_23D9DAF64();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_23D95E1CC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
      result = sub_23D9DA874();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_23D961364(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23D9D8954();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v43 - v11;
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58C8, &qword_23D9DEFE8);
  v49 = a2;
  result = sub_23D9DAF64();
  v54 = result;
  if (*(v12 + 16))
  {
    v44 = v3;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v12;
    v47 = v7;
    v50 = (v7 + 32);
    v21 = v54 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v52 = (v19 - 1) & v19;
LABEL_17:
      v29 = *(v12 + 48);
      v51 = *(v47 + 72);
      v30 = v51 * (v26 | (v15 << 6));
      if (v49)
      {
        v31 = *v50;
        v32 = v48;
        (*v50)(v48, v29 + v30, v6);
      }

      else
      {
        v31 = *v45;
        v32 = v48;
        (*v45)(v48, v29 + v30, v6);
      }

      v31(v53, *(v12 + 56) + v30, v6);
      v33 = v54;
      v34 = *(v54 + 40);
      sub_23D95E1CC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
      result = sub_23D9DA874();
      v35 = -1 << *(v33 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = v54;
      v24 = v51 * v22;
      v25 = *v50;
      (*v50)((*(v54 + 48) + v51 * v22), v32, v6);
      result = (v25)(*(v23 + 56) + v24, v53, v6);
      ++*(v23 + 16);
      v12 = v46;
      v19 = v52;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v52 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v54;
  return result;
}

uint64_t sub_23D9617B0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23D9D88A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5928, &qword_23D9DF038);
  v49 = a2;
  result = sub_23D9DAF64();
  v14 = result;
  if (*(v11 + 16))
  {
    v52 = v10;
    v53 = v6;
    v45 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v46 = (v7 + 16);
    v47 = v7;
    v50 = (v7 + 32);
    v21 = result + 64;
    v48 = v11;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v29 = v26 | (v15 << 6);
      v30 = *(v11 + 48);
      v51 = *(v7 + 72);
      v31 = v30 + v51 * v29;
      if (v49)
      {
        (*v50)(v52, v31, v53);
        v32 = *(v11 + 56) + 40 * v29;
        v33 = *(v32 + 32);
        v34 = *(v32 + 16);
        v54 = *v32;
        v55 = v34;
        v56 = v33;
      }

      else
      {
        (*v46)(v52, v31, v53);
        sub_23D95EBC0(*(v11 + 56) + 40 * v29, &v54);
      }

      v35 = *(v14 + 40);
      sub_23D95E1CC(&qword_27E2F5790, MEMORY[0x277CC95F0]);
      result = sub_23D9DA874();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v7 = v47;
        v11 = v48;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v7 = v47;
      v11 = v48;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v50)(*(v14 + 48) + v51 * v22, v52, v53);
      v23 = *(v14 + 56) + 40 * v22;
      v24 = v54;
      v25 = v55;
      *(v23 + 32) = v56;
      *v23 = v24;
      *(v23 + 16) = v25;
      ++*(v14 + 16);
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_23D961BA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5920, &qword_23D9DF030);
  v37 = a2;
  result = sub_23D9DAF64();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_23D9DB034();
      sub_23D9DA914();
      result = sub_23D9DB064();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_23D961E48(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_23D9D8DA4();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5910, &unk_23D9DF020);
  v46 = a2;
  result = sub_23D9DAF64();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_23D9DB034();
      sub_23D9DA914();
      result = sub_23D9DB064();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
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
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_23D9621C8(int64_t a1, uint64_t a2)
{
  v4 = sub_23D9D8954();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_23D9DADF4();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_23D95E1CC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
      v24 = sub_23D9DA874();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_23D9D8DA4() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23D96250C(int64_t a1, uint64_t a2)
{
  v4 = sub_23D9D8954();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_23D9DADF4();
    v15 = v13;
    v35 = (v14 + 1) & v13;
    v36 = a2 + 64;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v18 = *(v16 + 56);
    v33 = (v16 - 8);
    v34 = v17;
    do
    {
      v19 = v18 * v12;
      v20 = v15;
      v21 = v16;
      v34(v9, *(a2 + 48) + v18 * v12, v4);
      v22 = *(a2 + 40);
      sub_23D95E1CC(&qword_27E2F58C0, MEMORY[0x277CC9640]);
      v23 = sub_23D9DA874();
      result = (*v33)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v35)
      {
        if (v24 >= v35 && a1 >= v24)
        {
LABEL_15:
          v27 = v18 * a1;
          if (v18 * a1 < v19 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v28 = *(a2 + 56);
          result = v28 + v27;
          if (v27 < v19 || result >= v28 + v19 + v18)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v16 = v21;
            v15 = v20;
          }

          else
          {
            a1 = v12;
            v29 = v27 == v19;
            v16 = v21;
            v15 = v20;
            if (!v29)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v35 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v10 = v36;
    }

    while (((*(v36 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23D96280C(int64_t a1, uint64_t a2)
{
  v45 = sub_23D9D88A4();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = sub_23D9DADF4();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v42 = (v13 + 1) & v12;
    v43 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v41 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v43(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_23D95E1CC(&qword_27E2F5790, MEMORY[0x277CC95F0]);
      v26 = sub_23D9DA874();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v11);
          if (a1 != v11 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_23D962B30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23D9DADF4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23D9DB034();

      sub_23D9DA914();
      v13 = sub_23D9DB064();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 4 * v3);
        v20 = (v18 + 4 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23D962CE0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23D9DADF4() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23D9DB034();

      sub_23D9DA914();
      v13 = sub_23D9DB064();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_23D9D8DA4() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23D962ECC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23D9D8954();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23D95E9D4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_23D963AAC();
      goto LABEL_7;
    }

    sub_23D960EBC(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_23D95E9D4(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_23D963760(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_23D9DAFF4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_23D9D8DA4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_23D9630D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23D9D8954();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23D95E9D4(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23D963E00();
      goto LABEL_9;
    }

    sub_23D961364(v17, a3 & 1);
    v20 = *v4;
    v21 = sub_23D95E9D4(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_23D9DAFF4();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = *v4;
  if (v18)
  {
    v24 = *(v28 + 40);
    v25 = v23[7] + *(v28 + 72) * v14;

    return v24(v25, a1, v8);
  }

  else
  {
    (*(v28 + 16))(v11, a2, v8);
    return sub_23D963854(v14, v11, a1, v23);
  }
}

uint64_t sub_23D9632B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23D9D88A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23D95EAEC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_23D9640C8();
      goto LABEL_7;
    }

    sub_23D9617B0(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_23D95EAEC(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_23D963930(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_23D9DAFF4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 40 * v15;

  return sub_23D964E68(a1, v22);
}

unint64_t sub_23D963484(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_23D960590(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_23D961BA4(v16, a3 & 1);
      v20 = *v5;
      result = sub_23D960590(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_23D9DAFF4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_23D96435C();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 4 * result) = a4;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_23D9635E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_23D960590(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_23D9644C4();
      goto LABEL_7;
    }

    sub_23D961E48(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_23D960590(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_23D9DAFF4();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_23D9D8DA4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_23D9639FC(v12, a2, a3, a1, v18);
}

uint64_t sub_23D963760(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23D9D8954();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_23D9D8DA4();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_23D963854(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23D9D8954();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_23D963930(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23D9D88A4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 40 * a1;
  *(v11 + 32) = *(a3 + 32);
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_23D9639FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_23D9D8DA4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_23D963AAC()
{
  v1 = v0;
  v43 = sub_23D9D8DA4();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_23D9D8954();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5908, &qword_23D9DF018);
  v6 = *v0;
  v7 = sub_23D9DAF54();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_23D963E00()
{
  v1 = v0;
  v35 = sub_23D9D8954();
  v39 = *(v35 - 8);
  v2 = v39[8];
  v3 = MEMORY[0x28223BE20](v35);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F58C8, &qword_23D9DEFE8);
  v6 = *v0;
  v7 = sub_23D9DAF54();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v38 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v39 + 4;
    v34 = v39 + 2;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v21 = v39;
        v22 = v39[9] * (v18 | (v12 << 6));
        v23 = v39[2];
        v25 = v35;
        v24 = v36;
        v23(v36, *(v6 + 48) + v22, v35);
        v26 = v37;
        v23(v37, *(v6 + 56) + v22, v25);
        v27 = v6;
        v28 = v38;
        v29 = v21[4];
        v29(*(v38 + 48) + v22, v24, v25);
        v30 = *(v28 + 56);
        v6 = v27;
        result = (v29)(v30 + v22, v26, v25);
        v16 = v40;
      }

      while (v40);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v31;
        v8 = v38;
        goto LABEL_18;
      }

      v20 = *(v32 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_23D9640C8()
{
  v1 = v0;
  v33 = sub_23D9D88A4();
  v35 = *(v33 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5928, &qword_23D9DF038);
  v4 = *v0;
  v5 = sub_23D9DAF54();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v36 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v35;
        v21 = *(v35 + 72) * v19;
        v22 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v4 + 48) + v21, v33);
        v19 *= 40;
        sub_23D95EBC0(*(v4 + 56) + v19, v37);
        v24 = v34;
        result = (*(v20 + 32))(*(v34 + 48) + v21, v22, v23);
        v25 = *(v24 + 56) + v19;
        v26 = v37[0];
        v27 = v37[1];
        *(v25 + 32) = v38;
        *v25 = v26;
        *(v25 + 16) = v27;
        v14 = v36;
      }

      while (v36);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_23D96435C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5920, &qword_23D9DF030);
  v2 = *v0;
  v3 = sub_23D9DAF54();
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
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

char *sub_23D9644C4()
{
  v1 = v0;
  v36 = sub_23D9D8DA4();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F5910, &unk_23D9DF020);
  v4 = *v0;
  v5 = sub_23D9DAF54();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
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
    *v1 = v6;
  }

  return result;
}

char *sub_23D964744(char *a1, int64_t a2, char a3)
{
  result = sub_23D964810(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23D964764(size_t a1, int64_t a2, char a3)
{
  result = sub_23D964930(a1, a2, a3, *v3, &qword_27E2F4D18, &qword_23D9DD420, MEMORY[0x277CE6790]);
  *v3 = result;
  return result;
}

char *sub_23D9647A8(char *a1, int64_t a2, char a3)
{
  result = sub_23D964B0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23D9647C8(char *a1, int64_t a2, char a3)
{
  result = sub_23D964C18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23D964810(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F58E0, &unk_23D9DF000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_23D964930(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

char *sub_23D964B0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2F58F0, &qword_23D9DF010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_23D964C18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4D10, &qword_23D9DD418);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_23D964D1C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_23D9DA4D4();
}

uint64_t sub_23D964DE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_23D964EA0()
{
  result = qword_27E2F5930;
  if (!qword_27E2F5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5930);
  }

  return result;
}

unint64_t sub_23D964F08()
{
  result = qword_27E2F5938;
  if (!qword_27E2F5938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5940, &qword_23D9DF058);
    sub_23D95FB78();
    sub_23D91F01C(&qword_27E2F5848, &qword_27E2F57C8, &qword_23D9DEF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5938);
  }

  return result;
}

unint64_t sub_23D96500C()
{
  result = qword_27E2F5950;
  if (!qword_27E2F5950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F5958, &qword_23D9DF060);
    sub_23D91F01C(&unk_27E2F6C30, &qword_27E2F5830, &qword_23D9DEFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2F5950);
  }

  return result;
}

uint64_t _s23AccessibilitySettingsUI20CategorySymbolSourceV17accessibilityName3forS2S_tFZ_0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_23D9DAE64();

  MEMORY[0x23EEF3C30](a1, a2);
  v5._countAndFlagsBits = 0xD000000000000015;
  v5._object = 0x800000023D9E4390;
  countAndFlagsBits = AXLSCSUILocString(_:)(v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t getEnumTagSinglePayload for CategorySymbolSource(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CategorySymbolSource(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23D9652D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_23D965410(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F48B0, &unk_23D9DF0F0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45D8, &unk_23D9DCB30);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_23D965550()
{
  sub_23D934258();
  if (v0 <= 0x3F)
  {
    sub_23D96568C(319, &qword_27E2F48D8, MEMORY[0x277CDF3E8]);
    if (v1 <= 0x3F)
    {
      sub_23D96568C(319, &qword_27E2F4610, MEMORY[0x277CDD840]);
      if (v2 <= 0x3F)
      {
        sub_23D9490E0(319, &qword_27E2F4CB0, MEMORY[0x277CE1200]);
        if (v3 <= 0x3F)
        {
          sub_23D9490E0(319, &qword_27E2F46A0, MEMORY[0x277CE10B0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23D96568C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23D9D9484();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23D9656F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23D9657C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5290, &qword_23D9DDE48);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23D965894()
{
  sub_23D94DF64();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23D96592C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4880, &unk_23D9DCA90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  sub_23D91F2DC(v1 + *(CustomCategoryView + 20), v11, &qword_27E2F4880, &unk_23D9DCA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D9D9464();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23D9DACD4();
    v16 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_23D965B34@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D9D9954();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F45A0, &unk_23D9DC450);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  sub_23D91F2DC(v1 + *(CustomCategoryView + 24), v11, &qword_27E2F45A0, &unk_23D9DC450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23D9D9574();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23D9DACD4();
    v16 = sub_23D9D9D24();
    sub_23D9D91B4();

    sub_23D9D9944();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_23D965D3C()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    MEMORY[0x28223BE20](v1);
    v6[2] = v0;
    v2 = sub_23D92BA6C(sub_23D970DC8, v6, v7);

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v3 = (v7 ^ 1) & v2;
    if ((v7 ^ 1) & 1) == 0 && (v2)
    {
      v3 = sub_23D966054() ^ 1;
    }

    return v3 & 1;
  }

  else
  {
    v5 = v0[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D965EF0(id *a1, void *a2)
{
  v3 = [*a1 name];
  v4 = sub_23D9DA8B4();
  v6 = v5;

  if (*a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v4 == v11 && v6 == v12)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_23D9DAFC4();
    }

    return v8 & 1;
  }

  else
  {
    v10 = a2[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D966054()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v1 = [v8 localizedName];

    v2 = sub_23D9DA8B4();
    v4 = v3;

    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v2 == v8 && v4 == v9)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_23D9DAFC4();
    }

    return v5 & 1;
  }

  else
  {
    v7 = v0[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D96620C()
{
  v1 = sub_23D9D8814();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    sub_23D9D8804();
    sub_23D91B650();
    v6 = sub_23D9DAD84();
    v8 = v7;
    (*(v2 + 8))(v5, v1);

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    return v9 == 0;
  }

  else
  {
    v11 = v0[1];
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
    result = sub_23D9D9784();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D9663E0@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
  v3 = CustomCategoryView - 8;
  v4 = *(CustomCategoryView - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](CustomCategoryView);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5988, &qword_23D9DF1E8);
  v7 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v9 = &v36 - v8;
  v43 = v1;
  sub_23D9D9D34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F59B8, &unk_23D9DF208);
  sub_23D91F01C(&qword_27E2F59C0, &qword_27E2F59B8, &unk_23D9DF208);
  sub_23D9D9424();
  v10 = *(v3 + 40);
  v11 = v1;
  v39 = v1;
  v12 = (v1 + v10);
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v45) = v13;
  v46 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4758, &unk_23D9DC7E0);
  sub_23D9DA3B4();
  v15 = v44;
  sub_23D972490(v11, v6, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v38 = *(v4 + 80);
  v16 = (v38 + 16) & ~v38;
  v17 = swift_allocObject();
  v18 = v6;
  sub_23D972618(v6, v17 + v16, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v19 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F59C8, &qword_23D9DF218) + 36)];
  *v19 = sub_23D96DD78;
  *(v19 + 1) = v17;
  v19[16] = (v15 & 1) == 0;
  v37 = objc_opt_self();
  v20 = [v37 defaultCenter];
  v21 = *MEMORY[0x277D76C68];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F59D0, &qword_23D9DF220);
  v23 = &v9[*(v22 + 52)];
  sub_23D9DAD54();

  v24 = v39;
  sub_23D972490(v39, v18, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v25 = swift_allocObject();
  sub_23D972618(v18, v25 + v16, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v26 = &v9[*(v22 + 56)];
  *v26 = sub_23D96DF9C;
  v26[1] = v25;
  v27 = [v37 defaultCenter];
  v28 = *MEMORY[0x277D76C58];
  v29 = v40;
  v30 = &v9[*(v40 + 52)];
  sub_23D9DAD54();

  sub_23D972490(v24, v18, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v31 = swift_allocObject();
  sub_23D972618(v18, v31 + v16, type metadata accessor for LiveSpeechCreateCustomCategoryView);
  v32 = &v9[*(v29 + 56)];
  *v32 = sub_23D96DFA4;
  v32[1] = v31;
  v42 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5990, &qword_23D9DF1F0);
  sub_23D91F01C(&qword_27E2F5998, &qword_27E2F5988, &qword_23D9DF1E8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2F59A0, &qword_23D9DF1F8);
  v34 = sub_23D91F01C(&qword_27E2F59A8, &qword_27E2F59A0, &qword_23D9DF1F8);
  v45 = v33;
  v46 = v34;
  swift_getOpaqueTypeConformance2();
  sub_23D9DA1A4();
  return sub_23D91F344(v9, &qword_27E2F5988, &qword_23D9DF1E8);
}

uint64_t sub_23D9668BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_23D9D9AB4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B10, &qword_23D9DF548);
  return sub_23D966914(a1, a2 + *(v4 + 44));
}

uint64_t sub_23D966914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a1;
  v180 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B18, &qword_23D9DF550);
  v3 = *(v2 - 8);
  v192 = v2 - 8;
  v179 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v193 = v162 - v4;
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x800000023D9E43D0;
  v196 = AXSUILocString(_:)(v5);
  sub_23D91B650();
  v6 = sub_23D9D9F04();
  v8 = v7;
  v10 = v9;
  sub_23D9D9DB4();
  v11 = sub_23D9D9EE4();
  v13 = v12;
  v15 = v14;

  sub_23D9274BC(v6, v8, v10 & 1);

  LODWORD(v196._countAndFlagsBits) = sub_23D9D9C44();
  v16 = sub_23D9D9EC4();
  v18 = v17;
  v20 = v19;
  sub_23D9274BC(v11, v13, v15 & 1);

  v21 = sub_23D9D9ED4();
  v23 = v22;
  LOBYTE(v11) = v24;
  v26 = v25;
  sub_23D9274BC(v16, v18, v20 & 1);

  v196._countAndFlagsBits = v21;
  v196._object = v23;
  LOBYTE(v18) = v11 & 1;
  v197 = v11 & 1;
  v198 = v26;
  v199 = 256;
  v27 = sub_23D9D9A84();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D9D9A74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B20, &qword_23D9DF558);
  sub_23D970E48(&qword_27E2F5B28, &qword_27E2F5B20, &qword_23D9DF558);
  v32 = v193;
  sub_23D9DA104();
  (*(v28 + 8))(v31, v27);
  sub_23D9274BC(v21, v23, v18);

  LOBYTE(v31) = sub_23D9D9D64();
  sub_23D9D93F4();
  v33 = v32 + *(v192 + 44);
  *v33 = v31;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35;
  *(v33 + 24) = v36;
  *(v33 + 32) = v37;
  *(v33 + 40) = 0;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B30, &unk_23D9DF560);
  v189 = *(v192 - 8);
  v38 = *(v189 + 64);
  v39 = MEMORY[0x28223BE20](v192);
  v191 = v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v188 = v162 - v40;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4278, &qword_23D9DBEB8);
  v41 = *(*(v187 - 1) + 64);
  MEMORY[0x28223BE20](v187);
  v190 = v162 - v42;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5188, &qword_23D9DDC20);
  v43 = *(v186 - 1);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v186);
  v46 = v162 - v45;
  v47 = type metadata accessor for SymbolPlatter(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = (v162 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = *v194;
  if (*v194)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    v178 = v51;

    object = v196._object;
    *v50 = v196._countAndFlagsBits;
    v50[1] = object;
    v53 = *(v47 + 20);
    v196._countAndFlagsBits = 0x404C000000000000;
    v54 = sub_23D94B5F0();
    sub_23D9D94D4();
    v55 = *(v47 + 24);
    v196._countAndFlagsBits = 0x4057000000000000;
    sub_23D9D94D4();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5180, &qword_23D9DDF50);
    v181 = v162;
    v185 = *(*(v56 - 8) + 64);
    MEMORY[0x28223BE20](v56);
    v58 = v162 - v57;
    v59 = *MEMORY[0x277CDF990];
    v60 = sub_23D9D9664();
    v61 = *(v60 - 8);
    v183 = *(v61 + 104);
    v182 = (v61 + 104);
    v183(v58, v59, v60);
    v62 = sub_23D96E134(&qword_27E2F5198, MEMORY[0x277CDFA20]);
    v184 = v60;
    if (sub_23D9DA894())
    {
      v176 = v62;
      v177 = v54;
      v166 = v38;
      sub_23D96E134(&qword_27E2F51A0, type metadata accessor for SymbolPlatter);
      v63 = sub_23D91F01C(&qword_27E2F51A8, &qword_27E2F5180, &qword_23D9DDF50);
      v165 = v56;
      v164 = v63;
      sub_23D9DA044();
      sub_23D91F344(v58, &qword_27E2F5180, &qword_23D9DDF50);
      sub_23D970EB8(v50, type metadata accessor for SymbolPlatter);
      v64 = sub_23D9D9D54();
      v65 = v190;
      (*(v43 + 32))(v190, v46, v186);
      v66 = v65 + *(v187 + 9);
      *v66 = v64;
      *(v66 + 8) = 0u;
      *(v66 + 24) = 0u;
      *(v66 + 40) = 1;
      CustomCategoryView = type metadata accessor for LiveSpeechCreateCustomCategoryView(0);
      v186 = v162;
      v68 = *(CustomCategoryView - 8);
      v69 = *(v68 + 64);
      MEMORY[0x28223BE20](CustomCategoryView - 8);
      sub_23D972490(v194, v162 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveSpeechCreateCustomCategoryView);
      v172 = sub_23D9DA9B4();
      v70 = sub_23D9DA9A4();
      v71 = (*(v68 + 80) + 32) & ~*(v68 + 80);
      v173 = *(v68 + 80);
      v72 = swift_allocObject();
      v73 = MEMORY[0x277D85700];
      *(v72 + 16) = v70;
      *(v72 + 24) = v73;
      v174 = v71;
      sub_23D972618(v162 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0), v72 + v71, type metadata accessor for LiveSpeechCreateCustomCategoryView);
      v74 = sub_23D9DA9F4();
      v75 = *(v74 - 8);
      v76 = *(v75 + 64);
      MEMORY[0x28223BE20](v74);
      v187 = v77;
      v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF0;
      v79 = v162 - v78;
      sub_23D9DA9C4();
      isPlatformVersionAtLeast = __isPlatformVersionAtLeast(2, 26, 4, 0);
      v181 = v74;
      v175 = v75;
      if (isPlatformVersionAtLeast)
      {
        v169 = sub_23D9D9614();
        v170 = v162;
        v168 = *(v169 - 1);
        v80 = *(v168 + 8);
        MEMORY[0x28223BE20](v169);
        v163 = v162 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
        v196._countAndFlagsBits = 0;
        v196._object = 0xE000000000000000;
        sub_23D9DAE64();

        v196._countAndFlagsBits = 0xD00000000000004DLL;
        v196._object = 0x800000023D9E4400;
        v195 = 122;
        v82 = sub_23D9DAF94();
        MEMORY[0x23EEF3C30](v82);

        v167 = v69;
        MEMORY[0x28223BE20](v83);
        (*(v75 + 16))(v162 - v78, v79, v74);
        v84 = v163;
        sub_23D9D9604();
        (*(v75 + 8))(v79, v74);
        v69 = v167;
        v85 = v188;
        sub_23D92A2BC(v190, v188, &qword_27E2F4278, &qword_23D9DBEB8);
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4280, &qword_23D9DBEC0);
        (*(v168 + 4))(v85 + *(v86 + 36), v84, v169);
      }

      else
      {
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4288, &qword_23D9DBEC8);
        v85 = v188;
        v88 = (v188 + *(v87 + 36));
        v89 = sub_23D9D9584();
        (*(v75 + 32))(&v88[*(v89 + 20)], v162 - v78, v74);
        *v88 = &unk_23D9DF578;
        *(v88 + 1) = v72;
        sub_23D92A2BC(v65, v85, &qword_27E2F4278, &qword_23D9DBEB8);
      }

      (*(v189 + 32))(v191, v85, v192);
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B38, &unk_23D9DF588);
      v163 = v162;
      v188 = *(v90 - 8);
      v91 = *(v188 + 64);
      v92 = MEMORY[0x28223BE20](v90);
      v94 = v162 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
      v167 = v162;
      v162[1] = v93;
      MEMORY[0x28223BE20](v92);
      v96 = v162 - v95;
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4290, &qword_23D9DBED0);
      v170 = v162;
      v98 = v97 - 8;
      v99 = (*(*(v97 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v97);
      v101 = v162 - v100;
      v102 = v194;
      sub_23D9683F8(v162 - v100);
      v103 = sub_23D9D9D44();
      v169 = v162;
      v104 = *(v98 + 44);
      v168 = v101;
      v105 = &v101[v104];
      *v105 = v103;
      *(v105 + 8) = 0u;
      *(v105 + 24) = 0u;
      v105[40] = 1;
      MEMORY[0x28223BE20](v103);
      v106 = v162 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_23D972490(v102, v106, type metadata accessor for LiveSpeechCreateCustomCategoryView);
      v107 = sub_23D9DA9A4();
      v108 = v174;
      v109 = swift_allocObject();
      *(v109 + 16) = v107;
      *(v109 + 24) = MEMORY[0x277D85700];
      v110 = sub_23D972618(v106, v108 + v109, type metadata accessor for LiveSpeechCreateCustomCategoryView);
      v111 = v187;
      MEMORY[0x28223BE20](v110);
      v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF0;
      v113 = v162 - v112;
      sub_23D9DA9C4();
      v190 = v94;
      v186 = v90;
      if (isPlatformVersionAtLeast)
      {
        v173 = sub_23D9D9614();
        v174 = v162;
        v172 = *(v173 - 8);
        v114 = *(v172 + 64);
        MEMORY[0x28223BE20](v173);
        v116 = v162 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
        v196._countAndFlagsBits = 0;
        v196._object = 0xE000000000000000;
        v194 = v162;
        sub_23D9DAE64();

        v196._countAndFlagsBits = 0xD00000000000004DLL;
        v196._object = 0x800000023D9E4400;
        v195 = 132;
        v117 = sub_23D9DAF94();
        MEMORY[0x23EEF3C30](v117);

        MEMORY[0x28223BE20](v118);
        v119 = v175;
        v120 = v162 - v112;
        v121 = v162 - v112;
        v122 = v181;
        v175[2](v120, v121, v181);
        sub_23D9D9604();
        (*(v119 + 8))(v113, v122);
        v90 = v186;
        sub_23D92A2BC(v168, v96, &qword_27E2F4290, &qword_23D9DBED0);
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F4298, &qword_23D9DBED8);
        v94 = v190;
        (*(v172 + 32))(&v96[*(v123 + 36)], v116, v173);
      }

      else
      {
        v124 = &v96[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F42A0, &qword_23D9DBEE0) + 36)];
        v125 = sub_23D9D9584();
        v175[4](&v124[*(v125 + 20)], v162 - v112, v181);
        *v124 = &unk_23D9DF5A0;
        *(v124 + 1) = v109;
        sub_23D92A2BC(v168, v96, &qword_27E2F4290, &qword_23D9DBED0);
      }

      (*(v188 + 32))(v94, v96, v90);
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B40, &qword_23D9DF5B0);
      v187 = v162;
      v127 = *(*(v126 - 8) + 64);
      MEMORY[0x28223BE20](v126);
      v181 = v128;
      v129 = (v162 - v128);
      v130 = type metadata accessor for SymbolSelectorGrid(0);
      v194 = v162;
      v131 = *(*(v130 - 8) + 64);
      MEMORY[0x28223BE20](v130);
      v133 = (v162 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0));
      type metadata accessor for LiveSpeechDataViewModel();
      sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
      *v133 = sub_23D9D9794();
      v133[1] = v134;
      v135 = *(v130 + 20);
      v196._countAndFlagsBits = 0x404A000000000000;
      sub_23D9D94D4();
      v136 = *(v130 + 24);
      v196._countAndFlagsBits = 0x4030000000000000;
      v137 = sub_23D9D94D4();
      MEMORY[0x28223BE20](v137);
      v139 = v162 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
      v183(v139, *MEMORY[0x277CDF9A0], v184);
      if (sub_23D9DA894())
      {
        sub_23D96E134(&qword_27E2F5B48, type metadata accessor for SymbolSelectorGrid);
        sub_23D9DA044();
        sub_23D91F344(v139, &qword_27E2F5180, &qword_23D9DDF50);
        sub_23D970EB8(v133, type metadata accessor for SymbolSelectorGrid);
        v140 = v178;

        v141 = sub_23D9D9324();
        v185 = v162;
        v142 = (v129 + *(v126 + 36));
        v175 = v129;
        *v142 = v141;
        v142[1] = v140;
        MEMORY[0x28223BE20](v141);
        v144 = v162 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
        v179 = v144;
        v145 = sub_23D91F2DC(v193, v144, &qword_27E2F5B18, &qword_23D9DF550);
        v184 = v162;
        MEMORY[0x28223BE20](v145);
        v194 = (v162 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0));
        v147 = v189;
        v178 = *(v189 + 16);
        v148 = v178();
        v183 = v162;
        MEMORY[0x28223BE20](v148);
        v150 = v162 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
        v151 = v188;
        v177 = *(v188 + 16);
        v152 = v186;
        v153 = v177(v150, v190, v186);
        v182 = v162;
        MEMORY[0x28223BE20](v153);
        v154 = (v162 - v181);
        sub_23D91F2DC(v129, v162 - v181, &qword_27E2F5B40, &qword_23D9DF5B0);
        v155 = v180;
        sub_23D91F2DC(v144, v180, &qword_27E2F5B18, &qword_23D9DF550);
        v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2F5B50, &qword_23D9DF5B8);
        v157 = v192;
        (v178)(v155 + v156[12], v194, v192);
        v177((v155 + v156[16]), v150, v152);
        sub_23D91F2DC(v154, v155 + v156[20], &qword_27E2F5B40, &qword_23D9DF5B0);
        sub_23D91F344(v175, &qword_27E2F5B40, &qword_23D9DF5B0);
        v158 = *(v151 + 8);
        v158(v190, v152);
        v159 = *(v147 + 8);
        v159(v191, v157);
        sub_23D91F344(v193, &qword_27E2F5B18, &qword_23D9DF550);
        sub_23D91F344(v154, &qword_27E2F5B40, &qword_23D9DF5B0);
        v158(v150, v152);
        v159(v194, v157);
        return sub_23D91F344(v179, &qword_27E2F5B18, &qword_23D9DF550);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v161 = v194[1];
  type metadata accessor for LiveSpeechDataViewModel();
  sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);
  result = sub_23D9D9784();
  __break(1u);
  return result;
}

uint64_t sub_23D968104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  sub_23D9DA9B4();
  *(v3 + 40) = sub_23D9DA9A4();
  v5 = sub_23D9DA994();

  return MEMORY[0x2822009F8](sub_23D96819C, v5, v4);
}

uint64_t sub_23D96819C()
{
  v2 = v0[4];
  v1 = v0[5];

  if (*v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D9D9384();

    if (v0[2])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_23D9D9384();

      v3 = v0[2];
      v4 = [v3 symbol];

      v5 = sub_23D9DA8B4();
      v7 = v6;

      swift_getKeyPath();
      swift_getKeyPath();
      v0[2] = v5;
      v0[3] = v7;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v0[2] = 0x69662E6573756F68;
      v0[3] = 0xEA00000000006C6CLL;
    }

    sub_23D9D9394();
    v10 = v0[1];

    return v10();
  }

  else
  {
    v8 = *(v0[4] + 8);
    type metadata accessor for LiveSpeechDataViewModel();
    sub_23D96E134(&qword_27E2F4830, type metadata accessor for LiveSpeechDataViewModel);

    return sub_23D9D9784();
  }
}